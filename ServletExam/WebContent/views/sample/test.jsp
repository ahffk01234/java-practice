<%@page import="eagle.member.vo.memVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    List<memVO> memList = (List<memVO>)request.getAttribute("memList");
    
    %>
<!DOCTYPE html>
<html>
<%@include file="header1.jsp"%>
<body>

<div id="wrap">
<header id="header" class="on">
	<span class="sub_bg" style="opacity:0;"></span>
	<h1>
	<a href="/">HANHWA EAGLES</a>
	</h1>
	<form id="menuForm" name="menuForm"></form>
	<div class="menu_wrap menu_kr">
		<button type="button" class="menuToggle">메뉴열기</button>
		<div class="menu_effect">
			<nav id="menu">
				<ul>
					<li><a href="./" class="">
						<span style="width: 0px;"></span>
						<span style="width:0px;"></span>EAGLES
					</a>
					<ul style="display: none; height: 70px; padding-top: 0px; margin-top: 0px; padding-bottom: 0px; margin-bottom: 0px; display:none;">
                        <li><a href="/MN/CL/MNCLCI01.do">구단소개</a></li>
                        <li><a href="/MN/GI/MNGI01.do">그룹사소개</a></li>
                        <li><a href="/MN/HI/MNHI01.do">HISTORY</a>
                            <ul>
                                <li><a href="/MN/HI/MNHI01.do#history_81-89">1981-1989</a></li>
                                <li><a href="/MN/HI/MNHI01.do#history_90-99">1990-1999</a></li>
                                <li><a href="/MN/HI/MNHI01.do#history_00-09">2000-2009</a></li>
                                <li><a href="/MN/HI/MNHI01.do#history_10-21">2010-2021</a></li>
                                <li><a href="/MN/HI/MNHI05.do#eaglesCon">LEGEND</a></li>
                            </ul>
                        </li>
                        <li><a href="/MN/EP/MNEPPI01.do">한화생명 이글스파크</a>
                            <ul>
                                <li><a href="/MN/EP/MNEPPI01.do#eaglesCon">한화생명 이글스파크</a></li>
                                <li><a href="/MN/EP/MNEPPI02.do#eaglesCon">서산전용연습구장</a></li>
                                <li><a href="/MN/EP/MNEPPI03.do#eaglesCon">이글스 사료관</a></li>
                            </ul>
                        </li>
                        <li><a class="pc_only" href="/MN/CSR/MNCSRWP01.do">사회공헌</a>
                            <ul>
                            	<li class="" id="MNCSRW_LEFT"><a href="/MN/CSR/MNCSRWP01.do#eaglesCon">세상에 없던 말</a></li>
	                  			<li class="" id="MNCSRR_LEFT"><a href="/MN/CSR/MNCSRRP01.do#eaglesCon">락앤볼 캠페인</a></li>
	                  			<li class="" id="MNCSRU_LEFT"><a href="/MN/CSR/MNCSRUP01.do#eaglesCon">업사이클링 캠페인</a></li>
                            </ul>
                        </li>
                    </ul>
					</li>
					<li><a href="/PL/CS/PLCS01.do" class=""><span style="width: 0px;"></span><span style="width: 0px;"></span>PLAYERS</a>
                    <ul style="height: 70px; padding-top: 0px; margin-top: 0px; padding-bottom: 0px; margin-bottom: 0px; display: block;">
                       <li><a href="/PL/CS/PLCS01.do">코칭스탭</a></li>
                        <li><a href="/PL/PC/PLPC01.do">투수</a></li>
                        <li><a href="/PL/CC/PLCC01.do">포수</a></li>
                        <li><a href="/PL/IF/PLIF01.do">내야수</a></li>
                        <li><a href="/PL/OF/PLOF01.do">외야수</a></li>
                        <li><a href="/PL/AP/PLAP01.do">군입대 선수</a></li>
                        <li><a href="/PL/CH/PLCH01.do">응원단</a></li>
                        <li><a href="/PL/ST/PLST01.do">STAFF</a></li>
                    </ul>
                </li>
                <li><a href="/GA/GE/PCFAGE01.do" class=""><span style="width: 0px;"></span><span style="width: 0px;"></span>GAME</a>
                    <ul style="height: 70px; padding-top: 0px; margin-top: 0px; padding-bottom: 0px; margin-bottom: 0px; display: none;">
                        <li><a href="/GA/GE/PCFAGE01.do">1군 경기일정</a></li>
                    </ul>
                </li>
                <li><a href="/FA/CN/PCFACN01.do" class="both"><span style="width: 0px;"></span><span style="width: 0px;"></span>FAN</a>
                	<ul style="display: none; height: 70px; padding-top: 0px; margin-top: 0px; padding-bottom: 0px; margin-bottom: 0px; display: none;">
                        <li><a href="/FA/CN/PCFACN01.do">구단소식</a></li>
                        <li><a href="/FA/MI/PCFAMI03.do">키즈클럽</a></li>
                        <li><a href="/FA/FT/PCFAFT01.do">팬 타임즈</a></li>
                        <li><a href="/FA/GL/PCFAGL01.do">갤러리</a></li>
                        <li><a href="/FA/EC/PCFAEC01.do">이글스 아카이브</a></li>
                    </ul>
                </li>
                <li class="pc_only"><a href="/SH/PCSH01.do"><span style="width: 0px;"></span><span style="width: 0px;"></span>SHOP</a>

                </li>
                <li><a href="/ticketInfo.do" class="both"><span style="width: 0px;"></span><span style="width: 0px;"></span>TICKET</a></li>
				</ul>
				<li><a href="https://sporki.com/kbaseball/schedule/todaygame?teamSeq=170&amp;utm_source=hanhwaeagles&amp;utm_medium=affiliate&amp;utm_campaign=kbase_game&amp;utm_content=eagles_banner" 
					class="both txt_kr" target="_blank"><span style="width: 0px;"></span>실시간중계보기</a></li>
					</ul>
			</nav>
			<div class="util_menu">
            <ul>
                <!-- s: LOGOUT -->
                <li>
                    <a href="/">KO</a>
                    <a href="/EN/index.do">
                    EN</a>
                    
                </li>
				                <!-- s: LOGOUT -->
				                <li><a href="./login.jsp">LOGIN</a></li>
				                <li><a href="/JO/PCJO01.do">JOIN US</a></li>
				                <!-- e: LOGOUT -->
            </ul>
        </div>
		</div>
		</div>
		<script>
    var _thsW = $(window).width(),
        _juice = false;

    $(document).ready(function(){
        if(_thsW > 1024){ // pc size
            $(function(){

                $('#header').prepend('<span class="sub_bg"></span>')

                $('#header').on('mouseenter', function(){
                    $(this).addClass('on')
            	})
            	$('#header').on('mouseleave', function(){
                    if($('#menu > ul > li > a').hasClass('active')){
                        if($(this).find('a').siblings('ul').length > 0){
                            $(this).addClass('on')
                        } else {
                            $(this).removeClass('on')
                        }
                    } else {
                        $(this).removeClass('on')
                    }
            	})

                $('#menu > ul > li > a').prepend('<span></span>')
                $('#menu > ul > li > a').on('mouseover focus mouseout blur', function (e) {
                    var _ths = $(this),
                        _hasChild = _ths.siblings('ul');

                    if (e.type == 'mouseover' || e.type == 'focus') {
                        $('#menu > ul > li > a').removeClass('active').find('span').stop().animate({ 'width': '0' }, 200);
                        $('#menu > ul > li > ul').stop().slideUp(200);

                        _ths.addClass('active');
                        _ths.find('span').stop().animate({ 'width': '100%' }, 200);
                        _hasChild.stop().slideDown(400);
                    } else if (e.type == 'mouseout' || e.type == 'blur') {
                        if(_hasChild.length == 0) {
                            _ths.removeClass('active');
                            _ths.find('span').stop().animate({ 'width': 0 }, 200);
                        }
                    }
                });
                $('#menu > ul > li > ul').mouseleave(function(){
                    $('#menu > ul > li > a').removeClass('active').find('span').stop().animate({ 'width': '0' }, 200);
                    $('#menu > ul > li > ul').stop().slideUp(200);
                });

                $('#menu > ul > li').on('mouseenter mouseleave', function(e){
                    if (e.type == 'mouseenter') {
                        if($(this).find('a').siblings('ul').length > 0){
                            $('#header .sub_bg').stop().animate({ 'opacity': '1' }, 50);
                        } else {
                            $('#header .sub_bg').stop().animate({ 'opacity': '0' }, 50);
                        }
                    } else if (e.type == 'mouseleave') {
                        $('#header .sub_bg').stop().animate({ 'opacity': '0' }, 50);

                        if($('#menu > ul > li > a').hasClass('active')){
                            if($(this).find('a').siblings('ul').length > 0){
                                $('#header .sub_bg').stop().animate({ 'opacity': '1' }, 50);
                            } else {
                                $('#header .sub_bg').stop().animate({ 'opacity': '0' }, 50);
                            }
                        } else {
                            $('#header .sub_bg').stop().animate({ 'opacity': '0' }, 50);
                        }

                    }
                })

                // $('#menu > ul > li > a').on('focus blur', function () {
                //     if (e.type == 'focus') {
                //         if($(this).find('a').siblings('ul').length > 0){
                //             $('#header .sub_bg').stop().animate({ 'opacity': '1' }, 50);
                //         }
                //     } else if (e.type == 'blur') {
                //         $('#header .sub_bg').stop().animate({ 'opacity': '0' }, 50);
                //     }
                // })
            });
        } else { // mobile size
            // open menu btn
            // $('.menuToggle').click(function(){
            //     $(this).blur();
            //     $('.menu_effect').slideToggle(50);
            //     $('header').toggleClass('active');
            // });

            // // menu mobile
            // $('#header nav > ul > li > a').not('.both').click(function(e){
            //     if(_thsW > 1024){
            //         return true;
            //     }

            //     e.preventDefault();
            //     $('#header nav > ul > li').removeClass('on');
            //     $('#header nav > ul > li > ul').hide();
            //     $(this).siblings('ul').show();
            //     $(this).closest('li').addClass('on');
            // });

            // $('#header nav > ul > li > ul > li > a').click(function(e){
            //     var thsTxt = $(this).text();

            //     if(thsTxt == 'HISTORY'){
            //         console.log(thsTxt)
            //         if(_thsW > 1024){
            //             return true;
            //         }
            //         e.preventDefault();
            //     }
            // });

            // $('#header nav > ul > li > ul > li > a').click(function(e){
            //     $(this).closest('li').siblings('li').removeClass('on');
            //     $(this).closest('li').siblings('li').find('ul').slideUp(200);
            //     $(this).siblings('ul').slideToggle(200);
            //     $(this).closest('li').toggleClass('on');
            // });
        }
    });
    $(window).resize(function(){
        _thsW = $(window).width();
    });
