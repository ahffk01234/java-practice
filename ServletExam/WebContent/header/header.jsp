<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">


    <style>
    body{min-width:1400px;overflow-x:auto;background:#191919;}	
    
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
    </style>
</head>

<body>

    <nav class="navbar sticky-top navbar-expand-lg bg-black">

        <div class="col-1 container-fluid">
            <a class="navbar-brand" href="#">
                <img src="./h_logo.png" alt="Logo" width="40" height="40"
                    class="d-inline-block align-text-top"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
        <div class="col-8 collapse navbar-collapse" id="navbarNav">

            <ul class="navbar-nav">

                <li class="nav-item">
                    <a class="nav-link text-white" href="#">EAGLES</a>
                    <ul class="sub-menu bg-black">
                        <a href="/MN/CL/MNCLCI01.do">구단소개　　</a>
                        <a href="/MN/HI/MNHI01.do">HISTORY　　</a>
                    </ul>
                </li>

                <li class="nav-item">
                    <a class="nav-link text-white" href="#">Player</a>
                    <ul class="sub-menu bg-black">
                        <a href="/">코칭스탭　　</a>
                        <a href="/">투수　　</a>
                        <a href="/">포수　　</a>
                        <a href="/">내야수　　</a>
                        <a href="/">외야수　　</a>
                        <a href="/">군입대 선수　　</a>
                        <a href="/">응원단　　</a>
                        <a href="/">STAFF　　</a>
                    </ul>
                </li>

                <li class="nav-item">
                    <a class="nav-link text-white" href="#">Game</a>
                    <ul class="sub-menu bg-black">
                        <a href="/">1군 경기일정　　</a>
                    </ul>
                </li>


                <li class="nav-item">
                    <a class="nav-link text-white" href="#">Fan</a>
                    <ul class="sub-menu bg-black">
                        <a href="/">구단소식　　</a>
                        <a href="/">팬 타임즈　　</a>
                        <a href="/">갤러리　　</a>
                    </ul>
                </li>

                <li class="nav-item">
                    <a class="nav-link text-white" href="#">승부예측</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link text-white" href="#">SHOP</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link text-white" href="#">Ticket</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" target="_blank"
                        href="https://sporki.com/kbaseball/schedule/todaygame?teamSeq=170&amp;utm_source=hanhwaeagles&amp;utm_medium=affiliate&amp;utm_campaign=kbase_game&amp;utm_content=eagles_banner">
                        실시간중계보기</a>
                </li>
            </ul>
        </div>
        <div class="col-3 collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link text-white" href="#" title="마이페이지"><svg xmlns="http://www.w3.org/2000/svg"
                            width="16" height="16" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
                            <path
                                d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z" />
                        </svg></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="#" title="장바구니"><svg xmlns="http://www.w3.org/2000/svg"
                            width="16" height="16" fill="currentColor" class="bi bi-bag" viewBox="0 0 16 16">
                            <path
                                d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1zm3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4h-3.5zM2 5h12v9a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V5z" />
                        </svg></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="#" title="경기장"><svg xmlns="http://www.w3.org/2000/svg"
                            width="16" height="16" fill="currentColor" class="bi bi-geo-alt" viewBox="0 0 16 16">
                            <path
                                d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z" />
                            <path d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
                        </svg></a>
                </li>
                <li>
                    <a href="./login.jsp" class="nav-link text-white">LOGIN</a>
                </li>

                <li>
                    <a href="/" class="nav-link text-white">JOIN US</a>
                </li>
            </ul>
        </div>

    </nav>