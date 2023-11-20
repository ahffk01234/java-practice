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
    <title>경기장</title>
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
    height : 250px
}

/* 중단그라데이션 */
.needgdt { 
    background-image: linear-gradient(to bottom, rgba(0, 0, 0, 0), black);
    height : 250px;
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

</style>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=76c3e5feafaef5bc97258354f61d0581"></script>
<body>
    <!-- 헤더헤더헤더헤더헤더헤더헤더헤덯데헤더헤더헤더헤더헤더헤더헤더헤덯데헤더헤더헤더헤더헤더헤더헤더헤덯데 -->


	<%@include file="../header.jsp" %>
	
    <!-- 콘텐츠콘텐츠콘체늩콘텐츠콘텐츠콘체늩콘텐츠콘텐츠콘체늩콘텐츠콘텐츠콘체늩콘텐츠콘텐츠콘체늩콘텐츠콘텐츠콘체늩콘텐츠콘텐츠콘체늩콘텐츠콘텐츠콘체늩 -->
    <nav class="container-fluid content-imgnav">
        <div class="content-imgdiv">
             <img src="../../img/commonImg/bg_header_fan.jpg">
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
	    	<nav class="content-header navbar-expand-lg" style="padding: 40px 10px 0px 10px;">
                <a href="" class="nav-link text-white">
				    <div class="row collapse navbar-collapse board-div">

                    </div>
                </a>
			</nav>
			<nav class="content-header navbar-expand-lg" style="padding: 0px 10px 0px 10px;">
				<div class="row collapse navbar-collapse">
					<ul class=" navbar-nav content-div board_menu">					
						<li class="col col-1"><li></li>
						<li class="col col-8" id="PCFACN"><h1 class="text-white" style="font-style: bold;"><span style="font-weight: bold;">한화이글스 경기장 </span>오시는길.</h1>						<hr style="color:white">										
						</li>
						
					</ul>
					</div>
				</div>
			</nav>
	    
	    
	    </nav>
	
	
    <nav id = "height-control" class="container-fluid content-board bg-black height-control">
    
         <div class="content-boarddiv">

			<!-- 데이트피커사용 -->
			<nav class="content-header navbar-expand-lg">
				<div class="row collapse navbar-collapse">
					<ul class="navbar-nav content-div board_menu">
						<li class="col col-6"></li>
							<div class="row collapse navbar-collapse">

							</div>
					</ul>
				</div>
			</nav>





			<nav class="board-container">

				<nav class="content-header navbar-expand-lg">
							<nav class="board-container height-control">
				
					
					</nav>
				</nav>
	

				<nav class="content-header navbar-expand-lg">
					<div class="row collapse navbar-collapse">
						<ul class="navbar-nav content-div board_menu" style="height: 50px;">
							<li class="col col-1"></li>
								<li class="col col-5">
								<div id="map" style="width:700px;height:680px;">
								</div>
								<li class="col col-5">
									<span style="color:white;">
									
									<span style="color:orange;">■ </span>네비게이션 주소<br><br>
									<span style="font-size:0.8em;">
									&nbsp;&nbsp;- 주소 : 대전광역시 중구 대종로 373 (한화생명이글스파크)<br>
									</span>
									<br><hr><br>
									<span style="color:orange;">■ </span>고속버스 및 시외버스 출발<br><br>
									<span style="font-size:0.8em;">
									&nbsp;&nbsp;- 복합터미널 : <span style="color:orange;">2</span>번 승차 → 한밭운동장 하차 (22분) <br>
									&nbsp;&nbsp;- 대전서남부터미널 : 버드내아파트 <span style="color:orange;">119</span>번 승차 → 남대전고등학교 하차 (29분) <br>
									&nbsp;&nbsp;- 유성터미널(고속) : <span style="color:orange;">①구암역</span> 승차 → 서대전네거리역 <span style="color:orange;">199</span>번 환승 → 남대전고등학교 하차 (49분) <br>
									&nbsp;&nbsp;- 유성터미널(시외) : <span style="color:orange;">①구암역</span> 승차 → 서대전네거리역 <span style="color:orange;">199</span>번 환승 → 남대전고등학교 하차 (38분) <br>
									&nbsp;&nbsp;- 둔산정류장(고속) : 사학연금회관 <span style="color:orange;">108</span>번 승차 → 남대전고등학교 하차 (39분)<br>
									&nbsp;&nbsp;- 둔산정류장(시외) : 정부대전청사남문 <span style="color:orange;">108</span>번 승차 → 남대전고등학교 하차 (40분)<br>
									</span>
									<br><hr><br>
									<span style="color:orange;">■</span> 철도 출발<br><br>
									<span style="font-size:0.8em;">
									&nbsp;&nbsp;- KTX 및 SRT (대전역) : <span style="color:orange;">2</span>번 승차 → 한밭운동장 하차 (19분) <br>
									&nbsp;&nbsp;- KTX (서대전역) : <span style="color:orange;">119</span>번 승차 → 남대전고등학교 하차 (17분) <br>
									</span>
									<br><hr><br>
									<span style="color:orange;">■</span> 공항 출발<br><br>
									<span style="font-size:0.8em;">
									&nbsp;&nbsp;- 청주공항 : 청주공학역 → 무궁화호 → 대전역 <span style="color:orange;">2</span>번환승 → 한밭종합운동장 하차 (72분) <br>
									</span>
									
									
									
									</span>
								<li>
								</li>
						</ul>
					</div>
				</nav>	
			</nav>
        </div>
    </nav> 

</nav>  





    <!-- 푸터푸터푸터푸터풭푸터푸터푸터푸터푸터풭푸터푸터푸터푸터푸터풭푸터푸터푸터푸터푸터풭푸터푸터푸터푸터푸터풭푸터 -->

	  <nav class="navbar navbar-expand-sm navbar-dark bg-black">
        <div class="container-fluid">
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
    </nav>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
     	
var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
var options = { //지도를 생성할 때 필요한 기본 옵션
	center: new kakao.maps.LatLng(36.317089343560745, 127.42919885576457), //지도의 중심좌표.
	level: 3 //지도의 레벨(확대, 축소 정도)
};

var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴    	
     	
     	

      
	
	
	
	

</script>    
</body>
</head>