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
    <title>투수</title>
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
                            <li class="col col-1" id="PCFACN"><a href="http://localhost:8888/players/TwoSoo.do" class="nav-link "style="color:orange;"><span style="width: 0px;"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;투수</a></li>                                                     
                            <li class="col col-1" id="PCFACN"><a href="http://localhost:8888/players/FourSoo.do" class="nav-link text-white"><span style="width: 0px;"></span>&nbsp;&nbsp;&nbsp;&nbsp;포수</a></li>
                            <li class="col col-1" id="PCFAFT"><a href="http://localhost:8888/players/InBeast.do" class="nav-link text-white"><span style="width: 0px;"></span>&nbsp;&nbsp;내야수</a></li>
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
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro"><a href="http://localhost:8888/views/common/playerInfoDetail.jsp">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">1</h4></span>
												<span style="position : absolute;  bottom:80px; left: 90px; color:white; z-index:2;font-style: italic; font-size:2em"> 문동주 </span>
												<span style="position : absolute;  bottom:40px; left: 110px; color:gray; z-index:2; font-style: italic; font-size:2em;"> MOON DONGJU </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div></a>
												<img src="../../img/player/twoSoo/문동주3627.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">4</h4></span>
												<span style="position : absolute;  bottom:80px; left: 90px; color:white; z-index:2;font-style: italic; font-size:2em"> 이승관 </span>
												<span style="position : absolute;  bottom:40px; left: 110px; color:gray; z-index:2; font-style: italic; font-size:2em;"> LEE SEUNGGWAN </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>					
												<img src="../../img/player/twoSoo/이승관_1779.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">5</h4></span>
												<span style="position : absolute;  bottom:80px; left: 90px; color:white; z-index:2;font-style: italic; font-size:2em"> 운대경 </span>
												<span style="position : absolute;  bottom:40px; left: 110px; color:gray; z-index:2; font-style: italic; font-size:2em;"> YOON DAEKYUNG </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/twoSoo/윤대경1242.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
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
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">10</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 송윤준 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> SONG YOONJOON </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/twoSoo/송윤준02015.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">11</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 남지민 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> NAM JIMIN </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>					
												<img src="../../img/player/twoSoo/남지민01720.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">15</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 김기중 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> KIM KIJOONG </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/twoSoo/김기중_1347.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
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
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">18</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 류희운 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> RYU HEEWOON </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/twoSoo/류희운_1023.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">19</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 김재영 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> KIM JAEYUNG </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>					
												<img src="../../img/player/twoSoo/김재영_4033.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">20</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 페냐 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> FELIX PENA </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/twoSoo/페냐_3723.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
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
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">26</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 한승혁 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> HAN SEUNGHYUK </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/twoSoo/한승혁4530.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">27</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 이민우 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> LEE MINWOO </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>					
												<img src="../../img/player/twoSoo/이민우00022.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">28</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 장시환 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> JANG SIHWAN </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/twoSoo/장시환_8806.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
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
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">29</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 박준영 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> PARK JOONYUNG </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/twoSoo/박준영_4783.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">31</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 박윤철 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> PARK YOONCHUL </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>					
												<img src="../../img/player/twoSoo/박윤철00328.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">32</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 윤산흠 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> YOON SANHEUM </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/twoSoo/윤산흠_7893.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
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
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">34</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 산체스 </span>
												<span style="position : absolute;  text-align:left; bottom:-10px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> RICARDO<br>&nbsp;&nbsp; SANCHEZ </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/twoSoo/산체스.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">36</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 장민재 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> JANG MINJAE </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>					
												<img src="../../img/player/twoSoo/장민재_7761.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">38</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 김종수 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> KIN JONGSOO </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/twoSoo/김종수02204.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
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
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">39</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 이재민 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> LEE JAWMIN </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/twoSoo/이재민_3484.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">40</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 신지후 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> SHIN JIHOO </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>					
												<img src="../../img/player/twoSoo/신지후_4665.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">46</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 이태양 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> LEE TAEYANG </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/twoSoo/이태양01041.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
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
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">47</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 김범수 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> KIM BUMSOO </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/twoSoo/김범수00816.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">49</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 이충호 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> LEE CHOONGHO </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>					
												<img src="../../img/player/twoSoo/이충호_2107.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">53</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 김민우 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> KIM MINWOO </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/twoSoo/김민우01317.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
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
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">54</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 김서현 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> KIM SEOHYUN </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/twoSoo/김서현_5431.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">55</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 강재민 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> KANG JAEMIN </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>					
												<img src="../../img/player/twoSoo/강재민02359.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">57</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 정우람 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> JUNG WOORAM </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/twoSoo/정우람2.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
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
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">58</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 박상원 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> PARK SANGWON </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/twoSoo/박상원_0295.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">59</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 한승주 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> HAN SEUNGJOO </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>					
												<img src="../../img/player/twoSoo/한승주_9095.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">60</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 김규연 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> KIM KYOOYEON </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/twoSoo/김규연3925.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
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
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">61</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 류원석 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> RYO WONSEOK </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/twoSoo/류원석_8380.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">66</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 주현상 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> JOO HYUNSANG </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>					
												<img src="../../img/player/twoSoo/주현상_5274.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">67</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 정이황 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> JUNG IHWANG </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/twoSoo/정이황2224.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
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
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">68</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 김범준 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> KIM BEOMJUN </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/twoSoo/김범준8364.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">69</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 장지수 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> JANG JISOO </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>					
												<img src="../../img/player/twoSoo/장지수2375.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">93</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 오세훈 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> OH SEHOON </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/twoSoo/오세훈03025.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
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
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">01</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 민승기 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> MIN SEUNGKI </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/twoSoo/민승기_3827.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">02</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 양경모 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> YANG KYUNGMO </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>					
												<img src="../../img/player/twoSoo/양경모02697.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">03</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 김겸재 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> KIM KUMJAE </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/twoSoo/김겸재_0778.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
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
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">54</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 김관우 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> KIM KWANWOO </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/twoSoo/김관우_6567.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">55</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 송성훈 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> SONG SUNGHOON </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>					
												<img src="../../img/player/twoSoo/송성훈0559.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">57</h4></span>
												<span style="position : absolute;  bottom:80px; left: 130px; color:white; z-index:2;font-style: italic; font-size:2em"> 박재규 </span>
												<span style="position : absolute;  bottom:40px; left: 150px; color:gray; z-index:2; font-style: italic; font-size:2em;"> PARK JAWGYU </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/twoSoo/박재규_6927.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
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
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">107</h4></span>
												<span style="position : absolute;  bottom:80px; left: 170px; color:white; z-index:2;font-style: italic; font-size:2em"> 천보웅 </span>
												<span style="position : absolute;  text-align:left; bottom:-10px; left: 190px; color:gray; z-index:2; font-style: italic; font-size:2em;"> CHUN<br>BOWOONG </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/twoSoo/천보웅0274.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">109</h4></span>
												<span style="position : absolute;  bottom:80px; left: 170px; color:white; z-index:2;font-style: italic; font-size:2em"> 이석제 </span>
												<span style="position : absolute;  bottom:40px; left: 190px; color:gray; z-index:2; font-style: italic; font-size:2em;"> LEE SEOKJAE </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>					
												<img src="../../img/player/twoSoo/이석제0943.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">111</h4></span>
												<span style="position : absolute;  bottom:80px; left: 170px; color:white; z-index:2;font-style: italic; font-size:2em"> 성지훈 </span>
												<span style="position : absolute;  bottom:40px; left: 190px; color:gray; z-index:2; font-style: italic; font-size:2em;"> SUNG JIHOON </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/twoSoo/성지훈-69.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
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
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">114</h4></span>
												<span style="position : absolute;  bottom:80px; left: 170px; color:white; z-index:2;font-style: italic; font-size:2em"> 박성웅 </span>
												<span style="position : absolute;  text-align:left; bottom:-10px; left: 190px; color:gray; z-index:2; font-style: italic; font-size:2em;"> PARK<br>SUNGWOONG </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/twoSoo/박주홍_41.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">115</h4></span>
												<span style="position : absolute;  bottom:80px; left: 170px; color:white; z-index:2;font-style: italic; font-size:2em"> 김진욱 </span>
												<span style="position : absolute;  bottom:40px; left: 190px; color:gray; z-index:2; font-style: italic; font-size:2em;"> KIM JINWOOK </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>					
												<img src="../../img/player/twoSoo/김진욱_32.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">119</h4></span>
												<span style="position : absolute;  bottom:80px; left: 170px; color:white; z-index:2;font-style: italic; font-size:2em"> 오동욱 </span>
												<span style="position : absolute;  text-align:left; bottom:-10px; left: 190px; color:gray; z-index:2; font-style: italic; font-size:2em;"> OH<br>DONGWOOK </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/twoSoo/오동욱_58.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
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
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;">120</h4></span>
												<span style="position : absolute;  bottom:80px; left: 170px; color:white; z-index:2;font-style: italic; font-size:2em"> 배동현 </span>
												<span style="position : absolute;  text-align:left; bottom:-10px; left: 190px; color:gray; z-index:2; font-style: italic; font-size:2em;"> BAE<br> DONGHYUN </span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>
												<img src="../../img/player/twoSoo/배동현_61.png" style="height:500px;" class="players"> </div> <span class="profile" style= "position:absolute; bottom:230px; left:100px; color:white; z-index:2; width:200px; opacity:0;" > &nbsp;&nbsp;&nbsp;프로필&nbsp;&nbsp;&nbsp;</span>
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;"></h4></span>
												<span style="position : absolute;  bottom:80px; left: 170px; color:white; z-index:2;font-style: italic; font-size:2em"> </span>
												<span style="position : absolute;  bottom:40px; left: 190px; color:gray; z-index:2; font-style: italic; font-size:2em;"></span>
												<div style="position : absolute; bottom : 0px; width : 100%;" class = "needgdt"></div>					
											</li>
											
											<li class="col col-4" style="text-align:center; position: relative;"> <div class="propro">
												<span style="position : absolute;  bottom:20px; left: 10px; color:white; z-index:2;"><h4 style="font-size:6em;"></h4></span>
												<span style="position : absolute;  bottom:80px; left: 170px; color:white; z-index:2;font-style: italic; font-size:2em"> </span>
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