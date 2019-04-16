import numpy as np
import matplotlib.pyplot as plt

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


def drawRawPlot(ax, data, barcolor):
	x_pos = np.array([int(x) for (x, _, _) in data])
	y_val = np.array([float(y) for (_, y, _) in data])
	error = np.array([float(e) for (_, _, e) in data])

	ax.bar(x_pos - 10, y_val, align='center', color=barcolor, alpha=1)


plotType = input('Enter type (linear, log): ')
plotType = 'linear' if not plotType or not plotType in ['linear', 'log'] else plotType

fig, ax = plt.subplots()
dataPython  = readFile('python.result')
dataHaskell = readFile('haskell.result')
dataJava    = readFile('java.result')

drawRawPlot(ax, dataPython, 'yellow')
drawRawPlot(ax, dataHaskell, 'blue')
drawRawPlot(ax, dataJava, 'firebrick')

ax.set_xticks(np.arange(1 + 25 - 10))
ax.set_xticklabels([str(n) for n in range(10, 25 + 1)])

ax.set_ylabel('Y Label')
ax.set_yscale(plotType)
ax.yaxis.grid(True)

ax.set_title('Plot title')

plt.tight_layout()
plt.savefig('bars-' + plotType + '.svg')
plt.show()

