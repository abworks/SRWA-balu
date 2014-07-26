package com.exam.module.utils;

public class Constants {
	public static String JDBC_DRIVER = "com.mysql.jdbc.Driver"; 
	public static String DB_URL = "jdbc:mysql://localhost:3306/student";
	public static String USER = "balu";
	public static String PASS = "balu";
	
	public static String GET_ALL_STUDENTS = "SELECT * FROM students";
	public static String GET_ALL_STUDENTS_SUG = "SELECT * FROM students WHERE name LIKE ";
	public static String INSERT_STUDENT = "INSERT INTO students VALUES(?,?,?,?,?,?)";
}
