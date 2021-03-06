<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="model.user,java.util.ArrayList"%>

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
<link href="./css/default.css" rel="stylesheet">
<script type="text/javascript" src="./js/default.js"></script>

<%
@SuppressWarnings("unchecked")
ArrayList<user> name = (ArrayList<user>) session.getAttribute("u_info");
String uid = null;
String u_name[];
String last_name = null;
String first_name = null;
String u_mail = null;
String tel = null;
String zip = null;
String[] addr = null;
for (user u : name) {
	uid = u.getUserID();
	u_name = u.getUserName().split(" ",2);
	last_name = u_name[0];
	first_name = u_name[1];
	u_mail = u.getUserMail();
	tel = u.getTel();
	zip = u.getZip();
	if (u.getAddress() == null)
		addr = null;
	else
		addr = u.getAddress().split(",");
}
int login_status = (Integer) session.getAttribute("login_status");
%>

</head>
<body class="d-flex flex-column h-100">

	<jsp:include page="../layouts/header.jsp" />

	<main>
		<div class="container px-4 py-3">
			<div class="col-md-7 col-lg-8">
				<div class="accordion" id="accordionPanelsStayOpenExample">
					<div class="accordion-item">
						<h1 class="accordion-header" id="panelsStayOpen-headingOne">
							<button class="accordion-button fs-3" type="button"
								data-bs-toggle="collapse"
								data-bs-target="#panelsStayOpen-collapseOne"
								aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
								??????????????????</button>
						</h1>
						<div id="panelsStayOpen-collapseOne"
							class="accordion-collapse collapse show"
							aria-labelledby="panelsStayOpen-headingOne">
							<div class="accordion-body">
								<p>
									<strong>??????</strong> <br>
									<% out.print(last_name + " " + first_name); %>
								</p>
								<p>
									<strong>?????????????????????</strong> <br>
									<% out.print(u_mail); %>
								</p>
								<p>
									<strong>????????????</strong> <br>
									<%
									if (tel == null)
										out.print("?????????");
									else if (tel != null)
										out.print(tel);
									%>
								</p>
								<div class="text-end">
									<button class="btn btn-primary" type="button"
										data-bs-toggle="offcanvas" data-bs-target="#changeProfile"
										aria-controls="changeProfile">???????????????????????????</button>

									<div class="offcanvas offcanvas-end bg-light" tabindex="-1"
										style="width: 570px" id="changeProfile"
										aria-labelledby="offcanvasRightLabel">
										<div class="offcanvas-header">
											<h4 id="offcanvasRightLabel">?????????????????????</h4>
											<button type="button" class="btn-close text-reset"
												data-bs-dismiss="offcanvas" aria-label="Close"></button>
										</div>
										<div class="offcanvas-body">
											<form class="needs-validation" action="<%= request.getContextPath() %>/ProfileController" method="POST" novalidate>
												<div class="row g-3">
													<div class="col-sm-6">
														<label for="lastName" class="form-label">???</label> <input
															type="text" class="form-control" id="lastName" name="lastName"
															value="<%=last_name %>" required>
														<div class="invalid-feedback">Valid first name is
															required.</div>
													</div>

													<div class="col-sm-6">
														<label for="firstName" class="form-label">???</label> <input
															type="text" class="form-control" id="firstName" name="firstName"
															value="<%=first_name %>" required>
														<div class="invalid-feedback">Valid last name is
															required.</div>
													</div>

													<div class="col-12">
														<label for="email" class="form-label">????????????????????? <span
															class="text-muted"></span></label> <input type="email"
															class="form-control" id="email" name="mail"
															value="<%=u_mail %>">
														<div class="invalid-feedback">Please enter a valid
															email address for shipping updates.</div>
													</div>

													<div class="col-12">
														<label for="phone_number" class="form-label">????????????</label>
														<input type="text" class="form-control" id="phone_number" name="tel"
															value="<% if(tel==null){} else out.print(tel);%>">
													</div>
												</div>
												<input type="hidden" name="form" value="1">
												<div class="text-center my-4">
													<button class="btn btn-primary" type="submit">????????????</button>
												</div>
												<div class="text-center">
													<p>
														<strong>??????????????? </strong>
													</p>
													?????????????????????????????????????????????????????????????????????????????? <br> <a
														href="pass_change.jsp">????????????????????????</a>
												</div>		
											</form>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="accordion-item">
						<h1 class="accordion-header" id="panelsStayOpen-headingTwo">
							<button class="accordion-button fs-3" type="button"
								data-bs-toggle="collapse"
								data-bs-target="#panelsStayOpen-collapseTwo"
								aria-expanded="true" aria-controls="panelsStayOpen-collapseTwo">
								??????</button>
						</h1>
						<div id="panelsStayOpen-collapseTwo"
							class="accordion-collapse collapse show"
							aria-labelledby="panelsStayOpen-headingTwo">
							<div class="accordion-body">
							
								<% 
								if (zip == null){
								}else {
									out.println("<p>");
									out.println("<strong>????????????</strong> <br>");
									out.println(zip);
									out.println("<p>");
								}
								%>
								<% 
								if (addr == null){
								}else {
									out.println("<p>");
									out.println("<strong>????????????</strong> <br>");
									for(String s : addr) {
										out.print(s + " ");
									}
									out.println();
									out.println("<p>");
								}
								%>
								
								<div class="text-center">
									<button class="btn btn-primary" type="button"
										data-bs-toggle="offcanvas" data-bs-target="#changeAddress"
										aria-controls="changeAddress">??????</button>

									<div class="offcanvas offcanvas-end bg-light" tabindex="-1"
										style="width: 570px" id="changeAddress"
										aria-labelledby="offcanvasRightLabel">
										<div class="offcanvas-header">
											<h4 id="offcanvasRightLabel">??????????????????</h4>
											<button type="button" class="btn-close text-reset"
												data-bs-dismiss="offcanvas" aria-label="Close"></button>
										</div>
										<div class="offcanvas-body">
											<form class="needs-validation" action="<%= request.getContextPath() %>/ProfileController" method="POST" novalidate>
												<div class="row g-3">
													<div class="col-sm-4">
														<label for="zip1" class="form-label">???????????? (????????????) </label><input
															type="text" class="form-control" id="zip1" name="zip"
															placeholder="" value="" maxlength="7" required>
														<div class="invalid-feedback">Please enter your
															shipping address.</div>
													</div>

													<div class="col-sm-8"></div>

													<div class="col-sm-4">
														<label for="prefectures" class="form-label">????????????</label> <select
															class="form-select" id="prefectures" name="prefectures" required>
															<option value="">????????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="????????????">????????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="????????????">????????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="?????????">?????????</option>
															<option value="????????????">????????????</option>
															<option value="?????????">?????????</option>
														</select>
														<div class="invalid-feedback">Please select a valid
															country.</div>
													</div>

													<div class="col-sm-4">
														<label for="city" class="form-label">????????????</label> <input
															type="text" class="form-control" id="city" name="city"
															placeholder="?????????" value="" required>
														<div class="invalid-feedback">Please provide a valid
															state.</div>
													</div>

													<div class="col-sm-4">
														<label for="town" class="form-label">?????????</label><input
															type="text" class="form-control" id="town" name="town"
															placeholder="?????????" value="" required>
														<div class="invalid-feedback">Zip code required.</div>
													</div>

													<div class="col-sm-6">
														<label for="house_number" class="form-label">???????????????????????????
														</label> <input type="text" class="form-control" id="house_number"
															name="house_number" placeholder="1-1-1" value="">
													</div>

													<div class="col-sm-6">
														<label for="building" class="form-label">?????????, ????????????
														</label><input type="text" class="form-control" id="building"
															name="building" placeholder="????????????????????????" value="">
													</div>
													<input type="hidden" name="form" value="2">
													<div class="text-center my-4">
														<button class="btn btn-primary" type="submit">????????????</button>
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="accordion-item">
						<h1 class="accordion-header" id="panelsStayOpen-headingThree">
							<button class="accordion-button fs-3" type="button"
								data-bs-toggle="collapse"
								data-bs-target="#panelsStayOpen-collapseThree"
								aria-expanded="true"
								aria-controls="panelsStayOpen-collapseThree">??????????????????</button>
						</h1>
						<div id="panelsStayOpen-collapseThree"
							class="accordion-collapse collapse show"
							aria-labelledby="panelsStayOpen-headingThree">
							<div class="accordion-body">
								<strong>????????????????????????????????????????????????????????????????????????</strong>
								<div class="text-start">
									<button class="btn btn-primary" type="button"
										data-bs-toggle="offcanvas" data-bs-target="#payment"
										aria-controls="payment">??????</button>

									<div class="offcanvas offcanvas-end bg-light" tabindex="-1"
										style="width: 570px" id="payment"
										aria-labelledby="offcanvasRightLabel">
										<div class="offcanvas-header">
											<h4 id="offcanvasRightLabel">???????????????</h4>
											<button type="button" class="btn-close text-reset"
												data-bs-dismiss="offcanvas" aria-label="Close"></button>
										</div>
										<div class="offcanvas-body">
											<form class="needs-validation" action="" method="POST" novalidate>
												<input type="hidden" name="form" value="3">
												<div class="my-3">
													<div class="form-check">
														<input id="credit" name="paymentMethod" type="radio" name="payment"
															class="form-check-input" checked required> <label
															class="form-check-label" for="credit">????????????????????????</label>
													</div>
													<div class="form-check">
														<input id="debit" name="paymentMethod" type="radio"
															class="form-check-input" required> <label
															class="form-check-label" for="debit">?????????????????????</label>
													</div>
													<div class="form-check">
														<input id="paypal" name="paymentMethod" type="radio"
															class="form-check-input" required> <label
															class="form-check-label" for="paypal">PayPal</label>
													</div>
												</div>

												<div class="row gy-3">
													<div class="col-md-6">
														<label for="cc-name" class="form-label">??????????????? </label> <input
															type="text" class="form-control" id="cc-name" name="card_name"
															placeholder="????????????????????????" required> <small
															class="text-muted">???????????????????????????</small>
														<div class="invalid-feedback">Name on card is
															required</div>
													</div>

													<div class="col-md-6">
														<label for="cc-number" class="form-label">???????????????</label> <input
															type="text" class="form-control" id="cc-number" name="card_number"
															placeholder="" required>
														<div class="invalid-feedback">Credit card number is
															required</div>
													</div>

													<div class="col-md-3">
														<label for="expiration_year" class="form-label">????????????
															??? </label><select class="form-select" id="expiration_year" name="expiration_year"
															required>
															<option selected="selected" value="">???????????? ???</option>
															<option value="2022">2022</option>
															<option value="2023">2023</option>
															<option value="2024">2024</option>
															<option value="2025">2025</option>
															<option value="2026">2026</option>
															<option value="2027">2027</option>
															<option value="2028">2028</option>
															<option value="2029">2029</option>
															<option value="2030">2030</option>
															<option value="2031">2031</option>
															<option value="2032">2032</option>
															<option value="2033">2033</option>
															<option value="2034">2034</option>
															<option value="2035">2035</option>
															<option value="2036">2036</option>
															<option value="2037">2037</option>
														</select>
														<div class="invalid-feedback">Expiration year
															required</div>
													</div>

													<div class="col-md-3">
														<label for="expiration_month" class="form-label">????????????
															??? </label> <select class="form-select" id="expiration_month" name="expiration_month"
															required>
															<option selected="selected" value="">???????????? ???</option>
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
															<option value="5">5</option>
															<option value="6">6</option>
															<option value="7">7</option>
															<option value="8">8</option>
															<option value="9">9</option>
															<option value="10">10</option>
															<option value="11">11</option>
															<option value="12">12</option>
														</select>
														<div class="invalid-feedback">Expiration month
															required</div>
													</div>

													<div class="col-md-6"></div>

													<div class="col-md-3">
														<label for="cc-cvv" class="form-label">??????????????????????????? </label>
														<input type="text" class="form-control" id="cc-cvv" name="cvv"
															placeholder="" required><small class="text-muted">??????????????????AMEX?????????????????????????????????????????????</small>
														<div class="invalid-feedback">Security code required</div>
													</div>
													<input type="hidden" name="form" value="3">
													<div class="text-center my-4">
														<button class="btn btn-primary" type="submit">????????????</button>
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>

	<jsp:include page="../layouts/footer.jsp" />

</body>
</html>