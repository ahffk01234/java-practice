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
    height: 100%;
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



.board_menu {
	height : 100px;
}



.board-idv:focus {

}


#container .content_block {
    position: relative;
    width: 1240px;
    padding-top: 160px;
    margin: -230px auto 0;
}

#container {
  background-color: rgba(0, 0, 0, 0.7);
    }

/* 추가 css */

.blind {
    visibility: hidden;
    overflow: hidden;
    position: fixed;
    top: -100px;
    left: -100px;
    width: 0;
    height: 0;
    font-size: 0;
    color: transparent;
}

h1, h2, h3, h4, h5 {
    font-weight: normal;
    padding: 0;
    margin: 0;
}

.notice_view .view_hd .tit {
    display: block;
    font-family: 'HanwhaGothicR', sans-serif;
    font-size: 34px;
    line-height: 1.3;
}

strong, b {
    font-weight: normal;
}

.notice_view .view_hd .write {
    margin-top: 24px;
}

.notice_view .view_hd .write .left {
    float: left;
}

.notice_view .view_hd .write p:first-child {
    margin-left: 0;
    padding-left: 0;
    border-left: 0;
}

.notice_view .view_hd .write p {
    float: left;
    position: relative;
/*     margin-left: 26px; */
/*     padding-left: 27px; */
    font-family: 'MyriadPro-Regular', 'HanwhaGothicT',sans-serif;
    font-size: 16px;
    line-height: 38px;
}

p {
    margin: 0;
    padding: 0;
    word-break: keep-all;
    word-wrap: break-word;
}

.notice_view .view_hd .write p span.tt {
    color: #808080;
    padding-right: 18px;
}

.notice_view .view_hd .write p span.txt {
    color: #b3b3b3;
}

.notice_view .view_hd .write::after {
    content: '';
    display: table;
    clear: both;
}

.notice_view .view_detail {
    margin-top: 22px;
    padding: 55px 24px 76px;
    border-top: 1px solid #666;
    border-bottom: 1px solid #333;
    color: #b3b3b3;
    font-family: 'HanwhaGothicT', sans-serif;
    font-size: 14px;
    line-height: 1.57;
}

#container .btn_area {
    font-family: 'MyriadPro-Regular', sans-serif;
    font-size: 0;
    text-align: center;
}

.paginate {
    position: relative;
    margin-top: 30px;
}

.paginate.center {
    text-align: center;
}

#container .btn_area a {
    display: inline-block;
    overflow: hidden;
    position: relative;
    height: 62px;
    font-size: 16px;
    line-height: 62px;
    padding: 0 52px;
    background: transparent;
    border: 1px solid rgba(255,255,255,0.5);
    border-radius: 10px;
    z-index: 1;
}

.paginate.center .btn_com {
    width: auto;
    min-width: 140px;
    text-align: center;
}

.btn_com {
    display: -ms-inline-flexbox;
    display: -webkit-inline-box;
    display: -webkit-inline-flex;
    display: inline-flex;
    width: 100%;
    height: 52px !important;
    padding-left: 8px !important;
    padding-right: 8px !important;
    border: 1px solid #808080;
    border-radius: 8px;
    color: #fff;
    font-family: 'HanwhaGothicEL', sans-serif;
    font-size: 16px;
    line-height: 50px !important;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    justify-content: center;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
}

a, a:hover, a:focus, button {
    color: inherit;
    text-decoration: none;
}

#alldiv{
 position: relative;
    width: 1240px;
    padding-top: 30px;
    margin: -230px auto 0;
}

#bgBlack{
position: relative;
background-color: black;
width:100%;
height: 100%;

}

.btn_com:hover,
.btn_com:active {
  color: orange;
}

.btn_com{
border: solid 1px orange;
}

