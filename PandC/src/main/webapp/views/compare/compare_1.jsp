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
<body class="d-flex flex-column h-100">

	<jsp:include page="../layouts/header.jsp" />

	<main class="flex-shrink-0">
		<div class="container">
			<div class="row mb-3">
				<div class="col-md-3"></div>
				<div class="col-md-9">
					<div class="pb-3">
						<h1>商品を比較</h1>
					</div>
					<div class="row">
						<div class="col-md-6 px-5">
							<div class="text-center">
								<img
									src="https://snpi.dell.com/snp/images/products/large/ja-jp~210-AXNG_v1/210-AXNG_v1.jpg"
									width="270" height="270">

							</div>
							<div class="">
								<h5 class="">
									<a class="title" href="#">DELL ALIENWARE AW3821DW
										37.5インチゲーミングモニター(WQHD+/曲面/21:9/IPS非光沢/1MS/144HZ/G-SYNC)</a>
								</h5>

							</div>
							<div>
								<p class="">
									<span class="text-danger text-decoration-line-through">257,180円</span>
									<span class="fs-5 fw-bold">193,480円</span>
								</p>
								<p>
									製造元のパーツ KDCHD <br>デル製パーツ 210-AXNG
								</p>
								<p class="text-center">
									<a href="#" class="btn btn-sm btn-success">カートに入れる</a>
								</p>
							</div>
						</div>
						<div class="col-md-6 px-5">
							<div class="text-decoration-underline mb-2">その他のおすすめ製品:</div>
							<div class="col d-flex align-items-start">
								<div class="icon-square bg-light text-dark flex-shrink-0 me-3">
									<img
										src="https://snpi.dell.com/snp/images/products/large/ja-jp~210-AXTP_v1/210-AXTP_v1.jpg"
										width="50" height="50">
								</div>
								<div>
									<p class="fw-bold">DELL ALIENWARE AW2720HF
										27インチゲーミングモニター(フルHD/IPS非光沢/1MS/240HZ/HDMIX2/FREESYNC)
									<br>99,980円<br>
									✚<a href="compare_2.jsp" class="title text-primary fw-bold">製品の追加</a></p>
								</div>
							</div>
							<div class="col d-flex align-items-start">
								<div class="icon-square bg-light text-dark flex-shrink-0 me-3">
									<img
										src="https://snpi.dell.com/snp/images/products/large/ja-jp~210-AXTP_v1/210-AXTP_v1.jpg"
										width="50" height="50">
								</div>
								<div>
									<p class="fw-bold">DELL ALIENWARE AW2720HF
										27インチゲーミングモニター(フルHD/IPS非光沢/1MS/240HZ/HDMIX2/FREESYNC)
									<br>99,980円<br>
									✚<a href="compare_2.jsp" class="title text-primary fw-bold">製品の追加</a></p>
								</div>
							</div>
							<div class="col d-flex align-items-start">
								<div class="icon-square bg-light text-dark flex-shrink-0 me-3">
									<img
										src="https://snpi.dell.com/snp/images/products/large/ja-jp~210-AXTP_v1/210-AXTP_v1.jpg"
										width="50" height="50">
								</div>
								<div>
									<p class="fw-bold">DELL ALIENWARE AW2720HF
										27インチゲーミングモニター(フルHD/IPS非光沢/1MS/240HZ/HDMIX2/FREESYNC)
									<br>99,980円<br>
									✚<a href="compare_2.jsp" class="title text-primary fw-bold">製品の追加</a></p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="mb-5">
				<div class="row py-2 border-top">
					<div class="col-md-3 fw-bold text-center">
						<h3>機器タイプ</h3>
					</div>
					<div class="col-md-9">
						<div class="row">
							<div class="col-md-6 px-5">LEDバックライト付液晶モニター - 37.5"</div>
							<div class="col-md-6">
								<div class=""></div>
							</div>
						</div>
					</div>
				</div>
				<div class="row py-2 border-top">
					<div class="col-md-3 fw-bold text-center">
						<h3>アダプティング技術</h3>
					</div>
					<div class="col-md-9">
						<div class="row">
							<div class="col-md-6 px-5">NVIDIA G-Sync Ultimate</div>
							<div class="col-md-6">
								<div class=""></div>
							</div>
						</div>
					</div>
				</div>
				<div class="row py-2 border-top">
					<div class="col-md-3 fw-bold text-center">
						<h3>カブスクリーン</h3>
					</div>
					<div class="col-md-9">
						<div class="row">
							<div class="col-md-6 px-5">対応</div>
							<div class="col-md-6">
								<div class=""></div>
							</div>
						</div>
					</div>
				</div>
				<div class="row py-2 border-top">
					<div class="col-md-3 fw-bold text-center">
						<h3>実行解像度</h3>
					</div>
					<div class="col-md-9">
						<div class="row">
							<div class="col-md-6 px-5">3840 x 1600 (DisplayPort: 144
								Hz, HDMI: 85 Hz)</div>
							<div class="col-md-6">
								<div class=""></div>
							</div>
						</div>
					</div>
				</div>
				<div class="row py-2 border-top">
					<div class="col-md-3 fw-bold text-center">
						<h3>画素ピッチ</h3>
					</div>
					<div class="col-md-9">
						<div class="row">
							<div class="col-md-6 px-5">0.229 mm</div>
							<div class="col-md-6">
								<div class=""></div>
							</div>
						</div>
					</div>
				</div>
				<div class="row py-2 border-top">
					<div class="col-md-3 fw-bold text-center">
						<h3>輝度</h3>
					</div>
					<div class="col-md-9">
						<div class="row">
							<div class="col-md-6 px-5">450 cd/m²</div>
							<div class="col-md-6">
								<div class=""></div>
							</div>
						</div>
					</div>
				</div>
				<div class="row py-2 border-top">
					<div class="col-md-3 fw-bold text-center">
						<h3>コントラスト比</h3>
					</div>
					<div class="col-md-9">
						<div class="row">
							<div class="col-md-6 px-5">1000:1</div>
							<div class="col-md-6">
								<div class=""></div>
							</div>
						</div>
					</div>
				</div>
				<div class="row py-2 border-top">
					<div class="col-md-3 fw-bold text-center">
						<h3>応答時間</h3>
					</div>
					<div class="col-md-9">
						<div class="row">
							<div class="col-md-6 px-5">1 ms（GtoG）</div>
							<div class="col-md-6">
								<div class=""></div>
							</div>
						</div>
					</div>
				</div>
				<div class="row py-2 border-top">
					<div class="col-md-3 fw-bold text-center">
						<h3>最大表示色</h3>
					</div>
					<div class="col-md-9">
						<div class="row">
							<div class="col-md-6 px-5">10.7億色</div>
							<div class="col-md-6">
								<div class=""></div>
							</div>
						</div>
					</div>
				</div>
				<div class="row py-2 border-top">
					<div class="col-md-3 fw-bold text-center">
						<h3>入力コネクタ</h3>
					</div>
					<div class="col-md-9">
						<div class="row">
							<div class="col-md-6 px-5">2xHDMI, DisplayPort</div>
							<div class="col-md-6">
								<div class=""></div>
							</div>
						</div>
					</div>
				</div>
				<div class="row py-2 border-top">
					<div class="col-md-3 fw-bold text-center">
						<h3>ディスプレイ位置調整</h3>
					</div>
					<div class="col-md-9">
						<div class="row">
							<div class="col-md-6 px-5">旋回式, 傾斜式</div>
							<div class="col-md-6">
								<div class=""></div>
							</div>
						</div>
					</div>
				</div>
				<div class="row py-2 border-top">
					<div class="col-md-3 fw-bold text-center">
						<h3>スクリーンコーディング</h3>
					</div>
					<div class="col-md-9">
						<div class="row">
							<div class="col-md-6 px-5">反射防止, 3Hハードコーティング</div>
							<div class="col-md-6">
								<div class=""></div>
							</div>
						</div>
					</div>
				</div>
				<div class="row py-2 border-top">
					<div class="col-md-3 fw-bold text-center">
						<h3>寸法(幅x奥行きx高さ)-スタンド含む</h3>
					</div>
					<div class="col-md-9">
						<div class="row">
							<div class="col-md-6 px-5">89.49 cm x 29.35 cm x 44.97 cm</div>
							<div class="col-md-6">
								<div class=""></div>
							</div>
						</div>
					</div>
				</div>
				<div class="row py-2 border-top">
					<div class="col-md-3 fw-bold text-center">
						<h3>準拠規格</h3>
					</div>
					<div class="col-md-9">
						<div class="row">
							<div class="col-md-6 px-5">DisplayPort 1.4</div>
							<div class="col-md-6">
								<div class=""></div>
							</div>
						</div>
					</div>
				</div>
				<div class="row py-2 border-top">
					<div class="col-md-3 fw-bold"></div>
					<div class="col-md-9">
						<div class="row">
							<div class="col-md-6 px-5 text-center">
								<a href="#" class="btn btn-success">カートに入れる</a>
							</div>
							<div class="col-md-6 text-center"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
	<jsp:include page="../layouts/footer.jsp" />

</body>
</html>