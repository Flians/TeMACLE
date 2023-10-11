# AutoCellLibX: Automated Standard Cell Library Extension Based on Pattern Mining

## Introduction

Custom standard cell libraries can improve the final quality of the corresponding VLSI designs but properly customizing standard cell libraries 
remains challenging due to the complex characteristics of the VLSI designs. This paper presents an  automatic standard-cell library extension 
framework, AutoCellLibX. It can find a set of standard cell cluster pattern candidates from the post-technology mapping gate-level netlist, 
with the consideration of standard cell characteristics and technology mapping constraints, based on our high-efficiency frequent subgraph 
mining algorithm. Meanwhile, to maximize the area benefit of standard cell customization for the given gate-level netlist, AutoCellLibX 
includes our proposed pattern combination algorithm which can iteratively find a set of gate-level patterns from numerous candidates as 
the extension part of the given initial standard cell library. To the best of our knowledge, AutoCellLibX is the first automated standard 
cell extension framework that closes the optimization loop between the analysis of gate-level netlist and standard cell library customization 
for VLSI design productivity. The experiments with FreePDK45 library and benchmarks from various domains show that AutoCellLibX can generate 
the library extension with up to 5 custom standard cells within 1.1 hours for each of the 31 benchmark designs and the resultant extension of 
the standard cell library can save design area by 4.49% averagely. In this repository, the simple but effective implementation of AutoCellLibX is provided, 
which shows the overall flow that we presented in the released paper for people in the community. We found that this is an interesting problem and we hope we can inspire more innovation. 
If you are curious about more details or some parts of the implementation confuse you, please feel free to raise issue in GitHub or contact us.

<p align="center">
<img src="https://github.com/zslwyuan/AutoCellLibX/blob/main/doc/pattern.png" alt="Pattern" title="Pattern" width="400" /> 
</p>

## License

This project is developed by [Reconfiguration Computing Systems Lab](https://eeweiz.home.ece.ust.hk/), Hong Kong University of Science and Technology (HKUST). Tingyuan Liang (tliang@connect.ust.hk), Jingsong Chen, Lei Li, and Wei Zhang (eeweiz@ust.hk) are the major contributors of this project. Users should comply the Apache License attached in the root directory.

## Publications

\[1\] AutoCellLibX: Automated Standard Cell Library Extension Based on Pattern Mining[(Arxiv)](https://arxiv.org/abs/2207.12314)
```
@article{liang2022autocelllibx,
  title={AutoCellLibX: Automated Standard Cell Library Extension Based on Pattern Mining},
  author={Liang, Tingyuan and Chen, Jingsong and Li, Lei and Zhang, Wei},
  journal={arXiv preprint arXiv:2207.12314},
  year={2022}
}
```

## Motivations

Since commonly-used standard cell libraries cannot meet all the requirements in some special scenarios, as an alternative solution, academia and industry take continuous efforts to extend standard cell libraries with custom standard cells for their technology nodes and domain-specific designs. One of the potential sources of these custom standard cells is standard cell merging, which merges several existing standard cells into a new one with an optimized layout, as a simplified example shown in the figure below. It can benefit the design flow from two aspects:

1. It enlarges the back-end solution space of the VLSI design, e.g., placement and routing,  and hence enables some design goals which cannot be achieved based on the original standard cell library, via transistor-level optimizations like diffusion sharing and in-cell signal routing.
2. It shrinks the problem scale of the VLSI back-end tools by reducing the number of gates in the post-technology mapping gate-level netlist and enforcing pre-defined relative position constraints. These factors facilitate the tools to converge at better results.

Standard cell merging provides noticeable optimization potentials but it is critically challenging since numerous factors, e.g., the design context, transistor layout, design rules and expected PPAC metrics, should be considered to realize a beneficial library. First, as for the design context, designers should identify the characteristics of the target design to locate the optimization opportunities and design pattern mining is one of the promising approaches. Second, the transistor network and layout should be designed under the constraints of design rules and PPAC metrics, which is usually called standard cell layout synthesis. In this paper, we propose a fully automatic standard-cell library extension framework, AutoCellLibX which can analyze characteristics of the target gate-level netlist and extent an initial standard cell library with custom complex standard cells to minimize the area cost. 
	
<p align="center">
<img src="https://github.com/zslwyuan/AutoCellLibX/blob/main/doc/motivation.png" alt="Motivation" title="Motivation" width="400" /> 
</p>

## Features

1. A practical vertex encoding algorithm, which can find a proper set of neighbor vertex for pattern growth with the consideration of standard cell characteristics, as a part of high-efficiency FSM solution
2. A pattern growth algorithm that can expand the sizes of gate-level patterns while preserving their high recurrence frequencies. Compared to previous FSM approaches, our pattern growth solution carefully handle the overlaps between pattern subgraphs to meet the technology mapping constraint and maximize area reduction
3. A pattern combination algorithm which can iteratively find a set of gate-level patterns from numerous candidates as the extension part of the initial standard cell library to maximize the area reduction of the entire VLSI design
4. To the best of our knowledge, it is the first automated standard cell extension framework that closes the optimization loop between the analysis of gate-level netlist and standard cell library customization. AutoCellLibX can generate SPICE netlists and GDSII layouts of the custom standard cells for downstream VLSI design flow
5. It is far from perfect and comprehensively practical and we welcome any comment or suggestion. ^-^


## Implementation Overview

<p align="center">
<img src="https://github.com/zslwyuan/AutoCellLibX/blob/main/doc/flow.png" alt="Implementation Overview" title="Implementation Overview" width="800" /> 
</p>

## Some Extracted Patterns and Generated Layouts

Some related resultant files are provided in "pySrc/outputs" and below is an example layout.
<p align="center">
<img src="https://github.com/zslwyuan/AutoCellLibX/blob/main/doc/experimentalResult.png" alt="Experimental Result" title="Experimental Result" width="800" /> 
</p>

## Project Hiearchy

Below is a hiearchy tree of this project. As for the details, please refer to the class information and collaboration diagram in the Doxygen documentation and trace the implementation, e.g., AMFPlacer, GlobalPlacer, and PlacementInfo.
```
├── benchmarks  // benchmark information from various domain
├── doc         // documentation-related materials
└── pySrc       // source code of the project
└── stdCelllib  // information of related PDK and standard cell libraries
```
Below is the call graph of the project for your reference:

<p align="center">
<img src="https://github.com/zslwyuan/AutoCellLibX/blob/main/doc/callGraph.png" alt="Call Graph of the Project" title="Call Graph of the Project" width="800" /> 
</p>

## Dependencies

Python Packages:

1. tqdm
2. numpy
3. networkx
4. easydict
5. blifparser
6. gdspy
7. liberty-parser

setup env by command:
```
pip install -r requirements.txt
```

C++ 3-rd party tool:

[ASTRAN](https://github.com/aziesemer/astran) for should be installed in tools and the path of it should be indicated in "pySrc/main.py"

## Todo List

1. support for ASAP7 PDK
2. logic level optimization of subgraph
3. reproduce the layout optimization in related works

## Issue Report

This project is under active development and far from perfect. We do want to make the placer useful for people in the community. Therefore,
* If you have any question/problem, please feel free to create an issue in the [GitHub Issue](https://github.com/zslwyuan/AutoCellLibX/issues) or email us (Tingyuan LIANG, tliang AT connect DOT ust DOT hk)
* We sincerely welcome code contribution to this project or suggestion in any approach!



(last updated Oct 11, 2022)
