<%@page import="eagles.ticket.vo.SeatVO"%>
<%@page import="java.util.List"%>
<%@page import="eagles.ticket.vo.GameVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

    
    
    <%
    String gameCode = (String)request.getAttribute("gameCd");
    
    List<SeatVO> seatList = (List<SeatVO>)request.getAttribute("seatList");
    
    %>
    
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>좌석선택</title>
    <!-- FontAwesome 스크립트 로드 -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <style>
    
    <%@include file="../headerCSS.jsp" %>
        .seat {
            width: 15px;
            height: 15px;
     /* background-color: #f2f2f2; */
            border: 1px solid #ccc;
            display: inline-block;
            margin: 2px;
            text-align: center;
            line-height: 40px;
            font-family: Arial, sans-serif;
            cursor: pointer;
        }

        .selected {
           background-color: orange;
        }

        .section-spacing {
            display: inline-block;
            width: 50px;
            /* 원하는 공백의 너비로 조정하세요 */
        }

    </style>


 


</head>

<body>

<%@include file="../header.jsp" %>

<input type="hidden" id="gameCode" value="<%= gameCode %>">
    <!--///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
    <!--///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
    <!--///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
    <!--///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
    <!--///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->





<form action="/seatdetail.do" method="post" id="bookingForm">



    <div class="row align-items-md-stretch" style="height: 100px;">

        

        <div id="left-view" class="bg-black col-lg-8 col-md-12">
            
            <div id="main" class=" py-1">
                <div class="row" style="background-color: green;">
                    <h1 class="text-white text-center"><br>경기장</h1>
                    <br>
                    <h4 class="text-white text-center"><br><br>1루 내야응원석<br><br></h4>
                </div>
                <div class="">
                    <div id="seating">

                        <div class="text-center">
                            <div>
                                <br><br><br><br>

<div class="row text-white text-center" style="color: orange;">

<div class="col-2"></div>
<div class="col"><h4 style="color: orange;">113 구역</h4></div>
<div class="col"><h4 style="color: orange;">114 구역</h4></div>
<div class="col"><h4 style="color: orange;">&nbsp;115 구역</h4></div>
<div class="col-2"></div>

</div>

<br><br>

<div class="seat" id="113A01" value="113A01"></div>
<div class="seat" id="113A02" value="113A02"></div>
<div class="seat" id="113A03" value="113A03"></div>
<div class="seat" id="113A04" value="113A04"></div>
<div class="seat" id="113A05" value="113A05"></div>
<div class="seat" id="113A06" value="113A06"></div>
<div class="seat" id="113A07" value="113A07"></div>
<div class="seat" id="113A08" value="113A08"></div>
<div class="seat" id="113A09" value="113A09"></div>
<div class="seat" id="113A10" value="113A10"></div>

<div class="section-spacing"></div>

<div class="seat" id="114A01" value="114A01"></div>
<div class="seat" id="114A02" value="114A02"></div>
<div class="seat" id="114A03" value="114A03"></div>
<div class="seat" id="114A04" value="114A04"></div>
<div class="seat" id="114A05" value="114A05"></div>
<div class="seat" id="114A06" value="114A06"></div>
<div class="seat" id="114A07" value="114A07"></div>
<div class="seat" id="114A08" value="114A08"></div>
<div class="seat" id="114A09" value="114A09"></div>
<div class="seat" id="114A10" value="114A10"></div>

<div class="section-spacing"></div>

