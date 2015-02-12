<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="messageForm" method="post">
		<table>
			<tr>
				<td width="80">작성자
				<input type="text" name="from_Id" value="${user.m_id}"></td> 
			</tr>
			<tr>
				<td width="80">받는아이디
				<input type="text" name="to_Id"></td>
			</tr>
			<tr>
				<td><textarea rows="10" cols="10" name="content"></textarea>
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="확인" /></td>
			</tr>
		</table>
	</form>


</body>
</html>