.managerBtn{
border: solid 1px orange;
}
.managerBtn:hover,
.managerBtn:active{
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


   		<nav class="content-emptynav">
    	     <div class="content-emptydiv">
            	<!-- 빈공간영역 설정 -->
        	 </div>
    	</nav>
    	
    	
    	   	<nav class="needgdt">
			<nav class="content-header navbar-expand-lg" style="padding: 0px 10px 0px 10px; ">
                <a href="" class="nav-link text-white">
                    <div class="row collapse navbar-collapse board-div" id="menubar">
                         <ul class="navbar-nav content-div board_menu">	     
                         	<li class="col col-1" id="PCFACN"><a href="" class="nav-link text-white"><span style="width: 0px;"></span> </a></li>                				
                            <li class="col col-1" id="PCFACN" style="margin-right: 40px;"><a href="/TeamBoard.do" class="nav-link text-white"><span style="width: 0px;"></span>구단소식</a></li>
                            <li class="col col-1" id="PCFACN" style="margin-right: 40px;"><a href="" class="nav-link text-white"><span style="width: 0px;"></span>팬 타임즈</a></li>                                                     
                            <li class="col col-1" id="PCFACN" style="margin-right: 30px;"><a href="/gall.do" class="nav-link text-white"><span style="width: 0px;"></span>갤러리</a></li>
                        </ul>
                      </div>
                </a>
			</nav>
			</nav>
		
		<nav id="bgBlack">
    <div class="container-fluid content-board" id="alldiv" style="margin-top: 0px; height: 100%;">
        <div class="content-boarddiv">
            <div class="content-header navbar-expand-lg" style="padding: 0px 10px 0px 10px;">
                <div class="row collapse navbar-collapse">
                    <ul class="navbar-nav content-div board_menu" style="margin-top: 5px; padding-top: 10px; border-top: 1px gray solid; border-bottom: 1px gray solid; padding-bottom: 10px;">
                        <li class="col col-1"></li>
                        <li class="col col-8" id="PCFACN">
                            <h1 class="text-white text-center" style="font-style: bold; margin-left: 190px; margin-top: 10px;">
                                <span style="font-weight: bold;">구단 소식</span>
                            </h1>
                        </li>
                    </ul>
                </div>
            </div>
            <% TeamBoardVO tbv = (TeamBoardVO)request.getAttribute("tbv"); %>
            <div class="notice_view" style="padding: 55px 24px 76px;">
                <div class="view_hd" style="margin-left: 24px;">
                    <!-- view title -->
                    <strong class="tit" style="margin-top: 15px; color: white"><%=tbv.getTeamboardTitle() %></strong>
                    <!-- //view title -->
                   <div class="write">
    <div class="left" style="display: flex; justify-content: flex-start;">
    	
		<span id="tbCode" style="display: none;"><%=tbv.getTeamboardCd() %></span>
        <p><span class="tt">작성일</span><span class="txt"><%=tbv.getTeamboardDate() %></span></p>
        <p><span class="tt" style="margin-left: 50px; margin-right: 30px">|</span></p>
        <p><span class="tt">작성자</span><span class="txt"><%=tbv.getMemId() %></span></p>
        <p><span class="tt"></span><span class="txt">　　　　</span></p>
    </div>
    
<% 
String logMemId = (String) session.getAttribute("LogMemId");

if (logMemId != null && logMemId.equals("MANAGER")) {
%>    
    <div class="right" style="text-align: right;">
        <button class="managerBtn btn btn-dark" id="updateBtn" >수정</button>
        <button class="managerBtn btn btn-dark" id="deleteBtn">삭제</button>
    </div>
    
<% } %>    
</div>
                </div>
                <!-- view content -->
                <div class="view_detail">
 <% if (tbv.getTeamboardImg() != null && !tbv.getTeamboardImg().isEmpty()) { %>
                            <div class="image-section">
        <img src="<%= request.getAttribute("imageRelativePath") %>" alt="이미지" id="userImg" style="max-width: 100%; max-height: 100%;"/>
                            </div>
                        <% } %>                
                    <p><pre style="white-space: pre-line; font-size: 14px;"><%=tbv.getTeamboardContent() %></pre></p>
                </div>
                <div class="paginate btn_area center">
                    <a href="/TeamBoard.do" class="btn_com"><span style="width: 0px;"></span>목록</a>
                    

                </div>
            </div>
            <!-- //view content -->
        </div>
    </div>
</nav>


	<!-- 모달 창 템플릿 -->
<div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content bg-black text-white" style="border: 2px solid white">
      <div class="modal-header" style="border-bottom-color: orange;">
        <h5 class="modal-title" id="loginModalLabel">게시글 삭제 여부</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="loginModalBody" >해당 게시글을 삭제하시겠습니까?</div>
      <div class="modal-footer"  style="border-top-color: orange;">
			<button type="button" id="closeBtn" class="btn btn-secondary" style="background-color: #f37321;" data-bs-dismiss="modal">닫기</button>     
			<button type="button" class="btn btn-secondary" style="background-color: #f37321;" data-bs-dismiss="modal" onclick="deleteTeamBoard()">확인</button>

 </div>
    </div>
  </div>
</div>

<!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous">
        </script>
        
<script>
$('#updateBtn').on('click', function(){
	
	let teamboardCd = $('#tbCode').text();
    var newUrl = 'http://localhost:8888/UpdateTeamBoard.do?teamboardCd=' + teamboardCd;

    window.location.href = newUrl;
});        
        
$('#deleteBtn').on('click', function(){
    $('#loginModal').modal('show');
	
});

function deleteTeamBoard(){
	
	let teamboardCd = $('#tbCode').text();
	console.log(teamboardCd);

	$.ajax({
		url: '/DeleteTeamBoard.do',
		method: 'post',
		data: {
			tbCode: teamboardCd
		},
		success: function(data){
            if(data === "success"){
                window.location.href = "/TeamBoard.do";
            }else{
                alert("삭제 실패");
            }
        },
        error: function(xhr){
        	alert(xhr);
        },
        dataType: 'text'
		
	});
	
}
        
        
</script>
    
    
</body>
</html>