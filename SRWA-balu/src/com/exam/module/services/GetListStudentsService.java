package com.exam.module.services;

import java.util.ArrayList;

import com.exam.module.pojos.StudentPojo;

public class GetListStudentsService {
	public ArrayList<StudentPojo> listStudentService(ArrayList<StudentPojo> arrStudent, ArrayList<StudentPojo> arrSugStudent){
		ArrayList<StudentPojo> newSugList = new ArrayList<StudentPojo>();
		if(arrStudent.size() == 0)
			return arrSugStudent;
		if(arrStudent.size() == arrSugStudent.size()){
			int arrStudentSize = arrStudent.size();
			int count = 0;
			for(StudentPojo pojoSug : arrSugStudent){
				for(StudentPojo pojoArr : arrStudent){
					if(pojoSug.getStrStudentName().equals(pojoArr.getStrStudentName()) && pojoSug.getIntStudentClass() == pojoArr.getIntStudentClass() && pojoSug.getStrStudentSection().equals(pojoArr.getStrStudentSection()) && pojoSug.getIntStudentRoll() == pojoArr.getIntStudentRoll()){
						count++;
					}
				}
			}
			if(arrStudentSize == count)
				return null;
		}
		for(int i = 0; i < arrSugStudent.size() ; i++){
			for(int j = 0 ; j < arrStudent.size() ; j++){
				if(arrSugStudent.get(i).getStrStudentName().equals(arrStudent.get(j).getStrStudentName()) && arrSugStudent.get(i).getIntStudentClass() == arrStudent.get(j).getIntStudentClass() && arrSugStudent.get(i).getStrStudentSection().equals(arrStudent.get(j).getStrStudentSection()) && arrSugStudent.get(i).getIntStudentRoll() == arrStudent.get(j).getIntStudentRoll()){
					//newSugList.add(arrSugStudent.get(i));
					arrSugStudent.remove(i);
				}
			}
		}
		//return newSugList;
		return arrSugStudent;
	}
}
