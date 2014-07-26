<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.exam.module.pojos.StudentPojo"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Of Students</title>
</head>
<body>
	<%
				ArrayList<StudentPojo> listTotalStudents = (ArrayList<StudentPojo>)request.getSession().getAttribute("ListTotalStudents");
				if(listTotalStudents != null){
					for(StudentPojo pojo : listTotalStudents){
						out.print("ORG__" + pojo.getIntStudentClass() + "#" + pojo.getStrStudentSection() + "#" + pojo.getIntStudentRoll() + "#" + pojo.getStrStudentGender() + "#" + pojo.getStrStudentName() + "#" + pojo.getStrStudentCaste() + "<br>");
					}
				}
				request.getSession().setAttribute("ListTotalStudents", null);
	%>
	--------------------------------------------------------------------------------<br>
	<%
				ArrayList<StudentPojo> listTotalStudentsSug = (ArrayList<StudentPojo>)request.getSession().getAttribute("ListSugStudents");
				if(listTotalStudentsSug != null){
					for(StudentPojo pojo : listTotalStudentsSug){
						out.print("SUG__" + pojo.getIntStudentClass() + "#" + pojo.getStrStudentSection() + "#" + pojo.getIntStudentRoll() + "#" + pojo.getStrStudentGender() + "#" + pojo.getStrStudentName() + "#" + pojo.getStrStudentCaste() + "<br>");
					}
				}
				request.getSession().setAttribute("ListTotalStudentsSug", null);
	%>
</body>
</html>