<%@page import="eagles.board.vo.CommentVO"%>
<%@page import="eagles.board.vo.LikeVO"%>
<%@page import="eagles.board.service.BoardServiceImpl"%>
<%@page import="eagles.board.service.IBoardService"%>
<%@page import="eagles.board.vo.BoardVO"%>
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
<title>팬 타임즈</title>
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
    height: 1500px;
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
background-color: black;
width:100%;
height: 100vh;

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

.content-boarddiv {
    height: 100%;
}

 /* 좋아요 버튼 */ 

 #likeBtn, #disLikeBtn { 
 color: white; 
 border: 1px orange solid; 
 } 

/* 좋아요 하트 */ 

#likePath { 
color: #eb1919;
}

#bdcomment{
background-color: gray;
color: white;
border: 1px solid orange;
}

#sendCoBtn{
color: orange;
}

#sendbtnbtn{
color: white;
}

#daegari{
margin-top: 30px;
border-bottom: dotted 1px gray;

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
                            <li class="col col-1" id="PCFACN" style="margin-right: 40px;"><a href="/BoardMain.do" class="nav-link text-white"><span style="width: 0px;"></span>팬 타임즈</a></li>                                                     
                            <li class="col col-1" id="PCFACN" style="margin-right: 30px;"><a href="/gall.do" class="nav-link text-white"><span style="width: 0px;"></span>갤러리</a></li>
                        </ul>
                      </div>
                </a>
         </nav>
         </nav>
      
      <div id="bgBlack" style="height: 100%;">
    <div class="container-fluid content-board" id="alldiv" style="margin-top: 0px; height: 100%;">
        <div class="content-boarddiv">
            <div class="content-header navbar-expand-lg" style="padding: 0px 10px 0px 10px;">
                <div class="row collapse navbar-collapse">
                    <ul class="navbar-nav content-div board_menu" style="margin-top: 5px; padding-top: 10px; border-top: 1px gray solid; border-bottom: 1px gray solid; padding-bottom: 10px;">
                        <li class="col col-1"></li>
                        <li class="col col-8" id="PCFACN">
                            <h1 class="text-white text-center" style="font-style: bold; margin-left: 190px; margin-top: 10px;">
                                <span style="font-weight: bold;">팬 타임즈</span>
                            </h1>
                        </li>
                    </ul>
                </div>
            </div>
            <% BoardVO bd = (BoardVO)request.getAttribute("bd"); 
               String selMemId = bd.getMemId();
               IMemberService memService = MemberServiceImpl.getInstance();
               MemberVO mv = new MemberVO();
               mv = memService.getMember(selMemId);
           	   IBoardService bdService = BoardServiceImpl.getInstance();

               int likeTotal = bdService.likeAll(bd.getBoardCd());
               
               
            %>
            <div class="notice_view" style="padding: 55px 24px 76px;">
                <div class="view_hd" style="margin-left: 24px;">
                    <!-- view title -->
                    <strong class="tit" style="margin-top: 15px; color: white"><%=bd.getBoardTitle() %></strong>
                    <!-- //view title -->
                   <div class="write">
    <div class="left" style="display: flex; justify-content: flex-start;">
       
      <span id="logMemId" style="display: none;"><%=(String) session.getAttribute("LogMemId") %></span>
      <span id="bdCode" style="display: none;"><%=bd.getBoardCd() %></span>
        <p><span class="tt" style="color: white;">작성일</span><span class="txt"><%=bd.getBoardDate() %></span></p>
        <p><span class="tt" style="margin-left: 30px; margin-right: 15px;">|</span></p>
        <p><span class="tt" style="color: white;">작성자</span><span class="txt"><%=mv.getMemNickname() %></span></p>
        <p><span class="tt" style=" margin-right: 15px;"></span><span class="txt">│</span></p>
        <p><span class="tt" style="color: white; margin-left: 30px;">좋아요</span><span class="txt"><%=likeTotal %></span></p>
    </div>
    
