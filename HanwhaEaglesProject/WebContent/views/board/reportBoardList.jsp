<%@page import="eagles.board.vo.BoardVO"%>
<%@page import="eagles.board.service.BoardServiceImpl"%>
<%@page import="eagles.board.service.IBoardService"%>
<%@page import="eagles.board.vo.ReportVO"%>
<%@page import="utils.ArticlePage"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신고 게시물 관리</title>
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

    

</style>
</head>
<body>


	<%@include file="../header.jsp" %>
	
    <nav class="container-fluid content-imgnav">
        <div class="content-imgdiv">
             <img src="../../img/commonImg/bg_header_fan.jpg">
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
                            <li class="col col-1" id="PCFACN" style="margin-right: 40px;"><a href="/ManagerPage.do" class="nav-link text-white"><span style="width: 0px;"></span>블랙리스트 관리</a></li>
                            <li class="col col-1" id="PCFACN" style="margin-right: 40px;"><a href="/ReportBoardList.do" class="nav-link"><span style="width: 0px; color: orange;">신고 게시물 관리</span></a></li>                                                     
                            <li class="col col-1" id="PCFACN" style="margin-right: 30px;"><a href="/AllPayCancel.do" class="nav-link text-white"><span style="width: 0px;"></span>전체 티켓예매 내역</a></li>
                            <li class="col col-1" id="PCFAFT" style="margin-right: 30px;"><a href="/AllTicketPay.do" class="nav-link text-white"><span style="width: 0px;"></span>전체 티켓환불 내역</a></li>
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
                  <li class="col col-1"><li></li>
                  <li class="col col-8" id="PCFACN"><h1 class="text-white" style="font-style: bold;"><span style="font-weight: bold; ">신고 게시물 관리</span></h1></li>
               </ul>
               </div>
            
         </nav>

       <nav class="content-header" style="margin-right: 145px; margin-bottom: 5px;">
  <div class="input-group justify-content-end" >
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
                           <ul class="navbar-nav content-div board_menu" style="border: 1px solid white; border-radius: 10px; height: 70px; text-align: center;
                              padding: 20px 3px 0px 3px;">
                              <li class="col col-1 board-list" style="color: white; font-size: 1.1em;" ><span style="width: 0px;">게시번호</span></li>
                              <li class="col col-1 board-list" style="color: white; font-size: 1.1em;"><span style="width: 0px;">게시ID</span></li>
                              <li class="col col-4 board-list" style="color: white; font-size: 1.1em;"><span style="width: 0px;">제목</span></li>
                              <li class="col col-1 board-list" style="color: white; font-size: 1.1em;"><span style="width: 0px;">신고자ID</span></li>
                              <li class="col col-5 board-list" style="color: white; font-size: 1.1em;"><span style="width: 0px;">신고사유</span></li>
                           </ul>
                        </div>
                     </li>
               </ul>
            </div>
         </nav>
          <% 
          				ArticlePage articlePage = (ArticlePage)request.getAttribute("rvList");
          				List<ReportVO> rvList = articlePage.getContent();
                        
          				int repSize = rvList.size();
                        if (repSize == 0) {
                        %>
                        
<nav class="board-container">
    <nav class="content-header navbar-expand-lg">
        <div class="row collapse navbar-collapse">
            <ul class="navbar-nav content-div board_menu" style="height: 50px;">
                <li class="col col-1"></li>
                <li class="col col-10">
                    <div class="row collapse navbar-collapse board-idv">
                       
                        <ul class="navbar-nav content-div board_menu" style="padding: 0px 3px 0px 3px;">
                            <li class="col col-1 board-list" style="color: gray; text-align: center; font-size: 0.8em;">
                                <a href="" class="nav-link text-white"><span class="prod-name" style="width: 0px;"></span></a>
                            </li>
                            <li class="col col-1 board-list" style="color: gray; text-align: center; font-size: 0.8em;">
                                <a href="" class="nav-link text-white"><span class="prod-name" style="width: 0px;">조회된 신고 게시물이 없습니다.</span></a>
                            </li>
                            <li class="col col-4 board-list" style="color: gray; text-align: center; font-size: 0.8em;">
                                <a href="" class="nav-link text-white"><span style="width: 0px;"></span></a>
                            </li>
                            <li class="col col-1 board-list" style="color: gray; text-align: center; font-size: 0.8em;">
                                <a href="" class="nav-link text-white"><span style="width: 0px;"></span></a>
                            </li>
                            <li class="col col-5 board-list" style="color: gray; text-align: center; font-size: 0.8em;">
                                <a href="" class="nav-link text-white"><span style="width: 0px;"></span></a>
                            </li>
                        </ul>
                        <% 
                        } else { %>
                        	 
                            <% for (int i = 0; i < rvList.size(); i++) {
                        	    ReportVO rv = rvList.get(i);
                        	    
                        	    /* 게시판 번호 */
                        	    String boardCd = rv.getBoardCd();
                        	    IBoardService bdService = BoardServiceImpl.getInstance();
                        	    BoardVO bv = bdService.getBoard(boardCd);
                        	    
                        	    /* 피의자 ID */
                        	    String userId = bv.getMemId();
                        	    IMemberService memService = MemberServiceImpl.getInstance();
                        	    		
                        	    MemberVO mv = memService.getMember(memId);
                        	    
                        	    
                        	    
                        	    /* 신고자ID */
                        	    String reportId = rv.getReportId(); 
                        %>
                        
                        <nav class="board-container">
    <nav class="content-header navbar-expand-lg">
        <div class="row collapse navbar-collapse">
            <ul class="navbar-nav content-div board_menu" style="height: 50px;">
                <li class="col col-1"></li>
                <li class="col col-10">
                    <div class="row collapse navbar-collapse board-idv">
                        <ul class="navbar-nav content-div board_menu" style="padding: 0px 3px 0px 3px; color: white; font-size: 15px;">
                            <li class="col col-1 board-list" style="text-align: center;">
                                    <span class="prod-name" id="no-<%= i %>" style="width: 0px;"><%=bv.getBoardCd()%></span>
                                </li>
                                <li class="col col-1 board-list" style="text-align: center;">
                                    <span class="prod-name" id="bId-<%= i %>" style="width: 0px;"><%=bv.getMemId() %></span>
                                </li>
                                <li class="col col-4 board-list" style="text-align: center; cursor: pointer;">
                                    <span style="width: 0px;" id="<%=bv.getBoardCd()%>" onclick="redirectToOtherPage('<%=bv.getBoardCd() %>', '<%=rv.getReportId() %>')" name="<%=bv.getBoardCd() %>"><%=bv.getBoardTitle() %></span>
                                </li>
                                <li class="col col-1 board-list" style="text-align: center;">
                                    <span style="width: 0px;" id="bNn-<%= i %>"><%=rv.getReportId() %></span>
                                </li>
                                <li class="col col-5 board-list" style="text-align: center;">
                                    <span style="width: 0px;" id="bMa-<%= i %>"><%=rv.getReportContent() %></span>
                                </li>
                        </ul>
                        
                    </div>
                </li>
            </ul>
        </div>
    </nav>
</nav>
<% }
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
            <nav aria-label="Page navigation example" class="d-flex justify-content-center" >
			  <ul class="pagination" >
<%-- 			    <li class="page-item"><a class="page-link" href="/ManagerPage.do?currentPage=${memList.startPage-5}">Previous</a></li> --%>
			    <c:forEach var="pNo" begin="${rvList.startPage}" end="${rvList.endPage}" varStatus="stat">
			    	<li class="page-item"><a class="page-link" id="pageCss" style="background-color: black; color: white; border: 2px solid #f37321;" href="/ReportBoardList.do?rpcurrentPage=${pNo}">${pNo}</a></li>
			    </c:forEach>
<%-- 			    <li class="page-item"><a class="page-link" href="/ManagerPage.do?currentPage=${memList.startPage+5}">Next</a></li> --%>
			  </ul>
			</nav>
            
         </nav>
         
        </div>
    </nav> 
    
    
 <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous">
        </script>
<script>
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
  
function redirectToOtherPage(boardCd, reportId) {
    console.log("boardCd:", boardCd); // 콘솔 로그 추가
    console.log("ReportId:", reportId); // 콘솔 로그 추가
    var newUrl = 'http://localhost:8888/ReportRead.do?boardCd=' + boardCd + '&reportId=' + reportId;
    window.location.href = newUrl;
}

</script>

</body>
</html>