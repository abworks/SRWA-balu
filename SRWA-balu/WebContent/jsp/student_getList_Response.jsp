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
.buttons{
	background: none;
	background-color: transparent;
	border-style: none;
	cursor: pointer;
	padding: 0;
	border: 0;
}
.buttons:HOVER {
	padding: 0.5px;
}
#header{
width: 100%;
height: 33px;
}
#query{
	background-color: #F77272;
	width: 100%;
	height: 33px;
	margin: auto;
}
#optDiv{
  display: none;
  background-color: yellow;
  opacity: 1;
}
#header:hover #optDiv{
  display: block;
  opacity: 1;
}
</style>
</head>
<body>
	<div id="header">
		<div id="query">
		<form action="<%= request.getContextPath() %>/GetListServ" method="post">
			<div id="formTableDiv">
				<div id="actTable" style="font-family: segoe ui;text-align: center; float: left;">
					<table style="">
						<tr>
							<td><input type="text" name="class" placeholder="class"></td>
							<td><input type="text" name="section" placeholder="section"></td>
							<td><input type="text" name="studentName" placeholder="student name"></td>
							<td><input type="text" name="rollNo" placeholder="roll no"></td>
							<td><select class="select" name="gender">
														<option value="MALE">MALE</option>
														<option value="FEMALE">FEMALE</option>
													</select></td>
							<td><select class="select" name="caste">
													<option value="OC">OC</option>
													<option value="OBC">OBC</option>
													<option value="SC">SC</option>
													<option value="ST">ST</option>
													</select></td>
						</tr>
					</table>
				</div>
			<div id="buttonDiv" style="float: right;"><button type="submit" onclick="" class="buttons"><img src="<%= request.getContextPath() %>/icons/right-arrow.png" alt="Submit"></button></div>
			</div>
		</form>
		</div>
		<!-- <div id="optDiv">
						<table style="font-family: segoe ui;text-align: center;">
						<tr><td>Class</td><td>Section</td><td>Name</td><td>Roll No</td><td>Gender</td><td>Caste</td></tr>
						</table>
		</div> -->
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