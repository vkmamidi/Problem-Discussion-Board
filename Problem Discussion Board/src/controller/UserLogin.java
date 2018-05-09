package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.QConnect;
import model.Login;


public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public UserLogin() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String dept=request.getParameter("dept");
		String sql="";
		Login obj=new Login();
		obj.setUsername(username);
		obj.setPassword(password);
		if(dept.equals("User"))
		{
		 sql="select * from rohit.login where email=? and password=? and dept='User'";
		 boolean status=QConnect.UserValidation(obj, sql);
			if(status)
			{
				HttpSession session=request.getSession();
				session.setAttribute("username",username);
				response.sendRedirect("ask.jsp");
			}
			else
			{
				request.setAttribute("msg", "Username and Password is incorrect");
				getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
			}

		}
		else if(dept.equals("Admin"))
		{
			sql="select * from rohit.login where email=? and password=? and dept='Admin'";
			boolean status=QConnect.UserValidation(obj, sql);
			if(status)
			{
				HttpSession session=request.getSession();
				session.setAttribute("username",username);
				response.sendRedirect("profile1.jsp");
			}
			else
			{
				request.setAttribute("msg", "Username and Password is incorrect");
				getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
			}

		}
		else if(dept.equals("Manager"))
		{
			sql="select * from rohit.login where email=? and password=? and status='Approved'and dept='Manager'";
			boolean status=QConnect.UserValidation(obj, sql);
			if(status)
			{
				HttpSession session=request.getSession();
				session.setAttribute("username",username);
				response.sendRedirect("profile2.jsp");
			}
			else
			{
				request.setAttribute("msg", "Username and Password is incorrect");
				getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
			}
			
		}
			
				
	
	
	}

}
