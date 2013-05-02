import java.util.*;

public class Euler {

	public static void main(String[] args) {
		int ara = genTriangle(7);
		System.out.println(ara);
		factors(ara);
		System.out.println(factors(ara));
		for(int i = 0;i<13000;i++){
			ara = genTriangle(i);
			if(factors(ara) >500){
				System.out.println(ara);
			}
		}
		long start = System.currentTimeMillis();
		long stop = System.currentTimeMillis();
        System.out.println("\tTime: " + (stop-start) + "ms");
	}

	public static int genTriangle(int num) {
		int sum = 0;
		sum = ((num+1)*num)/2;
		return sum;
	}
	public static int factors(int fact) {
		HashSet hs = new HashSet();
		int num = (int)Math.pow(fact,.5);
		int bound = fact;
		for (int i = 1; i <= bound+1; i++) {
			if (fact % i == 0) {
				hs.add(i);
				bound = fact/i;
			}
			if(bound!=i){
				hs.add(bound);
			}
		}
		return hs.size();
	}
}