<div class="seat" id="115A01" value="115A01"></div>
<div class="seat" id="115A02" value="115A02"></div>
<div class="seat" id="115A03" value="115A03"></div>
<div class="seat" id="115A04" value="115A04"></div>
<div class="seat" id="115A05" value="115A05"></div>
<div class="seat" id="115A06" value="115A06"></div>
<div class="seat" id="115A07" value="115A07"></div>
<div class="seat" id="115A08" value="115A08"></div>
<div class="seat" id="115A09" value="115A09"></div>
<div class="seat" id="115A10" value="115A10"></div>
</div>
<div>
    <div class="seat" id="113B01" value="113B01"></div>
    <div class="seat" id="113B02" value="113B02"></div>
    <div class="seat" id="113B03" value="113B03"></div>
    <div class="seat" id="113B04" value="113B04"></div>
    <div class="seat" id="113B05" value="113B05"></div>
    <div class="seat" id="113B06" value="113B06"></div>
    <div class="seat" id="113B07" value="113B07"></div>
    <div class="seat" id="113B08" value="113B08"></div>
    <div class="seat" id="113B09" value="113B09"></div>
    <div class="seat" id="113B10" value="113B10"></div>

    <div class="section-spacing"></div>

    <div class="seat" id="114B01" value="114B01"></div>
    <div class="seat" id="114B02" value="114B02"></div>
    <div class="seat" id="114B03" value="114B03"></div>
    <div class="seat" id="114B04" value="114B04"></div>
    <div class="seat" id="114B05" value="114B05"></div>
    <div class="seat" id="114B06" value="114B06"></div>
    <div class="seat" id="114B07" value="114B07"></div>
    <div class="seat" id="114B08" value="114B08"></div>
    <div class="seat" id="114B09" value="114B09"></div>
    <div class="seat" id="114B10" value="114B10"></div>

    <div class="section-spacing"></div>

    <div class="seat" id="115B01" value="115B01"></div>
    <div class="seat" id="115B02" value="115B02"></div>
    <div class="seat" id="115B03" value="115B03"></div>
    <div class="seat" id="115B04" value="115B04"></div>
    <div class="seat" id="115B05" value="115B05"></div>
    <div class="seat" id="115B06" value="115B06"></div>
    <div class="seat" id="115B07" value="115B07"></div>
    <div class="seat" id="115B08" value="115B08"></div>
    <div class="seat" id="115B09" value="115B09"></div>
    <div class="seat" id="115B10" value="115B10"></div>
</div>
<div>
    <div class="seat" id="113C01" value="113C01"></div>
    <div class="seat" id="113C02" value="113C02"></div>
    <div class="seat" id="113C03" value="113C03"></div>
    <div class="seat" id="113C04" value="113C04"></div>
    <div class="seat" id="113C05" value="113C05"></div>
    <div class="seat" id="113C06" value="113C06"></div>
    <div class="seat" id="113C07" value="113C07"></div>
    <div class="seat" id="113C08" value="113C08"></div>
    <div class="seat" id="113C09" value="113C09"></div>
    <div class="seat" id="113C10" value="113C10"></div>

    <div class="section-spacing"></div>

    <div class="seat" id="114C01" value="114C01"></div>
    <div class="seat" id="114C02" value="114C02"></div>
    <div class="seat" id="114C03" value="114C03"></div>
    <div class="seat" id="114C04" value="114C04"></div>
    <div class="seat" id="114C05" value="114C05"></div>
    <div class="seat" id="114C06" value="114C06"></div>
    <div class="seat" id="114C07" value="114C07"></div>
    <div class="seat" id="114C08" value="114C08"></div>
    <div class="seat" id="114C09" value="114C09"></div>
    <div class="seat" id="114C10" value="114C10"></div>

    <div class="section-spacing"></div>

    <div class="seat" id="115C01" value="115C01"></div>
    <div class="seat" id="115C02" value="115C02"></div>
    <div class="seat" id="115C03" value="115C03"></div>
    <div class="seat" id="115C04" value="115C04"></div>
    <div class="seat" id="115C05" value="115C05"></div>
    <div class="seat" id="115C06" value="115C06"></div>
    <div class="seat" id="115C07" value="115C07"></div>
    <div class="seat" id="115C08" value="115C08"></div>
    <div class="seat" id="115C09" value="115C09"></div>
    <div class="seat" id="115C10" value="115C10"></div>
