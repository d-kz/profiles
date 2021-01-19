import pandas as pd
import numpy as np
import os
np.set_printoptions(precision=2)
import matplotlib
import matplotlib.pyplot as plt
plt.rcParams['figure.figsize'] = [8, 7]

# python version check
import sys
python_version = int(sys.version.split('.')[0])
if python_version == 2:
    print(sys.version)
    print("Use python 3 because python 2 will mess up unicode.")
    sys.exit()


# Pandas options
pd.options.display.max_columns = 200
pd.options.display.max_rows = 300

# If in ipython, load autoreload extension
from IPython import get_ipython
ipython = get_ipython()

if 'ipython' in globals():
    print('\nWelcome to IPython! Loading autoreload.')
    ipython.magic('load_ext autoreload')
    ipython.magic('autoreload 2')
    # from IPython.core.interactiveshell import InteractiveShell
    # InteractiveShell.ast_node_interactivity = 'all'
    # say when the thing is done
    # os.system('say "done"')

    # shift + tab - shows documentation

    
print("Your packages have been imported")


