import numpy as np
import matplotlib.pyplot as plt

IDX_X = 0
IDX_Y = 1
IDX_E = 2

MIN_X = 10
MAX_X = 35

fibCache = {}

def fib(n):
	"""Calculates the n-th fibonacci number using a lookup table"""
	if n <= 2:
		return 1
	if n in fibCache:
		return fibCache[n]
	fibn = fib(n - 1) + fib(n - 2)
	fibCache[n] = fibn
	return fibn

def normalizeFibonacci(data):
	"""Normalizes the input data using the fibonacci numbers.

	The input data has to be the form of (x, y, error) where
	y marks the value at a given position x and error is the amount of
	error for this value:

	f(x) = y ± error

	Now y and error are divided by the x-th fibonacci number:

	f(x) = (y / fib(x)) ± (error / fib(x))

	The returned data has the same format as input.
	"""
	return [(x, y / fib(x), e / fib(x)) for (x, y, e) in data]


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

def drawRawPlot(ax, data, barcolor):
	(x_pos, y_val, error) = data
	ax.bar(x_pos - MIN_X, y_val, align='center', color=barcolor, alpha=1)


plotType = input('Enter type [linear/log]: ') or 'linear'
doNormalize = input('Normalize data? [N/y]: ') in ['Y', 'y', 'yes']
MIN_X = int(input("Min X? [" + str(MIN_X) + "]: ") or str(MIN_X))
MAX_X = int(input("Max X? [" + str(MAX_X) + "]: ") or str(MAX_X))

fig, ax = plt.subplots()
dataPython  = transformData(readFile('python.result'))
dataHaskell = transformData(readFile('haskell.result'))
dataJava    = transformData(readFile('java.result'))

# Divide every y value by the minimal y value.
if(doNormalize):
	minY = min([min(data[IDX_Y]) for data in [dataPython, dataHaskell, dataJava]])
	dataPython  = (dataPython[IDX_X],  dataPython[IDX_Y]  / minY, dataPython[IDX_E]  / minY)
	dataHaskell = (dataHaskell[IDX_X], dataHaskell[IDX_Y] / minY, dataHaskell[IDX_E] / minY)
	dataJava    = (dataJava[IDX_X],    dataJava[IDX_Y]    / minY, dataJava[IDX_E]    / minY)
	

drawRawPlot(ax, dataPython,  'yellow')
drawRawPlot(ax, dataHaskell, 'blue')
drawRawPlot(ax, dataJava,    'firebrick')

ax.set_xticks(np.arange(1 + MAX_X - MIN_X))
ax.set_xticklabels([str(n) for n in range(MIN_X, MAX_X + 1)])

ax.set_ylabel('Y Label')
ax.set_yscale(plotType)
ax.yaxis.grid(True)

ax.set_title('Plot title')

fileName = 'bars-' + plotType + str(MIN_X) + '-' + str(MAX_X)
if(doNormalize):
	fileName += '-normalized'
fileName += '.svg'

plt.tight_layout()
plt.savefig(fileName)
plt.show()

