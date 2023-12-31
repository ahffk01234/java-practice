<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<% 		  
		Map<String, Object> kakao = (Map<String, Object>) request.getAttribute("kakao");
%>

</head>
<body>

<script>
    $(function(){
        var IMP = window.IMP; // 생략가능
        IMP.init('imp23418340'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
        var msg;
        
        IMP.request_pay({
            pg : 'kakaopay',
            pay_method : 'card',
            merchant_uid : 'merchant_' + new Date().getTime(),
            //출력될 가게 이름 (인걸로 알고있음)
            name : '한화이글스 굿즈샵',
            //총금액
            amount : <%=kakao.get("amount")%>,
            //구매자메일
            buyer_email : '<%=kakao.get("buyerEmail")%>',
            //구매자이름
            buyer_name : '<%=kakao.get("buyerName")%>',
            //구매자휴대번호
            buyer_tel : '<%=kakao.get("buyerTel")%>',
            //구매자주소
            buyer_addr : '<%=kakao.get("buyerAddr")%>',
            buyer_postcode : '123-456',
            //m_redirect_url : 'http://www.naver.com'
        }, function(rsp) {
            if ( rsp.success ) {
                //[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
                jQuery.ajax({
                    url: "/payments/complete", //cross-domain error가 발생하지 않도록 주의해주세요
                    type: 'POST',
                    dataType: 'json',
                    data: {
                        imp_uid : rsp.imp_uid
                        //기타 필요한 데이터가 있으면 추가 전달
                    }
                }).done(function(data) {
                    //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
                    if ( everythings_fine ) {
                        msg = '결제가 완료되었습니다.';
                        msg += '\n고유ID : ' + <%=kakao.get("name")%>;
                        msg += '\n상점 거래ID : ';
                        msg += '\결제 금액 : ' + <%=kakao.get("sum")%>;
                        msg += '카드 승인번호 : ';
                        
                        alert(msg);
                    } else {
                        //[3] 아직 제대로 결제가 되지 않았습니다.
                        //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
                    }
                });      
                
                //성공했을때 이동할 위치
                location.href="/mypage/finalCheck.do";
                
            } else {
                msg = '결제에 실패하였습니다.';
                msg += '에러내용 : ' + rsp.error_msg;
                //실패시 이동할 페이지
                location.href="/mypage/basketList.do";
                alert(msg);
            }
        });
        
    });
</script> 
 
</body>
</html>