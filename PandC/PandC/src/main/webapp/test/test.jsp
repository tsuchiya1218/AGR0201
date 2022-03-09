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
<body class="d-flex flex-column h-100" style="position: relative">

	<jsp:include page="../views/layouts/header_user.jsp" />

	<main class="flex-shrink-0">
		<div class="container py-5">
			<div class="row g-5">
				<div class="col-md-5 col-lg-4 order-md-last">
					<h4 class="d-flex justify-content-between align-items-center mb-3">
						<span class="text-primary">あなたのカート</span> <span
							class="badge bg-primary rounded-pill">3</span>
					</h4>
					<ul class="list-group mb-3">
						<li class="list-group-item d-flex justify-content-between lh-sm">
							<div>
								<h6 class="my-0">Product name</h6>
								<small class="text-muted">Brief description</small>
							</div> <span class="text-muted">$12</span>
						</li>
						<li class="list-group-item d-flex justify-content-between lh-sm">
							<div>
								<h6 class="my-0">Second product</h6>
								<small class="text-muted">Brief description</small>
							</div> <span class="text-muted">$8</span>
						</li>
						<li class="list-group-item d-flex justify-content-between lh-sm">
							<div>
								<h6 class="my-0">Third item</h6>
								<small class="text-muted">Brief description</small>
							</div> <span class="text-muted">$5</span>
						</li>
						<li
							class="list-group-item d-flex justify-content-between bg-light">
							<div class="text-success">
								<h6 class="my-0">Promo code</h6>
								<small>EXAMPLECODE</small>
							</div> <span class="text-success">−$5</span>
						</li>
						<li class="list-group-item d-flex justify-content-between"><span>Total
								(USD)</span> <strong>$20</strong></li>
					</ul>

					<form class="card p-2 mb-3">
						<div class="input-group">
							<img alt="" width="100%"
								src="https://i.dell.com/sites/csimages/App-Merchandizing_responsive_Images/all/buy_payments_icons_sprite.png">
						</div>

					</form>
					<div class="mb-3">
						<button class="w-100 btn btn-primary btn-lg" type="submit">Continue
							to checkout</button>
					</div>
				</div>
				<div class="col-md-7 col-lg-8">
					<table class="table">
						<thead>
							<tr>
								<th scope="col">製品</th>
								<th scope="col"></th>
								<th scope="col">数量</th>
								<th scope="col">製品単価</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><img
									src="https://snpi.dell.com/snp/images/products/large/ja-jp~210-AXNG_v1/210-AXNG_v1.jpg"
									width="100px" alt=""></td>
								<td class="">
									<div class="row px-3">DELL ALIENWARE AW3821DW
										37.5インチゲーミングモニター(WQHD+/曲面/21:9/IPS非光沢/1MS/144HZ/G-SYNC)</div>
									<div></div>
									<div></div>
								</td>
								<td><select class="form-select me-3"
									aria-label="Default select example">
										<option selected value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
								</select></td>
								<td class="px-3">
									257,180円
								</td>
							</tr>
							<tr>
								<td></td>
								<td class="text-danger px-3">割引金額</td>
								<td></td>
								<td>- 63,700円</td>
							</tr>
							<tr>
								<td></td>
								<td class="fw-bold px-3">小計</td>
								<td></td>
								<td class="px-3">193,480円</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</main>

	<jsp:include page="../views/layouts/footer.jsp" />

</body>
</html>