<%@page import="eagles.shop.product.vo.MypageProductVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

/* 로그인 정보 */
String uId = (String) session.getAttribute("LogMemId");

/* 로그인 한 회원 정보 받아오기 */
IMemberService memService = MemberServiceImpl.getInstance();
MemberVO mv = new MemberVO();
mv = memService.getMember(uId);

%>    


    
<!DOCTYPE html>
<html lang="en">

<head>
    
    <meta charset="UTF-8">
    <title>마이 페이지</title>
    <!-- CSS only -->
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

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

.content-boarddiv {
    height: 1000px;
}


/* 게시글용 css */

/*
상단헤더에 덮어질 요소가 생기면 해볼것. 
.sticky-top {
    opacity: 0.6;
} */


/* 포지션고정, 우선순위최하위 */
.content-imgdiv img {
    position : fixed;
    z-index : -1;
    right : 1px;
    /* top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: -1; */
}

/* 그림이랑 겹쳐서 공간만들어주는 빈div */
.content-div,
.content-emptynav {
    display: flex;
    flex: 1;
    height : 350px
}

/* 중단그라데이션 */
.needgdt { 

    background-image: linear-gradient(to left, rgba(0, 0, 0, 0), black);
    height : 50px;
}

.content-board {
	margin : 0px;
}

.board_menu {
	height : 100px;
}

.board-header {
	margin-left: 20px;
}

.board-idv:focus {

}


#container {
  background-color: rgba(0, 0, 0, 0.7);
    
  }

