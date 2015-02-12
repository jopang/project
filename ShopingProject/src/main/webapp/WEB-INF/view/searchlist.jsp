<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/header.jsp" %>   
<%@ include file="/WEB-INF/view/left.jsp" %>

<h2>검색결과가 나올곳입니다.</h2>	
<div id="wrap">

	<table border="1">
		<tr>
			<td width="80">상품번호</td>
			<td width="50">상품명</td>
			<td widht="150">상품옵션</td>
			<td>옵션2</td>
			<td>재고</td>
			<td>가격</td>
			<td>상품사진</td>
		</tr>
		<c:forEach var="list" items="${list}">
		<tr>
			<td>${list.i_num}</td>
			<td>
				<a href="itemdetail.html?i_num=${list.i_num}">${list.i_name}</a>
			</td>
			<td>${list.i_option}</td>
			<td>${list.i_option1}</td>
			<td>${list.i_count}</td>
			<td>${list.i_price}</td>
			<td>${list.i_img}</td>
		</tr>
		</c:forEach>
	</table>
</div>
<%@ include file="/WEB-INF/view/footer.jsp" %>	