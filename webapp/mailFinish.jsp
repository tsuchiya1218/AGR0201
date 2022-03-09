<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<% String mail =(String)session.getAttribute("mail");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./CSS/mailCheck.css">
<title>メールアドレス送信</title>
</head>
<body>
	<div>
      <table class="check">
          <tr>
              <td>
                  <h3> <img src="img/P&C_logo.png" alt="logo" width="50px" height="50px"> メールが送りました！</h3>
              </td>
          </tr> 
          <tr>
              <td>
                  これは、このアカウントが本当にあなたのものであることを証明するのに役立ちます！
              </td>
          </tr>
          <tr>
              <td>
                  6桁の確認コードがメール経由で次の番号に送信されました：<%= mail %>
              </td>
          </tr>
          <tr>
              <td>
                  <input type="submit" value="完了" style="width: 100px; height: 35px; margin-left: 160px; color: white; background-color: cornflowerblue;">
              </td>   
          </tr>
      </table>
    </div>
</body>
</html>