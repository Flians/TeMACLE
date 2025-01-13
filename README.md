# TeMACLE

A technology mapping-aware standard cell library extension framework, which aims to reduce the circuit area after technology mapping with the extended standard cell library.

## Environment

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

For SAT

```bash
sudo apt install cryptominisat
sudo apt install libcryptominisat5-dev
```

For AutoCellLibX

```bash
sudo apt install graphviz graphviz-dev
pip install pygraphviz
```

For pygraphviz in Mac

```bash
brew install graphviz
python -m pip install \
    --global-option=build_ext \
    --global-option="-I$(brew --prefix graphviz)/include/" \
    --global-option="-L$(brew --prefix graphviz)/lib/" \
    pygraphviz
```

## Build

```bash
git clone --recursive https://github.com/Flians/TeMACLE.git
cd TeMACLE
mkdir build && cd build
cmake ..
make -j9
```

## Run

GDS online viewer: https://eecs.blog/BlazorApps/GDSViewer/

```bash
nohup python3 -u AutoCellLibX/main.py > Astran_AutoCellLibX_full.log 2>&1 &
nohup python3 -u src/main.py > Astran_K3_full.log 2>&1 &
nohup python3 -u AutoCellLibX/main.py > iCell_AutoCellLibX_full.log 2>&1 &
nohup python3 -u src/main.py > iCell_K3_full.log 2>&1 &
```

## Citation

If you use TeMACLE in your work, please cite:

```bib
@inproceedings{Fu2025TeMACLE,
  author  = {Fu, Rongliang and Wang, Chao and Yu, Bei and Ho, Tsung-Yi},
  journal = {IEEE Transactions on Computer-Aided Design of Integrated Circuits and Systems},
  title   = {{TeMACLE}: A Technology Mapping-Aware Area-Efficient Standard Cell Library Extension Framework},
  year    = {2025},
  volume  = {},
  number  = {},
  pages   = {1-13},
  doi     = {}
}
```