<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>添加</title>
		<script src="/mybatis/static/js/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
		<script src="/mybatis/static/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="/mybatis/static/css/bootstrap.min.css"/>
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
			</#list>
		</div>
		<div style="width: 500px;height: 50px;margin: 0 auto;text-align: center;">
			<h3>网友评论</h3>
		</div>
		
		<div style="width: 500px;height: 300px;margin: 0 auto;">
			<#list more as e>
					${e_index+1}<b>楼</b>
					${e['rauther']}
					<a href="#">${e['rcontent']}</a>
					${e['rregdate']}
					<a href="${base.contextPath}/delete?id=${e['id']}&reply_post_id=${e['reply_post_id']}">删帖</a><br />
			</#list>
			<hr />
			<h4><b>小伙伴都过来</b></h4>
			<form action="${base.contextPath}/say" method="post">
				<b>抢楼:</b><input type="text" name="rcontent" placeholder="请输入内容">
				<button type="submit" class="btn">吐槽</button>
			</form>
			<a href="${base.contextPath}/select"><button type="button" id="ad" class="btn">返回UC新闻</button></a>
		</div>
	</body>
</html>