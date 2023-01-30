#!/usr/bin/env python

import numpy as np
import matplotlib.pyplot as plt


#to show pub sub results
# with open("pub_sub_results.txt") as file:
#     lines = [float(line.rstrip()) for line in file]

#to show client server results
with open("cli_srv_results.txt") as file:
    lines = [float(line.rstrip()) for line in file]

#I noticed 20 bins was better for client server to see pattern
#and 10 was fine for pub sub
plt.hist(lines, density=False, bins=20)
plt.ylabel('Count')
plt.xlabel('Seconds')
plt.show()