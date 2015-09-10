<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" href="../bootstrap/bootstrap.min.css"
	rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'
	rel='stylesheet' type='text/css'>
<link href="styles/font-awesome.min.css" rel="stylesheet" />
<script>
	$(function() {
		$(".btn").click(function() {
			$(this).button('loading').delay(1000).queue(function() {
				// $(this).button('reset');
			});
		});
	});
</script>
<title>Insert title here</title>


</head>
<body>
	<script type="text/javascript" src="../bootstrap/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="../Unslider/unslider.min.js"></script>
	<script type="text/javascript" src="../bootstrap/bootstrap.min.js"></script>
	<div class="container">
		<div class="jumbotron">
			<h2>欢迎登录硕士管理系统</h2>
			<p>山东建筑大学非全日制硕士生管理系统</p>
		</div>
		<div class="row">
			<div class="col-md-3">
				<nav class="navbar navbar-default" role="navigation"> <!-- <div class="navbar-header">
					<a class="navbar-brand" href="#">硕士生管理系统</a>
				</div> -->
				<div class="panel-group" id="accordion">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseOne">
									<button class="btn btn-primary btn-block">个人信息</button>
								</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<button class="btn btn-default btn-block" type="button">
									<a href="informationTest.html" target="aaa">查看/修改个人信息</a>
								</button>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseTwo">
									<button class="btn btn-primary btn-block">资料下载</button>
								</a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse">
							<div class="panel-body">
								<button class="btn btn-default btn-block" type="button">
									<a href="#">硕士管理相关规定</a>
								</button>
								<button class="btn btn-default btn-block" type="button">
									<a href="#">需上传的文档模板</a>
								</button>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseFive">
									<button class="btn btn-primary btn-block">基本流程</button>
								</a>
							</h4>
						</div>
						<div id="collapseFive" class="panel-collapse collapse">
							<div class="panel-body">
								<button class="btn btn-default btn-block" type="button">
									<a href="#">硕士培养基本流程</a>
								</button>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseThree">
									<button class="btn btn-primary btn-block">课程教学</button>
								</a>
							</h4>
						</div>
						<div id="collapseThree" class="panel-collapse collapse">
							<div class="panel-body">
								<button class="btn btn-default btn-block" type="button">
									<a href="#">查看公共课程信息</a>
								</button>
								<button class="btn btn-default btn-block" type="button">
									<a href="#">查看专业课程信息</a>
								</button>
								<button class="btn btn-default btn-block" type="button">
									<a href="#">查看公共课成绩</a>
								</button>
								<button class="btn btn-default btn-block" type="button">
									<a href="#">查看专业课成绩</a>
								</button>
								<button class="btn btn-default btn-block" type="button">
									<a href="#">查看选题资格名单</a>
								</button>
								<button class="btn btn-default btn-block" type="button">
									<a href="#">查看我的导师</a>
								</button>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseFour">
									<button class="btn btn-primary btn-block">学位论文</button>
								</a>
							</h4>
						</div>
						<div id="collapseFour" class="panel-collapse collapse">
							<div class="panel-body">
								<button class="btn btn-default btn-block" type="button">
									<a href="#">上传个人培养计划</a>
								</button>
								<button class="btn btn-default btn-block" type="button">
									<a href="#">论文选题</a>
								</button>
								<button class="btn btn-default btn-block" type="button">
									<a href="#">提交选题报告</a>
								</button>
								<button class="btn btn-default btn-block" type="button">
									<a href="#">答辩申请</a>
								</button>
								<button class="btn btn-default btn-block" type="button">
									<a href="#">上传中期成果</a>
								</button>
								<button class="btn btn-default btn-block" type="button">
									<a href="#">上传论文考核记录表</a>
								</button>
								<button class="btn btn-default btn-block" type="button">
									<a href="#">上传论文成果</a>
								</button>
								<button class="btn btn-default btn-block" type="button">
									<a href="#">查看论文答辩时间地点</a>
								</button>
								<button class="btn btn-default btn-block" type="button">
									<a href="#">上传汇总文档</a>
								</button>
							</div>
						</div>
					</div>
				</div>
				<!-- <div>
					<ul class="nav nav-list bs-docs-sidenav affix-top">
						<li class="active"><a href="#">iOS</a></li>
						<li><a href="#">SVN</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> Java <b class="caret"></b>
						</a>
							<ul class="dropdown-menu">
								<li><a href="#">jmeter</a></li>
								<li><a href="#">EJB</a></li>
								<li><a href="#">Jasper Report</a></li>
								<li class="divider"></li>
								<li><a href="#">分离的链接</a></li>
								<li class="divider"></li>
								<li><a href="#">另一个分离的链接</a></li>
							</ul></li>
					</ul>
				</div> --> </nav>
			</div>
			<div class="col-md-9">
				
			</div>
		</div>




	</div>

</body>
</html>