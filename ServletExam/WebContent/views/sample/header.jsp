<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
 <style>
                #topMenu {            
                        height: 30px;  
                        width: 850px;  
                }
                #topMenu ul li {                   
                        list-style: none;          
                        color: white;              
                        background-color: #2d2d2d; 
                        float: left;               
                        line-height: 30px;         
                        vertical-align: middle;    
                        text-align: center;         
                }
                #topMenu .menuLink {                              
                        text-decoration:none;                     
                        color: white;                             
                        display: block;                           
                        width: 150px;                             
                        font-size: 12px;                          
                        font-weight: bold;                        
                        font-family: "Trebuchet MS", Dotum, Arial;
                }
                #topMenu .menuLink:hover {
                        color: red;                   
                        background-color: #4d4d4d;    
                }
        </style>
</head>
<body>
<nav id="topMenu" >
                <ul>
                        <li><a class="menuLink" href="#">About us</a></li>
                        <li><a class="menuLink" href="#">Ministries</a></li>
                        <li><a class="menuLink" href="#">Community</a></li>
                        <li><a class="menuLink" href="#">Locations</a></li>
                        <li><a class="menuLink" href="#">Blog</a></li>
                </ul>
        </nav>
</body>
</html>