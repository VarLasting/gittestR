<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.6.0.js"></script>
<script type="text/javascript">
    function register() {
    	
		var mobile = $("#mobile").val();
		//json
		var student = [{"name":"zs","age":23},{"name":"li","age":24}]
		alert(student[1].name + "---" + student[0].age);
		/*$.ajax({
			url:"MyServlet",
			请求方式:"post",
			data:"mobile=" + mobile,
			success:function(result){
				if(result=="true"){
					alert("jquery...post此号码已经存在，注册失败");
				}else{
					alert("jquery...post注册成功")
				}
			}
			
		});
		
		$.get(
				"MyServlet",
				"mobile=" + mobile,
				function(result){
					if(result=="true"){
						alert("jquery...简化此号码已经存在，注册失败");
					}else{
						alert("jquery...简化注册成功")
					}
				},
				"text"
				);*/
				
		$.getJSON(
				"MyServlet",
				{"mobile":mobile},
				function(result){
					if(result.msg=="true"){
						alert("json...简化此号码已经存在，注册失败");
					}else{
						alert("json...简化注册成功")
					}
				},
				
				);
	}

</script>
</head>
<body>
	mobile:<input type="text" id="mobile"  />
	<input type="button" value="验证" onclick="register()"/>

</body>
</html>