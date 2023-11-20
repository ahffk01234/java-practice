<%@page import="eagles.gall.vo.GallVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<%

List<GallVO> gallList = (List<GallVO>)request.getAttribute("gallList");
%>
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<title>갤러리</title>
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

        dl,
        ul,
        ol,
        menu,
        li {
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

        .navbar-nav .nav-link:hover,
        .navbar-nav .nav-link:focus,
        .sub-menu a:hover,
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
            position: fixed;
            z-index: -1;
            right: 1px;
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
            height: 350px
        }

        /* 중단그라데이션 */
        .needgdt {
            background-image: linear-gradient(to bottom, rgba(0, 0, 0, 0), black);
            height: 250px;
        }

        .content-board {
            margin: 0px;
        }

        .board_menu {
            height: 100px;
        }

        .board-header {
            margin-left: 20px;
        }

        .board-idv:focus {}
   
   
</style>

</head>
<body>
<%@include file="../header.jsp" %>


<nav class="container-fluid content-imgnav">
        <div class="content-imgdiv">
            <img src="../img/commonImg/bg_header_fan.jpg">
        </div>
    </nav>


    <nav>
        <nav class="content-emptynav">
            <div class="content-emptydiv">
                <!-- 빈공간영역 설정 -->
            </div>
        </nav>

        <nav class="needgdt">
            <nav class="content-header navbar-expand-lg" style="padding: 50px 10px 0px 10px;">
                <a href="" class="nav-link text-white">
                    <div class="row collapse navbar-collapse board-div">
                        <ul class="navbar-nav content-div board_menu">
                            <li class="col col-1" id="PCFACN"><a href="" class="nav-link text-white"><span
                                        style="width: 0px;"></span></a></li>
                            <li class="col col-1" id="PCFACN"><a href="TeamBoard.do" class="nav-link text-white"><span
                                        style="width: 0px;"></span>구단소식</a></li>
                            <li class="col col-1" id="PCFACN"><a href="/BoardMain.do" class="nav-link text-white"><span
                                        style="width: 0px;"></span>팬타임즈</a></li>
                            <li class="col col-1" id="PCFAFT"><a href="/gall.do" class="nav-link"><span
                                        style="width: 0px; color:orange;">갤러리</span></a></li>
                            <li class="col col-1" id="PCFAGL"><a href="" class="nav-link text-white"><span
                                        style="width: 0px;"></span></a></li>
                        </ul>
                    </div>
                </a>
            </nav>
            <nav class="content-header navbar-expand-lg" style="padding: 0px 10px 30px 10px;">
                <div class="row collapse navbar-collapse">
                    <ul class=" navbar-nav content-div board_menu">
                        <li class="col col-1">
                        <li></li>
                        <li class="col col-8" id="PCFACN">
                            <h1 class="text-white" style="font-style: bold;"><span style="font-weight: bold;">한화이글스의
                                    모습</span>을 확인하실 수 있습니다.</h1>
                        </li>
                    </ul>
                </div>
                </div>
            </nav>

        </nav>


        <!-- 컨텐츠영역 -->





    </nav>


    <div class="row bg-black">

        <div class="col-1"></div>

        <div class="col-9 container-fluid album py-5 bg-black">
            <div class="container">

                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">


<%
	int gallSize = gallList.size();
	if(gallSize == 0){	
%>
		<tr>
			<td colspan="4">게시물이 존재하지 않습니다</td>
		</tr>
		
<% 
	} else {
	for(GallVO gv : gallList){

%>

                    <div class="col">
                        <div class="card shadow-sm bg-dark text-white">
                            <img src="<%=gv.getGallImg() %>" class="bd-placeholder-img card-img-top" width="100%" height="350"
                                xmlns="http://www.w3.org/2000/svg" role="img" aria-label="자리표시자: 썸네일"
                                preserveAspectRatio="xMidYMid slice" focusable="false">
                                <title>Placeholder</title>
                                <rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%"
                                    fill="#eceeef" dy=".3em"></text>
                            </img>

                            <div class="card-body">
                                <div class="row card-text">
                                    <div class="col-8" style="vertical-align: inherit;"><%=gv.getGallTitle() %></div>
                                    <div class="col-4 row">
                                        <svg style="color: red;" xmlns="http://www.w3.org/2000/svg" width="21" height="21"
                                            fill="currentColor" class="col bi bi-heart-fill" viewBox="0 0 16 16">
                                            <path fill-rule="evenodd"
                                                d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z" />

                                        </svg>
                                        <p class="col text-muted" style="text-align: left;">
                                            <%=gv.getGallLike() %>
                                        </p>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

<%
		}
	}
%>

                    
              



                </div>


            </div>
        </div>
        <div class="col-1"></div>
    </div>












<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous">
        </script>
</body>
</html>