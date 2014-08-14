package com.exam.module.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.module.daos.GetStudentListDao;
import com.exam.module.pojos.StudentPojo;
import com.exam.module.services.GetListStudentsService;

@WebServlet("/GetListServ")
public class GetListServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public GetListServ() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<String[]> queryParams = new ArrayList<String[]>();
		/*System.out.println("class"+ request.getParameter("class"));
		System.out.println("section"+ request.getParameter("section"));
		System.out.println("name"+ request.getParameter("studentName"));
		System.out.println("roll"+ request.getParameter("rollNo"));
		System.out.println("gender "+ request.getParameter("gender"));
		System.out.println("caste "+ request.getParameter("caste"));
		*/
		//System.out.println("Class of this "+ request.getParameter("class").getClass());
		queryParams.add(new String[]{"class",request.getParameter("class")});
		queryParams.add(new String[]{"section",request.getParameter("section")});
		queryParams.add(new String[]{"roll",request.getParameter("rollNo")});
		queryParams.add(new String[]{"name",request.getParameter("studentName")});
		queryParams.add(new String[]{"gender",request.getParameter("gender")});
		queryParams.add(new String[]{"caste",request.getParameter("caste")});
		
		String sugName = request.getParameter("studentName");
		try {
			ArrayList<StudentPojo> arrStudent = new GetStudentListDao().getStudentList(queryParams);
			ArrayList<StudentPojo> arrSugStudent = new GetStudentListDao().getStudentList(sugName);
			arrSugStudent = new GetListStudentsService().listStudentService(arrStudent, arrSugStudent);
			request.getSession().setAttribute("ListTotalStudents", arrStudent);
			request.getSession().setAttribute("ListSugStudents", arrSugStudent);
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("jsp/student_getList_Response.jsp").forward(request, response);
	}

}
