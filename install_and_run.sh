# Install modules for virtual environments
# if they aren't installed now

command -v mkvirtualenv >/dev/null 2>&1 || {
sudo pip3 install virtualenv virtualenvwrapper
echo'export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source /usr/local/bin/virtualenvwrapper.sh' >> ~/.bashrc
}

# Make virtual environment 
# with required version of TF

mkvirtualenv tf-1 -p python3
sudo pip install tensorflow==1.15

# Run main scripts

python CNN_TB_MNIST_Example.py
tensorboard --logdir mnist_TB_logs

# deactivate the virtual environments

deactivate

