<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/index.css" type="text/css" />
</head>
<body style="background-color:#FAF3FE">
<div id="container">
	<div class="cHeader" id="iHeader">
		<ul id="mainList">
        	<li class="mainListItem"><a href="#" class="mainLinkName">Home</a></li>
            <li class="mainListItem">Students
            	<ul class="subList">
                	<li class="subListItem"><a href="#" class="mainLinkName">Get List</a></li>
                    <li class="subListItem"><a href="#" class="mainLinkName">Add Students</a></li>
                    <li class="subListItem"><a href="#" class="mainLinkName">Modify Students</a></li>
                    <li class="subListItem"><a href="#" class="mainLinkName">Delete Students</a></li>
                </ul>
            </li>
            <li class="mainListItem">Examinations
            	<ul class="subList">
                	<li class="subListItem"><a href="#" class="mainLinkName">Get List</a></li>
                    <li class="subListItem"><a href="#" class="mainLinkName">Add New Exam</a></li>
                    <li class="subListItem"><a href="#" class="mainLinkName">Modify Exam</a></li>
                    <li class="subListItem"><a href="#" class="mainLinkName">Delete Exam</a></li>
                </ul>
            </li>
            <li class="mainListItem">Leader Board
            	<ul class="subList">
                	<li class="subListItem"><a href="#" class="mainLinkName">Get</a></li>
                    <li class="subListItem"><a href="#" class="mainLinkName">Add</a></li>
                    <li class="subListItem"><a href="#" class="mainLinkName">Modify</a></li>
                    <li class="subListItem"><a href="#" class="mainLinkName">Delete</a></li>
                </ul>
            </li>
            <li class="mainListItem">Statistics
            	<ul class="subList">
                	<li class="subListItem"><a href="#" class="mainLinkName">Get</a></li>
                    <li class="subListItem"><a href="#" class="mainLinkName">Add</a></li>
                    <li class="subListItem"><a href="#" class="mainLinkName">Modify</a></li>
                    <li class="subListItem"><a href="#" class="mainLinkName">Delete</a></li>
                </ul>
            </li>
        </ul>
 	</div>
	<div class="cBody" id="iBody"></div>
	<div class="cFooter" id="iFooter"></div>
</div>
</body>
</html>