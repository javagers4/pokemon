<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>포켓몬 월드랭킹</title>
</head>
<body>

	<div class="col-md-6">
		<table class="table table-striped" width="90%" align="center">
			<thead>
				<tr>
					<th>Rank</th>
					<th>Rating</th>
					<th>ID</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="rank" items="${rankingList }" varStatus="count">
					<tr>
						<td>${count.count }</td>
						<td>${rank.rating }</td>
						<td>${rank.userinfo_id }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>