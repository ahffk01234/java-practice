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

    #year-container {
      height: 100vh;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
    }
    #year-container h1 {
      font-size: 4rem;
      margin-bottom: 1rem;
    }
    #achievement-container {
      height: 100vh;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
    }
    #achievement-container h2 {
      font-size: 3rem;
      margin-bottom: 1rem;
    }


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
<title>Insert title here</title>
</head>
<body>
    <%@include file="../header.jsp" %>


<nav class="container-fluid content-imgnav">
        <div class="content-imgdiv">
            <img src="../img/commonImg/bg_header_fan.jpg	">
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
                            <li class="col col-1" id="PCFACN"><a href="http://localhost:8888/intro/teamintro.do" class="nav-link text-white"><span
                                        style="width: 0px;"></span>구단소개</a></li>
                            <li class="col col-1" id="PCFACN"><a href="/history.do" class="nav-link"><span
                                        style="width: 0px; color:orange;">HISTORY</span></a></li>
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
                            <h1 class="text-white" style="font-style: bold;"><span style="font-weight: bold;">한화 이글스의<br>추억과 영광의 순간들을 함께하세요!<br></span></h1>
                        </li>
                    </ul>
                </div>
                </div>
            </nav>

        </nav>
    </nav>
         

        <!-- 컨텐츠영역 -->
    <div class="container-fluid text-white bg-black text-center">
        <div class="row">

        
    <div id="container">
        <h1 style="font-weight: bold;">1980'</h1>
        <br>
        <h2 style="font-weight: bold; color: orange;">프로야구 출범</h2>
        <img src="../img/history/1980.jpg" class="rounded" alt="">
        <br><br><br><br><br><br><br><br>
    </div>
    <div id="container">
        <h1 style="font-weight: bold;">1985'</h1>
        <br>
        <h5 style="font-weight: bold; color: orange;">1985년 한화그룹이 대전을 연고지로 삼은 제7구단으로 창단 준비 시작
            팀 명칭 공모 결과 “빙그레이글스”로 결정</h5>
        <img src="../img/history/1985.jpg" class="rounded" alt="">
        <br><br><br><br><br><br><br><br>
    </div>
    
    <div id="container">
        <h1 style="font-weight: bold;">1986'</h1>
        <br>
        <h5 style="font-weight: bold; color: orange;">대전지역 빙그레이글스 창단식(배성서 초대감독) 진행 <br><br>
            대전구장 12,000석의 만원 관중 앞에서 MBC청룡을 상대로 치른 역사적인 첫 경기 시작
            </h5>
        <img src="../img/history/1986.jpg" class="rounded" alt="">
        <br><br><br><br><br><br><br><br>
    </div>
    <div id="container">
        <h1 style="font-weight: bold;">1987'</h1>
        <br>
        <h2 style="font-weight: bold; color: orange;">제2대 김영덕 감독 선임</h2>
        <img src="../img/history/1987.jpg" class="rounded" alt="">
        <br><br><br><br><br><br><br><br>
    </div>
    <div id="container">
        <h1 style="font-weight: bold;">1990'</h1>
        <br>
        <h2 style="font-weight: bold; color: orange;">돌풍의 신생팀</h2><br><p>20세기 최후의 승자! 한국시리즈 우승
            돌풍의 신생팀에서 20세기 최후의 승자가 되기까지</p>
        <img src="../img/history/1990.jpg" class="rounded" alt="">
        <br><br><br><br><br><br><br><br>
    </div>
    <div id="container">
        <h1 style="font-weight: bold;">1991'</h1>
        <br>
        <h2 style="font-weight: bold; color: orange;">장종훈 타격 4관왕</h2><br><p>송진우는 1990년 구원왕에 이어 1992년 19승과 17세이브로 다승과
            구원왕 타이틀 동시 석권</p>
        <img src="../img/history/1991.jpg" class="rounded" alt="">
        <br><br><br><br><br><br><br><br>
    </div>
    <div id="container">
        <h1 style="font-weight: bold;">1993'</h1>
        <br>
        <h2 style="font-weight: bold; color: orange;">구단 명칭 한화이글스로 변경</h2>
        <img src="../img/history/1993.jpg" class="rounded" alt="">
        <br><br><br><br><br><br><br><br>
    </div>
    <div id="container">
        <h1 style="font-weight: bold;">1997'</h1>
        <br>
        <h2 style="font-weight: bold; color: orange;">정민철 프로통산 9번째 노히트노런 기록 수립</h2>
        <img src="../img/history/1997.jpg" class="rounded" alt="">
        <br><br><br><br><br><br><br><br>
    </div>
    <div id="container">
        <h1 style="font-weight: bold;">1999'</h1>
        <br>
        <h2 style="font-weight: bold; color: orange;">1999년 한국시리즈 우승</h2><br><p>한국시리즈 MVP 구대성</p>
        <img src="../img/history/1999.jpg" class="rounded" alt="">
        <br><br><br><br><br><br><br><br>
    </div>
    <div id="container">
        <h1 style="font-weight: bold;">2000'</h1>
        <br>
        <h2 style="font-weight: bold; color: orange;">레전드의 세대교체</h2>
        <img src="../img/history/2000.jpg" class="rounded" alt="">
        <br><br><br><br><br><br><br><br>
    </div>
    <div id="container">
        <h1 style="font-weight: bold;">2001'</h1>
        <br>
        <h2 style="font-weight: bold; color: orange;">김태균 2001년 신인왕 수상</h2>
        <img src="../img/history/2001.jpg" class="rounded" alt="">
        <br><br><br><br><br><br><br><br>
    </div>
    <div id="container">
        <h1 style="font-weight: bold;">2004'</h1>
        <br>
        <h2 style="font-weight: bold; color: orange;">제 7대 감독 김인식 선임</h2>
        <img src="../img/history/2004.jpg" class="rounded" alt="">
        <br><br><br><br><br><br><br><br>
    </div>
    <div id="container">
        <h1 style="font-weight: bold;">2005'</h1>
        <br>
        <h2 style="font-weight: bold; color: orange;">장종훈 은퇴경기</h2><br><h2>등번호 35번 구단 최초 영구결번 지정</h2>
        <img src="../img/history/2005.jpg" class="rounded" alt="">
        <br><br><br><br><br><br><br><br>
    </div>
    <div id="container">
        <h1 style="font-weight: bold;">2006'</h1>
        <br>
        <h2 style="font-weight: bold; color: orange;">송진우 프로 통산 첫 번째 200승 2,800이닝 투구</h2>
        <img src="../img/history/2006.jpg" class="rounded" alt="">
        <br><br><br><br><br><br><br><br>
    </div>
    <div id="container">
        <h1 style="font-weight: bold;">2006'</h1>
        <br>
        <h2 style="font-weight: bold; color: orange;">류현진 2006년 신인왕, 시즌 MVP 동시 석권</h2>
        <img src="../img/history/2006-1.jpg" class="rounded" alt="">
        <br><br><br><br><br><br><br><br>
    </div>
    <div id="container">
        <h1 style="font-weight: bold;">2009'</h1>
        <br>
        <h2 style="font-weight: bold; color: orange;">송진우 은퇴경기, 등번호 21번은 영구결번으로 지정</h2>
        <img src="../img/history/2009.jpg" class="rounded" alt="">
        <br><br><br><br><br><br><br><br>
    </div>
    <div id="container">
        <h1 style="font-weight: bold;">2010'</h1>
        <br>
        <h2 style="font-weight: bold; color: orange;">새로운 도약을 위한 바닥 다지기</h2><p>바닥이 탄탄해야 더 높이 날아오를 수 있는 법<br>팬과 함께 새로운 이글스로 도약하기 위한 시간들</p>
        <img src="../img/history/2010.jpg" class="rounded" alt="">
        <br><br><br><br><br><br><br><br>
    </div>
    <div id="container">
        <h1 style="font-weight: bold;">2011'</h1>
        <br>
        <h2 style="font-weight: bold; color: orange;">김태균 입단, 박찬호 입단</h2>
        <img src="../img/history/2011.jpg" class="rounded" alt="">
        <br><br><br><br><br><br><br><br>
    </div>
    <div id="container">
        <h1 style="font-weight: bold;">2012'</h1>
        <br>
        <h2 style="font-weight: bold; color: orange;">류현진의 메이저리그 LA 다저스 입단 확정</h2>
        <img src="../img/history/2012.jpg" class="rounded" alt="">
        <br><br><br><br><br><br><br><br>
    </div>
    <div id="container">
        <h1 style="font-weight: bold;">2017'</h1>
        <br>
        <h2 style="font-weight: bold; color: orange;">김태균 86경기 연속 출루 기록 경신</h2>
        <img src="../img/history/2017.jpg" class="rounded" alt="">
        <br><br><br><br><br><br><br><br>
    </div>
    <div id="container">
        <h1 style="font-weight: bold;">2019'</h1>
        <br>
        <h2 style="font-weight: bold; color: orange;">정민철 단장 선임</h2>
        <img src="../img/history/2019.jpg" class="rounded" alt="">
        <br><br><br><br><br><br><br><br>
    </div>
    <div id="container">
        <h1 style="font-weight: bold;">2019'</h1>
        <br>
        <h2 style="font-weight: bold; color: orange;">수베로 감독 선임</h2>
        <img src="../img/history/2019-1.jpg" class="rounded" alt="">
        <br><br><br><br><br><br><br><br>
    </div>
    


            






</div>
</div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous">
        </script>


</body>
</html>