<%@page import="eagles.forecast.vo.ForecastVO"%>
<%@page import="eagles.forecast.vo.TalkVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

List<TalkVO> talkList = (List<TalkVO>)request.getAttribute("talkList");
List<ForecastVO> forecastList = (List<ForecastVO>)request.getAttribute("forecastList");

int totalVotes = forecastList.size();

int homeWinVotes = 0;
int awayWinVotes = 0;

for (ForecastVO vo : forecastList) {
    if (vo.getTeamCd().equals("01")) {
        homeWinVotes++;
    } else if (vo.getTeamCd().equals("09")) {
        awayWinVotes++;
    }
}


%>


<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <title>승부예측 결과</title>

    <!-- jQuery 추가함 -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <style>
    
    /* 추가된부분 */
    .form-control {
            border-color: orange;
            box-shadow: none;
        }
        .form-control:focus {
            border-color: orange;
            box-shadow: none;
        }
        .comment-form {
            flex: 1;
            margin-right: 50px; /* 폼과 응원하기 버튼 사이 간격 조정 */
        }
        .comment-btn {
            width: 200px; /* 응원하기 버튼 너비 조정 */
        }
        .alert-secondary {
            background-color: #444;
        }
    /* /////////////////////////////////////////////////////////////////////////// */    

    

    #home-progress-bar {
      background-color: #007bff;
      border-radius: 10px;
      height: 100%;
      transition: width 0.3s ease-in-out;
    }

    #away-progress-bar {
      background-color: #dc3545;
      border-radius: 10px;
      height: 100%;
      transition: width 0.3s ease-in-out;
    }
    <%@include file="../headerCSS.jsp" %>


    </style>


</head>




<body>

<% 
String memId = (String) session.getAttribute("LogMemId");
%>

<input type="hidden" name="totalVotes" value="<%= totalVotes %>">
<input type="hidden" name="homeWinVotes" value="<%= homeWinVotes %>">
<input type="hidden" name="awayWinVotes" value="<%= awayWinVotes %>">


   <nav class="navbar sticky-top navbar-expand-lg bg-black">

      <div class="col-1 container-fluid">
         <a class="navbar-brand" href="/Homepage.do"> <img src="/img/commonImg/h_logo.png"
            alt="Logo" width="90" height="60" style="margin-left: 40px;"
            class="d-inline-block align-text-top"></a>
         <button class="navbar-toggler" type="button"
            data-bs-toggle="collapse" data-bs-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
         </button>
      </div>
      <div class="col-8 collapse navbar-collapse" id="navbarNav">

         <ul class="navbar-nav fs-5">

            <li class="nav-item" style="margin-right: 20px;"><a class="nav-link text-white" href="#">EAGLES</a>
               <ul class="sub-menu bg-black fs-6">
                  <a href="http://localhost:8888/intro/teamintro.do" style="margin-right: 10px;">구단소개 </a>
                  <a href="/MN/HI/MNHI01.do">HISTORY </a>
               </ul></li>

            <li class="nav-item" style="margin-right: 20px;"><a class="nav-link text-white" href="#">PLAYER</a>
               <ul class="sub-menu bg-black fs-6">
                  <a href="/" style="margin-right: 10px;">코칭스탭 </a>
                  <a href="http://localhost:8888/players/TwoSoo.do" style="margin-right: 10px;">투수 </a>
                  <a href="/" style="margin-right: 10px;">포수 </a>
                  <a href="http://localhost:8888/players/InBeast.do" style="margin-right: 10px;">내야수 </a>
                  <a href="http://localhost:8888/players/OutBeast.do" style="margin-right: 10px;">외야수 </a>
                  <a href="/" style="margin-right: 10px;">군입대 선수 </a>
                  <a href="/" style="margin-right: 10px;">응원단 </a>
                  <a href="/" style="margin-right: 10px;">STAFF </a>
               </ul></li>

            <li class="nav-item" style="margin-right: 20px;"><a class="nav-link text-white" href="#">GAME</a>
               <ul class="sub-menu bg-black fs-6">
                  <a href="/gamelist" style="margin-right: 10px;">1군 경기일정 </a>
               </ul></li>


            <li class="nav-item" style="margin-right: 20px;"><a class="nav-link text-white" href="#">FAN</a>
               <ul class="sub-menu bg-black fs-6">
                  <a href="/TeamBoard.do" style="margin-right: 10px;">구단소식 </a>
                  <a href="/BoardMain.do" style="margin-right: 10px;">팬 타임즈 </a>
                  <a href="http://localhost:8888/gall.do" style="margin-right: 10px;">갤러리 </a>
               </ul></li>

            <li class="nav-item" style="margin-right: 20px;"><a class="nav-link text-white" href="/forecast.do">승부예측</a>
            </li>

            <li class="nav-item" style="margin-right: 20px;"><a class="nav-link text-white" href="http://localhost:8888/shop/productMain.do">SHOP</a>
            </li>

            <li class="nav-item" style="margin-right: 20px;"><a class="nav-link text-white" href="/ticket">TICKET</a>
            </li>
            <li class="nav-item" style="margin-right: 20px;"><a class="nav-link text-white"
               target="_blank"
               href="https://sporki.com/kbaseball/schedule/todaygame?teamSeq=170&amp;utm_source=hanhwaeagles&amp;utm_medium=affiliate&amp;utm_campaign=kbase_game&amp;utm_content=eagles_banner">
                  실시간중계보기</a></li>
         </ul>
      </div>
      <div class="col-3 collapse navbar-collapse" id="navbarNav">
         <ul class="navbar-nav">
         
