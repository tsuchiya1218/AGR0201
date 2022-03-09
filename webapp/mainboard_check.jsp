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
<script async
	src="https://www.googletagmanager.com/gtag/js?id=UA-16852882-3"></script>
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript"
	src="/js/jqueryplugin/makeshop_ckeditor/4.5.3/ckeditor.js"></script>
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
		<li class="nav-item"><a class="nav-link active"
			aria-current="page" href="./product_registry.html">商品管理</a></li>
		<li class="nav-item"><a class="nav-link" href="./order_sale.html">売り上げ管理</a>
		</li>
		<li class="nav-item"><a class="nav-link"
			href="./order_check.html">注文管理</a></li>
		<li class="nav-item"><a class="nav-link"
			href="./member_user.html">会員管理</a></li>
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
									<li><a href="product_keyword.html"
										class="sidenav-list-item">商品の検索/修正</a></li>
									<li><a class="sidenav-list-item active">商品の登録</a></li>
									<li><a href="product_registry2.html"
										class="sidenav-list-item">おすすめ登録</a></li>
									<li><a href="product_delete.html"
										class="sidenav-list-item">商品の削除</a></li>
									<li><a href="product_quantity.html"
										class="sidenav-list-item">在庫管理</a></li>
								</ul>
							</li>
						</ul>
					</div>
				</td>
				<td width=678 valign=top bgcolor=#FFFFFF
					style="padding: 0px 5px 0px 5px; background: #F9F9F9;"><input
					type="hidden" name="brcode" value="" />
					<table border=0 cellpadding=0 cellspacing=0 width=100% class="th">
						<tr style="height: 50px;">
							<td colspan="4">
								<div class="page-head">
									<ul class="topic-path">
										<li><a href="product_registry.html">商品管理</a> &gt; 商品の設定
											&gt; <a href="product_registry.html">商品の登録</a></li>
									</ul>
								</div>
							</td>
						</tr>
						<tr>
							<td colspan=5 align="center">
								<h4 class="subTitle">商品情報の入力</h4>
								<h5 class="largeTxt">商品の詳細情報を入力してください。</h5> <input type="hidden"
								name="selected_base_category_uid" value="" />
								<table border="0" cellpadding="2" cellspacing="1"
									bgcolor="#DADADA" width=100% class="productInfoInput">
									<tr bgcolor="#FFFFFF">
										<th width="127" bgcolor="#F0F0F0" align="right" height="30">
											<font color=#3D3D3D>商品ID</font> &nbsp;
										</th>
										<td colspan="3"><%=session.getAttribute("goodsID")%>&nbsp;</td>
									</tr>
									<tr bgcolor=#FFFFFF>
										<th width="127" bgcolor="#F0F0F0" align="right"
											valign="middle">
											<div class="beginnerWrap">
												<div class="beginner">
													<font color="#3D3D3D">商品名*</font>
												</div>
											</div>
										</th>
										<td><%=session.getAttribute("goodsName")%></td>

									</tr>
									<tr bgcolor="#FFFFFF" class="itemDisplay">
										<th width="150" bgcolor="#F0F0F0" align="right"><font
											color="#3D3D3D">商品カテゴリー</font>&nbsp;</th>
										<td colspan="3"><%=session.getAttribute("categories")%></td>
									</tr>
									<tr bgcolor="#FFFFFF" class="itemDisplay">
										<th width="150" bgcolor="#F0F0F0" align="right"><font
											color="#3D3D3D">メーカ</font>&nbsp;</th>
										<td colspan="3"><%=session.getAttribute("maker")%></td>
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
												<%=session.getAttribute("goodsValue")%>円
											</div>
										</td>
									</tr>
									<tr bgcolor="#FFFFFF">
										<th width="127" bgcolor="#F0F0F0" align="right" height="30">
											<font color="#3D3D3D">定価</font> &nbsp;
										</th>
										<td colspan="3"><%=session.getAttribute("goodsPrice")%>&nbsp;円</td>
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
												<%=session.getAttribute("stock")%>&nbsp;個
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
											<div class="salesPrice"><%=session.getAttribute("goodsStartDate")%>&nbsp;
											</div>
										</td>
									</tr>

									<tr bgcolor="#FFFFFF">
										<th bgcolor="#F0F0F0" align="right" height="30">
											<div class="beginnerWrap">
												<div class="beginner">
													<font color=#3D3D3D>販売終了日</font>&nbsp;
												</div>
											</div>
										</th>
										<td colspan="3">
											<div class="salesPrice"><%=session.getAttribute("goodsEndDate")%>&nbsp;
											</div>
										</td>
									</tr>


									<tr bgcolor="#FFFFFF" class="itemDisplay">
										<th width="127" bgcolor="#F0F0F0" align="right"><font
											color="#3D3D3D">商品説明</font>&nbsp;</th>
										<td colspan="3"><%=session.getAttribute("goodsAbout")%></td>
									</tr>


									<tr bgcolor=#FFFFFF class="itemDisplay">
										<th width=127 bgcolor="#F0F0F0" align=right><font
											color=#3D3D3D>商品特長</font>&nbsp;</th>
										<td colspan=3><%=session.getAttribute("goodsFeatures")%></td>
									</tr>

									<tr bgcolor="#FFFFFF">
										<th bgcolor="#F0F0F0" align="right" height="30">
											<div class="beginnerWrap">
												<div class="beginner">
													<font color=#3D3D3D>FormFactor</font>&nbsp;
												</div>
											</div>
										</th>
										<td colspan="3"><%=request.getParameter("FormFactor")%>
										<%
											session.setAttribute("FormFactor", request.getParameter("FormFactor"));
											%></td>
									</tr>
									<tr bgcolor="#FFFFFF">
										<th bgcolor="#F0F0F0" align="right" height="30">
											<div class="beginnerWrap">
												<div class="beginner">
													<font color=#3D3D3D>Socket</font>&nbsp;
												</div>
											</div>
										</th>
										<td colspan="3"><%=request.getParameter("Socket")%>
										<%
											session.setAttribute("Socket", request.getParameter("Socket"));
											%></td>
									</tr>
									<tr bgcolor="#FFFFFF">
										<th bgcolor="#F0F0F0" align="right" height="30">
											<div class="beginnerWrap">
												<div class="beginner">
													<font color=#3D3D3D>MemorySlot</font>&nbsp;
												</div>
											</div>
										</th>
										<td colspan="3"><%=request.getParameter("MemorySlot")%>
										<%
											session.setAttribute("MemorySlot", request.getParameter("MemorySlot"));
											%></td>
									</tr>
									<tr bgcolor="#FFFFFF">
										<th bgcolor="#F0F0F0" align="right" height="30">
											<div class="beginnerWrap">
												<div class="beginner">
													<font color=#3D3D3D>Chipset</font>&nbsp;
												</div>
											</div>
										</th>
										<td colspan="3"><%=request.getParameter("Chipset")%>
										<%
											session.setAttribute("Chipset", request.getParameter("Chipset"));
											%></td>
									</tr>
									<tr bgcolor="#FFFFFF">
										<th bgcolor="#F0F0F0" align="right" height="30">
											<div class="beginnerWrap">
												<div class="beginner">
													<font color=#3D3D3D>m.2</font>&nbsp;
												</div>
											</div>
										</th>
										<td colspan="3"><%=request.getParameter("m.2")%>
										<%
											session.setAttribute("m.2", request.getParameter("m.2"));
											%>
										</td>
									</tr>
									<tr bgcolor="#FFFFFF">
										<th bgcolor="#F0F0F0" align="right" height="30">
											<div class="beginnerWrap">
												<div class="beginner">
													<font color=#3D3D3D>sata3.0</font>&nbsp;
												</div>
											</div>
										</th>
										<td colspan="3"><%=request.getParameter("sata3.0")%><%
											session.setAttribute("sata3.0", request.getParameter("sata3.0"));
											%></td>
									</tr>
									<tr bgcolor="#FFFFFF">
										<th bgcolor="#F0F0F0" align="right" height="30">
											<div class="beginnerWrap">
												<div class="beginner">
													<font color=#3D3D3D>pcieSlot</font>&nbsp;
												</div>
											</div>
										</th>
										<td colspan="3"><%=request.getParameter("pcieSlot")%>
										<%
											session.setAttribute("pcieSlot", request.getParameter("pcieSlot"));
											%></td>
									</tr>
									<tr bgcolor="#FFFFFF">
										<th bgcolor="#F0F0F0" align="right" height="30">
											<div class="beginnerWrap">
												<div class="beginner">
													<font color=#3D3D3D>USBPort</font>&nbsp;
												</div>
											</div>
										</th>
										<td colspan="3"><%=request.getParameter("USBPort")%><%
											session.setAttribute("USBPort", request.getParameter("USBPort"));
											%></td>
									</tr>
									<tr bgcolor="#FFFFFF">
										<th bgcolor="#F0F0F0" align="right" height="30">
											<div class="beginnerWrap">
												<div class="beginner">
													<font color=#3D3D3D>Audio</font>&nbsp;
												</div>
											</div>
										</th>
										<td colspan="3"><%=request.getParameter("Audio")%>
											<%
											session.setAttribute("Audio", request.getParameter("Audio"));
											%></td>

									</tr>
									<tr bgcolor="#FFFFFF">
										<th bgcolor="#F0F0F0" align="right" height="30">
											<div class="beginnerWrap">
												<div class="beginner">
													<font color=#3D3D3D>OS</font>&nbsp;
												</div>
											</div>
										</th>
										<td colspan="3"><%=request.getParameter("OS")%> 
										<% session.setAttribute("OS", request.getParameter("OS"));%></td>
									</tr>

								</table>

								<div class="lastBtn">
									<div style="margin-bottom: 10px;">
												<button type="button"
													onclick="location.href='<%=request.getContextPath()%>/ProductServlet'">登録</button>
											</div>
								</div>
							</td>
						</tr>
					</table></td>
			</tr>
		</table>
	</div>
</body>

</html>