<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.maker,model.good,java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="ja" class="h-100">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>P&C Pick And Choose PC Shopping Site</title>
<link href="">
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
ArrayList<maker> makers = (ArrayList<maker>) session.getAttribute("makerlist");
ArrayList<good> goods = (ArrayList<good>) session.getAttribute("goodlist");
session.setAttribute("login_status",0);
%>

</head>
<body class="d-flex flex-column h-100 bg-light">

	<jsp:include page="views/layouts/header.jsp" />

	<main class="flex-shrink-0">
		<div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#myCarousel"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#myCarousel"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#myCarousel"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="bd-placeholder-img" width="100%" height="100%"
						src="https://i.dell.com/sites/csimages/Banner_Imagery/all/site_q3w10_windows11_3800x1481.jpg"
						aria-hidden="true" preserveAspectRatio="xMidYMid slice"
						focusable="false">
					<rect width="100%" height="100%" fill="#777" />
					</img>

					<div class="container">
						<div class="carousel-caption text-start text-dark">
							<h1>初心者に向け</h1>
							<p>
								<a class="btn btn-lg btn-primary"
									href="./views/starter_guide/question1.jsp">今、すぐ調査に</a>
							</p>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<img class="bd-placeholder-img" width="100%" height="100%"
						src="https://storage-asset.msi.com/jp/picture/banner/banner_1635322571a05adfe1976d0440fdfdf4170df438a8.png"
						aria-hidden="true" preserveAspectRatio="xMidYMid slice"
						focusable="false">
					<rect width="100%" height="100%" fill="#777" />
					</img>


					<div class="container">
						<div class="carousel-caption">
							<p>
								<a class="btn btn-lg btn-warning"
									href="./views/gaming_pc/gaming_pc.jsp">ゲーミングPC</a>
							</p>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<img class="bd-placeholder-img" width="100%" height="100%"
						src="https://i.dell.com/sites/csimages/banner_imagery/all/fy22q04wk01_sb_rotation_slot1_1400x4722129291229354556.jpg?width=1600&format=jpg&quality=80"
						aria-hidden="true" preserveAspectRatio="xMidYMid slice"
						focusable="false">
					<rect width="100%" height="100%" fill="#777" />
					</img>

					<div class="container">
						<div class="carousel-caption text-start text-dark">
							<h1>法人向け</h1>
							<p>Some representative placeholder content for the third
								slide of this carousel.</p>
							<p>
								<a class="btn btn-lg btn-primary"
									href="./login.jsp">法人はこちら</a>
							</p>
						</div>
					</div>
				</div>
			</div>

			<button class="carousel-control-prev" type="button"
				data-bs-target="#myCarousel" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#myCarousel" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>

		<div class="container mb-2">
			<div class="row">
				<div class='row'>
					<div class='card-group'>
						<%
						for (int i = 0; i < 6; i++) {
							out.println("<div class='btn card overflow-hidden text-center'>");
							out.println(
							"<a href='../maker/maker.jsp?" + makers.get(i).getMakerID() + "'><img src='" + makers.get(i).getMakerImg() + "' class='card-img-top px-3 pt-4' alt='...'></a>");
							out.println("<div>");
							out.println("<p class='card-text fw-bold'>" + makers.get(i).getMakerName() + "</p>");
							out.println("</div>");
							out.println("</div>");

						}
						%>
					</div>
				</div>

				<div class='row'>
					<div class='card-group'>
						<%
						for (int i = 6; i < 12; i++) {
							out.println("<div class='btn card overflow-hidden text-center'>");
							out.println(
							"<a href='../maker/maker.jsp?" + makers.get(i).getMakerID() + "'><img src='" + makers.get(i).getMakerImg() + "' class='card-img-top px-3 pt-4' alt='...'></a>");
							out.println("<div>");
							out.println("<p class='card-text fw-bold'>" + makers.get(i).getMakerName() + "</p>");
							out.println("</div>");
							out.println("</div>");

						}
						%>
					</div>
				</div>
			</div>
		</div>
		
		<div class="bg-white mt-4">
			<div class="container">
				<h2 class="pt-5">ご利用いただき、ありがとうございます</h2>
				<div
					class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 g-4 py-5">
				<%
				for (good g : goods) {
					out.println("<div class='col align-items-start'>");
					out.println("<div class='card h-100 shadow'>");
					out.println("<img src='" + g.getGoodsImg() + "' class='card-img-top px-4'>");
					out.println("<div class='card-body'>");
					out.println("<h5 class='card-title'><a class='title' href='/PandC/GoodController?goodID=" + g.getGoodID() + "'><br>" + g.getGoodsName() + "</a></h5>");
					out.println("<p class='card-text text-start'>標準価格 " + Integer.parseInt(g.getValue()) + "円 <br> 販売価格 " + Integer.parseInt(g.getPrice()) +  "円 割引額 " +(Integer.parseInt(g.getValue())-Integer.parseInt(g.getPrice())) + "円 <br>税込・配送料込</p>");
					out.println("<form action='/PandC/CartController' method='GET'>");
					out.println("<input type='hidden' name='action' value='1'>");
					out.println("<input type='hidden' name='goodID' value='" + g.getGoodID() +"'>");
					out.println("<input type='hidden' name='goodName' value='" + g.getGoodsName() +"'>");
					out.println("<input type='hidden' name='price' value='" + g.getPrice() +"'>");
					out.println("<button type='submit' class='btn btn-primary'>カートに入れる</button>");
					out.println("</form>");
					out.println("<a href='./views/compare/compare_1.jsp' class='btn btn-outline-primary'>比較</a>");
					out.println("</div>");
					out.println("</div>");
					out.println("</div>");
				}
				%>
				</div>
			</div>
		</div>

	</main>

	<jsp:include page="views/layouts/footer.jsp" />

</body>
</html>