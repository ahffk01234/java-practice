<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


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
	z-index: 9999;
}

#prodmenu:hover {
            color: orange !important;
        }
a {
            text-decoration: none;
            color: inherit;
        }
        
        
       /* 배너 및 상품 목록 */
        .img-box>img {
            width: 100%;
            display: block;
        }

        /* 상품 정렬 */
        .list-box-1 .cell {
            width: 20%;
            padding: 0 10px;
            margin-top: 20px;
            cursor: pointer;
        }

        /* 상품 제목 및 가격 */
        .list-box-1 .cell>.prod-name,
        .list-box-1 .cell>.prod-price {
            text-align: center;
            font-weight: bold;
            margin-top: 5px;
        }

        .list-box-1 .cell>.prod-price {
            font-size: 1.2rem;
        }

        .list-box-1 .cell>.prod-price::after {
            content: "원";
        }

        .list-box-1 .cell:hover>.prod-name,
        .list-box-1 .cell:hover>.prod-price {
            color: orangered;
        }

        /* 기타 효과 */
        .list-box-1 .cell>.img-box>img {
            transition: transform 1s;
        }

        .list-box-1 .cell:hover>.img-box>img {
            transform: scale(1.25);
        }

        .list-box-1 .cell>.img-box {
            overflow: hidden;
            position: relative;
        }

        .list-box-1 .cell>.img-box>.ico-view {
            color: white;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            opacity: 0;
            transition: opacity 1s;
            z-index: 1;
            border: 2px solid white;
            border-radius: 10px;
            padding: 5px;
        }

        .list-box-1 .cell>.img-box>.ico-view:after {
            content: "VIEW";
            padding-left: 5px;
        }

        .list-box-1 .cell:hover>.img-box>.ico-view {
            opacity: 1;
        }

        .list-box-1 .cell:hover>.img-box::before {
            opacity: 1;
        }

        .list-box-1 .cell>.img-box::after {
            content: "";
            background-color: rgba(0, 0, 0, 0);
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            transition: background-color 1s;
        }

        .list-box-1 .cell:hover>.img-box::after {
            background-color: rgba(252, 190, 3, 0.315);
        }
        
        
        #prodmenu:hover {
            color: orange !important;
        }
        
