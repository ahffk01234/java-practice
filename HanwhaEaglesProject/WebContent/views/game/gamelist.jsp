<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>경기일정</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<style>
<%@include file="../headerCSS.jsp" %>


.tab_conts{
height: 100vh;
/* width: 100vw; */
position: relative;
text-align: center;
padding: 50px 0px 0px 0px;
}

.schedule_view{
flex:1;
}
#container .content_block{
	position: relative;
/* 	left: 5%; */
} 
#container.game .title_area {
    background: url('/img/commonImg/background.jpg') no-repeat;
    height: 100%;
}
table {
	color: white;
    width: 100%;
    border-top: 2px solid white;
    border-collapse: collapse;
  }
  th, td {
    border-bottom: 1px solid white;
    border-left: 1px solid white;
    padding: 10px;
  }
  th:first-child, td:first-child {
    border-left: none;
  }
  
</style>
</head>
<body>
<%@include file="../header.jsp" %>

<nav class="container-fluid content-imgnav">
<div id="wrap">


<article id="container" class="game">
  <div class="title_area" style="height:100vh;">
  </div>
    <section class="content_block game_schedule view" id="content" style="width:100%;">
      <div class="tab_menu">

      </div>
      <div class="tab_conts">
        <img alt="캘린더" src="/img/commonImg/game_calender.png">

      </div>
    </section>
</article>
</div>
</nav>
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