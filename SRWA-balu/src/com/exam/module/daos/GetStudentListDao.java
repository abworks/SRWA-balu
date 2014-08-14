package com.exam.module.daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.exam.module.pojos.StudentPojo;
import com.exam.module.utils.ConnectionManager;
import com.exam.module.utils.Constants;


public class GetStudentListDao {
	public ArrayList<StudentPojo> getStudentList(ArrayList<String[]> queryParams) throws Exception{
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
	
	private static String queryBuilder(ArrayList<String[]> queryParams){
		String query = Constants.GET_ALL_STUDENTS;
		String buildQuery = "";
		int count = 0;
		for(String[] i : queryParams){
			if(i[1] == null)
				count++;
			else if(i[1].equals(""))
				count++;
		}
		
		if(count == 6){
			buildQuery = query;
			return buildQuery;
		}
		
		buildQuery = Constants.GET_ALL_STUDENTS + " WHERE ";
		for(int i = 0; i < 4; i++){
			Object value;
			//System.out.println(i + "->" + queryParams.get(i)[1].toString());
			try{
				value = Integer.parseInt(queryParams.get(i)[1]);
			}catch(Exception e){
				value = queryParams.get(i)[1];
			}
			if(!queryParams.get(i)[1].equals("") && value instanceof Integer)
				buildQuery += queryParams.get(i)[0] + " = " + queryParams.get(i)[1] + " AND ";
			if(!queryParams.get(i)[1].equals("") && value instanceof String){
				buildQuery += queryParams.get(i)[0] + " = '" + queryParams.get(i)[1] + "' AND ";
			}
		}
		if(queryParams.get(4)[1] != null)
			buildQuery += queryParams.get(4)[0] + " = '" + queryParams.get(4)[1] + "' AND ";
		if(queryParams.get(5)[1] != null)
			buildQuery += queryParams.get(5)[0] + " = '" + queryParams.get(5)[1] + "'";
		else
			buildQuery = buildQuery.substring(0, buildQuery.length()-5);
		return buildQuery;
	}
	
	public ArrayList<StudentPojo> getStudentList(String queryParam) throws Exception{
		//System.out.println("queryPAram " + queryParams)
		if(queryParam.equals(""))
			return null;
		ArrayList<StudentPojo> arrStudent = new ArrayList<StudentPojo>();
		Connection connection = ConnectionManager.getConnection();
		String query = Constants.GET_ALL_STUDENTS;
		if(!queryParam.equals("")){
			query += " WHERE name LIKE ";
			query += " '%" + queryParam + "%'";
		}
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
}
