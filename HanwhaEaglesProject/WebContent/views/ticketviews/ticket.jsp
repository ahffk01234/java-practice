<%@page import="eagles.games.vo.GamesVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    	GamesVO gm = (GamesVO)request.getAttribute("gm");
// 		request.setAttribute("gameCode", gm.getGameCode());
    %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<style>
   <%@include file="../headerCSS.jsp" %>
</style>
<meta charset="UTF-8">
<title>경기상세</title>
</head>
<body>
<%@include file="../header.jsp" %>

<form method="post" action="/ticket/ticket.do">

	<div class="row text-white">
		<div class="col-3"></div>
		<div class="row col col-6 product_view">
			<div class="col col-5">
				<div>
					<img alt="" src="">
				</div>
			</div>
		</div>
		<div class="col col-7">
			<h3><%=gm.getGameCode() %></h3>
			<hr>
			<br>
			<table class="container-fluid">
				<caption>
					<details>
						<summary>경기정보</summary>
								경기코드, 경기결과
					</details>
				</caption>
				<colgroup>
					<col style="width:px;">
						<col>
				</colgroup>
				<tbody>
				<tr>
				<th>
					<h4>경기코드</h4><br><br>
				</th>
				<td style="padding-left: 20px;">
					<h4><%=gm.getGameCode() %></h4><br><br>
					</td>
					</tr>
<% 
if(gm.getGameResult() == null){
%>					
					<tr>
						<th>성인</th>
						<td style="paddingn-left: 20px;">
							<select name="adult" id="size">
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>학생</th>
						<td style="paddingn-left: 20px;">
							<select name="student" id="size">
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>어린이</th>
						<td style="paddingn-left: 20px;">
							<select name="kid" id="size">
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
							</select>
						</td>
					</tr>
					<tr>
 					<tr>

                            <th>
                                <h4>결제금액</h4>
                            </th>
                            <td style="text-align: right; padding-right: 20px;">
                                <span class="row">
                                
                                 <h4 class="col" id="totalPrice"></h4>
                               	 <h4 class="col-1"> 원</h4>
                                </span>
                                
                            </td>
                        </tr>
					
				</tbody>
			</table>
		</div>
	</div>
<%}else{
	%>
	alert();
	<%
}
%>


</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous">
        </script>
    <script>
     // console.log(document.querySelectorAll('.navbar-nav .nav-link'));
    </script>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous">
        </script>
</body>
</html>