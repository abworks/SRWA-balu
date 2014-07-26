<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
					<tr><td><form method="post" action=""><button class="contentBut" type="submit">Get List</button></form></td></tr>
					<tr><td><form method="post" action=""><button class="contentBut" type="submit">Add</button></form></td></tr>
					<tr><td><form method="post" action=""><button class="contentBut" type="submit">Modify</button></form></td></tr>
					<tr><td><form method="post" action=""><button class="contentBut" type="submit">Delete</button></form></td></tr>
				</table>
			</div>
		</div>
		<div class="options" align="left">
		</div>
		<div class="info">
		</div>
	</div>
</body>
</html>