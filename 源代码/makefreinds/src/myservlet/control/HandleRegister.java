package myservlet.control;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybean.data.register;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class HandleRegister extends HttpServlet {
    public void init(ServletConfig config) throws ServletException
    {
    	super.init(config);
    	try{
    		Class.forName("com.mysql.jdbc.Driver");
    	}catch(Exception e){}
    }

    
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
           Connection con;
           Statement sql;
           register reg=new register();
		   request.setAttribute("register",reg);
		   
		  
		   
		   String logname=request.getParameter("logname").trim(),
		     password=request.getParameter("password").trim();
		  
		  
		   String email=new String(request.getParameter("email").trim().getBytes("ISO-8859-1"),"utf-8") ;
		   String phone=new String(request.getParameter("phone").trim().getBytes("ISO-8859-1"),"utf-8") ;
		   String message=new String(request.getParameter("message").getBytes("ISO-8859-1"),"utf-8") ;
		   
		  
		   String url="jdbc:mysql://localhost:3306/mylogin";
		   if(logname==null)
		    logname="";
		  
		   if(password==null)
			   password="";
		   
		  boolean isLD=true;
		  for(int i=0;i<logname.length();i++)
		  {
			  char c=logname.charAt(i);
			  if(!((c<='z'&&c>='a')||(c<='Z'&&c>='A')||(c<='9'&&c>='0')))
				  isLD=false;
		  }
		  boolean boo=(logname.length()>0&&password.length()>0&&(isLD==true));
		  String backNews="";
		  try{
			
			  
			  //前面要判断用户名，密码是否为空，所以现在来转换编码
			  logname=new String(request.getParameter("logname").trim().getBytes("ISO-8859-1"),"utf-8") ;
			  password=new String(request.getParameter("password").trim().getBytes("ISO-8859-1"),"utf-8") ;
			 
			  String pic="1.jpg";
			  String insertRecord="('"+logname+"','"+password+"','"+email+"','"+phone+"','"+message+"','"+pic+"')";
		      con=(Connection) DriverManager.getConnection(url,"root","123456");
		      String insertCondition="insert into register values"+insertRecord;
		      sql=(Statement) con.createStatement();
		      if(boo)
		      {
		    	  int m=sql.executeUpdate(insertCondition);
		    	  if(m!=0)
		    	  {
		    		  backNews="注册成功";
		    		  reg.setBackNews(backNews);
		    		  reg.setLogname(logname);
		    		  reg.setPassword(password);
		    		  reg.setEmail(email);
		    		  reg.setPhone(phone);
		    		  
		    		  reg.setMessage(message);
		    				  
		    	  } 
		      }
		      else
		      {
		    	  backNews="信息填写不完整或者名字中有非法字符";
		    	  reg.setBackNews(backNews);
		      }
		      con.close();
		  }catch(SQLException exp){
			  backNews="该会员名字已经被使用，请你更换名字"+exp;
		      reg.setBackNews(backNews);
		  }
	     RequestDispatcher dispatcher=request.getRequestDispatcher("showRegisterMess.jsp");
	     dispatcher.forward(request,response);
		  
		  
	}
	 public void doGet(HttpServletRequest request,HttpServletResponse response)
             throws ServletException,IOException
{
doPost(request,response);

}
	
}
