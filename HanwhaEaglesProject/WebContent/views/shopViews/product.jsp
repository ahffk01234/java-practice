<%@page import="java.text.SimpleDateFormat"%>
<%@page import="eagles.shop.product.vo.ProdRevVO"%>
<%@page import="java.util.List"%>
<%@page import="eagles.shop.product.vo.ProdVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%

ProdVO pv = (ProdVO)request.getAttribute("pv");
  // out.print("pv : " + pv);

request.setAttribute("prodCd",pv.getProdCd());
 
List<ProdRevVO> prodRevList = (List<ProdRevVO>) request.getAttribute("prodRevList"); 
 
 

%>




<!DOCTYPE html>

<html lang="en">

<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    
<title><%=pv.getProdName() %></title>

<style>
   <%@include file="../headerCSS.jsp" %>
</style>
</head>


<body>
	<%@include file="../header.jsp" %>

<form id="sendcart"">
<input type="hidden" name="prodCd" value="<%=pv.getProdCd() %>">




    <br><br><br>
    <div class="row text-white">
        <div class="col-3"></div>
        <div class="row col col-6 product_view">

            <div class="col col-5">
                <div>
                    <img class="container-fluid" src="<%=pv.getProdImg() %>" alt="">
                </div>
            </div>

            <div class="col col-7">
                <h3><%=pv.getProdName() %></h3>
                <hr>
                <br>
                <table class="container-fluid">
                    <caption>
                        <details>
                            <summary>상품정보</summary>
                            판매가, 상품코드, 옵션 및 결제금액 안내
                        </details>
                    </caption>
                    <colgroup>
                        <col style="width:px;">
                        <col>
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>
                                <h4>판매가</h4><br><br>
                            </th>
                            <td style="padding-left: 20px;">
                                <h4><%=pv.getProdPrice() %>원</h4><br><br>
                            </td>
                        </tr>

                        <tr>
                            <th>상품코드</th>
                            <td style="padding-left: 20px;"><%=pv.getProdCd() %></td>
                        </tr>
                        <tr>
                            <th>제조사/공급사</th>
                            <td style="padding-left: 20px;">한화이글스</td>
                        </tr>


                        <tr>
                            <th>배송비</th>
                            <td style="padding-left: 20px;">무료배송</td>
                        </tr>
                        
<%

