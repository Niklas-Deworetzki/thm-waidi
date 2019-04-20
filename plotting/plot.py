import numpy as np
import matplotlib.pyplot as plt

IDX_X = 0
IDX_Y = 1
IDX_E = 2

fibCache = {}

def fib(n):
	if n <= 2:
		return 1
	if n in fibCache:
		return fibCache[n]
	fibn = fib(n - 1) + fib(n - 2)
	fibCache[n] = fibn
	return fibn

def normalizeFibonacci(data):
	return [(x, y / fib(x), e / fib(x)) for (x, y, e) in data]


def readFile(filename):
	with open(filename) as f:
		return [tuple(line.split()) for line 
				in f.readlines() 
				if len(line.strip()) > 0 
					and not line.startswith('--')]

def transformData(data):
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

if(doNormalize):
	minY = min([min(data[IDX_Y]) for data in [dataPython, dataHaskell, dataJava]])
	dataPython  = (dataPython[IDX_X],  dataPython[IDX_Y]  / minY, dataPython[IDX_E])
	dataHaskell = (dataHaskell[IDX_X], dataHaskell[IDX_Y] / minY, dataHaskell[IDX_E])
	dataJava    = (dataJava[IDX_X],    dataJava[IDX_Y]    / minY, dataJava[IDX_E])
	

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

