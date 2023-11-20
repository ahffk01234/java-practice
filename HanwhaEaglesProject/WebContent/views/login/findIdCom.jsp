<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
<%@include file="../headerCSS.jsp" %>

.conts_black_box {
            width: 700px;
            margin: 0 auto;
            padding: 90px 120px;
            background-color: #000;
        }

        *:not(hr) {
            margin: 0;
            padding: 0;
            vertical-align: top;
            border: 0;
            outline-color: orange;
            box-sizing: border-box;
            -webkit-tap-highlight-color: transparent;
        }

        .btn_com {
            display: -ms-inline-flexbox;
            display: -webkit-inline-box;
            display: -webkit-inline-flex;
            display: inline-flex;
            width: 100%;
            height: 52px !important;
            padding-left: 8px !important;
            padding-right: 8px !important;
            border: 1px solid #808080;
            border-radius: 8px;
            color: #fff;
            font-family: 'HanwhaGothicEL', sans-serif;
            font-size: 16px;
            line-height: 50px !important;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            justify-content: center;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
            background-color: #f37321;
            margin-top: 20px;
        }

        .label {
            color: rgb(212, 207, 207);
            font-size: 15px;
        }

        .join-txt{
            text-align: center;
            color: rgb(212, 207, 207);
            font-size: 15px;
        }
        
        .txt_link{
            color:rgb(128, 126, 126);
            text-decoration: none;
            font-size: 15px;
        }


</style>
</head>
<body>

<%@include file="../header.jsp" %>

<div class="container-fluid p-5 bg-dark text-white text-center">
        <div>
            <div class="col">
                <img src="../../img/login/img_slogan_main2.png" width="50%">
            </div>
        </div>
    </div>

<% MemberVO mv = (MemberVO)request.getAttribute("mv"); %>

    <br><br><br>
    <article id="container" class="utill_login ">
        <div class="conts_black_box ">
            <h2 class="title text-white d-flex justify-content-center" style="border-bottom: solid 2px gray; padding: 10px;"> 아이디 찾기</h2>
                <br>
                <p class="title text-white d-flex justify-content-center" style="font-size: 18px;"> 아이디는 　<em style="color: orange;"> <%= mv.getMemId() %> </em> 　입니다.</p>
                <p class="d-flex justify-content-center" style="margin-top: 8px; color: #808080;">(<%= mv.getMemRegDate() %> 가입)</p>
                <p class="d-flex justify-content-center" style="margin-top: 8px; color: #808080;">가입한 계정으로 로그인하시면 <br>다양한 서비스를 이용하실 수 있습니다.</p>
            
            <div class="paginate" style="margin-top: 7px;">
                <button type="button" class="btn_com em btnLogin" id="logBtn">로그인</button>
                <button type="button" class="btn_com em btnLogin" id="findPwBtn">비밀번호 찾기</button>
            </div>
            <div class="sns_login">
                <!-- 
                        <h3 class="tit"><span>SNS LOGIN</span></h3>
                        <div class="sns_item">
                          <a href="#" title="새창" class="google"><span class="blind">Google</span></a>
                          <a href="#" title="새창" class="facebook"><span class="blind">Facebook</span></a>
                        </div>
                 -->
                <div class="login_type" style="margin-top: 10px;">
                    <p class="join-txt">
                        한화이글스 회원이 아니세요? <a href="/Join.do" class="txt_link em" style="color: orange;">회원가입</a>
                    </p>
                </div>
            </div>
            <!-- //.sns_login -->
        </div>
    </article>

<script>
        $('#findPwBtn').on('click', function(){
        	 window.location.href = "/FindPw.do";
        });
        
        $('#logBtn').on('click', function(){
        	window.location.href = "/Login.do";
        });
        
        
        </script>

</body>
</html>