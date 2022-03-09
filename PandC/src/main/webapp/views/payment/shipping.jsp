<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.user,model.good,model.cart,java.util.ArrayList"%>

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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link href="css/carousel.css" rel="stylesheet">
<%
String u_name[];
String last_name = null;
String first_name = null;
String u_mail = null;
String tel = null;
String zip = null;
String[] addr = null;
String prefectures = null;
String city = null;
String town = null;
String house_number = null;
String building = null;
int login_status = (Integer) session.getAttribute("login_status");
if(login_status == 0)  {
	response.sendRedirect("/PandC/login.jsp");
}else {
	@SuppressWarnings("unchecked")
	ArrayList<user> name = (ArrayList<user>) session.getAttribute("u_info");
	for (user u : name) {
		u_name = u.getUserName().split(" ",2);
		last_name = u_name[0];
		first_name = u_name[1];
		u_mail = u.getUserMail();
		tel = u.getTel();
		zip = u.getZip();
		if (u.getAddress() == null)
			addr = null;
		else{
			addr = u.getAddress().split(",");
			prefectures = addr[0];
			city = addr[1];
			town = addr[2];
			house_number = addr[3];
			building = addr[4];
		}
	}
}
int amount = (Integer) session.getAttribute("amount");
int sale_off = (Integer) session.getAttribute("sale_off");
int total_price = (Integer) session.getAttribute("t_price");

%>

