<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>회원가입</title>
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
                회원가입</h2>
            <form action="/Join.do" method="post" enctype="multipart/form-data">
                <fieldset>
                    <legend class="text-white" style="border-bottom: solid gray;">기본정보</legend>
                    <span class="txtalign text-white" style="font-size: 14px;">
                        <em class="orangeText" style="margin-bottom: 30px;">*　</em>는 필수입력
                        사항입니다.
                    </span>

                    <div class="stp2_box text-white">
                        <div style="margin-bottom: 30px;">
                            <div class="id_box">
                                <label for="userID">
                                    <strong class="orangeText">* </strong>아이디　　　　</label>
                                <input type="text" id="userID" name="userID" value=""
                                required pattern="[a-zA-Z0-9]{6,20}">
                                
           							 <span id="disp" style="margin-left: 12px;"></span>
                                <br>
                            </div>
                            <em style="font-size: 12px; color: gray;">* 아이디는 영소문자, 숫자 포함 6자 이상을 입력해주세요.</em>

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
                            <label for="userName">
                                <strong class="orangeText">* </strong>이름　　　　　
                            </label>
                            <input type="text" id="userName" name="userName" value="" required>
                        </div>

                        <div style="margin-top: 10px; margin-bottom: 30px;">
                            <label for="userName">
                                <strong class="orangeText">* </strong>닉네임　　　　
                            </label>
                            <input type="text" id="nickname" name="nickname" value="" required>
                            <span id="disp2" style="margin-left: 12px;"></span>
                            <br>
                        </div>

                        <div class="cell" style="margin-bottom: 30px;">
                            <label for="cell">
                                <strong class="orangeText">* </strong>휴대폰번호　　
                            </label>
                            <input type="text" id="cell" maxlength="11" name="userCell" value="" required pattern="\d{11}">
                            <span id="disp3" style="font-size: 15px; margin-left: 12px;"></span>
                            <em style="font-size: 12px; color: gray; "> <br>* 휴대폰 번호는 하이픈(-) 구분 없이 숫자 11자리를 입력해
                                주세요.</em>
                        </div>

                        <div class="birth" style="margin-bottom: 30px;">
                            <label for="birth">
                                <strong class="orangeText">* </strong>생년월일　　　
                            </label>
                            <input id="birthdate" type="date" name="birthdate" name="userBirth" required>
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
                            <input type="text" id="userAddr" readonly name="userAddr" class="col-9" value="">

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
                            <div style="display: flex; justify-content: right;">
                                <input type="checkbox" id="agr" class="pc_tb">
                                <label for="agr" class="pc_tb ">이메일 수신 동의</label>
                            </div>
                            <em style="font-size: 12px; color: gray;"> * 이메일은 추후 아이디/비밀번호를 찾기 시 사용되니, 실제로 사용하시는
                                ‘이메일’을 기입해주세요.</em>
                        </div>
                    </div>
                </fieldset>
                <div style="margin-top: 15px; display: flex; justify-content: center;">
                    <input type="submit" value="완료" class="col-6 em"
                        style="background-color: #f37321; color: #ebe9e9;  border-radius: 13px ; height: 45px; border: 1px solid #f37321;">
                </div>
            </form>
        </div>
    </article>

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
</html>