</script>
</header>
	<div id="wrap">
		<article id="container" class="ticketInfo">
			<div class="content_block">
				<div class="img_box">
					<img src="images/ticketInfo_2023_01.jpg" alt="2022시즌 한화이글스 홈경기 티켓 예매 안내">
				</div>
			<div class="btn_box">
				<a class="btn_reservation" href="hanhwa.login">
					<img src="images/btn_reservation.png" alt="예매하기">
				</a>
<%-- <%	for(memVO mv : memList){  --%>
<%--  %> --%>
<%-- <div style='color:gold;'><a href="../views/detail.do?memId=<%=mv.getMemId() %>"><%=mv.getMemName() %></a></div> --%>
<%-- <div style='color:gold;'><a href="https://www.hanwhaeagles.co.kr/ticketInfo.do"><%=mv.getMemId() %></a></div> --%>
<%-- <div style='color:gold;'><a href="https://www.hanwhaeagles.co.kr/ticketInfo.do"><%=mv.getMemName() %></a></div> --%>
<%-- <div style='color:gold;'><a href="https://www.hanwhaeagles.co.kr/ticketInfo.do"><%=mv.getMemBirth() %></a></div> --%>

<%-- <% --%>

<%--  %>  --%>
			</div>
			<div class="img_box">
				<img src="images/ticketInfo_2023_02.jpg" alt="2022시즌 한화이글스 홈경기 티켓 예매 안내">
			</div>
			</div>
		</article>
	</div>
</div>

</body>
</html>