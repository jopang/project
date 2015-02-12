<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<style type="text/css">
#main
{
	border:1px solid black;
	height:200px;
	width:800px;
	margin-left:200px;
	margin-top:50px;
	margin-bottom:50px;
}
#mod
{
	font-size:40px;
	margin-left:30px;
	margin-top:30px;
}
#mod1
{
	font-size:20px;
	margin-left:30px;
	margin-top:20px;
}
#a
{
	width:800px;
	margin-left:200px;
}
</style>
<title>Insert title here</title>
</head>
<body>
<form:form modelAttribute="loginForm">
<div id="main">
	<div id="mod">회원정보 수정</div>
	<div id="mod1">정보를 안전하게 보호하기 위해 비밀번호를 다시 한 번 확인 합니다.</div>
</div>
<div id="a">필수정보<hr>
	<div>아이디 ${user.m_id}</div>
	<div>비밀번호<form:password path="m_pwd" id="password"/></div>
	<input type="submit" value="로그인" id="but">
	<input type="reset" value="취소" id="but">
</div>
</form:form>

</body>
</html>