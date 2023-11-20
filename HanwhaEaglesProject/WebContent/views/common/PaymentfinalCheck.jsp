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
    <title>Document</title>
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
    	width:100%;
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
    z-index: -2; */
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
  
    overflow-x: auto;
    height:auto;

}

</style>
</head>
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
                         <ul class="navbar-nav content-div board_menu">	     
                         	<li class="col col-1" id="PCFACN"><a href="" class="nav-link text-white"><span style="width: 0px;"></span> </a></li>                				
                            <li class="col col-1" id="PCFACN"><a href="http://localhost:8888/MyPageMem.do" class="nav-link text-white"><span style="width: 0px;"></span>내정보내역</a></li>
                            <li class="col col-1" id="PCFACN"><a href="http://localhost:8888/mypage/basketList.do" class="nav-link text-white"><span style="width: 0px;"></span>장바구니</a></li>                                                     
                            <li class="col col-1" id="PCFACN"><a href="http://localhost:8888/mypage/productList.do" class="nav-link text-white"><span style="width: 0px;"></span>굿즈구매내역</a></li>
                            <li class="col col-1" id="PCFAFT"><a href="" class="nav-link text-white"><span style="width: 0px;"></span>티켓예매내역</a></li>
                            <li class="col col-1" id="PCFAGL"><a href="" class="nav-link text-white"><span style="width: 0px;"></span>쿠폰현황</a></li>
                        </ul>
                    </div>
                </a>
			</nav>
			<nav class="content-header navbar-expand-lg" style="padding: 0px 10px 0px 10px;">
				<div class="row collapse navbar-collapse">
					<ul class=" navbar-nav content-div board_menu">					
						<li class="col col-1"><li></li>
						<li class="col col-8" id="PCFACN"><h1 class="text-white" style="font-style: bold;"><span style="font-weight: bold;">장바구니 내역</span>을 확인하실 수 있습니다.</h1></li>
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
								<ul class="navbar-nav content-div board_menu">
									<li class="col col-2"></li>
									<li class="col col-1"></li>
									<li class="col col-2"></li>
									<li class="col col-1"></li>
									<li class="col col-3">
									<div class="search-input"><input type="text" id="datePicker" class="form-control" value=""/></div></li>
									<li class="col col-1" style="padding : 2px 0px 0px 0px">
									&nbsp;&nbsp;<button type="button" class="btn btn-primary" style="font-size: 0.8em;">검색</button><li>		
									<li class="col col-1"><li>
								</ul>
							</div>
					</ul>
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
										<li class="col col-1 board-list" style="color: gray;"><span style="width: 0px;">번호</span></li>
										<li class="col col-6 board-list" style="color: gray;"><span style="width: 0px;">상품명</span></li>
										<li class="col col-1 board-list" style="color: gray;"><span style="width: 0px;">개수</span></li>
										<li class="col col-1 board-list" style="color: gray;"><span style="width: 0px;">사이즈</span></li>
                                        <li class="col col-1 board-list" style="color: gray;"><span style="width: 0px;">가격</span></li>
                                        <li class="col col-1 board-list" style="color: gray;"><span style="width: 0px;">총가격</span></li>                                       
                                        <li class="col col-1 board-list" style="color: gray;"><span style="width: 0px;">취소</span></li>
									</ul>
								</div>
							</li>
					</ul>
				</div>
			</nav>


			<nav class="board-container">
			<form action="/mypage/basketCancle.do" method="POST">
				<input  type="hidden" name = "vProdCd" value ="">
				<input  type="hidden" name = "vCartCd" value ="">
				<nav class="content-header navbar-expand-lg">
							<nav class="board-container height-control">
				
					<div class="row collapse navbar-collapse"  style = "padding : 15px">
						<ul class="navbar-nav content-div board_menu" style="height: 50px;">
							<li class="col col-1"></li>
								<li class="col col-10">
									<div class="row collapse navbar-collapse board-idv">
										<ul class="navbar-nav content-div board_menu" style="padding: 0px 3px 0px 3px;">
											<li class="col col-1 board-list" style="color: gray; text-align: center; font-size: 0.8em;">
												<a href="" class="nav-link text-white"><span style="width: 0px;"></span></a></li>
                                            <li class="col col-6 board-list" style="color: gray; text-align: center; font-size: 0.8em;">
                                                <a href="http://localhost:8888/shop/product.do?ProdCd=" class="nav-link text-white"><span name="prodName" style="width: 0px;"></span></a></li>
											<li class="col col-1 board-list" style="color: gray; text-align: center; font-size: 0.8em;">
												<a href="" class="nav-link text-white"><span style="width: 0px;"></span></a></li>
											<li class="col col-1 board-list" style="color: gray; text-align: center; font-size: 0.8em;">
												<a href="" class="nav-link text-white"><span style="width: 0px;"></span></a></li>
											<li class="col col-1 board-list" style="color: gray; text-align: center; font-size: 0.8em;">
                                                <a href="" class="nav-link text-white"><span style="width: 0px;"></span></a></li>
                                            <li class="col col-1 board-list" style="color: gray; text-align: center; font-size: 0.8em;">
                                                <a href="" class="nav-link text-white"><span style="width: 0px;"></span></a></li>
                                            <li class="col col-1 board-list" style="color: gray; text-align: center; font-size: 0.8em;">
                                                <a href="" class="nav-link text-white"><button type="submit" class="btn btn-primary" 
                                                style="font-size: 0.8em;">취소하기</button></a></li>  
                                                 
										</ul>
										
									</div>
								</li>
						</ul>
					</div>
					</nav>
				</nav>
			</form>

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
				
				<nav class="content-header navbar-expand-lg">
					<div class="row collapse navbar-collapse">
						<ul class="navbar-nav content-div board_menu" style="height: 50px;">
							<li class="col col-9"></li>


							<li class="col col-1"><span style="color:white;"><h4>결제합계&nbsp;: </h4></span></li>								
							<li class="col col-1"><span style="color:white;"><h4>&nbsp;원</h4></span></li>
						</ul>
					</div>
				</nav>
				
				<nav class="content-header navbar-expand-lg">
					<div class="row collapse navbar-collapse">
						<ul class="navbar-nav content-div board_menu" style="height: 50px;">
							<li class="col col-10"></li>							
							<li class="col col-2"><span style="color:white;">&nbsp;&nbsp;&nbsp;
							<button type="button" id = "payment" class="btn btn-outline-light">결제하기</button>
							</span></li>
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
    
    
    
 <div class="modal fade" id="payOverModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true" style="z-index=2;">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content bg-black text-white" style="border: 2px solid white">
      <div class="modal-header" style="border-bottom-color: orange;">
        <h5 class="modal-title" id="loginModalLabel">결제완료</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="byeModalBody" >
        	결제가 완료되었습니다. <br> 
        	다른 상품을 보러가시려면 <em style="color: orange;"> 확인 </em> 버튼을 클릭해주세요.
        	이전페이지로 돌아가시길 원하시면 <span style="color: orange;"> 뒤로가기 </span> 버튼을 클릭해주세요.
      </div>
      <div class="modal-footer" style="border-top-color: orange;">
      <button type="button" class="btn btn-secondary" id="goGoosPage" style="background-color: #f37321;" data-bs-dismiss="modal">뒤로 가기</button>
      <button type="button" class="btn btn-secondary" id="goBasketPage" style="background-color: #f37321;" >확인</button>
