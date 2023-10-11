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

    AstranReduceArea = findStat(lines, "compared to Astran GDS area")
    AstranReduceAreaPercentage = findStat(
        lines, "% <- compared to Astran GDS area")
    GSCLReduceArea = findStat(lines, "compared to GSCL GDS area")
    GSCLReduceAreaPercentage = findStat(
        lines, "% <- compared to GSCL GDS area")

    benchmark2stat[benchmarkName] = [
        AstranReduceArea/AstranReduceAreaPercentage *
        100, GSCLReduceArea/GSCLReduceAreaPercentage*100,
        AstranReduceArea, GSCLReduceArea,
        AstranReduceAreaPercentage, GSCLReduceAreaPercentage]

    targetPath = outputPath+benchmarkName
    mkdir(targetPath)
    os.system('cp '+resultFileName+" "+targetPath)
    for line in lines[5:]:
        complexName = line.split("\'")[1]
        os.system('cp '+benchmarkOutputPath+"/"+complexName+".* "+targetPath)


print(benchmark2stat)
csvFile = open(outputPath + 'result.csv', 'w')
print("benchmark | originalAstranTotalArea | originalGSCLTotalArea "
      "| reduceAreaComparedToAstranTotal | reduceAreaComparedToTotal "
      "| AstranReduceAreaPercentage | GSCLReduceAreaPercentage |", file=csvFile)
for key in sorted(benchmarkNames):
    print(key, '|', end='', file=csvFile)
    for value in benchmark2stat[key]:
        print(value, '|', end='', file=csvFile)
    print(end='\n', file=csvFile)
csvFile.close()

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
