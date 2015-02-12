<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="css/styles.css"> 
<link rel="stylesheet" href="css/main.css">
<!-- jQuery library (served from Google) -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>

<!-- 부트스트랩 CDN -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/css/bootstrap.min.css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/js/bootstrap.min.js">

</script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>

<script>
	function msg() {
		window.open("./message.html", "pop", "width=600 height=500");
	}
	function msgGo() {
		window.open("./insert.html", "pop", "width=600 height=500");
	}
</script>	

<script>

//메뉴 제이쿼리
( function( $ ) {
	$( document ).ready(function() {
		//$('#cssmenu').prepend('<div id="menu-button">Menu</div>');
		$('#cssmenu #menu-button').on('click', function(){
			var menu = $(this).next('ul');
			if (menu.hasClass('open')) {
				menu.removeClass('open');
			}
			else {
				menu.addClass('open');
			}
		});
	});
	} )( jQuery );
	

//즐겨찾기 제이쿼리
$(function(){
	
	var url = "http://localhost/ShopingProject/index.html";
	var title = "해피해피조팡";
	
	$('#bookmark').click(function(e){
		
		if(window.sidebar){ //파이어폭스
			return;	
		}
		else if(navigator.appName == 'Netscape' && navigator.userAgent.search('Trident') != -1){
			// IE 11 버전이하는 또 다른방법으로 체크해야한다.
			e.preventDefault();
			window.external.AddFavorite(url,title);
		}else{
			// 즐겨찾기가 지원되지 않는 브라우져 chrome,safari,opera..등등
			e.preventDefault();
			alert("즐겨찾기를 지원하지 않는 브라우져입니다.\n"+
					"CTRL+D 또는 브라우저에 맞는 방법을찾아 \n수동으로 즐겨찾기 해주세요!")
		}
		
	});
	
});

</script>

<title>Insert title here</title>
</head>
<body>
	<div id="wrap">
		<div id="main_top">
			<div id="top_bar">
				<ul class="top_left">
					<li><a href="#">이벤트</a></li>
					<li>
						<a id="bookmark" href="http://localhost/ShopingProject/index.html" title="해피해피조팡" rel="sidebar">즐겨찾기</a>
					</li>
				</ul>
				
				<ul class="top_right">
					<li><a href="/ShopingProject/customer.html">고객센터</a></li>
					<li><a href="#">장바구니</a></li>
					<c:if test="${user.m_id != null }">
					<li><a href="/ShopingProject/myPage.html">마이페이지</a></li>
					</c:if>
					<c:if test="${user.m_id == null }">
					<li><a href="/ShopingProject/login.html">로그인</a></li>
					</c:if>
					<c:if test="${user.m_id != null || user.m_role != null}">
						<li><a href="#" onclick="msgGo()">메시지 보내기</a></li>
						<li><a href="#" onclick="msg()">메세지 확인</a></li>
						<li>${user.m_id} 님 <a href="/ShopingProject/logout.html?a=${a}"> 로그아웃</a></li>
						<li>${user.m_role}</li>
					</c:if>
					<c:if test="${user.m_id == null }">
					<li><a href="/ShopingProject/signUp.html">회원가입</a></li>
					</c:if>
				</ul>
			</div>
			
			<div id="top_logo">
				<a href="/ShopingProject/index.html" title="조팡">
					<img src="images/jopang.jpg" alt=""/>
				</a>
			</div>
			
			<div id="top_search">
				<div class="main_search">
					<form action="searchlist.html" method="POST">
						<input type="text" name="i_name" id="main_searchbar"/>
						<input type="submit" class="btn btn-success" id="main_searchbtn" value="검색"/>
					</form>
				</div>
			</div>
		
		</div>
	
		
		
		