</div>
</div>
</div>
</div>








    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous">
        </script>
     
     <script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
     
        

     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
window.onload = function() {

	  $('#payOverModal').modal('show');
	  $('#goGoosPage').on('click', function(){
          location.href="/mypage/basketList.do";
	  });	  
	  $('#goBasketPage').on('click', function(){
          location.href="/mypage/basketPay.do";         
	  });

};
		  
// 		   	$.ajax({
// 			      url: "/payment/kakao.do",
// 			      method: "post", 
// 			      data: {}, /* 보내는값없이 세션에서 불러와서처리 예정 */ 
// 		 	      success: function(data) {
// 			    	  console.log("응답확인 >> " , data);
// 			        if (data === "success") {
// 			          $('#byebyeModalBody').html('결제에 성공하였습니다.');
// 			          $('#byebyeModal').modal('show');
// 			          $('#byeCloseBtn').on('click', function(){
// 			    	  window.location.href = "/payment/kakao.do";

// 			          });
// 			        } else {
// 			        	 $('#byebyeModalBody').html('결제에 실패하였습니다.');
// 			             $('#byebyeModal').modal('show');
// 				         window.location.href = "/mypage/basketList.do";
// 			        }
// 			      },
// 			      error: function(xhr) {
// 						alert(xhr);                
// 			      },
// 			     dataType: 'text'  /* (json, html, xml이있음. 제이쿼리는 자동변환) */
// 			    });

