import numpy as np
import matplotlib.pyplot as plt

IDX_X = 0
IDX_Y = 1
IDX_E = 2

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
	"""
	x_pos = np.array([int(x) for (x, _, _) in data])
	y_val = np.array([float(y) for (_, y, _) in data])
	error = np.array([float(e) for (_, _, e) in data])
	return (x_pos, y_val, error)

def drawRawPlot(ax, data, barcolor):
	(x_pos, y_val, error) = data
	ax.bar(x_pos - 10, y_val, align='center', color=barcolor, alpha=1)


plotType = input('Enter type [linear/log]: ')
plotType = 'linear' if not plotType or not plotType in ['linear', 'log'] else plotType

doNormalizeInp = input('Normalize data? [N/y]: ')
doNormalize = doNormalizeInp in ['Y', 'y', 'yes']

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

ax.set_xticks(np.arange(1 + 25 - 10))
ax.set_xticklabels([str(n) for n in range(10, 25 + 1)])

ax.set_ylabel('Y Label')
ax.set_yscale(plotType)
ax.yaxis.grid(True)

ax.set_title('Plot title')

fileName = 'bars-' + plotType
if(doNormalize):
	fileName += '-normalized'
fileName += '.svg'

plt.tight_layout()
plt.savefig(fileName)
plt.show()

