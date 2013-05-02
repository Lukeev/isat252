import java.io.*;
import java.lang.reflect.Array;
import java.util.*;

public class names {
	public static String read() {
		String line = "";
		try {
			BufferedReader reader = new BufferedReader(new FileReader(
					"/Users/Luke/Documents/workspace/Euler/src/names.txt"));
			line = reader.readLine();
		} catch (FileNotFoundException e) {
			System.out.println("FNFE");
		} catch (IOException e) {
			System.out.println("IOE");
		}
		return line;
	}

	public static  int score(String []name,int index) {
		HashMap<String,Integer> hp = new HashMap();
		String[] ar ={ "A", "B", "C", "D", "E", "F", "G",
				"H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T",
				"U", "V", "W", "X", "Y", "Z" };
		for(int i =0; i<26;i++){
			hp.put(ar[i],new Integer(i+1));
			}
		hp.put("\"",new Integer(0));
		int sum  = 0;
		for(String s : name){
			sum +=hp.get(s) * index;
		}
		return sum;

	}

	public static void main(String[] args) {
		String a = read();
		String[] arr = a.split(",");
		Arrays.sort(arr);
		String [] name = null;
		int num = 0;
		for(int i=0;i<arr.length;i++){
			name = arr[i].split("(?!^)");
			num+=score(name,i+1);
		}
		System.out.println(num);
	}
}
