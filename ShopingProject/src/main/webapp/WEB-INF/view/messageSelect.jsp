<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta  charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="form1" method="post">
	<table border="1">

		<tr>
			<td>발송일시</td>
			<td>
			<fmt:formatDate value="${message.send_Date }" pattern="yyyy/MM/dd HH:mm:ss"/>
			</td>
		</tr>
		<tr>
			<td>보낸사람</td>
			<td>${message.to_Id }</td>
		</tr>
		<tr>
			<td>내용</td>
			<td>${message.content}</td>
		</tr>
			
	</table>
	<table>
		<tr>
			<td>
				<input type="button" value="목록" onclick="location.href='message.html'"/>
			</td>
		</tr>
		
		
	</table>
</form>

</body>
</html>