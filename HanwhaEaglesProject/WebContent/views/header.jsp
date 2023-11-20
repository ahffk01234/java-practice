<%@page import="eagles.member.vo.MemberVO"%>
<%@page import="eagles.member.service.MemberServiceImpl"%>
<%@page import="eagles.member.service.IMemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<% 
String memId = (String) session.getAttribute("LogMemId");
%>

   <nav class="navbar sticky-top navbar-expand-lg bg-black" style="height:100px;">

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

            <li class="nav-item" style="margin-right: 20px;"><a class="nav-link text-white" href="http://localhost:8888/intro/teamintro.do">EAGLES</a>
               <ul class="sub-menu bg-black fs-6">
                  <a href="http://localhost:8888/intro/teamintro.do" style="margin-right: 10px;">구단소개 </a>
                  <a href="/history.do">HISTORY </a>
               </ul></li>

            <li class="nav-item" style="margin-right: 20px;"><a class="nav-link text-white" href="http://localhost:8888/players/Coach.do">PLAYER</a>
               <ul class="sub-menu bg-black fs-6">
                  <a href="http://localhost:8888/players/Coach.do" style="margin-right: 10px;">코칭스탭 </a>
                  <a href="http://localhost:8888/players/TwoSoo.do" style="margin-right: 10px;">투수 </a>
                  <a href="http://localhost:8888/players/FourSoo.do" style="margin-right: 10px;">포수 </a>
                  <a href="http://localhost:8888/players/InBeast.do" style="margin-right: 10px;">내야수 </a>
                  <a href="http://localhost:8888/players/OutBeast.do" style="margin-right: 10px;">외야수 </a>
                  <a href="http://localhost:8888/players/Roka.do" style="margin-right: 10px;">군입대 선수 </a>
                  <a href="http://localhost:8888/players/Cheer.do" style="margin-right: 10px;">응원단 </a>
                  <a href="http://localhost:8888/players/Staff.do" style="margin-right: 10px;">STAFF </a>
               </ul></li>

            <li class="nav-item" style="margin-right: 20px;"><a class="nav-link text-white" href="/gamelist">GAME</a>
               <ul class="sub-menu bg-black fs-6">
                  <a href="/gamelist" style="margin-right: 10px;">1군 경기일정 </a>
               </ul></li>


            <li class="nav-item" style="margin-right: 20px;"><a class="nav-link text-white" href="/TeamBoard.do">FAN</a>
               <ul class="sub-menu bg-black fs-6">
                  <a href="/TeamBoard.do" style="margin-right: 10px;">구단소식 </a>
                  <a href="/BoardMain.do" style="margin-right: 10px;">팬 타임즈 </a>
                  <a href="http://localhost:8888/gall.do" style="margin-right: 10px;">갤러리 </a>
               </ul></li>

            <li id="predictionButton" class="nav-item" style="margin-right: 20px;"><a class="nav-link text-white" href="/forecast.do">승부예측</a>
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
            	<li>
                <a class="nav-link active text-white" aria-current="page" href="#">↑ 맨위로 </a>
            	</li>
        </div>
    </nav>
    
    
    <!-- 로그아웃 모달창 -->
    <!-- 로그아웃 모달 창 -->
<div class="modal fade" id="logoutModal" tabindex="-1" aria-labelledby="logoutModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content bg-black text-white">
      <div class="modal-header" style="border-bottom-color: orange;">
        <h5 class="modal-title" id="logoutModalLabel">로그아웃 확인</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <p>정말로 로그아웃하시겠습니까?</p>
      </div>
      <div class="modal-footer"  style="border-top-color: orange;">
        <a href="/Logout.do" class="btn btn-primary" style="background-color: #f37321; border: 2px solid black;">로그아웃</a>
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" style="background-color: #f37321; border: 2px solid black;">취소</button>
      </div>
    </div>
  </div>
</div>






<!-- 승부예측 모달 창 -->
<div class="modal fade" id="predictionModal" tabindex="-1" aria-labelledby="predictionModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="predictionModalLabel">승부예측</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <p>로그인이 필요한 서비스입니다. 로그인 후 이용해주세요.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>




<script>
	


  document.addEventListener('DOMContentLoaded', function() {
    // 승부예측 버튼 클릭 시 모달 창을 띄우는 함수
    function showPredictionModal() {
      var predictionModal = new bootstrap.Modal(document.getElementById('predictionModal'));
      predictionModal.show();
    }
    
    // 승부예측 버튼 클릭 시 memId가 null인 경우 모달 창을 띄움
    var predictionButton = document.getElementById('predictionButton');
    predictionButton.addEventListener('click', function(event) {
      event.preventDefault();
      <%-- 여기에 session에서 memId 값을 가져오는 코드가 있다고 가정 --%>
      <% 
      
      if (memId == null) {
      %>
      showPredictionModal();
      <% } else { %>
      // memId가 null이 아닌 경우에는 클릭 이벤트에 바로 이동
      window.location.href = "/forecast.do";
      <% } %>
    });
  });
</script>















