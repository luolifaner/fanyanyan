<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>添加</title>
		<script src="/zhihu/static/js/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
		<script src="/zhihu/static/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="/zhihu/static/css/bootstrap.min.css"/>
		<script type="text/javascript">
	</script>
	</head>
	<body>
		<div class="page-header">
	  		<h1 style="text-align: center;">详情介绍</h1>
		</div>
		<div style="width: 500px;height: 200px;margin: 0 auto;text-align: center;">
			<#list post as e>
					<h3>${e['title']}</h3><br />
					${e['auther']}<br />
					${e['regdate']}<br />
					${e['content']}<br />
					<a href="/zhihu/view/Say?id=${e['id']}"><button type="button" id="form" class="btn">发表评论</button></a><br />
			</#list>
		</div>
		<div style="width: 500px;height: 50px;margin: 0 auto;text-align: center;">
			<h3>网友评论</h3>
		</div>
		<div style="width: 500px;height: 300px;margin: 0 auto;">
			<#list more as e>
					${e['ra']}
					<a href="#">${e['rc']}</a>
					${e['rr']}<br />
			</#list>
			<a href="${base.contextPath}/select"><button type="button" id="ad" class="btn">返回今日热帖</button></a>
;;			<textarea name="sa" rows="5px" cols="40px" style="border: 1px solid black"></textarea>
		</div>
	</body>
</html>