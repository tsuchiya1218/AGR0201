<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="./CSS/bootstrap.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="./CSS/product_keyword.css">

<meta http-equiv="Content-Language" content="ja">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Style-Type" content="text/css">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<title>商品検索</title>

</head>

<body bgcolor="#EEEBE1" topmargin="0" leftmargin="0" rightmargin="0"
	marginheight="0" marginwidth="0">

	<img src="img/P&C_logo.png"
		style="margin-top: 2%; margin-left: 2%; width: 5%; height: 5%">
	<ul class="nav nav-pills nav-fill">
		<li class="nav-item"><a class="nav-link active"
			aria-current="page" href="productSearch.jsp">商品管理</a></li>
		<li class="nav-item"><a class="nav-link" href="orderSale.jsp">売り上げ管理</a>
		</li>
		<li class="nav-item"><a class="nav-link" href="orderCheck.jsp">注文管理</a>
		</li>
		<li class="nav-item"><a class="nav-link " href="userSearch.jsp">会員管理</a>
		</li>
	</ul>


	<table border="0" cellpadding="0" cellspacing="0" width="878"
		height="100%">
		<tr>
			<td width="200" height="100%" valign="top">
				<div class="sidenav">
					<ul class="sidenav-list">
						<li class="sidenav-title open">商品の設定</li>
						<li class="sidenav-list-wrap open">
							<ul>
								<li><a class="sidenav-list-item active">商品の検索</a></li>
								<li><a href="product_registry.jsp"
									class="sidenav-list-item">商品の登録</a></li>
								<li><a href="product_registry2.jsp"
									class="sidenav-list-item">おすすめ登録</a></li>

								<li><a href="stockSearch.jsp" class="sidenav-list-item">在庫管理</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</td>
			<td valign="top" class="mainContents" id="product_search">

				<div class="inner">
					<div class="page-head">
						<ul class="topic-path">
							<li><a href="">商品管理</a> &gt; 商品の設定 &gt; <a
								href="productSearch.jsp">商品の検索</a></li>
						</ul>
					</div>
					<form action="productSearch" name="form1" method="post">
						<input type="hidden" name="page" value="1" /> <input
							type="hidden" name="selected_category_uid" value="" />
						<div id="searchArea" class="mgnB24 mgnT8">
							<table class="dft1 widthFull" id="searchTable">
								<tr>
									<h4 class="subTitle">商品情報の入力</h4>
									<h5 class="largeTxt">商品の詳細情報を入力してください。</h5>
								</tr>
								<br>
								<tr id="searchCategoryRow">
									<th>カテゴリー</th>
									<td colspan=3><select name="categoryID" size=1>
											<option selected>ーーー</option>
											<option value='101'>ラップトップ</option>
											<option value='102'>デスクトップ</option>
											<option value='103'>2in1PC</option>
											<option value='201'>モニター</option>
											<option value='202'>GPU</option>
											<option value='203'>メインボード</option>
											<option value='204'>ケース</option>
											<option value='205'>RAM</option>
											<option value='206'>グラフィックカード</option>
											<option value='207'>CPUクーラー</option>
											<option value='208'>キーボード</option>
											<option value='209'>オーディオ</option>
											<option value='210'>ハードドライブ</option>
											<option value='211'>マウス</option>
											<option value='212'>メモリ</option>
											<option value='213'>電源ユニット</option>
											<option value='214'>ストレージ</option>
											<option value='215'>ケースクーラー</option>

											<input type=hidden name=old_special value=""></td>
								</tr>

								<tr>
									<th>商品名</th>
									<td><input type="text" value="" size="50" name="goodsName"
										class="mgnL4 inputWid270"></td>
								</tr>

								<tr>
									<th>価格帯</th>
									<td><input type="text" value=""
										style="width: 150px; height: 30px;" name="startSellPrice"
										class="inputWid60"> 円 ～ <input type="text" value=""
										style="width: 150px; height: 30px;"
										endSellPrice"
                                            class="inputWid60 mgnL4">
										円</td>
								</tr>
							</table>
							<div class="alignC mgnT16">
								<input type="submit" value="検索" style="width: 150px;"><br>


							</div>
						</div>
					</form>
					<table class="dft1 widthFull" id="searchTable">
						<tr>
							<h4 class="subTitle">商品全件情報検索</h4>
							
						</tr>
						<tr ">
							<form method="post" action="./productSearchAll">
								<input type="submit" value="全件検索" style="width: 150px;">
							</form>
						</tr>
					</table>




				</div>
			</td>
		</tr>
	</table>
</body>

</html>