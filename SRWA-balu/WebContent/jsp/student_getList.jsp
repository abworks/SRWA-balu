<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.exam.module.pojos.StudentPojo"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student :: Examination Module</title>
<style type="text/css" title="commons">
body{
background-color:#F7F1F1;
}
.container{
	
}
#formTable{
	margin: auto;
	margin-top: 30px;
}
#buttonTable{
	margin: auto;
}
.header{
font-family: segoe ui;
color: #414040;
font-size: 18px;
text-align: center;
}
.requestForm{
background-color: #D2CDCD;
font-family: open sans;
color: #5C5B5B;
font-size: 12px;
width: 50%;
margin: auto;
}
.buttons{
font-family: open sans;
color: #FDFAFA;
font-size: 15px;
background-color: #134E13;
border: 0;
padding: 5px 20px;
cursor: pointer;
}
</style>
</head>
<body>
	<div class="container">
		<div class="header">Please provide the necessary details </div>
		<div class="requestForm">
			<form target="_blank" action="<%= request.getContextPath() %>/GetListServ" method="post">
				<table id="formTable">
					<tr><td>Class&nbsp;</td><td><input type="text" name="class" value="ALL"></td></tr>
					<tr><td>Section&nbsp;</td><td><input type="text" name="section" value="ALL"></td></tr>
					<tr><td>Name&nbsp;</td><td><input type="text" name="studentName" value="ALL"></td></tr>
					<tr><td>Roll No&nbsp;</td><td><input type="text" name="rollNo" value="ALL"><br></td></tr>
					<tr><td>Gender&nbsp;</td><td><select name="gender">
												<option value="ALL">--All--</option>
												<option value="MALE">MALE</option>
												<option value="FEMALE">FEMALE</option>
											</select></td></tr>
					<tr><td>Caste&nbsp;</td><td><select name="caste">
											<option value="ALL">--All--</option>
											<option value="OC">OC</option>
											<option value="OBC">OBC</option>
											<option value="SC">SC</option>
											<option value="ST">ST</option>
											</select></td></tr>
				</table>
				<table id="buttonTable">
					<tr><td><button type="submit" onclick="" class="buttons">Search</button></td></tr>
				</table>
			</form>
		</div>	
	</div>
</body>
</html>