<% 
if(memId != null){
   if(memId.equals("MANAGER")){
      %>
      <li class="nav-item"><a class="nav-link text-white" href="/ManagerPage.do"
               title="관리자페이지"><svg xmlns="http://www.w3.org/2000/svg"
                     width="16" height="16" fill="currentColor" class="bi bi-person"
                     viewBox="0 0 16 16">
                            <path
                        d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z" />
                        </svg></a></li>
      
      
      <%
   }else{
%>   
            <li class="nav-item"><a class="nav-link text-white" href="/MyPageMem.do"
               title="마이페이지"><svg xmlns="http://www.w3.org/2000/svg"
                     width="16" height="16" fill="currentColor" class="bi bi-person"
                     viewBox="0 0 16 16">
                            <path
                        d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z" />
                        </svg></a></li>
<% } %>
            <li class="nav-item"><a class="nav-link text-white" href="/mypage/basketList.do"
               title="장바구니"><svg xmlns="http://www.w3.org/2000/svg" width="16"
                     height="16" fill="currentColor" class="bi bi-bag"
                     viewBox="0 0 16 16">
                            <path
                        d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1zm3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4h-3.5zM2 5h12v9a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V5z" />
                        </svg></a></li>
            <li class="nav-item"><a class="nav-link text-white" href="/common/stadiumMap.do"
               title="경기장"><svg xmlns="http://www.w3.org/2000/svg" width="16"
                     height="16" fill="currentColor" class="bi bi-geo-alt"
                     viewBox="0 0 16 16">
                            <path
                        d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z" />
                            <path
                        d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
                        </svg></a></li>
                        
<% } %>