<% 
/* 로그인 된 아이디  */
String logMemId = (String) session.getAttribute("LogMemId");
/* 게시물 등록 아이디 */
String boardMemId = bd.getMemId();

if (logMemId != null && logMemId.equals(boardMemId)) {
%>    
    <div class="right" style="text-align: right;">
        <button class="managerBtn btn btn-dark" id="updateBtn" >수정</button>
        <button class="managerBtn btn btn-dark" id="deleteBtn">삭제</button>
    </div>
    
<% }else if(logMemId != null && !logMemId.equals(boardMemId)){ %> 
<div class="right" style="text-align: right;">
<% 
	String bdCode = bd.getBoardCd();
	LikeVO lv = new LikeVO(bdCode, logMemId);
	int cnt = bdService.likeChk(lv);
	
	if(cnt > 0){
%>
		<button type="button" class="btn btn-dark" id="likeBtn">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart-fill" viewBox="0 0 16 16">
  				<path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z" id="likePath"></path>
				</svg>　Like</button>
<%	
	}else{

%>
		<button type="button" class="btn btn-dark" id="disLikeBtn">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart-fill" viewBox="0 0 16 16">
  				<path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z" ></path>
				</svg>　Like</button>

<% 
}
	%>
        <button class="managerBtn btn btn-dark" id="reportBtn" >신고</button>
    </div>
<% } %>   
</div>
                </div>
                <!-- view content -->
                <div class="view_detail">
                <% if (bd.getBoardImg() != null && !bd.getBoardImg().isEmpty()) { %>
                            <div class="image-section">
        <img src="<%= request.getAttribute("imageRelativePath") %>" alt="이미지" id="userImg" style="max-width: 100%; max-height: 100%;"/>
                            </div>
                        <% } %>
                    <p><pre style="white-space: pre-line; font-size: 14px;"><%=bd.getBoardContent() %></pre></p>
                </div>
                
                
                <!-- 댓글창영역 -->
                
<nav>

