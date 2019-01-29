#create anaconda environment
#!/bin/bash

# install pyenv + anaconda
cd ../
git clone https://github.com/yyuu/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
source ~/.bashrc
pyenv install -l | grep ana
pyenv install anaconda3-4.4.0
pyenv rehash
pyenv shell anaconda3-4.4.0
export PATH=/path/to/anaconda3/bin:$PATH
conda update conda

# install pyenv-virtualenv
git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc
source ~/.bashrc

conda create -n py27 python=2.7 numpy scipy pandas jupyter
