package com.exam.module.daos;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.exam.module.utils.ConnectionManager;
import com.exam.module.utils.Constants;

public class AddStudentDao {
	public void addStudent(Object[] data) throws Exception{
		Connection connection = ConnectionManager.getConnection();
		PreparedStatement statement = connection.prepareStatement(Constants.INSERT_STUDENT);
		for(int i = 0 ; i < data.length ; i++){
			if(data[i] instanceof String)
				statement.setString(i+1, data[i].toString());
			else
				statement.setInt(i+1, Integer.parseInt(data[i].toString()));
		}
		statement.execute();
	}
}
