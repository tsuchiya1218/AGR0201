<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="./CSS/bootstrap.css">
<link rel="stylesheet" type="text/css" href="./CSS/product_keyword.css">

<script src="/js/makeshop/form/textarea.js"></script>
<meta http-equiv="Content-Language" content="ja">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Style-Type" content="text/css">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<title>商品検索</title>
</head>


<body bgcolor="#EEEBE1" topmargin="0" leftmargin="0" rightmargin="0"
	marginheight="0" marginwidth="0">
	<img src="./img/P&C_logo.png"
		style="margin-top: 2%; margin-left: 2%; width: 5%; height: 5%">
		<ul class="nav nav-pills nav-fill">
		<li class="nav-item"><a class="nav-link active"
			aria-current="page" href="./product_registry.html">商品管理</a></li>
		<li class="nav-item"><a class="nav-link" href="./order_sale.html">売り上げ管理</a>
		</li>
		<li class="nav-item"><a class="nav-link"
			href="./order_check.html">注文管理</a></li>
		<li class="nav-item"><a class="nav-link"
			href="./member_user.html">会員管理</a></li>
	</ul>
	<li class="nav-item"><a class="nav-link" href="./member_user.html">会員管理</a></li>
	<table border="0" cellpadding="0" cellspacing="0" width="878"
		height="100%">
		<tr>
			<td width="200" height="100%" valign="top">
				<div class="sidenav">
					<ul class="sidenav-list">
						<li class="sidenav-title open">商品の設定</li>
						<li class="sidenav-list-wrap open">
							<ul>
								<li><a class="sidenav-list-item active">商品の検索/修正</a></li>
								<li><a href="./product_registry.jsp"
									class="sidenav-list-item">商品の登録</a></li>
								<li><a href="./product_registry2.jsp"
									class="sidenav-list-item">おすすめ登録</a></li>
								<li><a href="./product_delete.jsp" class="sidenav-list-item">商品の削除</a></li>
								<li><a href="./product_quantity.jsp"
									class="sidenav-list-item">在庫管理</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</td>
			<td valign="top" class="mainContents" id="product_search">

				<div class="inner">
					<div class="page-head">
						<ul class="topic-path">
							<li><a href="product_registry.html">商品管理</a> &gt; 商品の設定 &gt;
								<a href="product_keyword.html">商品の検索/修正</a></li>
						</ul>
					</div>
					<form action="" name="form1" method="post">
						<input type="hidden" name="page" value="1" /> <input
							type="hidden" name="selected_category_uid" value="" />
						<div id="searchArea" class="mgnB24 mgnT8">
							<table class="dft1 widthFull" id="searchTable">
								<tr>
									<h4 class="subTitle">商品検索</h4>
									<h5 class="largeTxt">検索情報を入力してください。</h5>

								</tr>
								<br>
								<tr id="searchCategoryRow">
									<th>カテゴリー</th>
									<td colspan=3><select name=special size=1>
											<option value='0' selected>---</option>
											<option value='デスクトップ'>デスクトップ</option>
											<option value='モニター'>モニター</option>
											<option value='GPU'>GPU</option>
											<option value='マザーボード'>マザーボード</option>
									</select> <input type=hidden name=old_special value=""></td>
								</tr>
								<tr>
									<th>キーワード</th>
									<td><input type="text" value="" size="50" name="keyword"
										class="mgnL4 inputWid270"></td>
								</tr>

							</table>
							<div class="alignC mgnT16">
								<img src="./img/searchBtn.png" alt="検索" class="alpha"></a>
							</div>
						</div>
						<div id="searchResultArea">
							<table class="dft1 widthFull headBold" id="searchResult">
								<thead>
									<tr>
										<th width="20">修正</th>
										<th>商品名</th>
										<th>商品コード</th>
										<th>販売価格</th>
										<th>数量</th>
										<th>用途</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><img src="./img/revisionBtn.png" alt="修正"
											class="alpha"></td>
										<td class='itemTd'>
											<div class='itemWrap clearfix'>
												<div class='itemName'>
													<p></p>
												</div>
												<div class='brand_uid_list' style='display: none'>1</div>
											</div>
										</td>
										<td class=''></td>
										<td class=''></td>
										<td class=''></td>
										<td class=''></td>
									</tr>
								</tbody>
							</table>
						</div>
					</form>
				</div>
			</td>
		</tr>
	</table>
</body>

</html>