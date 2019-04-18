package niklas.deworetzki.waidi;

import static niklas.deworetzki.waidi.Fibonacci.fib;

public class RunnableBench {

	public static void main(String[] args) {
		System.out.println(fib(Integer.parseInt(args[0])));
	}

}
