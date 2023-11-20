<%@page import="eagles.ticket.pay.vo.TicketPayVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    
    	List<TicketPayVO> myPayList = (List<TicketPayVO>)request.getAttribute("myTicketList");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>티켓예매내역</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.0/css/bootstrap.min.css">

  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.0/js/bootstrap.bundle.min.js"></script>
  
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
<!--                 <a href="" class="nav-link text-white"> -->
                    <div class="row collapse navbar-collapse board-div">
                         <ul class="navbar-nav content-div board_menu">	     
                         	<li class="col col-1" id="PCFACN"><!-- <a href="" class="nav-link text-white"> --><span style="width: 0px;"></span> </a></li>                				
                            <li class="col col-1" id="PCFACN" style="margin-right: 40px;"><a href="/ManagerPage.do" class="nav-link text-white"><span style="width: 0px;"></span>블랙리스트 관리</a></li>
                            <li class="col col-1" id="PCFACN" style="margin-right: 40px;"><a href="/ReportBoardList.do" class="nav-link text-white"><span style="width: 0px;"></span>신고 게시물 관리</a></li>                                                     
                            <li class="col col-1" id="PCFAFT" style="margin-right: 30px;"><a href="/AllTicketPay.do" class="nav-link"><span style="width: 0px; color: orange;">전체 티켓예매 내역</span></a></li>
                            <li class="col col-1" id="PCFACN" style="margin-right: 30px;"><a href="/AllPayCancel.do" class="nav-link text-white"><span style="width: 0px;"></span>전체 티켓환불 내역</a></li>
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
                  <li class="col col-8" id="PCFACN"><h1 class="text-white" style="font-style: bold;"><span style="font-weight: bold; ">전체 티켓예매 내역</span></h1></li>
               </ul>
               </div>
            
         </nav>
	
<!--     <nav class="container-fluid content-board bg-black"> -->
<!--          <div class="content-boarddiv"> -->

<!-- 			<!-- 데이트피커사용 --> -->
<!-- 			<nav class="content-header navbar-expand-lg"> -->
<!-- 				<div class="row collapse navbar-collapse"> -->
<!-- 					<ul class="navbar-nav content-div board_menu"> -->
<!-- 						<li class="col col-6"></li> -->
<!-- 							<div class="row collapse navbar-collapse"> -->
<!-- 								<ul class="navbar-nav content-div board_menu"> -->
<!-- 									<li class="col col-2"></li> -->
<!-- 									<li class="col col-1"></li> -->
<!-- 									<li class="col col-2"></li> -->
<!-- 									<li class="col col-1"></li> -->
<!-- 									<li class="col col-3"></li> -->
											
<!-- 									<li class="col col-1"><li> -->
<!-- 								</ul> -->
<!-- 							</div> -->
<!-- 					</ul> -->
<!-- 				</div> -->
<!-- 			</nav> -->

			<nav class="content-header navbar-expand-lg">
            <div class="row collapse navbar-collapse">
               <ul class="navbar-nav content-div board_menu">
                  <li class="col col-1"></li>
                     <li class="col col-10">
                        <div class="row collapse navbar-collapse">
                           <ul class="navbar-nav content-div board_menu" style="border: 1px solid white; border-radius: 10px; height: 70px; text-align: center;
                              padding: 20px 3px 0px 3px;">
                              <li class="col col-1 board-list" style="color: white; font-size: 1.1em;" ><span style="width: 0px;">순번</span></li>
                              <li class="col col-2 board-list" style="color: white; font-size: 1.1em;" ><span style="width: 0px;">좌석</span></li>
                              <li class="col col-1 board-list" style="color: white; font-size: 1.1em;"><span style="width: 0px;">결제코드</span></li>
                              <li class="col col-1 board-list" style="color: white; font-size: 1.1em;"><span style="width: 0px;">성인</span></li>
                              <li class="col col-1 board-list" style="color: white; font-size: 1.1em;"><span style="width: 0px;">학생</span></li>
                              <li class="col col-1 board-list" style="color: white; font-size: 1.1em;"><span style="width: 0px;">어린이</span></li>
                              <li class="col col-1 board-list" style="color: white; font-size: 1.1em;"><span style="width: 0px;">총가격</span></li>
                              <li class="col col-1 board-list" style="color: white; font-size: 1.1em;"><span style="width: 0px;">결제여부</span></li>
                              <li class="col col-1 board-list" style="color: white; font-size: 1.1em;"><span style="width: 0px;">결제수단</span></li>
                              <li class="col col-2 board-list" style="color: white; font-size: 1.1em;"><span style="width: 0px;">결제일시</span></li>
                           </ul>
                        </div>
                     </li>
               </ul>
            </div>
         </nav>

