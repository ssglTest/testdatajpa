<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" href="../../bootstrap/bootstrap.min.css"
	rel="stylesheet" />
<script type="text/javascript"
	src="../../bootstrap/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="../../bootstrap/bootstrap.min.js"></script>
</head>
<body>
	<div class="panel panel-primary">
		<div class="panel-heading">
			<div class="panel-title">
				<h4>论文选题答辩成绩</h4>
			</div>
		</div>
		<div class="panel-body">
			<table class="table">
				<thead>
					<tr>
						<th>学号</th>
						<th>姓名</th>
						<th>是否通过</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${paperTitleReport.student.no}</td>
						<td>${paperTitleReport.student.name }</td>
						<td>
							<c:if test="${empty paperTitleReport.approve }">
								<span class="label label-info">成绩未出，请耐心等待</span>
							</c:if>
							<c:if test="${paperTitleReport.approve=='approved' }">
								<span class="label label-success">恭喜，已通过</span>
							</c:if>
							<c:if test="${paperTitleReport.approve=='notApproved' }">
								<span class="label label-warning">未通过，请努力</span>
							</c:if>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>