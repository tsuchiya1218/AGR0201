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

	<jsp:include page="../../layouts/header.jsp" />

	<main class="flex-shrink-0">
		<div
			class="p-md-3 mb-4 text-white text-center bg-secondary bg-gradient">
			<div>
				<h1 class="fst-italic">PCビルド</h1>
				<span>ホーム＞ゲーミングPC＞PCビルド</span>
			</div>
		</div>
		<div class="table-responsive container">
			<table class="table align-middle shadow p-3 mb-5">
				<thead class="table-dark">
					<tr>
						<th>Component</th>
						<th>プロダクト</th>
						<th>価格</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>プロセッサー</td>
						<td>
							<button type="button" class="btn btn-primary"
								data-bs-toggle="modal" data-bs-target="#exampleModal">&#43;商品追加</button>
							<div class="modal fade" id="exampleModal"
								data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
								aria-labelledby="exampleModalLabel" aria-hidden="true">
								<div
									class="modal-dialog modal-xl modal-dialog-centered modal-dialog-scrollable">
									<div class="modal-content bg-dark">
										<div class="modal-header text-white">
											<h5 class="modal-title" id="exampleModalLabel">プロセッサー</h5>
											<button type="button" class="btn-close btn-close-white"
												data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body bg-white">
											<jsp:include page="part_product.jsp"></jsp:include>
										</div>
									</div>
								</div>
							</div>
						</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>マザーボード</td>
						<td><a href="#" type="button" class="btn btn-primary">&#43;商品追加</a></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>CPUクーラー</td>
						<td><a href="#" type="button" class="btn btn-primary">&#43;商品追加</a></td>
						<td>This cell is aligned to the top.</td>
						<td></td>
					</tr>
					<tr>
						<td>ケース</td>
						<td><a href="#" type="button" class="btn btn-primary">&#43;商品追加</a></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>グラフィックカード</td>
						<td><a href="#" type="button" class="btn btn-primary">&#43;商品追加</a></td>
						<td>This cell is aligned to the top.</td>
						<td></td>
					</tr>
					<tr>
						<td>RAM</td>
						<td><a href="#" type="button" class="btn btn-primary">&#43;商品追加</a></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>ストレージ</td>
						<td><a href="#" type="button" class="btn btn-primary">&#43;商品追加</a></td>
						<td>This cell is aligned to the top.</td>
						<td></td>
					</tr>
					<tr>
						<td>ケースクーラー</td>
						<td><a href="#" type="button" class="btn btn-primary">&#43;商品追加</a></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>電源ユニット</td>
						<td><a href="#" type="button" class="btn btn-primary">&#43;商品追加</a></td>
						<td>This cell is aligned to the top.</td>
						<td></td>
					</tr>
					<tr class="">
						<td>モニター</td>
						<td><a href="#" type="button" class="btn btn-primary">&#43;商品追加</a></td>
						<td></td>
						<td></td>
					</tr>
					<tr class="table-dark align-bottom">
						<td>トータル</td>
						<td></td>
						<td>This cell is aligned to the top.</td>
						<td></td>
					</tr>
				</tbody>
			</table>
		</div>
	</main>

	<jsp:include page="../../layouts/footer.jsp" />

</body>

</html>