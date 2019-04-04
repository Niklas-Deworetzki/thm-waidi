package niklas.deworetzki.waidi;

import org.openjdk.jmh.annotations.*;
import org.openjdk.jmh.infra.Blackhole;
import org.openjdk.jmh.runner.Runner;
import org.openjdk.jmh.runner.RunnerException;
import org.openjdk.jmh.runner.options.Options;
import org.openjdk.jmh.runner.options.OptionsBuilder;

import java.util.concurrent.TimeUnit;

@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@State(Scope.Benchmark)
@Warmup(iterations = 5)
@Measurement(time = 60)
public class Test {

	@Param({"10", "15", "20", "25", "30"})
	private int N;

	public static void main(String[] args) throws RunnerException {
		Options opt = new OptionsBuilder()
				.include(Test.class.getSimpleName())
				.forks(1)
				.build();

		new Runner(opt).run();
	}

	@Setup
	public void setup() {
		Fibonacci.fib(0);
	}


	@Benchmark
	public void test(Blackhole blackhole) {
		blackhole.consume(Fibonacci.fib(N));
	}
}
