package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import dao.QConnect;
import model.Model;

/**
 * Servlet implementation class ResetServlet
 */
public class ResetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ResetServlet() {
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
		String password=request.getParameter("passwrd");
		String password1=request.getParameter("passwrd1");
		String password2=request.getParameter("passwrd2");
		String userid=request.getParameter("userid");
	
		String sql="update login set password=(?)where email=? and dept='User'";
		String sql1="update login set password=(?)where email=? and dept='Manager'";
		HttpSession session=request.getSession();
	String oldPassword=(String)session.getAttribute("password");
	String dept=(String)session.getAttribute("dept");
	if(dept.equals("User"))
	{
	if(oldPassword.equals(password))
	{
		if(password1.equals(password2))
		{
			Model m=new Model();
			m.setUserid(userid);
			m.setPassword(password1);
		boolean status=QConnect.reset(m,sql);
		if(status)
		{
			getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
		}
		else{
			String message="Please Try Again";
					request.setAttribute("msg", message);
			getServletContext().getRequestDispatcher("/resetpassword.jsp").include(request, response);
		}
		}
		else
		{
			String message="Please Enter the Same Password";
			request.setAttribute("msg", message);
	getServletContext().getRequestDispatcher("/resetpassword.jsp").include(request, response);

		}
	}
	else
	{
		String message="Old Password is in correct please enter the same";
		request.setAttribute("msg", message);
getServletContext().getRequestDispatcher("/resetpassword.jsp").include(request, response);
	}
	}
	else if(dept.equals("Manager"))
	{
		if(oldPassword.equals(password))
		{
			if(password1.equals(password2))
			{
				Model m=new Model();
				m.setUserid(userid);
				m.setPassword(password1);
			boolean status=QConnect.reset(m,sql1);
			if(status)
			{
				getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
			}
			else{
				String message="Please Try Again";
						request.setAttribute("msg", message);
				getServletContext().getRequestDispatcher("/resetpassword.jsp").include(request, response);
			}
			}
			else
			{
				String message="Please Enter the Same Password";
				request.setAttribute("msg", message);
		getServletContext().getRequestDispatcher("/resetpassword.jsp").include(request, response);

			}
		}
		else
		{
			String message="Old Password is in correct please enter the same";
			request.setAttribute("msg", message);
	getServletContext().getRequestDispatcher("/resetpassword.jsp").include(request, response);
		}
		
	}
	}
	}






