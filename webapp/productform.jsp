<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	request.setCharacterEncoding("UTF-8");
	
	String goodsID = request.getParameter("goodsID");
	String goodsName = request.getParameter("goodsName");
	String categories = request.getParameter("categories");
	String maker = request.getParameter("maker");
	String goodsValue = request.getParameter("goodsValue");
	String goodsPrice = request.getParameter("goodsPrice");
	String stock = request.getParameter("stock");
	String goodsStartDate = request.getParameter("goodsStartDate");
	String goodsEndDate = request.getParameter("goodsEndDate");
	String goodsAbout = request.getParameter("goodsAbout");
	String goodsFeatures = request.getParameter("goodsFeatures");
	String goodsImg = request.getParameter("goodsImg");
	String featImg = request.getParameter("featImg");
	

	session.setAttribute("goodsID", goodsID);
	session.setAttribute("goodsName", goodsName);
	session.setAttribute("categories", categories);
	session.setAttribute("maker", maker);
	session.setAttribute("goodsValue", goodsValue);
	session.setAttribute("goodsPrice", goodsPrice);
	session.setAttribute("stock", stock);
	session.setAttribute("goodsStartDate", goodsStartDate);
	session.setAttribute("goodsEndDate", goodsEndDate);
	session.setAttribute("goodsAbout", goodsAbout);
	session.setAttribute("goodsFeatures", goodsFeatures);
	session.setAttribute("goodsImg", goodsImg);
	session.setAttribute("featImg", featImg);


	// 遷移先
	String url = null;

	switch (categories) {
	case "102":
		url = "./desktop.jsp";
		break;
	case "101":
		url = "./laptop.jsp";
		break;
	case "202":
		url = "./GPU.jsp";
		break;
	case "203":
		url = "./mainboard.jsp";
		break;
	default:
		url = "/spec_registry2.jsp";
		break;
	}
	
	RequestDispatcher rd = request.getRequestDispatcher(url);
	rd.forward(request, response);
	%>
	
</body>
</html>