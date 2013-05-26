package com.process;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class StringFormat {
   
	 public static String encryptMD5(String input) {
	        try {
	            MessageDigest md = MessageDigest.getInstance("MD5");
	            byte[] messageDigest = md.digest(input.getBytes());
	            BigInteger number = new BigInteger(1, messageDigest);
	            String hashtext = number.toString(16);
	            while (hashtext.length() < 32) {
	                hashtext = "0" + hashtext;
	            }
	            return hashtext;
	        } catch (NoSuchAlgorithmException e) {
	            throw new RuntimeException(e);
	        }
	 }
	
	  
	 public static String SimpleFormat(String input)
	 {
		 try{
			 String txt = input.trim();
			 String[] arr = txt.split(" +");
			 StringBuilder str = new StringBuilder("");
			 for(String item : arr)
			 {
				 item = item.toLowerCase();
				 char[] a = item.toCharArray();
				 a[0] = Character.toUpperCase(a[0]);
				 str.append(new String(a));
				 str.append(" ");
			 }
			 
			 return str.toString().trim();
		 }
		 catch(Exception e){
			 throw new RuntimeException(e);
		 }
		 
	 }
	 
}
