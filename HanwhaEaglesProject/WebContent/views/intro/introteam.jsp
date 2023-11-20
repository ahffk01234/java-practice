<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
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
<title>구단소개</title>
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
                            <li class="col col-1" id="PCFACN"><a href="http://localhost:8888/intro/teamintro.do" class="nav-link"><span
                                        style="width: 0px; color:orange;">구단소개</span></a></li>
                            <li class="col col-1" id="PCFACN"><a href="/history.do" class="nav-link text-white"><span
                                        style="width: 0px;"></span>HISTORY</a></li>
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
                            <h1 class="text-white" style="font-style: bold;"><span style="font-weight: bold;">한화이글스를
                                    소개합니다</span></h1>
                        </li>
                    </ul>
                </div>
                </div>
            </nav>

        </nav>


        <!-- 컨텐츠영역 -->





    </nav>


    <div class="row bg-black text-white">
        <div class="col-2 bg-black"></div>

        <div class="col-8 bg-black">
            <div class="row">
                <div class="col-2"></div>
                <div class="row col-8">
                    <img src="../img/commonImg/intro_eagles_logo.png" alt="">
                </div>
                <div class="col-2"></div>
            </div>

            <div class="row">
                <div>
                    <h3>한화이글스는 충청권을 연고로 1985년 한국 프로 야구(KBO)의 제7구단으로 출범했습니다.</h3>
                    <br><br>
                    대전광역시 중구 부사동에 위치한 대전 한화생명 EAGLESPARK를 홈 구장으로 이용하고 있으며, <br>
                    제2구장은 충청북도 청주시 서원구 사직동에 위치한 청주야구장입니다. <br><br>

                    보다 많은 분들이 야구를 관람하며 행복을 느낄 수 있도록 한화이글스는 투혼을 담은 경기를 위해 최선을 다하고 있습니다. <br>
                    지속적인 강팀으로 발돋움 하고자 내부 육성 시스템을 정비, 중장기 계획을 바탕으로 <br>
                    한화이글스의 감독 및 코칭 스태프, 선수, 프런트 모두가 함께 노력하고 있습니다. <br><br>

                    늘 응원해주시는 팬들의 성원과 기대에 부응할 수 있도록 역동적인 경기와 다양한 마케팅을 전개해 팬과 함께 비상하는 구단이 되겠습니다.
                </div>
            </div>
            <br><br><br><br><br><br><br><br><br><br><br>
        </div>

        <div class="col-2 bg-black"></div>
    </div>





    <div class="row bg-black text-white">

        <div class="row">
            <div class="col-1"></div>
            <div class="col-8">
                <h1 class="text-white" style="font-style: bold;"><span style="font-weight: bold;">한화이글스 마스코트</span></h1>
            </div>

        </div>
        <br><br><br><br><br><br>
    </div>



    <div class="row bg-black">

        <div class="col-2"></div>


        <img class="col-8" src="../img/commonImg/마스코트.png" alt="">


        <div class="col-2"></div>

        <br><br><br><br><br><br><br><br><br>
    </div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous">
        </script>



</body>
</html>