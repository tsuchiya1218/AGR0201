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
<link rel="stylesheet" type="text/css" href="./CSS/bootstrap.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<script src="/js/makeshop/form/textarea.js"></script>
<meta http-equiv="Content-Language" content="ja">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Style-Type" content="text/css">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<title>商品登録</title>


</head>

<body topmargin="0" leftmargin="0" rightmargin="0" marginheight="0"
	marginwidth="0">
	<img src="./img/P&C_logo.png"
		style="margin-top: 2%; margin-left: 2%; width: 5%; height: 5%">
	
	<ul class="nav nav-pills nav-fill">
	<li class="nav-item">
            <a class="nav-link active"  aria-current="page" href="productSearch.jsp">商品管理</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="orderSale.jsp">売り上げ管理</a>
        </li>
        <li class="nav-item">
            <a class="nav-link "  href="orderCheck.jsp">注文管理</a>
        </li>
        <li class="nav-item">
            <a class="nav-link "  href="userSearch.jsp">会員管理</a>
        </li>
        </ul>
	<div id="cover">
		<table border=0 cellpadding=0 cellspacing=0 width=878 height=100%>
			<tr>
				<td width=200 valign=top height=100% valign="top">
					<div class="sidenav">
						<ul class="sidenav-list">
							<li class="sidenav-title open">商品の設定</li>
							<li class="sidenav-list-wrap open">
								<ul>
									<li><a href="productSearch.jsp"
										class="sidenav-list-item">商品の検索</a></li>
									<li><a class="sidenav-list-item active">商品の登録</a></li>
									<li><a href="./product_registry2.jsp"
										class="sidenav-list-item">おすすめ登録</a></li>
									
									<li><a href="./stockSearch.jsp"
										class="sidenav-list-item">在庫管理</a></li>
								</ul>
							</li>
						</ul>
					</div>
				</td>
				<td width=678 valign=top bgcolor=#FFFFFF
					style="padding: 0px 5px 0px 5px; background: #F9F9F9;">
					<form action="./productform.jsp" method="post" name="moji"
						onSubmit="return mojicheck()  style="margin: 0;">
						<input type="hidden" name="brcode" value="" />
						<table border=0 cellpadding=0 cellspacing=0 width=100% class="th">
							<tr style="height: 50px;">
								<td colspan="4">
									<div class="page-head">
										<ul class="topic-path">
											<li><a href="./product_registry.jsp">商品管理</a> &gt; 商品の設定
												&gt; <a href="./product_registry.jsp">商品の登録</a></li>
										</ul>
									</div>
								</td>
							</tr>

							<tr>
								<td colspan=5 align="center">
									<h4 class="subTitle">商品情報の入力</h4>
									<h5 class="largeTxt">商品の詳細情報を入力してください。</h5> <input
									type="hidden" name="selected_base_category_uid" value="" /> <br />

									<table border=0 cellpadding=2 cellspacing=1 bgcolor="#DADADA"
										width=100% class="productInfoInput">

										<tr bgcolor="#FFFFFF">
											<th width="127" bgcolor="#F0F0F0" align="right" height="30">
												<font color=#3D3D3D>商品ID</font> &nbsp;
											</th>
											<td colspan="3"><input name="goodsID" size=16
												maxlength="9" style="ime-mode: disabled;">&nbsp;</td>
										</tr>

										<tr bgcolor=#FFFFFF>
											<th width=127 bgcolor="#F0F0F0" align=right valign=middle>
												<div class="beginnerWrap">
													<div class="beginner">
														<font color=#3D3D3D>商品名*</font>
													</div>
												</div>
											</th>
											<td colspan=3><input name="goodsName" value=""
												maxlength=255 required>
												<p class="formAssist">
													半角255文字(全角127文字)<br>
												</p></td>
										</tr>

										<tr bgcolor=#FFFFFF class="itemDisplay">
											<th width=150 bgcolor="#F0F0F0" align=right><font
												color=#3D3D3D>商品カテゴリー</font>&nbsp;</th>
											<td colspan=3><select name=categories size=1>
													<option value='0' selected>---</option>
													<option value='102'>デスクトップ</option>
													<option value='101'>ノートパソコン</option>
													<option value='202'>GPU</option>
													<option value='203'>メインボード</option>
											</select> <input type=hidden name=old_special value=""></td>
										</tr>

										<tr bgcolor=#FFFFFF class="itemDisplay">
											<th width=150 bgcolor="#F0F0F0" align=right><font
												color=#3D3D3D>メーカ</font>&nbsp;</th>
											<td colspan=3><select name=maker size=1>
													<option value='0' selected>---</option>
													<option value='1'>MAC</option>
													<option value='2'>ASUS</option>
													<option value='3'>LENOVO</option>
													<option value='4'>MSI</option>
													<option value='5'>HUAWEI</option>
													<option value='6'>FUJITSU</option>
													<option value='7'>DELL</option>
													<option value='8'>HP</option>
													<option value='9'>MICROSOFT</option>
													<option value='10'>MOUSE</option>
													<option value='11'>RAZER</option>
													<option value='12'>PANASONIC</option>
											</select> <input type=hidden name=old_special value=""></td>
										</tr>

										<tr bgcolor="#FFFFFF">
											<th bgcolor="#F0F0F0" align="right" height="30">
												<div class="beginnerWrap">
													<div class="beginner">
														<font color=#3D3D3D>販売価格*</font>&nbsp;
													</div>
												</div>
											</th>
											<td colspan="3">
												<div class="salesPrice">
													<input name="goodsValue" size=16 maxlength="9"
														style="ime-mode: disabled;" required>&nbsp;円
												</div>
											</td>
										</tr>

										<tr bgcolor="#FFFFFF">
											<th width="127" bgcolor="#F0F0F0" align="right" height="30">
												<font color=#3D3D3D>定価</font> &nbsp;
											</th>
											<td colspan="3"><input name="goodsPrice" required
												value="" size=16 maxlength="9" style="ime-mode: disabled;">&nbsp;円
											</td>
										</tr>

										<tr bgcolor="#FFFFFF">
											<th bgcolor="#F0F0F0" align="right" height="30">
												<div class="beginnerWrap">
													<div class="beginner">
														<font color=#3D3D3D>在庫数</font>&nbsp;
													</div>
												</div>
											</th>
											<td colspan="3">
												<div class="salesPrice">
													<p>
														<input name="stock" id="sellprice" value="" size=16
															maxlength="9" style="ime-mode: disabled;" required>&nbsp;個
													</p>
												</div>
											</td>
										</tr>

										<tr bgcolor="#FFFFFF">
											<th bgcolor="#F0F0F0" align="right" height="30">
												<div class="beginnerWrap">
													<div class="beginner">
														<font color=#3D3D3D>販売開始日</font>&nbsp;
													</div>
												</div>
											</th>
											<td colspan="3">
												<div class="salesPrice">
													<p>
														<input type="date" name="goodsStartDate"
															style="ime-mode: disabled;" required>&nbsp;
													</p>
												</div>
											</td>
										</tr>

										<tr bgcolor="#FFFFFF">
											<th bgcolor="#F0F0F0" align="right" height="30">
												<div class="beginnerWrap">
													<font color=#3D3D3D>販売終了日</font>&nbsp;
												</div>
											</th>
											<td colspan="3">
												<div class="salesPrice">
													<p>
														<input type="date" name="goodsEndDate"
															style="ime-mode: disabled;" required>&nbsp;
													</p>
												</div>
											</td>
										</tr>

										<tr bgcolor=#FFFFFF class="itemDisplay">
											<th width=127 bgcolor="#F0F0F0" align=right><font
												color=#3D3D3D>商品説明</font>&nbsp;</th>
											<td colspan=3><textarea name="goodsAbout"
													style="width: 500px; height: 100px;"></textarea></td>
										</tr>

										 <tr bgcolor=#FFFFFF class="itemDisplay">
											<th width=127 bgcolor="#F0F0F0" align=right><font
												color=#3D3D3D>商品特長</font>&nbsp;</th>
											<td colspan=3><textarea name="goodsFeatures"
													style="width: 500px; height: 100px;"></textarea></td>
										</tr>

										<tr bgcolor=#FFFFFF class="itemDisplay">
											<th width=127 bgcolor="#F0F0F0" align=right><font
												color=#3D3D3D>商品画像</font>&nbsp;</th>
											<td colspan=3><input type="file" name="goodsImg"
												accept="image/jpeg, image/png"></td>
										</tr>
										<tr bgcolor=#FFFFFF class="itemDisplay">
											<th width=127 bgcolor="#F0F0F0" align=right><font
												color=#3D3D3D>特徴画像</font>&nbsp;</th>
											<td colspan=3><input type="file" name="featImg"
												accept="image/jpeg, image/png"></td>
										</tr>
									</table>
									<div class="lastBtn">
										<div style="margin-bottom: 10px;">
											<button type="submit">次へ</button>
										</div>
									</div>
								</td>
							</tr>
						</table>
					</form>
				</td>
			</tr>
		</table>
</body>
</html>