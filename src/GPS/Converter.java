package GPS;

import java.util.HashMap;

public class Converter {

	public static String BinaryHexa(String binhexaIn) {
	     String hexa="";
	     if((binhexaIn.length()%8)!=0) 
		   {
			   binhexaIn=String.format("%1$" + 8 + "s", binhexaIn).replace(' ', '0'); //padds the String to always have 8 digits
		   }	    
	     
	     HashMap<String, String> binmap = new HashMap<String, String>();
	     binmap.put("0000","0");binmap.put("0001","1");binmap.put("0010","2");binmap.put("0011","3");
	     binmap.put("0100","4");binmap.put("0101","5");binmap.put("0110", "6");binmap.put("0111","7");
	     binmap.put("1000","8");binmap.put("1001","9");binmap.put("1010", "A");binmap.put("1011","B");
	     binmap.put("1100","C");binmap.put("1101","D");binmap.put("1110", "E");binmap.put("1111","F");
	     
	     hexa=binmap.get(binhexaIn.substring(0, 4));
	     hexa+=binmap.get(binhexaIn.substring(4));
	     hexa=hexa.replaceFirst("^0+(?!$)", ""); //gets rid of redundant zeros if needed
	 
	     return hexa;
	}
	
	public static String BinaryDec(int bindecIn) {
		
		int dec = 0;  
	    int n = 0;  
	    while(true){  
	    	if(bindecIn == 0){  
	        break;  
	    	} 
	    	else {  
	          int temp = bindecIn%10;  
	          dec += temp*Math.pow(2, n);  
	          bindecIn = bindecIn/10;  
	          n++;  
	       }  
	    }  
	    return String.valueOf(dec); 
	}
}
