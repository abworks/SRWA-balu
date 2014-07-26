package com.exam.module.daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.exam.module.pojos.StudentPojo;
import com.exam.module.utils.ConnectionManager;
import com.exam.module.utils.Constants;


public class GetStudentListDao {
	public ArrayList<StudentPojo> getStudentList(ArrayList<Object[]> queryParams) throws Exception{
		ArrayList<StudentPojo> arrStudent = new ArrayList<StudentPojo>();
		Connection connection = ConnectionManager.getConnection();
		String query = queryBuilder(queryParams);
		//System.out.println(query);
		PreparedStatement statement = connection.prepareStatement(query);
		ResultSet resultSet = statement.executeQuery();
		while(resultSet.next()){
			StudentPojo pojo = new StudentPojo();
			pojo.setIntStudentClass(resultSet.getInt(1));
			pojo.setStrStudentSection(resultSet.getString(2));
			pojo.setIntStudentRoll(resultSet.getInt(3));
			pojo.setStrStudentGender(resultSet.getString(4));
			pojo.setStrStudentName(resultSet.getString(5));
			pojo.setStrStudentCaste(resultSet.getString(6));
			arrStudent.add(pojo);
		}
		ConnectionManager.closeConnections(connection, statement, resultSet);
		return arrStudent;
	}
	
	private static String queryBuilder(ArrayList<Object[]> queryParams){
		String query = Constants.GET_ALL_STUDENTS;
		String buildQuery = "";
		int count = 0;
		for(Object[] i : queryParams){
			if(i[1].equals("ALL"))
				count++;
		}
		
		if(count == 6){
			buildQuery = query;
			return buildQuery;
		}
		
		buildQuery = Constants.GET_ALL_STUDENTS + " WHERE ";
		for(int i = 0; i<queryParams.size()-1; i++){
			if(!queryParams.get(i)[1].equals("ALL") && queryParams.get(i)[1] instanceof Integer){
				buildQuery += queryParams.get(i)[0] + " = " + queryParams.get(i)[1] + " AND ";
			}
			if(!queryParams.get(i)[1].equals("ALL") && queryParams.get(i)[1] instanceof String){
				buildQuery += queryParams.get(i)[0] + " = '" + queryParams.get(i)[1] + "' AND ";
			}
		}
		if(!queryParams.get(queryParams.size()-1)[1].equals("ALL"))
			buildQuery += queryParams.get(queryParams.size()-1)[0] + " = '" + queryParams.get(queryParams.size()-1)[1] + "'";
		if(queryParams.get(queryParams.size()-1)[1].equals("ALL"))
			buildQuery = buildQuery.substring(0, buildQuery.length()-5);
		return buildQuery;
	}
	
	public ArrayList<StudentPojo> getStudentList(String queryParams) throws Exception{
		//System.out.println("queryPAram " + queryParams);
		if(queryParams.equals(""))
		return null;
		
		ArrayList<StudentPojo> arrStudent = new ArrayList<StudentPojo>();
		Connection connection = ConnectionManager.getConnection();
		String query = Constants.GET_ALL_STUDENTS_SUG;
		query += " '%" + queryParams + "%'";
		PreparedStatement statement = connection.prepareStatement(query);
		ResultSet resultSet = statement.executeQuery();
		while(resultSet.next()){
			StudentPojo pojo = new StudentPojo();
			pojo.setIntStudentClass(resultSet.getInt(1));
			pojo.setStrStudentSection(resultSet.getString(2));
			pojo.setIntStudentRoll(resultSet.getInt(3));
			pojo.setStrStudentGender(resultSet.getString(4));
			pojo.setStrStudentName(resultSet.getString(5));
			pojo.setStrStudentCaste(resultSet.getString(6));
			arrStudent.add(pojo);
			}
		ConnectionManager.closeConnections(connection, statement, resultSet);
		return arrStudent;
	}
}
