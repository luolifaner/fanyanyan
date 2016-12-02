<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>登陆</title>
		<script src="/mybatis/static/js/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
		<script src="/mybatis/static/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="/mybatis/static/css/bootstrap.min.css"/>
	</head>
	<body>
		<div class="page-header">
		  	<h1>登陆</h1>
		</div>
		<form class="form-horizontal" action="${base.contextPath}/login" method="post">
			<div class="control-group">
		    	<label class="control-label" for="inputRauther"></label>
		   	 	<div class="controls">
		   	 		账号:<input type="text" name="rauther" placeholder="请输入姓名">
		    	</div>
		 	</div>
		 	<div class="control-group">
		    	<label class="control-label" for="inputPassword"></label>
		   	 	<div class="controls">
		      		密码:<input type="password" name="password" placeholder="请输入密码">
		    	</div>
		 	</div>
		 	<button type="submit" class="btn">提交</button>
		</form>
	</body>
</html>