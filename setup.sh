#!/bin/bash
cd ~
wget http://picat-lang.org/download/picat37_linux64.tar.gz
tar -xf picat37_linux64.tar.gz
rm picat37_linux64.tar.gz
mv Picat .picat

echo 'export PATH="$HOME/.picat:$PATH"' >> ~/.bashrc
source ~/.bashrc

conda install python=3.12
conda install -c conda-forge jupyterlab jupyterlab_rise nbconvert playwright sqlite
pip install ipicat
