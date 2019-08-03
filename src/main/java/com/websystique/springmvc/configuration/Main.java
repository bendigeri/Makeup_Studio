package com.websystique.springmvc.configuration;

public class Main {
	
	

	public static String reversedString(String str) {
		
		if(str.isEmpty()) {
			return str;
		}
		
		return reversedString(str.substring(1)) + str.charAt(0);
		
	}
	

	public static void main(String[] args) {
		
		Bank bank= new SBI();
		
		String str = "Shankar";
		 System.out.println(reversedString(str));
		
		

	}

}
