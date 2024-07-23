# CEMapping

## Build

GDS online viewer: https://eecs.blog/BlazorApps/GDSViewer/

 identify logic gates in the layout extracted netlist (SPICE) of digital circuits and generate gate-level Verilog netlist
https://github.com/rachelselinar/ReGDS-Logic-Gate-Extraction.git

For pygraphviz in Mac

```bash
brew install graphviz
python -m pip install \
    --global-option=build_ext \
    --global-option="-I$(brew --prefix graphviz)/include/" \
    --global-option="-L$(brew --prefix graphviz)/lib/" \
    pygraphviz
```

For Astran

```bash
sudo apt install libglew-dev
sudo apt install freeglut3-dev
sudo apt install libgtk-3-dev

sudo -E add-apt-repository ppa:nilarimogard/webupd8
sudo apt update
sudo apt install python-wxgtk2.8

sudo apt install wx3.0-i18n
sudo apt install libwxbase3.0-dev
sudo apt install libwxgtk3.0-gtk3-dev
sudo apt install libwxgtk-media3.0-gtk3-dev
sudo apt install libwxgtk-webview3.0-gtk3-dev

sudo apt-key adv --fetch-keys https://repos.codelite.org/CodeLite.asc
curl -sSL 'https://repos.codelite.org/CodeLite.asc' | sudo apt-key add -
sudo apt-add-repository 'deb https://repos.codelite.org/wx3.2.0/ubuntu/ jammy universe'
sudo apt install wx3.2-i18n
sudo apt install libwxbase3.2unofficial-dev
sudo apt install libwxgtk3.2unofficial-dev 
sudo apt install libwxgtk-media3.2unofficial-dev
sudo apt install libwxgtk-webview3.2unofficial-dev
```

For AutoCellLibX

```bash
sudo apt install graphviz graphviz-dev
pip install pygraphviz
```

For PROBE_SMT_AutoCell

```bash
sudo apt install libfmt-dev 
sudo apt install libjsoncpp-dev
sudo apt install libboost-regex-dev
sudo apt install libgdsii-dev
sudo apt install nlohmann-json3-dev 
```

For GraphMiner

```bash
sudo apt install libpapi-dev
sudo apt install libtbb-dev
sudo apt install libopenblas-base
sudo apt install libopenblas-dev
```

For SATMargin

```bash
sudo apt install cryptominisat
sudo apt install libcryptominisat5-dev
```

## Run

```bash
flynn@flynn-Precision-7920-Tower:~/workplace/CEMapping$ nohup python3 -u src/main.py > cemapping.log 2>&1 &
[1] 2268182
flynn@flynn-Precision-7920-Tower:~/workplace/CEMapping$ nohup python3 -u AutoCellLibX/main.py > AutoCellLibX.log 2>&1 &
[2] 155867

flynn@flynn-Precision-7920-Tower:~/workplace/CEMapping$ nohup python3 -u src/main.py > cemapping_K3.log 2>&1 &
[3] 16057
flynn@flynn-Precision-7920-Tower:~/workplace/CEMapping/src$ nohup python3 -u main.py > ../cemapping_K4.log 2>&1 &
[1] 15727
flynn@flynn-Precision-7920-Tower:~/workplace/CEMapping/AutoCellLibX$ nohup python3 -u main.py > ../AutoCellLibX.log 2>&1 &
[2] 12715

flynn@flynn-Precision-7920-Tower:~/workplace/CEMapping/src$ nohup python3 -u main.py > ../cemapping_K4.log 2>&1 &
[1] 3337114
flynn@flynn-Precision-7920-Tower:~/workplace/CEMapping/src$ nohup python3 -u main.py > ../cemapping_K3C.log 2>&1 &
[1] 2478568
flynn@flynn-Precision-7920-Tower:~/workplace/CEMapping$ nohup python3 -u src/main.py > cemapping_K3_nc.log 2>&1 &
[1] 3691552
flynn@flynn-Precision-7920-Tower:~/workplace/CEMapping$ nohup python3 -u src/main.py > cemapping_K4_nc.log 2>&1 &
[1] 4036109
flynn@flynn-Precision-7920-Tower:~/workplace/CEMapping$ nohup python3 -u src/main.py > cemapping_K3_nc2.log 2>&1 &
[1] 48727

flynn@flynn-Precision-7920-Tower:~/workplace/CEMapping$ nohup python3 src/main.py > iCell_k3.log 2>&1 &
[1] 5862
flynn@flynn-Precision-7920-Tower:~/workplace/CEMapping$ nohup python3 -u AutoCellLibX/main.py > iCell_AutoCellLibX.log 2>&1 &
[5] 41314
```

``` bash
pip3 install lclayout
./stdCellLib/spice2cell.pl sky130_fd_sc_hd__a2bb2o_1.sp
./stdCellLib/cell2spice.pl SKY130_FD_SC_HD__A2BB2O_1.cell
lclayout --output-dir test/ --tech tools/StdCellLib/Tech.SKY130/librecell_tech.py --netlist SKY130_FD_SC_HD__A2BB2O_1.sp --cell SKY130_FD_SC_HD__A2BB2O_1 --verbose --signal-router dijkstra / steiner --placer meta / flat / hierarchical / smt
```

``` bash
pip install volare
# Define the following environment variable
export PDK_ROOT="/home/flynn/workplace/CEMapping/stdCellLib"
# List remote the PDK you want to install (e.g. sky130 or gf180mcu) as follows:
volare ls-remote --pdk sky130
# Select one release for installation.
volare enable --pdk sky130 bdc9412b3e468c102d01b7cf6337be06ec6e9c9a
# To explore more options use:
volare enable --help

volare ls-remote --pdk gf180mcu
volare enable --pdk gf180mcu bdc9412b3e468c102d01b7cf6337be06ec6e9c9a
```

Charlib
``` bash
# Install our customized version of PySpice
pip install git+https://github.com/infinitymdm/PySpice

# Install CharLib
pip install charlib

# Install a compatible circuit simulator. ngspice
sudo apt install ngspice-dev
sudo apt install libngspice0-dev
```