<% 
	if(logMemId != null){
		MemberVO logChkVO = memService.getMember(logMemId);
		String memBlack = logChkVO.getMemBlack();
		if(logMemId != null && memBlack.equals("0")){
%>
  <div style="border-top: solid 1px gray; border-bottom: solid 1px gray; padding: 10px;">

    <form id="frm" name="frm" method="post" enctype="multipart/form-data">
      <div class="notice_write" style="margin-top: 20px; margin-bottom: 20px;">
        <div class="list_form row align-items-center">
          <div class="col-1 d-flex justify-content-center">
            <label for="bdcomment" class="text-white">댓글</label>
          </div>
          <div class="col-10">
            <div class="input_wrap textarea">
              <textarea class="form-control" rows="1" name="bdcomment" id="bdcomment" ></textarea>
            </div>
          </div>
          <div class="col-1 d-flex justify-content-center align-items-center" style="height: 100%;">
            <button type="button" class="btn" style="border: 1px solid orange; padding: 2px 10px; height: 40px;" id="sendbtnbtn">
              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-send-fill" viewBox="0 0 16 16">
                <path id="sendCoBtn" d="M15.964.686a.5.5 0 0 0-.65-.65L.767 5.855H.766l-.452.18a.5.5 0 0 0-.082.887l.41.26.001.002 4.995 3.178 3.178 4.995.002.002.26.41a.5.5 0 0 0 .886-.083l6-15Zm-1.833 1.89L6.637 10.07l-.215-.338a.5.5 0 0 0-.154-.154l-.338-.215 7.494-7.494 1.178-.471-.47 1.178Z"></path>
              </svg>등록
            </button>
          </div>
        </div>
      </div>
    </form>
  </div>
  
  <%
  }else if(logMemId != null && memBlack.equals("1")){ %>
<div style="border-top: solid 1px gray; border-bottom: solid 1px gray; padding: 10px;">

    <form id="frm" name="frm" method="post" enctype="multipart/form-data">
      <div class="notice_write" style="margin-top: 20px; margin-bottom: 20px;">
        <div class="list_form row align-items-center">
          <div class="col-1 d-flex justify-content-center">
            <label for="bdcomment" class="text-white">댓글</label>
          </div>
          <div class="col-10">
            <div class="input_wrap textarea">
              <textarea class="form-control" rows="1" name="bdcomment" id="bdcomment" readonly>블랙리스트 회원은 댓글을 작성할 수 없습니다. </textarea>
            </div>
          </div>
          <div class="col-1 d-flex justify-content-center align-items-center" style="height: 100%;">
          </div>
        </div>
      </div>
    </form>
  </div>
<%	  
  } 
		}else{
%>
<div style="border-top: solid 1px gray; border-bottom: solid 1px gray; padding: 10px;">

    <form id="frm" name="frm" method="post" enctype="multipart/form-data">
      <div class="notice_write" style="margin-top: 20px; margin-bottom: 20px;">
        <div class="list_form row align-items-center">
          <div class="col-1 d-flex justify-content-center">
            <label for="bdcomment" class="text-white">댓글</label>
          </div>
          <div class="col-10">
            <div class="input_wrap textarea">
              <textarea class="form-control" rows="1" name="bdcomment" id="bdcomment" readonly>댓글 등록은 로그인 후 이용하실 수 있습니다. </textarea>
            </div>
          </div>
          <div class="col-1 d-flex justify-content-center align-items-center" style="height: 100%;">
          </div>
        </div>
      </div>
    </form>
  </div>

<%	  

		}
		%>
  
  
  
  <% 
  String boardCd = request.getParameter("boardCd");
  List<CommentVO> cvList = bdService.getAllComment(boardCd);
 
  if (cvList != null && !cvList.isEmpty()) {
	    for (CommentVO cv : cvList) {
	    	if(cv.getMemId() != null){
	    		MemberVO commentMv = memService.getMember(cv.getMemId());
	    	
  %>
  <div class="container-fluid" id="<%=cv.getCommentCd() %>">
    <div class="row text-white" id="daegari">
      <div class="col-2 d-flex align-items-center justify-content-end">
        <span><%=commentMv.getMemNickname() %></span>
      </div>

      <div class="col-9">
        <span style="padding: 30px; display: none" class="commentCd"><%=cv.getCommentCd() %></span>
        <span style="padding: 30px;"><%=cv.getCommentContent() %></span>
      </div>

<% 

if (logMemId != null && cv.getMemId() != null && logMemId.equals(cv.getMemId())) {



		

%>
      <div class="col-1 d-flex align-items-center justify-content-center">
        <button type="button" class="updateComment btn btn-secondary" style="color: black; background-color: orange" data-comment-cd="<%=cv.getCommentCd() %>">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-wrench-adjustable" viewBox="0 0 16 16">
  <path d="M16 4.5a4.492 4.492 0 0 1-1.703 3.526L13 5l2.959-1.11c.027.2.041.403.041.61Z"></path>
  <path d="M11.5 9c.653 0 1.273-.139 1.833-.39L12 5.5 11 3l3.826-1.53A4.5 4.5 0 0 0 7.29 6.092l-6.116 5.096a2.583 2.583 0 1 0 3.638 3.638L9.908 8.71A4.49 4.49 0 0 0 11.5 9Zm-1.292-4.361-.596.893.809-.27a.25.25 0 0 1 .287.377l-.596.893.809-.27.158.475-1.5.5a.25.25 0 0 1-.287-.376l.596-.893-.809.27a.25.25 0 0 1-.287-.377l.596-.893-.809.27-.158-.475 1.5-.5a.25.25 0 0 1 .287.376ZM3 14a1 1 0 1 1 0-2 1 1 0 0 1 0 2Z"></path>
</svg>
              </button>
              
<button type="button" class="deleteComment btn btn-secondary" style="color: black; background-color: orange" data-comment-cd="<%=cv.getCommentCd() %>" >
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
  <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z"></path>
</svg>
              </button>     
               </div>
<%	
      }
%>
      <em style="color: gray; font-size: 0.8em; margin-left: 230px; margin-top: 15px;" ><%=cv.getCommentDate() %></em>
    </div>
  </div>
   <% 
	    	}
    }
  } else {
	  %>
	  <div class="container-fluid">
	    <div class="row text-white" id="daegari">

	      <div class="col-12 d-flex align-items-center justify-content-center" style="margin-bottom: 30px;">
 			 <span style="padding: 30px; color: orange;">등록된 댓글이 없습니다.</span>
		</div>

	    </div>
	  </div>
	  <%
  }
