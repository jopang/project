<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<script type="text/javascript">
function zip_search() {
	window.open('login.jsp','','scrollbars=yes, width=450, height=250, top=300, left=300');
}
</script>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/table.css"> 
<title>회원정보 수정</title>

</head>
<body class="aaa">

<form name="writeForm" id="write" method="post" action="#">

<table>
	<tr>
		<td id="a1" colspan=2><p>회원정보 수정</p></td>
	</tr>
	<tr>
		<td id="a">아이디 : </td>
		<td><input type="text" value="${user.m_id}" id="text"/></td>
	</tr>
	<tr>
		<td id="a">비밀번호 : </td>
		<td><input type="password" value="" id="text"/></td>
	</tr>
	<tr>
		<td id="a">비밀번호확인 : </td>
		<td><input type="password" value="" id="text"/></td>
	</tr>
	<tr>
		<td id="a">이름 : </td>
		<td><input type="text" value="" id="text"/></td>
	</tr>
		<tr>
		<td id="a">성별 : </td>
		<td><input type="radio" value="" id="sex"/> 남자
			<input type="radio" value="" id="sex"/> 여자
		</td>
	</tr>
	<tr>
		<td id="a">이메일 : </td>
		<td><input type="text" value="" id="text"/> @<input type="text" value="" id="text"/>
		<select name="email2" id="email">
			<option value="naver.com">naver.com</option>
			<option value="daum.net">daum.net</option>
			<option value="nate.com">nate.com</option>
			<option value="hotmail.com">hotmail.com</option>
			<option value="google.com">google.com</option>
		</select>
		</td>
	</tr>
	<tr>
		<td id="a">전화번호 : 
		
		</td>
		
		<td>&nbsp; 
		<select id="phone">
			<option value="010">010</option>
			<option value="011">011</option>
		</select>&nbsp;- 
		<input type="text" value="" id="num"/>&nbsp;- 
		<input type="text" value="" id="num"/></td>
	</tr>
	<tr>
		<td id="a">주소 : </td>
		<td>&nbsp;
		<input type="text" value="" id="zip"/>&nbsp;- 
		<input type="text" value="" id="zip"/>&nbsp;
		<input type="button" value="우편번호찾기" onclick="zip_search();"/><br/>
		<input type="text" value="" id="address"/><br/>
		<input type="text" value="" id="address"/></td>
	</tr>
</table>
<input type="submit" value="수정" id="but"/>&nbsp;
<input type="reset" value="취소" id="but1" onclick="location.href='index.html'"/>
</form>
</body>
</html>