<%@page import="eagles.ticket.vo.CouponVO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="eagles.ticket.vo.GameVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<%
    String gameCode = (String)request.getParameter("gameCd");

	GameVO gv = (GameVO)request.getAttribute("gv");
	
	String count = (String)request.getParameter("count");
	String seat = (String)request.getParameter("seat");

	List<CouponVO> couponList = (List<CouponVO>)request.getAttribute("couponList");
	
%>    
    
    
    
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>티켓결제</title>
    <!-- FontAwesome 스크립트 로드 -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <style>
    
    <%@include file="../headerCSS.jsp" %>
        .seat {
            width: 15px;
            height: 15px;
            background-color: #f2f2f2;
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


    <!--///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
    <!--///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
    <!--///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
    <!--///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
    <!--///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->


<div class="container-fluid p-5 bg-dark text-white text-center">
    <div class="row">
        <div class="col">
            <div>
               <img src="/img/login/img_slogan_main2.png" width="50%">
            </div>
        </div>
    </div>
</div>

<br><br>

<div class="row">

    <div class="col-2"></div>

    <div class="col-4 text-center text-white">

        <div>

            <img width="150" height="150" src="../img/teamlogo/한화.png" alt="">
            <span class="col" style="font-size: 30px;"> vs </span>
            <img width="150" height="150" src="<%=gv.getTeamLogo() %>" alt="">
        </div>



    </div>





    <div class="col-4 text-center text-white">

        <div>
            <br><br>
            
            
            
            
            
            <h4><%=gv.getGameDate() %></h4>
            <h5>한화생명 이글스파크</h5>
        </div>



    </div>

    <div clss="col-2"></div>

</div>


<br><br>

<div class="container-fluid text-white">
    <div class="row">
        <div class="col-1"></div>
        <div class="col">
            <hr style="color: white;">
            <h1>쿠폰/매수 선택</h1>
            <hr style="color: white;">
        </div>
        <div class="col-1"></div>
    </div>
</div>

<div class="container-fluid">
        <div class="row">
            <div class="col-1"></div>
            <div class="col-10">
                <div class="text-white bg-dark border border-white text-center rounded p-3">
                    <h6> <%=seat%> 총 <%=count %>석 선점되었습니다.</h6>
                </div>
            </div>
            <div class="col-1"></div>
        </div>
      </div>

<br><br>

<div class="container-fluid">
    <div class="row">
        <div class="col-1"></div>

        <div class="col-10">
            <div class="row">

                <div class="col-3">
                    <div class="card text-center bg-dark text-white rounded">
                        <div class="card-body">
                            <h3 class="card-title"> <br>일반구매<br><br></h3>
                        </div>
                    </div>
                    <div class="card text-center bg-dark text-white rounded"><h4 class="" style="padding-bottom: 10px; padding-top: 10px;" >쿠폰사용</h3></div>
                </div>

                <div class="col-8">
                    <table class="table border border-white text-center text-white rounded">
                        <tr>
                            <td><h5>성인/일반</h5></td>
                            <td><h5>16000원</h5></td>
                        </tr>
                        <tr>
                            <td><h5>청소년</h5></td>
                            <td><h5>12000원</h5></td>
                        </tr>
                        <tr>
                            <td><h5>어린이</h5></td>
                            <td><h5>8000원</h5></td>
                        </tr>
                        <tr>
                            <td><h5>쿠폰</h5></td>
                        </tr>
                    </table>
                </div>

                <div class="col-1">
    <table class="table border border-white text-center text-white rounded">
        <tr>
            <td>
                <select id="adult" class="form-select form-select-sm bg-dark text-white" size="1" aria-label="form-select-sm example" oninput="calculateTotalAmount()" onchange="calculateTotalAmount()">
                    <option selected>0</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>
                <select id="student" class="form-select form-select-sm bg-dark text-white" size="1" aria-label="form-select-sm example" oninput="calculateTotalAmount()" onchange="calculateTotalAmount()">
                    <option selected>0</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>
                <select id="child" class="form-select form-select-sm bg-dark text-white" size="1" aria-label="form-select-sm example" oninput="calculateTotalAmount()" onchange="calculateTotalAmount()">
                    <option selected>0</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>
                <select id="coupon" class="form-select form-select-sm bg-dark text-white" size="1" aria-label="form-select-sm example" oninput="calculateTotalAmount()" onchange="calculateTotalAmount()">
                    <option selected>0</option>
                    <% for (CouponVO cv : couponList) { %>
                        <option value="-10000"><%= cv.getCouponCd() %></option>
                    <% } %>
                </select>
            </td>
        </tr>
    </table>
</div>

            </div>
        </div>

        <div class="col-1"></div>
    </div>
</div>
<br><br>

<!--/////////////////////////////////////////////////////////////////////////////////////////////////////-->


<div class="row text-white">

    <div class="col-7"></div>

    <div class="row col-4">
        <br>
        <div class="col-6"><h4>총 금액 </h4></div>
        <div class="col-6"><h4 style="color: orange;"><span id="amount">0원</span></h4></div>

    </div>

    <div class="col-1"></div>

</div>


<div class="row text-white">

    <div class="col-7"></div>

    <div class="row col-4">
        <br>
        <div class="col-6"><h4>할인 금액 </h4></div>
        <div class="col-6"><h4 style="color: orange;"><span id="couponDiscount">0원</span></h4></div>

    </div>

    <div class="col-1"></div>

</div>

<br>
<div class="row text-white">

    <div class="col-7"></div>

    <div class="row col-4">
        
        <div class="col-6"><h3>결제 금액 </h3></div>
        <div class="col-6"><h3 style="color: orange;"><span id="totalAmount">0원</span></h3></div>

    </div>

    <div class="col-1"></div>

</div>
<br><br>






<!--/////////////////////////////////////////////////////////////////////////////////////////////////////-->


<div>
    <div class="row">
        <div class="col-md-7"></div>
        <div class="col-md-2">
            <button type="button" class="btn btn-warning btn-lg w-100" onclick="openModal()">결제</button>
        </div>
        <div class="col-md-2">
            <button type="button" class="btn btn-danger btn-lg w-100" data-bs-dismiss="modal">취소</button>
        </div>
        <div class="col-md-1">
        </div>
    </div>
</div>

<div class="modal fade" id="paymentModal" tabindex="-1" role="dialog" aria-labelledby="paymentModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content bg-black text-white">
            <div class="modal-header" style="border-bottom-color: orange;">
                <h5 class="modal-title" id="paymentModalLabel">결제대기화면</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p>결제 수단을 선택 후 결제하기 버튼을 누르면 결제가 진행됩니다.</p>
                <div class="form-group">
                    <label for="paymentMethod"><h4>결제수단</h4></label>
                    <select class="form-control" id="paymentMethod">
                        <option value="kakao">카카오페이</option>
                        <option value="credit">신용카드</option>
                        <option value="debit">체크카드</option>
                        <option value="bankTransfer">계좌이체</option>
                    </select>
                </div>
            </div>
            <div class="modal-footer" style="border-top-color: orange;">
				<button type="button" id="confirmBtn" class="btn btn-warning">확인</button>               
				<button type="button" class="btn btn-danger" data-bs-dismiss="modal">취소</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="personModal" tabindex="-1" role="dialog" aria-labelledby="paymentModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content bg-black text-white">
            <div class="modal-header" style="border-bottom-color: orange;">
                <h5 class="modal-title" id="paymentModalLabel">인원 수 추가</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p>좌석을 선택하신 인원보다 많은 인원을 선택하셨습니다.</p>
                <div class="form-group">
                    
                </div>
            </div>
            <div class="modal-footer" style="border-top-color: orange;">
				<button type="button" id="confirmBtn" class="btn btn-warning" data-bs-dismiss="modal">확인</button>               
				<button type="button" class="btn btn-danger" data-bs-dismiss="modal">취소</button>
            </div>
        </div>
    </div>
</div>

<br><br><br><br><br><br>

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script>
    
function openModal() {
    var paymentModal = new bootstrap.Modal(document.getElementById('paymentModal'));
    paymentModal.show();
    

}
    
</script>


<script>
    // 성인, 청소년, 어린이 인원 수의 합 구하기
    var adultCount;
    var youthCount;
    var childCount;
    var amount;
    var totalAmount;
    var couponDiscount = 0; // 쿠폰 할인 금액
    
    
    
    function calculateTotalAmount() {
        var totalPerson = parseInt(document.getElementById("adult").value) + parseInt(document.getElementById("student").value) + parseInt(document.getElementById("child").value);

        if (totalPerson > <%=count%>) {
        	
        	
               
        	
        	
        	var personModal = new bootstrap.Modal(document.getElementById('personModal'));
            personModal.show();
            
            
            
            document.getElementById("adult").value = 0;
            document.getElementById("student").value = 0;
            document.getElementById("child").value = 0;
        }
        
        adultCount = parseInt(document.getElementById("adult").value);
        youthCount = parseInt(document.getElementById("student").value);
        childCount = parseInt(document.getElementById("child").value);

        // 할인 전 가격 계산
        amount = (adultCount * 16000) + (youthCount * 12000) + (childCount * 8000);

        var selectedCoupon = document.getElementById("coupon").value;
        if (selectedCoupon == "-10000") {
            couponDiscount = 10000;
        } else {
            couponDiscount = 0;
        }
        
        // 할인 후 가격 계산
        totalAmount = amount - couponDiscount;

        // 결과를 HTML에 표시
        document.getElementById("amount").textContent = amount + "원";
        document.getElementById("couponDiscount").textContent = couponDiscount + "원";
        document.getElementById("totalAmount").textContent = totalAmount + "원";
    }
    
    // 페이지 로드 시에도 총액과 결제금액 계산
    window.addEventListener("load", calculateTotalAmount);
</script>


<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>


<script>
//함수를 클릭 이벤트 핸들러로서 버튼에 연결합니다.
document.getElementById('confirmBtn').addEventListener('click', executePaymentScript);

  // 스크립트를 실행하는 함수를 정의합니다.
  function executePaymentScript() {
    var IMP = window.IMP;
    IMP.init('imp23418340');
    var msg;
    
    IMP.request_pay({
      pg: 'kakaopay',
      pay_method: 'card',
      merchant_uid: 'merchant_' + new Date().getTime(),
      name: '한화이글스 굿즈샵',
      amount: totalAmount,
      buyer_email: 'XXX@naver.com',
      buyer_name: '홍길동',
      buyer_tel: 'xxx-xxxx-xxxx',
      buyer_addr: '대전 서구 둔산동',
      buyer_postcode: '123-456',
    }, function(rsp) {
      if (rsp.success) {
        // imp_uid를 서버로 전송하기 위한 AJAX 요청
        jQuery.ajax({
          url: "/payments/complete",
          type: 'POST',
          dataType: 'json',
          data: {
            imp_uid: rsp.imp_uid
            // 필요한 추가 데이터가 있으면 추가합니다.
          }
        /////////////////////////////////////////////////////////////
        // 결제 정보 넣는 쿼리문 실행
                
        /////////////////////////////////////////////////////////////
        }) .done(function(data) {
          // 결제 정보를 처리하고 결과를 표시합니다.
          if (everythings_fine) {
            msg = '결제가 완료되었습니다.';
            msg += '\n고유ID : ' + '아이디 넣기';
            msg += '\n상점 거래ID : ';
            msg += '\결제 금액 : ' + '결제 금액 넣기';
            msg += '카드 승인번호 : ';

            
            
            
            
          } else {
            // 결제가 성공적으로 이루어지지 않은 경우 처리합니다.
          }
        });

        // "/myticketPay.do"로 리다이렉트합니다.
        //location.href = "/ticketPay.do";
        
        window.location.href = "/ticketpay/process.do?adultCount=" + adultCount + "&youthCount=" + youthCount + "&childCount=" + childCount + "&totalAmount=" + totalAmount;
      } else {
        msg = '결제에 실패하였습니다.';
        msg += '에러내용 : ' + rsp.error_msg;
        // "http://localhost:8888/ticket/ticketmain.do"로 리다이렉트합니다.
        location.href = "/ticket/ticketmain.do";
        
        
////////////////////////////////////////////////////////////////////////////        
        
        // location.href = "/ticketpay/process.do";
        
////////////////////////////////////////////////////////////////////////////        
        
        
        
        alert(msg);
        
      }
    });
  }

  
</script>






    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous">
        </script>
    <script>
// console.log(document.querySelectorAll('.navbar-nav .nav-link'));
    </script>


</form>


</body>

</html>