<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
#content{
	width: 99%;
	height:30%;
	float: left;
 	background-image: url('../imgs/logoutResult.jpg');    
	background-size: 1800px;
}
</style>
</head>
<body>
<div id="content">
<!-- 	<img alt="" src="../imgs/main1.jpg" width="100%" height="100%"/> -->
</div>
<c:choose>
	<c:when test="${sessionScope.loginUser == null }">
	<h3 align="center"><font color="white">　　　　<br/>
		또 방문해주세요 !</font></h3>
	</c:when>
	<c:otherwise>
	<h3 align="center"><font color="black">　　　　<br/>
	로그아웃 되지 않았습니다. 관리자에게 문의해 주세요.</font></h3>
	</c:otherwise>
</c:choose>
</body>
</html>