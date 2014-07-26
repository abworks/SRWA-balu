package com.exam.module.services;

import java.util.ArrayList;

import com.exam.module.pojos.StudentPojo;

public class GetListStudentsService {
	public ArrayList<StudentPojo> listStudentService(ArrayList<StudentPojo> arrStudent, ArrayList<StudentPojo> arrSugStudent){
		ArrayList<StudentPojo> newSugList = new ArrayList<StudentPojo>();
		if(arrStudent.size() == 0)
			return arrSugStudent;
		if(arrStudent.size() != 0 && arrSugStudent.size() != 0){
			for(int i = 0 ; i < arrStudent.size() ; i++){
				for(int j = 0; j < arrSugStudent.size() ; j++){
					if(!arrStudent.get(i).getStrStudentName().equals(arrSugStudent.get(j).getStrStudentName())){
						newSugList.add(arrSugStudent.get(j));
					}
				}
			}
			return newSugList;
		}
		return newSugList;
	}
}
