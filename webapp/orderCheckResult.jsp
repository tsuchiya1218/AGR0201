<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.ArrayList" %>

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
	<%	int number = 1;
		HashMap<String,String> map = (HashMap<String,String>)request.getAttribute("map");
		ArrayList<HashMap<String,String>> maplist = (ArrayList<HashMap<String,String>>)request.getAttribute("maplist");
		String msg = (String)request.getAttribute("null");
	%>
	
</head>
<body topmargin="0" leftmargin="0" rightmargin="0" marginheight="0" marginwidth="0">
	<img src="img/P&C_logo.png" style="margin-top: 2%;margin-left: 2%;width: 5%;height: 5%">
    <ul class="nav nav-pills nav-fill">
        <li class="nav-item">
            <a class="nav-link" href="productSearch.jsp">商品管理</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="orderSale.jsp">売り上げ管理</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="orderCheck.jsp">注文管理</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="./member_user.html">会員管理</a>
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
							<li><a href="orderCheck.jsp">注文管理 &gt;</a></li>
							<li>注文一覧</li>
						</ul>
					</div>
					<table id="searchResult" class="dft1 headBold mgnB8 widthFull" >
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
						
						<%  
							if(map!=null && maplist==null){
								out.println("<tr>");
								out.println("<td>"+ number++ +"</td>");
								out.println("<td>"+ map.get("注文番号") +"</td>");
								out.println("<td>"+ map.get("注文日付") +"</td>");
								out.println("<td>"+ map.get("注文者") +"</td>");
								out.println("<td>"+ map.get("注文者番号") +"</td>");
								out.println("<td>"+ map.get("決済方法") +"</td>");
								out.println("<td>"+ map.get("金額") +"</td>");
								out.println("<td>"+ map.get("配送方法") +"</td>");
								out.println("<td>" +
										"<form method='post' action='orderDelete'><input type='hidden' value='" + map.get("注文番号") + "'><input type='submit' value='削除'></form>" +
											"</td>");
								out.println("</tr>");
							}else if(maplist!=null && map==null){
								for(HashMap<String,String> hmap:maplist){
									out.println("<tr>");
									out.println("<td>"+ number++ +"</td>");
									out.println("<td>"+ hmap.get("注文番号") +"</td>");
									out.println("<td>"+ hmap.get("注文日付") +"</td>");
									out.println("<td>"+ hmap.get("注文者") +"</td>");
									out.println("<td>"+ hmap.get("注文者番号") +"</td>");
									out.println("<td>"+ hmap.get("決済方法") +"</td>");
									out.println("<td>"+ hmap.get("金額") +"</td>");
									out.println("<td>"+ hmap.get("配送方法") +"</td>");
									out.println("<td>" +
											"<form method='post' action='orderDelete'><input type='hidden' value='" + hmap.get("注文番号") + "' name='ordersID'><input type='submit' value='削除'></form>" +
												"</td>");																
									out.println("</tr>");
								}
							}else if(msg!=null && map == null && maplist == null){
								out.println("<td>0</td>");
								out.println("<td style:'text-center:center';>該当注文がありません</td>");
							}
						%>
						<tr>
							<td Style="border:0px;"></td>
							<td Style="border:0px;"></td>
							<td Style="border:0px;"></td>
							<td Style="border:0px;"></td>
							<td Style="border:0px;"></td>
							<td Style="border:0px;"></td>
							<td Style="border:0px;"></td>
							<td Style="border:0px;"></td>
							<td Style="border:0px;"><button onclick="window.location.href='orderCheck.jsp'" style="width:70px;">戻る</button></td>
						</tr>					
					</table>
				</div>		
			</td>
		</tr>
	</table>
</body>

</html>