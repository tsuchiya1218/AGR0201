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
<link href="../../css/feature.css" rel="stylesheet">

</head>
<body class="d-flex flex-column h-100">

	<jsp:include page="../layouts/header.jsp" />

	<main class="flex-shrink-0 text-center p-4 m-4">
		<div class="">
			<h1>あなたに最も適切商品は。。。</h1>
		</div>

		<div class="card mx-auto" style="width: 20rem">
			<img
				src="https://snpi.dell.com/snp/images/products/large/ja-jp~210-AXNG_v1/210-AXNG_v1.jpg"
				class="card-img-top px-4">
			<div class="card-body">
				<h5 class="card-title">DELL ALIENWARE AW3821DW
					37.5インチゲーミングモニター(WQHD+/曲面/21:9/IPS非光沢/1MS/144HZ/G-SYNC)</h5>
				<p class="card-text text-start">
					標準価格 <span class="text-danger text-decoration-line-through">257,180円</span> <br> 販売価格193,480円 割引額 63,700円 <br> 税込・配送料込
				</p>
				<a href="#" class="btn btn-primary">カートに入れる</a> <a href="../compare/compare_1.jsp"
					class="btn btn-outline-primary">比較</a>
			</div>
		</div>
		<hr>
		
		<div class="container px-4 py-5" id="featured-3">
    <h2 class="pb-2 border-bottom">見たお客様はこれも見ています</h2>
    <div class="row g-4 py-5 row-cols-1 row-cols-lg-3">
      <div class="feature col">
        <div>
          <img src="https://snpi.dell.com/snp/images/products/large/ja-jp~210-AXTP_v1/210-AXTP_v1.jpg" width="65" height="55" alt=""></img>
        </div>
        <h2>Featured title</h2>
        <p>Paragraph of text beneath the heading to explain the heading. We'll add onto it with another sentence and probably just keep going until we run out of words.</p>
        <a href="#" class="icon-link">
          Call to action
          <svg class="bi" width="1em" height="1em"><use xlink:href="#chevron-right"/></svg>
        </a>
      </div>
      <div class="feature col">
        <div>
          <img src="https://snpi.dell.com/snp/images/products/large/ja-jp~210-AXTP_v1/210-AXTP_v1.jpg" width="65" height="55" alt=""><img>
        </div>
        <h2>Featured title</h2>
        <p>Paragraph of text beneath the heading to explain the heading. We'll add onto it with another sentence and probably just keep going until we run out of words.</p>
        <a href="#" class="icon-link">
          Call to action
          <svg class="bi" width="1em" height="1em"><use xlink:href="#chevron-right"/></svg>
        </a>
      </div>
      <div class="feature col">
        <div>
          <img src="https://snpi.dell.com/snp/images/products/large/ja-jp~210-AXTP_v1/210-AXTP_v1.jpg" alt="" width="65" height="55"></img>
        </div>
        <h2>Featured title</h2>
        <p>Paragraph of text beneath the heading to explain the heading. We'll add onto it with another sentence and probably just keep going until we run out of words.</p>
        <a href="#" class="icon-link">
          Call to action
          <svg class="bi" width="1em" height="1em"><use xlink:href="#chevron-right"/></svg>
        </a>
      </div>
    </div>
  </div>
	</main>

	<jsp:include page="../layouts/footer.jsp" />

</body>
</html>