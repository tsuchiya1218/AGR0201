<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.user,model.good,model.cart,java.util.ArrayList"%>

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
<link href="css/carousel.css" rel="stylesheet">
<%
@SuppressWarnings("unchecked")
int login_status = (Integer) session.getAttribute("login_status");
int amount = (Integer) session.getAttribute("amount");
int sale_off = (Integer) session.getAttribute("sale_off");
int total_price = (Integer) session.getAttribute("t_price");
ArrayList<String> p_method = (ArrayList<String>) session.getAttribute("paymentMethod");
ArrayList<String> shipping = (ArrayList<String>) session.getAttribute("shipping");
String name = shipping.get(0);
String mail = shipping.get(1);
String zip = shipping.get(2);
String prefectures = shipping.get(3);
String city = shipping.get(4);
String town = shipping.get(5);
String house_number = shipping.get(6);
String building = shipping.get(7);
String tel = shipping.get(8);
String card_name = p_method.get(0);
String card_number = p_method.get(1);
String expiration_year = p_method.get(2);
String expiration_month = p_method.get(3);
String cvv = p_method.get(4);

ArrayList<cart> c_list = (ArrayList<cart>) session.getAttribute("cartlist");

%>

</head>
<body class="d-flex flex-column h-100">

	<jsp:include page="../layouts/header.jsp" />

	<main class="flex-shrink-0">
		<div class="container py-3">
			<div class="text-center mb-5">
				<h3>??????????????????</h3>
			</div>
			<div class="progress mx-auto my-4" style="height: 3px; width: 75%">
				<div
					class="progress-bar progress-bar-striped progress-bar-animated bg-danger"
					role="progressbar" style="width: 100%;" aria-valuenow="100"
					aria-valuemin="0" aria-valuemax="100"></div>
			</div>
			<form action="ordered.jsp" method="POST" class="needs-validation"
				novalidate>
				<div class="row g-5 mb-5">
					<div class="col-md-5 col-lg-4 order-md-last">
						<ul class="list-group my-3">
							<li class="list-group-item d-flex justify-content-between lh-sm">
								<div>
									<h6 class="my-0 text-danger"><%=sale_off %>??? ???????????????</h6>
									<small class="text-muted">Brief description</small>
								</div>
							</li>
							<li class="list-group-item d-flex justify-content-between lh-sm">
								<div>
									<h6 class="my-0">??????????????????</h6>
									<small class="text-muted">(<%=amount %>?????? ??????)</small>
								</div> <span class="text-muted"><%=(int) total_price - (int)(total_price*0.1) %>???</span>
							</li>
							<li class="list-group-item d-flex justify-content-between lh-sm">
								<div>
									<h6 class="my-0">?????????</h6>
								</div> <span class="text-muted"><%=(int)(total_price*0.1) %>???</span>
							</li>
							<li
								class="list-group-item d-flex justify-content-between bg-light">
								<div class="text-success">
									<h6 class="my-0 fw-bold">????????????</h6>
									<small>?????????????????????</small>
								</div> <span class="text-success fw-bold"><%=total_price %>???</span>
							</li>
						</ul>

						<div class="mb-3">
							<button class="w-100 btn btn-primary btn-lg" type="submit">??????????????????</button>
						</div>
					</div>

					<div class="col-md-7 col-lg-8">
						<div>
							<h4>????????????????????????</h4>
							<p></p>
						</div>

						<div class="row g-3">
							<div class="col-sm-4">
								<p>
									<strong>??????</strong> <br><%=name %>
								</p>
							</div>

							<div class="col-sm-4">
								<p>
									<strong>?????????????????????</strong> <br><%=mail %>
								</p>
							</div>

							<div class="col-sm-4">
								<p>
									<strong>????????????</strong> <br><%=tel %>
								</p>
							</div>

							<div class="col-sm-12">
								<p>
									<strong>?????????</strong> <br>???<%=zip %> <br>
									<% out.println(prefectures + city + town + house_number); %>
								</p>
							</div>

							<div class="col-sm-12">
								<p>
									<strong>?????????, ????????????</strong> <br><%=building %>
								</p>
							</div>

							<div class="col-sm-4">
								<p>
									<strong>???????????????</strong> <br>????????????????????????
								</p>
							</div>

							<div class="col-sm-4">
								<p>
									<strong>???????????????</strong> <br><%=card_name %>
								</p>
							</div>

							<div class="col-sm-4">
								<p>
									<strong>???????????????</strong> <br> <%=card_number %>
								</p>
							</div>
						</div>
						<hr>
						<div>
							<h4>????????????</h4>
							<p>????????????</p>
							<%
							for (cart g : c_list) {
								
								out.println("<div class='row p-2'>");
								out.println("<div class='col-2 text-start'>");
								out.println("<img src='" + g.getGoodsImg() + "' width='100px' height='100' alt=''>");
								out.println("</div>");
								out.println("<div class='col-8'>"+ g.getGoodsName() +"</div>");
								
							}
							%>
							<div class="row">
								<div class="col-2 text-start"></div>
								<div class="col-6 bg-light p-2">
									<strong>2022/02/01</strong> ???????????????
								</div>
							</div>
							</div>
						</div>
					</div>
				</div>
			</form>

		</div>
	</main>

	<jsp:include page="../layouts/footer.jsp" />

</body>
</html>