</div>
<div>
    <div class="seat" id="113D01" value="113D01"></div>
    <div class="seat" id="113D02" value="113D02"></div>
    <div class="seat" id="113D03" value="113D03"></div>
    <div class="seat" id="113D04" value="113D04"></div>
    <div class="seat" id="113D05" value="113D05"></div>
    <div class="seat" id="113D06" value="113D06"></div>
    <div class="seat" id="113D07" value="113D07"></div>
    <div class="seat" id="113D08" value="113D08"></div>
    <div class="seat" id="113D09" value="113D09"></div>
    <div class="seat" id="113D10" value="113D10"></div>

    <div class="section-spacing"></div>

    <div class="seat" id="114D01" value="114D01"></div>
    <div class="seat" id="114D02" value="114D02"></div>
    <div class="seat" id="114D03" value="114D03"></div>
    <div class="seat" id="114D04" value="114D04"></div>
    <div class="seat" id="114D05" value="114D05"></div>
    <div class="seat" id="114D06" value="114D06"></div>
    <div class="seat" id="114D07" value="114D07"></div>
    <div class="seat" id="114D08" value="114D08"></div>
    <div class="seat" id="114D09" value="114D09"></div>
    <div class="seat" id="114D10" value="114D10"></div>

    <div class="section-spacing"></div>

    <div class="seat" id="115D01" value="115D01"></div>
    <div class="seat" id="115D02" value="115D02"></div>
    <div class="seat" id="115D03" value="115D03"></div>
    <div class="seat" id="115D04" value="115D04"></div>
    <div class="seat" id="115D05" value="115D05"></div>
    <div class="seat" id="115D06" value="115D06"></div>
    <div class="seat" id="115D07" value="115D07"></div>
    <div class="seat" id="115D08" value="115D08"></div>
    <div class="seat" id="115D09" value="115D09"></div>
    <div class="seat" id="115D10" value="115D10"></div>
</div>
<div>
    <div class="seat" id="113E01" value="113E01"></div>
    <div class="seat" id="113E02" value="113E02"></div>
    <div class="seat" id="113E03" value="113E03"></div>
    <div class="seat" id="113E04" value="113E04"></div>
    <div class="seat" id="113E05" value="113E05"></div>
    <div class="seat" id="113E06" value="113E06"></div>
    <div class="seat" id="113E07" value="113E07"></div>
    <div class="seat" id="113E08" value="113E08"></div>
    <div class="seat" id="113E09" value="113E09"></div>
    <div class="seat" id="113E10" value="113E10"></div>

    <div class="section-spacing"></div>

    <div class="seat" id="114E01" value="114E01"></div>
    <div class="seat" id="114E02" value="114E02"></div>
    <div class="seat" id="114E03" value="114E03"></div>
    <div class="seat" id="114E04" value="114E04"></div>
    <div class="seat" id="114E05" value="114E05"></div>
    <div class="seat" id="114E06" value="114E06"></div>
    <div class="seat" id="114E07" value="114E07"></div>
    <div class="seat" id="114E08" value="114E08"></div>
    <div class="seat" id="114E09" value="114E09"></div>
    <div class="seat" id="114E10" value="114E10"></div>

    <div class="section-spacing"></div>

    <div class="seat" id="115E01" value="115E01"></div>
    <div class="seat" id="115E02" value="115E02"></div>
    <div class="seat" id="115E03" value="115E03"></div>
    <div class="seat" id="115E04" value="115E04"></div>
    <div class="seat" id="115E05" value="115E05"></div>
    <div class="seat" id="115E06" value="115E06"></div>
    <div class="seat" id="115E07" value="115E07"></div>
    <div class="seat" id="115E08" value="115E08"></div>
    <div class="seat" id="115E09" value="115E09"></div>
    <div class="seat" id="115E10" value="115E10"></div>