if(pv.getlProdCd().equals("100") || pv.getlProdCd().equals("300")){

%>                        
                        
                        
                        
                        <tr>
                            <th>옵션선택</th>
                            <td style="padding-left: 20px;">
                                <select name="option" name="option" id="size">
                                    <option value="3세">3세</option>
                                    <option value="5세">5세</option>
                                    <option value="7세">7세</option>
                                    <option value="9세">9세</option>
                                    <option value="80">80</option>
                                    <option value="85">85</option>
                                    <option value="90">90</option>
                                    <option value="95">95</option>
                                    <option value="100">100</option>
                                    <option value="105">105</option>
                                    <option value="110">110</option>
                                    <option value="120">120</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                        
<%
}
%>                        
                        
         
                        
                            <th>구매수량</th>
                            <td style="padding-left: 20px;">
                                <input type="number" min="1" value="1" name="num" id="num">
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <hr><br>
                            </th>
                            <td>
                                <hr><br>
                            </td>
                        </tr>

                        <tr>

                            <th>
                                <h4>결제금액</h4>
                            </th>
                            <td style="text-align: right; padding-right: 20px;">
                                <span class="row">
                                
                                 <h4 class="col" id="totalPrice"><%=pv.getProdPrice() %></h4>
                               	 <h4 class="col-1"> 원</h4>
                                </span>
                                
                            </td>
                        </tr>

                    </tbody>


                </table>
                <div class="row">
                    
                    
                    
                    <button id="cart" type="button" class="col-12 btn btn-outline-light" data-bs-toggle="modal" data-bs-target="#staticBackdrop" onclick="cart()">
  							장바구니에 담기
					</button>

						<!-- Modal -->
						<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
						  <div class="modal-dialog">
						    <div class="modal-content">
						      <div class="modal-header text-black text-center" style="background-color: darkgray;">
						        <h1 class="modal-title fs-5" id="staticBackdropLabel">장바구니</h1>
						        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						      </div>
						      <div class="modal-body text-black text-center" id="modalbody">
						        '<%=pv.getProdName() %>' 상품이 장바구니에 담겼습니다
						      </div>
						      <div class="modal-footer" style="background-color: darkgray;">
						        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" style="background-color: orange;">닫기</button>
						        <a href="http://localhost:8888/mypage/basketList.do">
						        <button type="button" class="btn btn-outline-light text-black">장바구니로 이동</button>
						      	</a>
						      </div>
						    </div>
						  </div>
						</div>



                    
                </div>
            </div>

        </div>
        <div></div>
        <br><br><br><br><br><br>
        <div style="background-color: orangered;"><br></div>
    </div>

		<div class="row">
		<img class="col" src="../img/login/img_slogan_main2.png"></a>
		</div>
		

        <div style="background-color: orangered;"><br></div>
    </div>


    <div class="row bg-white">
        <div><br><br>
            <hr>
        </div>
        <div class="col-2"></div>
        <div class="col-2">
            <h4 style="color: orangered; font-weight: bold;">상품상세정보</h4>
        </div>
        <div class="col-2">
            <h4>배송안내</h4>
        </div>
        <div class="col-2">
            <h4>교환 및 반품안내</h4>
        </div>
        <div class="col-2">
            <h4>상품후기</h4>
        </div>
        <hr>
    </div>



    <div class="row bg-white">
        <div class="col-3"></div>
        <div class="col-6 col">
            <img class="col container-fluid" src="<%=pv.getProdImg2() %>" alt="">
        </div>
        <div class="col-3"></div>
    </div>

    <div class="col-3"></div>


    <div class="row bg-white">
        <div><br><br>
            <hr>
        </div>
        <div class="col-2"></div>
        <div class="col-2">
            <h4>상품상세정보</h4>
        </div>
        <div class="col-2">
            <h4 style="color: orangered; font-weight: bold;">배송안내</h4>
        </div>
        <div class="col-2">
            <h4>교환 및 반품안내</h4>
        </div>
        <div class="col-2">
            <h4>상품후기</h4>
        </div>
        <hr>
    </div>

    <div class="row bg-white">
        <div class="col-2"></div>
        <div class="col-8 col">
            <br>
            <h5>배송안내</h5>
            배송업체 : CJ 대한통운 (택배 고객센터 1588-1255) <br>

            ■ 배송비 : 무료배송 <br>

            ■ 배송정보 : 결제 완료일 기준 3일 소요 (커스텀마킹 진행시 최대 20~25일 소요) <br>

            ■ 배송안내 :

            마킹 주문건의 경우 제작 상품으로 결제 완료 후 주문상태가 상품준비중 상태로 변경되며 교환/환불이 불가능하니 신중한 구매를 부탁드립니다.
            공휴일 및 휴무일에는 택배배송이 불가합니다. 또한 일부 도서산간 지역의 경우 배송이 불가능 할 수 있습니다.
            수령자가 동일한 경우의 개별 주문에 대한 배송은 묶음 배송으로 진행됨을 알려드립니다.
            (개별 주문으로 인한 배송비 중복이 나오는 경우에도 수령자가 동일한 경우 묶음 배송으로 진행되오니 신중한 결제 부탁드립니다.)
            배송 조회는 오후 5시 이후 확인 가능합니다.
            주문 시점(주문순서)에 따른 유동성이 발생하므로 평균 배송일과는 차이가 발생 할 수 있습니다.

            <br><br>
        </div>
        <div class="col-2"></div>
    </div>





    <div class="row bg-white">
        <div><br><br>
            <hr>
        </div>
        <div class="col-2"></div>
        <div class="col-2">
            <h4>상품상세정보</h4>
        </div>
        <div class="col-2">
            <h4>배송안내</h4>
        </div>
        <div class="col-2">
            <h4 style="color: orangered; font-weight: bold;">교환 및 반품안내</h4>
        </div>
        <div class="col-2">
            <h4>상품후기</h4>
        </div>
        <hr>
    </div>

    <div class="row bg-white">
        <div class="col-2"></div>
        <div class="col-8 col">
            <br>
            <h5>교환 및 반품안내</h5>
            ■ 상품 청약철회 가능기간은 상품 수령일로 부터 7일 이내 입니다. <br>
            ■ 상품 택(tag)제거 또는 개봉으로 상품 가치 훼손 시에는 7일 이내라도 교환 및 반품이 불가능합니다. <br>
            ■ 일부 상품은 신모델 출시, 부품 가격 변동 등 제조사 사정으로 가격이 변동될 수 있습니다. <br>
            ■ 사전 주문 상품의 경우에는 제작 완료, 인수 후에는 교환/반품기간 내라도 교환 및 반품이 불가능 합니다. <br>
            ■ 일부 특가 상품의 경우, 인수 후에는 제품 하자나 오배송의 경우를 제외한 고객님의 단순변심에 의한 교환, 반품이 불가능할 수 있사오니, 각 상품의 상품상세정보를 꼭 참조하십시오. <br>
            <br><br>
        </div>
        <div class="col-2"></div>
    </div>

    <div class="row bg-white">
        <div><br><br>
            <hr>
        </div>
        <div class="col-2"></div>
        <div class="col-2">
            <h4>상품상세정보</h4>
        </div>
        <div class="col-2">
            <h4>배송안내</h4>
        </div>
        <div class="col-2">
            <h4>교환 및 반품안내</h4>
        </div>
        <div class="col-2">
            <h4 style="color: orangered; font-weight: bold;">상품후기</h4>
        </div>
        <hr>
    </div>


