package dao;
import java.sql.*;

import model.*;


public class QConnect {
	
	public static Connection con=null;
	public static String url="jdbc:db2://localhost:50000/question";
	public static String username="VKMAMIDI";
	public static String  password="password";
	public static int count=0;
	
	
	 static 
	{
		 count++;
		try
		{
		Class.forName("com.ibm.db2.jcc.DB2Driver");
		con=DriverManager.getConnection(url,username,password);
		System.out.println("Successfully connected with QNA"+"["+count);
		}
		catch(Exception e)
		{
			System.out.println("hi"+e.toString());
		}
	
	}

	public static boolean register(Register m,String sql)
	{
		
		boolean status=false;
		try
		{
			
		PreparedStatement ps=con.prepareStatement(sql);
		
		ps.setString(1,m.getUsername());
		ps.setString(2,m.getPassword());
		ps.setString(3,m.getEmail());
		ps.setString(4,m.getAge());
		ps.setString(5,m.getCity());
		ps.setString(6,m.getDob());
		
		int i=ps.executeUpdate();
		if(i!=0)
		{
			status=true;
			
		}
		else
		{
			status=false;
		}
		
		}
		catch(Exception e)
		{
			System.out.println("hello"+e);
		}
		return status;
	}

public static boolean UserValidation(Login m,String sql)
{
	boolean status=false;
	try
	{
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1,m.getUsername());
	ps.setString(2,m.getPassword());
	
	ResultSet rs=ps.executeQuery();
		
	   if(rs.next())
		{
		   status=true;
	   }
	   else
	   {
		   status=false;
	   }
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
	return status;
}


public static boolean insertQuestion(Ask m,String sql)
{
	boolean status=false;
	try
	{
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1,m.getUsername());
	ps.setString(2,m.getQuestion());
	ps.setString(3,m.getDetails());
	ps.setString(4,m.getDate());
System.out.println(m.getUsername()+m.getQuestion()+m.getDetails()+m.getDate());
	int i=ps.executeUpdate();
	if(i!=0)
	{
		status=true;
		
	}
	else
	{
		status=false;
	}
	
	}
	catch(Exception e)
	{
		System.out.println(e.toString());
	}
	return status;
}

public static ResultSet allQuestion(String sql)
{
	ResultSet rs=null;
	try
	{
	PreparedStatement ps=con.prepareStatement(sql);
	rs=ps.executeQuery();
	
	}
	catch(Exception e)
	{
		
	}
	return rs;
}

public static ResultSet myQuestion(String sql,String username)
{
	ResultSet rs=null;
	try
	{
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1,username);
	rs=ps.executeQuery();
	
	}
	catch(Exception e)
	{
		System.out.println(e.toString());	
	}
	return rs;
}



public static ResultSet AnsQuestion(String sql,String qid)
{
	ResultSet rs=null;
	try
	{
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1,qid);
	rs=ps.executeQuery();
	
	}
	catch(Exception e)
	{
		System.out.println(e.toString());
	}
	return rs;
}
public static boolean insertAnswer(Ans m,String sql,String sql1,String sql2,String qid)
{
	boolean status=false;
	try
	{
	PreparedStatement ps=con.prepareStatement(sql);
	PreparedStatement ps1=con.prepareStatement(sql1);
	PreparedStatement ps2=con.prepareStatement(sql2);
	
	ps.setString(1,m.getQid());
	ps.setString(2,m.getUsername());
	ps.setString(3,m.getAnswer());
	ps.setString(4,m.getDate());
	int i=ps.executeUpdate();
	
	
	ps1.setString(1,qid);
	ResultSet rs=ps1.executeQuery();
	int totalans=0;
	while(rs.next())
	{
		totalans=Integer.parseInt(rs.getString(5));
	}
	totalans=totalans+1;
	String finaltot=String.valueOf(totalans);
	
	ps2.setString(1,finaltot);
	ps2.setString(2,(m.getQid()));
	i=ps2.executeUpdate();
	
	
	if(i!=0)
	{
		status=true;
		
	}
	else
	{
		status=false;
	}
	
	}
	catch(Exception e)
	{
	  e.printStackTrace();
	}
	return status;
}
public static boolean reset(Model m, String sql) {
	boolean status = false;
	try
	{
	
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, m.getPassword());
		ps.setString(2, m.getUserid());
		int i=ps.executeUpdate();
		if(i!=0)
		{
			status=true;
		}
		else
		{
			status=false;
		}
	}
	catch(SQLException e)
	{
		e.printStackTrace();	
		
	}
	return status;
}
}
