package controller;

import helper.PasswordGenerator;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mail.PasswordMail;

/**
 * Servlet implementation class ForgotServlet
 */
public class ForgotServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgotServlet() {
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
		String userid=request.getParameter("userid");
		String question=request.getParameter("ques");
		String answer=request.getParameter("ans");
		String dept=request.getParameter("ques");
		String to=userid;
		System.out.printf("%tc",new Date());
		long start=System.currentTimeMillis();
		try
		{
			Thread.sleep(30*60);
			}
		catch(InterruptedException e)
		{
			e.printStackTrace();
		}
		System.out.println(new Date());
		long end=System.currentTimeMillis();
		long diff=end-start;
		if(diff>=1440000)
		{
			getServletContext().getRequestDispatcher("/timeout.jsp").forward(request, response);
		}
		Connection con=null;
		try {
			Class.forName("com.ibm.db2.jcc.DB2Driver");
		
		con=DriverManager.getConnection("jdbc:db2://localhost:50000/question", "VKMAMIDI", "password");
		if(dept.equals("User"))
		{
		String sql="select email,password,ques,ans from rohit.login where email=? and ques=? and ans=? and dept='User'";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, userid);
		ps.setString(2, question);
		ps.setString(3, answer);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			PasswordGenerator pg=new PasswordGenerator();
			PasswordMail mail=new PasswordMail();
		String generatepassword=pg.GeneratePassword();
		boolean status=mail.sendMail(to,generatepassword);
		if(status)
		{
			String sql1="update rohit.login set password=(?)where email=? and dept='User'";
			PreparedStatement ps1=con.prepareStatement(sql1);
			ps1.setString(1, generatepassword);
			ps1.setString(2, userid);
			int i=ps1.executeUpdate();
			if(i==0)
			{
				getServletContext().getRequestDispatcher("/siteupdate.jsp").forward(request, response);
			}
			else
			{
				HttpSession session =request.getSession();
				session.setAttribute("loginid", userid);
				session.setAttribute("password", generatepassword);
				session.setAttribute("dept", dept);
				getServletContext().getRequestDispatcher("/out.jsp").forward(request, response);
			}
		}
		else
		{
			String message="Question or Answer are incorrect. Please enter valid thing";
			request.setAttribute("msg", message);
			getServletContext().getRequestDispatcher("/forgotpassword.jsp").include(request, response);
		}
		
		}
		else
		{
			String message="Please try Again";
			request.setAttribute("msg", message);
			getServletContext().getRequestDispatcher("/forgotpassword.jsp").include(request, response);
		}
		}
		else if(dept.equals("Manager"))
		{
			String sql="select email,password,ques,ans from rohit.login where email=? and ques=? and ans=? and dept='Manager' and stautus='Approved'";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, userid);
			ps.setString(2, question);
			ps.setString(3, answer);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				PasswordGenerator pg=new PasswordGenerator();
				PasswordMail mail=new PasswordMail();
			String generatepassword=pg.GeneratePassword();
			boolean status=mail.sendMail(to,generatepassword);
			if(status)
			{
				String sql1="update rohit.login set password=(?)where email=? and dept='Manager'";
				PreparedStatement ps1=con.prepareStatement(sql1);
				ps1.setString(1, generatepassword);
				ps1.setString(2, userid);
				int i=ps1.executeUpdate();
				if(i==0)
				{
					getServletContext().getRequestDispatcher("/siteupdate.jsp").forward(request, response);
				}
				else
				{
					HttpSession session =request.getSession();
					session.setAttribute("loginid", userid);
					session.setAttribute("password", generatepassword);
					session.setAttribute("dept", dept);
					getServletContext().getRequestDispatcher("/out.jsp").forward(request, response);
				}
			}
			else
			{
				String message="Question or Answer are incorrect. Please enter valid thing";
				request.setAttribute("msg", message);
				getServletContext().getRequestDispatcher("/forgotpassword.jsp").include(request, response);
			}
			
			}
			else
			{
				String message="Please try Again";
				request.setAttribute("msg", message);
				getServletContext().getRequestDispatcher("/forgotpassword.jsp").include(request, response);
			}	
		}
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		}

}