<% 
if(memId != null){
%>   

            <li><a href="#" class="nav-link text-white" data-bs-toggle="modal" data-bs-target="#logoutModal">LOGOUT</a></li>

            

<% 
}else{ 
%>
   
            <li><a href="/Login.do" class="nav-link text-white">LOGIN</a></li>

            <li><a href="/Join.do" class="nav-link text-white">JOIN US</a></li>
   
<%   
}
   %>

         </ul>
      </div>

   </nav>


		




   <div class="sidebar">
      <nav class="navbar">
         <ul class="navbar-nav">
            <li class="nav-item"><a class="nav-link"
               href="https://www.youtube.com/channel/UCdq4Ji3772xudYRUatdzRrg"><img
                  src="../../img/commonImg/quick_sns_youtube.png" title="유튜브"></a></li>
            <li class="nav-item"><a class="nav-link"
               href="https://www.facebook.com/hanwhaeagles.news/"><img
                  src="../../img/commonImg/quick_sns_facebook.png" title="페이스북"></a></li>
            <li class="nav-item"><a class="nav-link"
               href="https://www.instagram.com/hanwhaeagles_soori/"><img
                  src="../../img/commonImg/quick_sns_insta.png" title="인스타그램"></a></li>
            <li class="nav-item"><a class="nav-link"
               href="https://twitter.com/hoodi_thespace"><img
                  src="../../img/commonImg/quick_sns_twitter.png" title="트위터"></a></li>
         </ul>
      </nav>
   </div>
   
     <nav class="row navbar fixed-bottom navbar-expand-sm navbar-dark bg-black">
        <div class="col-11 container-fluid">
            <a class="navbar-brand" href="#">한화이글스</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
                aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                    </li>

                    <li class="nav-item dropup">
                        <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown"
                            aria-expanded="false">Dropup</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">Action</a></li>
                            <li><a class="dropdown-item" href="#">Another action</a></li>
                            <li><a class="dropdown-item" href="#">Something else here</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <div class="col-1 container-fluid">
            <li class="nav-item">
                <a class="nav-link active text-white" aria-current="page" href="#">
                    ↑ 맨위로 
                </a>
            </li>
        </div>
    </nav>



    <!--///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
    <!--///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
    <!--///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
    <!--///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
    <!--///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->

    
    <!-- 슬로건 로고 부분 -->
    <div class="container-fluid p-5 bg-dark text-white text-center">
        <div class="row">
            <div class="col">
                <div>
                    <img src="/img/login/img_slogan_main2.png" width="50%">
                </div>
            </div>
        </div>
    </div>


	<% 

   if(memId.equals("MANAGER")){
      %>
      <br><br><br>
      <div class="row">
      <div class="col-2"></div>
      <div class="col-8 text-center text-white">
      
		<button type="button" id="gameresult" class="col-8 btn btn-outline-light">경기결과 입력</button>
      
      
      </div>
      
      
      
      <div class="col-2"></div>
      
      </div>
      
      <br>
      <%
   }else{
	   %>
	   <div> </div>
<% 	   
   }
