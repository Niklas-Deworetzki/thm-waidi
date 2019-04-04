import pytest
import pytest_benchmark
from fibonacci import *

def test(benchmark):
	[benchmark(fib, n) for n in range(1, 30 + 1)]

