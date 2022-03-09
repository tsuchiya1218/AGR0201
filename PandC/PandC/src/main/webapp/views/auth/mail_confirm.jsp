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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link href="./css/carousel.css"
	rel="stylesheet">
<link href="./css/default.css"
	rel="stylesheet">
<script type="text/javascript"
	src="./js/default.js"></script>

</head>
<body class="d-flex flex-column h-100">

	<jsp:include page="../layouts/header.jsp" />

	<main class="flex-shrink-0">
		<div class="text-center mt-5">
			<h2>ご利用いただきありがとうございます。</h2>
			<p>
				お客様が登録されたメールアドレスにメール確認URLをお送りされました。 <br>お客様のメールを確認してそのURLをクリックして終了します。
			</p>
			<p>
						<a href="/PandC/index.jsp" class="btn btn-primary my-2">ホームページへ戻る</a> <a
							href="#" onclick="history.back(-1);return false;" class="btn btn-secondary my-2">買い物を続く</a>
					</p>
		</div>
	</main>

	<jsp:include page="../layouts/footer.jsp" />

</body>
</html>