%>  


	<!-- 페이지 로드 모달창 -->
    
	<!-- 모달 창 -->
	<div class="modal" id="gameresultmodal" tabindex="-1" role="dialog">
	  <div class="modal-dialog modal-dialog-centered" role="document">
	    <div class="modal-content bg-black text-white">
	      <div class="modal-header" style="border-bottom-color: orange;">
	        <h5 class="modal-title" style="color: orange;">◎</h5>
	        <h5 style="margin-top: 10px; padding-left: 10px;">승부 예측 이벤트</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        경기 결과를 입력해주세요 (한화 : (원정팀))
	        <input type="text" id="resultInput" class="form-control" placeholder="경기 결과를 입력하세요">
	      </div>
	      <div class="modal-footer" style="border-top-color: orange;">
	        <button type="button" id="gameresultsubmit" class="btn btn-warning" data-bs-dismiss="modal">확인</button>
	      </div>
	    </div>
	  </div>
	</div>



    <!-- 승부 예측 상단 부분-->
    <div class="container-fluid text-white">
        <div class="row">
            <div class="col-1"></div>
            <div class="col">
                <hr style="color: white;">
                <h1>승부 예측</h1>
                <hr style="color: white;">
            </div>
            <div class="col-1"></div>
        </div>
    </div>

    <!-- 홈 경기 로고, 이글스파크 로고, 원정팀 로고(상대팀에 따라 수정) -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4 text-center">
                <img src="/img/forecast/한화.png" style="padding-top: 35px;" alt="한화이글스">
            </div>
            <div class="col-md-4 text-center">
                <img src="/img/forecast/한화이글스파크.png" alt="">
            </div>
            <div class="col-md-4 text-center">
                <img src="/img/forecast/롯데.png" style="padding-top: 35px;" alt="두산베어스">
            </div>
        </div>
    </div>

    <!-- 승부 예측 버튼, 승부 예측 퍼센트 -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-4 text-center">
                <button type="button" class="btn btn-primary btn-lg w-50"  data-bs-target="#staticBackdrop" id="homewin">홈팀 승리</button>
            </div>
            <div class="col-4">
                <h2 class="text-center text-white bg-dark rounded">한화생명 이글스파크</h2>
                <div class="progress">
                    <div class="progress-bar home-progress-bar" id="home-progress-bar" role="progressbar" style="width: 0%;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                    <div class="progress-bar away-progress-bar" id="away-progress-bar" role="progressbar" style="width: 0%;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <div class="text-center">
                    <span id="home-percentage" style="color: #007bff;">0%</span>
                    <span> - </span>
                    <span id="away-percentage" style="color: #dc3545;">0%</span>
                </div>
            </div>
            <div class="col-4 text-center">
                <button type="button" class="btn btn-danger btn-lg w-50"  data-bs-target="#staticBackdrop" id="awaywin">원정팀 승리</button>
            </div>
        </div>
    </div>

    <br>

    <!-- 실시간 응원톡 컨테이너 -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-1"></div>
            <div class="col">
                <hr style="color: white;">
                <p class="text-white">실시간 응원톡 </p>
            </div>
            <div class="col-1"></div>
        </div>
    </div>

    <!-- 응원 폼, 응원 수 -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-1"></div>
            <div class="col">
                <form>
                    <div class="row"> 
                        <div class="col-10 comment-form"> 
                            <div class="mb-1 text-white">
                                <textarea class="form-control" id="comment" rows="1" placeholder="과도한 비방성 댓글은 모니터링이 될 수 있습니다."></textarea>
                            </div>
                        </div>
                        <div class="col-2" style="margin-left: 70px;"> 
                            <button type="submit" class="btn btn-warning comment-btn" id="submit-button">응원하기</button>
                        </div>
                    </div>
                </form>
                <hr style="color: white;">
                <div>
                    <p id="comment-count" class="text-white">응원 수 : <%=talkList.size() %></p>
                </div>
            </div>
            <div class="col-1"></div>
        </div>
    </div>
    
    <!-- 입력한 댓글 표시되는 창 -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-1">

            </div>
            <div class="col-10">
            
<%            
            int talkSize = talkList.size();
			if(talkSize == 0){				
%>				
				<div>
            	아직 등록된 응원톡이 없습니다
            	
            	</div>


<%
			}else{
            
            
            for(TalkVO tv : talkList){
%>
            	<div id="comment-section" class=text-white>
            	
            	<%=tv.getTalkContent() %>
            	</div>
            
<%

            }
		}
