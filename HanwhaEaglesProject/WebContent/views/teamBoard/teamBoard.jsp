<%@page import="eagles.news.vo.TeamBoardVO"%>
<%@page import="utils.ArticlePage"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구단 소식</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<style>

	<%@include file="../headerCSS.jsp" %>


	.conts_black_box {
            width: 700px;
            margin: 0 auto;
            padding: 90px 120px;
            background-color: #000;
        }

        .orangeText {
            color: orange
        }

        .txtalign {
            display: flex;
            justify-content: right;
        }

        .info#info__birth {
            display: flex;
        }

        .info#info__birth select {
            margin-left: 7px;
        }

        .info#info__birth select:first-child {
            margin-left: 0px;
        }

        .info#info__birth select::-webkit-scrollbar {
            width: 10px;
        }

        .info#info__birth select::-webkit-scrollbar-thumb {
            background-color: #b6b6b6;
            border-radius: 3px;
        }

        .info#info__birth select::-webkit-scrollbar-track {
            background-color: #ebe9e9;
            border-radius: 6px;
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
    height : 350px
}

/* 중단그라데이션 */
.needgdt { 

    background-image: linear-gradient(to left, rgba(0, 0, 0, 0), black);
    height : 50px;
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


#container {
  background-color: rgba(0, 0, 0, 0.7);
    }
    

  #titlehover {
    /* 기본 스타일 */
    color: white;
    transition: color 0.3s; /* 부드러운 전환 효과를 위해 추가 */
  }

  #titlehover:hover {
    /* 호버 효과 스타일 */
    color: orange;
  }

    

</style>
</head>
<body>


	<%@include file="../header.jsp" %>

<nav class="container-fluid content-imgnav">
    <div class="content-imgdiv">
        <img src="../../img/commonImg/bg_header_eagles.jpg">
    </div>
</nav>

<nav>
    <nav class="content-emptynav">
        <div class="content-emptydiv">
            <!-- 빈공간영역 설정 -->
        </div>
    </nav>

    <nav class="needgdt">
        <nav class="content-header navbar-expand-lg" style="padding: 0px 10px 0px 10px; ">
            <a href="" class="nav-link text-white">
                <div class="row collapse navbar-collapse board-div">
                    <ul class="navbar-nav content-div board_menu">
                        <li class="col col-1" id="PCFACN"><a href="" class="nav-link text-white"><span style="width: 0px;"></span> </a></li>
                        <li class="col col-1" id="PCFACN" style="margin-right: 40px;"><a href="/TeamBoard.do" class="nav-link"><span style="width: 0px; color:orange">구단소식</span></a></li>
                        <li class="col col-1" id="PCFACN" style="margin-right: 40px;"><a href="/BoardMain.do" class="nav-link text-white"><span style="width: 0px;"></span>팬 타임즈</a></li>
                        <li class="col col-1" id="PCFACN" style="margin-right: 30px;"><a href="/gall.do" class="nav-link text-white"><span style="width: 0px;"></span>갤러리</a></li>
                    </ul>
                </div>
            </a>
        </nav>
    </nav>
</nav>

<nav class="container-fluid content-board bg-black">
    <div class="content-boarddiv">

        <nav class="content-header navbar-expand-lg" style="padding: 0px 10px 0px 10px;">
            <div class="row collapse navbar-collapse">
                <ul class=" navbar-nav content-div board_menu" style="margin-top: 50px;">
                    <li class="col col-1"></li>
                    <li class="col col-8" id="PCFACN">
                        <h1 class="text-white" style="font-weight: bold;"><span style="font-weight: bold; ">구단 소식</span></h1>
                    </li>
                </ul>
            </div>
        </nav>

        <nav class="content-header" style="margin-right: 145px; margin-bottom: 5px;">
            <div class="input-group justify-content-end">
                <input type="text" name="search_content" class="search-content " value=""/>
                <button type="button" id="search-btn" class="btn btn-primary" style="background-color: #f37321; border: solid 2px #f37321">검색</button>
            </div>
        </nav>

        <nav class="content-header navbar-expand-lg">
            <div class="row collapse navbar-collapse">
                <ul class="navbar-nav content-div board_menu">
                    <li class="col col-1"></li>
                    <li class="col col-10">
                        <div class="row collapse navbar-collapse">
                            <ul class="navbar-nav content-div board_menu" style="border: 1px solid white; border-radius: 10px; height: 70px; text-align: center; padding: 20px 3px 0px 3px;">
                                <li class="col col-2 board-list" style="color: white; font-size: 1.1em;"><span style="width: 0px;">게시번호</span></li>
                                <li class="col col-5 board-list" style="color: white; font-size: 1.1em;"><span style="width: 0px;">제목</span></li>
                                <li class="col col-2 board-list" style="color: white; font-size: 1.1em;"><span style="width: 0px;">이름</span></li>
                                <li class="col col-3 board-list" style="color: white; font-size: 1.1em;"><span style="width: 0px;">게시일자</span></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>

        <!-- 게시물 생성 구간 -->
