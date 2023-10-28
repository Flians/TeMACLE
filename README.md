# CEMapping

## Build

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