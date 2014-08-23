package com.exam.module.services;

import java.util.ArrayList;

import com.exam.module.daos.GetStudentListDao;
import com.exam.module.pojos.StudentPojo;


public class Main {

	public static void main(String[] args) throws Exception {
		ArrayList<String[]> queryParams = new ArrayList<String[]>();
		queryParams.add(new String[]{"class","9"});
		queryParams.add(new String[]{"section","B"});
		queryParams.add(new String[]{"name","siva"});
		queryParams.add(new String[]{"roll",""});
		queryParams.add(new String[]{"gender", null});
		queryParams.add(new String[]{"caste",null});
		
		String sugName = "siva";
		
		ArrayList<StudentPojo> arrStudent = new GetStudentListDao().getStudentList(queryParams);
		//System.out.println(arrStudent.size());
		ArrayList<StudentPojo> arrSugStudent = new GetStudentListDao().getStudentList(sugName);
		//System.out.println(arrSugStudent.size());
		//if(!arrSugStudent.isEmpty())
		arrSugStudent = new GetListStudentsService().listStudentService(arrStudent, arrSugStudent);
		//System.out.println(arrSugStudent.size());
		if(arrStudent != null){
			for(StudentPojo pojo : arrStudent){
				System.out.println("ORG__" + pojo.getIntStudentClass() + "#" + pojo.getStrStudentSection() + "#" + pojo.getIntStudentRoll() + "#" + pojo.getStrStudentGender() + "#" + pojo.getStrStudentName() + "#" + pojo.getStrStudentCaste());
			}
		}
		System.out.println("-------------------------------------------------------");
		if(arrSugStudent != null){
			for(StudentPojo pojo : arrSugStudent){
				System.out.println("SUG__" + pojo.getIntStudentClass() + "#" + pojo.getStrStudentSection() + "#" + pojo.getIntStudentRoll() + "#" + pojo.getStrStudentGender() + "#" + pojo.getStrStudentName() + "#" + pojo.getStrStudentCaste());
			}
		}
		
	}

}
