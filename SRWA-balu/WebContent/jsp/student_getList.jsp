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
font-family: Century Gothic;
font-weight:bold;
color: #414040;
font-size: 20px;
text-align: center;
margin-top: 20px;
}
.requestForm{
background-color: #6D8F95;
font-family: open sans;
color: #D6E1E2;
font-size: 15px;
width: 50%;
margin: auto;
padding: 30px;
margin-top: 20px;
}
.buttons{
font-family: open sans;
color: #FDFAFA;
font-size: 15px;
background-color: #276A2D;
border: 0;
padding: 5px 20px;
cursor: pointer;
}
.buttons:HOVER{
font-family: open sans;
color: #18581E;
font-size: 15px;
background-color: #EFE81A;
border: 0;
padding: 5px 20px;
cursor: pointer;
}
.select{
	width: 100%;
}
input,.select{
    border: 2px solid white; 
    -webkit-box-shadow: 
      inset 0 0 3px  rgba(0,0,0,0.1),
            0 0 6px rgba(0,0,0,0.1); 
    -moz-box-shadow: 
      inset 0 0 3px  rgba(0,0,0,0.1),
            0 0 6px rgba(0,0,0,0.1); 
    box-shadow: 
      inset 0 0 3px  rgba(0,0,0,0.1),
            0 0 6px rgba(0,0,0,0.1); 
    padding: 5px;
    background: rgba(255,255,255,0.5);
    margin: 0 0 4px 0;
}
</style>
</head>
<body>
	<div class="container">
		<div class="header">Please provide the necessary details </div>
		<hr>
		<div class="requestForm">
			<form action="<%= request.getContextPath() %>/GetListServ" method="post">
				<table id="formTable">
					<tr><td>Class&nbsp;</td><td><input type="text" name="class" value="ALL"></td></tr>
					<tr><td>Section&nbsp;</td><td><input type="text" name="section" value="ALL"></td></tr>
					<tr><td>Name&nbsp;</td><td><input type="text" name="studentName" value="ALL"></td></tr>
					<tr><td>Roll No&nbsp;</td><td><input type="text" name="rollNo" value="ALL"><br></td></tr>
					<tr><td>Gender&nbsp;</td><td><select class="select" name="gender">
												<option value="ALL">--All--</option>
												<option value="MALE">MALE</option>
												<option value="FEMALE">FEMALE</option>
											</select></td></tr>
					<tr><td>Caste&nbsp;</td><td><select class="select" name="caste">
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