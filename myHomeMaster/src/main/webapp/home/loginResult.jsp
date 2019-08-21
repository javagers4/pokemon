<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인 결과</title>
<style type="text/css">
#content{
	width: 99%;
	height:30%;
	float: left;
 	background-image: url('../imgs/loginResult.jpg');    
	background-size: 1800px;
}
</style>
</head>
<body>
<div id="content">
<!-- 	<img alt="" src="../imgs/main1.jpg" width="100%" height="100%"/> -->
</div>
<c:choose>
	<c:when test="${sessionScope.loginUser != null }">
		<h3 align="center"><font color="black">　　　　<br/>
		　
		<br/> ${sessionScope.loginUser } 트레이너님의 방문을 환영합니다 ! </font></h3>
	</c:when>
	<c:otherwise>
		<h3 align="center"><font color="black">Invalid ID or PASSWORD
		</font></h3>
		<c:if test="${cartlogin == 'YES' }">
			<a href="../cart/login.html">■ 다시 로그인 하기</a>
		</c:if>
	</c:otherwise>
</c:choose>
<c:choose>
	<c:when test="${cartlogin == 'SUCCESS' }">
	<a href="#" 
	onClick="self.close();opener.window.location.reload();">닫기</a>
	</c:when>
</c:choose>
</body>
</html>







