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
%>
</head>
<body class="d-flex flex-column h-100">

	<jsp:include page="../layouts/header.jsp" />

	<main class="flex-shrink-0">
		<div class="container py-3">
			<div class="text-center mb-5">
				<h3>ご注文手続き</h3>
			</div>
			<div class="progress mx-auto my-4" style="height: 3px; width: 75%">
				<div
					class="progress-bar progress-bar-striped progress-bar-animated bg-danger"
					role="progressbar" style="width: 66%;" aria-valuenow="100"
					aria-valuemin="0" aria-valuemax="100"></div>
			</div>
			<form action="<%= request.getContextPath() %>/OrderController" method="POST" class="needs-validation"
				novalidate>
				<input type="hidden" name="payment" value="1">
				<div class="row g-5 mb-5">
					<div class="col-md-5 col-lg-4 order-md-last">
						<ul class="list-group my-3">
							<li class="list-group-item d-flex justify-content-between lh-sm">
								<div>
									<h6 class="my-0 text-danger"><%=sale_off %>円 割引額合計</h6>
									<small class="text-muted">Brief description</small>
								</div>
							</li>
							<li class="list-group-item d-flex justify-content-between lh-sm">
								<div>
									<h6 class="my-0">小計（税別）</h6>
									<small class="text-muted">(<%=amount %>つの 商品)</small>
								</div> <span class="text-muted"><%=(int) total_price - (int)(total_price*0.1) %>円</span>
							</li>
							<li class="list-group-item d-flex justify-content-between lh-sm">
								<div>
									<h6 class="my-0">消費税</h6>
								</div> <span class="text-muted"><%=(int)(total_price*0.1) %>円</span>
							</li>
							<li
								class="list-group-item d-flex justify-content-between bg-light">
								<div class="text-success">
									<h6 class="my-0 fw-bold">合計金額</h6>
									<small>税込・配送料込</small>
								</div> <span class="text-success fw-bold"><%=total_price %>円</span>
							</li>
						</ul>


						<div class="mb-3">
							<button class="w-100 btn btn-primary btn-lg" type="submit">ご入力情報の確認へ進む</button>
						</div>

					</div>
					<div class="col-md-7 col-lg-8">
						<div>
							<h4>支払い</h4>
						</div>

						<div class="my-3">
							<div class="form-check">
								<input id="credit" name="paymentMethod" type="radio"
									class="form-check-input" checked required> <label
									class="form-check-label" for="credit">クレジットカード</label>
							</div>
							<div class="form-check">
								<input id="debit" name="paymentMethod" type="radio"
									class="form-check-input" required> <label
									class="form-check-label" for="debit">デビットカード</label>
							</div>
							<div class="form-check">
								<input id="paypal" name="paymentMethod" type="radio"
									class="form-check-input" required> <label
									class="form-check-label" for="paypal">PayPal</label>
							</div>
						</div>

						<div class="row gy-3">
							<div class="col-md-6">
								<label for="cc-name" class="form-label">カード名義 </label> <input
									type="text" class="form-control" id="cc-name" name="card_name"
									placeholder="例：デンシタロウ" required> <small
									class="text-muted">カード上の表記通り</small>
								<div class="invalid-feedback">Name on card is required</div>
							</div>

							<div class="col-md-6">
								<label for="cc-number" class="form-label">カード番号</label> <input
									type="text" class="form-control" id="cc-number" name="card_number" placeholder=""
									required>
								<div class="invalid-feedback">Credit card number is
									required</div>
							</div>

							<div class="col-md-3">
								<label for="expiration_year" class="form-label">有効期限 年 </label><select
									class="form-select" id="expiration_year" name="expiration_year" required>
									<option selected="selected" value="">有効期限 年</option>
									<option value="2022">2022</option>
									<option value="2023">2023</option>
									<option value="2024">2024</option>
									<option value="2025">2025</option>
									<option value="2026">2026</option>
									<option value="2027">2027</option>
									<option value="2028">2028</option>
									<option value="2029">2029</option>
									<option value="2030">2030</option>
									<option value="2031">2031</option>
									<option value="2032">2032</option>
									<option value="2033">2033</option>
									<option value="2034">2034</option>
									<option value="2035">2035</option>
									<option value="2036">2036</option>
									<option value="2037">2037</option>
								</select>
								<div class="invalid-feedback">Expiration year required</div>
							</div>

							<div class="col-md-3">
								<label for="expiration_month" class="form-label">有効期限 月
								</label> <select class="form-select" id="expiration_month" name="expiration_month" required>
									<option selected="selected" value="">有効期限 月</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
								</select>
								<div class="invalid-feedback">Expiration month required</div>
							</div>

							<div class="col-md-6"></div>

							<div class="col-md-3">
								<label for="cc-cvv" class="form-label">セキュリティコード </label> <input
									type="text" class="form-control" id="cc-cvv" name="cvv" placeholder=""
									required><small class="text-muted">カード裏面（AMEXは前面）の番号をご入力ください</small>
								<div class="invalid-feedback">Security code required</div>
							</div>

							<div class="form-check">
								<input type="checkbox" class="form-check-input" id="save-info">
								<label class="form-check-label fw-bold" for="save-info">クレジットカード情報の保存</label>
							</div>

							<p>現在、クレジットカード会社のセキュリティ対策が強化されていることから、認証が通りづらい場合がございます。
								認証が通らない場合は、別のクレジットカードでお試しいただくか、クレジットカード会社にお問合せいただけますようお願いいたします。</p>
							<p>※1. 必ずご本人名義のカードをご利用ください。
								<br>※2.クレジットカードの本人確認が出来ない場合、ご注文をキャンセルさせていただくことがございます。
								<br>※3.クレジットカードの本人確認に時間がかかると、商品の発送が到着予定日に間に合わないことがあります。
								<br>※4.AMEX、Dinersのお支払い回数は１回のみになります。リボルビング払いにはクレジット会社規定の金利がかかります。リボルビング払いよりも金利の安い「デルらくらく分割プラン」をお奨めいたします。カードNo.及び有効期限は
								GMOペイメントゲートウェイ株式会社 を経由して各カード会社に送信されます。</p>
						</div>
					</div>
				</div>
			</form>
		</div>
	</main>

	<jsp:include page="../layouts/footer.jsp" />

</body>
</html>