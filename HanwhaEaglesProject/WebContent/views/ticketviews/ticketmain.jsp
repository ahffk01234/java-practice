<%@page import="java.util.Comparator"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@page import="eagles.ticket.vo.GameVO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="eagles.team.vo.TeamVO"%>
<%@page import="eagles.games.vo.GamesVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%
     
     List<GameVO> gameAllList = (List<GameVO>)request.getAttribute("gameAllList");

		Collections.sort(gameAllList, new Comparator<GameVO>() {
         @Override
         public int compare(GameVO game1, GameVO game2) {
        	 
             // getGameDate()를 기준으로 정렬int dateCom = Integer.valueOf(date);
							
			String gameDateStr1 = game1.getGameDate().substring(0, 10);
			String gameDateStr2 = game2.getGameDate().substring(0, 10);
			
			String date1 = gameDateStr1.replace("-", "");
			String date2 = gameDateStr2.replace("-", "");
			
             return Integer.compare(Integer.valueOf(date1), Integer.valueOf(date2));
         }
     });
     
	%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>경기목록</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.0/css/bootstrap.min.css">

  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.0/js/bootstrap.bundle.min.js"></script>
  
<style>
<%@include file="../headerCSS.jsp" %>
.cell{
	width: 70px; !important

}
.modal-content {
	background-color: #000;
    color: #fff;
    border-color: orange;
}
.modal-header {
	border-bottom-color: orange;
}
.modal-footer {
	border-top-color: orange;
}
.bordered-div {
            border: 1px solid white; /* 테두리 스타일, 두께, 색상 설정 */
            padding: 10px; /* 내용과 테두리 사이의 간격(여백) 설정 */
        }
.gamecard:hover {
            border: 5px solid orange;
        }        
        
</style>
</head>
<body>
<%@include file="../header.jsp" %>



<br><br>


	

	
<div class="container-fluid row">	
	<div class="col-2"></div>
			
			
				<div class="col-8 row btn-group" role="group" aria-label="Basic mixed styles example">
				  <a id="gamelist" href="/ticket/ticketmain.do" type="button" class="col-3 btn btn-warning">예매</a>
				  <a id="gamelist" href="/ticket/ticketmain.do?gameMonth=06" type="button" class="col-3 btn btn-secondary">6월</a>
				  <a id="gamelist" href="/ticket/ticketmain.do?gameMonth=07" type="button" class="col-3 btn btn-secondary">7월</a>
				  <a id="gamelist" href="/ticket/ticketmain.do?gameMonth=08" type="button" class="col-3 btn btn-secondary">8월</a>
				</div>
				
		<div class="col-2"></div>
