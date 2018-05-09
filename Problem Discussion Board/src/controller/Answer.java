package controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.QConnect;
import model.Ans;


public class Answer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Answer() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession();
		Date d=new Date();
		String qid=request.getParameter("qid");
		String username=(String)session.getAttribute("username");
		String answer=request.getParameter("answer");
		String date=d.toString();
		String sql="insert into answer(qid,username,answer,date)values(?,?,?,?)";
		String sql1="select * from question where question=?";
		String sql2="update question set totans=? where question=?";
		System.out.println("[CHECK]"+qid+"|"+username+"|"+answer+"|"+date);
		Ans obj=new Ans();
		obj.setQid(qid);
		obj.setUsername(username);
		obj.setAnswer(answer);
		obj.setDate(date);
		boolean status=QConnect.insertAnswer(obj, sql,sql1,sql2,qid);
		if(status)
		{
			response.sendRedirect("Answer.jsp?qid="+qid);
		}
		else
		{
			System.out.println("SOMETHING IS WRONG");
		}
	}

}
