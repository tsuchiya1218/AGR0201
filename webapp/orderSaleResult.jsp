<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import=" model.orders,java.util.ArrayList" %>
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
    
    
    <% 
		ArrayList<orders> list = (ArrayList<orders>)request.getAttribute("list"); 
	%>

</head>

<body bgcolor="#EEEBE1" topmargin="0" leftmargin="0" rightmargin="0" marginheight="0" marginwidth="0">
    <img src="img/P&C_logo.png" style="margin-top: 2%;margin-left: 2%;width: 5%;height: 5%">
    <ul class="nav nav-pills nav-fill">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="./product_registry.html">商品管理</a>
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
                    	<table border=0 cellpadding=0 cellspacing=1 width=650 bgcolor=#DADADA>
                    		<tr bgcolor=#F0F0F0 height=34>
                       			 <td align=right colspan=3> </td>
                   			 </tr>
	                         <% 
	                         int sum = 0;
	                         for(orders order:list){
	                        	 String day1 = order.getOrdersDate();
	                        	 
	                        	 String[] day =day1.split("-"); 
	                        	 day[2] = day[2].substring(1,2);
	                        	 out.println("<tr bgcolor=#FFFFFF height=53>");
	                        	 out.println("<th align=center>"+ day[2] +"日</th>");
	                        	 out.println("<td align=center>"+ order.getOrdersPaymentSum()+"円</td>");
	                        	 out.println("</tr>");
	                        	 sum += order.getOrdersPaymentSum();
	                         }
		                         out.println("<tr bgcolor=#FFFFFF height=53>");
	                        	 out.println("<th align=center>合計売り上げ</th>");
	                        	 out.println("<td align=center>"+ sum +"円</td>");
	                        	 out.println("</tr>");
		                         
	                         %>
	                         <tr bgcolor=#FFFFFF height=53>
	                        	 <th align=center></th>
	                        	 <td align=center><button onclick="window.location.href='productSearch.jsp'" style="width:80px;">戻る</button></td>
	                        	 </tr>
                         </table>
                      
                    </tr>
                </table>
            </td>
      
        </tr>   
   	</table>
</body>

</html>