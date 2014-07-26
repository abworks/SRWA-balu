package com.exam.module.utils;

import java.sql.*;

public class ConnectionManager {

   static Connection con;
         
   public static Connection getConnection(){  
      try
      {
    	 Class.forName(Constants.JDBC_DRIVER);
         try
         {   //System.out.println("Creating connection..");        	
            con = DriverManager.getConnection(Constants.DB_URL,Constants.USER,Constants.PASS); 
            //System.out.println("connection created..");
         }
         
         catch (SQLException ex)
         {
            ex.printStackTrace();
         }
      }

      catch(ClassNotFoundException e)
      {
         //System.out.println(e);
      }

      return con;
   }
   public static void closeConnections(Connection connection,Statement statement, ResultSet resultSet) throws SQLException{
		connection.close();
		statement.close();
		resultSet.close();
	}
   public static void closeConnections(Connection connection,PreparedStatement statement, ResultSet resultSet) throws SQLException{
		connection.close();
		statement.close();
		resultSet.close();
	}
   public static void closeConnections (Connection connection,Statement statement ) throws SQLException{
	   	connection.close();
		statement.close();
   }
   public static void closeConnections (Connection connection,PreparedStatement statement ) throws SQLException{
	   	connection.close();
		statement.close();
  }
   public static void closeConnections(Connection connection,PreparedStatement statement1, Statement statement2, ResultSet resultSet) throws SQLException{
		connection.close();
		statement1.close();
		statement2.close();
		resultSet.close();
	}
}

