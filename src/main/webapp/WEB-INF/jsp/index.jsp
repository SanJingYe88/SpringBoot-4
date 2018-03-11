<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="utf-8" />
<meta name="author" content="" />
<meta name="keywords" content="" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title></title>

<c:set var="APP" value="${pageContext.request.contextPath }"
	scope="page"></c:set>

<!-- main JS libs -->
<script src="${APP}/vanilla-cream-css/js/libs/modernizr.min.js"></script>
<script src="${APP}/vanilla-cream-css/js/libs/jquery-1.10.0.js"></script>
<script src="${APP}/vanilla-cream-css/js/libs/jquery-ui.min.js"></script>
<script src="${APP}/vanilla-cream-css/js/libs/bootstrap.min.js"></script>

<!-- Style CSS -->
<link rel="stylesheet" href="${APP}/vanilla-cream-css/css/bootstrap.css" />
<link rel="stylesheet" href="${APP}/vanilla-cream-css/style.css" />
<!-- scripts -->
<script src="${APP}/vanilla-cream-css/js/general.js"></script>

</head>
<body style="background-image: none;">
	<div class="body_wrap">
		<div class="container">
			<div class="alert alert-success text-center" role="alert">Sptring
				Boot学习</div>
			<table class="table table-striped table-bordered">
				<tr>
					<td>作者</td>
					<td>教程名称</td>
					<td>地址</td>
				</tr>
				<c:forEach var="learn" items="${learnLists}">
					<tr class="text-info">
						<td>${learn.source}</td>
						<td>${learn.title}</td>
						<td><a href="${learn.url}" class="btn btn-search btn-green"
							target="_blank"><span>点我</span></a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>


</html>