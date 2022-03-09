<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ page import=" model.goods,java.util.ArrayList" %>
<!DOCTYPE html>
<html>

<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="./CSS/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="./CSS/product_delete.css">
    <link rel="stylesheet" type="text/css" href="./CSS/product_keyword.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
   
    <meta http-equiv="Content-Language" content="ja">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="Content-Style-Type" content="text/css">
    <meta http-equiv="Content-Script-Type" content="text/javascript">
    <title>在庫管理</title>
	<%	
		ArrayList<goods> list = null;
		list = (ArrayList<goods>)request.getAttribute("list");
	%>
	

</head>

<body bgcolor="#EEEBE1" topmargin="0" leftmargin="0" rightmargin="0" marginheight="0" marginwidth="0">
    <img src="img/P&C_logo.png" style="margin-top: 2%;margin-left: 2%;width: 5%;height: 5%">
       <ul class="nav nav-pills nav-fill">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="productSearch.jsp">商品管理</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="orderSale.jsp">売り上げ管理</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="orderCheck.jsp">注文管理</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="userSearch.jsp">会員管理</a>
        </li>
    </ul>
    <table border="0" cellpadding="0" cellspacing="0" width="878" height="100%">
        <tr>
            <td width=678 valign=top bgcolor=#FFFFFF style="padding:0px 5px 0px 5px;background:#F9F9F9;">
                <table border="0" cellpadding="0" cellspacing="0" width="878" height="100%">
                    <tr>
                        <td width="200" height="100%" valign="top">
                            <div class="sidenav">
                                <ul class="sidenav-list">
                                    <li class="sidenav-title open">
                                        商品の設定
                                    </li>
                                    <li class="sidenav-list-wrap open">
                                        <ul>
                                            <li><a href="productSearch.jsp" class="sidenav-list-item">商品の検索</a>
                                            </li>
                                            <li><a href="" class="sidenav-list-item">商品の登録</a></li>
                                            <li><a href="product_registry2.jsp" class="sidenav-list-item">おすすめ登録</a>
                                            </li>
                                            <li><a href="stockSearch.jsp" class="sidenav-list-item">商品の削除</a></li>
                                            <li><a class="sidenav-list-item active">在庫管理</a></li>
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
                                            <a href="product_quantity.html">在庫管理</a>
                                        </li>
                                    </ul>
                                </div>
                                
                                    <div id="searchResultArea">

                                        <table class="dft1 widthFull headBold" id="searchResult">
                                            <thead>
                                                <tr>
                                                    <th>商品名</th>
                                                    <th>商品ID</th>
                                                    <th>在庫数</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                             <%
                                    
		                                    	for(goods g:list){
		                                    		out.println("<tr>");
		                                    		out.println("<td>"+g.getGoodsName()+"</td>");
		                                    		out.println("<td>"+g.getGoodsID()+"</td>");
		                                    		out.println("<td>"+g.getStock()+"</td>");
		                                    		out.println("</tr>");
		                                    	}
                                    	
			                                 %>
			                                     <tr style="text-align: right;">
			                                     	<td></td>
			                                     	<td></td>
			                                     	<td>
			                                     		<button onclick="window.location.href='stockSearch.jsp'" style="width:100px;">戻る</button>
			                                     	</td>
			                                    </tr>
                                        </table>
                                    </div>

                            </div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</body>

</html>