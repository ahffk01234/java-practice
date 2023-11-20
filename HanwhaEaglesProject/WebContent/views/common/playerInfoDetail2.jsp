<%@page import="eagles.shop.product.vo.MypageProductVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	List<MypageProductVO> myProductList = (List<MypageProductVO>)request.getAttribute("myProductList");
%>    


    
<!DOCTYPE html>
<html lang="en">

<head>
    
    <meta charset="UTF-8">
    <title>선수단</title>
    <!-- CSS only -->
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.6.0.js"></script>

    
        

<style>

	<%@include file="../headerCSS.jsp" %>

body {
	min-width: 1400px;
	overflow-x: auto;
	background: #191919;
}

*::selection {
	color: #fff;
	background: rgba(243, 115, 33, 0.8);
}

dl, ul, ol, menu, li {
	list-style: none;
}

.sub-menu {
	position: absolute;
}

.nav-item:hover .sub-menu {
	display: block;
}

.sub-menu:hover .sub-menu {
	display: block;
}

.sub-menu {
	display: none;
}

.sub-menu a {
	color: white;
	text-decoration: none;
}

.navbar-nav .nav-link:hover, .navbar-nav .nav-link:focus, .sub-menu a:hover,
	.sub-menu a:focus {
	color: orange !important;
}

.nav-item:hover>.nav-link {
	color: orange !important;
}

.sidebar {
	position: fixed;
	top: 30%;
	right: 0;
	width: 150px;
	height: 100%;
	padding: 10px;
}

.content-boarddiv {
    height: 650px;
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
    height : 250px
}

/* 중단그라데이션 */
.needgdt { 
    background-image: linear-gradient(to bottom, rgba(0, 0, 0, 0), black);
    height : 400px;
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

#height-control {
  
    overflow-x:hidden;
    height:auto;
}

.navbar-expand-lg {


}

.height-control {

	height : 600px;

}

.players {

	height : 100%;
	width : 100%;

}

/* .col-4:hover { */
.propro:hover {
  opacity: 0.25;
  -webkit-transform: scale(1.1);
  transform: scale(1.1);
  filter: blur(5px);
  transition: all 1s;
}

.profile {
  z-index : 3;
  border : 2px solid orange;
  border-radius : 20px;
  font-size : 2em;
  pointer-events: none;
}


.backG {

	height : 1100px;
	
}

backimg {
	width : 90%;
}




