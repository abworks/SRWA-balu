package com.exam.module.services;

import java.util.ArrayList;
import java.util.Map;
import java.util.Set;


public class Main {

	public static void main(String[] args) throws Exception {
		AddStudentService studentService = new AddStudentService();
		Map<Integer, ArrayList<Object>> data = studentService.addStudent("E:\\test.xlsx",null);
		Set<Integer> key = data.keySet();
		
		for(Integer i : key){
			ArrayList<Object> inData = data.get(i);
			for(Object j : inData){
				if(j instanceof Double)
				System.out.print(j + "#");
				System.out.print(j + "#");
				}
			System.out.println();
		}
	}

}
