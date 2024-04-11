# README

用法： `iCell -a <algorithm(1 or 2)> -i <input_netlist> -c <cell_name> -t <timelimit/s> -h <help>`

- -a可以选择两种算法：
    - 算法1 采用基于Z3-solver的算法，由于z3solver的限制，该算法构建模型的时间会比较长，但它的优点是给出充分的求解时间，可以求出满足可布线要求的最小布局的宽度。
    - 算法2采用 gurobi算法的优点是，可以快速求出合法的布局，但是不能保证该布局可以布线，所以后续的布线测试可能失败，它可以快速提供一个合法布局最小宽度数据
- -i 参数设置输入的网表文件
- -c 参数设置要测试的标准单元
- -t 参数设置优化求解时间的上限
- -h 参数打印工具的使用方法

用法举例：

`./iCell -a 2 -i ./netlist.sp -c A2O1A1O1Ixp25_ASAP7_75t_L -t 600`

输出最后一行为RETURN_CODE，如果RETURN_CODE为-1，表示求解出错，可以增加优化时长重新求解