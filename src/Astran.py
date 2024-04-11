import os


def loadAstranArea(GDSPath, typeName):
    gdsFile = os.path.join(GDSPath, typeName + '.gds')
    if not os.path.exists(gdsFile):
        return False
    logFileName = os.path.join(GDSPath, typeName + '.Astranlog')
    with open(logFileName, 'r', encoding='utf-8') as logFile:
        lines = logFile.readlines()
        for line in lines:
            if line.find("-> Cell Size (W x H): ") >= 0:
                return float(line.replace("-> Cell Size (W x H): ", "").split("x")[0]) * 0.8 * 3.2

    return False


def runAstranForNetlist(AstranPath, gurobiPath, technologyPath, spiceNetlistPath, complexName, commandDir):
    commands = f"""set lpsolve \"{gurobiPath}\"
load technology \"{technologyPath}\"
load netlist \"{spiceNetlistPath}\"
cellgen select {complexName}
cellgen autoflow
export layout {complexName} {commandDir}/{complexName}.gds
exit
    """

    if not os.path.exists(commandDir):
        os.makedirs(commandDir)

    outputFile = open(f'{commandDir}/{complexName}.run', 'w', encoding='utf-8')
    print(commands, file=outputFile)
    outputFile.close()

    return os.system(f"{AstranPath} --shell {commandDir}/{complexName}.run > {commandDir}/{complexName}.Astranlog") == 0


def runAstranForNetlist2(AstranPath, gurobiPath, technologyPath, spiceNetlistPath, complexName, commandDir):
    for nTrack in [5, 3, 4, 6]:
        commands = f"""set lpsolve \"{gurobiPath}\"
load technology \"{technologyPath}\"
load netlist \"{spiceNetlistPath}\"
cellgen select {complexName}
cellgen autoflow {nTrack}
export layout {complexName} {commandDir}/{complexName}.gds
exit
    """

        outputFile = open(f'{commandDir}/{complexName}.run', 'w', encoding='utf-8')
        print(commands, file=outputFile)
        outputFile.close()

        os.system(f"{AstranPath} --shell {commandDir}/{complexName}.run > {commandDir}/{complexName}.Astranlog")
        if os.path.exists(f'{commandDir}/{complexName}.gds'):
            return


if __name__ == '__main__':
    current_path = os.path.dirname(os.path.abspath(__file__))
    os.environ["LD_LIBRARY_PATH"] = f'{current_path}/../tools/gurobi/lib:{os.environ.get("LD_LIBRARY_PATH", ";")}'
    AstranPath = f"{current_path}/../tools/astran/Astran/build/bin/Astran"
    # gurobiPath="/Library/gurobi1003/macos_universal2/bin/gurobi_cl"
    gurobiPath = f"{current_path}/../tools/gurobi/bin/gurobi_cl"
    technologyPath = f"{current_path}/../tools/astran/Astran/build/Work/tech_freePDK45.rul"
    stdSpiceNetlistPath = f"{current_path}/../stdCellLib/gscl45nm/cellsAstranFriendly.sp"

    from GDSIIAnalysis import STDCellNames
    import threading

    threads = []
    for oriStdCellType in STDCellNames:
        if oriStdCellType.find("bool") >= 0 or oriStdCellType in ['PI', 'const_0', 'const_1']:
            continue
        if os.path.exists(f'{current_path}/originalAstranStdCells/{oriStdCellType}.gds'):
            continue
        threads.append(threading.Thread(target=runAstranForNetlist, args=(AstranPath, gurobiPath, technologyPath, stdSpiceNetlistPath, oriStdCellType, f'{current_path}/originalAstranStdCells/')))
    # start thread
    for itme in threads:
        itme.start()
    # wait end
    for itme in threads:
        itme.join()
