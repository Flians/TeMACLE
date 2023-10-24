from os import listdir
from os.path import isfile, join
import os


def loadAstranArea(GDSPath, typeName):
    gdsFiles = [f for f in listdir(GDSPath) if isfile(join(GDSPath, f)) and f.find(".gds") >= 0]
    for gdsFile in gdsFiles:
        if (typeName + ".gds" != gdsFile):
            continue
        logFileName = GDSPath + gdsFile.replace(".gds", ".Astranlog")
        logFile = open(logFileName, 'r')
        lines = logFile.readlines()
        logFile.close()

        for line in lines:
            if (line.find("-> Cell Size (W x H): ") >= 0):
                return float(line.replace("-> Cell Size (W x H): ", "").split("x")[0]) * 0.8 * 3.2

    assert (False)


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

    outputFile = open(f'{commandDir}/{complexName}.run', 'w')
    print(commands, file=outputFile)
    outputFile.close()

    os.system(f"{AstranPath}/bin/Astran --shell {commandDir}/{complexName}.run > {commandDir}/{complexName}.Astranlog")
    pass


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
