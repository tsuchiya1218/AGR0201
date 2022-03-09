<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                                <form action="stockSearch" name="form1" method="post">
                                    <input type="hidden" name="page" value="1" />
                                    <input type="hidden" name="selected_category_uid" value="" />
                                    <div id="searchArea" class="mgnB24 mgnT8">
                                        <table class="dft1 widthFull" id="searchTable">
                                            <tr>
                                                <h4 class="subTitle">商品情報の入力</h4>
                                                <h5 class="largeTxt">商品の詳細情報を入力してください。</h5>
                                                <input type="hidden" name="selected_base_category_uid" value="" />
                                            </tr>
                                            <br>
                                            <tr>
                                                <th>商品コード</th>
                                                <td>
                                                    <input type="text" value="" size="50" name="goodsID">
                                                </td>
                                            </tr>
                                        </table>  
	                                        <div class="alignC mgnT16">
	                                			<input type="submit" value="検索" style="width:150px;">
	                                       
	                           				 </div>
                                    </div>
                                    
                                </form>
                                <form method="post" action="stockUpdate">
                                	  <div id="searchArea" class="mgnB24 mgnT8">
                                        <table class="dft1 widthFull" id="searchTable">
                                            <tr>
                                                <h4 class="subTitle">在庫数変更</h4>
                                                <h5 class="largeTxt">商品のコードと変更したい在庫数を入力してください。</h5>
                                           
                                            </tr>
                                            <br>
                                            <tr>
                                                <th>商品コード</th>
                                                <td>
                                                    <input type="text" value="" size="50" name="goodID">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>在庫数</th>
                                                <td>
                                                    <input type="text" value="" size="50" name="stock">
                                                </td>
                                            </tr>
                                        </table>  
	                                        <div class="alignC mgnT16">
	                                			<input type="submit" value="変更" style="width:150px;">
	                                       
	                           				 </div>
                                    </div>
                                </form>

                            </div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>

</body>

</html>