<%
	int listSize = myPayList.size();
	int i = 0;
	
	if(listSize == 0){
	}else {
		for(TicketPayVO tp : myPayList) {
			i++;
	 String ticketCd = tp.getTicketCd();
	 String ticketPayCd = tp.getTicketPayCd();
	 String ticketPayOk = tp.getTicketPayOk();
	 if(ticketPayOk == "1"){
		 ticketPayOk = "결제완료";
	 }else{
		 ticketPayOk = "완료";
	 }
	 
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
                                    <span style="width: 0px;"><%=i%></span>
                                </li>
                            	<li class="col col-2 board-list" style="text-align: center;">
                                    <span style="width: 0px;"><%=tp.getTicketSeat()%></span>
                                </li>
                            	<li class="col col-1 board-list" style="text-align: center;">
                                    <span style="width: 0px;"><%=tp.getTicketPayCd()%></span>
                                </li>
                            	<li class="col col-1 board-list" style="text-align: center;">
                                    <span style="width: 0px;"><%=tp.getTicketAdult()%></span>
                                </li>
                            	<li class="col col-1 board-list" style="text-align: center;">
                                    <span style="width: 0px;"><%=tp.getTicketStudent()%></span>
                                </li>
                                <li class="col col-1 board-list" style="text-align: center;">
                                    <span style="width: 0px;" ><%=tp.getTicketChild() %></span>
                                </li>
                                <li class="col col-1 board-list" style="text-align: center;">
                                    <span style="width: 0px;" ><%=tp.getTicketPayPrice() %></span>
                                </li>
                                <li class="col col-1 board-list" style="text-align: center;">
                                    <span style="width: 0px;" ><%=ticketPayOk %></span>
                                </li>
                                <li class="col col-1 board-list" style="text-align: center;">
                                    <span style="width: 0px;" ><%=tp.getTicketPayMethod() %></span>
                                </li>
                                <li class="col col-2 board-list" style="text-align: center;">
                                    <span style="width: 0px;" ><%=tp.getTicketPayDate() %></span>
                                </li>
                        </ul>
                        
                    </div>
                </li>
            </ul>
        </div>
    </nav>

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

<% 

		}
	}
%>

<!-- 				<nav class="content-header navbar-expand-lg"> -->
<!-- 					<div class="row collapse navbar-collapse"> -->
<!-- 						<ul class="navbar-nav content-div board_menu" style="height: 50px;"> -->
<!-- 							<li class="col col-5"></li> -->
<!-- 								<li class="col col-2"> -->
<!-- 									<nav class="content-header navbar-expand-lg"> -->
<!-- 										<div class="row collapse navbar-collapse"> -->
<!-- 											<ul class="navbar-nav content-div board_menu" style="height: 50px;"> -->
<!-- 													<li class="col col-1 text-white"><a href="" class="nav-link text-white">&lt;</a></li> -->
<!-- 													<li class="col col-1 text-white"><a href="" class="nav-link text-white">1</a></li> -->
<!-- 													<li class="col col-1 text-white"><a href="" class="nav-link text-white">2</a></li> -->
<!-- 													<li class="col col-1 text-white"><a href="" class="nav-link text-white">3</a></li> -->
<!-- 													<li class="col col-1 text-white"><a href="" class="nav-link text-white">4</a></li> -->
<!-- 													<li class="col col-1 text-white"><a href="" class="nav-link text-white">5</a></li> -->
<!-- 													<li class="col col-1 text-white"><a href="" class="nav-link text-white">6</a></li> -->
<!-- 													<li class="col col-1 text-white"><a href="" class="nav-link text-white">7</a></li> -->
<!-- 													<li class="col col-1 text-white"><a href="" class="nav-link text-white">8</a></li> -->
<!-- 													<li class="col col-1 text-white"><a href="" class="nav-link text-white">9</a></li> -->
<!-- 													<li class="col col-1 text-white"><a href="" class="nav-link text-white">&gt;</a></li> -->
<!-- 											</ul> -->
<!-- 										</div>	 -->
<!-- 									</nav>		 -->
<!-- 								</li>	 -->
<!-- 						</ul> -->
<!-- 					</div> -->
<!-- 				</nav> -->
				
<!-- 				<nav class="content-header navbar-expand-lg"> -->
<!-- 					<div class="row collapse navbar-collapse"> -->
<!-- 						<ul class="navbar-nav content-div board_menu" style="height: 50px;"> -->
<!-- 							<li class="col col-9"></li> -->

<%-- 								<% --%>
<!-- // 								int sum=0; -->
<!-- // 								for(TicketPayVO tp: myPayList) { -->
<!-- // 									sum= sum+(tp.getTicketPayPrice()); -->
<!-- // 								} -->
<%-- 								%> --%>
<!-- 							<li class="col col-1"><span style="color:white;"><h4>결제합계&nbsp;: </h4></span></li>								 -->
<%-- 							<li class="col col-1"><span style="color:white;"><h4><%=sum%>&nbsp;원</h4></span></li> --%>
<!-- 						</ul> -->
<!-- 					</div> -->
<!-- 				</nav> -->
				
			</nav>
        </div>
    </nav> 
<!-- </div> -->
<!-- </nav>   -->

	
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous">
</script>

</body>
</html>