<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<style>

<%@include file="../headerCSS.jsp" %>

 		.conts_black_box {
            width: 700px;
            margin: 0 auto;
            padding: 90px 120px;
            background-color: #000;
        }

        .orangeText {
            color: orange
        }

        .txtalign {
            display: flex;
            justify-content: right;
        }

        .info#info__birth {
            display: flex;
        }

        .info#info__birth select {
            margin-left: 7px;
        }

        .info#info__birth select:first-child {
            margin-left: 0px;
        }

        .info#info__birth select::-webkit-scrollbar {
            width: 10px;
        }

        .info#info__birth select::-webkit-scrollbar-thumb {
            background-color: #b6b6b6;
            border-radius: 3px;
        }

        .info#info__birth select::-webkit-scrollbar-track {
            background-color: #ebe9e9;
            border-radius: 6px;
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

    <br><br><br>
    <article id="container" class="">
        <div class="conts_black_box">
            <h2 class="title text-white d-flex justify-content-center" style="font-weight: bold; margin-bottom: 30px; ">
                아이디 찾기</h2>
            <form action="/FindId.do" method="post" enctype="multipart/form-data">
                <fieldset>
                    <legend class="d-flex justify-content-center" style="border-bottom: solid gray; font-size: 16px; color: #8a8686; padding-bottom: 10px; margin-bottom: 35px;">한화이글스 회원 아이디 찾기</legend>

                        <div style="margin-top: 10px; margin-bottom: 30px; color: white">
                            <label for="userName">
                                <strong class="orangeText">* </strong>이름　　　　　
                            </label>
                            <input type="text" id="userName" name="userName" value="" required>
                        </div>

                        <div class="birth" style="margin-bottom: 30px; color: white;">
                            <label for="birth">
                                <strong class="orangeText">* </strong>생년월일　　　
                            </label>
                            <input id="birthdate" type="date" name="birthdate" name="userBirth" required>
                        </div>

                        <div class="email" style="color: white;">
                            <label for="userEm">
                                <strong class="orangeText">* </strong>이메일주소　　 </label>
                            <input type="text" title="이메일 주소" id="userEm" value="" name="userEm" class="col-4" required><span> @
                            </span><input type="text" id="userDm" name="userDm" title="이메일 도메인주소" class="col-3"
                                value="" required>
                            <label for="userEm2" class="blind" style="margin-top: 8px; margin-left: 12px;">도메인주소 　
                            </label>
                            <select id="selectDm" class="em2" style="margin-left: 11px;">
                                <option value="">직접입력</option>
                                <option value="gmail.com">gmail.com</option>
                                <option value="naver.com">naver.com</option>
                                <option value="hanmail.com">hanmail.net</option>
                            </select>
                        </div>
                    </fieldset>
                    </form>
                    <div style="margin-top: 15px; display: flex; justify-content: center;">
                        <input type="button" id="findIdAjax" value="완료" class="col-12 em"
                            style="background-color: #f37321; color: #ebe9e9;  border-radius: 13px ; height: 45px; border: 1px solid #f37321; margin-top: 30px;">
                    </div>
                       <input type="button" id="mainBtn" value="메인 화면으로 가기" class="col-12 em"
                            style="background-color: #f37321; color: #ebe9e9;  border-radius: 13px ; height: 45px; border: 1px solid #f37321; margin-top: 20px;">
                    <div style="height: 50px; weight: 500"></div>
                </div>
    </article>

	<!-- 모달 창 템플릿 -->
<div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content bg-black text-white" style="border: 2px solid white">
      <div class="modal-header" style="border-bottom-color: orange;">
        <h5 class="modal-title" id="loginModalLabel">아이디 찾기 결과</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="loginModalBody" >
        <!-- 모달 내용 -->
      </div>
      <div class="modal-footer"  style="border-top-color: orange;">
			<button type="button" class="btn btn-secondary" style="background-color: #f37321;" data-bs-dismiss="modal" onclick="findPwBtn()">비밀번호 찾기</button>
			<button type="button" id="closeBtn" class="btn btn-secondary" style="background-color: #f37321;" data-bs-dismiss="modal">닫기</button>     

 </div>
    </div>
  </div>
</div>



    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous">
        </script>
        
     <script>
     function findPwBtn(){
    	 window.location.href = "/FindPw.do";
     }
     
     $('#mainBtn').on('click',function(){
  	    window.location.href = "/Homepage.do";

     })
     
//      function redirectToHomepage() {
//  	    window.location.href = "/Homepage.do";
//  	  }
     
     /* 선택된 도메인 값 출력하기 */
     let domain = document.querySelector('#selectDm');
     let userDom = document.querySelector('#userDm');
     domain.addEventListener('change', function () {
         let dmIndex = domain.selectedIndex
         let dmText = domain.options[dmIndex].text
         if (dmIndex != 0) {

             // console.log("선택 된 도메인 값 >> ", dmText);
             userDom.value = dmText;
         } else {
             userDom.value = "";
         }

     });
     
     $('#findIdAjax').on('click', function(){
    	 let uName = $('#userName').val();
    	 let uBirth = $('#birthdate').val();
    	 let mail = $('#userEm').val();
    	 let dom = $('#userDm').val();
    	 let uMail = mail+"@"+dom;
    	 
    	 $.ajax({
    		    type: 'post',
    		    url: '/FindId.do',
    		    data: { userName: uName, birthdate: uBirth, memMail: uMail},
    		    success: function(data) {
    		    	
    		            console.log('data:', data);
//     		            console.log('result:', data.result == "fail");
    		       	
    		        let modalBody = $('#loginModalBody');
    		        
    		        if (data.result == "fail") {
    		            modalBody.html('해당 정보와 일치하는 아이디가 없습니다.');
    		            $('#loginModal').modal('show');
    		        } else {
    		            // 모달 창에 동적으로 아이디와 가입일자 추가
    		            modalBody.html('<p class="title text-white d-flex justify-content-center" style="font-size: 18px;"> 아이디는 　<em style="color: orange;">' + data.memId + '</em> 　입니다.</p><p class="d-flex justify-content-center" style="margin-top: 8px; color: #808080;">(가입일 : ' + data.memRegDate + ')</p>');
    		            $('#loginModal').modal('show');
    		            $('#closeBtn').on('click', function(){
          		           	 window.location.href = "/Homepage.do";
    		            });
    		            
    		           
    		        }
    		    },
    		    error: function(xhr) {
//     		    	alert("오류");
    		        let modalBody = $('#loginModalBody');
    		        modalBody.html('해당 정보와 일치하는 아이디가 없습니다.');
    		        $('#loginModal').modal('show');
    		    },
    		    dataType: 'json' // 서버에서 JSON 형식의 응답을 보내도록 설정해야 합니다.
    		});
     });
     
     
     </script>

</body>
</html>