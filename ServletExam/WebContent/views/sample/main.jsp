<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">


    <style>
        body{min-width:1400px;overflow-x:auto;background:#191919;}

        /* 재생버튼과 일시정지 버튼 숨기기 */
        video::-webkit-media-controls-start-playback-button,
        video::-webkit-media-controls-pause-button {
            display: none !important;
        }

        /* 호환성을 위한 다른 브라우저에 대한 스타일 적용 */
        video::-webkit-media-controls-play-button,
        video::-webkit-media-controls-pause-button,
        video::-webkit-media-controls-enclosure {
            display: none !important;
        }

        #bg-video {
            position: relative;
            width: 100%;
            height: 200%;
            overflow: hidden;
            pointer-events: none;
        }

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
<%@include file="../../header/header.jsp" %>

    <div class="col-12 video-container">
        <video class="col-12" id="bg-video" autoplay loop muted controls oncontextmenu="return false;"
            onmousedown="return false;" disablePictureInPicture disableRemotePlayback>
            <source src="../../header/2023 한화이글스 'THE ONLY WAY IS UP'.mp4">
        </video>
    </div>
    <div class="container-fluid p-5 bg-dark text-white text-center">
        <div>
            <div class="col">
                <!-- <img src="../../img/h_logo.png" alt=""> -->
            </div>
            <div class="col">
                <h1>EAGLES</h1>
            </div>
        </div>
    </div>
    </div>

    <div class="container-fluid p-5 row">
        <div class="col-sm-4">
            <h3>첫번째</h3>
            <p>가나다라마바사</p>
            <p>가나다라마바사</p>
        </div>
        <div class="col-sm-4">
            <h3>두번째</h3>
            <p>가나다라마바사</p>
            <p>가나다라마바사</p>
        </div>
        <div class="col-sm-4">
            <h3>세번째</h3>
            <p>가나다라마바사</p>
            <p>가나다라마바사</p>
        </div>
    </div>
    <div class="container-fluid p-5 bg-danger">
        <div class="row">
            <div class="col-sm-4">
                <h3>첫번째</h3>
                <p>가나다라마바사</p>
                <p>가나다라마바사</p>
            </div>
            <div class="col-sm-4">
                <h3>두번째</h3>
                <p>가나다라마바사</p>
                <p>가나다라마바사</p>
            </div>
            <div class="col-sm-4">
                <h3>세번째</h3>
                <p>가나다라마바사</p>
                <p>가나다라마바사</p>
            </div>

        </div>
    </div>
    <div class="container-fluid p-5 row">
        <div class="col-sm-4">
            <h3>첫번째</h3>
            <p>가나다라마바사</p>
            <p>가나다라마바사</p>
        </div>
        <div class="col-sm-4">
            <h3>두번째</h3>
            <p>가나다라마바사</p>
            <p>가나다라마바사</p>
        </div>
        <div class="col-sm-4">
            <h3>세번째</h3>
            <p>가나다라마바사</p>
            <p>가나다라마바사</p>
        </div>
    </div>
    <div class="container-fluid p-5 bg-danger">
        <div class="row">
            <div class="col-sm-4">
                <h3>첫번째</h3>
                <p>가나다라마바사</p>
                <p>가나다라마바사</p>
            </div>
            <div class="col-sm-4">
                <h3>두번째</h3>
                <p>가나다라마바사</p>
                <p>가나다라마바사</p>
            </div>
            <div class="col-sm-4">
                <h3>세번째</h3>
                <p>가나다라마바사</p>
                <p>가나다라마바사</p>
            </div>

        </div>
    </div>


    <nav class="navbar fixed-bottom navbar-expand-sm navbar-dark bg-black">
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


    <!-- JavaScript Bundle with Popper -->
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous">
</script>
</body>
</html>