<%
int prodRevSize = prodRevList.size();

%>



    <div class="row bg-white">
        <div class="col-2"></div>
        <div class="col-8 col">
            <br>
            <div class="row">
                <div class="col-10">
                    <h5>상품후기 (<%=prodRevSize %>)</h5>
                </div>
                <button type="button" class="col-2 btn btn-outline-secondary" data-bs-toggle="modal"
                    data-bs-target="#exampleModal" data-bs-whatever="@mdo" onclick="openModal()">상품후기 글쓰기</button>
            </div>
            <hr style="border-bottom: 1px solid black;">
            <table class="row col">



<%

	
	
	String score = "";

	for(ProdRevVO prv : prodRevList){
		
		if(prv.getProdRevScore().equals("5")){
			score = "★★★★★";
		} else if (prv.getProdRevScore().equals("4")) {
			score = "★★★★";
		} else if (prv.getProdRevScore().equals("3")) {
			score = "★★★";
		} else if (prv.getProdRevScore().equals("2")) {
			score = "★★";
		} else if (prv.getProdRevScore().equals("1")) {
			score = "★";
		} else {
			score = "";
		}
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

		String date = sdf.format(prv.getProdRevDate());
	
%>



                <tr class="row text-center">
                    <td class="col-2" style="border-bottom: 1px solid gray; color: orange;"><%=score %></td>
                    <td class="col-5" style="border-bottom: 1px solid gray;"><%=prv.getProdRevContent()%></td>
                    <td class="col-2" style="border-bottom: 1px solid gray;"><%=prv.getMemId()%></td>
                    <td class="col-3" style="border-bottom: 1px solid gray;"><%=date%></td>
                </tr>

<%
	}
%>


            </table>





            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="exampleModalLabel">상품후기</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form>
                                <div>
                                    <label for="recipient-name" class="col-form-label">별점</label>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="score" value="1"
                                            id="flexRadioDefault1">
                                        <label class="form-check-label;" style="color: orange;" for="flexRadioDefault1">
                                            ☆☆☆☆★
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="score" value="2"
                                            id="flexRadioDefault1">
                                        <label class="form-check-label;" style="color: orange;" for="flexRadioDefault1">
                                            ☆☆☆★★
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="score" value="3"
                                            id="flexRadioDefault1">
                                        <label class="form-check-label;" style="color: orange;" for="flexRadioDefault1">
                                            ☆☆★★★
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="score" value="4"
                                            id="flexRadioDefault1">
                                        <label class="form-check-label;" style="color: orange;" for="flexRadioDefault1">
                                            ☆★★★★
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="score" value="5"
                                            id="flexRadioDefault1">
                                        <label class="form-check-label;" style="color: orange;" for="flexRadioDefault1">
                                            ★★★★★
                                        </label>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label for="message-text" class="col-form-label">상품후기</label>
                                    <textarea class="form-control" id="message-text"></textarea>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="button" id="submit-btn" class="btn btn-outline-secondary">상품 후기 등록</button>
                        </div>
                    </div>
                </div>
            </div>



            <br><br><br><br><br><br><br><br><br><br><br>
        </div>
        <div class="col-2"></div>
    </div>


    <div class="col-3"></div>
    
    <br><br><br><br><br>
    
    
    
    
    
    
