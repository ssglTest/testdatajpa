<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%><%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link type="text/css" href="<%=basePath %>bootstrap/bootstrap.min.css"
	rel="stylesheet" />
<script type="text/javascript"
	src="<%=basePath %>bootstrap/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="<%=basePath %>bootstrap/bootstrap.min.js"></script>
</head>
<body>
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">发布选题资格名单</h3>
		</div>
		<div class="panel-body">
			<div class="container">
				<div class="page-header">
					<form action="#" class="form-inline" role="form">
						<div class="form-grounp">
							<label for="inputFile">文件上传</label> <input type="file"
								id="inputFile">
							<p class="help-block">请选择需要上传的选题资格名单</p>
						</div>
						<div class="form-grounp">
							<button class="btn btn-default" type="submit">提交</button>
						</div>
					</form>
				</div>
				<div class="page-header">
					<table class="table">
						<thead>
							<tr>
								<th>文件名称</th>
								<th>上传日期</th>
								<th>下载</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>xxxxxxx</td>
								<td>2015-9-10</td>
								<td><a href="#"><button class="btn btn-default">下载</button></a>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>