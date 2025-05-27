import pandas as pd

all_data = pd.read_csv('cap-data-crss.csv', index_col = 0)
for realization in range(1, 33):
  this_realization = all_data[all_data['realization'] == realization]
  this_realization.to_csv('cap-data-crss-' + str(realization) + '.csv')
  