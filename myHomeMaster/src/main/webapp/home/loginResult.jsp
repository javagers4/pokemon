<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α��� ���</title>
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
		<h3 align="center"><font color="black">��������<br/>
		��
		<br/> ${sessionScope.loginUser } Ʈ���̳ʴ��� �湮�� ȯ���մϴ� ! </font></h3>
	</c:when>
	<c:otherwise>
		<h3 align="center"><font color="black">Invalid ID or PASSWORD
		</font></h3>
		<c:if test="${cartlogin == 'YES' }">
			<a href="../cart/login.html">�� �ٽ� �α��� �ϱ�</a>
		</c:if>
	</c:otherwise>
</c:choose>
<c:choose>
	<c:when test="${cartlogin == 'SUCCESS' }">
	<a href="#" 
	onClick="self.close();opener.window.location.reload();">�ݱ�</a>
	</c:when>
</c:choose>
</body>
</html>