%> 
            
            <!--  
                <div id="comment-section">
                    
                </div>
            
             -->
                
                
                
            </div>
            <div class="col-1"></div>
        </div>
   </div>

    <!-- 페이지 로드 모달창 -->
    <div class="modal" id="confirmModal" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true" data-bs-backdrop="static" data-bs-keyboard="false">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content bg-black text-white">
                <div class="modal-header" style="border-bottom-color: orange;">
                    <h5 class="modal-title" style="color: orange;">◎</h5><h5 style="margin-top: 10px; padding-left: 10px;" > 승부 예측 이벤트</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body text-center">
                    	<h4>경기결과<h4></h4> <br>
                    	한화 vs 롯데<br>
                    	6:2<br>
                    	할인쿠폰 당첨자 : lcbean1008, ohhoeagles
                    	<br>
                    	<br>
                    	<a href="/Homepage.do" class="btn btn-warning">확인</a>
                </div>
                <div class="modal-footer" style="border-top-color: orange;">
                    
                </div>
            </div>
        </div>
    </div>
    
    <!-- 홈승리, 원정승리 예측버튼 모달창 -->
    <div class="modal fade" id="staticBackdrop" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true" data-bs-backdrop="static" data-bs-keyboard="false">
        <div class="modal-dialog">
            <div class="modal-content bg-black text-white">
            <div class="modal-header" style="border-bottom-color: orange;">
                <h5 class="modal-title" id="resultModalLabel" style="color: orange;">◎</h5><h5 style="margin-top: 10px; padding-left: 10px;">이벤트 참여 완료</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <p id="resultText"></p>
            </div>
            <div class="modal-footer" style="border-top-color: orange;">
                <button type="button" id="forecastinput" class="btn btn-warning" data-bs-dismiss="modal" onclick="redirectToPage()">닫기</button>
            </div>
          </div>
        </div>
      </div>

    
<br><br><br><br>


<script>
  function redirectToPage() {
    // 리디렉션할 URL을 설정합니다.
    var redirectUrl = "/forecast.do"; // 리디렉션할 URL을 여기에 입력하세요.

    
  }
</script>






    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous">
    </script>

    <!-- 경기결과 모달 스크립트 -->
<script>

$(document).ready(function() {
	  $('#gameresult').click(function() {
	    $('#gameresultmodal').modal('show');
	  });
	});
</script>





    <!-- 페이지 모달 스크립트 -->
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            // 페이지가 로드되면 모달 창 띄우기
            var myModal = new bootstrap.Modal(document.getElementById("confirmModal"));
            myModal.show()  
            var commentCount = 0;
            var commentCountElement = document.querySelector("#comment-count");
            var submitButton = document.querySelector("#submit-button");
        });
    </script>
    <!-- 버튼 클릭 모달 스크립트 -->


    <!-- 승부예측 스크립트 -->
    <script>
    
    
    var totalVotes;
    var homeWinVotes;
    var awayWinVotes;
    
    document.addEventListener('DOMContentLoaded', function() {
    	  const homeProgressBar = document.querySelector('#home-progress-bar');
    	  const awayProgressBar = document.querySelector('#away-progress-bar');
    	  const homeWinButton = document.querySelector('.btn-primary');
    	  const awayWinButton = document.querySelector('.btn-danger');
    	  const homePercentageElement = document.querySelector('#home-percentage');
    	  const awayPercentageElement = document.querySelector('#away-percentage');
    	  
    	  totalVotes = <%=totalVotes %>;
    	  homeWinVotes = <%=homeWinVotes %>;
    	  awayWinVotes = <%=awayWinVotes %>;
    	  
//     	  totalVotes = document.getElementById("totalVotes").value;  
//     	  homeWinVotes = document.getElementById("homeWinVotes").value;  
//     	  awayWinVotes= document.getElementById("awayWinVotes").value;  

    	  
    	  console.log(totalVotes);
    	  console.log(homeWinVotes);
    	  console.log(awayWinVotes);
    	  updateProgress();
    	
    	  var isUpdating = true;
    	  
//    	  homeWinButton.addEventListener('click', function() {
//    	    if (!isUpdating) {
//    	      homeWinVotes++;
//    	      totalVotes++;
//    	      updateProgress();
//    	    }
//    	  });

//    	  awayWinButton.addEventListener('click', function() {
//    	    if (!isUpdating) {
//    	      awayWinVotes++;
//    	      totalVotes++;
//    	      updateProgress();
//    	    }
//    	  });

    	  function updateProgress() {
    	
    	    isUpdating = true;

    	    const homePercentage = (homeWinVotes / totalVotes) * 100 || 0;
    	    const awayPercentage = (awayWinVotes / totalVotes) * 100 || 0;
    	    const combinedPercentage = homePercentage + awayPercentage;
    	    
    	    if (combinedPercentage <= 100) {
    	      homeProgressBar.style.width = homePercentage + '%';
    	      homePercentageElement.textContent = homePercentage.toFixed(2) + '%';
    	      awayProgressBar.style.width = awayPercentage + '%';
    	      awayPercentageElement.textContent = awayPercentage.toFixed(2) + '%';
    	    }

    	    isUpdating = true;
    	  }
    	});
      </script>

