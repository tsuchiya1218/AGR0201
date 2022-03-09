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
<script type="text/javascript"
	src="/js/jqueryplugin/makeshop_ckeditor/4.5.3/ckeditor.js"></script>
<script src="/js/makeshop/form/textarea.js"></script>
<meta http-equiv="Content-Language" content="ja">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Style-Type" content="text/css">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<title>おすすめ登録</title>


</head>

<body topmargin="0" leftmargin="0" rightmargin="0" marginheight="0"
	marginwidth="0">
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
	<form action="./Product_Search" method="post">
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
						style="padding: 0px 5px 0px 5px; background: #F9F9F9;">
						<form action="/makeshop/newmanager/product_registry.html"
							method=post style="margin: 0;">
							<input type="hidden" name="brcode" value="" />
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
										<h4 class="subTitle">GPUの仕様詳細入力</h4>
										<h5 class="largeTxt">商品の仕様詳細情報を入力してください。</h5> <input
										type="hidden" name="selected_base_category_uid" value="" /> <br />
										<!-- 商品情報入力フォーム -->
										<table border=0 cellpadding=2 cellspacing=1 bgcolor="#DADADA"
											width=100% class="productInfoInput">
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
															<font color=#3D3D3D>GraphicEngine</font>&nbsp;
														</div>
													</div>
												</th>
												<td colspan="3"><%=request.getParameter("GraphicEngine")%>
													<%
													session.setAttribute("GraphicEngine", request.getParameter("GraphicEngine"));
													%></td>
											</tr>
											<tr bgcolor="#FFFFFF">
												<th bgcolor="#F0F0F0" align="right" height="30">
													<div class="beginnerWrap">
														<div class="beginner">
															<font color=#3D3D3D>BusStandard</font>&nbsp;
														</div>
													</div>
												</th>
												<td colspan="3"><%=request.getParameter("BusStandard")%>
													<%
													session.setAttribute("BusStandard", request.getParameter("BusStandard"));
													%></td>
											</tr>
											<tr bgcolor="#FFFFFF">
												<th bgcolor="#F0F0F0" align="right" height="30">
													<div class="beginnerWrap">
														<div class="beginner">
															<font color=#3D3D3D>OpenGL</font>&nbsp;
														</div>
													</div>
												</th>
												<td colspan="3"><%=request.getParameter("OpenGL")%> <%
 session.setAttribute("OpenGL", request.getParameter("OpenGL"));
 %></td>
											</tr>
											<tr bgcolor="#FFFFFF">
												<th bgcolor="#F0F0F0" align="right" height="30">
													<div class="beginnerWrap">
														<div class="beginner">
															<font color=#3D3D3D>VideoMemory</font>&nbsp;
														</div>
													</div>
												</th>
												<td colspan="3"><%=request.getParameter("VideoMemory")%>
													<%
													session.setAttribute("VideoMemory", request.getParameter("VideoMemory"));
													%></td>
											</tr>
											<tr bgcolor="#FFFFFF">
												<th bgcolor="#F0F0F0" align="right" height="30">
													<div class="beginnerWrap">
														<div class="beginner">
															<font color=#3D3D3D>EngineClock</font>&nbsp;
														</div>
													</div>
												</th>
												<td colspan="3"><%=request.getParameter("EngineClock")%>
													<%
													session.setAttribute("EngineClock", request.getParameter("EngineClock"));
													%></td>
											</tr>
											<tr bgcolor="#FFFFFF">
												<th bgcolor="#F0F0F0" align="right" height="30">
													<div class="beginnerWrap">
														<div class="beginner">
															<font color=#3D3D3D>CUDACore</font>&nbsp;
														</div>
													</div>
												</th>
												<td colspan="3"><%=request.getParameter("CUDACore")%> <%
 session.setAttribute("CUDACore", request.getParameter("CUDACore"));
 %></td>
											</tr>
											<tr bgcolor="#FFFFFF">
												<th bgcolor="#F0F0F0" align="right" height="30">
													<div class="beginnerWrap">
														<div class="beginner">
															<font color=#3D3D3D>MemorySpeed</font>&nbsp;
														</div>
													</div>
												</th>
												<td colspan="3"><%=request.getParameter("MemorySpeed")%>
													<%
													session.setAttribute("MemorySpeed", request.getParameter("MemorySpeed"));
													%></td>
											</tr>
											<tr bgcolor="#FFFFFF">
												<th bgcolor="#F0F0F0" align="right" height="30">
													<div class="beginnerWrap">
														<div class="beginner">
															<font color=#3D3D3D>Resolution</font>&nbsp;
														</div>
													</div>
												</th>
												<td colspan="3"><%=request.getParameter("Resolution")%>
													<%
													session.setAttribute("Resolution", request.getParameter("Resolution"));
													%></td>
											</tr>
											<tr bgcolor="#FFFFFF">
												<th bgcolor="#F0F0F0" align="right" height="30">
													<div class="beginnerWrap">
														<div class="beginner">
															<font color=#3D3D3D>Interface</font>&nbsp;
														</div>
													</div>
												</th>
												<td colspan="3"><%=request.getParameter("Interface")%>
													<%
													session.setAttribute("Interface", request.getParameter("Interface"));
													%></td>

											</tr>
											<tr bgcolor="#FFFFFF">
												<th bgcolor="#F0F0F0" align="right" height="30">
													<div class="beginnerWrap">
														<div class="beginner">
															<font color=#3D3D3D>Dimension</font>&nbsp;
														</div>
													</div>
												</th>
												<td colspan="3"><%=request.getParameter("Dimension")%>
													<%
													session.setAttribute("Dimension", request.getParameter("Dimension"));
													%></td>
											</tr>
										</table> <br>
										<div class="lastBtn">
											<div style="margin-bottom: 10px;">
												<button type="button"
													onclick="location.href='<%=request.getContextPath()%>/ProductServlet'">登録</button>
											</div>
										</body>

										
										
</body>
</html>