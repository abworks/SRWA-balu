<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
width: 80%;
margin: auto;
padding: 30px;
margin-top: 20px;
height: 300px;
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
.browse{
	margin-top: 30px;
	float:right;
	width: 340px;
	height: 200px;
	background-color: #FBFAD6; 
	color: #575632;
	padding: 20px 20px;
	border-style: inset;
}
#selectFile{
	cursor: pointer;
}
.fileUpload {
	position: relative;
	overflow: hidden;
	margin: 10px;
}
.fileUpload input.upload {
	position: absolute;
	top: 0;
	right: 0;
	margin: 0;
	padding: 0;
	font-size: 20px;
	cursor: pointer;
	opacity: 0;
	filter: alpha(opacity=0);
}
</style>
</head>
<body>
	<div class="container">
		<div class="header">Please provide the necessary details </div>
		<hr>
		<div class="requestForm">
			<form action="<%= request.getContextPath() %>/AddStudent" method="post">
			<div class="manualAdd" style="width: 250px;">
				<table id="formTable">
					<tr><td>Class&nbsp;</td><td><input type="text" name="class" required></td></tr>
					<tr><td>Section&nbsp;</td><td><input type="text" name="section" required></td></tr>
					<tr><td>Name&nbsp;</td><td><input type="text" name="studentName" required></td></tr>
					<tr><td>Roll No&nbsp;</td><td><input type="text" name="rollNo" required><br></td></tr>
					<tr><td>Gender&nbsp;</td><td><select class="select" name="gender">
												<option value="ALL">--SELECT--</option>
												<option value="MALE">MALE</option>
												<option value="FEMALE">FEMALE</option>
											</select></td></tr>
					<tr><td>Caste&nbsp;</td><td><select class="select" name="caste">
											<option value="ALL">--SELECT--</option>
											<option value="OC">OC</option>
											<option value="OBC">OBC</option>
											<option value="SC">SC</option>
											<option value="ST">ST</option>
											</select></td></tr>
				</table>
			</div>
			<div class="buttonDiv" style="margin-top: -50px;margin-left: 260px; width:50px;height: 50px;"><button type="submit" onclick="" class="buttons"><img src="<%= request.getContextPath() %>/icons/arrow_right.png" alt="Submit"></button></div>
			</form>
			<div class="browse" style="margin-top: -260px;">
			If you want to upload all the student details using excel sheet, Please upload the file here<br>
			<hr>
			<br>
			<form action="<%= request.getContextPath() %>/AddStudent" method="post">
				<input type="file" style="border:none;width: 85px; padding: 0; cursor: pointer; margin-left: 30px; max-width: 300px;" onchange="this.style.width = '100%';" name="Upload" id="selectFile" accept="application/vnd.ms-excel,application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"/>
				<div id="browseSubmitButton" style="width: 60px; float: right; margin-right: 150px;margin-top: -20px;"><button type="submit" onclick="" class="buttons"><img src="<%= request.getContextPath() %>/icons/arrow_right.png" alt="Submit"></button></div>
			</form>
			</div>
		</div>	
	</div>
</body>
</html>