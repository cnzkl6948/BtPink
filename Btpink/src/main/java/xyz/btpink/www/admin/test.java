package xyz.btpink.www.admin;

public class test {
	public static void main(String[] args) {
		int cnt5W = 38;
		int cnt5M = 51;
		int cnt5C = 3;
		
		int girlPerClass5 = cnt5W / cnt5C; 
		int girlPerClass5N = cnt5W % cnt5C; 
		
		System.out.println(girlPerClass5);
		System.out.println(girlPerClass5N);
	}
}
