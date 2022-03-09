<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>ログイン画面</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="robots" content="all">
<meta name="verify-v1"
	content="cAYAB4rzXExMNe8CLO33tSDNZGg65E2AI1XfmILcc6Q=">
<meta name="msvalidate.01" content="33937E43975F3005F16BA071C8C82A7C">
<link rel="icon" href="./img/P&C_logo.png" with hight="30px">
<link rel="alternate" type="application/rss+xml"
	title="Makeshop RSS feed"
	href="https://www.makeshop.jp/main/RSS/makeshop_rss.xml.html">
<link rel="author" href="/humans.txt">
<link rel="stylesheet" href="./CSS/login.css">
<link
	href="https://fonts.googleapis.com/earlyaccess/notosansjapanese.css"
	rel="stylesheet" />
</head>
<body id="login">
	<div class="wrap">
		<div class="login-contents">
			<div class="login-header">
				<a href=""><img src="./img/P&C_logo.png" alt="img"
					class="header-logo"></a>
			</div>
			<style type="text/css">
/* エラー用 */
div.alert {
	background-color: #FFEFEF;
	margin: 0 0 1em 0;
	padding: 10px;
	color: #C25338;
	border: 1px solid #D4440D;
	line-height: 1.5;
	clear: both;
	background-repeat: no-repeat;
	background-position: 5px 5px;
}

div.alert span {
	filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='/content/img/css/cancel_48.png',
		sizingMethod='scale');
	width: 48px;
	height: 48px;
	position: relative;
	top: -5px;
	left: -5px;
	display: block;
	text-indent: -9999px;
	float: left;
}

html>body div.alert {
	background-image: url(/content/img/css/cancel_48.png);
}

html>body div.alert span {
	visibility: hidden;
}
</style>
			<div class="alert">
				<span>警告</span> ログインIDまたはパスワードが正しくありません。再度入力してください
			</div>

			<div class="login-form">

				<form action="./AccountSearch" method="post" name="loginform"
					target="_parent" onSubmit="return validateLogin();">
					<input type="hidden" name="ssl" value="OK">

					<fieldset id="loginForm">
						<div class="form-item">
							<label for="shopid" class="form-label">社員ID</label> <input
								type="text" name="loginId" maxlength="12" value=""
								style="ime-mode: disabled;">
						</div>

						<div class="form-item">
							<label for="password" class="form-label">パスワード</label> <input
								type="password" name="pass" maxlength="12"
								style="ime-mode: disabled;">
							<p class="reminder-text">
								<a href="reminder.html">パスワードを忘れた方はこちら</a>
							</p>
						</div>

						<div class="form-button">
							<button type="submit" class="login-button">ログイン</button>

						</div>
					</fieldset>
				</form>
			</div>

		</div>
	</div>
	<script type="text/javascript">
		function validateLogin() {
			if (document.loginform.id.value == '') {
				alert('社員IDを入力してください。');
				document.loginform.id.focus();
				return false;
			}
			if (document.loginform.passwd.value == '') {
				alert('パスワードを入力してください。');
				document.loginform.passwd.focus();
				return false;
			}
			return true;
		}
		document.loginform.id.focus();
	</script>

</body>
</html>