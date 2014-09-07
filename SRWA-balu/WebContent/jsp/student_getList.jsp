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
#container{
	width: 100%;
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
background-color: #F77272;
width: 100%;
position: fixed;
}
#listDiv{
	width: 100%;
	padding-top: 33px;
}
#mainTabDiv{
	width: 100%;
	padding: 0;
}
#sugTabDiv{
	width: 100%;
}
#mainTab{
	width: 100%;
	padding: 0;
}
#sugTab{
	width: 100%;
}
th{
	padding: 0;
}
.tabHeadingClass,.tabDataClass{
	padding: 0 10px;
	background-color: yellow;
}
.tabHeadingSection,.tabDataSection{
	padding: 0 10px;
}
.tabHeadingRoll,.tabDataRoll{
	padding: 0 10px;
}
.tabHeadingName,.tabDataName{
	padding: 0 70px;
}
.tabHeadingGender,.tabDataGender{
	padding: 0 20px;
}
.tabHeadingCaste,.tabDataCaste{
	padding: 0 20px;
}
</style>
</head>
<body>
	<div id="container">
	<div id="header">
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
														<option value="" disabled selected style="display: none;">gender</option>
														<option value="MALE">MALE</option>
														<option value="FEMALE">FEMALE</option>
													</select></td>
							<td><select class="select" name="caste">
													<option value="" disabled selected style="display: none;">caste</option>
													<option value="OC">OC</option>
													<option value="OBC">OBC</option>
													<option value="SC">SC</option>
													<option value="ST">ST</option>
													</select></td>
						</tr>
					</table>
				</div>
			<div id="buttonDiv" style="float: right; height: 35px;width: 35px;"><button type="submit" onclick="" class="buttons"><img src="<%= request.getContextPath() %>/icons/right-arrow.png" alt="Submit"></button></div>
			</div>
		</form>
	</div>
	<div id="listDiv">
		<div id='mainTabDiv'>
		<table id='mainTab'>
		<%
				ArrayList<StudentPojo> listTotalStudents = (ArrayList<StudentPojo>)request.getSession().getAttribute("ListTotalStudents");
				if(listTotalStudents != null){
					out.println("<tr id='headerRow' style='background-color:#F77272;width:100%;position:fixed;'><th class='tabHeadingClass'>Class</th><th class='tabHeadingSection'>Section</th><th class='tabHeadingRoll'>Roll#</th><th class='tabHeadingName'>Name</th><th class='tabHeadingGender'>Gender</th><th class='tabHeadingCaste'>Caste</th></tr>");
					out.println("<tr><td><br></td></tr>");
					for(StudentPojo pojo : listTotalStudents){
						out.println("<tr class='dataRow'>");
						out.println("<td class='tabDataClass'>" + pojo.getIntStudentClass() + "</td>");
						out.println("<td class='tabDataSection'>" + pojo.getStrStudentSection() + "</td>");
						out.println("<td class='tabDataRoll'>" + pojo.getIntStudentRoll() + "</td>");
						out.println("<td class='tabDataName'>" + pojo.getStrStudentName() + "</td>");
						out.println("<td class='tabDataGender'>" + pojo.getStrStudentGender() + "</td>");
						out.println("<td class='tabDataCaste'>" + pojo.getStrStudentCaste() + "</td>");
						out.println("</tr>");
					}
				}
				request.getSession().setAttribute("ListTotalStudents", null);
	%>
		</table>
		</div>
	<%
				ArrayList<StudentPojo> listTotalStudentsSug = (ArrayList<StudentPojo>)request.getSession().getAttribute("ListSugStudents");
				if(listTotalStudentsSug != null){
					out.println("<div id='sugTabDiv'>");
					out.println("<table id='sugTab'>");
					out.println("<tr><th>Class</th><th>Section</th><th>Roll#</th><th>Name</th><th>Gender</th><th>Caste</th></tr>");
					for(StudentPojo pojo : listTotalStudentsSug){
						out.println("<tr>");
						out.println("<td>" + pojo.getIntStudentClass() + "</td>");
						out.println("<td>" + pojo.getStrStudentSection() + "</td>");
						out.println("<td>" + pojo.getIntStudentRoll() + "</td>");
						out.println("<td>" + pojo.getStrStudentName() + "</td>");
						out.println("<td>" + pojo.getStrStudentGender() + "</td>");
						out.println("<td>" + pojo.getStrStudentCaste() + "</td>");
						out.println("</tr>");
					}
					out.println("</table>");
					out.println("</div>");
				}
				request.getSession().setAttribute("ListTotalStudentsSug", null);
	%>
	</div>
	</div>
</body>
</html>