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
    <title>내야수</title>
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



li {

	cursor:pointer !important;

}


</style>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=76c3e5feafaef5bc97258354f61d0581"></script>
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
                <li class="col col-9">
                  <nav class="container-fluid content-board bg-black">
				    <div class="row collapse navbar-collapse board-div">
                         <ul class="navbar-nav content-div board_menu"> 
                              
                         	<li class="col col-1" id="PCFACN"><a href="" class="nav-link text-white"><span style="width: 0px;"></span> </a></li>                				
                            <li class="col col-1" id="PCFACN"><a href="http://localhost:8888/players/Coach.do" class="nav-link text-white"><span style="width: 0px;"></span>&nbsp;&nbsp;코칭스탭</a></li>
                            <li class="col col-1" id="PCFACN"><a href="http://localhost:8888/players/TwoSoo.do" class="nav-link text-white"><span style="width: 0px;"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;투수</a></li>                                                     
                            <li class="col col-1" id="PCFACN"><a href="http://localhost:8888/players/FourSoo.do" class="nav-link text-white"><span style="width: 0px;"></span>&nbsp;&nbsp;&nbsp;&nbsp;포수</a></li>
                            <li class="col col-1" id="PCFAFT"><a href="http://localhost:8888/players/InBeast.do" class="nav-link"style="color:orange;"><span style="width: 0px;"></span>내야수</a></li>
                            <li class="col col-1" id="PCFAGL"><a href="http://localhost:8888/players/OutBeast.do" class="nav-link text-white" ><span style="width: 0px;"></span>&nbsp;&nbsp;외야수</a></li>
                            <li class="col col-1" id="PCFAGL"><a href="http://localhost:8888/players/Roka.do" class="nav-link text-white"><span style="width: 0px;"></span>&nbsp;&nbsp;군입대선수</a></li>
                            <li class="col col-1" id="PCFAGL"><a href="http://localhost:8888/players/Cheer.do" class="nav-link text-white"><span style="width: 0px;"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;응원단</a></li>
                            <li class="col col-1" id="PCFAGL"><a href="http://localhost:8888/players/Staff.do" class="nav-link text-white"><span style="width: 0px;"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;STAFF</a></li>
                        </ul>  
                    </div>
                    
                  </nav>
                  </li>
                </a>
			</nav>
			<nav class="content-header navbar-expand-lg" style="padding: 0px 10px 0px 10px;">
				<div class="row collapse navbar-collapse">
					<ul class=" navbar-nav content-div board_menu">					
						<li class="col col-1"><li></li>
						<li class="col col-8" id="PCFACN"><h1 class="text-white" style="font-style: bold;"><span style="font-weight: bold;">선수단 정보</span>를 확인하실 수 있습니다.</h1></li>
					</ul>
					</div>
				</div>
			</nav>
	    
	    
	    </nav>
	
	
	
	
	<!-- 여기부터여기부터여기부터여기부터여기부터여기부터여기부터여기부터여기부터여기부터여기부터여기부터여기부터여기부터여기부터여기부터여기부터여기부터여기부터여기부터여기부터여기부터여기부터-->
    <nav class="container-fluid content-board bg-black height-control">
         <div class="content-boarddiv">

				<nav class="content-header navbar-expand-lg">
					<div class="row collapse navbar-collapse">
						<ul class="navbar-nav content-div board_menu">
							<li class="col col-2"></li>
							<li class="col col-8">
								<nav class="content-header navbar-expand-lg">
									<div class="row collapse navbar-collapse">
										<ul class="navbar-nav content-div board_menu" style="height:500px;">
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">2</h4></span>
												<span style="position : absolute;  bottom:80px; left: 90px; color:white; z-index:2;font-style: italic; font-size:2em"> 김민기 </span>
												<span style="position : absolute;  bottom:40px; left: 110px; color:gray; z-index:2; font-style: italic; font-size:2em;"> KIM MINKI </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/inBeast/김민기8530 (1).png" style="height:500px;" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">6</h4></span>
												<span style="position : absolute;  bottom:80px; left: 90px; color:white; z-index:2;font-style: italic; font-size:2em"> 오선진 </span>
												<span style="position : absolute;  bottom:40px; left: 110px; color:gray; z-index:2; font-style: italic; font-size:2em;"> OH SUNJIN </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>					
												<img src="../../img/player/inBeast/오선진2460.png" style="height:500px;" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">7</h4></span>
												<span style="position : absolute;  bottom:80px; left: 90px; color:white; z-index:2;font-style: italic; font-size:2em"> 이도윤 </span>
												<span style="position : absolute;  bottom:40px; left: 110px; color:gray; z-index:2; font-style: italic; font-size:2em;"> LEE DOYOON </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/inBeast/이도윤_4328.png" style="height:500px;" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
										</ul>
									</div>
								</nav>
								
								<hr style="color:white;">	
							</li>	
						</ul>
					</div>
				</nav>
			</nav>
		<!-- 여기까지여기까지여기까지여기까지여기까지여기까지여기까지여기까지여기까지여기까지여기까지여기까지여기까지여기까지여기까지여기까지여기까지여기까지여기까지여기까지여기까지여기까지여기까지여기까지여기까지 -->
			
			
			
			
    <nav class="container-fluid content-board bg-black height-control">
         <div class="content-boarddiv">

				<nav class="content-header navbar-expand-lg">
					<div class="row collapse navbar-collapse">
						<ul class="navbar-nav content-div board_menu">
							<li class="col col-2"></li>
							<li class="col col-8">
								<nav class="content-header navbar-expand-lg">
									<div class="row collapse navbar-collapse">
										<ul class="navbar-nav content-div board_menu" style="height:500px;">
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">8</h4></span>
												<span style="position : absolute;  bottom:80px; left: 90px; color:white; z-index:2;font-style: italic; font-size:2em"> 노시환 </span>
												<span style="position : absolute;  bottom:40px; left: 110px; color:gray; z-index:2; font-style: italic; font-size:2em;"> NO SIHWAN </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/inBeast/노시환_9278.png" style="height:500px;" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">9</h4></span>
												<span style="position : absolute;  bottom:80px; left: 90px; color:white; z-index:2;font-style: italic; font-size:2em"> 박정현 </span>
												<span style="position : absolute;  bottom:40px; left: 110px; color:gray; z-index:2; font-style: italic; font-size:2em;"> PARK JUNGHYUN </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>					
												<img src="../../img/player/inBeast/박정현4721.png" style="height:500px;" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">16</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 하주석 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> HA JOOSEOK </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/inBeast/2022_한화-이글스_프로필_하주석_0347.png" style="height:500px;" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
										</ul>
									</div>
								</nav>
								
								<hr style="color:white;">	
							</li>	
						</ul>
					</div>
				</nav>
			</nav>
			
			
		
		
			
	<nav class="container-fluid content-board bg-black height-control">
         <div class="content-boarddiv">

				<nav class="content-header navbar-expand-lg">
					<div class="row collapse navbar-collapse">
						<ul class="navbar-nav content-div board_menu">
							<li class="col col-2"></li>
							<li class="col col-8">
								<nav class="content-header navbar-expand-lg">
									<div class="row collapse navbar-collapse">
										<ul class="navbar-nav content-div board_menu" style="height:500px;">
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">25</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 김태연 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> KIM TAEYUN </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/inBeast/김태연01597.png" style="height:500px;" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">37</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 김인환 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> KIM INHWAN </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>					
												<img src="../../img/player/inBeast/김인환3928.png" style="height:500px;" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">43</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 정은원 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> JUNG EUNWON </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/inBeast/정은원_0697.png" style="height:500px;" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
										</ul>
									</div>
								</nav>
								
								<hr style="color:white;">	
							</li>	
						</ul>
					</div>
				</nav>
			</nav>
			
			
			
		<nav class="container-fluid content-board bg-black height-control">
         <div class="content-boarddiv">

				<nav class="content-header navbar-expand-lg">
					<div class="row collapse navbar-collapse">
						<ul class="navbar-nav content-div board_menu">
							<li class="col col-2"></li>
							<li class="col col-8">
								<nav class="content-header navbar-expand-lg">
									<div class="row collapse navbar-collapse">
										<ul class="navbar-nav content-div board_menu" style="height:500px;">
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">44</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 이성곤 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> LEE SUNGKON </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/inBeast/이성곤_5148.png" style="height:500px;" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">64</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 문현빈 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> MOON HYUNBIN </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>					
												<img src="../../img/player/inBeast/문현빈_5813.png" style="height:500px;" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">94</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 한경빈 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> HAN KUNGBIN </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/inBeast/한경빈_2535.png" style="height:500px;" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
										</ul>
									</div>
								</nav>
								
								<hr style="color:white;">	
							</li>	
						</ul>
					</div>
				</nav>
			</nav>
			
			
			
	<nav class="container-fluid content-board bg-black height-control">
         <div class="content-boarddiv">

				<nav class="content-header navbar-expand-lg">
					<div class="row collapse navbar-collapse">
						<ul class="navbar-nav content-div board_menu">
							<li class="col col-2"></li>
							<li class="col col-8">
								<nav class="content-header navbar-expand-lg">
									<div class="row collapse navbar-collapse">
										<ul class="navbar-nav content-div board_menu" style="height:500px;">
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">95</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 이민준 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> LEE MINJUN </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/inBeast/이민준0418.png" style="height:500px;" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">97</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 김건 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> KIM GUN </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>					
												<img src="../../img/player/inBeast/김건_5053.png" style="height:500px;" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">04</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 이상혁 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> LE SANGHYUK </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/inBeast/이상혁8408.png" style="height:500px;" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
										</ul>
									</div>
								</nav>
								
								<hr style="color:white;">	
							</li>	
						</ul>
					</div>
				</nav>
			</nav>
			
			
			
			
				<nav class="container-fluid content-board bg-black height-control">
         <div class="content-boarddiv">

				<nav class="content-header navbar-expand-lg">
					<div class="row collapse navbar-collapse">
						<ul class="navbar-nav content-div board_menu">
							<li class="col col-2"></li>
							<li class="col col-8">
								<nav class="content-header navbar-expand-lg">
									<div class="row collapse navbar-collapse">
										<ul class="navbar-nav content-div board_menu" style="height:500px;">
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">05</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 노석진 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> NO SUCKJIN </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/inBeast/노석진_4912.png" style="height:500px;" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">105</h4></span>
												<span style="position : absolute;  bottom:80px; left: 170px; color:white; z-index:2;font-style: italic; font-size:2em"> 최원준 </span>
												<span style="position : absolute;  bottom:40px; left: 190px; color:gray; z-index:2; font-style: italic; font-size:2em;"> CHOI WONJUN </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>					
												<img src="../../img/player/inBeast/최원준-3.png" style="height:500px;" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">108</h4></span>
												<span style="position : absolute;  bottom:80px; left: 170px; color:white; z-index:2;font-style: italic; font-size:2em"> 김예준 </span>
												<span style="position : absolute;  bottom:40px; left: 190px; color:gray; z-index:2; font-style: italic; font-size:2em;"> KIM YEJUN </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/inBeast/김예준_7668.png" style="height:500px;" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
										</ul>
									</div>
								</nav>
								
								<hr style="color:white;">	
							</li>	
						</ul>
					</div>
				</nav>
			</nav>
			
			
							<nav class="container-fluid content-board bg-black height-control">
         <div class="content-boarddiv">

				<nav class="content-header navbar-expand-lg">
					<div class="row collapse navbar-collapse">
						<ul class="navbar-nav content-div board_menu">
							<li class="col col-2"></li>
							<li class="col col-8">
								<nav class="content-header navbar-expand-lg">
									<div class="row collapse navbar-collapse">
										<ul class="navbar-nav content-div board_menu" style="height:500px;">
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">118</h4></span>
												<span style="position : absolute;  bottom:80px; left: 170px; color:white; z-index:2;font-style: italic; font-size:2em"> 조한민 </span>
												<span style="position : absolute;  bottom:40px; left: 190px; color:gray; z-index:2; font-style: italic; font-size:2em;"> JO HANMIN </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/inBeast/노석진_4912.png" style="height:500px;" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;"></h4></span>
												<span style="position : absolute;  bottom:80px; left: 170px; color:white; z-index:2;font-style: italic; font-size:2em">  </span>
												<span style="position : absolute;  bottom:40px; left: 190px; color:gray; z-index:2; font-style: italic; font-size:2em;">  </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>					
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;"></h4></span>
												<span style="position : absolute;  bottom:80px; left: 170px; color:white; z-index:2;font-style: italic; font-size:2em">  </span>
												<span style="position : absolute;  bottom:40px; left: 190px; color:gray; z-index:2; font-style: italic; font-size:2em;"></span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
											</li>
										</ul>
									</div>
								</nav>
								
								<hr style="color:white;">	
							</li>	
						</ul>
					</div>
				</nav>
			</nav>
 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>


