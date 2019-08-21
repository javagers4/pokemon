<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>포켓몬 월드랭킹</title>
</head>
<body>

<table width="90%" border="1" align="center">
<tr><td align="center">Rank</td><td align="center">Rating</td><td align="center">ID</td></tr>
<c:forEach var="rank" items="${rankingList }" varStatus="count">
<tr>
<td>${count.count }</td>
<td>${rank.rating }</td>
<td>${rank.userinfo_id }</td>
</tr>
</c:forEach>
</table>

</body>
</html>