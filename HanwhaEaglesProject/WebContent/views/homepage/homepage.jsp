<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>한화 이글스</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<style>
<%@ include file ="../headerCSS.jsp" %>
	
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
#game {
            width: 100%;
            overflow: hidden;
        }

        #card-container-wrapper {
            display: flex;
            justify-content: center;
            padding: 0 300px;
            /* 여백 영역의 크기 조정 */
        }

        #card-container {
            display: flex;
            overflow-x: auto;
            -ms-overflow-style: none;
            /* IE 및 Edge에서 스크롤 막대 숨김 */
            scrollbar-width: none;
            /* Firefox에서 스크롤 막대 숨김 */
            scroll-behavior: smooth;
            -webkit-overflow-scrolling: touch;
            width: max-content;
        }

        #card-container::-webkit-scrollbar {
            display: none;
            /* Chrome, Safari, Opera에서 스크롤 막대 숨김 */
        }

        #card {
            flex: 0 0 auto;
            width: 300px;
            height: 300px;
            background-color: lightblue;
            margin-right: 10px;
            position: relative;
            cursor: pointer;
            transition: border-color 0.3s ease;
        }

        #card:hover {
            border: 2px solid orangered;
        }
</style>
</head>
<body>

	<%@include file="../header.jsp"%>

	<div class="col-12 video-container">
		<video class="col-12" id="bg-video" autoplay loop muted controls
			oncontextmenu="return false;" onmousedown="return false;"
			disablePictureInPicture disableRemotePlayback>
			<source src="../../img/commonImg/2023 한화이글스 'THE ONLY WAY IS UP'.mp4">
		</video>
	</div>

