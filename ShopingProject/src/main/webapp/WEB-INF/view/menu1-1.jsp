<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/header.jsp" %>
<%@ include file="/WEB-INF/view/left.jsp" %>
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
	width:250px;
	height:400px;
	border:1px solid black;
}
	<c:if test="${sum%3==0 }">
	<tr>
	</c:if>

</style>	
<table border='0' style='table-layout: fixed'>

<c:set var="sum" value="1"/>
<c:forEach var="item" items="${item}" >
	<c:if test="${sum==1 }">
		<tr>
			<td width="300">
				<img src="images/${item.i_img }" id="img1">
				<h2>${item.i_name}</h2>
				<h3>${item.i_price}</h3>
			</td>
	</c:if>
	<c:if test="${sum==2 }">
			<td width="300">
				<img src="images/${item.i_img }" id="img1">
				<h2>${item.i_name}</h2>
				<h3>${item.i_price}</h3>
			</td>
	</c:if>
	<c:if test="${sum==3 }">
			<td width="300">
				<img src="images/${item.i_img }" id="img1">
				<h2>${item.i_name}</h2>
				<h3>${item.i_price}</h3>
			</td>
		</tr>
	</c:if>
	<c:set var="sum" value="${sum+1 }"/>
	<c:if test="${sum==4 }">
		<c:set var="sum" value="${sum-3 }"/>
	</c:if>
</c:forEach>


</table>
	

<%@ include file="/WEB-INF/view/footer.jsp" %> 