</div>
<div>
    <div class="seat" id="113F01" value="113F01"></div>
    <div class="seat" id="113F02" value="113F02"></div>
    <div class="seat" id="113F03" value="113F03"></div>
    <div class="seat" id="113F04" value="113F04"></div>
    <div class="seat" id="113F05" value="113F05"></div>
    <div class="seat" id="113F06" value="113F06"></div>
    <div class="seat" id="113F07" value="113F07"></div>
    <div class="seat" id="113F08" value="113F08"></div>
    <div class="seat" id="113F09" value="113F09"></div>
    <div class="seat" id="113F10" value="113F10"></div>

    <div class="section-spacing"></div>

    <div class="seat" id="114F01" value="114F01"></div>
    <div class="seat" id="114F02" value="114F02"></div>
    <div class="seat" id="114F03" value="114F03"></div>
    <div class="seat" id="114F04" value="114F04"></div>
    <div class="seat" id="114F05" value="114F05"></div>
    <div class="seat" id="114F06" value="114F06"></div>
    <div class="seat" id="114F07" value="114F07"></div>
    <div class="seat" id="114F08" value="114F08"></div>
    <div class="seat" id="114F09" value="114F09"></div>
    <div class="seat" id="114F10" value="114F10"></div>

    <div class="section-spacing"></div>

    <div class="seat" id="115F01" value="115F01"></div>
    <div class="seat" id="115F02" value="115F02"></div>
    <div class="seat" id="115F03" value="115F03"></div>
    <div class="seat" id="115F04" value="115F04"></div>
    <div class="seat" id="115F05" value="115F05"></div>
    <div class="seat" id="115F06" value="115F06"></div>
    <div class="seat" id="115F07" value="115F07"></div>
    <div class="seat" id="115F08" value="115F08"></div>
    <div class="seat" id="115F09" value="115F09"></div>
    <div class="seat" id="115F10" value="115F10"></div>
</div>
<div>
    <div class="seat" id="113G01" value="113G01"></div>
    <div class="seat" id="113G02" value="113G02"></div>
    <div class="seat" id="113G03" value="113G03"></div>
    <div class="seat" id="113G04" value="113G04"></div>
    <div class="seat" id="113G05" value="113G05"></div>
    <div class="seat" id="113G06" value="113G06"></div>
    <div class="seat" id="113G07" value="113G07"></div>
    <div class="seat" id="113G08" value="113G08"></div>
    <div class="seat" id="113G09" value="113G09"></div>
    <div class="seat" id="113G10" value="113G10"></div>

    <div class="section-spacing"></div>

    <div class="seat" id="114G01" value="114G01"></div>
    <div class="seat" id="114G02" value="114G02"></div>
    <div class="seat" id="114G03" value="114G03"></div>
    <div class="seat" id="114G04" value="114G04"></div>
    <div class="seat" id="114G05" value="114G05"></div>
    <div class="seat" id="114G06" value="114G06"></div>
    <div class="seat" id="114G07" value="114G07"></div>
    <div class="seat" id="114G08" value="114G08"></div>
    <div class="seat" id="114G09" value="114G09"></div>
    <div class="seat" id="114G10" value="114G10"></div>

    <div class="section-spacing"></div>

    <div class="seat" id="115G01" value="115G01"></div>
    <div class="seat" id="115G02" value="115G02"></div>
    <div class="seat" id="115G03" value="115G03"></div>
    <div class="seat" id="115G04" value="115G04"></div>
    <div class="seat" id="115G05" value="115G05"></div>
    <div class="seat" id="115G06" value="115G06"></div>
    <div class="seat" id="115G07" value="115G07"></div>
    <div class="seat" id="115G08" value="115G08"></div>
    <div class="seat" id="115G09" value="115G09"></div>
    <div class="seat" id="115G10" value="115G10"></div>
