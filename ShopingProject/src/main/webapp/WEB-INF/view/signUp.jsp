<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<!DOCTYPE html>
<html lang="ko">
<head>
<script src="http://dmaps.daum.net/map_js_init/postcode.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script type="text/javascript">
	
	function openDaumPostcode() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	            // 우편번호와 주소 정보를 해당 필드에 넣고, 커서를 상세주소 필드로 이동한다.
	            document.getElementById('post1').value = data.postcode1;
	            document.getElementById('post2').value = data.postcode2;
	            document.getElementById('addr1').value = data.address;
	
	            //전체 주소에서 연결 번지 및 ()로 묶여 있는 부가정보를 제거하고자 할 경우,
	            //아래와 같은 정규식을 사용해도 된다. 정규식은 개발자의 목적에 맞게 수정해서 사용 가능하다.
	            //var addr = data.address.replace(/(\s|^)\(.+\)$|\S+~\S+/g, '');
	            //document.getElementById('addr').value = addr;
	
	            document.getElementById('addr2').focus();
	        }
	    }).open();
	}

	$(document).ready(function(){
		
		$('#emailselect').change(function(){
			$('#emailselect option:selected').each(function(){
			
				if($(this).val()=='직접 입력'){
					//직접입력할경우
					$('#emailtext').val('');
					
				}
				
				else{
					$('#emailtext').val($(this).text());
				}
			});
		});	
	
	});
	
	
		
</script>


<style type="text/css">
	
	#container{
		width:800px;
		margin:0 auto;
		border:solid;
		margin-top:50px;
	}
	
	.signUpbox{
		width:600px;
		margin:0 auto;
		padding:20px;
		text-align: center;
	}

</style>
<meta charset="UTF-8">
<title>회원가입</title>

</head>
<body id="container">

<form:form modelAttribute="signUpForm">
	
	<div class="signUpbox">
		<h2>회원가입</h2>
		<hr></hr>
	</div>
	<div class="signUpbox">
		<form:input path="m_id" placeholder="아이디" id="m_id"/>
	</div>
	<div class="signUpbox">
		<form:password path="m_pass" placeholder="비밀번호" id="m_pass"/>
	</div>
	<div class="signUpbox">
		<form:password path="m_pass1" placeholder="비밀번호 확인" id="m_passchk"/>
	</div>
	<div class="signUpbox">
		<form:input path="m_name" placeholder="이름" id="m_name"/>
	</div>
	
	<div class="signUpbox">	
		<form:radiobutton path="m_gender" value="male"/>남
		<form:radiobutton path="m_gender" value="female"/>여
	</div>	
	
	<div class="signUpbox">	
		<form:input path="m_email1" id="emailid" placeholder="이메일 입력"/> 
			@<form:input path="m_email2" id="emailtext"/>
		<form:select path="emailselect" id="emailselect">
			<%
			String [] emailcode = {"직접 입력","daum.net","nate.com","naver.com",
					"gmail.com","hanmail.net"};
				
				for(int i=0;i<emailcode.length;i++){
			%>
			<form:option value="<%=emailcode[i]%>"></form:option>
			<%} %>
		</form:select>
	</div>
	<div class="signUpbox">	 
			
		<form:select path="m_homephone" id="homeNumber">	
			<%
				String [] homephone = {"02","051","053","032","062","042",
					"044","031","033","043","041","063","061",
					"054","055","064"};
			%>
			<%for(int i=0; i<homephone.length;i++){ %>
				<form:option value="<%=homephone[i] %>"></form:option>
			<%} %>
		</form:select>
		
		
		<form:input path="m_homephone" id="num" placeholder="-을 제외한 전화번호 입력"/>
	</div>
	
	<div class="signUpbox">	 
			
		<form:select path="m_cellphone" id="cellNumber">	
			<%
				String [] cellphone = {"010","011","016","019","017","018"};
			%>
			<%for(int i=0; i<cellphone.length;i++){ %>
				<form:option value="<%=cellphone[i] %>"></form:option>
			<%} %>
		</form:select>
		
		
		<form:input path="m_cellphone" id="num" placeholder="-을 제외한 휴대폰번호 입력"/>
	</div>
	
	
	<div class="signUpbox">
		<form:input path="m_zipcode1" id="post1"/>- 
		<form:input path="m_zipcode2" id="post2"/>
		<input type="button" onclick="openDaumPostcode()" value="우편번호찾기"/><br/>
		<form:input path="m_addr1" id="addr1"/>
		<form:input path="m_addr2" id="addr2" placeholder="상세 주소 입력"/>
	</div>
	
	<div class="signUpbox">
		<input type="submit" value="확인" id="but"/>&nbsp;
		<input type="reset" value="취소" id="but1" onclick="location.href='index.html'"/>
	</div>
</form:form>
</body>
</html>
