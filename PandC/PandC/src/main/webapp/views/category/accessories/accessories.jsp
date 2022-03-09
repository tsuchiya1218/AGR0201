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
<link href="${pageContext.request.contextPath}/css/carousel.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/default.css"
	rel="stylesheet">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/default.js"></script>

</head>
<body class="d-flex flex-column h-100 bg-light">

	<jsp:include page="../../layouts/header.jsp" />

	<main class="flex-shrink-0">
		<div class="container px-4 py-5" id="icon-grid">
			<h2 class="pb-2 text-center border-bottom">モニター・アクセサリー・その他周辺機器</h2>

			<div
				class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 py-5">
				<div class="col d-flex align-items-start">
					<svg class="bi text-muted flex-shrink-0 me-3" width="1.75em"
						height="1.75em">
						<use xlink:href="#bootstrap" /></svg>
					<div>
						<p class="fw-2 mb-1">モニター</p>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<svg class="bi text-muted flex-shrink-0 me-3" width="1.75em"
						height="1.75em">
						<use xlink:href="#cpu-fill" /></svg>
					<div>
						<h4 class="fw-bold mb-0">Featured title</h4>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<svg class="bi text-muted flex-shrink-0 me-3" width="1.75em"
						height="1.75em">
						<use xlink:href="#calendar3" /></svg>
					<div>
						<h4 class="fw-bold mb-0">Featured title</h4>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<svg class="bi text-muted flex-shrink-0 me-3" width="1.75em"
						height="1.75em">
						<use xlink:href="#home" /></svg>
					<div>
						<h4 class="fw-bold mb-0">Featured title</h4>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<svg class="bi text-muted flex-shrink-0 me-3" width="1.75em"
						height="1.75em">
						<use xlink:href="#speedometer2" /></svg>
					<div>
						<h4 class="fw-bold mb-0">Featured title</h4>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<svg class="bi text-muted flex-shrink-0 me-3" width="1.75em"
						height="1.75em">
						<use xlink:href="#toggles2" /></svg>
					<div>
						<h4 class="fw-bold mb-0">Featured title</h4>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<svg class="bi text-muted flex-shrink-0 me-3" width="1.75em"
						height="1.75em">
						<use xlink:href="#geo-fill" /></svg>
					<div>
						<h4 class="fw-bold mb-0">Featured title</h4>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<svg class="bi text-muted flex-shrink-0 me-3" width="1.75em"
						height="1.75em">
						<use xlink:href="#tools" /></svg>
					<div>
						<h4 class="fw-bold mb-0">Featured title</h4>
					</div>
				</div>
			</div>
		</div>
	</main>

	<jsp:include page="../../layouts/footer.jsp" />

</body>
</html>