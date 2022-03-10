<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
	<script type="text/javascript">
		function register(){
			
			var mobile = document.getElementById("mobile").value;
			
			xmlHttpRequest = new XMLHttpRequest();
			xmlHttpRequest.open("post","MyServlet" ,true);
			xmlHttpRequest.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
			xmlHttpRequest.send("mobile=" + mobile);
			xmlHttpRequest.onreadystatechange = callBack;
		}
		function callBack(){
			
			if(xmlHttpRequest.readyState==4 && xmlHttpRequest.status==200){
			
				var data = xmlHttpRequest.responseText;
				
				if(data == "true"){
					alert("该号码已经存在，注册失败");
				}else{
					alert("注册成功");
				}
				
			}
		}
	
	
	</script>
	
</head>
<body>
	mobile:<input type="text" id="mobile"  />
	<input type="button" value="验证" onclick="register()"/>

</body>
</html>