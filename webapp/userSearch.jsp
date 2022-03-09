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
    <meta http-equiv="Content-Script-Type" content="text/javascript">
    <title>会員管理</title>


</head>

<body bgcolor="#EEEBE1" topmargin="0" leftmargin="0" rightmargin="0" marginheight="0" marginwidth="0">
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
            <a class="nav-link active" aria-current="page" href="userSearch.jsp">会員管理</a>
        </li>
    </ul>
    <table border=0 cellpadding=0 cellspacing=0 width=878 height=100%>
        <tr>
            <td width=200 valign="top" height=100%>
                <div class="sidenav">
                    <ul class="sidenav-list">
                        <li class="sidenav-title open">会員検索</li>
                </div>
            </td>
            <td width=678 valign=top bgcolor=#FFFFFF style="padding:0px 5px 0px 5px;background:#F9F9F9;">
                <table border=0 cellpadding=0 cellspacing=0 width=100%>
                    <tr>
                        <td colspan="4">
                            <div class="page-head">
                                <ul class="topic-path">
                                    <li><a href="userSearch.jsp">会員管理</a> &gt; </li>会員の設定&gt; <li><a
                                            href="userSearch.jsp">会員・紹介者の設定</a></li>
                                </ul>
                            </div>
                        </td>
                    </tr>
                    <tr> </tr>
                    <tr height=14>
                        <td class=line width=8 rowspan=3>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class=line width=7 rowspan=3>&nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center">
                                <table border=0 cellpadding=0 cellspacing=1 bgcolor=#DADADA width=100%>
                                    <tr bgcolor=#DADADA>
                                        <td colspan=4 class=line height=2>&nbsp;</td>
                                    </tr>
                                    <tr bgcolor=#F0F0F0 height=26>
                                        <td align=center>
                                            <font color=#3D3D3D>会員検索</font>
                                        </td>
                                    </tr>
                                    <tr bgcolor=#FFFFFF height=179>
                                        <td valign=top align="center">
                                        
                                        <form method="post" name="searchUserForm" action="userSearch">
                                            <table border=0 cellpadding=0 cellspacing=0 width=100%>
                                                <tr>
                                                    <td width=5 rowspan=27 class=line>&nbsp;</td>
                                                    <td width=5 class=line height=5>&nbsp;</td>
                                                    <td width=18 class=line height=5>&nbsp;</td>
                                                    <td width=567 class=line height=5>&nbsp;</td>
                                                    <td width=5 class=line height=5>&nbsp;</td>
                                                </tr>
                                               	<tr>
                                               		<td><input type="text"  name="searchUser" style="width:250px;height:30px"></td>
                                               	</tr>

                                               	<tr>  <td class=line>&nbsp;</td></tr> 
                                                <tr>
                                                    <td colspan=3><input type="radio" name="userCheck" checked value="userName"> 会員を名前で検索する</td>
                                                </tr>
                                                
												<tr>  <td class=line>&nbsp;</td></tr> 
                                                <tr>
                                                    <td colspan=3><input type="radio" name="userCheck" value="userMail"> 会員をメールアドレスで検索する</td>
                                                </tr>
                                                
                                                <tr>  <td class=line>&nbsp;</td></tr> 
                                                <tr>
                                                    <td colspan=3><input type="submit"  value="検索"></td>
                                                </tr>
                                            </table>
                                          </form>
                                          
                                        </td>
                                    </tr>
                                </table>
                        </td>
                    </tr>
                    <tr>
                        <td colspan=4 align=center>
                            <table border=0 cellspacing=1 cellpadding=0 width=100% bgcolor=#DADADA>
                               <tr>
                                <h4 class="subTitle">検索結果</h4>
                               </tr>
                                <tr bgcolor=#DADADA height=26>
                                    <td align=center width=35>番号</td>
                                    <td align=center width=68>登録日</td>
                                    <td align=center width=99>ID</td>
                                    <td align=center width=89>名前</td>
                                    <td align=center width=88>生年月日</td>
                                    <td align=center width=98>連絡先</td>
                                    <td align=center width=58>住所</td>
                                </tr>
                                
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td colspan=4 height=25>&nbsp;</td>
                    </tr>
                    <tr> </tr>
                </table>
            </td>
        </tr>
    </table>
</body>

</html>