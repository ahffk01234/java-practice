<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
해당 경기코드의 좌석 출력과 티켓구매수량 선택 폼 출력
<%
	String gameCode = (String)request.getAttribute("gameCode");
%>
<%=gameCode %>
</body>
</html>