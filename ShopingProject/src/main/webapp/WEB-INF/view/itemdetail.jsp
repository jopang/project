<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/header.jsp" %>   
<%@ include file="/WEB-INF/view/left.jsp" %>
<style>
	#i_wrap
	{
		width:844px;
		height:468px;
		float:right;
	}

	#item_header{
		background-color:skyblue;
	}
	
	#item_content{
		background-color:gray;
	}
	
	#item_img{width:422px;height:168px;background-color:red;float:left}
	#item_info{width:421px;height:168px;float:right;}
	#item_content{width:844px;height:300px;float:left;}
	#d2,#d3,#d4,#d5{width:421px;height:42px;}
</style>
<h2>검색결과가 나올곳입니다.</h2>	
<div id="i_wrap">
	<div id="item_header">
		<div id="item_img">
			<div id="d1">${iteminfo.i_img}</div>
		</div>
		<div id="item_info">
			
			<div id="d2">
				<fmt:formatNumber value="${iteminfo.i_price}" type="number"/>원
			</div>
			
			<div id="d3">
				<c:set var="op" value="${iteminfo.i_option}" />
				<c:set var="opt" value="${fn:split(op,'/')}" />
				<select name="item_option">  
					<c:forEach var="ioption" items="${opt}">
						<option>
							${ioption}
						</option>
					</c:forEach>
				</select>
			</div>
			
			<div id="d4">
				<c:set var="op1" value="${iteminfo.i_option1}" />
				<c:set var="opt1" value="${fn:split(op1,'/')}" />
				<select name="item_option1">  
					<c:forEach var="ioption1" items="${opt1}">
						<option>
							${ioption1}
						</option>
					</c:forEach>
				</select>
			</div>
			<div id="d5">
				<input type="button" name="item_buy" value="구매"/>
				<input type="button" name="item_basket" value="장바구니"/>
			</div>
		</div>
	</div>
	
	<div id="item_content">
		<div id="d5">본문</div>
		<div id="d6">회사정보</div>
		<div id="d7">고객문의</div>
	</div>
</div>
<%@ include file="/WEB-INF/view/footer.jsp" %>	

<!-- width:844px;
	height:468px;
	float:right;
	background-color:#FFFFC6;
 -->