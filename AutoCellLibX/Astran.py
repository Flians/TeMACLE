import os
import sys
import subprocess


def loadAstranArea(GDSPath, typeName):
    logFileName = os.path.join(GDSPath, typeName + '.Astranlog')
    if not os.path.exists(logFileName):
        return -2
    with open(logFileName, 'r', encoding='utf-8') as logFile:
        lines = logFile.readlines()
        for line in lines:
            if line.find("-> Cell Size (W x H): ") >= 0:
                return float(line.replace("-> Cell Size (W x H): ", "").split("x")[0]) * 0.8 * 3.2

    return -2


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

    try:
        with open(f'{commandDir}/{complexName}.Astranlog', 'w', encoding='utf-8') as fp:
            subprocess.run([AstranPath, "--shell", f"{commandDir}/{complexName}.run"], stdout=fp, stderr=fp, timeout=3600)
    except subprocess.TimeoutExpired:
        with open(f'{commandDir}/{complexName}.Astranlog', 'a+', encoding='utf-8') as fileResult:
            fileResult.write("Timeout for Astran!\n")
        return False
    except:
        return False

    return True


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

        outputFile = open(f'{commandDir}/{complexName}.run', 'w')
        print(commands, file=outputFile)
        outputFile.close()

        os.system(f"{AstranPath}/bin/Astran --shell {commandDir}/{complexName}.run > {commandDir}/{complexName}.Astranlog")
        if (os.path.exists(f'{commandDir}/{complexName}.gds')):
            return
