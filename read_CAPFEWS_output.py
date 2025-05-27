# import libraries
import numpy as np
import pandas as pd
import h5py
import json
from datetime import datetime
import matplotlib.pyplot as plt
from itertools import compress
import os
from datetime import datetime
from calfews_src import *
from calfews_src.visualizer import Visualizer
from calfews_src.util import get_results_sensitivity_number_outside_model

# results hdf5 file location from CALFEWS simulations
output_folder = 'results/'
output_file = output_folder + 'results.hdf5'
fig_folder = output_folder + 'figs/'

# now load simulation output
datDaily = get_results_sensitivity_number_outside_model(output_file, '')
print(datDaily)
## Uncomment line below to see a List all time series names
print(list(datDaily.keys()))
all_keys = list(datDaily.keys())
for x in all_keys:
  fig, ax = plt.subplots()
  ax.plot(datDaily[x], label=x)
  ax.set_ylabel(x)
  plt.show()
  plt.close()
