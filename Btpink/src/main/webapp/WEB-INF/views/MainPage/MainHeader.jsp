
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<header id="pageTop" class="header-wrapper"> <!-- COLOR BAR -->
	<div class="container-fluid color-bar top-fixed clearfix">
		<div class="row">
			<div class="col-sm-1 col-xs-2 bg-color-1">fix bar</div>
			<div class="col-sm-1 col-xs-2 bg-color-2">fix bar</div>
			<div class="col-sm-1 col-xs-2 bg-color-3">fix bar</div>
			<div class="col-sm-1 col-xs-2 bg-color-4">fix bar</div>
			<div class="col-sm-1 col-xs-2 bg-color-5">fix bar</div>
			<div class="col-sm-1 col-xs-2 bg-color-6">fix bar</div>
			<div class="col-sm-1 bg-color-1 hidden-xs">fix bar</div>
			<div class="col-sm-1 bg-color-2 hidden-xs">fix bar</div>
			<div class="col-sm-1 bg-color-3 hidden-xs">fix bar</div>
			<div class="col-sm-1 bg-color-4 hidden-xs">fix bar</div>
			<div class="col-sm-1 bg-color-5 hidden-xs">fix bar</div>
			<div class="col-sm-1 bg-color-6 hidden-xs">fix bar</div>
		</div>
	</div>

	<!-- TOP INFO BAR -->
	<div class="top-info-bar bg-color-7 hidden-xs">
		<div class="container">
			<div class="row">
				<div class="col-sm-7">
					<ul class="list-inline topList">
						<li><i class="fa fa-envelope bg-color-1" aria-hidden="true"></i>
							<a href="mailto:info@yourdomain.com">info@yourdomain.com</a></li>
						<li><i class="fa fa-phone bg-color-2" aria-hidden="true"></i>
							+1 234 567 8900</li>
						<li><i class="fa fa-clock-o bg-color-6" aria-hidden="true"></i>
							Open: 9am - 6pm</li>
					</ul>
				</div>
				<div class="col-sm-5">
					<ul class="list-inline functionList">
						<li><i class="fa fa-globe bg-color-4" aria-hidden="true"></i></li>
						<li><i class="fa fa-unlock-alt bg-color-5" aria-hidden="true"></i>
							<a href='#loginModal' data-toggle="modal">Login</a><span>or</span>
							<a href='#createAccount' data-toggle="modal">Create an
								account</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<!-- NAVBAR --> <nav id="menuBar"
		class="navbar navbar-default lightHeader" role="navigation">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-ex1-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/www"><img
				src="./resources/img/logo-school.png" alt="Kidz School"></a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse navbar-ex1-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown singleDrop color-1   active "><a
					href="javascript:void(0)" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false"> <i class="fa fa-home bg-color-1"
						aria-hidden="true"></i> <span class="active">MY SUN</span>
				</a>
				<li class="dropdown singleDrop color-3 "><a href="teachers"
					class="dropdown-toggle"><i class="fa fa-list-ul bg-color-3"
						aria-hidden="true"></i> <span>TEAM</span></a>
				<li class=" dropdown megaDropMenu color-2 "><a
					href="course-single" class="dropdown-toggle"> <!--data-toggle="dropdown" data-hover="dropdown" data-delay="300" data-close-others="true" aria-expanded="false"> -->

						<i class="fa fa-file-text-o bg-color-2" aria-hidden="true"></i> <span>Courses</span>
				</a>
				<li class="dropdown singleDrop color-4 "><a
					href="javascript:void(0)" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false"> <i
						class="fa fa-pencil-square-o bg-color-4" aria-hidden="true"></i> <span>Notice</span>
				</a>
				<li class="dropdown singleDrop color-5  "><a
					href="javascript:void(0)" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false"> <i class="fa fa-calendar bg-color-5"
						aria-hidden="true"></i> <span>Bus</span>
				</a></li>
				<li class="dropdown singleDrop color-6 "><a href="adminPage"
					class="dropdown-toggle"> <i class="fa fa-gg bg-color-6"
						aria-hidden="true"></i> <span>Teacher</span></a>
		</div>

		<!-- 			<div class="cart-dropdown"> -->
		<!-- 				<a href="#" class="bg-color-6 shop-cart"> <i -->
		<!-- 					class="fa fa-shopping-basket " aria-hidden="true"></i> <span -->
		<!-- 					class="badge bg-color-1">3</span> -->
		<!-- 				</a> -->
		<!-- 				<ul class="dropdown-menu dropdown-menu-right"> -->
		<!-- 					<li><i class="fa fa-shopping-basket " aria-hidden="true"></i>3 -->
		<!-- 						items in your cart</li> -->
		<!-- 					<li><a href="single-product.html"> -->
		<!-- 							<div class="media"> -->
		<!-- 								<div class="media-left"> -->
		<!-- 									<img src="./resources/img/home/cart/cart-img.png" -->
		<!-- 										alt="cart-Image"> -->
		<!-- 								</div> -->
		<!-- 								<div class="media-body"> -->
		<!-- 									<h4>Barbie Racing Car</h4> -->
		<!-- 									<div class="price"> -->
		<!-- 										<span class="color-1">$50</span> -->
		<!-- 									</div> -->
		<!-- 									<span class="amount">Qnt: 1</span> -->
		<!-- 								</div> -->
		<!-- 							</div> -->
		<!-- 					</a> <span class="cancel"><i class="fa fa-close" -->
		<!-- 							aria-hidden="true"></i></span></li> -->
		<!-- 					<li><a href="single-product.html"> -->
		<!-- 							<div class="media"> -->
		<!-- 								<div class="media-left"> -->
		<!-- 									<img src="./resources/img/home/cart/cart-img.png" -->
		<!-- 										alt="cart-Image"> -->
		<!-- 								</div> -->
		<!-- 								<div class="media-body"> -->
		<!-- 									<h4>Barbie Racing Car</h4> -->
		<!-- 									<div class="price"> -->
		<!-- 										<span class="color-1">$50</span> -->
		<!-- 									</div> -->
		<!-- 									<span class="amount">Qnt: 1</span> -->
		<!-- 								</div> -->
		<!-- 							</div> -->
		<!-- 					</a> <span class="cancel"><i class="fa fa-close" -->
		<!-- 							aria-hidden="true"></i></span></li> -->
		<!-- 					<li><a href="single-product.html"> -->
		<!-- 							<div class="media"> -->
		<!-- 								<div class="media-left"> -->
		<!-- 									<img src="./resources/img/home/cart/cart-img.png" -->
		<!-- 										alt="cart-Image"> -->
		<!-- 								</div> -->
		<!-- 								<div class="media-body"> -->
		<!-- 									<h4>Barbie Racing Car</h4> -->
		<!-- 									<div class="price"> -->
		<!-- 										<span class="color-1">$50</span> -->
		<!-- 									</div> -->
		<!-- 									<span class="amount">Qnt: 1</span> -->
		<!-- 								</div> -->
		<!-- 							</div> -->
		<!-- 					</a> <span class="cancel"><i class="fa fa-close" -->
		<!-- 							aria-hidden="true"></i></span></li> -->
		<!-- 					<li><span class="cart-total">Subtotal</span> <span -->
		<!-- 						class="cart-price">$150</span> -->
		<!-- 						<div class="cart-button"> -->
		<!-- 							<button type="button" class="btn btn-primary" -->
		<!-- 								onclick="location.href='checkout-step-1.html';">Checkout</button> -->
		<!-- 							<button type="button" class="btn btn-primary" -->
		<!-- 								onclick="location.href='cart-page.html';">View Cart</button> -->
		<!-- 						</div></li> -->
		</ul>
	</div>
	</div>
	</nav> </header>
	<div class="modal fade customModal" id="createAccount" tabindex="-1"
		role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="panel panel-default formPanel">
					<div class="panel-heading bg-color-1 border-color-1">
						<h3 class="panel-title">Create an account</h3>
					</div>
					<form action="#" method="POST" role="form">
						<div class="panel-body">
							<div class="tabCommon">
								<ul class="nav nav-tabs" >
									<li class="active"><a data-toggle="tab"id = "test"
										href="#create_teacher" aria-expanded="false">Teacher</a></li>
									<li class=""><a data-toggle="tab" href="#create_parent"
										aria-expanded="false">Parent</a></li>
								</ul>
								<div class="tab-content">
									<div id="create_teacher" class="tab-pane fade in active">
									</div>
									<div id="create_parent" class="tab-pane fade">
										<div class="form-group formField" id="studentName">
											<input type="text" class="form-control"
												placeholder="StudentName">
										</div>
										<div class="">
											<div class="col-sm-4 col-xs-8" id="SelectStudent">
												<select name="guiest_id3" id="guiest_id3"
													class="select-drop" sb="26706380"
													style="top: 34px; max-height: 460.4px;">
													<option value="0">A</option>
													<option value="1">B</option>
													<option value="2">C</option>
													<option value="3">D</option>
												</select>
											</div>
										</div>
										<div id="studentSelectButton">
											<button type="button" class="btn btn-xs btn-primary "
												onclick="javascript:studentCheck()">학생확인</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="form-group formField">
							<input type="text" class="form-control" id="id" name="id"
								placeholder="UserId">
						</div>
						<div class="form-group formField">
							<input type="text" class="form-control" id="name" name = "name"
								placeholder="UserName">
						</div>
						<div class="form-group formField">
							<input type="password" class="form-control" id = "pw" name ="pw"
								placeholder="Password">
						</div>
						<div class="form-group formField">
							<input type="password" class="form-control" id = "pwCk"
								placeholder="Re-Password">
						</div>
						<div class="form-group formField">
							<input type="text" class="form-control" id="email" name = "email"
								placeholder="Emanil">
						</div>
						<div class="form-group formField">
							<input type="text" class="form-control" id="email"
								placeholder="Phone">
						</div>
						<input type="hidden" id ="type" name="type" value="t" >
						<div class="form-group formField">
							<input type="submit"
								class="btn btn-primary btn-block bg-color-3 border-color-3"
								value="Register">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	</div>
	<!-- LOGIN MODAL -->
	<div class="modal fade customModal" id="loginModal" tabindex="-1"
		role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="panel panel-default formPanel">
					<div class="panel-heading bg-color-1 border-color-1">
						<h3 class="panel-title">Login</h3>
					</div>
					<div class="panel-body">
						<form action="#" method="POST" role="form">
							<div class="form-group formField">
								<input type="text" class="form-control" placeholder="User name">
							</div>
							<div class="form-group formField">
								<input type="password" class="form-control"
									placeholder="Password">
							</div>
							<div class="form-group formField">
								<input type="submit"
									class="btn btn-primary btn-block bg-color-3 border-color-3"
									value="Log in">
							</div>
							<div class="form-group formField">
								<p class="help-block">
									<a href="#">Forgot password?</a>
								</p>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>