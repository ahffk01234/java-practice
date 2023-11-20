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
<title>게시물 등록</title>
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
        
        *::selection {
    color: #fff;
    background: rgba(243,115,33,0.8);
}

   body {
    display: block;
    margin: 8px;
}

*:not(hr) {
    margin: 0;
    padding: 0;
    vertical-align: top;
    border: 0;
    outline-color: orange;
    box-sizing: border-box;
    -webkit-tap-highlight-color: transparent;
}

body {
    min-width: 1400px;
    overflow-x: auto;
    background: #191919;
}

div {
    display: block;
}

#container .content_block {
    position: relative;
    width: 1240px;
    padding-top: 160px;
    margin: -230px auto 0;
}

article, aside, details, figcaption, figure, footer, header, hgroup, menu, nav, section {
    display: block;
}

*:not(hr) {
    margin: 0;
    padding: 0;
    vertical-align: top;
    border: 0;
    outline-color: orange;
    box-sizing: border-box;
    -webkit-tap-highlight-color: transparent;
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

.notice_write .list_form {
    padding: 30px 0 40px;
    border-top: 1px solid #666;
    border-bottom: 1px solid #333;
}

.notice_write .row_hr {
    display: -ms-flexbox;
    display: -webkit-box;
    display: -webkit-flex;
    display: flex;
    margin-top: 10px;
}

/* .notice_write .row_hr > label, .content_block .row_hr > .label { */
/*     width: 180px; */
/*     padding: 18px 0 0 32px; */
/* } */

.row_hr > label, .row_hr > .label {
    display: block;
    color: #808080;
    font-family: 'HanwhaGothicT', sans-serif;
    font-size: 14px;
}

strong, b {
    font-weight: normal;
}

*:not(hr) {
    margin: 0;
    padding: 0;
    vertical-align: top;
    border: 0;
    outline-color: orange;
    box-sizing: border-box;
    -webkit-tap-highlight-color: transparent;
}

.notice_write .row_hr .item_row {
    width: 100%;
    margin-top: 0;
}

.input_wrap {
    border: 1px solid rgba(255,255,255,0);
/*     background-color: rgba(255,255,255,0.15); */
    border-radius: 8px;
}

.notice_write .row_hr {
    display: -ms-flexbox;
    display: -webkit-box;
    display: -webkit-flex;
    display: flex;
    margin-top: 10px;
}

.row_hr {
    margin-top: 20px;
}

.notice_write .row_hr > label, .content_block .row_hr > .label {
    width: 180px;
     padding: 5px 0 0 5px; 
    text-align: center;
    font-size: 17px;
}

.row_hr > label, .row_hr > .label {
    display: block;
    color: #808080;
    font-family: 'HanwhaGothicT', sans-serif;
    font-size: 14px;
    line-height: 100%;
}

/* .input_wrap.textarea { */
/*     padding: 14px 15px; */
/* } */

.item_row .input_wrap ~ .list_bul {
    margin-top: 10px;
}

.bul_star.gray_12 {
    font-size: 12px;
    line-height: 20px;
}

#container .btn_area {
    font-family: 'MyriadPro-Regular', sans-serif;
    font-size: 0;
    text-align: center;
}

.paginate.center {
    text-align: center;
}

.paginate {
    position: relative;
    margin-top: 30px;
}


#frm{
       position: relative;
    width: 1240px;
    padding-top: 160px;
    margin: -230px auto 0;

}

textarea.form-control {
    border: 1px solid #f37321; 
    color: white; 
    background-color: black; 
}

textarea.form-control:focus {
    background-color: #272626; 
    border: 1px solid #f37321;
    color: white;
}

#insertBtn{
   width: 1240px;
    padding-top: 50px;
    margin: -230px 400px 0;
    
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

.btn_com.gray {
    border: 1px solid #888;
    background-color: #888;
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

.paginate.center .btn_com ~ .btn_com {
    margin-left: 10px;
}

.paginate.center .btn_com.em {
    min-width: 230px;
}

.paginate.center .btn_com {
    width: auto;
    min-width: 140px;
    text-align: center;
}

.btn_com.em {
    border: 1px solid #f37321;
    background-color: #f37321;
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

button {
    border: 0 none;
    border-radius: 0;
    background-color: transparent;
    cursor: pointer;
    font-family: inherit;
}

input, select, textarea, button {
    vertical-align: middle;
}

#is_pinned{
/* z-index: 999; */
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

<nav class="container-fluid content-board bg-black">
    <div class="content-boarddiv">

        <nav class="content-header navbar-expand-lg" style="padding: 0px 10px 0px 10px; margin-bottom: 30px;">
            <div class="row collapse navbar-collapse">
                <ul class="navbar-nav content-div board_menu" style="margin-top: 80px;">
                    <li class="col col-1"></li>
                    <li class="col col-8" id="PCFACN">
                        <h1 class="text-white" style="font-style: bold;">
                            <span style="font-weight: bold;  margin-bottom: 35px; margin-left: 150px;">문의 작성</span>
                        </h1>
                    </li>
                </ul>
            </div>
        </nav>
        
 <form action="/ask/insertAsk.do" id="insertAskForm" method="post">
         <div class="notice_write" >
            <div class="list_form">
               <div class="row_hr" style="height: 50px;">
                  <label for="title" class="text-white"> 제목
                  <strong class="label">
                   </strong>
                   </label>
                  <div class="item_row">
                     <div class="input_wrap textarea" >
                        <textarea class="form-control" rows="1" name="title" id="title"></textarea>
                     </div><!-- //.input_wrap -->
                  </div>
               </div>
               
               <div class="row_hr">
               <label for="title" class="text-white">내용
                  <strong class="label"></strong>
                  </label>
                  <div class="item_row">
                     <div class="input_wrap textarea">
                        <textarea class="form-control" rows="20" name="content" id="content"></textarea>
                     </div><!-- //.input_wrap -->
                     <div class="list_bul">
<!--                         <p class="bul_star gray_12">음란, 폭력, 정치적인 내용의 이미지, 영상이나 글이 포함되었을 경우 관리자에 의해 해당 게시글이 비공개 처리될 수 있습니다.</p> -->
                     </div>
                  </div>
               </div>
         </div>
      </div>
   </form>
   </div>
</nav>
<br><br>
<div class="paginate btn_area center" id="insertBtn">
         <a href=http://localhost:8888/ask/getAskByMem.do type="button" class="btn_com gray"><span style="width: 0px;"></span>취소</a>
         <button type="button" onclick="insertBoard()" class="btn_com em">등록</button>
      </div>
    
  <!-- 모달 창 템플릿 -->
<div class="modal fade" id="insertAskModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content bg-black text-white" style="border: 2px solid white">
      <div class="modal-header" style="border-bottom-color: orange;">
        <h5 class="modal-title" id="loginModalLabel">문의 등록</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="loginModalBody" >
           문의를 등록하시겠습니까?
      </div>
      <div class="modal-footer"  style="border-top-color: orange;">
      <button type="button" class="btn btn-secondary" id="insertBtn" style="background-color: #808080;" data-bs-dismiss="modal">취소</button>
      <button type="button" class="btn btn-secondary" id="yesBtn" style="background-color: #f37321;" >확인</button>      </div>
    </div>
  </div>
</div>   
    
    
    
    
    
 <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous">
        </script>
<script>

function insertBoard(){
    $('#insertAskModal').modal('show');
}

$('#insertBtn').on('click', function(){
	document.getElementById('insertAskForm').submit();
});
$('#closeBtn').on('click', function(){
    $('#insertAskModal').modal('hide');
});



</script>

</body>
</html>