</form>

<%
memId = (String) session.getAttribute("LogMemId");

if (memId == null) {
%>
<script>
    $(document).ready(function() {
        $('#loginModal').modal('show');
    });
</script>
<%
}
%>

<!-- 로그인 모달 -->
<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="loginModalLabel">장바구니</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>로그인이 필요한 서비스입니다. 로그인 후 이용해주세요</p>
                <!-- 여기에 로그인 폼 또는 로그인 버튼을 추가할 수 있습니다 -->
            </div>
            <div class="modal-footer">
                <a href="/Login.do"><button type="button" class="btn btn-secondary" data-dismiss="modal">로그인</button></a>
                <!-- 여기에 로그인 버튼이나 기타 작업을 추가할 수 있습니다 -->
            </div>
        </div>
    </div>
</div>

<script>

$(document).ready(function() {
	  $('#submit-btn').click(function() {
	    // 선택된 별점 값 가져오기
	    var score = $('input[name="score"]:checked').val();
	    
	    // 후기 내용 가져오기
	    var review = $('#message-text').val();
	    
	    var prodCd = <%=pv.getProdCd() %>
	    
	    // Ajax 요청 보내기
	    $.ajax({
	      url: '/inputrev.do',  // 데이터를 처리할 컨트롤러의 URL을 입력하세요.
	      method: 'get',  // GET 또는 POST 방식 중 선택하세요.
	      data: { score: score, review: review, prodCd: prodCd },  // 전송할 데이터를 객체 형태로 입력하세요.
	      success: function(response) {
	        // 성공적으로 요청을 처리한 후 실행할 코드를 작성하세요.
	        window.location.href = '/shop/product.do?ProdCd='+<%=pv.getProdCd() %>;  // 응답 데이터를 콘솔에 출력하거나 필요한 처리를 진행하세요.
	      },
	      error: function(xhr, status, error) {
	        // 요청 처리 중 오류가 발생한 경우 실행할 코드를 작성하세요.
	        console.log(error);  // 오류 메시지를 콘솔에 출력하거나 오류 처리를 진행하세요.
	      }
	    });
	  });
	});



</script>

				

<script>

$('#cart').on('click', function() {
	   let cartDtNum = $('#num').val();
	   let cartDtSize = $('#size').val();
	   let prodCd = <%=pv.getProdCd() %>

	   $.ajax({
	     type: 'post',
	     url: '/shop/product.do',
	     data: { num: cartDtNum, option: cartDtSize, prodCd: prodCd },
	     success: function(data) {
	       console.log("응답 >> ", data);
	       let modalBody = $('#modalbody');

	       if (data === "success") {
	         modalBody.html("상품이 장바구니에 담겼습니다.");
	       } else {
	         modalBody.html("장바구니 담기에 실패했습니다.");
	       }

	       $('#staticBackdrop').modal('show');
	       location.href = "/shop/product.do?ProdCd=<%=pv.getProdCd() %>";
	     },
	     error: function() {
	       console.log("AJAX 요청 실패");
	     },
	     dataType: 'text',
	   });
	 });

</script>













<script>

  // input 요소와 총 금액을 나타내는 span 요소를 가져옵니다.
  const quantityInput = document.getElementById('num');
  const totalPriceSpan = document.getElementById('totalPrice');

  // 제품 수량이 변경될 때마다 총 금액을 업데이트하는 함수를 정의합니다.
  function updateTotalPrice() {
    const price = <%=pv.getProdPrice() %>; // 상품 가격 (예시로 10으로 설정)
    const quantity = parseInt(quantityInput.value); // 입력된 수량을 가져옵니다.
    const totalPrice = price * quantity; // 총 금액을 계산합니다.
    totalPriceSpan.textContent = totalPrice; // 총 금액을 span 요소에 업데이트합니다.
  }

  // 제품 수량이 변경될 때마다 updateTotalPrice 함수를 호출합니다.
  quantityInput.addEventListener('change', updateTotalPrice);
  
  
</script>










    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous">
        </script>
    <script>
     // console.log(document.querySelectorAll('.navbar-nav .nav-link'));
    </script>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous">
        </script>
        
<script>        
function cart(){

	
	document.querySelector("#sendcart").submit();
		
	
	
	
}


</script> 
        
        
</body>

</html>