%>
  
</nav>




				<!-- 댓글창 영역  종료-->
                
                
                <div class="paginate btn_area center">
                    <a href="/BoardMain.do" class="btn_com"><span style="width: 0px;"></span>목록</a>
                </div>
            </div>
            <!-- view content 종료 -->
        </div>
    </div>
</div>


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
         <button type="button" class="btn btn-secondary" style="background-color: #f37321;" data-bs-dismiss="modal" onclick="deleteBoard()">확인</button>
 </div>
    </div>
  </div>
</div>


   <!-- 신고하기 템플릿 -->
<div class="modal fade" id="reportModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content bg-black text-white" style="border: 2px solid white">
      <div class="modal-header" style="border-bottom-color: orange;">
        <h5 class="modal-title" id="loginModalLabel">해당 게시물 신고하기</h5>
      </div>
      <div class="modal-body" id="loginModalBody">
        <div class="form-group">
          <label for="reportContent">신고 내용</label>
          <textarea class="form-control" id="reportContent" style="margin-top: 5px;" rows="5"></textarea>
        </div>
      </div>
      <div class="modal-footer" style="border-top-color: orange;">
        <button type="button" id="closeBtn" class="btn btn-secondary" style="background-color: #f37321;" data-bs-dismiss="modal">닫기</button>
        <button type="button" class="btn btn-secondary" style="background-color: #f37321;" data-bs-dismiss="modal" onclick="sure()">확인</button>
      </div>
    </div>
  </div>
</div>

<!-- 신고 확인 모달 -->
<div class="modal fade" id="lastModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content bg-black text-white" style="border: 2px solid white">
      <div class="modal-header" style="border-bottom-color: orange;">
        <h5 class="modal-title" id="loginModalLabel">게시글 신고 여부</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="loginModalBody" >해당 게시물 신고를 등록하시겠습니까?</div>
      <div class="modal-footer"  style="border-top-color: orange;">
         <button type="button" id="closeBtn" class="btn btn-secondary" style="background-color: #f37321;" data-bs-dismiss="modal">닫기</button>     
         <button type="button" class="btn btn-secondary" style="background-color: #f37321;" data-bs-dismiss="modal" onclick="sendReport()">확인</button>
 </div>
    </div>
  </div>
</div>

<div class="modal fade" id="commentModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content bg-black text-white" style="border: 2px solid white">
      <div class="modal-header" style="border-bottom-color: orange;">
        <h5 class="modal-title" id="loginModalLabel">댓글 등록</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="loginModalBody" >해당 댓글을 등록하시겠습니까? <br>
      <em style="color: gray; font-size: 0.8em">글 작성 시 욕설, 비방, 허위 내용을 사용하거나 작성할 경우 이용에 제재가 가해질 수 있습니다.</em>
      </div>
      <div class="modal-footer"  style="border-top-color: orange;">
         <button type="button" id="closeBtn" class="btn btn-secondary" style="background-color: #f37321;" data-bs-dismiss="modal">닫기</button>     
         <button type="button" class="btn btn-secondary" style="background-color: #f37321;" data-bs-dismiss="modal" onclick="commentInsert()">확인</button>
 </div>
    </div>
  </div>
</div>