// 		  window.location.href = "/payment/kakao.do";
 	  
// 		  });
// 		  $('closeBtn').on('click', function(){
		  	
		  	
// 		  });
		  
// 	  });
// 	)};	  
	  
// 	  $('#closeBtn1').on('click', function(){
// 		  $('#byeModal1').modal('hidden');
// 	  });
	  
	  
//  	  $('#yesBtn').on('click', function(){
// 		  console.log('클릭됨');
// 		  let uId = $('#userID').val();		  
// 	   	$.ajax({
// 	      url: '/DeleteId.do',
// 	      method: 'post', 
// 	      data: {}, 보내는값없이 세션에서 불러와서처리 예정 
//  	      success: function(data) {
// 	    	  console.log("응답확인 >> " , data);
// 	        if (data === "success") {
// 	          $('#byebyeModalBody').html('결제에 성공하였습니다.');
// 	          $('#byebyeModal').modal('show');
// 	          $('#byeCloseBtn').on('click', function(){
// 	            window.location.href = "/mypage/basketList.do";
// 	          });
// 	        } else {
// 	        	 $('#byebyeModalBody').html('결제에 실패하였습니다.');
// 	             $('#byebyeModal').modal('show');
// 	        }
// 	      },
// 	      error: function(xhr) {
// 				alert(xhr);                
// 	      },
// 	     dataType: 'text'  (json, html, xml이있음. 제이쿼리는 자동변환)
// 	    });
// 	  });
// 	});
  
   // 확인버튼 누를 시

// document.querySelector("#payForm").submit();


//    $('#datePicker')
//       .datepicker({
//          format: 'yyyy-mm-dd', //데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
//          startDate: '-10d', //달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
//          endDate: '+10d', //달력에서 선택 할 수 있는 가장 느린 날짜. 이후로 선택 불가 ( d : 일 m : 달 y : 년 w : 주)
//          autoclose: true, //사용자가 날짜를 클릭하면 자동 캘린더가 닫히는 옵션
//          calendarWeeks: false, //캘린더 옆에 몇 주차인지 보여주는 옵션 기본값 false 보여주려면 true
//          clearBtn: false, //날짜 선택한 값 초기화 해주는 버튼 보여주는 옵션 기본값 false 보여주려면 true
// //          datesDisabled: ['2019-06-24', '2019-06-26'], //선택 불가능한 일 설정 하는 배열 위에 있는 format 과 형식이 같아야함.
//          daysOfWeekDisabled: [0, 6], //선택 불가능한 요일 설정 0 : 일요일 ~ 6 : 토요일
//          daysOfWeekHighlighted: [3], //강조 되어야 하는 요일 설정
//          disableTouchKeyboard: false, //모바일에서 플러그인 작동 여부 기본값 false 가 작동 true가 작동 안함.
//          immediateUpdates: false, //사용자가 보는 화면으로 바로바로 날짜를 변경할지 여부 기본값 :false
//          multidate: false, //여러 날짜 선택할 수 있게 하는 옵션 기본값 :false
//          multidateSeparator: ',', //여러 날짜를 선택했을 때 사이에 나타나는 글짜 2019-05-01,2019-06-01
//          templates: {
//             leftArrow: '&laquo;',
//             rightArrow: '&raquo;',
//          }, //다음달 이전달로 넘어가는 화살표 모양 커스텀 마이징
//          showWeekDays: true, // 위에 요일 보여주는 옵션 기본값 : true
//          title: '테스트', //캘린더 상단에 보여주는 타이틀
//          todayHighlight: true, //오늘 날짜에 하이라이팅 기능 기본값 :false
//          toggleActive: true, //이미 선택된 날짜 선택하면 기본값 : false인경우 그대로 유지 true인 경우 날짜 삭제
//          weekStart: 0, //달력 시작 요일 선택하는 것 기본값은 0인 일요일
//          language: 'ko', //달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.
//       })
//       .on('changeDate', function (e) {
//          /* 이벤트의 종류 */
//          //show : datePicker가 보이는 순간 호출
//          //hide : datePicker가 숨겨지는 순간 호출
//          //clearDate: clear 버튼 누르면 호출
//          //changeDate : 사용자가 클릭해서 날짜가 변경되면 호출 (개인적으로 가장 많이 사용함)
//          //changeMonth : 월이 변경되면 호출
//          //changeYear : 년이 변경되는 호출
//          //changeCentury : 한 세기가 변경되면 호출 ex) 20세기에서 21세기가 되는 순간

