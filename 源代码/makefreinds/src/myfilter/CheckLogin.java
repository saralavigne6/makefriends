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
            //�жϵ�ǰҳ���Ƿ����ض��ΰ���ĵ�½ҳ��ҳ�棬����ǾͲ���session���жϣ���ֹ��ѭ��
            if(session==null||session.getAttribute("login")==null){
                //���sessionΪ�ձ�ʾ�û�û�е�½���ض���login.jspҳ��
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
