<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
				prefix="c" %>
<%@ taglib prefix="spring" 
		uri="http://www.springframework.org/tags" %>    
<%@ taglib prefix="form" 
		uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
      input {
        vertical-align: middle;
       	
      }
      
      input.img-button {
        background: url( "../imgs/aa.png" ) no-repeat;
        border: none;
        width: 100px;
        height: 50px;
        cursor: pointer;
        color: white;
      }
    </style>
</head>
<body>
<c:choose>
	<c:when test="${param.RESULT == 'nologin' }">
		<h3 align="center">
		���񽺸� �̿��Ϸ��� �α����� �ʿ��մϴ�.</h3>
		<form action="memberLogin" method="post">
			<label>�α���<span id="join">
			<a href="login.jsp?BODY=join.jsp">ȸ������</a></span><br/>
			<input type="text" name="id" size="15"/>
			</label><br/>
			<label>��ȣ<br/>
			<input type="password" name="pwd" size="15"/>
			</label><br/><br/>
			<input type="submit" value="�α���"/>
		</form>
	</c:when>
	<c:when test="${param.RESULT == 'nocart' }">
		<h3 align="center">
		��ٱ��Ͽ� �������� �α����� �ʿ��մϴ�.</h3>
		<form action="cartLogin.do" method="post">
			<label>�α���<span id="join">
			<a href="login.jsp?BODY=join.jsp">ȸ������</a></span><br/>
			<input type="text" name="id" size="15"/>
			</label><br/>
			<label>��ȣ<br/>
			<input type="password" name="pwd" size="15"/>
			</label><br/><br/>
			<input type="submit" value="�α���"/>
		</form>
	</c:when>
	<c:otherwise>
		<form:form modelAttribute="user" 
				action="../login/template.html" method="post">
		I  D :&nbsp;  <form:input path="id" size="16"/>
		<font color="red"><form:errors path="id"/></font><br/><br/>
		PW : <form:password path="password" size="16"/>
		<font color="red"><form:errors path="password"/></font>
		<br/><br/>
		<input type="submit" value="            Login" class="img-button"  />
		<input type="reset" value="Cancel"/>
		</form:form>
<div align="right"><a href="../home/userentry.html">�����ϱ�</a></div>
	</c:otherwise>
</c:choose>
</body>
</html>