<!-- 댓글 삭제 모달 -->
<div class="modal fade" id="commentDelete" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content bg-black text-white" style="border: 2px solid white">
      <div class="modal-header" style="border-bottom-color: orange;">
        <h5 class="modal-title" id="loginModalLabel">댓글 삭제</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="loginModalBody">
        해당 댓글을 삭제하시겠습니까? <br>
      </div>
      <div class="modal-footer" style="border-top-color: orange;">
        <button type="button" id="closeBtn" class="btn btn-secondary" style="background-color: #f37321;" data-bs-dismiss="modal">닫기</button>
        <button type="button" class="btn btn-secondary" style="background-color: #f37321;" id="deleteCommentConfirm">확인</button>
      </div>
    </div>
  </div>
</div>

<!-- 댓글 수정 템플릿 -->
<div class="modal fade" id="updateCommentModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content bg-black text-white" style="border: 2px solid white">
      <div class="modal-header" style="border-bottom-color: orange;">
        <h5 class="modal-title" id="loginModalLabel">댓글 수정</h5>
      </div>
      <div class="modal-body" id="updateCommentBody">
        <div class="form-group">
          <label for="reportContent">내용</label>
          <textarea class="form-control" id="updateContent" style="margin-top: 5px;" rows="5"></textarea>
        </div>
      </div>
      <div class="modal-footer" style="border-top-color: orange;">
        <button type="button" id="closeBtn" class="btn btn-secondary" style="background-color: #f37321;" data-bs-dismiss="modal">닫기</button>
        <button type="button" class="btn btn-secondary" style="background-color: #f37321;" data-bs-dismiss="modal" onclick="" id="updateCommentConfirm">확인</button>
      </div>
    </div>
  </div>
</div>


<!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous">
        </script>
        
<script>

/* 댓글 수정 */
$(document).on('click', '.updateComment', function() {
  $('#updateCommentModal').modal('show');
  
  let commentCd = $(this).data('comment-cd');
  let boardCd = $('#bdCode').text();
  $('#updateCommentConfirm').data('comment-id', commentCd); // data-comment-id 속성 추가
  
  // 수정 버튼 클릭 시 이벤트 처리
  $('.updateCommentBtn').on('click', function() {
    let commentId = $(this).data('comment-id');
    $('#updateCommentConfirm').data('comment-id', commentId); // commentCd 값을 추가로 저장
  });
});

function updateCommentModal(commentCd, boardCd) {
  console.log('commentCd:', commentCd);
  console.log('boardCd:', boardCd);
  
  // 수정할 내용 가져오기
  let commentContent = $('#updateContent').val();
  
  // AJAX 호출
  $.ajax({
    url: '/UpdateComment.do',
    method: 'post',
    data: { 
      commentCd: commentCd,
      commentContent: commentContent
    },
    success: function(data) {
      if (data === "success") {
        window.location.replace("http://localhost:8888/ReadBoard.do?boardCd=" + boardCd);
      } else {
        alert("댓글 수정 실패");
      }
    },
    error: function(xhr) {
      alert(xhr);
    },
    dataType: 'text'
  });
}

// 확인 버튼 클릭 시 이벤트 처리
$('#updateCommentConfirm').on('click', function() {
  let commentCd = $(this).data('comment-id'); // 수정된 commentCd 값
  let boardCd = $('#bdCode').text();
  updateCommentModal(commentCd, boardCd);
});
  
  
  
  
  
  
  
  

/* 댓글 삭제 이벤트 */
$(document).on('click', '.deleteComment', function() {
	  console.log('클릭됨');
	  let commentCd = $(this).data('comment-cd');
	  console.log(commentCd);
	  
	  $('#commentDelete').modal('show');
	  $('#deleteCommentConfirm').data('comment-cd', commentCd); // 삭제 확인 버튼의 data-comment-cd 속성에 commentCd 값 저장
	});

	$('#deleteCommentConfirm').on('click', function() {
	  let commentCd = $(this).data('comment-cd');
		let boardCd = $('#bdCode').text();

	  console.log(commentCd);
	  
	  // AJAX 호출 및 삭제 처리
	  $.ajax({
	    url: '/DeleteComment.do',
	    method: 'post',
	    data: { 
	      commentCd: commentCd
	    },
	    success: function(data) {
	      if (data === "success") {
	        window.location.replace("http://localhost:8888/ReadBoard.do?boardCd=" + boardCd);
	      } else {
	        alert("댓글 삭제 실패");
	      }
	    },
	    error: function(xhr) {
	      alert(xhr);
	    },
	    dataType: 'text'
	  });
	});

