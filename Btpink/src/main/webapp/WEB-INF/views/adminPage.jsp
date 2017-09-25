<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- <style> -->
<style>
 .alert_text { 
     display: table; 
     position : absolute;
     background: #FFFFFF; 
     width: 150px; 
     margin: 0 auto 10px;
     display:block;
     color:#333;
     border:1px solid;
     line-height: 50px;
     font-size: 13px;
     z-index: 1000;
 } 
/* .tooltips { */
/* 	position: relative; */
/* 	display: inline; */
/* } */

</style>
<%@ include file="AdminPage/split/Head.jsp"%>
<%@ include file="AdminPage/split/Header.jsp"%>
<%@ include file="AdminPage/split/Sidebar.jsp"%>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			선생님 메인 화면 <small>컨트롤 패널</small>
		</h1>
		<ol class="breadcrumb">
			<li><i class="fa fa-dashboard"></i> Home</li>
			<li class="active">Dashboard</li>
		</ol>
	</section>
	<!-- Main content -->
	<section class="content">
		<div class="row">

			<div class="col-lg-3 col-xs-6">
				<!-- small box -->
				<div class="small-box bg-aqua">
					<div class="inner">
						<h3>
							${mainParam.attend}<span class="txt_count">명</span>
						</h3>
						<p>출석자 수</p>
					</div>
					<div class="icon">
						<i class="ion ion-bag"></i>
					</div>
				</div>
			</div>
			<!-- ./col -->


			<div class="col-lg-3 col-xs-6">
				<!-- small box -->
				<div class="small-box bg-green">
					<div class="inner">
						<h3>
							${mainParam.early }<span class="txt_count">명</span>
						</h3>
						<p>조퇴자 수</p>
					</div>
					<div class="icon">
						<i class="ion ion-stats-bars"></i>
					</div>
				</div>
			</div>
			<!-- ./col -->
			<div class="col-lg-3 col-xs-6">
				<!-- small box -->
				<div class="small-box bg-yellow">
					<div class="inner">
						<h3>
							${mainParam.sick}<span class="txt_count">명</span>
						</h3>

						<p>병결자 수</p>
					</div>
					<div class="icon">
						<i class="ion ion-person-add"></i>
					</div>
				</div>
			</div>
			<!-- ./col -->
			<div class="col-lg-3 col-xs-6">
				<!-- small box -->
				<div class="small-box bg-red">
					<div class="inner">
						<h3>
							${mainParam.absent}<span class="txt_count">명</span>
						</h3>

						<p>결석자 수</p>
					</div>
					<div class="icon">
						<i class="ion ion-pie-graph"></i>
					</div>
				</div>
				<!-- ./col -->
			</div>
		</div>
		<!-- 여기까지 첫번째 row -->

		<!-- 두번째 row 시작 -->
		<div class="row">
			<div class="col-lg-6">
				<!-- TO DO List -->
				<div class="box box-primary">
					<div class="box-header">
						<i class="ion ion-clipboard"></i>

						<h3 class="box-title">공지사항 또는 할일</h3>

						<div class="box-tools pull-right">
							<ul class="pagination pagination-sm inline">
								<li><a href="#">&laquo;</a></li>
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">&raquo;</a></li>
							</ul>
						</div>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<!-- See dist/js/pages/dashboard.js to activate the todoList plugin -->
						<ul class="todo-list">

							<c:forEach var="notice" items="${TeacherNotice}">
								<li class="tooltips mouseOverTest">${notice.name}<span
									class="handle" style="position: relative;"> <i class="fa fa-ellipsis-v"></i>
								</span> <span>${notice.demandsubject}</span>
									<div class="tools ">
										<span class="text col-lg-4 alert_text"  >${notice.demandcontent}</span> <i
											class="fa fa-trash-o"></i>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
					<!-- /.box-body -->
					<div class="box-footer clearfix no-border">
						<button type="button" class="btn btn-default pull-right">
							<i class="fa fa-plus"></i> Add item
						</button>
					</div>
				</div>
				<!-- /.box -->
			</div>

			<!-- right col -->
			<div class="col-lg-6">
				<!-- Custom tabs (Charts with tabs)-->
				<div class="nav-tabs-custom">
					<!-- Tabs within a box -->
					<ul class="nav nav-tabs pull-right">
						<li class="active"><a href="#revenue-chart" data-toggle="tab">Area</a></li>
						<li><a href="#sales-chart" data-toggle="tab">Donut</a></li>
						<li class="pull-left header"><i class="fa fa-inbox"></i>출석인원
							변동 현황</li>
					</ul>
					<div class="tab-content no-padding">
						<!-- Morris chart - Sales -->
						<div class="chart tab-pane active" id="revenue-chart"
							style="position: relative; height: 300px;"></div>
						<div class="chart tab-pane" id="sales-chart"
							style="position: relative; height: 300px;"></div>
					</div>
				</div>
				<!-- /.nav-tabs-custom -->
			</div>
			<!-- /.Left col -->
		</div>
		<!--여기까지 두번째 row -->
		<!-- 세번째 row-->
