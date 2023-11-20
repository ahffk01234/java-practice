<%@page import="eagles.ask.vo.AskVO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="eagles.shop.product.vo.MypageProductVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
   List<AskVO> askList = (List<AskVO>)request.getAttribute("readAsk");
%>    
    
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

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
<body>
    <!-- 헤더헤더헤더헤더헤더헤더헤더헤덯데헤더헤더헤더헤더헤더헤더헤더헤덯데헤더헤더헤더헤더헤더헤더헤더헤덯데 -->


   <%@include file="../header.jsp" %>
   
    <!-- 콘텐츠콘텐츠콘체늩콘텐츠콘텐츠콘체늩콘텐츠콘텐츠콘체늩콘텐츠콘텐츠콘체늩콘텐츠콘텐츠콘체늩콘텐츠콘텐츠콘체늩콘텐츠콘텐츠콘체늩콘텐츠콘텐츠콘체늩 -->
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
         
      </nav>
 

   <!-- 컨텐츠영역 -->
   <nav class="container-fluid content-board bg-black">
   
      <nav class="content-header navbar-expand-lg" style="padding: 40px 10px 0px 10px;">
                <a href="" class="nav-link text-white">
                <div class="row collapse navbar-collapse board-div">
                         <ul class="navbar-nav content-div board_menu">        
                            <li class="col col-1" id="PCFACN"><a href="" class="nav-link text-white"><span style="width: 0px;"></span> </a></li>                            
                            <li class="col col-1" id="PCFACN"><a href="" class="nav-link text-white"><span style="width: 0px;"></span>내정보내역</a></li>
                            <li class="col col-1" id="PCFACN"><a href="http://localhost:8888/mypage/basketList.do" class="nav-link text-white"><span style="width: 0px;"></span>장바구니</a></li>                            
                            <li class="col col-1" id="PCFACN"><a href="http://localhost:8888/mypage/productList.do" class="nav-link text-white"><span style="width: 0px;"></span>굿즈구매내역</a></li>
                            <li class="col col-1" id="PCFAFT"><a href="http://localhost:8888/myticketPay.do" class="nav-link text-white"><span style="width: 0px;"></span>티켓예매내역</a></li>
                            <li class="col col-1" id="PCFAGL"><a href="" class="nav-link text-white"><span style="width: 0px;"></span>쿠폰현황</a></li>
                            <li class="col col-1" id="PCFAGL"><a href="" class="nav-link text-white"><span style="width: 0px;"></span>몰?루</a></li>
                            
                        </ul>
                    </div>
                </a>
         </nav>
         <nav class="content-header navbar-expand-lg" style="padding: 0px 10px 0px 10px;">
            <div class="row collapse navbar-collapse">
               <ul class=" navbar-nav content-div board_menu">               
                  <li class="col col-1"><li></li>
                  <li class="col col-8" id="PCFACN"><h1 class="text-white" style="font-style: bold;"><span style="font-weight: bold;">고객님의 문의사항</span> 상세화면입니다.</h1></li>
               </ul>
               </div>
            </div>
         </nav>
   </nav>
   
    <nav id = "height-control" class="container-fluid content-board bg-black">
         <div class="content-boarddiv">
						

<!--    <form action="" method=""> -->
         <!-- 데이트피커사용 -->
       <form action = "/mypage/productSearch.do" method = "POST">
         <nav class="content-header navbar-expand-lg">
            <div class="row collapse navbar-collapse">

            </div>
         </nav>
