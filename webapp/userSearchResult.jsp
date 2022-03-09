<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import=" model.user,java.util.ArrayList" %>
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
	<% int number = 1;
		ArrayList<user> list = (ArrayList<user>)request.getAttribute("list"); 
	%>
</head>

<body bgcolor="#EEEBE1" topmargin="0" leftmargin="0" rightmargin="0" marginheight="0" marginwidth="0">
    <img src="img/P&C_logo.png" style="margin-top: 2%;margin-left: 2%;width: 5%;height: 5%">
    <ul class="nav nav-pills nav-fill">
        <li class="nav-item">
            <a class="nav-link active"  aria-current="page" href="productSearch.jsp">商品管理</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="orderSale.jsp">売り上げ管理</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="orderCheck.jsp">注文管理</a>
        </li>
        <li class="nav-item">
            <a class="nav-link "  href="userSearch.jsp">会員管理</a>
        </li>
    </ul>
    <table border=0 cellpadding=0 cellspacing=0 width=878 height=100%>
        
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
                     <% 
                     	for(user u:list){
                     		out.println("<tr bgcolor=#F0F0F0 height=26>");
	                     		out.println("<td align=center width=35>"+ number++ +"</td>");
	                     		out.println("<td align=center width=68>"+ u.getRegisterDate() +"</td>");
	                     		out.println("<td align=center width=68>"+ u.getUserID() +"</td>");
	                     		out.println("<td align=center width=68>"+ u.getUserName() +"</td>");
	                     		out.println("<td align=center width=68>"+ u.getBirth() +"</td>");
	                     		out.println("<td align=center width=68>"+ u.getTel() +"</td>");
	                     		out.println("<td align=center width=68>"+ u.getAddress() +"</td>");
	                     	out.println("</tr>");
                     	}    
	                       
                     %>
                     <tr>
							<td Style="border:0px;"></td>
							<td Style="border:0px;"></td>
							<td Style="border:0px;"></td>
							<td Style="border:0px;"></td>
							<td Style="border:0px;"></td>
							<td Style="border:0px;"></td>
							<td Style="border:0px; text-align: center;"><button onclick="window.location.href='userSearch.jsp'" style="width:80px;">戻る</button></td>
						</tr>
                 </table>
             </td>
         </tr>
           
      </table>
  
</body>

</html>