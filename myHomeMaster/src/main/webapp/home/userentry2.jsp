<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" 
	prefix="spring" %>    
<%@ taglib uri="http://www.springframework.org/tags/form" 
	prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����� ��� ȭ��</title>
</head>
<body>
<script type="text/javascript">
function idCheck(){
	if(document.frm.id.value == ""){
		alert("ID�� �Է��ϼ���.");
		document.frm.id.focus();
		return;
	}
	var url="../idcheck/idcheck.html?ID="+document.frm.id.value;
	window.open(url,"_blank","width=450,height=200");
}
function validate(form){
	if(form.name.value == ""){
		alert("�̸��� �Է��ϼ���."); form.name.focus(); return false;
	}
	if(form.id.value == ""){
		alert("ID�� �Է��ϼ���."); form.id.focus(); return false;
	}
	if(form.password.value == ""){
		alert("��ȣ�� �Է��ϼ���."); form.password.focus(); return false;
	}
	if(form.password.value != form.CONFIRM.value){
		alert("��ȣ�� ��ġ���� �ʽ��ϴ�.");
		form.password.focus(); return false;
	}
	if( !form.gender[0].checked && !form.gender[1].checked){
		alert("������ �����ϼ���."); form.gender[0].focus(); return false;
	}
	if(form.job.selectedIndex < 1){
		alert("������ �����ϼ���."); form.job.focus(); return false;
	}
	if(form.idChecked.value == ""){
		alert("ID �ߺ� �˻縦 ���ּ���."); return false;
	}
	if(confirm("�Է��� ������ �½��ϱ�?")){
		
	}else { return false; }
}
</script>

<div align="center" class="body">
<h2>���ϸ� Ʈ���̳� ���</h2>
<h2>Pokemon Trainer Entry</h2>
<br/>
<form:form name="frm" modelAttribute="user" method="post" 
	action="../entry/entry.html" onSubmit="return validate(this)">
<input type="hidden" name="idChecked" id="idChecked"/>
�̸�&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	<form:input path="name" maxLength="20"
		cssClass="name"/><br/>
		<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&emsp;���̵�&emsp;&nbsp;&nbsp;&nbsp;&nbsp; <form:input path="id" maxLength="20"
		cssClass="id"/>
<input type="button" value="�ߺ��˻�" onClick="idCheck()"/>		
<br/>
<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PASSWORD &emsp;&emsp;<form:password path="password" maxLength="20"
		cssClass="password"/><br/>
		<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PASSWORD *&emsp;&nbsp;<input type="password" name="CONFIRM"/><br/>
<br/>
���� : �� <form:radiobutton path="gender" value="M"/>
�� <form:radiobutton path="gender" value="F"/><br/><br/>
<br/>
E-MAIL <form:input path="email" maxLength="50"
			cssClass="email"/><br/>
<br/>
���� : <form:select path="job">
<form:option value="--�����ϼ���--"/><form:option value="ȸ���"/>
<form:option value="�л�"/><form:option value="��Ÿ"/>
</form:select><br/><br/>
<input type="submit" value="���" />
<input type="reset" value="����" />
</form:form>
</div>
</body>
</html>










