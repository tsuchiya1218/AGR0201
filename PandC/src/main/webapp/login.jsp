<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja" class="h-100">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>P&C Pick And Choose PC Shopping Site</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
	crossorigin="anonymous">
	
</script>

</head>
<body class="d-flex flex-column h-100 bg-light">

	<header class="site-header text-center">
		<a href="/PandC/index.jsp"> <img class="mt-4" src="/PandC/img/P&C_logo.png"
			alt="" width="80" height="80" role="img" aria-label="Bootstrap">
		</a>
	</header>
	<hr>

	<main class="col-lg-10 mx-auto p-1 py-md-3">
		<div class="row g-5">
			<div class="col-md-6 border rounded-start p-4">
				<h2>サインイン</h2>
				<form action="./UserLoginController" method="POST">
					<div class="form-floating">
						<input type="email" class="form-control w-75" name="mail" id="floatingInput"
							placeholder="name@example.com"> <label
							for="floatingInput">メールアドレス</label>
					</div>
					<div class="form-floating">
						<input type="password" class="form-control w-75 my-2" name="pass"
							id="floatingPassword" placeholder="Password"> <label
							for="floatingPassword">パスワード</label>
					</div>

					<div class="checkbox mb-3">
						<label> <input type="checkbox" value="remember-me">
							Remember me
						</label>
					</div>
					<button class="w-50 btn btn-outline-primary my-2" type="submit">サインイン</button>
				</form>
				<div>
					<a data-bs-toggle="collapse" href="#collapseExample" role="button"
						aria-expanded="false" aria-controls="collapseExample">パスワード忘れた？</a>
					<div class="collapse" id="collapseExample">
						<div class="my-3">
							<p>
								アカウント作成時に登録したEメールアドレスを入力し、<strong>「パスワードのリセット」</strong>をクリックします。<br>
								パスワードをリセットするページへのリンクをEメールでお送りします。
							</p>
							<form action="./mail/pw_link.jsp" method="POST">
								<div class="">
									<label>メールアドレス</label> <input type="email"
										class="form-control w-75" placeholder="name@example.com">
									<button class="w-50 btn btn-primary my-2" type="submit">パスワードのリセット</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>

			<div
				class="col-md-6 bg-light p-4 border-top border-end border-bottom rounded-end">
				<h2>アカウントの作成</h2>
				<form action="./UserRegistrationController" method="POST">
					<div class="form-floating">
						<input type="text" class="form-control" name="lastname" id="floatingInput"
							placeholder=""> <label for="floatingInput">性<span
							class="text-danger">*</span></label>
					</div>
					<div class="form-floating">
						<input type="text" class="form-control my-2" name="firstname" id="floatingInput"
							placeholder=""> <label for="floatingInput">名<span
							class="text-danger">*</span></label>
					</div>
					<div class="form-floating">
						<input type="email" class="form-control my-2" name="mail" id="floatingInput"
							placeholder=""> <label for="floatingInput">メールアドレス<span
							class="text-danger">*</span></label>
					</div>
					<div class="form-floating">
						<input type="password" class="form-control my-2" name="pass"
							id="floatingPassword" placeholder=""> <label
							for="floatingPassword">パスワード<span class="text-danger">*</span></label>
					</div>
					<div class="form-floating">
						<input type="password" class="form-control my-2"
							id="floatingPassword" placeholder=""> <label
							for="floatingPassword">パスワード（確認)<span class="text-danger">*</span></label>
					</div>
					<div>
						<p class="text-muted text-decoration-underline">
							<span class="text-danger">*</span>パスワードの長さは8文字以上にする必要があり、その中には1つの大文字、1つの小文字、1つの数字が含まれている必要があります。
							<br>・Eメールアドレスに以下の記号はご使用いただけません。! # $ % & * + / = ? ^ { | } ~
						</p>
					</div>

					<div class="checkbox mb-3">
						<label> <input type="checkbox" value="remember-me">
							自社のポリシーを同意する。
						</label>
					</div>
					<button class="w-100 btn btn-primary my-2" type="submit">アカウントの作成</button>
					<button class="w-100 btn btn-outline-primary my-2" type="button">法人のアカウントの新規作成</button>
					<p class="mt-5 mb-3 text-muted">&copy; 2021 CBL ,Inc. All
						rights reserved.</p>
				</form>
			</div>
		</div>
	</main>

	<jsp:include page="views/layouts/footer.jsp" />

</body>
</html>