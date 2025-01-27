<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" href="<%=basePath %>bootstrap/bootstrap.min.css"
	rel="stylesheet" />
<script type="text/javascript"
	src="<%=basePath %>bootstrap/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="<%=basePath %>bootstrap/bootstrap.min.js"></script>
<script type="text/javascript">
	function approved(paperTitleReportId){
		var confirmed = window.confirm("确认通过？");
		if(confirmed==true){
			$.ajax({
				url:"approvedPaperTitleReport.html",
				data:{"paperTitleReportId":paperTitleReportId},
				dataType:'json',
				type:'POST',
				success:function(data){
					alert("审核成功");
					$(".paperTitleReportaudit"+paperTitleReportId).html("<span class='label label-success'>通过</span>");
					return true;
				},
				error:function(data){
					alert("网络故障，请检查后重新审核");
					return false;
				}
			});
		}
	}
	
	function notApproved(paperTitleReportId){
		var confirmed = window.confirm("确认不通过？");
		if(confirmed==true){
			$.ajax({
				url:"notApprovedPaperTitleReport.html",
				data:{"paperTitleReportId":paperTitleReportId},
				dataType:'json',
				type:'POST',
				success:function(data){
					alert("审核成功");
					$(".paperTitleReportaudit"+paperTitleReportId).html("<span class='label label-warning'>未通过</span>");
					return true;
				},
				error:function(data){
					alert("网络故障，请检查后重新审核");
					return false;
				}
			});
		}
	}
</script>
</head>
<body>
	<div class="panel panel-primary">
		<div class="panel-heading">
			<div class="panel-title">
				<h4>上传论文选题答辩成绩</h4>
			</div>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<button class="btn btn-success">已通过</button>
				<button class="btn btn-warning">未通过</button>
				<button class="btn btn-info">所有学生</button>
			</div>
			<table class="table">
				<thead>
					<tr>
						<th>学号</th>
						<th>姓名</th>
						<th>上传日期</th>
						<th>审核状态</th>
						<th>审核</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
				<h5><span class="label label-info">这里有一个问题，上传的成绩是对学生进行单个的录入还是直接上传一个excel表？</span></h5>
					<c:if test="${empty paperTitleReportList }">
						<h2><span class="label label-default">未有学生上传，请耐心等待。</span></h2>
					</c:if>
					<c:forEach items="${paperTitleReportList}" var="paperTitleReport">
						<tr class="paperTitleReport${paperTitleReport.id }">
							<td class="paperTitleReportno${paperTitleReport.id }">${paperTitleReport.student.no}</td>
							<td class="paperTitleReportname${paperTitleReport.id }">${paperTitleReport.student.name}</td>
							<td class="paperTitleReportupdateDate${paperTitleReport.id }">${paperTitleReport.updateDate}</td>
							<td class="paperTitleReportaudit${paperTitleReport.id }"><c:if test="${empty paperTitleReport.approve}">
									<span class="label label-info">未审核</span>
								</c:if> <c:if test="${paperTitleReport.approve=='approved'}">
									<span class="label label-success">通过</span>
								</c:if> <c:if test="${paperTitleReport.approve=='notApproved'}">
									<span class="label label-warning">未通过</span>
								</c:if></td>
							<td>
								<div class="btn-group">
									<button type="button" class="btn btn-primary dropdown-toggle"
										data-toggle="dropdown">
										<!-- 使用 <span class="caret"></span> 来指示按钮作为下拉菜单。 -->
										审核<span class="caret"></span>
									</button>
									<ul class="dropdown-menu" role="menu">
										<li><%-- <a
											href="approvedPaperTitleReport.html?paperTitleReportId=${paperTitleReport.id}"><h3>
													<span class="label label-success">通过</span>
												</h3></a> --%>
												<a class="btn btn-success" onclick = "approved(${paperTitleReport.id})">通过</a></li>
										<li><%-- <a
											href="notApprovedPaperTitleReport.html?paperTitleReportId=${paperTitleReport.id}"><h3>
													<span class="label label-danger">不通过</span>
												</h3></a> --%>
												<a class="btn btn-warning" onclick="notApproved(${paperTitleReport.id})">不通过</a>
												</li>
									</ul>
								</div>
							</td>
							<td>
								<button class="btn btn-default">
									<a href="#">查看</a>
								</button>
								<button class="btn btn-default">
									<a href="paperTitleReportDownload.html">下载</a>
								</button>
							</td>
						</tr>
					</c:forEach>

				</tbody>

			</table>
		</div>
	</div>
</body>
</html>