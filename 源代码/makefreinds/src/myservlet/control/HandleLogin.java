package myservlet.control;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mybean.data.Login;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
public class HandleLogin extends HttpServlet {
        public void init(ServletConfig config) throws ServletException
        {
        	super.init(config);
        	try{
        		Class.forName("com.mysql.jdbc.Driver");
        		
        	}
        	catch(Exception e){}
        }
	public String handleString(String s)
	{
		try{
			byte bb[]=s.getBytes("iso-8859-1");
			s=new String(bb);
		}catch(Exception ee){}
		
		return s;
		
	}
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//String i="t";
       Connection con;
       Statement sql;
       Login loginBean=null;
	   String backNews="";
	   HttpSession session=request.getSession(true);
	   try{
		   loginBean=(Login)session.getAttribute("login");
		   if(loginBean==null)
		   {
			   loginBean=new Login();
			   session.setAttribute("login",loginBean);
			   
		   }
	   }catch(Exception ee){
		   loginBean=new Login();
		   session.setAttribute("login",loginBean);
	   }
	  String logname=request.getParameter("logname").trim(); 
	  String password=request.getParameter("password").trim();
	   
	   
	  boolean ok=loginBean.isSuccess();
	  logname=handleString(logname);
	  password=handleString(password);
	  if(ok==true&&logname.equals(loginBean.getLogname()))
	  {
		  backNews=logname+"已经登录了";
		  loginBean.setBackNews(backNews);
		  
	  }
	  else
	  {     
		  boolean boo=(logname.length()>0)&&(password.length()>0);
		  try {
			  String url="jdbc:mysql://localhost:3306/mylogin";
			  con = (Connection) DriverManager.getConnection(url, "root", "123456");
		      String condition="select * from register where logname ='"+logname+"' and password ='"+password+"'";
		      sql=(Statement) con.createStatement();
		      if(boo)
		      {
		    	  ResultSet rs= sql.executeQuery(condition);
		    	  boolean m=rs.next();
		    	  if(m==true)
		    	  {
		    		//  i="t";
		    		  backNews="登陆成功";
		    		  loginBean.setBackNews(backNews);
		    		  loginBean.setSuccess(true);
		    		  loginBean.setLogname(logname);
		    		
		    	  }
		    	  else
		    	  {
		    		 // i="f";
		    		  backNews="您输入的用户名不存在，或者密码错误";
		    		  loginBean.setBackNews(backNews);
		    		  loginBean.setSuccess(false);
		    		  loginBean.setLogname(logname);
		    		  loginBean.setPassword(password);
		    	
		    	  }
		      }
		      else
		      {
		    	 // i="f";
		    	  backNews="您输入的用户名不存在，或者密码错误";
	    		  loginBean.setBackNews(backNews);
	    		  loginBean.setSuccess(false);
	    		  loginBean.setLogname(logname);
	    		  loginBean.setPassword(password); 
	    		
	    		   
		      }
		      con.close();
		  } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	  }
	  
//	  if(i=="t")
//	  {
//		  response.sendRedirect("showLoginMess.jsp");
//	  }
//	  else
//	  {
//		  response.sendRedirect("login.jsp");
//	  }
//	  
	  RequestDispatcher dispatcher = request.getRequestDispatcher("showLoginMess.jsp");
	  dispatcher.forward(request,response);
	
	}
    public void doGet(HttpServletRequest request,HttpServletResponse response)
                       throws ServletException,IOException
      {
    	doPost(request,response);
    	
     }
}
