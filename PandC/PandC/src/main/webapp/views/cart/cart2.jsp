<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.user,model.cart,java.util.ArrayList"%>

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
int login_status = (Integer) session.getAttribute("login_status");
String g_name = (String) session.getAttribute("cart_gname");
String g_price = (String) session.getAttribute("cart_gprice");
%>
</head>
<body class="d-flex flex-column h-100">

	<jsp:include page="../layouts/header.jsp" />

	<main class="flex-shrink-0">
		<section class="py-5 text-center container">
			<div class="row py-lg-5">
				<div class="col-lg-6 col-md-8 mx-auto">
					<h1 class="">商品をカートに追加しました。</h1>
					
				</div>
				<div class="row bg-light p-2">
					<div class="col-8 text-start">
						<%=g_name %><br><span class="text-success fs-4">小計：<%=g_price %>円</span></div>
					<div class="col-4 text-end"><a type="button" href="/PandC/CartController?action=0" class="btn btn-primary my-3">カートの内容を確認する</a></div>
				</div>
				<p>
					<a href="../auth/home.jsp" class="btn btn-primary my-4">ホームページへ戻る</a>
					<a href="#" onclick="history.back(-1);return false;"
						class="btn btn-secondary my-2">買い物を続く</a>
				</p>
			</div>
		</section>
	</main>

	<jsp:include page="../layouts/footer.jsp" />

</body>
</html>