<!--    </form> -->
         <nav class="content-header navbar-expand-lg">
            <div class="row collapse navbar-collapse">
               <ul class="navbar-nav content-div board_menu">
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
    int listSize = askList.size();
    if(listSize == 0){

    }else {
       for(AskVO av : askList) {
         
%>

         
         <nav class="content-header navbar-expand-lg">
            <div class="row collapse navbar-collapse">
               <ul class="navbar-nav content-div board_menu">
                  <li class="col col-1"></li>
                     <li class="col col-10">
                        <div class="row collapse navbar-collapse">
              				 <ul class="navbar-nav content-div board_menu" style="text-align:center;">
              				 	<li class="col col-2"></li>
              				 	<li class="col col-1">
              				 		<span style="font-size:2em; font-weight:bold; color:white;">작성자 </li>
              				 	<li class="col col-1" >
              				 		<span style="font-size:2em;  color:white;"><%=av.getMemId() %></span></li>
              				 	
              				 </ul>
                        </div>
                     </li>
               </ul>
            </div>
         </nav>
	</form>



         <nav class="board-container">
            <nav class="content-header navbar-expand-lg">
            							<nav class="board-container height-control">
            
               <div class="row collapse navbar-collapse">
                  <ul class="navbar-nav content-div board_menu" style="height: 50px;">
                     <li class="col col-1"></li>
                        <li class="col col-10">
                           <div class="row collapse navbar-collapse board-idv">
                              <ul class="navbar-nav content-div board_menu" style="padding: 0px 3px 0px 3px;">
                                 <li class="col col-6 board-list" style="color: gray; text-align: center; font-size: 0.8em;">
                                    <a href="" class="nav-link text-white">
                                    <span class="prod-name"style="width: 0px;"><%=av.getAskCd() %></span></a></li>
                                            <li class="col col-1 board-list" style="color: gray; text-align: center; font-size: 0.8em;">
                                                <a href="" class="nav-link text-white"><span style="width: 0px;"><%=av.getMemId() %></span></a></li>
                                 <li class="col col-1 board-list" style="color: gray; text-align: center; font-size: 0.8em;">
                                    <a href="" class="nav-link text-white"><span style="width: 0px;"><%=av.getAskTitle() %></span></a></li>
                                 <li class="col col-1 board-list" style="color: gray; text-align: center; font-size: 0.8em;">
                                    <a href="" class="nav-link text-white"><span style="width: 0px;"><%=av.getAskContent() %></span></a></li>
                                 <% 
                                          	  SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                                          	  String mpvCartDate = dateFormat.format(av.getAskDate());
                                 %>
                                 <li class="col col-1 board-list" style="color: gray; text-align: center; font-size: 0.8em;">
                                    <a href="" class="nav-link text-white"><span style="width: 0px;"><%=av.getAskDate() %></span></a></li>
                                            <li class="col col-1 board-list" style="color: gray; text-align: center; font-size: 0.8em;">

                                                <a href="" class="nav-link text-white"><span class="basket-day" style="width: 0px;"><%=av.getAskDate() %></span></a></li>
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
                  <ul class="navbar-nav content-div board_menu" style="height: 50px;">
                     <li class="col col-1"></li>
                        <li class="col col-10">
                           <div class="row collapse navbar-collapse">
                              <hr style="color:white">                              
                           </div>
                        </li>
                  </ul>
               </div>
            </nav>


            <nav class="content-header navbar-expand-lg">
               <div class="row collapse navbar-collapse">
                  <ul class="navbar-nav content-div board_menu" style="height: 50px;">
                     <li class="col col-5"></li>
                        <li class="col col-2">
                           <nav class="content-header navbar-expand-lg">
                              <div class="row collapse navbar-collapse">
                                 <ul class="navbar-nav content-div board_menu" style="height: 50px;">
                                       <li class="col col-1 text-white"><a href="" class="nav-link text-white">&lt;</a></li>
                                       <li class="col col-1 text-white"><a href="" class="nav-link text-white">1</a></li>
                                       <li class="col col-1 text-white"><a href="" class="nav-link text-white">2</a></li>
                                       <li class="col col-1 text-white"><a href="" class="nav-link text-white">3</a></li>
                                       <li class="col col-1 text-white"><a href="" class="nav-link text-white">4</a></li>
                                       <li class="col col-1 text-white"><a href="" class="nav-link text-white">5</a></li>
                                       <li class="col col-1 text-white"><a href="" class="nav-link text-white">6</a></li>
                                       <li class="col col-1 text-white"><a href="" class="nav-link text-white">7</a></li>
                                       <li class="col col-1 text-white"><a href="" class="nav-link text-white">8</a></li>
                                       <li class="col col-1 text-white"><a href="" class="nav-link text-white">9</a></li>
                                       <li class="col col-1 text-white"><a href="" class="nav-link text-white">&gt;</a></li>
                                 </ul>
                              </div>   
                           </nav>      
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
<script>
// $('.datePicker')
// .datepicker({
//    format: 'yyyy-mm-dd', //데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
//    startDate: '-10d', //달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
//    endDate: '+10d', //달력에서 선택 할 수 있는 가장 느린 날짜. 이후로 선택 불가 ( d : 일 m : 달 y : 년 w : 주)
//    autoclose: true, //사용자가 날짜를 클릭하면 자동 캘린더가 닫히는 옵션
//    calendarWeeks: false, //캘린더 옆에 몇 주차인지 보여주는 옵션 기본값 false 보여주려면 true
//    clearBtn: false, //날짜 선택한 값 초기화 해주는 버튼 보여주는 옵션 기본값 false 보여주려면 true
// //    datesDisabled: ['2019-06-24', '2019-06-26'], //선택 불가능한 일 설정 하는 배열 위에 있는 format 과 형식이 같아야함.
//    daysOfWeekDisabled: [0, 6], //선택 불가능한 요일 설정 0 : 일요일 ~ 6 : 토요일
//    daysOfWeekHighlighted: [3], //강조 되어야 하는 요일 설정
//    disableTouchKeyboard: false, //모바일에서 플러그인 작동 여부 기본값 false 가 작동 true가 작동 안함.
//    immediateUpdates: false, //사용자가 보는 화면으로 바로바로 날짜를 변경할지 여부 기본값 :false
//    multidate: false, //여러 날짜 선택할 수 있게 하는 옵션 기본값 :false
//    multidateSeparator: ',', //여러 날짜를 선택했을 때 사이에 나타나는 글짜 2019-05-01,2019-06-01
//    templates: {
//       leftArrow: '&laquo;',
//       rightArrow: '&raquo;',
//    }, //다음달 이전달로 넘어가는 화살표 모양 커스텀 마이징
//    showWeekDays: true, // 위에 요일 보여주는 옵션 기본값 : true
//    title: '테스트', //캘린더 상단에 보여주는 타이틀
//    todayHighlight: true, //오늘 날짜에 하이라이팅 기능 기본값 :false
//    toggleActive: true, //이미 선택된 날짜 선택하면 기본값 : false인경우 그대로 유지 true인 경우 날짜 삭제
//    weekStart: 0, //달력 시작 요일 선택하는 것 기본값은 0인 일요일
//    language: 'ko', //달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.
// });
// // .on('changeDate', function (e) {
//    /* 이벤트의 종류 */
//    //show : datePicker가 보이는 순간 호출
//    //hide : datePicker가 숨겨지는 순간 호출
//    //clearDate: clear 버튼 누르면 호출
//    //changeDate : 사용자가 클릭해서 날짜가 변경되면 호출 (개인적으로 가장 많이 사용함)
//    //changeMonth : 월이 변경되면 호출
//    //changeYear : 년이 변경되는 호출
//    //changeCentury : 한 세기가 변경되면 호출 ex) 20세기에서 21세기가 되는 순간

// //    console.log(e);
//    // e.date를 찍어보면 Thu Jun 27 2019 00:00:00 GMT+0900 (한국 표준시) 위와 같은 형태로 보인다.
// //    });





   console.log("ㅇㅇㅇ");
$('#search-btn').on('click', function(){
   let search = document.querySelector('.search-content')
   let start = document.querySelector('.start-day');
   let end = document.querySelector('.end-day');
   let basket = document.querySelector('.basket-day');
   let prodnm = document.querySelector('.prod-name')
   
   let v_search = search.value;
   let v_start = start.value;
   let v_end = end.value;
   let v_basket = basket.innerText;
   let v_prodnm = prodnm.innerText;
   
   console.log("ㅇㅇㅇ");
   console.log(v_search);
   console.log(v_start);
   console.log(v_end);
   
   for(let i=0; i<=v_basket.length; i++){
      console.log(basket[i].innerText);   
   }
   for(let i=0; i<=v_prodnm.length; i++){
   console.log(prodnm[i].innerText);
   }
   
});


// $(function() {
//     $("#search-btn").on("click", function() {
//       let searchValue = $(".search-content").val();
//       if (searchValue. === "") {
//         return;
//       }
      
//       $.ajax({
//         type: "POST",
//         url: "search.jsp",
//         data: { search: searchValue },
//         success: function(response) {
//           $("#result").html(response);
//         },
//         error: function(xhr, status, error) {
//           console.error(error);
//         }
//       });
//     });
//   });

</script>
</body>
</head>