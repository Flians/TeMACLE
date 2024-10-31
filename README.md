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

For Floret

```bash
sudo apt install libqhull-dev zlib1g-dev
git submodule update --init --recursive
```

For lclayout
```bash
git clone https://codeberg.org/librecell/lclayout.git
cd lclayout/ && pip install --upgrade .
mkdir mylibrary
lclayout --output-dir mylibrary --tech examples/dummy_tech.py --netlist examples/cells.sp --cell AND2X1 --verbose --ignore-lvs --signal-router dijkstra / steiner --placer meta / flat / hierarchical / smt

lclayout --output-dir outputs --tech stdCellLib/sky130A/librecell_tech_sky130.py --netlist test/AOI21.sp --cell AOI21
lclayout --output-dir outputs --tech stdCellLib/gf180mcuD/librecell_tech_gf180.py --netlist test/MUX3.sp --cell MUX3
lclayout --output-dir outputs --tech stdCellLib/gf180mcuD/librecell_tech_gf180.py --route-max-iter 20 --netlist stdCellLib/gf180mcuD/libresilicon.sp --cell GF180MCU_FD_SC_MCU9T5V0__AND2_4


git clone https://codeberg.org/librecell/lctime.git
cd lctime/ && pip install --upgrade .
lctime --liberty tests/invx1_template.lib \
    --include tests/gpdk45nm.m \
    --spice test_data/freepdk45/netlists_pex/INVX1.pex.netlist \
    --cell INVX1 \
    --output-loads "0.05, 0.1, 0.2, 0.4, 0.8, 1.6" \
    --slew-times "0.1, 0.2, 0.4, 0.8, 1.6, 3.2" \
    --output invx1.lib
```

sky130 and gf180mcu
``` bash
pip install volare
# Define the following environment variable
export PDK_ROOT="/home/flynn/workplace/CEMapping/stdCellLib"
# List remote the PDK you want to install (e.g. sky130 or gf180mcu) as follows:
volare ls-remote --pdk sky130
# Select one release for installation.
volare enable --pdk sky130 6d4d11780c40b20ee63cc98e645307a9bf2b2ab8
# To explore more options use:
volare enable --help

volare ls-remote --pdk gf180mcu
volare enable --pdk gf180mcu 6d4d11780c40b20ee63cc98e645307a9bf2b2ab8
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

## Run

```bash
nohup python3 -u AutoCellLibX/main.py > Astran_AutoCellLibX_full.log 2>&1 &
nohup python3 -u src/main.py > Astran_K3_full.log 2>&1 &
nohup python3 -u AutoCellLibX/main.py > iCell_AutoCellLibX_full.log 2>&1 &
nohup python3 -u src/main.py > iCell_K3_full.log 2>&1 &
```