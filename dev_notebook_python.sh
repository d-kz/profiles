# jup37 environment
# upgrade pip - seems to remove (pep 517) wheel compilation and installs properly
pip install --upgrade pip
# pip install --upgrade pip setuptools wheel ?

# barkutlis
pip3 install git+ssh://git@github.com/barkbox/barkutils.git  --upgrade 

# for jupyter to work, need tornado above 6.0
# pip install --upgrade tornado 
# for pyarrow to work (barkutils dependency), need
# streamlit 0.58.0 requires tornado<6.0,>=5.0

# pyarrow install error ("command 'cmake' failed with exit status 1") from barkutils
# pip install streamlit==0.62.0


# my dev package
cd /Users/deniskazakov/Documents/WS/dkazakov-wip
pip install .

# other packages
pip install sklearn shap matplotlib xgboost

# notebook
pip install notebook
# install jupyterthemes
pip install jupyterthemes
# pick a theme
jt -t chesterish  -T
# extensions
pip install jupyter_contrib_nbextensions && jupyter contrib nbextension install
# (select headers)

#____________
# trying to check if it's cmake causing trouble by reinstalling it. https://discourse.cmake.org/t/cmake-not-working-after-update-do-big-sur/2546/5
# brew install cmake
# nope this was not the issue