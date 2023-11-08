# CEMapping

## Build

 identify logic gates in the layout extracted netlist (SPICE) of digital circuits and generate gate-level Verilog netlist
https://github.com/rachelselinar/ReGDS-Logic-Gate-Extraction.git

For pygraphviz in Mac
``` bash
brew install graphviz
python -m pip install \
    --global-option=build_ext \
    --global-option="-I$(brew --prefix graphviz)/include/" \
    --global-option="-L$(brew --prefix graphviz)/lib/" \
    pygraphviz
```

For Astran
``` bash
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

``` bash
flynn@flynn-Precision-7920-Tower:~/workplace/CEMapping$ nohup python3 -u src/main.py > cemapping.log 2>&1 &
[1] 154280
flynn@flynn-Precision-7920-Tower:~/workplace/CEMapping$ nohup python3 -u AutoCellLibX/main.py > AutoCellLibX.log 2>&1 &
[2] 155867

flynn@flynn-Precision-7920-Tower:~/workplace/CEMapping$ nohup python3 -u src/main.py > cemapping_K3.log 2>&1 &
[3] 927439
flynn@flynn-Precision-7920-Tower:~/workplace/CEMapping$ nohup python3 -u main.py > ../cemapping_K4.log 2>&1 &
[1] 926403
flynn@flynn-Precision-7920-Tower:~/workplace/CEMapping/AutoCellLibX$ nohup python3 -u main.py > ../AutoCellLibX_2.log 2>&1 &
[2] 925924
```
