<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/header.jsp" %>  
<%@ include file="/WEB-INF/view/mypage-left.jsp" %>   
<%@ include file="/WEB-INF/view/mypage-top.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<style>
h2
{
	color:blue;
}
h3
{
	font-style:bold
}
#img1
{
	width:50px;
	height:50px;
	border:1px solid black;
}

</style>
<table border='1' style='table-layout: fixed'>
	<tr>
		<td>주문 상품 정보</td>
		<td>총 결제 금액</td>
	</tr>
	<c:forEach var="item" items="${item}" >
	<tr>
		<td>
			<img src="${item.filename }" id="img1">${item.title}
		</td>
		<td>
			<h3>${item.price}</h3>
		</td>
	</tr>
</c:forEach>


</table>

</div>
</body>
</html>