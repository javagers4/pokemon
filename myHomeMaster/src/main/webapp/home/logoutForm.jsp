<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="../logout/template.html" method="get">
��<br/><font color="yellow"> ${sessionScope.loginUser } Ʈ���̳ʴ���<br/>
�湮�� ȯ���մϴ�.</font>

<div class="mt-3">
		<input type="submit" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" value="LOGOUT"/>
</div>

</form>
</body>
</html>










