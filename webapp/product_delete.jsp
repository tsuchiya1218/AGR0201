<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>]
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="./CSS/bootstrap.css">
<link rel="stylesheet" type="text/css" href="./CSS/product_delete.css">
<link rel="stylesheet" type="text/css" href="./CSS/product_keyword.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<script src="/js/makeshop/form/textarea.js"></script>
<meta http-equiv="Content-Language" content="ja">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Style-Type" content="text/css">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<title>商品削除</title>

</head>

<body bgcolor="#EEEBE1" topmargin="0" leftmargin="0" rightmargin="0"
	marginheight="0" marginwidth="0">
	<img src="./img/P&C_logo.png"
		style="margin-top: 2%; margin-left: 2%; width: 5%; height: 5%">
	<ul class="nav nav-pills nav-fill">
		<li class="nav-item"><a class="nav-link active"
			aria-current="page" href="../HTML/product_registry.html">商品管理</a></li>
		<li class="nav-item"><a class="nav-link" href="./order_sale.html">売り上げ管理</a>
		</li>
		<li class="nav-item"><a class="nav-link"
			href="../HTML/order_check.html">注文管理</a></li>
		<li class="nav-item"><a class="nav-link"
			href="./member_user.html">会員管理</a></li>
	</ul>
	<table border="0" cellpadding="0" cellspacing="0" width="878"
		height="100%">
		<tr>
			<td width="200" height="100%" valign="top">
				<link rel="stylesheet" href="css/beginner.css?1515994831">
				<div class="sidenav">
					<ul class="sidenav-list">
						<li class="sidenav-title open">商品の設定</li>
						<li class="sidenav-list-wrap open">
							<ul>
								<li><a href="product_keyword.html"
									class="sidenav-list-item">商品の検索/修正</a></li>
								<li><a href="./product_registry.html"
									class="sidenav-list-item">商品の登録</a></li>
								<li><a href="product_registry2.html"
									class="sidenav-list-item">おすすめ登録</a></li>
								<li><a class="sidenav-list-item active">商品の削除</a></li>
								<li><a href="product_quantity.html"
									class="sidenav-list-item">在庫管理</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</td>
			<td valign="top" class="mainContents" id="product_delete">
				<div class="inner">
					<div class="page-head">
						<ul class="topic-path">
							<li><a href="product_registry.html">商品管理</a> &gt;商品の設定 &gt;
								<a href="product_delete.html">商品の削除</a></li>
						</ul>
					</div>
					<form action="" name="form1" method="post" id="form1">
						<input type="hidden" name="page" value="1" /> <input
							type="hidden" name="selected_category_uid" value="" /> <input
							type="hidden" name="cmd" value="search" />
						<div id="searchArea" class="mgnB24 mgnT8">
							<table class="dft1 widthFull" id="searchTable">
								<tr>
									<h4 class="subTitle">商品情報の入力</h4>
									<h5 class="largeTxt">商品の詳細情報を入力してください。</h5>
									<input type="hidden" name="selected_base_category_uid" value="" />
								</tr>
								<br>
								<tr id="searchCategoryRow">
									<th>カテゴリー</th>
									<td colspan=3><select name=special size=1>
											<option value='0' selected>ーーー</option>
											<option value='1'>新商品1</option>
											<option value='1'>新商品2</option>
											<option value='1'>新商品3</option>
									</select> <input type=hidden name=old_special value=""></td>
								</tr>
								<tr>
									<th>キーワード</th>
									<td><input type="text" value="" size="50" name="keyword"
										class="mgnL4 inputWid270"></td>
								</tr>
								<tr>
									<th>用途</th>
									<td><select name="place_type" size="1">
											<option value="0" selected>ーーー</option>
											<option value="1">勉強</option>
											<option value="1">ビジネス</option>
											<option value="2">ゲーム</option>

									</select></td>
								</tr>
								<tr>
									<th>価格帯</th>
									<td><input type="text" value="" size="30"
										name="start_sell_price" class="inputWid60"> 円 ～ <input
										type="text" value="" size="30" name="end_sell_price"
										class="inputWid60 mgnL4"> 円</td>
								</tr>
							</table>
							<div class="alignC mgnT16">
								<a href="javascript:submit_search();"><img
									src="./img/searchBtn.png" alt="検索" class="alpha"></a>
							</div>
						</div>
						<div id="searchResultArea">

							<table class="dft1 widthFull headBold" id="searchResult">
								<thead>
									<tr>
										<th width="20">削除<br>
										<input type="checkbox" name="all_check" class="mgnT4"></th>
										<th>商品名</th>
										<th>販売価格</th>
										<th>数量</th>
										<th>用途</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><input type="checkbox" name="brand_info_list[]"
											value="000000000001|1" /></td>
										<td class='itemTd'>
											<div class='itemWrap clearfix'>
																							<div class='itemName'>
													<p>パソコン</p>
												</div>
												<div class='brand_uid_list' style='display: none'>1</div>
											</div>
										</td>
										<td class=''>10000円</td>
										<td class=''>12</td>
										<td class=''>勉強</td>
										<!--<td class=''><img src='./images/product/keyword/showN.png' alt='無し'></td>-->
									</tr>
								</tbody>
							</table>
							<br>
						</div>
						<a href="javascript:void(0);" id="selected_delete_items"><img
							src="./img/alldeleteBtn.png" alt="選択した商品を削除する"></a>
					</form>
					<tr></tr>
				</div>
			</td>
		</tr>
	</table>
	<br>

	<form name="formsearch" action="product_registry.html" method="post">
		<input type="hidden" name="brcode">
	</form>