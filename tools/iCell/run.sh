#!/bin/bash 

# 初始化参数
netlist=""
timelimit=""
algorithm=""
outpath=""
cellname=""

# 使用getopts解析命令行参数
while getopts ":i:t:a:o:c:" opt; do
  case $opt in
    i) netlist="$OPTARG"
    ;;
    t) timelimit="$OPTARG"
    ;;
    a) algorithm="$OPTARG"
    ;;
    o) outpath="$OPTARG"
    ;;
    c) cellname="$OPTARG"
    ;;
    \?) echo "Invalid option -$OPTARG" >&2
    ;;
  esac
done

# 打印参数
echo "Netlist: $netlist"
echo "Time limit: $timelimit"
echo "Algorithm: $algorithm"
echo "Output path: $outpath"
echo "Cell name: $cellname"

cd $(cd $(dirname $0);pwd)

if [ $algorithm = "3" ];
then
    ./generate_single_cell_place -t asap7_7p5t -c $cellname -i $netlist -o $outpath 
    ./iCell -a $algorithm -i $outpath/$cellname.sp -c $cellname -t $timelimit -p $outpath/$cellname.pl 
else
    ./iCell -a $algorithm -i $netlist -c $cellname -t $timelimit
fi