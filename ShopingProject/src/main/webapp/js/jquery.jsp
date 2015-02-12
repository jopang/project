<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
$(document).ready(function(){
	//bxslider표시설정
	$("#mainimg1").bxSlider({
		mode: 'fade',	//horizontal:가로, vertical: 세로, fade: 페이드효과
		speed: 1000,  // 1초당 애니메이션이 이동
		auto: true,   // 자동재생(true: on, false: off)
		autoControls: true, //자동재생 콘트롤 표시( true: on, false: off)
		adaptiveHeight: true, // 높이 자동 조정
		captions: true  //true: title속성 표시, false: 비표시
		
	});
});
</script>