</div>
		
	
	
	
	<%
		String gamemthVal = request.getParameter("gameMonth");
		Date currDate = new Date();
	%>
	<div class="container-fluid p-5 text-center">
		<div class="row">
			<div class="col-1"></div>
			<div class="col-10 text-center" style="padding: 0px 0px 0px 63px;">
				<div class="container-fluid col text-white list-box-1 con">
				<ul class="row">
				<%
					int gameSize = gameAllList.size();
				if(gameSize == 0){
					
				
				%>
				<tr>
					<td colspan="4"> 경기 정보가 존재하지 않습니다.</td>
				</tr>
				<%
				}else{
					// 경기 예정 출력
					if(gamemthVal == null){
						for(GameVO gm : gameAllList){
					
							String gameCd = gm.getGameCd();
							
							String gameDateStr = gm.getGameDate().substring(0, 10);
							
							String date = gm.getGameDate().substring(0, 10).replace("-", "");
							
							
							
							String dateReplace = gameDateStr.replaceFirst("-", "년 ");
							
							String dateRepl = dateReplace.replace("-", "월 ") + "일";
							
							
// 							boolean isClickable = gameDate.before(currDate);
// 			 				String onclickAttribute = isClickable ? 
// 			 						"redirectPage(" + gameCd + ");" : "return false;";
							
							// null값 표시 방지
							if(gm.getGameResult().equals("경기예정")){
							%>
							
							


						<div class="gamecard bg-black bordered-div" id="<%=gameCd %>" onclick="redirectpage(<%=gameCd%>,<%=date%>)" name="<%=gameCd %>" style="margin: 30px; border-radius: 25px; width: 250px; height: 370px; background-color: lightblue; display: block; cursor: pointer;">
							

							<h5 class="text-center"
								style="font-weight: bold; color: orange">
								<br><%=dateRepl %>
							</h5>

							<div class="row">
								<div class="col-1"></div>
								<div class="col-10">
									<hr>
								</div>
								<div class="col-1"></div>
							</div>
							<div>
								
							</div>
							<div class="row">

								<div class="col-1 text-center"></div>

								<div class="row col">
									<img src="<%=gm.getTeamLogo() %>" alt="">
									
										

								</div>

								<div class="col-1 text-center"></div>
								<div class="game-result"><span><%=gm.getGameResult() %></span></div>
							</div>

						</div>







						<%
							}
						}
						} else {
						for (GameVO gm : gameAllList) {

						String gameCd = gm.getGameCd();

						String gameDateStr = gm.getGameDate().substring(0, 10);

						String date = gm.getGameDate().substring(0, 10).replace("-", "");

						String dateReplace = gameDateStr.replaceFirst("-", ". ");
						String dateRepl = dateReplace.replace("-", ". ") + "";

						// 							boolean isClickable = gameDate.before(currDate);
						// 			 				String onclickAttribute = isClickable ? 
						// 			 						"redirectPage(" + gameCd + ");" : "return false;";
						// 							String gameCode = (String)request.getParameter("gameCode");
						// 월별 출력
						if (gm.getGameMonth().equals(gamemthVal)) {
						%>
						
							

							
						<div class="gamecard bg-black bordered-div" id="<%=gameCd %>" onclick="redirectpage(<%=gameCd%>,<%=date%>)" name="<%=gameCd %>" style="margin: 30px; border-radius: 25px; width: 250px; height: 370px; background-color: lightblue; display: block; cursor: pointer;">
							

							<h5 class="text-center"
								style="font-weight: bold; color: orange">
								<br><%=dateRepl %>
							</h5>

							<div class="row">
								<div class="col-1"></div>
								<div class="col-10">
									<hr>
								</div>
								<div class="col-1"></div>
							</div>
							<div>
								
							</div>
							<div class="row">

								<div class="col-1 text-center"></div>

								<div class="row col">
									<img src="<%=gm.getTeamLogo() %>" alt="">
									
										

								</div>

								<div class="col-1 text-center"></div>
								<div class="game-result"><span><%=gm.getGameResult() %></span></div>
								<div class="game-score" style="color: orange;"><%=gm.getGameScore() %></div>
							</div>

						</div>
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							<% 
						}
					}
				}
				}
%>
					</ul>
				</div>
			</div>
			<div class="col-2">
			</div>
		</div>
		<div class="col-3"></div>
		
		<div class="modal fade" id="warning" tabindex="-1" role="dialog" aria-labelledby="paymentModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content bg-black text-white">
            <div class="modal-header" style="border-bottom-color: orange;">
                <h5 class="modal-title" id="paymentModalLabel">예매취소화면</h5>
                <button type="button" onclick="closeModal()" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p>이미 지난 경기입니다</p>
            </div>
            <div class="modal-footer" style="border-top-color: orange;">
				<button type="button" class="btn btn-danger" data-bs-dismiss="modal">확인</button>
            </div>
        </div>
    </div>
</div>
		
<script>

function redirectpage(gameCd, dateRepl){
	
	var todayDate = new Date().toISOString().slice(0, 10).replace(/-/g, "");
    
    if (dateRepl < todayDate) {
        // 여기에 원하는 동작을 추가합니다.
        // 예시로 경고창을 띄우는 것으로 대체합니다.
        var myModal = new bootstrap.Modal(document.getElementById('warning'));
    	myModal.show();
    }
    else{
		var newurl = 'http://localhost:8888/seatList.do?gameCd='+ gameCd;
	window.location.href = newurl;
    }
}
</script>	

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous">
</script>

</body>
</html>