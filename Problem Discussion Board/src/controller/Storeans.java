package controller;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
import java.util.*;
import java.util.Date;
/**
 * Servlet implementation class Storeans
 */
public class Storeans extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Storeans() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		if(session.getAttribute("username")!=null)
		{
		try
		{
			String ques=(String)session.getAttribute("ques");
			System.out.println(ques);
		Date d=new Date();
		String date=d.toString();
			String email=(String)session.getAttribute("username");
			String ans=request.getParameter("ans");
		Class.forName("com.ibm.db2.jcc.DB2Driver");
		Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/question", "VKMAMIDI", "password");
		PreparedStatement ps=con.prepareStatement("select * from rohit.question where question=?");
		ps.setString(1, ques);
		System.out.println("hello");
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
		String email1=rs.getString(1);
		PreparedStatement ps1=con.prepareStatement("insert into rohit.answer(emailid,emailid1,question,answer,date)values(?,?,?,?,?)");
		ps1.setString(1, email);
		ps1.setString(2, email1);
		ps1.setString(3, ques);
		ps1.setString(4, ans);
		ps1.setString(5, date);
		int i=ps1.executeUpdate();
		if(i!=0)
		{
			getServletContext().getRequestDispatcher("/ask.jsp").forward(request, response);
		}
		else
		{
			response.getWriter().write("Please try Again");
		}
		}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		}
		else
		{
			response.sendRedirect("login.jsp");
		}

	}

}
