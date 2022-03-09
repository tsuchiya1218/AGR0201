<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import=" java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="./CSS/mailCheck.css">
	<title>メールアドレス確認</title> 
    <Script>     
        function mailCheck1(){
        	let regPos = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
        	let mail  = document.getElementById("mail");
        	
        	if(mail==null){
        		alert("メールアドレスを入力してください！");
        	}
    	    
            if(!regPos.test(mail.value)){
            	alert("正しいメールアドレスを入力してください！");
                mail.value = "";
	        }
        }
        
        function mailCheck2(){
        	let regPos = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
        	let mail  = document.getElementById("mail");
    	    let mailConfirm = document.getElementById("mailConfirm");
    	    
    	    if(mail==null){
        		alert("メールアドレスを入力してください！");
        	}
    	    
            if(!regPos.test(mailConfirm.value)){
            	alert("正しいメールアドレスを入力してください！");
                mailConfirm.value = "";
	        }else{
		        if(mail.value != mailConfirm.value){
		            alert("メールアドレスを確認してください！");
		            mailConfirm.value = "";
		        }
	        }

        }
      
    </Script>
</head>
<body>
	<form method="post" action="./mailConfirm" id="mailCheck">
            <div>
                <table class="check">
                    <tr>
                        <td>
                            <h3> <img src="img/P&C_logo.png" alt="logo" width="50px" height="50px"> メールアドレスを探す</h3>
                        </td>
                    </tr> 
                    <tr>
                        <td>
                            再設定用のメールアドレスを入力してください!
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" placeholder="メールアドレス" id="mail" name="mail1" onchange="mailCheck1()" style="width: 250px; height: 35px;"><br>
                        </td>  
                        
                    </tr>
                    <tr>
                    	<td>
                            <input type="text" placeholder="確認メールアドレス" id="mailConfirm" name="mail2" onchange="mailCheck2()"style="width: 250px; height: 35px;"><br>
                        </td>  
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" value="次へ"   style="width: 100px; height: 35px; margin-left: 160px; color: white; background-color: cornflowerblue;">
                        </td>   
                    </tr>
                </table>
            </div>
        </form>
        
</body>

</html>