<script>

$("#submit-button").on("click", function() {
	  var comment = $("#comment").val();

	  // Ajax를 사용하여 채팅 메시지를 서버로 전송합니다.
	  $.ajax({
	    type: "POST",
	    url: "/forecast.do", // ChatController 서블릿 또는 컨트롤러 매핑 URL로 대체해야 합니다.
	    data: { comment: comment },
	    success: function(response) {
	      // 필요한 경우 서버에서의 응답을 처리합니다.
	    },
	    error: function(xhr, status, error) {
	      // 필요한 경우 오류를 처리합니다.
	    }
	  });

	  // 기본 폼 제출 동작을 방지합니다.
	  
	});

</script>
      
   
   
<script>

$("#homewin").on("click", function() {
	  var teamCd = "01";

	  // Ajax를 사용하여 채팅 메시지를 서버로 전송합니다.
	  $.ajax({
	    type: "get",
	    url: "/forecast/input.do", // ChatController 서블릿 또는 컨트롤러 매핑 URL로 대체해야 합니다.
	    data: { teamCd: teamCd },
	    success: function(response) {
	    	showResultModal("홈팀 승리를 예측하셨습니다!");
	    },
	    error: function(xhr, status, error) {
	    	showResultModal("한개의 ID당 한번 선택하실 수 있습니다");
	    }
	  });

	  // 기본 폼 제출 동작을 방지합니다.
	  
	});
	
function showResultModal(resultText) {
    $("#resultText").text(resultText);
    $("#staticBackdrop").modal("show");
  }

</script>
         
<script>

$("#awaywin").on("click", function() {
	var teamCd = "09";

	  // Ajax를 사용하여 채팅 메시지를 서버로 전송합니다.
	  $.ajax({
	    type: "get",
	    url: "/forecast/input.do", // ChatController 서블릿 또는 컨트롤러 매핑 URL로 대체해야 합니다.
	    data: { teamCd: teamCd },
	    success: function(response) {
	    	showResultModal("원정팀 승리를 예측하셨습니다!");
	    },
	    error: function(xhr, status, error) {
	    	showResultModal("한개의 ID당 한번 선택하실 수 있습니다");
	    }
	  });

	  alert("오류가 발생했습니다: " + error);
	  
	});
	
function showResultModal(resultText) {
    $("#resultText").text(resultText);
    $("#staticBackdrop").modal("show");
  }

</script>      
      
<script>
$(document).ready(function() {
  $('#gameresultsubmit').click(function() {
    // AJAX 요청 실행
    $.ajax({
      url: '/gameresult.do',  // 요청을 보낼 URL
      method: 'get',   // 요청 메서드 (GET, POST 등)
      data: {
        result: $('#resultInput').val()  // 입력된 결과 데이터
      },
      success: function(response) {
        // 요청이 성공적으로 완료되었을 때 실행할 코드
        console.log('AJAX 요청이 성공적으로 완료되었습니다.');
        console.log('응답 데이터:', response);
        
        // 모달 창 닫기
		window.location.href = '/gameresult.do';  // 새로운 URL로 이동 
      },
      error: function(xhr, status, error) {
        // 요청이 실패했을 때 실행할 코드
        console.log('AJAX 요청이 실패했습니다.');
        console.log('에러:', error);
      }
    });
  });
});      
</script>      
      
      
     
</body>
</html>