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
<link href="css/carousel.css" rel="stylesheet">

</head>

<body class="d-flex flex-column h-100">

	<jsp:include page="../layouts/header.jsp" />
	<hr>

	<main class="flex-shrink-0">

		<div class="progress mx-auto my-4" style="height: 5px; width: 75%">
			<div
				class="progress-bar progress-bar-striped progress-bar-animated bg-danger"
				role="progressbar" style="width: 80%;" aria-valuenow="100"
				aria-valuemin="0" aria-valuemax="100"></div>
		</div>

		<div class="container">
			<form action="question5.jsp" method="POST">
				<p>価格？（複数選択）</p>

				<div class="form-check">
					<input class="form-check-input" type="checkbox" value=""
						id="1"> <label class="form-check-label"
						for="1"> \1～\4000 </label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="checkbox" value="" id="2"
						checked> <label class="form-check-label" for="2">
						\4001～\8000 </label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="checkbox" value=""
						id="3"> <label class="form-check-label"
						for="3"> \8001～\10000 </label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="checkbox" value=""
						id="4" checked> <label class="form-check-label"
						for="4"> \10001～\12000</label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="checkbox" value=""
						id="5"> <label class="form-check-label"
						for="5"> \12001～\15000 </label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="checkbox" value=""
						id="6"> <label class="form-check-label"
						for="6"> \15001～\20000 </label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="checkbox" value=""
						id="7"> <label class="form-check-label"
						for="7"> \20001～ </label>
				</div>

				<br>
				<input type="submit" value="次へ"> <input type="button"
					value="戻る" onclick="history.back()">

			</form>
		</div>

	</main>

	<jsp:include page="../layouts/footer.jsp" />

</body>

</html>