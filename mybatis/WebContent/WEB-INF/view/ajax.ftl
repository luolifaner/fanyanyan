<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>添加</title>
		<script src="/zhihu/static/js/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
		<script src="/zhihu/static/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="/zhihu/static/css/bootstrap.min.css"/>
		<script type="text/javascript">
			$(function(){
				$.getJSON("${base.contextPath}/select",function(data){
					$.each(data,function(i,item){
						$("#tb").append("<tr><td>"+
						item.auther+
						"</td><td>"+item.title+
						"</td><td>"+item.regdate+
						"</td><td><a href='${base.contextPath}/select1?id="+item.id+"'>查看</a></td></tr>")
					})
				})
			})
		</script>
	</head>
	<body>
		<div class="page-header">
	  		<h1 style="text-align: center;">今日热帖</h1>
		</div>
		<div style="width: 500px;height: 500px;margin: 0 auto;">
			<table border="0" cellspacing="0" cellpadding="0" id="tb" class="table table-bordered">
		</table>
		</div>
	</body>
</html>