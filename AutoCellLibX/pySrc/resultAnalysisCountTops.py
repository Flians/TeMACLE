import glob
from pathlib import Path
import os


def findStat(lines, key):
    for line in lines:
        if (line.find(key) >= 0):
            return float(line.split(" ")[0])
    assert(False)
    return 1


def mkdir(pathStr):
    if os.path.exists(pathStr):
        pass
    else:
        os.mkdir(pathStr)


outputPath = "./results/"

resultFileNames = []
for filename in glob.iglob('./outputs/*/best*', recursive=True):
    resultFileNames.append(os.path.abspath(filename))

benchmark2stat = dict()
benchmarkNames = []
for resultFileName in resultFileNames:
    benchmarkName = resultFileName.split("-")[-1]
    benchmarkOutputPath = '/'.join(resultFileName.split('/')[:-1])
    benchmarkNames.append(benchmarkName)

    resultFile = open(resultFileName, 'r')
    lines = resultFile.readlines()
    resultFile.close()

# | designOverallArea | saveArea | saveRatio | patternCnt | patternSize | patternCoverage | patternName | patternCode |
# | 3208.1854600000415 | 81.92000000000002 | 2.862766147790364 | 32 | 4 | 128 | COMPLEX17 | [NAND2X1,NAND2X1,OR2X1]+c2o0_OAI21X1 |
# | 3208.1854600000415 | 67.584 | 2.3617820719270504 | 66 | 3 | 198 | COMPLEX0 | [NAND2X1,NAND2X1,OR2X1] |
# | 3208.1854600000415 | 58.87999999999997 | 2.0576131687243224 | 23 | 5 | 115 | COMPLEX18 | [NAND2X1,NAND2X1,OR2X1]+c2o0_OAI21X1+c0o0_XNOR2X1 |
# | 3208.1854600000415 | 38.912000000000035 | 1.3598139202004238 | 38 | 2 | 76 | COMPLEX1 | [OAI21X1,NAND2X1] |

    targetPath = outputPath+benchmarkName
    mkdir(targetPath)
    os.system('cp '+resultFileName+" "+targetPath +
              "/"+benchmarkName+"_summary.csv")
    for line in lines[1:]:
        if (len(line) < 10):
            continue
        complexName = line.split("|")[7].replace(' ', '')
        os.system('cp '+benchmarkOutputPath+"/"+complexName+".* "+targetPath)


# print(benchmark2stat)
# csvFile = open(outputPath + 'result.csv', 'w')
# print("benchmark | originalAstranTotalArea | originalGSCLTotalArea "
#       "| reduceAreaComparedToAstranTotal | reduceAreaComparedToTotal "
#       "| AstranReduceAreaPercentage | GSCLReduceAreaPercentage |", file=csvFile)
# for key in sorted(benchmarkNames):
#     print(key, '|', end='', file=csvFile)
#     for value in benchmark2stat[key]:
#         print(value, '|', end='', file=csvFile)
#     print(end='\n', file=csvFile)
# csvFile.close()

# 1625.0880000000009  <- compared to Astran GDS area
# 1.597760919795159 % <- compared to Astran GDS area
# 3736.4217999999987  <- compared to GSCL GDS area
# 1.441069856374211 % <- compared to GSCL GDS area
# The generated complex cells are (name, clusterNum, cellNumInOneCluster):
# ('COMPLEX0', 644, 2)
# ('COMPLEX1', 493, 2)
# ('COMPLEX2', 490, 2)
# ('COMPLEX3', 413, 2)
# ('COMPLEX4', 330, 2)


# bestRecordFileList = glob.glob('bestRecord-*')
# print(bestRecordFileList)
