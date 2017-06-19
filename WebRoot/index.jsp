<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	
	
	<script type="text/javascript">
		function loadXMLDoc()
		{
			var xmlhttp;
			if (window.XMLHttpRequest)
			  {// code for IE7+, Firefox, Chrome, Opera, Safari
			  xmlhttp=new XMLHttpRequest();
			  }
			else
			  {// code for IE6, IE5
			  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
			  }
			
			
			xmlhttp.onreadystatechange=function()
			  {
				//Document.write(xmlhttp.readyState);
			  if (xmlhttp.readyState==4 && xmlhttp.status==200)
			    {
			    document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
			    }
			  };
			
			//--get请求
			//为了避免得到的是缓存的结果，请向 URL 添加一个唯一的 ID：t
			//如果您希望通过 GET 方法发送信息，请向 URL 添加信息：fname=Bill&lname=Gates
			xmlhttp.open("GET","/ajax/demo_get.asp?fname=Bill&lname=Gates&t=" + Math.random(),true);
			xmlhttp.send();
			
			
			//--post请求
			//一个简单 POST 请求：
			xmlhttp.open("POST","demo_post.asp",true);
			xmlhttp.send();
			
			
			//--如果需要像 HTML 表单那样 POST 数据，请使用 setRequestHeader() 来添加 HTTP 头。然后在 send() 方法中规定您希望发送的数据：
			xmlhttp.open("POST","ajax_test.asp",true);
			xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
			xmlhttp.send("fname=Bill&lname=Gates");






		}
</script>
	
  </head>
  
  <body>
    <div id="myDiv"><h3>Let AJAX change this text</h3></div>
	<button type="button" onclick="loadXMLDoc()">请求数据</button>


  </body>
</html>
