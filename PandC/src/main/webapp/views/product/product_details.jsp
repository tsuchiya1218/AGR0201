<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.desktop,model.user,model.good,model.laptop,java.util.ArrayList"%>
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
<link href="/PandC}/css/carousel.css"
	rel="stylesheet">
<link href="/PandC/css/default.css"
	rel="stylesheet">
<script type="text/javascript"
	src="/PandC/js/default.js"></script>

<%
@SuppressWarnings("unchecked")
ArrayList<user> name = (ArrayList<user>) session.getAttribute("u_info");
String goodID = (String) session.getAttribute("goodID");
int login_status = (Integer) session.getAttribute("login_status");

String g_name = null;
String g_img = null;
String g_about = null;
String g_price = null;
String g_value = null;
String f_img = null;
String[] g_features = null;
String OS = null;
String cpu = null;
String cpuClock = null;
String memory = null;
String storage = null;
ArrayList<laptop> laptop = null;
ArrayList<desktop> desktop = null;
if (goodID.matches("101.*")) {
	laptop = (ArrayList<laptop>) session.getAttribute("laptop");
	for (laptop g : laptop) {
		g_name = g.getGoodsName();
		g_img = g.getGoodsImg();
		g_about = g.getGoodsAbout();
		g_price = g.getPrice();
		g_value = g.getValue();
		f_img = g.getFeatureImg();
		g_features = g.getGoodsFeatures().split(",");
		OS = g.getOS();
		memory = g.getMemory();
		storage = g.getStorage();
	}
}else if (goodID.matches("102.*")) {
	desktop = (ArrayList<desktop>) session.getAttribute("desktop");
	for (desktop g : desktop) {
		g_name = g.getGoodsName();
		g_img = g.getGoodsImg();
		g_about = g.getGoodsAbout();
		g_price = g.getPrice();
		g_value = g.getValue();
		f_img = g.getFeatureImg();
		g_features = g.getGoodsFeatures().split(",");
		OS = g.getOS();
		cpu = g.getCPU();
		cpuClock = g.getCpuClock();
		memory = g.getMemory();
		storage = g.getStorage();
	}
}


%>

</head>
<body class="d-flex flex-column h-100 scrollspy-example"
	data-bs-spy="scroll" data-bs-target="#navbar-example2"
	data-bs-offset="20" style="position: relative;" tabindex="0">

	<jsp:include page="../layouts/header.jsp" />

	<main class="flex-shrink-0">
		<div class="container py-5">
			<div class="row">
				<div class="col justify-content-center">
					<img
						src="<%= g_img %>"
						alt="">
				</div>
				<div class="col">

					<a href="#">DELL</a>
					<h2><%=g_name %></h2>
					<p><%= g_about %></p>

					<div>
						標準価格 <span class="text-decoration-line-through"><%=g_value %>円</span><br>
						<span class="fs-3 fw-bold"><%= g_price %>円</span> 割引額 <span
							class="text-danger fw-bold"><%= Integer.parseInt(g_value) -  Integer.parseInt(g_price)%>円</span> <br> 税込・配送料込
					</div>
					<div class="py-3 d-flex">
						<form action='/PandC/CartController' method='GET' class="me-3">
							<input type='hidden' name='action' value='1'>
							<input type='hidden' name='goodID' value='<%=goodID%>'>
							<input type='hidden' name='goodName' value='<%=g_name%>'>
							<input type='hidden' name='price' value='<%=g_price%>'>
							<button type='submit' class='btn btn-success px-5'>カートに入れる</button>
						</form>
						<a
							href="/PandC/views/compare/compare_1.jsp"
							class="btn btn-primary px-3">製品を比較</a>
					</div>
				</div>
			</div>
		</div>
		<div id="navbar-example2"
			class="navbar justify-content-center sticky-top bg-white">
			<ul class="nav nav-tabs fs-5">
				<li class="nav-item"><a class="nav-link fw-bold"
					href="#scrollspyHeading1">基本概要</a></li>
				<li class="nav-item"><a class="nav-link fw-bold"
					href="#scrollspyHeading2">仕様詳細</a></li>
				<!-- <li class="nav-item"><a class="nav-link fw-bold"
					href="#scrollspyHeading3">カスタマーレビュー</a></li> -->
			</ul>
		</div>
		<div class="container">
			<section id="scrollspyHeading1" class="mb-5 pb-5">
				<div class="text-center">
					<img
						src="<%=f_img %>"
						alt="">
				</div>
				<div>
				<%
				for (String s : g_features) {
					out.println("<p><h3>");
					out.println(s);
					out.println("</h3></p>");
				}
				%>
				</div>
			</section>
			<section id="scrollspyHeading2" class="mb-5 pb-5">
				<table class="table">
					<thead>
						<tr>
							<th scope="col"><h3>仕様詳細</h3></th>
							<th scope="col"></th>

						</tr>
					</thead>
					<tbody>
						<tr>
							<td>OS<br> <%=OS %>
							</td>
							<td>CPU<br> <%=cpu %>
							</td>
						</tr>
						<tr>
							<td>cpuClock<br> <%=cpuClock %> 
							</td>
							<td>メモリ<br> <%=memory %>
							</td>
						</tr>
						<tr>
							<td>ストレージ<br> <%=storage %>
							</td>
							<td>アスペクト比<br> 21:9
							</td>
						</tr>
						
					</tbody>
				</table>
			</section>
			<!-- <section id="scrollspyHeading3" class="mb-5 pb-5">
				
			</section> -->
		</div>
	</main>

	<jsp:include page="../layouts/footer.jsp" />

</body>
</html>