</style>
<body>
    <!-- 헤더헤더헤더헤더헤더헤더헤더헤덯데헤더헤더헤더헤더헤더헤더헤더헤덯데헤더헤더헤더헤더헤더헤더헤더헤덯데 -->


	<%@include file="../header.jsp" %>
	
    <!-- 콘텐츠콘텐츠콘체늩콘텐츠콘텐츠콘체늩콘텐츠콘텐츠콘체늩콘텐츠콘텐츠콘체늩콘텐츠콘텐츠콘체늩콘텐츠콘텐츠콘체늩콘텐츠콘텐츠콘체늩콘텐츠콘텐츠콘체늩 -->
    <nav class="container-fluid content-imgnav">
        <div class="content-imgdiv">
             <img src="../../img/commonImg/bg_header_player.jpg">
        </div>
   </nav> 


	<nav >
   		<nav class="content-emptynav">
    	     <div class="content-emptydiv">
            	<!-- 빈공간영역 설정 -->
        	 </div>
    	</nav>

    	<nav class="needgdt">

			
		</nav>
 

	<!-- 컨텐츠영역 -->
	    <nav class="container-fluid content-board bg-black">
	    	<nav class="content-header navbar-expand-lg" style="padding: 40px 10px 0px 40px;">
                <a href="" class="nav-link text-white">
                  <nav class="container-fluid content-board bg-black">
				    <div class="row collapse navbar-collapse board-div">
                         <ul class="navbar-nav content-div board_menu"> 
                              
                         	<li class="col col-1" id="PCFACN"><a href="" class="nav-link text-white"><span style="width: 0px;"></span> </a></li>                				
                            <li class="col col-1" id="PCFACN"><a href="http://localhost:8888/players/Coach.do" class="nav-link" style="color:orange;"><span style="width: 0px;"></span>코칭스탭</a></li>
                            <li class="col col-1" id="PCFACN"><a href="http://localhost:8888/players/TwoSoo.do" class="nav-link text-white"><span style="width: 0px;"></span>투수</a></li>                                                     
                            <li class="col col-1" id="PCFACN"><a href="http://localhost:8888/players/FourSoo.do" class="nav-link text-white"><span style="width: 0px;"></span>포수</a></li>
                            <li class="col col-1" id="PCFAFT"><a href="http://localhost:8888/players/InBeast.do" class="nav-link text-white"><span style="width: 0px;"></span>내야수</a></li>
                            <li class="col col-1" id="PCFAGL"><a href="http://localhost:8888/players/OutBeast.do" class="nav-link text-white" ><span style="width: 0px;"></span>외야수</a></li>
                            <li class="col col-1" id="PCFAGL"><a href="http://localhost:8888/players/Roka.do" class="nav-link text-white"><span style="width: 0px;"></span>군입대선수</a></li>
                            <li class="col col-1" id="PCFAGL"><a href="http://localhost:8888/players/Cheer.do" class="nav-link text-white"><span style="width: 0px;"></span>응원단</a></li>
                            <li class="col col-1" id="PCFAGL"><a href="http://localhost:8888/players/Staff.do" class="nav-link text-white"><span style="width: 0px;"></span>STAFF</a></li>
                        </ul>  
                    </div>
                    
                  </nav>
                </a>
			</nav>
			<nav class="content-header navbar-expand-lg" style="padding: 0px 10px 0px 10px;">
				<div class="row collapse navbar-collapse">
					<ul class=" navbar-nav content-div board_menu">					
						<li class="col col-1"></li>
						<li class="col col-8" id="PCFACN"><h1 class="text-white" style="font-style: bold;"><span style="font-weight: bold;">선수단 정보</span>를 확인하실 수 있습니다.</h1></li>
					</ul>
					</div>
				</div>
			</nav>
	    
	    
	    </nav>
	    
	    
	    
	    <nav class="container-fluid content-board bg-black backG">
	    	<nav class="content-header navbar-expand-lg" style="padding: 40px 10px 0px 40px;">
                <a href="" class="nav-link text-white">
                <li class="col col-9">
                  <nav class="container-fluid content-board bg-black">
				    <div class="row collapse navbar-collapse board-div">
                         <ul class="navbar-nav content-div board_menu">
                         	<li class="col col-1"></li>
                         	<li class="col col-7">
                         		<img class="backimg" src="../../img/player/Coach/최원호0028 (1).png">
                         	</li>
                         	<li calss="col col-5" text-white; style="position:relative;"> 
								<span style="position:relative; font-size:5em; top:70px;">92 최원호</span> 
								<span style="position:relative; font-size:2.7em; top:40px; color:gray">CHOI WEONHO</span>

								
								<img src="../../img/player/Others/ico_player_pitcher.png" style="position:relative; width:30%; top:40px;">
								<span style="position:relative; font-size:1.5em; top:50px;">감독 우투우타</span><br><br><br><br>
								
								<span style="position:relative; font-size:1.5em;">생년월일</span><br><span style="position:relative; font-size:1.0em; color:gray;">1973, 03, 13</span><br><br>								
								<span style="position:relative; font-size:1.5em;">체격</span><br><span style="position:relative; font-size:1.0em; color:gray;">183cm, 88kg</span><br><br>
								<span style="position:relative; font-size:1.5em;">출신학교</span><br><span style="position:relative; font-size:1.0em; color:gray;">승의초-상인천중-인천고-단국대</span><br><br>
								<span style="position:relative; font-size:1.5em;">주요경력</span><br><span style="position:relative; font-size:1.0em; color:gray;">2023~한화이글스 감독</span>
								<br><span style="position:relative; font-size:1.0em; color:gray;">2023~2023 한화이글스 퓨처스 감독</span>
								<br><span style="position:relative; font-size:1.0em; color:gray;">2020 한화이글수 1군 감독 대행</span>
								<br><span style="position:relative; font-size:1.0em; color:gray;">2020 한화이글스 퓨처스 감독</span>
								<br><span style="position:relative; font-size:1.0em; color:gray;">2012 LG 트윈스 2군 투수코치</span>
								<br><span style="position:relative; font-size:1.0em; color:gray;">2011 LG 트윈스 2군 재활코치</span>	
					

                         	</li>
                         </ul>                         
                    </div>   
                  </nav>
                  </li>
               
                </a>
			</nav>
			</nav>
			<nav class="container-fluid content-board bg-black backG">
	    		<nav class="content-header navbar-expand-lg" style="padding: 40px 10px 0px 40px;">                	
                    <ul class="navbar-nav content-div board_menu">
                
               		  <li class="col col-1"></li>
                	  <li class="col col-9"><hr style="color:white;"></li>
                	</ul>
                	<ul class="navbar-nav content-div board_menu">
                	<li class="col col-9">
                	<li class="col col-2">
                	<a href="http://localhost:8888/players/Coach.do" class="nav-link text-white"><span style="border:1px solid white; border-radius:10px; font-size:2em;">&nbsp;&nbsp;목록&nbsp;&nbsp;</span></a>>
                	</li>
                	</ul>
                </a>
			</nav>
			</nav>
  
	
	
	
	

			
			
			
			
			
			
			
			
 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
     	
      	
     	
     	

      
	
	
	
	

</script>    
</body>
</head>