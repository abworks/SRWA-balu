<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/index.css" type="text/css" />
</head>
<body style="background-image:  url('<%=request.getContextPath()%>/backgrounds/SRWM-bi_ps.jpg');">
<div id="container">
	<div class="cHeader" id="iHeader">
		<ul id="mainList">
        	<li class="mainListItem">home
	        	<ul>
	        		<li class="subListItem"><a href="#" class="mainLinkName"><div class="linkDivHome">Home</div></a></li>
	        		<li class="subListItem"><a href="#" class="mainLinkName"><div class="linkDivHome">School</div></a></li>
	        	</ul>
        	</li>
            <li class="mainListItem">Students
            	<ul class="subList">
                	<li class="subListItem"><a target="bodyFrame" href="<%=request.getContextPath() %>/jsp/student_getList.jsp" class="mainLinkName"><div class="linkDivStudent">Search</div></a></li>
                    <li class="subListItem"><a target="bodyFrame" href="<%=request.getContextPath() %>/jsp/student_add.jsp" class="mainLinkName"><div class="linkDivStudent">Add</div></a></li>
                    <li class="subListItem"><a target="bodyFrame" href="<%=request.getContextPath() %>/jsp/student_modify.jsp" class="mainLinkName"><div class="linkDivStudent">Update</div></a></li>
                    <li class="subListItem"><a target="bodyFrame" href="<%=request.getContextPath() %>/jsp/student_delete.jsp" class="mainLinkName"><div class="linkDivStudent">Remove</div></a></li>
                </ul>
            </li>
            <li class="mainListItem">Examinations
            	<ul class="subList">
                	<li class="subListItem"><a href="#" class="mainLinkName"><div class="linkDivExam">Search</div></a></li>
                    <li class="subListItem"><a href="#" class="mainLinkName"><div class="linkDivExam">Add</div></a></li>
                    <li class="subListItem"><a href="#" class="mainLinkName"><div class="linkDivExam">Modify</div></a></li>
                    <li class="subListItem"><a href="#" class="mainLinkName"><div class="linkDivExam">Delete</div></a></li>
                	<li class="subListItem"><a href="#" class="mainLinkName"><div class="linkDivExam">Email</div></a></li>
                </ul>
            </li>
            <li class="mainListItem">Leader Board
            	<ul class="subList">
                	<li class="subListItem"><a href="#" class="mainLinkName"><div class="linkDivLeader">Top</div></a></li>
                    <!-- <li class="subListItem"><a href="#" class="mainLinkName"><div class="linkDivLeader">Add</div></a></li>
                    <li class="subListItem"><a href="#" class="mainLinkName"><div class="linkDivLeader">Modify</div></a></li>
                    <li class="subListItem"><a href="#" class="mainLinkName"><div class="linkDivLeader">Delete</div></a></li> -->
                </ul>
            </li>
            <li class="mainListItem">Statistics
            	<ul class="subList">
                	<li class="subListItem"><a href="#" class="mainLinkName"><div class="linkDivStat">Examination</div></a></li>
                    <li class="subListItem"><a href="#" class="mainLinkName"><div class="linkDivStat">Student</div></a></li>
                    <!-- <li class="subListItem"><a href="#" class="mainLinkName"><div class="linkDivStat">Modify</div></a></li>
                    <li class="subListItem"><a href="#" class="mainLinkName"><div class="linkDivStat">Delete</div></a></li> -->
                </ul>
            </li>
        </ul>
 	</div>
	<div class="cBody" id="iBody">
		<iframe width="940px" name="bodyFrame" style="min-height: 79%;margin-top: 50px;" frameBorder="0"></iframe>
	</div>
	<div class="cFooter" id="iFooter">
	</div>
</div>
</body>
</html>