</div>
<div>
    <div class="seat" id="113H01" value="113H01"></div>
    <div class="seat" id="113H02" value="113H02"></div>
    <div class="seat" id="113H03" value="113H03"></div>
    <div class="seat" id="113H04" value="113H04"></div>
    <div class="seat" id="113H05" value="113H05"></div>
    <div class="seat" id="113H06" value="113H06"></div>
    <div class="seat" id="113H07" value="113H07"></div>
    <div class="seat" id="113H08" value="113H08"></div>
    <div class="seat" id="113H09" value="113H09"></div>
    <div class="seat" id="113H10" value="113H10"></div>

    <div class="section-spacing"></div>

    <div class="seat" id="114H01" value="114H01"></div>
    <div class="seat" id="114H02" value="114H02"></div>
    <div class="seat" id="114H03" value="114H03"></div>
    <div class="seat" id="114H04" value="114H04"></div>
    <div class="seat" id="114H05" value="114H05"></div>
    <div class="seat" id="114H06" value="114H06"></div>
    <div class="seat" id="114H07" value="114H07"></div>
    <div class="seat" id="114H08" value="114H08"></div>
    <div class="seat" id="114H09" value="114H09"></div>
    <div class="seat" id="114H10" value="114H10"></div>

    <div class="section-spacing"></div>

    <div class="seat" id="115H01" value="115H01"></div>
    <div class="seat" id="115H02" value="115H02"></div>
    <div class="seat" id="115H03" value="115H03"></div>
    <div class="seat" id="115H04" value="115H04"></div>
    <div class="seat" id="115H05" value="115H05"></div>
    <div class="seat" id="115H06" value="115H06"></div>
    <div class="seat" id="115H07" value="115H07"></div>
    <div class="seat" id="115H08" value="115H08"></div>
    <div class="seat" id="115H09" value="115H09"></div>
    <div class="seat" id="115H10" value="115H10"></div>
</div>
<div>
    <div class="seat" id="113I01" value="113I01"></div>
    <div class="seat" id="113I02" value="113I02"></div>
    <div class="seat" id="113I03" value="113I03"></div>
    <div class="seat" id="113I04" value="113I04"></div>
    <div class="seat" id="113I05" value="113I05"></div>
    <div class="seat" id="113I06" value="113I06"></div>
    <div class="seat" id="113I07" value="113I07"></div>
    <div class="seat" id="113I08" value="113I08"></div>
    <div class="seat" id="113I09" value="113I09"></div>
    <div class="seat" id="113I10" value="113I10"></div>

    <div class="section-spacing"></div>

    <div class="seat" id="114I01" value="114I01"></div>
    <div class="seat" id="114I02" value="114I02"></div>
    <div class="seat" id="114I03" value="114I03"></div>
    <div class="seat" id="114I04" value="114I04"></div>
    <div class="seat" id="114I05" value="114I05"></div>
    <div class="seat" id="114I06" value="114I06"></div>
    <div class="seat" id="114I07" value="114I07"></div>
    <div class="seat" id="114I08" value="114I08"></div>
    <div class="seat" id="114I09" value="114I09"></div>
    <div class="seat" id="114I10" value="114I10"></div>

    <div class="section-spacing"></div>

    <div class="seat" id="115I01" value="115I01"></div>
    <div class="seat" id="115I02" value="115I02"></div>
    <div class="seat" id="115I03" value="115I03"></div>
    <div class="seat" id="115I04" value="115I04"></div>
    <div class="seat" id="115I05" value="115I05"></div>
    <div class="seat" id="115I06" value="115I06"></div>
    <div class="seat" id="115I07" value="115I07"></div>
    <div class="seat" id="115I08" value="115I08"></div>
    <div class="seat" id="115I09" value="115I09"></div>
    <div class="seat" id="115I10" value="115I10"></div>
