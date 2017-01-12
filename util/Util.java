package com.niit.ShoppingCart.util;

public class Util {
	
	
	public static String removeCommaa(String name)
	{
		return name.replace(",", ",");
	}

	
	/*public static void main(String[] args) {
		
		System.out.println( Util.removeCommaa(",PRD001"));
	}
	*/
	public String replace(String st, String ch1, String ch2)
	{
		
	  return	st.replace(ch1, ch2);
		
	}
	
	
	public static void main(String[] args) {
		Util u = new Util();
		
		String newString =   u.replace(",PRD", ",", "");
		System.out.println(newString);
	}


}
