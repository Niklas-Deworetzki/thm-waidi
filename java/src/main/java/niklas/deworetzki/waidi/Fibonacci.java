package niklas.deworetzki.waidi;

public class Fibonacci {

	public static long fib(long n){
		return (n <= 2) ? 1 : fib(n-1) + fib(n-2);
	}

}
