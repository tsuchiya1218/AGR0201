<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="./CSS/mailCheck.css">
        <title>パスワード再設定</title>
       <% String mail = (String)session.getAttribute("mail");%>
	<Script>     
        function passCheck1(){
        	let regPos =  /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[^]{8,16}$/;
        	let password  = document.getElementById("password");
        	
        	if(password==null){
        		alert("パスワードを入力してください！");
        	}
    	    
            if(!regPos.test(password.value)){
            	alert("正しいパスワードを入力してください！");
            	password.value = "";
	        }
        }
        
        function passCheck2(){
        	let regPos =  /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[^]{8,16}$/;
        	let password  = document.getElementById("password");
    	    let passwordConfirm = document.getElementById("passwordConfirm");
    	    
    	    if(password==null){
        		alert("パスワードを入力してください！");
        	}
    	    
            if(!regPos.test(passwordConfirm.value)){
            	alert("正しいパスワードを入力してください！");
            	passwordConfirm.value = "";
	        }else{
		        if(password.value != passwordConfirm.value){
		            alert("確認パスワードをもう一度入力してください！");
		            passwordConfirm.value = "";
		        }
	        }

        }
    </Script>
</head>
<body>
    <div>
    	<form method="post" action="passwordUpdate" >
	       <table class="changePass">
	          <tr>
	             <td>
	             	<h3> <img src="img/P&C_logo.png" alt="logo" width="50px" height="50px"> パスワード再設定</h3>
	             </td>
	           </tr> 
	           <tr>
	             <td>
	             	<input type="hidden" id="mail" value="<%= mail %>" style="width: 250px; height: 35px;">
	           </tr> 
	           <tr>
	             <td> 確認コード:<input type="text"  value="123456"  style="width: 250px; height: 35px;"><br>
	              <input type="hidden"  value="test22@email.com" name="mail1" style="width: 250px; height: 35px;"></td>    
	           </tr>   
	           <tr>
	           		<td>パスワード:<input type="password" id="password"  name="password1" onchange="passCheck1()" style="width: 250px; height: 35px;"> </td>  
	           </tr>    
	           <tr>
	              <td>パスワード確認:<input type="password" id="passwordConfirm"  name="passwordConfirm1" onchange="passCheck2()" style="width: 250px; height: 35px;"></td>  
	           </tr>
	           <tr>
	               <td>
	                   <button  style="width: 100px; height: 35px;  color: white; background-color: cornflowerblue;" onclick="location.href='changePassFinish.html'">次へ</button>
	               </td>  
	           </tr>
	         </table>
         </form>
     </div>
<body>
</html>