<div class="container-fluid p-5 bg-black text-white text-center">

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

    <div class="d-flex bg-black">
        <div class="bg-black" style="width: 5%;"></div>
        <div class="bg-black" id="game">
            <div id="card-container" style="width: 92%; overflow-x: auto;">

                <div id="card" class="card bg-dark text-white"
                    style="width: 410px; height: 450px; background-color: lightblue; display: block;">
                    <div style="background-color: orangered;"><br></div>
                    
                    <h4 class="text-center" style="font-weight: bold; color: orangered"><br><br>2023.08.01(화) 14:00</h4>
                    
                    <div class="row">
                        <div class="col-1"></div>
                        <div class="col-10">
                            <hr>
                        </div>
                        <div class="col-1"></div>
                    </div>
                    <div><br><br><br></div>
                    <div class="row">

                        <div class="col-1 text-center"></div>

                        <div class="row col-10">
                            <img class="col" src="../img/teamlogo/한화.png" alt="" width="115" height="115">
                            <h2 class="col"><br>vs</h2>
                            <img class="col" src="../img/teamlogo/NC.png" alt="" width="115" height="115">

                        </div>

                        <div class="col-1 text-center"></div>

                    </div>

                </div>

                <div id="card" class="card bg-dark text-white"
                    style="width: 410px; height: 450px; background-color: lightblue; display: block;">
                    <div style="background-color: orangered;"><br></div>
                    
                    <h4 class="text-center" style="font-weight: bold; color: orangered"><br><br>2023.08.02(수) 18:00</h4>
                    
                    <div class="row">
                        <div class="col-1"></div>
                        <div class="col-10">
                            <hr>
                        </div>
                        <div class="col-1"></div>
                    </div>
                    <div><br><br><br></div>
                    <div class="row">

                        <div class="col-1 text-center"></div>

                        <div class="row col-10">
                            <img class="col" src="/img/teamlogo/한화.png" alt="" width="115" height="115">
                            <h2 class="col"><br>vs</h2>
                            <img class="col" src="/img/teamlogo/기아.png" alt="" width="115" height="115">

                        </div>

                        <div class="col-1 text-center"></div>

                    </div>

                </div>

                <div id="card" class="card bg-dark text-white"
                    style="width: 410px; height: 450px; background-color: lightblue; display: block;">
                    <div style="background-color: orangered;"><br></div>
                    
                    <h4 class="text-center" style="font-weight: bold; color: orangered"><br><br>2023.08.03(목) 18:30</h4>
                    
                    <div class="row">
                        <div class="col-1"></div>
                        <div class="col-10">
                            <hr>
                        </div>
                        <div class="col-1"></div>
                    </div>
                    <div><br><br><br></div>
                    <div class="row">

                        <div class="col-1 text-center"></div>

                        <div class="row col-10">
                            <img class="col" src="/img/teamlogo/한화.png" alt="" width="115" height="115">
                            <h2 class="col"><br>vs</h2>
                            <img class="col" src="/img/teamlogo/삼성.png" alt="" width="115" height="115">

                        </div>

                        <div class="col-1 text-center"></div>

                    </div>

                </div>

                <div id="card" class="card bg-dark text-white"
                    style="width: 410px; height: 450px; background-color: lightblue; display: block;">
                    <div style="background-color: orangered;"><br></div>
                    
                    <h4 class="text-center" style="font-weight: bold; color: orangered"><br><br>2023.08.05(토) 17:00</h4>
                    
                    <div class="row">
                        <div class="col-1"></div>
                        <div class="col-10">
                            <hr>
                        </div>
                        <div class="col-1"></div>
                    </div>
                    <div><br><br><br></div>
                    <div class="row">

                        <div class="col-1 text-center"></div>

                        <div class="row col-10">
                            <img class="col" src="/img/teamlogo/한화.png" alt="" width="115" height="115">
                            <h2 class="col"><br>vs</h2>
                            <img class="col" src="/img/teamlogo/두산.png" alt="" width="115" height="115">

                        </div>

                        <div class="col-1 text-center"></div>

                    </div>

                </div>

                <div id="card" class="card bg-dark text-white"
                    style="width: 410px; height: 450px; background-color: lightblue; display: block;">
                    <div style="background-color: orangered;"><br></div>
                    
                    <h4 class="text-center" style="font-weight: bold; color: orangered"><br><br>2023.08.06(일) 17:00</h4>
                    
                    <div class="row">
                        <div class="col-1"></div>
                        <div class="col-10">
                            <hr>
                        </div>
                        <div class="col-1"></div>
                    </div>
                    <div><br><br><br></div>
                    <div class="row">

                        <div class="col-1 text-center"></div>

                        <div class="row col-10">
                            <img class="col" src="/img/teamlogo/한화.png" alt="" width="115" height="115">
                            <h2 class="col"><br>vs</h2>
                            <img class="col" src="/img/teamlogo/키움.png" alt="" width="115" height="115">

                        </div>

                        <div class="col-1 text-center"></div>

                    </div>

                </div>

                <div id="card" class="card bg-dark text-white"
                    style="width: 410px; height: 450px; background-color: lightblue; display: block;">
                    <div style="background-color: orangered;"><br></div>
                    
                    <h4 class="text-center" style="font-weight: bold; color: orangered"><br><br>2023.08.08(화) 18:30</h4>
                    
                    <div class="row">
                        <div class="col-1"></div>
                        <div class="col-10">
                            <hr>
                        </div>
                        <div class="col-1"></div>
                    </div>
                    <div><br><br><br></div>
                    <div class="row">

                        <div class="col-1 text-center"></div>

                        <div class="row col-10">
                            <img class="col" src="/img/teamlogo/한화.png" alt="" width="115" height="115">
                            <h2 class="col"><br>vs</h2>
                            <img class="col" src="/img/teamlogo/롯데.png" alt="" width="115" height="115">

                        </div>

                        <div class="col-1 text-center"></div>

                    </div>

                </div>

                <div id="card" class="card bg-dark text-white"
                    style="width: 410px; height: 450px; background-color: lightblue; display: block;">
                    <div style="background-color: orangered;"><br></div>
                    
                    <h4 class="text-center" style="font-weight: bold; color: orangered"><br><br>2023.08.09(수) 18:30</h4>
                    
                    <div class="row">
                        <div class="col-1"></div>
                        <div class="col-10">
                            <hr>
                        </div>
                        <div class="col-1"></div>
                    </div>
                    <div><br><br><br></div>
                    <div class="row">

                        <div class="col-1 text-center"></div>

                        <div class="row col-10">
                            <img class="col" src="/img/teamlogo/한화.png" alt="" width="115" height="115">
                            <h2 class="col"><br>vs</h2>
                            <img class="col" src="/img/teamlogo/ssg.png" alt="" width="115" height="115">

                        </div>

                        <div class="col-1 text-center"></div>

                    </div>

                </div>




            </div>
        </div>
        
    </div>
    
    <div class="bg-black">
    <br><br><br><br><br><br>
    </div>

<script>
        var cardContainer = document.getElementById("card-container");
        var isMouseDown = false;
        var startX, scrollLeft;

        cardContainer.addEventListener("mousedown", function (e) {
            isMouseDown = true;
            startX = e.pageX - cardContainer.offsetLeft;
            scrollLeft = cardContainer.scrollLeft;
        });

        cardContainer.addEventListener("mouseleave", function () {
            isMouseDown = false;
        });

        cardContainer.addEventListener("mouseup", function () {
            isMouseDown = false;
        });

        cardContainer.addEventListener("mousemove", function (e) {
            if (!isMouseDown) return;
            e.preventDefault();
            var x = e.pageX - cardContainer.offsetLeft;
            var walk = (x - startX) * 2; // 조절 가능한 이동 속도
            cardContainer.scrollLeft = scrollLeft - walk;
        });
    </script>


	 <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous">
        </script>

</body>
</html>