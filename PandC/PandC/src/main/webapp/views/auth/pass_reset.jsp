<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<link href="${pageContext.request.contextPath}/css/default.css"
	rel="stylesheet">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/default.js"></script>

</head>
<body class="d-flex flex-column h-100">

	<header class="site-header text-center">
		<a href=""> <img class="mt-4"
			src="../../img/P&C_logo.png" alt="" width="80" height="80" role="img"
			aria-label="Bootstrap">
		</a>
	</header>
	<hr>

	<main class="col-lg-10 mx-auto p-1 py-md-3">
		<div class="container">
			<form action="new_pass.jsp" method="POST">
				<h2>パスワード再設定</h2>
				<div class="row g-3 mb-3 align-items-center">
					<div class="col-auto">
						<label for="inputPassword6" class="col-form-label">新しいパスワード　　　　：</label>
					</div>
					<div class="col-auto">
						<input type="password" id="inputPassword6" class="form-control"
							aria-describedby="passwordHelpInline">
					</div>
					<div class="col-auto">
						<span id="passwordHelpInline" class="form-text">パスワードの長さは8文字以上、その中には1つの大文字、1つの小文字、1つの数字</span>
					</div>
				</div>
				<div class="row g-3 mb-3 align-items-center">
					<div class="col-auto">
						<label for="inputPassword6" class="col-form-label">新しいパスワード（確認）：</label>
					</div>
					<div class="col-auto">
						<input type="password" id="inputPassword6" class="form-control"
							aria-describedby="passwordHelpInline">
					</div>
					
				</div>
				<button type="submit" class="btn btn-primary">再設定</button>
			</form>
		</div>
	</main>

	<jsp:include page="../layouts/footer.jsp" />

</body>
</html>