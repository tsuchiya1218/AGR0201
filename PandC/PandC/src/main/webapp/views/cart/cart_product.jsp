<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.user,model.good,model.cart,java.util.ArrayList"%>

<!DOCTYPE html>
<html lang="ja" class="h-100">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>P&C Pick And Choose PC Shopping Site</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
	crossorigin="anonymous">
	
</script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link href="/PandC/css/carousel.css"
	rel="stylesheet">
<link href="/PandC/css/default.css"
	rel="stylesheet">
<script type="text/javascript"
	src="/PandC/js/default.js"></script>
<%
@SuppressWarnings("unchecked")
ArrayList<user> name = (ArrayList<user>) session.getAttribute("u_info");
ArrayList<cart> c_list = (ArrayList<cart>) session.getAttribute("cartlist");
int login_status = (Integer) session.getAttribute("login_status");
int total_price = 0;
int total_value = 0;
int sale_off = 0;
int total_amount = 0;
for (cart g : c_list) {
	int price = Integer.parseInt(g.getPrice()) * Integer.parseInt(g.getAmount());
	total_price += price;
	int value = Integer.parseInt(g.getValue()) * Integer.parseInt(g.getAmount());
	total_value += value;
	sale_off = total_value - total_price;
}
session.setAttribute("amount", total_amount);
session.setAttribute("sale_off", sale_off);
session.setAttribute("t_price", total_price);
%>

</head>
<body class="d-flex flex-column h-100">

	<jsp:include page="../layouts/header.jsp" />

	<main class="flex-shrink-0">
		<div class="container py-3">
			<div class="text-center mb-5">
				<h3>ショッピングカート</h3>
			</div>
			<div class="row g-5 mb-5">
				<div class="col-md-5 col-lg-4 order-md-last">
					<h4 class="d-flex justify-content-between align-items-center mb-3">
						<span class="text-primary">あなたのカート</span> <span
							class="badge bg-primary rounded-pill"><%=total_amount %></span>
					</h4>
					<ul class="list-group mb-3">
						<li class="list-group-item d-flex justify-content-between lh-sm">
							<div>
								<h6 class="my-0 text-danger"><%=sale_off %>円 割引額合計</h6>
								<small class="text-muted">Brief description</small>
						</li>
						<li class="list-group-item d-flex justify-content-between lh-sm">
							<div>
								<h6 class="my-0">小計（税別）</h6>
								<small class="text-muted">(<%=total_amount %>つの 商品)</small>
							</div> <span class="text-muted"><%=(int) total_price - (int)(total_price*0.1) %>円</span>
						</li>
						<li class="list-group-item d-flex justify-content-between lh-sm">
							<div>
								<h6 class="my-0">消費税</h6>
							</div> <span class="text-muted"><%=(int)(total_price*0.1) %>円</span>
						</li>
						<li
							class="list-group-item d-flex justify-content-between bg-light">
							<div class="text-success">
								<h6 class="my-0 fw-bold">合計金額</h6>
								<small>税込・配送料込</small>
							</div> <span class="text-success fw-bold"><%=total_price %>円</span>
						</li>
					</ul>

					<form action="../payment/shipping.jsp" method="GET">
						<div class="card p-2 mb-3 input-group">
							<img alt="" width="100%"
								src="https://i.dell.com/sites/csimages/App-Merchandizing_responsive_Images/all/buy_payments_icons_sprite.png">
						</div>
						<div class="mb-3">
							<button class="w-100 btn btn-primary btn-lg" type="submit">ご注文手続きへ進む</button>
						</div>
					</form>
					
				</div>
				<div class="col-md-7 col-lg-8">
					<table class="table">
						<thead>
							<tr>
								<th scope="col">製品</th>
								<th scope="col"></th>
								<th scope="col" width="100">数量</th>
								<th scope="col" width="150">製品単価</th>
							</tr>
						</thead>
						<tbody>
						<%
						for (cart g : c_list) {
							
							out.println("<tr>");
							out.println("<td><img src='" + g.getGoodsImg() + "' width='100px' alt=''></td>");
							out.println("<td class=''>");
							out.println("<div class='row px-3'>"+ g.getGoodsName() +"</div>");
							out.println("<div></div>");
							out.println("<div></div>");
							out.println("</td>");
							out.println("<td><form id='amount' action='/PandC/CartController' method='GET'><select onchange='myFunction()' class='form-select me-3' name='amount' aria-label='Default select example'>");
							out.println("<option value='"+ g.getAmount() +"'>"+ g.getAmount() +"</option>");
							out.println("<option value='1'>1</option>");
							out.println("<option value='2'>2</option>");
							out.println("<option value='3'>3</option>");
							out.println("<option value='4'>4</option>");
							
							out.println("</select><input type='hidden' name='action' value='2'><input type='hidden' name='cartID' value='" + g.getCartID() + "'></form></td>");
							out.println("<td class='px-3'>");
							out.println(Integer.parseInt(g.getValue()) * Integer.parseInt(g.getAmount()) + "円");
							out.println("</td>");
							out.println("</tr>");
							out.println("<tr>");
							out.println("<td></td>");
							out.println("<td class='text-danger px-3'>割引金額</td>");
							out.println("<td></td>");
							out.println("<td class='text-danger px-3'>" + (Integer.parseInt(g.getPrice()) * Integer.parseInt(g.getAmount()) - Integer.parseInt(g.getValue()) * Integer.parseInt(g.getAmount())) + "円</td>");
							out.println("</tr>");
							out.println("<tr>");
							out.println("<td></td>");
							out.println("<td class='fw-bold px-3'>小計</td>");
							out.println("<td></td>");
							out.println("<td class='fw-bold px-3'>"+ Integer.parseInt(g.getPrice()) * Integer.parseInt(g.getAmount()) +"円</td>");
							out.println("</tr>");
						}
						%>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</main>
	<script>
		function myFunction() {
			
			var form = document.getElementById("amount");
	        form.submit();
		}
	</script>

	<jsp:include page="../layouts/footer.jsp" />

</body>
</html>