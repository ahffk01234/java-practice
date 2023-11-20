<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예매하기</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<style>
<%@include file="../headerCSS.jsp" %>
#container.game{
text-align: center;
}
.title_area {
    background: url('/img/commonImg/ticketInfo.jpg') no-repeat;
	background-position: center;
}
body{
background: black;
}
.res_button{
width: vw;
height: 200px;
}
</style>
</head>
<body>

<div id="wrap">

<%@include file="../header.jsp" %>

<article id="container" class="game">
  <div class="title_area" style="height:500px;">
  </div>
    <section class="content_block game_schedule view" id="content">
      <div class="res_button">
      <a id="ticketButton" href="/ticket/ticketmain.do"><img alt="예매하기" src="../../img/commonImg/btn_reservation.png"></a>
      </div>
      <div class="tab_menu">
      <img alt="캘린더" src="../../img/commonImg/game_calender.png">
      </div>
    </section>
</article>
</div>



<script>
  document.addEventListener('DOMContentLoaded', function() {
    // 승부예측 버튼 클릭 시 모달을 표시하는 함수
    function showPredictionModal() {
      var predictionModal = new bootstrap.Modal(document.getElementById('predictionModal'));
      predictionModal.show();
    }
    
    // 승부예측 버튼 클릭 시 memId가 null인 경우 모달을 표시
    var ticketButton = document.getElementById('ticketButton');
    ticketButton.addEventListener('click', function(event) {
      event.preventDefault();
      <%-- 여기에 session에서 memId 값을 가져오는 코드가 있다고 가정 --%>
      <% 
      memId = (String) session.getAttribute("LogMemId");
      if (memId == null) {
      %>
      showPredictionModal();
      <% } else { %>
      // memId가 null이 아닌 경우에는 클릭 이벤트에 바로 이동
      window.location.href = ticketButton.href;
      <% } %>
    });
  });
</script>



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








<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous">
        </script>
    <script>
     // console.log(document.querySelectorAll('.navbar-nav .nav-link'));
    </script>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous">
        </script>
</body>
</html>