<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="./CSS/bootstrap.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    
    <meta http-equiv="Content-Language" content="ja">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="Content-Style-Type" content="text/css">
    <meta http-equiv="Content-Script-Type" content="text/javascript">
    <title>おすすめ登録</title>


</head>

<body topmargin="0" leftmargin="0" rightmargin="0" marginheight="0" marginwidth="0">
    <img src="img/P&C_logo.png" style="margin-top: 2%;margin-left: 2%;width: 5%;height: 5%">
        <ul class="nav nav-pills nav-fill">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="productSearch.jsp">商品管理</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="orderSale.jsp">売り上げ管理</a>
        </li>
        <li class="nav-item">
            <a class="nav-link"   href="orderCheck.jsp">注文管理</a>
        </li>
        <li class="nav-item">
            <a class="nav-link "  href="userSearch.jsp">会員管理</a>
        </li>
    </ul>
    <div id="cover">
        <table border=0 cellpadding=0 cellspacing=0 width=878 height=100%>
            <tr>
                <td width=200 valign=top height=100% valign="top">
                    <link rel="stylesheet" href="css/beginner.css?1515994831">
                    <div class="sidenav">
                        <ul class="sidenav-list">
                            <li class="sidenav-title open">
                                商品の設定
                            </li>
                            <li class="sidenav-list-wrap open">
                                <ul>
                                    <li><a href="productSearch.jsp" class="sidenav-list-item">商品の検索</a></li>
                                    <li><a href="product_registry.jsp" class="sidenav-list-item">商品の登録</a></li>
                                    <li><a class="sidenav-list-item active">おすすめ登録</a></li>
                                   
                                    <li><a href="stockSearch.jsp" class="sidenav-list-item">在庫管理</a></li>

                                </ul>
                            </li>

                        </ul>
                    </div>
                </td>
                <td width=678 valign=top bgcolor=#FFFFFF style="padding:0px 5px 0px 5px;background:#F9F9F9;">
                   
                        <input type="hidden" name="brcode" value="" />
                        <table border=0 cellpadding=0 cellspacing=0 width=100% class="th">
                            <tr>
                                <td colspan="4">
                                    <div class="page-head">
                                        <ul class="topic-path">
                                            <li><a href="productSearch.jsp">商品管理</a> &gt; 商品の設定 &gt;
                                                <a href="product_registry2.jsp">おすすめ登録</a>
                                            </li>
                                        </ul>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan=5 align="center">
                                    <h4 class="subTitle">商品情報の入力</h4>
                                    <h5 class="largeTxt">商品の詳細情報を入力してください。</h5>
                                    
                                    <br />
                                    <!-- 商品情報入力フォーム -->
                                    <form name="form1" action="typeAddProduct" method="post">
	                                    <table border=0 cellpadding=2 cellspacing=1 bgcolor="#DADADA" width=100%
	                                        class="productInfoInput">
	                                        <tr bgcolor=#DADADA>
	                                            <td colspan=4 class=line height=1>&nbsp;</td>
	                                        </tr>
	                                        <tr bgcolor=#FFFFFF>
	                                            <th width=127 bgcolor="#F0F0F0" align=right valign=middle>
	                                                 <font color=#3D3D3D>商品ID</font> 
	                                            </th>
	                                            <td colspan=3>
	                                                <input name="goodsID"  type="text" value="" maxlength=255 style="width:300px;height:30px;"><br>
	                                                
	                                            </td>
	                                        </tr>
	                            
				                            <tr bgcolor=#FFFFFF class="itemDisplay">
				                                <th width=127 bgcolor="#F0F0F0" align=right>
				                                    <font color=#3D3D3D>用途</font>&nbsp;
				                                </th>
				                                <td colspan=3><select name="rID" size=1>
							                                        <option value='勉強' selected>勉強</option>
							                                        <option value='ビジネス'>ビジネス</option>
							                                        <option value='ゲーム'>ゲーム</option>
							                                    </select>
				                                </td>
				                            </tr>
				                            <tr>
				                            	<td><input type="hidden" value="登録" name="check"></td>
				                            	<td style="text-align:center;" ><input type="submit" value="登録する" style="width:180px;"></td>
				                            </tr>
	                        			</table>
                        		</form>
                        		
                        		<h4 class="subTitle">おすすめ商品情報の変更</h4>
                                
                        		<form name="form2" action="typeAddProduct" method="post">
	                                    <table border=0 cellpadding=2 cellspacing=1 bgcolor="#DADADA" width=100%
	                                        class="productInfoInput">
	                                        <tr bgcolor=#DADADA>
	                                            <td colspan=4 class=line height=1>&nbsp;</td>
	                                        </tr>
	                                        <tr bgcolor=#FFFFFF>
	                                            <th width=127 bgcolor="#F0F0F0" align=right valign=middle>
	                                                 <font color=#3D3D3D>商品ID</font> 
	                                            </th>
	                                            <td colspan=3>
	                                                <input name="goodsID"  type="text" value="" maxlength=255 style="width:300px;height:30px;"><br>
	                                               
	                                            </td>
	                                        </tr>
	                            
				                            <tr bgcolor=#FFFFFF class="itemDisplay">
				                                <th width=127 bgcolor="#F0F0F0" align=right>
				                                    <font color=#3D3D3D>用途</font>&nbsp;
				                                </th>
				                                <td colspan=3><select name="rID" size=1>
							                                        <option value='勉強' selected>勉強</option>
							                                        <option value='ビジネス'>ビジネス</option>
							                                        <option value='ゲーム'>ゲーム</option>
							                                    </select>
				                                </td>
				                            </tr>
				                            <tr>
				                            	<td><input type="hidden" value="変更" name="check"></td>
				                            	<td style="text-align:center;" ><input type="submit" value="登録する" style="width:180px;"></td>
				                            </tr>
	                        			</table>
                        		</form>
                		</td>
            		</tr>
        		</table>
      



</body>

</html>