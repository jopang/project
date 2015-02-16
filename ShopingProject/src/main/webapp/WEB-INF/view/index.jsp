<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/header.jsp" %>   
<%@ include file="/WEB-INF/view/left.jsp" %>
<link rel="stylesheet" 
	href="js/jquery.bxslider/jquery.bxslider.css">
<title>메인 페이지</title>
<script src="js/jquery-2.1.3.min.js"></script>
<script src="js/jquery.bxslider/jquery.bxslider.min.js"></script>
<script>
$(document).ready(function(){
	//bxslider표시설정
	$(".bxslider").bxSlider({
	    slideWidth: 800,  //크기 조절
		mode: 'fade',	//horizontal:가로, vertical: 세로, fade: 페이드효과
		speed: 1000,  // 1초당 애니메이션이 이동
		auto: true,   // 자동재생(true: on, false: off)
		autoControls: true, //자동재생 콘트롤 표시( true: on, false: off)
		adaptiveHeight: false, // 높이 자동 조정
		captions: true  //true: title속성 표시, false: 비표시
		
	});
});
</script>
<link rel="stylesheet" href="js/jquery.flexslider/flexslider.css" type="text/css">
<script src="js/jquery.flexslider/jquery.flexslider.js"></script>
<script src="js/jquery.flexslider/jquery.flexslider-min.js"></script>
<script>
  $(document).ready(function() {
    $('.flexslider').flexslider({
    	animation: "slide"
    });
  });
</script>


<style>
#bimg
{
	width: 800px;
	height: 300px;
}
#fimg
{
	height: 220px;
}
.flexslider
{
	width:385px;
	height:200px;
	float:left;
	margin-left:20px;
}
#pfont
{
	margin-left:150px;
}

</style>
<div id="main_content">
	<div class="slider">
		<ul class="bxslider">
			<li><img src="images/1.png" title="버넷" id="bimg"/></li>
			<li><img src="images/2.png" title="강정호" id="bimg"/></li>
			<li><img src="images/1.png" title="박찬호 파이어릿츠 시절" id="bimg"/></li>
			<li><img src="images/2.png" title="로고" id="bimg"/></li>
			<li><img src="images/1.png" title="파이어릿츠 구장" id="bimg"/></li>
		</ul>
	</div>
	
	
	
	<div class="flexslider">
	<h2 id="pfont">상품1</h2>
 	 	<ul class="slides">
			<li><img src="images/1.png" title="버넷" id="fimg"/></li>
			<li><img src="images/2.png" title="강정호" id="fimg"/></li>
			<li><img src="images/1.png" title="박찬호 파이어릿츠 시절" id="fimg"/></li>
			<li><img src="images/2.png" title="로고" id="fimg"/></li>
			<li><img src="images/1.png" title="파이어릿츠 구장" id="fimg"/></li>
		</ul>
	</div>
	
	<div class="flexslider">
	<h2 id="pfont">상품2</h2>
 	 	<ul class="slides">
			<li><img src="images/1.png" title="버넷" id="fimg"/></li>
			<li><img src="images/2.png" title="강정호" id="fimg"/></li>
			<li><img src="images/1.png" title="박찬호 파이어릿츠 시절" id="fimg"/></li>
			<li><img src="images/2.png" title="로고" id="fimg"/></li>
			<li><img src="images/1.png" title="파이어릿츠 구장" id="fimg"/></li>
		</ul>
	</div>
</div>

<%@ include file="/WEB-INF/view/footer.jsp" %> 