$('#sendbtnbtn').on('click', function(){
    $('#commentModal').modal('show');
});

function commentInsert(){
	
	let bdcomment = $('#bdcomment').val();
	let LogMemId = $('#logMemId').text();
	let boardCd = $('#bdCode').text();
	
	console.log(LogMemId);  
	console.log(boardCd); 
	console.log(bdcomment); 
	
	$.ajax({
		url: '/InsertComment.do',
		method: 'post',
		data: { 
			boardCd: boardCd, 
			LogMemId: LogMemId, 
			bdcomment: bdcomment
		}, 
		success: function(data){
			if(data === "success"){
                window.location.href = "http://localhost:8888/ReadBoard.do?boardCd="+boardCd;
            }else{
                alert("좋아요 변경 실패");
            }
        },
        error: function(xhr){
           alert(xhr);
        },
        dataType: 'text'
      
   });

};






$('#updateBtn').on('click', function(){
   
   let boardCd = $('#bdCode').text();
    var newUrl = 'http://localhost:8888/UpdateBoard.do?boardCd=' + boardCd;

    window.location.href = newUrl;
});        
        
$('#deleteBtn').on('click', function(){
    $('#loginModal').modal('show');
   
});

function deleteBoard(){
   
   let boardCd = $('#bdCode').text();
   console.log(boardCd);

   $.ajax({
      url: '/DeleteBoard.do',
      method: 'post',
      data: {
         bdCode: boardCd
      },
      success: function(data){
            if(data === "success"){
                window.location.href = "/BoardMain.do";
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

$('#likeBtn').on('click', function(){
	let memId = $('#logMemId').text();
	let boardCd = $('#bdCode').text();
	
	console.log( memId, boardCd);
	
	$.ajax({
		url: 'ChangeDisLike.do',
		method: 'post',
		data: { 
			boardCd: boardCd, 
			memId: memId
		}, 
		success: function(data){
			if(data === "success"){
                window.location.href = "http://localhost:8888/ReadBoard.do?boardCd="+boardCd;
            }else{
                alert("좋아요 변경 실패");
            }
        },
        error: function(xhr){
           alert(xhr);
        },
        dataType: 'text'
      
   });
}); 

$('#disLikeBtn').on('click', function(){
	
	let memId = $('#logMemId').text();
	let boardCd = $('#bdCode').text();
	
	console.log( memId, boardCd);
	
	$.ajax({
		url: 'ChangeLike.do',
		method: 'post',
		data: { 
			boardCd: boardCd, 
			memId: memId
		}, 
		success: function(data){
			if(data === "success"){
				window.location.href = "http://localhost:8888/ReadBoard.do?boardCd="+boardCd;  
				}else{
                alert("좋아요 변경 실패");
            }
        },
        error: function(xhr){
           alert(xhr);
        },
        dataType: 'text'
      
   });  	
});


$('#reportBtn').on('click', function(){
    $('#reportModal').modal('show');
});

function sure(){
	$('#lastModal').modal('show');
}

function sendReport(){
	
	let boardCd = $('#bdCode').text();
	let logMemId = $('#logMemId').text();
	let reportContent = $("#reportContent").val();
	
	console.log( boardCd, logMemId, reportContent );
	
	$.ajax({
		url: 'SendReport.do',
		method: 'post',
		data: { 
			boardCd: boardCd, 
			logMemId: logMemId, 
			reportContent: reportContent
		}, 
		success: function(data){
			if(data === "success"){
                window.location.href = "/BoardMain.do";
            }else{
                alert("신고 실패");
            }
        },
        error: function(xhr){
           alert(xhr);
        },
        dataType: 'text'
      
   });
}; 


</script>
    
    
</body>
</html>