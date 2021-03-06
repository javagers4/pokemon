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
<title>사용자 등록 화면</title>
<style type="text/css">
 #content{
	width: 100%;
	height: 95%;
	float: left;
 	background-image: url('../imgs/userentry.jpg');  
	background-size: 1400px;
}

.col-md-6{
	color: white;
}

.body{
	color: white;
}

/* .text-center{ */
/* 	text-decoration: underline; */
/* } */
</style>
</head>
<body>
<script type="text/javascript">
function idCheck(){
	if(document.frm.id.value == ""){
		alert("ID를 입력하세요.");
		document.frm.id.focus();
		return;
	}
	var url="../idcheck/idcheck.html?ID="+document.frm.id.value;
	window.open(url,"_blank","width=450,height=200");
}
function validate(form){
	if(form.name.value == ""){
		alert("이름을 입력하세요."); form.name.focus(); return false;
	}
	if(form.id.value == ""){
		alert("ID를 입력하세요."); form.id.focus(); return false;
	}
	if(form.password.value == ""){
		alert("암호를 입력하세요."); form.password.focus(); return false;
	}
	if(form.password.value != form.CONFIRM.value){
		alert("암호가 일치하지 않습니다.");
		form.password.focus(); return false;
	}
	if( !form.gender[0].checked && !form.gender[1].checked){
		alert("성별을 선택하세요."); form.gender[0].focus(); return false;
	}
	if(form.job.selectedIndex < 1){
		alert("직업을 선택하세요."); form.job.focus(); return false;
	}
	if(form.idChecked.value == ""){
		alert("ID 중복 검사를 해주세요."); return false;
	}
	if(confirm("입력한 내용이 맞습니까?")){
		
	}else { return false; }
}
</script>

	<div align="center" class="body">
	<div id="content">
<!-- 		<img alt="" src="../imgs/main1.jpg" width="100%" height="90%" /> -->
	</div><br/>
	<div class="brand-logo">
                <img src="../imgs/userentry2.png" alt="logo" height="10%" width="10%">
              </div>
		<h2>포켓몬 트레이너 등록</h2>
		<h2>Pokemon Trainer Entry</h2>
		<br />
		<form:form name="frm" modelAttribute="user" method="post"
			action="../entry/entry.html" onSubmit="return validate(this)">
			<input type="hidden" name="idChecked" id="idChecked" />
			<div class="col-md-6">
				<div class="form-group row">
					<label class="col-sm-3 col-form-label" >Name</label>
					<div class="col-sm-9">
						<!--                             <input type="text"  placeholder="Name..." class="form-control" /> -->
						<form:input path="name" cssClass="form-control" />
					</div>
				</div>
			</div>
			
			<br />
			<div class="col-md-6">
				<div class="form-group row">
					<label class="col-sm-3 col-form-label">I D</label>
					<div class="col-sm-9">
						<!-- 						<input type="text" placeholder="Name..." class="form-control"  /> -->
						<form:input path="id" cssClass="form-control" />
					</div>
				</div>
			</div>
			<input type="button" value="ID Check" onClick="idCheck()" />
			<br />
			<br />
			<div class="col-md-6">
				<div class="form-group row">
					<label class="col-sm-3 col-form-label">PASSWORD</label>
					<div class="col-sm-9">
						<!-- 						<input type="password" path="password" placeholder="Password..." class="form-control" /> -->
						<form:password path="password" cssClass="form-control" />
					</div>
				</div>
			</div>
			<br />
			<div class="col-md-6">
				<div class="form-group row">
					<label class="col-sm-3 col-form-label">PASSWORD *</label>
					<div class="col-sm-9">
						<input type="password" name="CONFIRM"
							placeholder="Password Confirm..." class="form-control" />
					</div>
				</div>
			</div>	
			Male <form:radiobutton path="gender" value="M" cssClass="form-control" />
			Female <form:radiobutton path="gender" value="F" cssClass="form-control" />

	<br/>
			<div class="col-md-6">
				<div class="form-group row">
					<label class="col-sm-3 col-form-label">E-mail</label>
					<div class="col-sm-9">
						<form:input path="email" cssClass="form-control" />
					</div>
				</div>
			</div>
			<br/>
			<div class="col-md-6">
			Job : <form:select path="job" cssClass="form-control" size="4">
<form:option value="--선택하세요--"/><form:option value="학생"/>
<form:option value="회사원"/><form:option value="IT"/>
<form:option value="자영업"/><form:option value="포켓트레이너"/>
<form:option value="웹 디자이너"/><form:option value="교사"/>
</form:select>
</div>
<br/>
			<div class="mb-4">
				<div class="form-check">
					<label class="form-check-label text-muted"> <input
						type="checkbox" class="form-check-input"> 
						<font color="white">I agree to all Terms & Conditions</font>
					</label>
				</div>
			</div>

			<input type="submit" class="btn btn-primary mr-2" value="Submit"/>
			<input type="reset" class="btn btn-light" value="Cancel"/>

			<div class="text-center mt-4 font-weight-light">
				Already have an account? <a href="../home/intro.html" class="text-primary"><font color="white" ><u>Login</u></font></a>
			</div>

			<!-- <input type="submit" value="등록" /> -->
<!-- <input type="reset" value="리셋" /> -->
</form:form>
</div>
	
</body>
</html>










