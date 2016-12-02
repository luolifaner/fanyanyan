<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>添加</title>
		<script src="/mybatis/static/js/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
		<script src="/mybatis/static/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="/mybatis/static/css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="/mybatis/static/css/fan.css" />
	</head>
	<body>
		
		<div class="page-header" style="background-color:blue">
	  		<h1 style="text-align: center;">号外号外！</h1>
	  		<div style="text-align:center;"><img src="${base.contextPath}/static/images/lushi.jpg" />	          
		</div>
		</div>
		
		<div style="width: 800px;height: 500px;margin: 0 auto;">
			<a class="brand">热搜榜</a>
			<table border="0" cellspacing="0" cellpadding="0" class="table table-bordered">
				<#list post as e>
				<#if (e_index)%2==1>
					<tr style="background-color:#cccccc">
						<td><a href="${base.contextPath}/select1?id=${e['id']}">${e['title']}</a></td>
						<td>${e['auther']}</td>
						<td>${e['regdate']}</td>
					</tr>
				<#else>
					<tr>
						<td><a href="${base.contextPath}/select1?id=${e['id']}">${e['title']}</a></td>
						<td>${e['auther']}</td>
						<td>${e['regdate']}</td>
					</tr>
				</#if>
				</#list>
			</table>
		</div>
		
	</body>
</html>