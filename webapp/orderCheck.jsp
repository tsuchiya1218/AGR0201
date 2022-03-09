<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap" %>

<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="./css/order_check_union.css">
	<style>
		.calendar_container {
			display: none;
			position: absolute;
		}
		.calendar_container .wd0 {
			border-color: red;
			background: #FFB6C1;
		}
		.calendar_container .wd6 {
			border-color: blue;
			background: #ADD8E6;
		}
		.onclick_edit_item {
			display: none;
		}
	</style>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="./CSS/bootstrap.css">
	<title>注文管理</title>
</head>
<body topmargin="0" leftmargin="0" rightmargin="0" marginheight="0" marginwidth="0">
	<<img src="img/P&C_logo.png" style="margin-top: 2%;margin-left: 2%;width: 5%;height: 5%">
    <ul class="nav nav-pills nav-fill">
        <li class="nav-item">
            <a class="nav-link" href="productSearch.jsp">商品管理</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="orderSale.jsp">売り上げ管理</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" aria-current="page"  href="orderCheck.jsp">注文管理</a>
        </li>
        <li class="nav-item">
            <a class="nav-link "  href="userSearch.jsp">会員管理</a>
        </li>
    </ul>
	<table border="0" cellpadding="0" cellspacing="0" height="100%">
		<tr>
			<td width="200" height="100%" valign="top">
				<div class="sidenav">
					<ul class="sidenav-list">
						<li class="sidenav-title open">注文管理</li>
						<li class="sidenav-list-wrap open">
							<ul>
								<li><a class="sidenav-list-item active">注文検索</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</td>
			<td id="union_order" class="mainContents" valign="top">
				<div class="inner">
					<div class="page-head">
						<ul class="topic-path">
							<li><a href="orderCheck.jsp">注文管理</a> &gt; </li>注文管理 &gt; <li><a
									href="orderCheck.jsp">注文検索</a></li>
						</ul>
					</div>
					<div class="section" id="order_check_control" style"margin-bottom:20px;">
						<!-- 検索フォーム START -->
					<div id="orderCheck">
						<form name="form1" method="post" action="orderCheck">
							<table class="dft1 headBold mgnB8 widthFull" id="searchItemTable">
								<tr height="26" id="search_item0">
									<td colspan="5" id="order_search">
										<div id="calendarWrap" class="clearfix onclick_normal_item">
											<div id="calendarStart">
												注文日時:<br>
												<img src="./img/calendar-month.png" alt="注文日付" border="0" align="absmiddle">
												<div id="order_date_start_container" class="calendar_container"></div>
												<select size="1" name="orderDateYear"
													id="order_date_start_year">
													<option value="" selected>----</option>
													<option value="1999">1999</option>
													<option value="2000">2000</option>
													<option value="2001">2001</option>
													<option value="2002">2002</option>
													<option value="2003">2003</option>
													<option value="2004">2004</option>
													<option value="2005">2005</option>
													<option value="2006">2006</option>
													<option value="2007">2007</option>
													<option value="2008">2008</option>
													<option value="2009">2009</option>
													<option value="2010">2010</option>
													<option value="2011">2011</option>
													<option value="2012">2012</option>
													<option value="2013">2013</option>
													<option value="2014">2014</option>
													<option value="2015">2015</option>
													<option value="2016">2016</option>
													<option value="2017">2017</option>
													<option value="2018">2018</option>
													<option value="2019">2019</option>
													<option value="2020">2020</option>
													<option value="2021">2021</option>
													<option value="2022" selected>2022</option>
													<option value="2023">2023</option>
													<option value="2024">2024</option>
													<option value="2025">2025</option>
												</select>年
												<select size="1" name="orderDateMonth"
													id="orderDateMonth">
													<option value="" selected>--</option>
													<option value="01">1</option>
													<option value="02">2</option>
													<option value="03" selected>3</option>
													<option value="04">4</option>
													<option value="05">5</option>
													<option value="06">6</option>
													<option value="07">7</option>
													<option value="08">8</option>
													<option value="09">9</option>
													<option value="10">10</option>
													<option value="11">11</option>
													<option value="12">12</option>
												</select>月
												<select size="1" name="orderDateDay"
													id="orderDateDay">
													<option value="" selected>--</option>
													<option value="01">1</option>
													<option value="02">2</option>
													<option value="03"selected>3</option>
													<option value="04">4</option>
													<option value="05">5</option>
													<option value="06">6</option>
													<option value="07">7</option>
													<option value="08">8</option>
													<option value="09">9</option>
													<option value="10">10</option>
													<option value="11">11</option>
													<option value="12">12</option>
													<option value="13">13</option>
													<option value="14">14</option>
													<option value="15">15</option>
													<option value="16">16</option>
													<option value="17">17</option>
													<option value="18">18</option>
													<option value="19">19</option>
													<option value="20">20</option>
													<option value="21">21</option>
													<option value="22">22</option>
													<option value="23">23</option>
													<option value="24">24</option>
													<option value="25">25</option>
													<option value="26">26</option>
													<option value="27">27</option>
	 												<option value="28">28</option>
													<option value="29">29</option>
													<option value="30">30</option>
													<option value="31">31</option>
												</select>日
											</div><br>
											<input type="submit" value="検索">
								<br><br>
							</form>
						</div>	
							<form method="post" action="orderCheck">
								<div style="text-align: left;">
									注文番号:<br><input type="text" name="ordersID" style="margin-left: 0px;padding-left: 0px;">
									<input type="submit" value="検索">
								</div>
								<br><br>
							</form>
						</div>
					</div>
					<!-- END section -->
					<table id="searchResult" class="dft1 headBold mgnB8 widthFull">
						<tr>
							<th>番号</th>
							<th>注文番号</th>
							<th>注文日付</th>
							<th>注文者</th>
							<th>注文者番号</th>
							<th>決済方法</th>
							<th>金額</th>
							<th>配送方法</th>
							<th>削除</th>
						</tr>
						<tr>
										
						</tr>
					</table>
				</div>
			</td>
		</tr>

	</form>
</body>

</html>