</div>
<div>
    <div class="seat" id="113J01" value="113J01"></div>
    <div class="seat" id="113J02" value="113J02"></div>
    <div class="seat" id="113J03" value="113J03"></div>
    <div class="seat" id="113J04" value="113J04"></div>
    <div class="seat" id="113J05" value="113J05"></div>
    <div class="seat" id="113J06" value="113J06"></div>
    <div class="seat" id="113J07" value="113J07"></div>
    <div class="seat" id="113J08" value="113J08"></div>
    <div class="seat" id="113J09" value="113J09"></div>
    <div class="seat" id="113J10" value="113J10"></div>

    <div class="section-spacing"></div>

    <div class="seat" id="114J01" value="114J01"></div>
    <div class="seat" id="114J02" value="114J02"></div>
    <div class="seat" id="114J03" value="114J03"></div>
    <div class="seat" id="114J04" value="114J04"></div>
    <div class="seat" id="114J05" value="114J05"></div>
    <div class="seat" id="114J06" value="114J06"></div>
    <div class="seat" id="114J07" value="114J07"></div>
    <div class="seat" id="114J08" value="114J08"></div>
    <div class="seat" id="114J09" value="114J09"></div>
    <div class="seat" id="114J10" value="114J10"></div>

    <div class="section-spacing"></div>

    <div class="seat" id="115J01" value="115J01"></div>
    <div class="seat" id="115J02" value="115J02"></div>
    <div class="seat" id="115J03" value="115J03"></div>
    <div class="seat" id="115J04" value="115J04"></div>
    <div class="seat" id="115J05" value="115J05"></div>
    <div class="seat" id="115J06" value="115J06"></div>
    <div class="seat" id="115J07" value="115J07"></div>
    <div class="seat" id="115J08" value="115J08"></div>
    <div class="seat" id="115J09" value="115J09"></div>
    <div class="seat" id="115J10" value="115J10"></div>
</div>
<div>
    <div class="seat" id="113K01" value="113K01"></div>
    <div class="seat" id="113K02" value="113K02"></div>
    <div class="seat" id="113K03" value="113K03"></div>
    <div class="seat" id="113K04" value="113K04"></div>
    <div class="seat" id="113K05" value="113K05"></div>
    <div class="seat" id="113K06" value="113K06"></div>
    <div class="seat" id="113K07" value="113K07"></div>
    <div class="seat" id="113K08" value="113K08"></div>
    <div class="seat" id="113K09" value="113K09"></div>
    <div class="seat" id="113K10" value="113K10"></div>

    <div class="section-spacing"></div>

    <div class="seat" id="114K01" value="114K01"></div>
    <div class="seat" id="114K02" value="114K02"></div>
    <div class="seat" id="114K03" value="114K03"></div>
    <div class="seat" id="114K04" value="114K04"></div>
    <div class="seat" id="114K05" value="114K05"></div>
    <div class="seat" id="114K06" value="114K06"></div>
    <div class="seat" id="114K07" value="114K07"></div>
    <div class="seat" id="114K08" value="114K08"></div>
    <div class="seat" id="114K09" value="114K09"></div>
    <div class="seat" id="114K10" value="114K10"></div>

    <div class="section-spacing"></div>

    <div class="seat" id="115K01" value="115K01"></div>
    <div class="seat" id="115K02" value="115K02"></div>
    <div class="seat" id="115K03" value="115K03"></div>
    <div class="seat" id="115K04" value="115K04"></div>
    <div class="seat" id="115K05" value="115K05"></div>
    <div class="seat" id="115K06" value="115K06"></div>
    <div class="seat" id="115K07" value="115K07"></div>
    <div class="seat" id="115K08" value="115K08"></div>
    <div class="seat" id="115K09" value="115K09"></div>
    <div class="seat" id="115K10" value="115K10"></div>
                                <br><br><br><br><br><br>
                            </div>
                        </div>
                    </div>

                    

                </div>
            </div>
        </div>



        <div id="right-view"
            class="h-100 p-5 mb-4 col-lg-4 col-md-12 text-white justify-content-center align-items-center">

            <br><br><br>
            <h2 class="text-center" style="color: orange;">좌석 정보</h2>
            <hr>
            <br> <br>
            <div class="row" id="selectSeat" style="height: 50px;">

            <div class="row">
               <div class="col-3"></div>
               <h4 class="col-4 text-right">선택 좌석</h4> 
               <h5 class="col-2 text-left" id="seatCount">0</h5>
               <div class="col-3"></div>

            </div>
                <br><br>
            <div class="text-center" id="printSeatArea"></div>


            </div>
            
           
               

        
            <div class="text-white" id="seatNo"></div>
            <br> <br> <br> <br><br> <br><br> <br><br><br><br><br>
            
            
