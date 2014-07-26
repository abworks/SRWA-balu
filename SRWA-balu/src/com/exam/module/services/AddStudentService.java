package com.exam.module.services;

import java.util.ArrayList;
import java.util.Map;

import com.exam.module.daos.AddStudentDao;

public class AddStudentService {
	public void addStudent(Object[] data) throws Exception{
		AddStudentDao studentDao = new AddStudentDao();
		studentDao.addStudent(data);
	}
	public Map<Integer, ArrayList<Object>> addStudent(String fileName, String sheetName) throws Exception{
		ExcelMgmt excelMgmt = new ExcelMgmt();
		Map<Integer, ArrayList<Object>> data = excelMgmt.readFromExcel(fileName, sheetName);
		return data;
	}
}
