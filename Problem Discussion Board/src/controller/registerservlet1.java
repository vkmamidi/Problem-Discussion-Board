package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class registerservlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PreparedStatement ps2;
    public registerservlet1() {
        super();

    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// text field information
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String contact=request.getParameter("contact");
		String address=request.getParameter("address");
		String gender=request.getParameter("gender");
		
		String state=request.getParameter("state");
		String city=request.getParameter("city");
		String loginid=request.getParameter("loginid");
		String passwrd=request.getParameter("password");
		String password1=request.getParameter("password1");
		String dob=request.getParameter("dob");
		String ques=request.getParameter("ques");
		String ans=request.getParameter("ans");
		String code=request.getParameter("code");
		HttpSession session=request.getSession();
		session.setAttribute("code", code);
		String captcha=(String)session.getAttribute("captcha");
		boolean status=Helper.checkcaptcha(captcha,code);
		//  database information
		String driver="com.ibm.db2.jcc.DB2Driver";
		String url="jdbc:db2://localhost:50000/question";
		String username="VKMAMIDI";
		String password="password";
		String sql="insert into rohit.register(fname,lname,contact,address,gender,state,city,emailid,password,dob,dept,ques,ans,status)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		String sql1="insert into rohit.login(Email,password,dept,ques,ans,status)values(?,?,?,?,?,?)";
		String sql2="select email from rohit.login where email=? and dept=?";
		if(fname.equals("")||lname.equals("")||contact.equals("")||address.equals("")||loginid.equals("")||passwrd.equals("")||password1.equals("")||dob.equals(""))
		{
String message="All Fields Are Mandatory";
request.setAttribute("msg", message);
getServletContext().getRequestDispatcher("/register.jsp").include(request, response);
		}
		else
		{
			try{
			Class.forName(driver);
			Connection con=DriverManager.getConnection(url,username,password);
			PreparedStatement ps2=con.prepareStatement(sql2);
			ps2.setString(1,loginid);
			ps2.setString(2, "Manager");
			ResultSet rs=ps2.executeQuery();
			if(rs.next())
			{
				session.setAttribute("fname",fname);
				   session.setAttribute("lname",lname);
				   session.setAttribute("contact",contact);
				   session.setAttribute("address",address);
				   session.setAttribute("state",state);
				   session.setAttribute("city",city);
				   session.setAttribute("dob",dob);
				String message="emailid exists!please enter another emailid";
				request.setAttribute("msg", message);
				getServletContext().getRequestDispatcher("/register.jsp").include(request, response);
			}
		

		else if(status)
		{
		if(passwrd.equals(password1))
           	                {
                                                try
			{
			Class.forName(driver);
			Connection conn=DriverManager.getConnection(url, username, password);
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, fname);
			ps.setString(2, lname);
			ps.setString(3, contact);
			ps.setString(4, address);
			ps.setString(5, gender);
			ps.setString(6, state);
			ps.setString(7, city);
			ps.setString(8, loginid);
			ps.setString(9, passwrd);
			ps.setString(10, dob);
			ps.setString(11, "Manager");
			ps.setString(12, ques);
			ps.setString(13, ans);
			ps.setString(14, "Not Approved");
			int i=ps.executeUpdate();
			PreparedStatement ps1=conn.prepareStatement(sql1);
			ps1.setString(1, loginid);
			ps1.setString(2, passwrd);
			ps1.setString(3, "Manager");
			ps1.setString(4, ques);
			ps1.setString(5, ans);
			ps1.setString(6, "Not Approved");
			
			int j=ps1.executeUpdate();
			if(i!=0&&j!=0)
			
				{
				String message="Registered Successfully";
				request.setAttribute("msg", message);
				getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
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
			   
			   
				String message="Please Try Again";
				request.setAttribute("msg", message);
				getServletContext().getRequestDispatcher("/register.jsp").include(request, response);
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
			   session.setAttribute("state",state);
			   session.setAttribute("city",city);
			   session.setAttribute("dob",dob);
			   
			String message="Please enter the same password";
			request.setAttribute("msg", message);
			getServletContext().getRequestDispatcher("/register.jsp").include(request, response);
		              }
			
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
			   String message="Please enter the correct captcha";
				request.setAttribute("msg", message);
				getServletContext().getRequestDispatcher("/register.jsp").include(request, response);
	
	
		             }
	}
	catch(Exception e)
	{
		e.printStackTrace();
		
	}
}
	}
}
