<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'upload.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	 <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
    <script>
        var i=0;
    $(document).ready(function(){
        setInterval('gaibian()',1000);
        });
        function gaibian(){
            if(i==0){
                i=1;
                $("#wo").removeClass("zhuan_left");
                $("#wo").addClass("zhuan_right");
                }else{
                    i=0;
                    $("#wo").addClass("zhuan_left");
                    $("#wo").removeClass("zhuan_right");
                    }
             
            }
    </script>
	
	
	
	
<style type="text/css">
body {
	font-family:"微软雅黑";
	}
#makefriends1 {
	color: #F91B1F;
	font-size: 40px;
	font-weight: bold;
	}
#makefriends2 {
	color: #B0999A;
	font-size: 40px;
	font-weight: bold;
	}
#head {
	margin-top: 30px;
	margin-left: 140px;
	float: left;
	}
#head #mulu ul{
	list-style-type: none;
	float: left;
	margin-left:360px;
	margin-top:-30px;
	}
#head #mulu ul li{
	float: left;	
	
	}
#head #mulu ul li a {
	text-decoration: none;
	color: #110F0F;
	padding-left:10px;
	padding-right:10px;
	padding-top:4px;
	padding-bottom:4px;
	float:left;
	}
#head #mulu ul li a:hover{
	color: #EF6A6C;
	text-decoration: underline;
	background-color: #F3DAB7;
	float: left;
	
}
.content {
height:200px;
 weight:400px;
 float:left;
 margin-left:400px;
 margin-top:390px;
 text-align:center;
}
 .body { 
 background-color:black;
 height:630px;
 width:1330px;
 float:left;
 background-image: url(background.jpg);
 }
#image {
    float:left;
    height: 500px;
    margin: 0 auto;
    text-align: center;
    width: 500px;
    margin-left:30px;
    margin-top:-580px;
}
  .zhuan_left{
         transform: rotate(-10deg);
          -webkit-transform: rotate(-10deg);
        }  
    .zhuan_right{
         -webkit-transform: rotate(10deg);
          transform: rotate(10deg);
        }  
 
img {
    transform-origin: 50% 0 0;
    -webkit-transform-origin: 50% 0 0;
     -webkit-transition: all 1s ease-in-out 0s;
    -o-transition: all 1s ease-in-out 0s;
    -moz-transition: all 1s ease-in-out 0s;
    transition: all 1s ease-in-out 0s;
}
</style>




  </head>
  
  <body>
<div id="head">
  <span id="makefriends1">MAKE</span> <span id="makefriends2">  FRIENDS</span>
 
  <div id="mulu">
  <ul>
    <li><a href="register.jsp">会员注册</a></li>
    <li><a href="login.jsp">会员登录</a></li>
    <li><a href="upload.jsp">上传照片</a></li>
    <li><a href="choiceLookType.jsp">浏览会员</a></li>
    <li><a href="modifyPassword.jsp">修改密码</a></li>
    <li><a href="inputModifyMess.jsp">修改信息</a></li>
    <li><a href="exit">退出登录</a></li>
    <li><a href="main.jsp">返回主页</a></li>
  </ul>
  </div>
</div>



<div class="body">



<div class="content">
<br>文件将上传到web服务器目录makefriend的image中
<br>选择要上传的图像照片文字（文字不可以含有非ASCII码字符，比如汉字等）
<form action="helpUpload" method="post" style="width: 548px; height: 103px;" 
 ENCTYPE="multipart/form-data">

 <input type="file" name="fileName" size="40"> 
 <br><br>
 <input type="submit" name="g" value="提交"
 style="background-color:#267ce6;font-family:微软雅黑;color:white;font-size:15px; width: 125px;"
 >
</form>
  
  <div id="image"><img id="wo" src="image.png" height="400" width="400"/></div>
  
</div>
</div>


  
  </body>
</html>