</head>
<body class="d-flex flex-column h-100">

	<jsp:include page="../layouts/header.jsp" />

	<main class="flex-shrink-0">
		<div class="container py-3">
			<div class="text-center mb-5">
				<h3>ご注文手続き</h3>
			</div>
			<div class="progress mx-auto my-4" style="height: 3px; width: 75%">
				<div
					class="progress-bar progress-bar-striped progress-bar-animated bg-danger"
					role="progressbar" style="width: 33%;" aria-valuenow="100"
					aria-valuemin="0" aria-valuemax="100"></div>
			</div>
			<form action="<%= request.getContextPath() %>/OrderController" method="POST" class="needs-validation"
				novalidate>
				<input type="hidden" name="payment" value="0">
				<div class="row g-5 mb-5">
					<div class="col-md-5 col-lg-4 order-md-last">
						<ul class="list-group my-3">
							<li class="list-group-item d-flex justify-content-between lh-sm">
							<div>
								<h6 class="my-0 text-danger"><%=sale_off %>円 割引額合計</h6>
								<small class="text-muted">Brief description</small>
							</li>
							<li class="list-group-item d-flex justify-content-between lh-sm">
								<div>
									<h6 class="my-0">小計（税別）</h6>
									<small class="text-muted">(<%=amount %>つの 商品)</small>
								</div> <span class="text-muted"><%=(int) total_price - (int)(total_price*0.1) %>円</span>
							</li>
							<li class="list-group-item d-flex justify-content-between lh-sm">
								<div>
									<h6 class="my-0">消費税</h6>
								</div> <span class="text-muted"><%=(int)(total_price*0.1) %>円</span>
							</li>
							<li
								class="list-group-item d-flex justify-content-between bg-light">
								<div class="text-success">
									<h6 class="my-0 fw-bold">合計金額</h6>
									<small>税込・配送料込</small>
								</div> <span class="text-success fw-bold"><%=total_price %>円</span>
							</li>
						</ul>


						<div class="mb-3">
							<button class="w-100 btn btn-primary btn-lg" type="submit">お支払情報へ進む</button>
						</div>

					</div>
					<div class="col-md-7 col-lg-8">
						<div>
							<h4>配送先 / 連絡先</h4>
							<p>漢字/カナは全角、英数字/ハイフンは半角で入力してください。 * は必須項目です</p>
						</div>

						<div class="row g-3">
							<div class="col-sm-6">
								<label for="lastName" class="form-label">性</label> <input
									type="text" class="form-control" id="lastName" name="lastname" placeholder=""
									value="<%=last_name %>" required>
								<div class="invalid-feedback">Valid first name is
									required.</div>
							</div>

							<div class="col-sm-6">
								<label for="firstName" class="form-label">名</label> <input
									type="text" class="form-control" id="firstName" name="firstname" placeholder=""
									value="<%= first_name %>" required>
								<div class="invalid-feedback">Valid last name is required.</div>
							</div>

							<div class="col-12">
								<label for="email" class="form-label">メールアドレス</label> <input
									type="email" class="form-control" id="email" name="mail"
									placeholder="you@example.com" value="<%= u_mail %>">
								<div class="invalid-feedback">Please enter a valid email
									address for shipping updates.</div>
							</div>

							<div class="col-sm-4">
								<label for="zip1" class="form-label">郵便番号 (半角数字) </label><input
									type="text" class="form-control" id="zip1" name="zip"
									placeholder="" value="<% if(addr!=null)out.println(zip); else out.println(""); %>" maxlength="7" required>
								<div class="invalid-feedback">Please enter your shipping
									address.</div>
							</div>

							<div class="col-sm-8"></div>

							<div class="col-sm-4">
								<label for="country" class="form-label">都道府県</label> <select
									class="form-select" id="country" name="prefectures" required>
									<option value="<%if(addr!=null)out.println(prefectures);%>"><%if(addr!=null)out.println(prefectures); %></option>
									<option value="北海道">北海道</option>
									<option value="青森県">青森県</option>
									<option value="岩手県">岩手県</option>
									<option value="宮城県">宮城県</option>
									<option value="秋田県">秋田県</option>
									<option value="山形県">山形県</option>
									<option value="福島県">福島県</option>
									<option value="東京都">東京都</option>
									<option value="神奈川県">神奈川県</option>
									<option value="埼玉県">埼玉県</option>
									<option value="千葉県">千葉県</option>
									<option value="茨城県">茨城県</option>
									<option value="栃木県">栃木県</option>
									<option value="群馬県">群馬県</option>
									<option value="山梨県">山梨県</option>
									<option value="新潟県">新潟県</option>
									<option value="長野県">長野県</option>
									<option value="富山県">富山県</option>
									<option value="石川県">石川県</option>
									<option value="福井県">福井県</option>
									<option value="愛知県">愛知県</option>
									<option value="岐阜県">岐阜県</option>
									<option value="静岡県">静岡県</option>
									<option value="三重県">三重県</option>
									<option value="大阪府">大阪府</option>
									<option value="兵庫県">兵庫県</option>
									<option value="京都府">京都府</option>
									<option value="滋賀県">滋賀県</option>
									<option value="奈良県">奈良県</option>
									<option value="和歌山県">和歌山県</option>
									<option value="鳥取県">鳥取県</option>
									<option value="島根県">島根県</option>
									<option value="岡山県">岡山県</option>
									<option value="広島県">広島県</option>
									<option value="山口県">山口県</option>
									<option value="徳島県">徳島県</option>
									<option value="香川県">香川県</option>
									<option value="愛媛県">愛媛県</option>
									<option value="高知県">高知県</option>
									<option value="福岡県">福岡県</option>
									<option value="佐賀県">佐賀県</option>
									<option value="長崎県">長崎県</option>
									<option value="熊本県">熊本県</option>
									<option value="大分県">大分県</option>
									<option value="宮崎県">宮崎県</option>
									<option value="鹿児島県">鹿児島県</option>
									<option value="沖縄県">沖縄県</option>
								</select>
								<div class="invalid-feedback">Please select a valid
									country.</div>
							</div>

							<div class="col-sm-4">
								<label for="state" class="form-label">市区町村</label> <input
									type="text" class="form-control" id="state" name="city" name="state"
									placeholder="新宿区" value="<%if(city!=null)out.println(city); %>" required>
								<div class="invalid-feedback">Please provide a valid
									state.</div>
							</div>

							<div class="col-sm-4">
								<label for="town" class="form-label">町村名</label><input
									type="text" class="form-control" id="town" name="town"
									placeholder="百人町" value="<%if(town!=null)out.println(town); %>" required>
								<div class="invalid-feedback">Zip code required.</div>
							</div>

							<div class="col-sm-6">
								<label for="house_number" class="form-label">番地（数字は半角） </label>
								<input type="text" class="form-control" id="house_number"
									name="house_number" placeholder="1-1-1" value="<%if(house_number!=null)out.println(house_number); %>">
							</div>

							<div class="col-sm-6">
								<label for="building" class="form-label">建物名, 部屋番号 </label><input
									type="text" class="form-control" id="building" name="building"
									placeholder="百人町" value="<%if(building!=null)out.println(building); %>">
							</div>


							<div class="col-12">
								<label for="address2" class="form-label">電話番号</label> <input
									type="text" class="form-control" id="phone_number" name="tel"
									placeholder="" value="<%if(tel!=null)out.println(tel);%>">
							</div>
						</div>

						<div class="form-check mt-3">
							<input type="checkbox" class="form-check-input" id="save-info">
							<label class="form-check-label" for="save-info">配送先/連絡先の保存</label>
						</div>

						<div class="accordion" id="accordionExample">
							<div class="form-check" data-bs-toggle="collapse"
								data-bs-target="#collapseOne" aria-expanded="false"
								aria-controls="collapseOne">
								<input type="checkbox" class="form-check-input"
									id="same-address"> <label class="form-check-label"
									for="same-address">別の住所と連絡先を使用する</label>
							</div>

							<hr class="my-4">

							<div id="collapseOne" class="accordion-collapse collapse"
								aria-labelledby="same-address"
								data-bs-parent="#accordionExample">
								<div class="row g-3">
									<div class="col-sm-6">
										<label for="lastName" class="form-label">性</label> <input
											type="text" class="form-control" id="lastName" placeholder=""
											value="電子" required>
										<div class="invalid-feedback">Valid first name is
											required.</div>
									</div>

									<div class="col-sm-6">
										<label for="firstName" class="form-label">名</label> <input
											type="text" class="form-control" id="firstName"
											placeholder="" value="太郎" required>
										<div class="invalid-feedback">Valid last name is
											required.</div>
									</div>

									<div class="col-sm-6">
										<label for="lastName" class="form-label">性（カナ）</label> <input
											type="text" class="form-control" id="lastName" placeholder=""
											value="デンシ" required>
										<div class="invalid-feedback">Valid first name is
											required.</div>
									</div>

									<div class="col-sm-6">
										<label for="firstName" class="form-label">名（カナ）</label> <input
											type="text" class="form-control" id="firstName"
											placeholder="" value="タロウ" required>
										<div class="invalid-feedback">Valid last name is
											required.</div>
									</div>


									<div class="col-12">
										<label for="email" class="form-label">メールアドレス</label> <input
											type="email" class="form-control" id="email"
											placeholder="you@example.com" value="example@jec.ac.jp">
										<div class="invalid-feedback">Please enter a valid email
											address for shipping updates.</div>
									</div>

									<div class="col-sm-4">
										<label for="zip1" class="form-label">郵便番号 (半角数字) </label><input
											type="text" class="form-control" id="zip1" name="zip1"
											placeholder="" maxlength="7" required>
										<div class="invalid-feedback">Please enter your shipping
											address.</div>
									</div>

									<div class="col-sm-8"></div>

									<div class="col-sm-4">
										<label for="country" class="form-label">都道府県</label> <select
											class="form-select" id="country" required>
											<option value="">都道府県</option>
											<option value="01">北海道</option>
											<option value="02">青森県</option>
											<option value="03">岩手県</option>
											<option value="04">宮城県</option>
											<option value="05">秋田県</option>
											<option value="06">山形県</option>
											<option value="07">福島県</option>
											<option value="13">東京都</option>
											<option value="14">神奈川県</option>
											<option value="11">埼玉県</option>
											<option value="12">千葉県</option>
											<option value="08">茨城県</option>
											<option value="09">栃木県</option>
											<option value="10">群馬県</option>
											<option value="19">山梨県</option>
											<option value="15">新潟県</option>
											<option value="20">長野県</option>
											<option value="16">富山県</option>
											<option value="17">石川県</option>
											<option value="18">福井県</option>
											<option value="23">愛知県</option>
											<option value="21">岐阜県</option>
											<option value="22">静岡県</option>
											<option value="24">三重県</option>
											<option value="27">大阪府</option>
											<option value="28">兵庫県</option>
											<option value="26">京都府</option>
											<option value="25">滋賀県</option>
											<option value="29">奈良県</option>
											<option value="30">和歌山県</option>
											<option value="31">鳥取県</option>
											<option value="32">島根県</option>
											<option value="33">岡山県</option>
											<option value="34">広島県</option>
											<option value="35">山口県</option>
											<option value="36">徳島県</option>
											<option value="37">香川県</option>
											<option value="38">愛媛県</option>
											<option value="39">高知県</option>
											<option value="40">福岡県</option>
											<option value="41">佐賀県</option>
											<option value="42">長崎県</option>
											<option value="43">熊本県</option>
											<option value="44">大分県</option>
											<option value="45">宮崎県</option>
											<option value="46">鹿児島県</option>
											<option value="47">沖縄県</option>
										</select>
										<div class="invalid-feedback">Please select a valid
											country.</div>
									</div>

									<div class="col-sm-4">
										<label for="state" class="form-label">市区町村</label> <input
											type="text" class="form-control" id="state" name="state"
											placeholder="新宿区" required>
										<div class="invalid-feedback">Please provide a valid
											state.</div>
									</div>

									<div class="col-sm-4">
										<label for="town" class="form-label">町村名</label><input
											type="text" class="form-control" id="town" name="town"
											placeholder="百人町" required>
										<div class="invalid-feedback">Zip code required.</div>
									</div>

									<div class="col-sm-6">
										<label for="house_number" class="form-label">番地（数字は半角）
										</label> <input type="text" class="form-control" id="house_number"
											name="house_number" placeholder="1-1-1">
									</div>

									<div class="col-sm-6">
										<label for="building" class="form-label">建物名, 部屋番号 </label><input
											type="text" class="form-control" id="building"
											name="building" placeholder="百人町">
									</div>


									<div class="col-12">
										<label for="phone_number" class="form-label">電話番号</label> <input
											type="text" class="form-control" id="phone_number"
											placeholder="">
									</div>
								</div>
							</div>
						</div>

					</div>

				</div>
			</form>
		</div>
	</main>

	<jsp:include page="../layouts/footer.jsp" />

</body>
</html>