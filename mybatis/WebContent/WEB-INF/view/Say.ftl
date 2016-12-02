<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>添加</title>
		<script src="/Copy/static/js/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
		<script src="/Copy/static/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="/Copy/static/css/bootstrap.min.css"/>
	</head>
	<body>
		<div class="page-header">
		  	<h1>注册SQL</h1>
		</div>
		<form class="form-horizontal" action="${base.contextPath}/say" id=${id} method="post">
			<div class="control-group">
		    	<label class="control-label" for="inputAuther"></label>
		   	 	<div class="controls">
		    		作者:<input type="text" name="auther" placeholder="请输入作者">
		    	</div>
		 	</div>
		 	<div class="control-group">
		    	<label class="control-label" for="inputContent"></label>
		   	 	<div class="controls">
		      		评论:<input type="text" name="content" placeholder="请输入内容">
		    	</div>
		 	</div>
		 	<button type="submit" class="btn">提交</button>
		</form>
	</body>
</html>