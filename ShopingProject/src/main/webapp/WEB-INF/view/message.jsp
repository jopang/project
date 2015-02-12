<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta  charset="UTF-8">
<title>메세지 목록 </title>

</head>
<body>
		<table border="1">
		<tr>
			<td>보낸사람</td>
			<td>내용</td>
			<td>발송일시</td>
			<td>확인일시</td>
		</tr>
		<c:forEach var="msg" items="${messageList}">
			<tr>
				<td>${msg.from_Id }</td>
				<td>
					<a href="detail.html?num=${msg.seq_no}">
						<c:if test="${msg.confirm_Date == null || msg.confirm_Date=='' }">
									<b>${msg.content }</b>		
						</c:if>
						<c:if test="${msg.confirm_Date != null && msg.confirm_Date!='' }">
								${msg.content }
						</c:if>
					</a>
				</td>
				
				<td>
				<fmt:formatDate value="${msg.send_Date}" pattern="yy/MM/dd HH:mm:ss"/>
				</td>
		<td>
					<c:if test="${msg.confirm_Date != null && msg.confirm_Date != ''}">
					<fmt:formatDate value="${msg.confirm_Date}"  pattern="yy/MM/dd HH:mm:ss"/>
					</c:if>
				</td>			
			</tr>

		</c:forEach>
	</table>
	<a href="javascript:self.close();">창닫기</a>
</body>
</html>

