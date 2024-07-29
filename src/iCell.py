import os


def loadiCellArea(GDSPath, typeName):
    logFileName = os.path.join(GDSPath, typeName + '.iCelllog')
    if not os.path.exists(logFileName):
        return -2
    with open(logFileName, 'r', encoding='utf-8') as logFile:
        lines = logFile.readlines()
        for line in lines:
            if line.find('RETURN_CODE:') >= 0:
                code = int(line.strip().replace('RETURN_CODE:', ''))
                if code == -1:
                    return -1
                else:
                    return 270 * (code + 2) * 54 / 1000000

    return -2


def runiCellForNetlist(iCellPath, spiceNetlistPath, complexName, commandDir):
    if not os.path.exists(commandDir):
        os.makedirs(commandDir)

    commands = f'{iCellPath} -a 1 -i {spiceNetlistPath} -c {complexName} -t 1800'
    with open(f'{commandDir}/{complexName}.run', 'w', encoding='utf-8') as outputFile:
        outputFile.write(commands)

    res = False
    try:
        res = os.system(f'{commands} > {commandDir}/{complexName}.iCelllog') == 0
    except:
        res = False

    if res is False:
        commands = f'{iCellPath} -a 2 -i {spiceNetlistPath} -c {complexName} -t 600'
        with open(f'{commandDir}/{complexName}.run', 'w', encoding='utf-8') as outputFile:
            outputFile.write(commands)
        try:
            res = os.system(f'{commands} > {commandDir}/{complexName}.iCelllog') == 0
        except:
            res = False
    return res
