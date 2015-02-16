<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>   
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/login.css">
<title>Insert title here</title>
</head>
<body>
<form:form modelAttribute="loginForm">
<div class="boardWrite">
	<div id="main">
		<div>
			<a href="/ShopingProject/index.html" title="조팡">
			<img src="images/jopang.jpg"/>
			</a>
		</div>
		
		<div>
			<form:input path="m_id" placeholder="아이디" id="login"/>
			<form:password path="m_pass" placeholder="비밀번호" id="password"/>
		</div>
		<div>
			<input type="submit" value="로그인" id="but">
		</div>
		<hr>
		<div id="adiv">
			<a target="_blank" href="/ShopingProject/idSearch.html">아이디찾기 </a>&nbsp;|&nbsp;   
			<a target="_blank" href="#">비밀번호찾기</a>&nbsp;|&nbsp; 
			<a target="_blank" href="#">회원가입</a>
		</div>
	</div>	
</div>
</form:form>
</body>
</html>