<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.maker,model.user,model.good,java.util.ArrayList"%>
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
ArrayList<good> goods = (ArrayList<good>) session.getAttribute("searchlist");
int login_status = (Integer) session.getAttribute("login_status");
%>

</head>
<body class="d-flex flex-column h-100 bg-light">

	<jsp:include page="../layouts/header.jsp" />

	<main class="flex-shrink-0">
		
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
					out.println("<a href='../cart/cart_product.jsp?goodID=" + g.getGoodID() + "' class='btn btn-primary'>カートに入れる</a>");
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

	<jsp:include page="../layouts/footer.jsp" />

</body>
</html>