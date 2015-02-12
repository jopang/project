<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/header.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<style>
#qna
{
	border: 2px solid black;
	width: 700px;
}
#a
{
	margin: 30px;
	line-height:20%;
}
p
{
	font-size: 20px;
	font-weight: bold;
}
#btn
{
	margin-left: 450px;
}

</style>
<title>Insert title here</title>
</head>
<body>
	<div>
		<p>자주묻는질문 top 5 <input type="button" id="btn" value="더보기"/></p><hr>
		<div id="qna">
			<div id="a">
			마이쿠팡에서 반품 신청을 하려면 어떻게 하면 되나요?<hr>
			쿠폰 상품을 취소하고 싶어요. 어떻게 하면 되나요?<hr>
			상품을 교환하고 싶어요. 어떻게 하면 되나요?<hr>
			쿠폰 문자를 실수로 지워버렸어요. 쿠폰 문자를 다시 받을 수 있나요?<hr>
			주문을 취소했는데, 언제 환불되나요?<hr>
			</div>
		</div><br/>
		<p>1:1 문의</p><hr>
	</div>
</body>
</html>