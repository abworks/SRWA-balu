<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.exam.module.pojos.StudentPojo"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student :: Examination Module</title>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/commons.css">
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/student.css">
</head>
<body>
	<div class="container">
		<div class="header" >
			<div class="logo">
			<img src="<%=request.getContextPath() %>/icons/logo.png" alt="logo">
			</div>
			<div class="nav">
				<table id="navtable" cellspacing="0" cellpadding="0">
					<tr>
						<td class="navbuttons" align="center"><button class="blockLink" onclick="location.href='<%=request.getContextPath()%>/jsp/index.jsp'">Home</button></td>
						<td class="navbuttons" align="center"><button class="blockLink" onclick="location.href='<%=request.getContextPath()%>/jsp/student.jsp'">Student</button></td>
						<td class="navbuttons" align="center"><button class="blockLink" onclick="location.href='<%=request.getContextPath()%>/jsp/exam.jsp'">Examinations</button></td>
						<td class="navbuttons" align="center"><button class="blockLink" onclick="location.href='<%=request.getContextPath()%>/jsp/leader.jsp'">Leader Board</button></td>
						<td class="navbuttons" align="center"><button class="blockLink" onclick="location.href='<%=request.getContextPath()%>/jsp/stats.jsp'">Statistics</button></td>
					</tr>
				</table>
			</div>
		<br><br>
		<hr>
		</div>
		<div class="content" align="left">
			<div id="contentButtons" align="center" style="margin-top: 100px;">
				<table cellpadding="0">
					<tr><td><button class="contentBut" type="submit" onclick="window.location.href = '<%=request.getContextPath() %>/jsp/student_getList.jsp'">Get List</button></td></tr>
					<tr><td><button class="contentBut" type="submit" onclick="window.location.href = '<%=request.getContextPath() %>/jsp/student_add.jsp'">Add</button></td></tr>
					<tr><td><button class="contentBut" type="submit" onclick="window.location.href = '<%=request.getContextPath() %>/jsp/student_modify.jsp'">Modify</button></td></tr>
					<tr><td><button class="contentBut" type="submit" onclick="window.location.href = '<%=request.getContextPath() %>/jsp/student_delete.jsp'">Delete</button></td></tr>
				</table>
			</div>
		</div>
		<div class="options" align="left">
		</div>
		<div class="info">
			<form target="_blank" action="<%= request.getContextPath() %>/GetListServ" method="post">
				Class<input type="text" name="class" value="ALL"><br>
				Section<input type="text" name="section" value="ALL"><br>
				Name<input type="text" name="studentName" value="ALL"><br>
				Roll No<input type="text" name="rollNo" value="ALL"><br>
				<select name="gender">
					<option value="ALL">--All--</option>
					<option value="MALE">MALE</option>
					<option value="FEMALE">FEMALE</option>
				</select><br>
				<select name="caste">
					<option value="ALL">--All--</option>
					<option value="OC">OC</option>
					<option value="OBC">OBC</option>
					<option value="SC">SC</option>
					<option value="ST">ST</option>
				</select><br>
				<button type="submit" onclick="">Search</button>
			</form>
		</div>
	</div>
</body>
</html>