//          console.log(e);
//          // e.date를 찍어보면 Thu Jun 27 2019 00:00:00 GMT+0900 (한국 표준시) 위와 같은 형태로 보인다.
//       });

     	// 회원탈퇴 버튼 이벤트
     	
<%-- function pay() {
     		var lostpay = $('input[name=Lost_Pay] : checked').val();
     		if(lostpay=='direct') {
     			lostpay = $("#paybox").val();
     			lostpay = lostpay.replace("direct","");
     			lostpay = lostpay.replace(",","")
     		} /* 결제금액 직접입력한 칸 숫자만 걸러준다 */
     		
     		var id = '';  /* 테스트면 아이디를 직접 넣어준다 */
     		
     		/* 아래부터는 ajax로 회원정보를 받아온 뒤 . 이름, 연락처, 주소를 추출한다. */
     		$.ajax({
     			url : "el/paymember",
     			comtentType : 'application/x-www-dorm-encoded; charset=utf-8',
     			data : {"id" : id},
     			type : 'POST',
     			success : function(data) {
     				alert ("통신성공"); /* 1/3도착했단 의미 */
     				
     				var IMP = window.IMP;
     				var code ="" /* 가맹점식별코드입력  테스트면 테스트코드*/
     				IMP.init(code);
     				IMP.request_pay(  /* 리퀘스트시작 */
     						{
     							pg : 'kakao',
     							
     							//주문번호 아래방법처럼 쓰는게 일단을 기본인듯.
     							merchant_uid : 'merchant_'+ new Date().getTime();,
     							
     							name : '전체상품 금액'
     							amount : lostpay '결제금액을 나타내는건지 잔액을 말하는건지'
     							buyer_name : <%=memId%>
     					 
     						}
     						function(rsp) {
     							if(rsp.success) { /* 결제성공일때 */
     								var msg ='결제가 완료되었습니다.'
     								var result = {
     									/* 가맹점에서 생성/관리하는 주문번호 */
     									"PayCode" : rsp.merchant_uid,
     									/* 결제수단 */
     									"Pay_Way" : rsp.pay_method,
     									/* 결제금액 */
     									"Pay_Amount" : rep.paid_amount,
     									/* 결제상태 */
     									"Pay_State" : rep.status,
     									/* 결제승인시간 */
     									"Pay_Date" : getFormatDate(new Date()),
     									"id" : <%=memId%>
     							} /* result 끝 */
     							/* 아래부터 서버로 결제테이블 정보전송 */
     							
     								$.ajax({
     									url:"",
     									dataType : 'json',
     									contentType : 'application/json; charset=UTF-8',
     									data : JSON.stringify(data),
     									type : 'POST',
     									success : function(data){
     										console.log(data);
     									}
     								});
     								alert("결제성공!");
     								addboard(); /* 결과를 카카오서버쪽으로 전송 */
     								 /* 만약... 결제성공이라면... 였던것 끝 */	
     							} else { /* 내가 맞이하게될 미래 */
     								var msg = '결제에 실패하였습니다. 에러내용 : '+rsp.error_msg;
     								alert(msg);
     							}
     						} /* rsp함수 끝 */
     							); IMP request 함수 끝.
     							return true;
     					}, /* 여기까지온건 가장처음 ajax가 성공했다는 의미 */
     					error : function(){
     						alert ("통신에러!");
     					}
     		});  /* 가장 처음 ajax종료 */
     					
     } /* 페이함수 종료 */
 --%>
     
     
     


</script>    
</body>
</head>