<%
    ArticlePage articlePage = (ArticlePage) request.getAttribute("tbList");
    List<TeamBoardVO> tbList = (articlePage != null) ? articlePage.getContent() : null;
    int tbSize = (tbList != null) ? tbList.size() : 0;
    if (tbSize == 0) {
%>
<nav class="board-container">
    <nav class="content-header navbar-expand-lg">
        <div class="row collapse navbar-collapse">
            <ul class="navbar-nav content-div board_menu" style="height: 50px;">
                <li class="col col-1"></li>
                <li class="col col-10">
                    <div class="row collapse navbar-collapse board-idv">
                        <ul class="navbar-nav content-div board_menu" style="padding: 0px 3px 0px 3px;">
                            <li class="col col-2 board-list" style="color: gray; text-align: center; font-size: 0.8em;">
                                <a href="" class="nav-link text-white"><span class="prod-name" style="width: 0px;"></span></a>
                            </li>
                            <li class="col col-5 board-list" style="color: gray; text-align: center; font-size: 0.8em;">
                                <a href="" class="nav-link text-white"><span class="prod-name" style="width: 0px;">조회된 구단소식 게시물이 없습니다.</span></a>
                            </li>
                            <li class="col col-2 board-list" style="color: gray; text-align: center; font-size: 0.8em;">
                                <a href="" class="nav-link text-white"><span style="width: 0px;"></span></a>
                            </li>
                            <li class="col col-3 board-list" style="color: gray; text-align: center; font-size: 0.8em;">
                                <a href="" class="nav-link text-white"><span style="width: 0px;"></span></a>
                            </li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </nav>
</nav>
<%
} else {
    for (int i = 0; i < tbList.size(); i++) {
        TeamBoardVO tb = tbList.get(i);
%>
<nav class="board-container">
    <nav class="content-header navbar-expand-lg">
        <div class="row collapse navbar-collapse">
            <ul class="navbar-nav content-div board_menu" style="height: 50px;">
                <li class="col col-1"></li>
                <li class="col col-10">
                    <div class="row collapse navbar-collapse board-idv">
                        <ul class="navbar-nav content-div board_menu" style="padding: 0px 3px 0px 3px;">
                            <li class="col col-2 board-list" style="color: white; text-align: center; font-size: 0.9em;">
                                <span class="prod-name" style="width: 0px;">
                                    <% if (tb.getTeamboardFix().equals("1")) { %>
                                    공지
                                    <% } else { %>
                                    <%= tb.getTeamboardCd() %>
                                    <% } %>
                                </span>
                            </li>
                            <li class="col col-5 board-list" id="<%=tb.getTeamboardCd() %>" onclick="redirectToOtherPage('<%=tb.getTeamboardCd() %>')" name="<%=tb.getTeamboardCd() %>" style="color: white; text-align: center; font-size: 0.9em; cursor: pointer;">
                                <span id="titlehover"class="prod-name" style="width: 0px;"><%=tb.getTeamboardTitle() %></span>
                            </li>
                            <li class="col col-2 board-list" style="color: white; text-align: center; font-size: 0.9em;">
                                <span><%=tb.getMemId() %></span>
                            </li>
                            <li class="col col-3 board-list" style="color: white; text-align: center; font-size: 0.9em;">
                                <span style="width: 0px;"><%=tb.getTeamboardDate() %></span>
                            </li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </nav>
</nav>
<%
    }
}
%>

        <nav class="content-header navbar-expand-lg">
            <div class="row collapse navbar-collapse">
                <ul class="navbar-nav content-div board_menu" style="height: 20px;">
                    <li class="col col-1"></li>
                    <li class="col col-10">
                        <div class="row collapse navbar-collapse">
                            <hr style="color:white">
                        </div>
                    </li>
                </ul>
            </div>
        </nav>

        <nav aria-label="Page navigation example" class="d-flex justify-content-center">
            <ul class="pagination">
                <%-- <li class="page-item"><a class="page-link" href="/ManagerPage.do?currentPage=${memList.startPage-5}">Previous</a></li> --%>
                <c:forEach var="pNo" begin="${tbList.startPage}" end="${tbList.endPage}" varStatus="stat">
                    <li class="page-item"><a class="page-link" id="pageCss" style="background-color: black; color: white; border: 2px solid #f37321;" href="/TeamBoard.do?tbcurrentPage=${pNo}">${pNo}</a></li>
                </c:forEach>
                <%-- <li class="page-item"><a class="page-link" href="/ManagerPage.do?currentPage=${memList.startPage+5}">Next</a></li> --%>
            </ul>
        </nav>

        <%
            String logMemId = (String) session.getAttribute("LogMemId");
            if (logMemId != null && logMemId.equals("MANAGER")) {
        %>
        <div class="input-group justify-content-end">
            <button type="button" id="uploadBtn" class="btn btn-primary" style="background-color: black; margin-right: 145px; border: solid 2px #f37321" onclick="uploadPage()">게시글 작성하기</button>
        </div>
        <%
            }
        %>
    </div>
</nav>
    
    
    
    
    
    
 <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous">
        </script>
<script>
function redirectToOtherPage(teamboardCd) {
    console.log("teamboardCd:", teamboardCd); // 콘솔 로그 추가
    var newUrl = 'http://localhost:8888/ReadTeamBoard.do?teamboardCd=' + teamboardCd;
    window.location.href = newUrl;
}


// 작성하기 버튼 함수
  function uploadPage() {
		console.log( "클릭됨" );
      window.location.href = "/InsertTeamBoard.do";

  }

// 페이지 버튼 이벤트
$(document).ready(function() {
    $('.pagination .page-item a.page-link').hover(
      function() {
        $(this).css('background-color', 'white');
        $(this).css('color', 'black');
      },
      function() {
        $(this).css('background-color', 'black');
        $(this).css('color', 'white');
      }
    );
  });

</script>

</body>
</html>