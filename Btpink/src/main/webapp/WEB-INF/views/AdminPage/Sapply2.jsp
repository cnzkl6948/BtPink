<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="split/Head.jsp"%>
<link rel="stylesheet" href="./resources/AdminLTE/dist/css/sapply.css">
<%@ include file="split/Header.jsp"%>
<%@ include file="split/Sidebar.jsp"%>


<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
	               학생등록
	        <small>Control panel</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">학생등록</li>
		</ol>
	</section>

	<!-- Main row -->
	<div class="container" id="f1">
		<div class="col-md-3"></div>
		<div class="col-md-6">
			<div id="panel1" class="panel panel-default">
				<h1>학생등록</h1>

				<form action="Sapply" method="POST" role="form" enctype="multipart/form-data" onsubmit="return Checkform()">
					<div class="form-group formField">
						<input type="text" class="form-control" name="name" placeholder="이름">
					</div>
					
					<div class="form-group formField">
						<input type="text" class="form-control" name="age" id="age" placeholder="나이">
					</div>
					
					<div class="form-group formField">
						<input type="text" class="form-control" name="height" placeholder="키">
					</div>
					
					<div class="form-group formField">
						<input type="text" class="form-control" name="classno" placeholder="반">
					</div>
					
					<div class="form-group formField">
						<input type="text" class="form-control" name="parentno" placeholder="학부모번호">
					</div>
					
					<!-- Date -->
					<div class="form-group formField">
						<label>생년월일</label>

						<div class="input-group date">
							<div class="input-group-addon">
								<i class="fa fa-calendar"></i>
							</div>
							<input type="text" class="form-control pull-right" name="birth"
								id="datepicker">
						</div>
						<!-- /.input group -->
					</div>
					<!-- /.form group -->
					
												
					<div class="form-group formField">
						<input type="text" class="form-control" name="adress" placeholder="주소">
					</div>
					

					<div class="input-group input-group-md">
						<label>성별</label>
						<select name="gender">
							<option value="M">Male</option>
							<option value="W">Female</option>
						</select>
					</div>
					
					<div class="input-group input-group-md">
						<label>안경유무</label>
						<select name="glass">
							<option value=0>Yes</option>
							<option value=1>No</option>
						</select>
					</div>
												
					
					<div class="form-group formField">
						<input type='file' id="uploadImage" name="file" />
						<div id="preview">
							<!-- 사이즈는 알아서 하고~ ㅋㅋ -->
							<img id="imagePreview" src="#" alt="Preview upload images" />
						</div>
					</div>
											

					<div class="form-group formField">
						<input type="submit"
							class="btn btn-primary btn-block bg-color-3 border-color-3"
							value="Register">
					</div>
				</form>


				<footer>
					<p id="footer">
						Desing provided by <a href="https://www.shieldui.com/">Shield UI</a>
					</p>
				</footer>
			</div>
		</div>
		<div class="col-md-3"></div>
	</div>
	<!-- /.row -->
	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<%@ include file="split/Footer.jsp"%> 
<script src="./resources/AdminLTE/js/sapply.js"></script>
<script type="text/javascript" src="https://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>