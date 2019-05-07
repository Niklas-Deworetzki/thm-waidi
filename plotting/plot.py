#! /usr/bin/python3

import numpy as np
import matplotlib.pyplot as plt
import sys

IDX_X = 0
IDX_Y = 1
IDX_E = 2

MIN_X = 10
MAX_X = 35

def readFile(filename):
	"""Reads a data file into memory.

	A data file contains three rows worth of data 
	seperated by a comma and any amount of space characters:
	 - The first row represents the x data. This data is to be seen as 
	   context, e.g. time or an input value
	 - The second row represents the y data. This data is to be seen as
	   the real value to the corresponding input
	 - The third row represents the error in the measurement.

	Together the three rows build a function value:
	 f(x) = y ± error

	Any blank lines will be ignored while reading the input.
	Lines starting with two dashes (--) are counted as an comment
	and will also be ignored.

	Data, Comments and Blank Lines may contain any amount of 
	whitespace characters, which are removed from the data while reading.

	The returned data has the form of
	 [(x, y, error)]
	"""
	with open(filename) as f:
		return [tuple(line.split()) for line 
				in f.readlines() 
				if len(line.strip()) > 0 
					and not line.startswith('--')]

def transformData(data):
	"""Transforms input data switching the outer list and the inner tuples.

	The transformation has the abstract form of
	 [(x, y, error)] -> ([x], [y], [error])

	During transformation x will be converted into an int whereas
	y and error are converted into a floating point number.

	This method also filters values according to MIN_X and MAX_X variables.
	"""
	x_pos = [int(x) for (x, _, _) in data]
	y_val = [float(y) for (_, y, _) in data]
	error = [float(e) for (_, _, e) in data]

	x_pos_n = []
	y_val_n = []
	error_n = []

	for i in range(0, len(x_pos)):
		if x_pos[i] >= MIN_X and x_pos[i] <= MAX_X:
			x_pos_n.append(x_pos[i])
			y_val_n.append(y_val[i])
			error_n.append(error[i])

	return (np.array(x_pos_n), np.array(y_val_n), np.array(error_n))


data = []

numBars = len(sys.argv) // 2

for i in range(1, len(sys.argv), 2):
	sys.stdout.write('\r(' + str(len(data)) + '/' + str(numBars) + ')')

	fileData = readFile(sys.argv[i])
	fileColor = sys.argv[i + 1]
	data.append((fileData, fileColor))
sys.stdout.write('\r')

plotType = input('Enter type [linear/log]: ') or 'linear'
MIN_X = int(input("Min X? [" + str(MIN_X) + "]: ") or str(MIN_X))
MAX_X = int(input("Max X? [" + str(MAX_X) + "]: ") or str(MAX_X))

plt.axes(xscale='linear', yscale=plotType)
if plotType == 'linear':
	plt.ticklabel_format(axis='y', style='sci', scilimits=(-2,2))


fileName = 'bars-' + plotType + str(MIN_X) + '-' + str(MAX_X)
for sourceFileIdx in range(1, len(sys.argv), 2):
	fileName += '+' + sys.argv[sourceFileIdx].replace('.result', '')
fileName += '.svg'

for i in range(len(data)):
	(fileData, fileColor) = data[i]
	data[i] = (transformData(fileData), fileColor)


ind   = np.arange(1 + MAX_X - MIN_X)
width = 0.85 / numBars


for i in range(len(data)):
	plt.bar(ind + (i * width), data[i][0][IDX_Y], width, color=data[i][1],
		label=(input('Label for ' + sys.argv[1 + (2 * i)] + ': ') or sys.argv[1 + (2 * i)]))

plt.ylabel('Rechenzeit in µs')
plt.xticks(ind + ((len(data) / 2) - 0.5) * width, [str(n) for n in range(MIN_X, MAX_X + 1)])
plt.title(input('Titel: ') or '')
plt.legend(loc='best')

plt.tight_layout()
plt.savefig(fileName)
plt.show()

