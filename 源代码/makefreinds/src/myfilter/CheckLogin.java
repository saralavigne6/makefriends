package myfilter;
import java.io.IOException;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public abstract class CheckLogin implements Filter{

//	<filter>
//	  <filter-name>CheckLogin</filter-name>
//	   <filter-class>myfilter.CheckLogin</filter-class>
//	</filter>
//	<filter-mapping>
//	   <filter-name>CheckLogin</filter-name>
//	   <url-pattern>/*</url-pattern>
//	</filter-mapping>
    public void init(FilterConfig filterConfig)throws ServletException{
		
	}
	public void doFilter
	(ServletRequest request,ServletResponse response,FilterChain chain, HttpServletRequest servletRequest, HttpServletResponse servletResponse)
	throws IOException,ServletException
	{
		HttpServletRequest request1 = (HttpServletRequest) servletRequest;
	    HttpServletResponse response1 = (HttpServletResponse) servletResponse;
        String currentURL = ((HttpServletRequest) request1).getRequestURI();
        String targetURL = currentURL.substring(currentURL.indexOf("/",1),currentURL.length());
        
        HttpSession session = ((HttpServletRequest) request1).getSession(false);
        if(!(("/login.jsp".equals(targetURL))||("/main.jsp".equals(targetURL)))){
            //判断当前页面是否是重顶次昂后的登陆页面页面，如果是就不做session的判断，防止死循环
            if(session==null||session.getAttribute("login")==null){
                //如果session为空表示用户没有登陆就重定向到login.jsp页面
                //System.out.println("request.getContextPath()=" + request.getContextPath());  
               // ((HttpServletResponse) response1).sendRedirect(((HttpServletRequest) request1).getContextPath()+"/login.jsp");
                response1.sendRedirect("login.jsp");
            	chain.doFilter(request1, response1);
            }
        
        
        }
 
	}
	
    public void destroy(){
		
	}
}
