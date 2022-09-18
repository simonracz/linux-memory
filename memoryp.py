import time
import numpy as np

big_array = np.zeros(4 * 1024 * 1024 * 1024)
print("Yay!")
big_array += 1
while(True):
    time.sleep(1)