$(document).ready(function() {
	  // .col-4 클래스 요소들에 대한 마우스 오버 이벤트 핸들러를 등록합니다.
	  $('.col-4').on('mouseenter', function() {
	    // $(this)를 사용하여 현재 마우스 오버된 .col-4 요소를 참조합니다.
	    // $(this)를 통해 해당 .col-4 요소의 자식인 .profile 요소를 선택합니다.
	    var profile = $(this).children('.profile');
	    profile.css('opacity','1').css('transition','all 1s');
	    
	    
	    // .profile 요소를 호출하거나 다른 작업을 수행합니다.
	    // 예를 들어, .profile 요소의 내용을 변경하거나 특정 함수를 호출할 수 있습니다.
	  });
	  $('.col-4').on('mouseleave', function(){
		  
	  	console.log("확인되었음");
		var profile = $(this).children('.profile');
		profile.css('opacity','0').css('transition','all 0.5s');
		
	  });	  
	  
	  	  
	});





     	
var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
var options = { //지도를 생성할 때 필요한 기본 옵션
	center: new kakao.maps.LatLng(36.317089343560745, 127.42919885576457), //지도의 중심좌표.
	level: 3 //지도의 레벨(확대, 축소 정도)
};

var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴    	
     	
     	

      
	
	
	
	

</script>    
</body>
</head>