<button id="bookBtn" type="button" class="col-12 btn btn-outline-light" 
data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                       예매하기
               </button>
        </div>
        
        
    </div>


</form>














<script>
    document.addEventListener("DOMContentLoaded", function() {
        var selectedSeats = []; // 선택한 좌석을 저장하기 위한 배열
        var seatElements = document.querySelectorAll(".seat");
        var selectedSeatsCount = 0;
        var selectSeatArea = document.getElementById("printSeatArea");
        var seatCountElement = document.getElementById("seatCount");

        function seatClick(event) {
            var seatValue = event.target.getAttribute("value"); // 클릭한 좌석의 value 값을 가져옴

            if (event.target.classList.contains("selected")) {
                event.target.classList.remove("selected"); // 선택이 해제된 좌석의 클래스를 제거
                var index = selectedSeats.indexOf(seatValue);
                if (index > -1) {
                    selectedSeats.splice(index, 1); // 선택이 해제된 좌석을 배열에서 제거
                }
                selectedSeatsCount--;
            } else {
                if (selectedSeats.length >= 10) {
                    alert("최대 10개의 좌석까지 선택할 수 있습니다.");
                    return;
                }
                event.target.classList.add("selected"); // 선택된 좌석의 클래스를 추가
                selectedSeats.push(seatValue); // 선택된 좌석을 배열에 추가
                selectedSeatsCount++;
            }

            // 선택된 좌석 출력
            selectSeatArea.innerHTML = selectedSeats.join("<br>");

            // 선택된 좌석 수 출력
            seatCountElement.textContent = selectedSeatsCount;
        }

        
        
        
        
        
        seatElements.forEach(function(seat) {
            seat.addEventListener("click", seatClick);
        });

        var bookBtn = document.getElementById("bookBtn");

        bookBtn.addEventListener("click", function() {
            var params = new URLSearchParams();
            for (var i = 0; i < selectedSeats.length; i++) {
                params.append("selectedSeats", selectedSeats[i]);
            }
            var url = "/seatdetail.do?"  + params.toString();
            
            var xhr = new XMLHttpRequest();
            xhr.open("POST", url);
            xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            xhr.onreadystatechange = function() {
                if (xhr.readyState === XMLHttpRequest.DONE) {
                    if (xhr.status === 200) {
                       var gameCode = document.getElementById("gameCode").value;
                       window.location.href = "/ticketpay.do?count="+selectedSeatsCount+"&seat="+selectedSeats+"&gameCd="+gameCode;
                    } else {
                        // 오류 처
                    }
                }
            };
            xhr.send();
        }); 
    });
</script>

 <script>
<% 
for(SeatVO sv : seatList){
%>
        
        $(document).ready(function() {

      $('#<%=sv.getSeatCd()%>').css('background-color', 'red');
      $('#<%=sv.getSeatCd()%>').css('pointer-events', 'none');
      
    });
<%
}
%>
        
 </script>

    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous">
        </script>
    <script>
// console.log(document.querySelectorAll('.navbar-nav .nav-link'));
    </script>





</body>

</html>