<!-- 		<div class="row"> -->
<!-- 			<div class="col-lg-12"> -->
<!-- 				Calendar -->
<!-- 				<div class="box box-solid bg-green-gradient"> -->
<!-- 					<div class="box-header"> -->
<!-- 						<i class="fa fa-calendar"></i> -->

<!-- 						<h3 class="box-title">현황별 일정</h3> -->
<!-- 						tools box -->
<!-- 						<div class="pull-right box-tools"> -->
<!-- 							button with a dropdown -->
<!-- 							<div class="btn-group"> -->
<!-- 								<button type="button" -->
<!-- 									class="btn btn-success btn-sm dropdown-toggle" -->
<!-- 									data-toggle="dropdown"> -->
<!-- 									<i class="fa fa-bars"></i> -->
<!-- 								</button> -->
<!-- 								<ul class="dropdown-menu pull-right" role="menu"> -->
<!-- 									<li><a href="#">Add new event</a></li> -->
<!-- 									<li><a href="#">Clear events</a></li> -->
<!-- 									<li class="divider"></li> -->
<!-- 									<li><a href="#">View calendar</a></li> -->
<!-- 								</ul> -->
<!-- 							</div> -->
<!-- 							<button type="button" class="btn btn-success btn-sm" -->
<!-- 								data-widget="collapse"> -->
<!-- 								<i class="fa fa-minus"></i> -->
<!-- 							</button> -->
<!-- 							<button type="button" class="btn btn-success btn-sm" -->
<!-- 								data-widget="remove"> -->
<!-- 								<i class="fa fa-times"></i> -->
<!-- 							</button> -->
<!-- 						</div> -->
<!-- 						/. tools -->
<!-- 					</div> -->
<!-- 					/.box-header -->
<!-- 					<div class="box-body no-padding"> -->
<!-- 						The calendar -->
<!-- 						<div id="calendar" style="width: 100%"></div> -->
<!-- 					</div> -->
<!-- 					/.box-body -->
<!-- 					<div class="box-footer text-black"> -->
<!-- 						<div class="row"> -->
<!-- 							<div class="col-sm-6"> -->
<!-- 								Progress bars -->
<!-- 								<div class="clearfix"> -->
<!-- 									<span class="pull-left">Task #1</span> <small -->
<!-- 										class="pull-right">90%</small> -->
<!-- 								</div> -->
<!-- 								<div class="progress xs"> -->
<!-- 									<div class="progress-bar progress-bar-green" -->
<!-- 										style="width: 90%;"></div> -->
<!-- 								</div> -->

<!-- 								<div class="clearfix"> -->
<!-- 									<span class="pull-left">Task #2</span> <small -->
<!-- 										class="pull-right">70%</small> -->
<!-- 								</div> -->
<!-- 								<div class="progress xs"> -->
<!-- 									<div class="progress-bar progress-bar-green" -->
<!-- 										style="width: 70%;"></div> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							/.col -->
<!-- 							<div class="col-sm-6"> -->
<!-- 								<div class="clearfix"> -->
<!-- 									<span class="pull-left">Task #3</span> <small -->
<!-- 										class="pull-right">60%</small> -->
<!-- 								</div> -->
<!-- 								<div class="progress xs"> -->
<!-- 									<div class="progress-bar progress-bar-green" -->
<!-- 										style="width: 60%;"></div> -->
<!-- 								</div> -->

<!-- 								<div class="clearfix"> -->
<!-- 									<span class="pull-left">Task #4</span> <small -->
<!-- 										class="pull-right">40%</small> -->
<!-- 								</div> -->
<!-- 								<div class="progress xs"> -->
<!-- 									<div class="progress-bar progress-bar-green" -->
<!-- 										style="width: 40%;"></div> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							/.col -->
<!-- 						</div> -->
<!-- 						/.row -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				/.box -->

<!-- 			</div> -->
<!-- 		</div> -->
		<!-- 여기까지 세번찌 -->
	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<%@ include file="AdminPage/split/Footer.jsp"%>
<!-- Morris.js charts -->
<!-- <script src="./resources/AdminLTE/bower_components/raphael/raphael.min.js"></script> -->
<!-- <script src="./resources/AdminLTE/bower_components/morris.js/morris.min.js"></script> -->
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="./resources/AdminLTE/dist/js/pages/dashboard.js"></script>
<script>
	$(function(){
		$(document).on('mouseover', '.mouseOverTest', function(){
			$(".alert_text").css("position", "absolute");
			$(".alert_text").css({top: event.pageY-240 + "px", left: event.pageX-240+ "px"});
		})
	})
</script>
</body>
</html>