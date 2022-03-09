<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="./CSS/bootstrap.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    
    <meta http-equiv="Content-Language" content="ja">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="Content-Style-Type" content="text/css">
    <title>売上照合</title>
    
</head>

<body bgcolor="#EEEBE1" topmargin="0" leftmargin="0" rightmargin="0" marginheight="0" marginwidth="0">
    <img src="img/P&C_logo.png" style="margin-top: 2%;margin-left: 2%;width: 5%;height: 5%">
    <ul class="nav nav-pills nav-fill">
        <li class="nav-item">
            <a class="nav-link "  href="productSearch.jsp">商品管理</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" aria-current="page"  href="orderSale.jsp">売り上げ管理</a>
        </li>
        <li class="nav-item">
            <a class="nav-link "  href="orderCheck.jsp">注文管理</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="userSearch.jsp">会員管理</a>
        </li>
    </ul>
    <table border=0 cellpadding=0 cellspacing=0 width=878 height=100%>
        <tr>
            <td width=200 height=100% valign="top">
                <div class="sidenav">
                    <ul class="sidenav-list">
                        <li class="sidenav-title open">注文管理</li>
                        <li class="sidenav-list-wrap open">
                            <ul>
                                <li><a class="sidenav-list-item active">商品売上照合</a></li>
                                <li><a href="orderSale.jsp" class="sidenav-list-item">商品売上照合</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </td>
            <td width=678 valign=top bgcolor=#FFFFFF style="padding:0px 5px 0px 5px;background:#F9F9F9;">
                <table border=0 cellpadding=0 cellspacing=0 width=100%>
                    <tr>
                        <td colspan=4>
                            <div class="page-head">
                                <ul class="topic-path">
                                    <li><a href="orderSale.jsp">売上一覧</a> &gt; </li>売上一覧 &gt; <li><a
                                            href="orderSale.jsp">商品売上照合</a></li>
                                </ul>
                            </div>
                        </td>
                    </tr>
                    <tr height=34>
                        <td class=line width=8 rowspan=3>&nbsp;</td>
                        <td width=150><img src="img/iarrow.gif" align=absmiddle>&nbsp;<b>商品売上照会</b></td>
                        <td width=505 align=right valign=bottom>
                            <font color=#3D3D3D>&nbsp;</font>
                        </td>
                      
                    </tr>
                    <tr>
                        <td colspan=2 class=line height=4>&nbsp;</td>
                    </tr>
                    <tr>
                        <form name=form1 action="orderSale" method=post>
                            <input type=hidden name=type>
                            <input type=hidden name=srh value=Y>
                            <input type=hidden name=page>
                            <td colspan=2 align="center">
                                <table border=0 cellpadding=0 cellspacing=1 bgcolor=#DADADA width=100%>
                                    <tr bgcolor=#DADADA>
                                        <td colspan=6 class=line height=2>&nbsp;</td>
                                    </tr>
                                    <tr bgcolor=#FFFFFF height=26>
                                        <td width=70 bgcolor=#F0F0F0 align=right>
                                            <font color=#3D3D3D>期間</font>&nbsp;&nbsp;
                                        </td>
                                        <td width=170>&nbsp;<select name="years">
                                             
                                                <option value=2005>2005</option>
                                                <option value=2006>2006</option>
                                                <option value=2007>2007</option>
                                                <option value=2008>2008</option>
                                                <option value=2009>2009</option>
                                                <option value=2010>2010</option>
                                                <option value=2011>2011</option>
                                                <option value=2012>2012</option>
                                                <option value=2013>2013</option>
                                                <option value=2014>2014</option>
                                                <option value=2015>2015</option>
                                                <option value=2016>2016</option>
                                                <option value=2017>2017</option>
                                                <option value=2018>2018</option>
                                                <option value=2019>2019</option>
                                                <option value=2020>2020</option>
                                                <option value=2021>2021</option>
												<option value=2022 selected>2022</option>
                                                <option value=2023>2023</option>
                                                <option value=2024>2024</option>
                                                <option value=2025>2025</option>
                                                <option value=2026>2026</option>
                                                <option value=2027>2027</option>
                                            </select>年
                                            <select name="months">
                                                <option value=0>--</option>
                                                <option value=01>1</option>
                                                <option value=02>2</option>
                                                <option value=03 selected >3</option>
                                                <option value=04>4</option>
                                                <option value=05>5</option>
                                                <option value=06>6</option>
                                                <option value=07>7</option>
                                                <option value=08>8</option>
                                                <option value=09>9</option>
                                                <option value=10>10</option>
                                                <option value=11>11</option>
                                                <option value=12>12</option>
                                            </select>月
                                        </td>
                                        <td> <input type="submit" value="検索" style="padding-left:" 150px;" ></td>
                                    </tr>
                		</table>
            		</td>
            	</form>
        	</tr>   
   	 </table>
</body>

</html>