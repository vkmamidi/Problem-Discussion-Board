package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UpdateServlet
 */
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
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
		String fname=request.getParameter("fname");	
		String lname=request.getParameter("lname");	
		String contact=request.getParameter("contact");	
		String address=request.getParameter("address");	
		String gender=request.getParameter("gender");	
		String state=request.getParameter("state");	
		String city=request.getParameter("city");	
		String emailid=request.getParameter("emailid");	
		String passwrd=request.getParameter("passwrd");	
		String password1=request.getParameter("password1");	
		String dob=request.getParameter("dob");
		String ques=request.getParameter("ques");
		String ans=request.getParameter("ans");
		String driver="com.ibm.db2.jcc.DB2Driver";
		String url="jdbc:db2://localhost:50000/question";
		String username="VKMAMIDI";
		String password="password";
		String sql="update rohit.register set(fname,lname,contact,address,state,city,password,dob,ques,ans)=(?,?,?,?,?,?,?,?,?,?)where emailid=?";
		String sql1="update rohit.login set(password,ques,ans)=(?,?,?)where email=?";
		HttpSession session=request.getSession();
		if(fname.equals("")||lname.equals("")||contact.equals("")||address.equals("")||passwrd.equals("")||password1.equals("")||dob.equals(""))
		{
			String message="all fields are mandatory";
			request.setAttribute("msg",message);
			getServletContext().getRequestDispatcher("/update.jsp").include(request, response);
		}
		else if(passwrd.equals(password1))
		{
			try
			{
				Class.forName(driver);
				Connection conn=DriverManager.getConnection(url,username,password);
				PreparedStatement ps=conn.prepareStatement(sql);
				ps.setString(1,fname);
				ps.setString(2,lname);
				ps.setString(3,contact);
				ps.setString(4,address);
				ps.setString(5,state);
				ps.setString(6,city);
				ps.setString(7,passwrd);
				ps.setString(8,dob);
				ps.setString(9, ques);
				ps.setString(10, ans);
				ps.setString(11, emailid);
				int i=ps.executeUpdate();
			PreparedStatement ps1=conn.prepareStatement(sql1);
		        ps1.setString(1, passwrd);
		        ps1.setString(2, ques);
		        ps1.setString(3, ans);
		        ps1.setString(4, emailid);
		        int j=ps1.executeUpdate();
		        if(i!=0&&j!=0)
		        {
		        
		        	String message="updated successfully";
		        	request.setAttribute("msg",message);
		        getServletContext().getRequestDispatcher("/ask.jsp").include(request, response);
		        	}
		        else
		        {
		        	session.setAttribute("fname",fname);
		        	session.setAttribute("lname",lname);
		        	session.setAttribute("contact",contact);
		        	session.setAttribute("address",address);
		        	session.setAttribute("state",state);
		        	session.setAttribute("city",city);
		        	session.setAttribute("dob",dob);
		        	String message="please try again";
		        	request.setAttribute("msg",message);
		        	 getServletContext().getRequestDispatcher("/update.jsp").include(request, response);
		        }
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
		else
		{
			session.setAttribute("fname",fname);
			session.setAttribute("lname",lname);
			session.setAttribute("contact",contact);
			session.setAttribute("address",address);
			session.setAttribute("stat",state);
			session.setAttribute("city",city);
			session.setAttribute("dob",dob);
			String message="please enter same password";
			request.setAttribute("msg",message);
	        getServletContext().getRequestDispatcher("/update.jsp").include(request, response);
		}
		}
	}


