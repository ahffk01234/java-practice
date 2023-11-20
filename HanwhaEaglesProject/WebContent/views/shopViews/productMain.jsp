<%@page import="eagles.shop.product.vo.ProdVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
List<ProdVO> prodList = (List<ProdVO>)request.getAttribute("prodList");


%>    
    
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    
<title>한화이글스 shop</title>

<style>
   <%@include file="../headerCSS.jsp" %>
</style>
</head>

 
<body>
	<%@include file="../header.jsp" %>
	
<form method="get" action="/shop/product.do">
<br><br>






    <div class="container-fluid row">
        <div class="col-4"></div>
        <div class="col-4">
            <table class="table table-borderless text-white nav-item">
                <tr>
                    <td>
                        <a id="prodmenu" href="http://localhost:8888/shop/productMain.do">전체</a>
                    </td>
                    <td>
                        <a id="prodmenu" href="http://localhost:8888/shop/productMain.do?lprodcd=100">유니폼</a>
                    </td>
                    <td>
                        <a id="prodmenu" href="http://localhost:8888/shop/productMain.do?lprodcd=200">모자</a>
                    </td>
                    <td>
                        <a id="prodmenu" href="http://localhost:8888/shop/productMain.do?lprodcd=300">의류</a>
                    </td>
                    <td>
                        <a id="prodmenu" href="http://localhost:8888/shop/productMain.do?lprodcd=400">잡화</a>
                    </td>
                    <td>
                        <a id="prodmenu" href="http://localhost:8888/shop/productMain.do?lprodcd=500">기념상품</a>
                    </td>
                </tr>
            </table>
        </div>
        <div class="col-4"></div>
    </div>


<%
String lprodcdValue = request.getParameter("lprodcd");
%>




    <div class="container-fluid p-5">
        <div class="row">
            <div class="col-2">
            </div>
            <div class="col-8">

                <div class="container-fluid col text-white list-box-1 con">
                    <ul class="row">
<%
	int prodSize = prodList.size();
	if(prodSize == 0){			
%>
		<tr>
			<td colspan="4">게시물이 존재하지 않습니다</td>
		</tr>

<% 
	} else {

		if(lprodcdValue == null){
			for(ProdVO pv : prodList) {  
			
%> 


                        <li style="border-radius: 10px;" class="col-2 cell" id="<%=pv.getProdCd() %>" onclick="redirectToOtherPage('<%=pv.getProdCd() %>')" name="<%=pv.getProdCd() %>">
                            <div class="img-box" style="border-radius: 25px;">
                                <img src="<%=pv.getProdImg() %>" style="border-radius: 20px;" alt="">
                                <div style="border-radius: 20px;" class="ico-view"><i style="border-radius: 20px;" class="fas fa-search"></i></div>
                            </div>
                            <div class="prod-name"><%=pv.getProdName() %></div>
                            <div class="prod-price"><%=pv.getProdPrice() %></div>
                        </li>

<%
			}
		} else{
			for(ProdVO pv : prodList) { 
				if(pv.getlProdCd().equals(lprodcdValue)){
					
				
%>			
                        <li style="border-radius: 10px;" class="col-2 cell" id="<%=pv.getProdCd() %>" onclick="redirectToOtherPage('<%=pv.getProdCd() %>')" name="<%=pv.getProdCd() %>">
                            <div class="img-box" style="border-radius: 10px;">
                                <img src="<%=pv.getProdImg() %>" alt="">
                                <div class="ico-view"><i class="fas fa-search"></i></div>
                            </div>
                            <div class="prod-name"><%=pv.getProdName() %></div>
                            <div class="prod-price"><%=pv.getProdPrice() %></div>
                        </li>
							
			
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
    
    


    <script>

    <%
    ProdVO pv = new ProdVO();

    %>
    	
    
    
  function redirectToOtherPage(ProdCd) {
    // parameter 값을 URL에 추가하여 새로운 주소 생성
    var newUrl = 'http://localhost:8888/shop/product.do?ProdCd=' + ProdCd;
    
    // 새로운 주소로 페이지 이동
    window.location.href = newUrl;
  }

    
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
        </form>
</body>

</html>