</style>
</head>
<body>


	<%@include file="../header.jsp" %>
	
    <nav class="container-fluid content-imgnav">
        <div class="content-imgdiv">
             <img src="../../img/commonImg/bg_header_fan.jpg">
        </div>
   </nav> 


	<nav>
   		<nav class="content-emptynav">
    	     <div class="content-emptydiv">
            	<!-- 빈공간영역 설정 -->
        	 </div>
    	</nav>

    	<nav class="needgdt">
			<nav class="content-header navbar-expand-lg" style="padding: 0px 10px 0px 10px; ">
                <a href="" class="nav-link text-white">
                    <div class="row collapse navbar-collapse board-div">
                         <ul class="navbar-nav content-div board_menu">	     
                         	<li class="col col-1" id="PCFACN"><a href="" class="nav-link text-white"><span style="width: 0px;"></span> </a></li>                				
                            <li class="col col-1" id="PCFACN" style="margin-right: 20px;"><a href="" class="nav-link" style="color: orange;"><span style="width: 0px;"></span>내정보내역</a></li>
                            <li class="col col-1" id="PCFACN" ><a href="http://localhost:8888/mypage/basketList.do" class="nav-link text-white"><span style="width: 0px;"></span>장바구니</a></li>                                                     
                            <li class="col col-1" id="PCFACN" style="margin-right: 30px;"><a href="http://localhost:8888/mypage/productList.do" class="nav-link text-white"><span style="width: 0px;"></span>굿즈구매내역</a></li>
                            <li class="col col-1" id="PCFAFT" style="margin-right: 30px;"><a href="http://localhost:8888/myticketPay.do" class="nav-link text-white"><span style="width: 0px;"></span>티켓예매내역</a></li>
                            <li class="col col-1" id="PCFAFT" style="margin-right: 30px;"><a href="http://localhost:8888/myticketPayCancel.do" class="nav-link text-white"><span style="width: 0px;"></span>티켓환불내역</a></li>
                            <li class="col col-1" id="PCFAGL" style="margin-right: 10px;"><a href="" class="nav-link text-white"><span style="width: 0px;"></span>쿠폰현황</a></li>
                        </ul>
                      </div>
                </a>
			</nav>
			</nav>
		</nav>
		
			<!-- 컨텐츠영역 -->

		
		 <div class="overlay"></div>
    <article id="container"  class="arti" >
        <div class="conts_black_box" >
            <h2 class="title text-white d-flex justify-content-center" style="font-weight: bold; margin-bottom: 30px;">
                개인정보수정</h2>
            <form method="post" enctype="multipart/form-data">
                <fieldset>
                    <legend class="text-white" style="border-bottom: solid gray;">기본정보</legend>
                    <span class="txtalign text-white" style="font-size: 14px;">
                        <em class="orangeText" style="margin-bottom: 30px;">*　</em>는 필수입력
                        사항입니다.
                    </span>

                    <div class="stp2_box text-white">
                        <div style="margin-bottom: 30px;">
                            <div class="id_box">
                                <label for="userID" style="margin-left: 12px;">
                                    <strong> </strong>아이디　　　　</label>
                                <input type="text" id="userID" name="userID" value="<%=mv.getMemId() %>"
                                required pattern="[a-zA-Z0-9]{6,20}" readonly style="background-color: gray;">
                                
           							 <span id="disp" style="margin-left: 12px;"></span>
                                <br>
                            </div>

                        </div>

                        <div>
                            <div class="id_box">
                                <label for="userPw">
                                    <strong class="orangeText">* </strong>비밀번호　　　
                                </label>
                                <input type="password" id="userPw" onkeyup="checkPasswordMatch()"	 name="userPw" value="" pattern="[a-zA-Z0-9!@#$%^&*]{8,}" required >
                            	<span id="disp4" style="font-size: 15px; margin-left: 12px; color: red"></span>
                            </div>
                            <em style="font-size: 12px; color: gray; "> * 비밀 번호는 영소문자, 숫자,
                                특수문자(`~!@#$%^&amp;*|\'";:/?) 포함
                                <br>8자 이상을 입력해주세요.</em>
                        </div>

                        <div style="margin-top: 10px; margin-bottom: 30px;">
                            <label for="userPw2">
                                <strong class="orangeText">* </strong>비밀번호확인　
                            </label>
                            <input type="password" id="userPw2" name="userPw2" value="" onkeyup="checkPasswordMatch()" required>
                        	<br>
                        	<span id="passwordMatchError" style="color: orange; font-size: 12px;"> </span>
                        </div>

                        <div style="margin-top: 10px; margin-bottom: 30px;">
                            <label for="userName" style="margin-left: 12px;">
                                <strong ></strong>이름　　　　　
                            </label>
                            <input type="text" id="userName" name="userName" value="<%=mv.getMemName() %>" required readonly style="background-color: gray;">
                        </div>

                        <div style="margin-top: 10px; margin-bottom: 30px;">
                            <label for="userName">
                                <strong class="orangeText">* </strong>닉네임　　　　
                            </label>
                            <input type="text" id="nickname" name="nickname" value="<%=mv.getMemNickname() %>" required>
                            <span id="disp2" style="margin-left: 12px;"></span>
                            <br>
                        </div>

                        <div class="cell" style="margin-bottom: 30px;">
                            <label for="cell">
                                <strong class="orangeText">* </strong>휴대폰번호　　
                            </label>
                            <input type="text" id="cell" maxlength="11" name="userCell" value="<%=mv.getMemTel() %>" required pattern="\d{11}">
                            <span id="disp3" style="font-size: 15px; margin-left: 12px;"></span>
                            <em style="font-size: 12px; color: gray; "> <br>* 휴대폰 번호는 하이픈(-) 구분 없이 숫자 11자리를 입력해
                                주세요.</em>
                        </div>
		
                        <div class="birth" style="margin-bottom: 30px;">
                            <label for="birth">
                                <strong></strong>생년월일　　　
                            </label>
                            <input id="birthdate" type="date" name="birthdate" name="userBirth" value="" required style="background-color: gray;" readonly="readonly">
                        </div>

						

                        <div>
                            <label for="userAddr">　 지번 　 </label>
                            <input type="text" id="userAddrNo" disabled="" name="userAddrNo" class="col-7" value=""
                                style="margin-bottom: 7px;">
                            <button id="addrAPI" type="button" class="chk_jnStep"
                                style="background-color: gray; font-size: 15px;">주소찾기</button>
                        </div>
                        <div>
                            <label for="userAdrs">　 주소 　 </label>
                            <input type="text" id="userAddr" readonly value="<%= mv.getMemAddr() %>" name="userAddr" class="col-9" value="">

                        </div>
                        <div class="adress2" style="margin-top: 7px; margin-bottom: 30px;">
                            <label for="">&nbsp;<span class="blind">추가 주소 </span>
                            </label>
                            <input type="text" class="col-9" id="userAddr2" title="추가주소" name="userAddr2" value="">
                        </div>

                        <div class="email">
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
<!--                             <div style="display: flex; justify-content: right;"> -->
<!--                                 <input type="checkbox" id="agr" class="pc_tb"> -->
<!--                                 <label for="agr" class="pc_tb ">이메일 수신 동의</label> -->
<!--                             </div> -->
                            <em style="font-size: 12px; color: gray;"> <br> * 이메일은 추후 아이디/비밀번호를 찾기 시 사용되니, 실제로 사용하시는
                                ‘이메일’을 기입해주세요.</em>
                        </div>
                    </div>
                </fieldset>
                <div style="margin-top: 15px; display: flex; justify-content: center;">
                    <input type="button" id="updateBtn" value="완료" class="col-6 em"
                        style="background-color: #f37321; color: #ebe9e9;  border-radius: 13px ; height: 45px; border: 1px solid #f37321;">
                </div>
            </form>
            <div class="d-flex justify-content-end">
            <input type="button" id="byeBtn" value="회원탈퇴" style="color: gray; font-size: 14px; background-color: black; border: solid 1px black; text-decoration: underline; margin-top: 20px;">
            </div>
        </div>
    </article>
    
    <!-- 모달 창 템플릿 -->
<div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content bg-black text-white" style="border: 2px solid white">
      <div class="modal-header" style="border-bottom-color: orange;">
        <h5 class="modal-title" id="loginModalLabel">개인정보수정 결과</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="loginModalBody" >
        <!-- 모달 내용 -->
      </div>
      <div class="modal-footer"  style="border-top-color: orange;">
        <button type="button" class="btn btn-secondary" id="closeBtn" style="background-color: #f37321;" data-bs-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>

<!-- 회원탈퇴 -->
<div class="modal fade" id="byeModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content bg-black text-white" style="border: 2px solid white">
      <div class="modal-header" style="border-bottom-color: orange;">
        <h5 class="modal-title" id="loginModalLabel">회원탈퇴</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="byeModalBody" >
        회원탈퇴 된 아이디는 복구되지 않습니다. <br> 회원탈퇴를 원하시면 <em style="color: orange;"> 확인 </em> 버튼을 클릭해주세요.
      </div>
      <div class="modal-footer" style="border-top-color: orange;">
      <button type="button" class="btn btn-secondary" id="closeBtn" style="background-color: #f37321;" data-bs-dismiss="modal">뒤로 가기</button>
      <button type="button" class="btn btn-secondary" id="yesBtn" style="background-color: #f37321;" >확인</button>
</div>
</div>
</div>
    </div>

 <!-- 회원탈퇴 완료 템플릿 -->
<div class="modal fade" id="byebyeModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content bg-black text-white" style="border: 2px solid white">
      <div class="modal-header" style="border-bottom-color: orange;">
        <h5 class="modal-title" id="loginModalLabel">개인정보수정 결과</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="byebyeModalBody" >
        <!-- 모달 내용 -->
      </div>
      <div class="modal-footer"  style="border-top-color: orange;">
        <button type="button" class="btn btn-secondary" id="byeCloseBtn" style="background-color: #f37321;">닫기</button>
      </div>
    </div>
  </div>
</div>
    
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous">
        </script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
        window.onload = function () {
            document.querySelector('#addrAPI').addEventListener('click', function () {
                // 카카오 지도 발생
                new daum.Postcode({
                    oncomplete: function (data) { //선택시 입력값 세팅
                        document.querySelector('#userAddrNo').value = data.zonecode; // 지번 넣기
                        document.querySelector('#userAddr').value = data.address; // 주소 넣기
                        document.querySelector('#userAddr2').focus(); //상세입력 포커싱
                    }
                }).open();
            });
        }

        // 생년월일 값 대입
        var birthdateStr = '<%=mv.getMemBirth() %> '; // mv.getMemBirth()로부터 반환된 문자열
        var birthdateParts = birthdateStr.split('-'); // 날짜 문자열을 '-'로 분리하여 배열로 저장

        var year = parseInt(birthdateParts[0]); // 연도
        var month = parseInt(birthdateParts[1]) - 1; // 월 (0부터 시작하기 때문에 1을 빼줌)
        var day = parseInt(birthdateParts[2]) + 1;; // 일

        var birthdate = new Date(year, month, day); // Date 객체로 직접 생성

        // 변환된 Date 객체를 input 요소의 value 속성에 할당
        document.getElementById('birthdate').value = birthdate.toISOString().split('T')[0];
        

     	// 회원탈퇴 버튼 이벤트
        $('#byeBtn').on('click', function(){
          $('#byeModal').modal('show');
          
          // 확인버튼 누를 시
          $('#yesBtn').on('click', function(){
        	  console.log('클릭됨');
        	  let uId = $('#userID').val();
        	  
           	$.ajax({
              url: '/DeleteId.do',
              method: 'post', 
              data: { userId : uId },
              success: function(data) {
            	  console.log("응답확인 >> " , data);
                if (data === "success") {
                  $('#byebyeModalBody').html('회원탈퇴에 성공하였습니다.');
                  $('#byebyeModal').modal('show');
                  $('#byeCloseBtn').on('click', function(){
                    window.location.href = "/Logout.do";
                  });
                } else {
                	 $('#byebyeModalBody').html('회원탈퇴에 실패하였습니다.');
                     $('#byebyeModal').modal('show');
                }
              },
              error: function(xhr) {
					alert(xhr);                
              },
              dataType: 'text'
            });
          });
        });
        
        // 회원정보 변경 완료 버튼
        $('#updateBtn').on('click', function(){
        	console.log('뭘 자꾸 눌러');
        	let uId = $('#userID').val();
        	let uPw = $('#userPw').val();
        	let uName = $('#userName').val();
        	let uNick = $('#nickname').val();
        	let uTel = $('#cell').val();
        	let uBirth = $('#birthdate').val();
        	
        	let uEm = $('#userEm').val();
        	let uDm = $('#userDm').val();
        	let uEmail = uEm + "@" + uDm;
        	
        	let add1 = $('#userAddr').val();
        	let add2 = $('#userAddr2').val();
        	let uAddr = add1 + " " + add2;
        	
        	$.ajax({
        		type: 'post',
        		url: '/MyPageMem.do',
        		data: { userId: uId, userPw: uPw, userName: uName, 
        			nickname: uNick, userCell: uTel, birthdate: uBirth, 
        			userMail: uEmail, userAddr: uAddr },
        		success: function(data){
        			console.log("응답확인 >> " , data);
        			let modalBody = $('#loginModalBody');
        			
        			 if (data === "success") {
        					 modalBody.html('개인정보변경에 성공하였습니다.'); 
       		       	 		 $('#loginModal').modal('show');
       		       	  		$('#closeBtn').on('click', function(){
          		           	 window.location.href = "/Homepage.do";
     		            	});
        		          
        		        } else {
        		        	modalBody.html('개인정보변경에 실패하였습니다.'); 
        		        	$('#loginModal').modal('show'); 
        		        }

//         		        location.href = "/Homepage.do"; // 로그인 후 이동할 페이지
        		      },
        		      error: function(xhr) {
        		        let modalBody = $('#loginModalBody');
        		        modalBody.html(xhr.status);
        		        $('#loginModal').modal('show'); // 모달 창 보여주기
        		      },
        		      dataType: 'text', // 응답 데이터 타입을 'text'로 설정
        		    });
        		  });
        
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
     
     // 전화번호 입력('-' 이벤트)
        $('#cell').on('input', function(){
            let celVal = $('#cell').val();
            
            let pattern = /^[0-9]{11}$/;
            
            if(pattern.test(celVal)){
                $('#disp3').text('');
            } else {
                $('#disp3').text('숫자만 입력 가능').css('color', 'red');
            }
        });
        
     // AJAX로 닉네임 중복검사
        $('#nickname').on('input', function(){
            let nnVal = $('[name=nickname]').val();
            
            // 패턴 정규식
            let pattern = /^[a-zA-Z0-9가-힣]{1,20}$/;
            
            if (pattern.test(nnVal)) {
                // 유효한 패턴일 때만 AJAX 요청 보냄
                $.ajax({
                    type: 'post',
                    url: '/views/login/nickChk.jsp',
                    data: {nnVal: nnVal},
                    dataType: 'json',
                    success: function(response){
                        if(response.isAvailable){
                            $('#disp2').text(response.message).css('color', 'orange');
                        } else {
                            $('#disp2').text(response.message).css('color', 'red');
                        } 
                    },
                    error: function(xhr) {
                        alert(xhr.status);
                    }
                });
            } else {
                // 패턴이 유효하지 않을 때
                $('#disp2').text('사용불가').css('color', 'red');
            }
        });
        
     // AJAX로 ID 중복검사
        $('#userID').on('input', function(){
            let idVal = $('#userID').val();
            
            // 정규식 패턴: 숫자와 영문자로만 이루어진 6글자 이상
            const regex = /^[A-Za-z0-9]{6,}$/;
            
            if (!regex.test(idVal)) {
                $('#disp').text('사용불가').css('color', 'red');
                return; // 패턴 불일치 시 함수 종료
            }
            
            $.ajax({
                type: 'post',
                url: '/views/login/idChk.jsp',
                data: {uId: idVal},
                dataType: 'json',
                success: function(response) {
                    if (response.isAvailable) {
                        $('#disp').text(response.message).css('color', 'orange');
                    } else {
                        $('#disp').text(response.message).css('color', 'red');
                    }
                },
                error: function(xhr) {
                    alert(xhr.status);
                }
            });
        });
        
     // 비밀번호 확인
        function checkPasswordMatch() {
            let pw1 = document.querySelector('#userPw').value;
            let pw2 = document.querySelector('#userPw2').value;
            
            let pwMSG = document.querySelector('#passwordMatchError');
            let disp4 = document.querySelector('#disp4');
            
            if (pw1 !== pw2) {
                pwMSG.textContent = " 　　　　　　　　　　　※ 비밀번호가 일치하지 않습니다.";
            } else {
                pwMSG.textContent = "　";
            }
            
            if (pw1.length < 8) {
                disp4.textContent = "사용불가";
            } else {
                disp4.textContent = "　";
            }
            
            console.log(pwMSG.value);
        }
    </script>
</body>
</head>
</html>