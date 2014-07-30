<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.exam.module.pojos.StudentPojo"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Of Students</title>
<style type="text/css">
body{
background-color:#F7F1F1;
margin: 0;
}
#query{
	background-color: #A09EAB;
	width: 99.5%;
	height: 60px;
	border: 2px solid #686770;
	/*border-bottom: 2px solid #686770;*/
	margin: auto;
}
.buttons{
	background: none;
	background-color: transparent;
	border-style: none;
	cursor: pointer;
	width: 70px;
	height: 60px;
	padding: 2px;
}
.buttons:HOVER {
	width: 68px;
	height: 58px;
	padding: 0;
}
#formTableDiv{
 width: 90%;
 float: left;
}
#buttonDiv{
	float: right;
	width: 10%;
	margin-top: 0;
}
</style>
</head>
<body>
	<div id="query">
		<form action="<%= request.getContextPath() %>/GetListServ" method="post">
		<div id="formTableDiv">
			<table>
				<tr>
					<td>Class</td>
					<td>Section</td>
					<td>Name</td>
					<td>Roll No</td>
					<td>Gender</td>
					<td>Caste</td>
				</tr>
				<tr>
					<td><input type="text" name="class" value="ALL"></td>
					<td><input type="text" name="section" value="ALL"></td>
					<td><input type="text" name="studentName" value="ALL"></td>
					<td><input type="text" name="rollNo" value="ALL"></td>
					<td><select class="select" name="gender">
												<option value="ALL">--All--</option>
												<option value="MALE">MALE</option>
												<option value="FEMALE">FEMALE</option>
											</select></td>
					<td><select class="select" name="caste">
											<option value="ALL">--All--</option>
											<option value="OC">OC</option>
											<option value="OBC">OBC</option>
											<option value="SC">SC</option>
											<option value="ST">ST</option>
											</select></td>
				</tr>
			</table>
			</div>
			<div id="buttonDiv"><button type="submit" onclick="" class="buttons"><img src="<%= request.getContextPath() %>/icons/arrow_right-ring.png" alt="Submit"></button></div>
		</form>
	</div>
	<div id="listDiv">
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
	</div>
</body>
</html>