<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
html, body {
    position: relative;
    padding: 0;
    margin: 0;
    color: #fff;
}
body {
    font-size: 100%;
    line-height: 1;
    word-break: break-all;
    word-break: keep-all;
    word-wrap: break-word;
    -webkit-text-size-adjust: none;
    background: #191919;
}
.conts_black_box {
    width: 700px;
    margin: 0 auto;
    padding: 90px 120px;
    background-color: #000;
}
div {
    display: block;
}
#container {
    overflow-x: hidden;
    font-family: 'HanwhaGothicB', sans-serif;
    padding-bottom: 230px;
}
</style>
</head>
<body>
<div id="wrap">
	<article id="container" class="utill_login">
		<div class="conts_black_box">
			<h2 class="title_dp1">LOGIN</h2>
			<p class="txt_desc">한화이글스 회원 로그인</p>
			<form name="LoginForm" id="LoginForm" method="post">
				<div class="list_form">
					<div class="row_hr">
						<strong class="label">아이디</strong>
						<div class="item_row">
							<div class="input_wrap">
									<!-- 유효성 검사 오류 시 .error 클래스 추가 -->
								<input type="text" id="vMemId" name="vMemId" title="아이디" value="">
							</div>
						</div>
					</div>
				<div class="row_hr">
					<strong class="label">비밀번호</strong>
					<div class="item_row">
						<div class="input_wrap">
							<input type="password" id="vMemPwd" name="vMemPwd" title="비밀번호">
						</div>
					</div>
				</div>
				<div class="row_hr_add">
					<div class="checkbox" id="saveId2">
						<input type="checkbox" id="saveId" name="saveId"> <label for="saveId">아이디 저장 </label>
					</div> 
				</div>
			</div>
					<!-- //.list_form -->
			</form>
			<div class="pgonate">
				<button type="button" class="btn_com em btnLogin">로그인</button>
			</div>
		</div>
	</article>
</div>

</body>
</html>