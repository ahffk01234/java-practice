<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    
<meta charset="UTF-8">
<title>로그인 하기</title>
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
        
        /* 모달창 생성시 bg 투명하게 */
        
 	.custom-modal {
    background-color: rgba(0, 0, 0, 0.5); /* 투명도 조정을 위해 rgba 색상 사용 */
  }
        
</style>
</head>
<body>
	<%@include file="../header.jsp" %>
	
	<!-- 로그인 창 상단에 이미지 추가 -->
    
    <div class="container-fluid p-5 bg-dark text-white text-center">
        <div>
            <div class="col">
                <img src="../../img/login/img_slogan_main2.png" width="50%">
            </div>
        </div>
    </div>

    <br><br><br>
    <article id="container" class="utill_login ">
        <div class="conts_black_box ">
            <h2 class="title text-white d-flex justify-content-center">LOGIN</h2>
            <br>
<!--             <form name="dcForm" id="dcForm" method="post">
                <input type="hidden" id="cDormancyYN" name="cDormancyYN" value="">
                <input type="hidden" id="rePasswdYn" name="rePasswdYn" value="">
                <input type="hidden" id="sleepYN" name="sleepYN" value="">
            </form> -->
            <form name="LoginForm" id="LoginForm" method="post" data-gtm-form-interact-id="0" enctype="multipart/form-data">
                <div class="list_form">
                    <div class="row_hr">
                        <strong class="label">아이디</strong>
                        <div class="item_row">
                            <div class="input_wrap">
                                <input class="col-12 form-control input-lg" type="text" id="userId" name="vMemId" title="아이디" value=""
                                    data-gtm-form-interact-field-id="0">
                            </div>
                        </div>
                    </div>
                    <div class="row_hr" style="margin-top: 10px;">
                        <strong class="label">비밀번호</strong>

                        <div class="item_row">
                            <div class="input_wrap">
                                <input class="col-12 form-control input-lg" type="password" id="userPw" name="vMemPwd" title="비밀번호"
                                    data-gtm-form-interact-field-id="1">
                            </div>
                        </div>
                    </div>
                    </div>
                    <!-- <div class="row_hr_add">
                        <div class="checkbox check" id="saveId2" style="margin-top: 15px;">
                            <input type="checkbox" id="saveId" name="saveId"> <label for="saveId">아이디 저장 </label>
                        </div>
                </div> -->

                    <!-- //.list_form -->
            </form>
            <div class="paginate" style="margin-top: 7px;">
                <button type="button" class="btn_com em btnLogin" id="loginAjax">로그인</button>
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
                    <div class="login_search text-center">
                        <a href="/FindId.do" class="txt_link ">아이디찾기</a>  | 
                        <a href="/FindPw.do" class="txt_link">비밀번호찾기</a>
                    </div>
                </div>
            </div>
            <!-- //.sns_login -->
        </div>
    </article>

    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous">
        </script>
       
       
<!-- 모달 창 템플릿 -->
<div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content bg-black text-white" style="border: 2px solid white">
      <div class="modal-header" style="border-bottom-color: orange;">
        <h5 class="modal-title" id="loginModalLabel">로그인 결과</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="loginModalBody" >
        <!-- 모달 내용 -->
      </div>
      <div class="modal-footer"  style="border-top-color: orange;">
        <button type="button" class="btn btn-secondary" style="background-color: #f37321;" data-bs-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>
       
        
   <script>
  $('#loginAjax').on('click', function() {
    let uId = $('#userId').val();
    let uPw = $('#userPw').val();

    $.ajax({
      type: 'post',
      url: '/Login.do',
      data: { userId: uId, userPw: uPw },
      success: function(data) {
        console.log("응답확인>>", data);
        let modalBody = $('#loginModalBody');

        if (data === "success") {
          modalBody.html('로그인에 성공하였습니다.'); // 로그인 성공 메시지
        } else {
          modalBody.html('로그인에 실패하였습니다.'); // 로그인 실패 메시지
        }

        $('#loginModal').modal('show'); // 모달 창 보여주기
        location.href = "/Homepage.do"; // 로그인 후 이동할 페이지
      },
      error: function(xhr) {
        let modalBody = $('#loginModalBody');
        modalBody.html('아이디 또는 비밀번호가 일치하지 않습니다.'); // 로그인 실패 메시지
        $('#loginModal').modal('show'); // 모달 창 보여주기
      },
      dataType: 'text', // 응답 데이터 타입을 'text'로 설정
    });
  });
</script>

        
        
	
</body>
</html>