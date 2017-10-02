<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- <style> -->
<style>
.alert_text {
	display: table;
	position: absolute;
	background: #FFFFFF;
	width: 150px;
	margin: 0 auto 10px;
	display: block;
	color: #333;
	border: 1px solid;
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

						<h3 class="box-title">학부모님께 받은 마음의 소리</h3>

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
									class="handle" style="position: relative;"> &ensp;<i
										class="fa fa-ellipsis-v"></i>
								</span>&ensp; <span>${fn:substring(notice.startdate,0,10)}~${fn:substring(notice.enddate,0,10)}</span>&ensp;<i
									class="fa fa-ellipsis-v"></i>&ensp;<span>${notice.demandsubject}</span>
									<div class="tools ">
										<span class="text col-lg-4 alert_text">${notice.demandcontent}</span>
										<i class="fa fa-trash-o"></i>
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
						<li class="pull-left header"><i class="fa fa-inbox"></i>출석인원
							변동 현황</li>
					</ul>
				<div id="bar-chart" style="height: 300px;"></div>	
				</div>
				<!-- /.nav-tabs-custom -->
			</div>
			<!-- /.Left col -->
		</div>
		<!--여기까지 두번째 row -->
	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<%@ include file="AdminPage/split/Footer.jsp"%>
<!-- Morris.js charts -->
<script
	src="./resources/AdminLTE/bower_components/raphael/raphael.min.js"></script>
<script
	src="./resources/AdminLTE/bower_components/morris.js/morris.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<!-- <script src="./resources/AdminLTE/dist/js/pages/dashboard.js"></script> -->
<script src="./resources/AdminLTE/bower_components/Flot/jquery.flot.js"></script>
<!-- FLOT RESIZE PLUGIN - allows the chart to redraw when the window is resized -->
<script src="./resources/AdminLTE/bower_components/Flot/jquery.flot.resize.js"></script>
<!-- FLOT PIE PLUGIN - also used to draw donut charts -->
<script src="./resources/AdminLTE/bower_components/Flot/jquery.flot.pie.js"></script>
<!-- FLOT CATEGORIES PLUGIN - Used to draw bar charts -->
<script src="./resources/AdminLTE/bower_components/Flot/jquery.flot.categories.js"></script>
<script>
	$(function(){
		$(document).on('mouseover', '.mouseOverTest', function(){
			$(".alert_text").css("position", "absolute");
			$(".alert_text").css({top: event.pageY-240 + "px", left: event.pageX-240+ "px"});
		})
// 		var name = '${User.name}';

// 		if(name != 'admin'){
// 		  var line = new Morris.Line({
// 			    element          : 'line-chart',
// 			    resize           : true,
// 			    data             : [
// 			    	${avg.data} 
// // 			      { y: '2011 Q1', item1: 2666 },
// // 			      { y: '2011 Q2', item1: 2778 },
// // 			      { y: '2011 Q3', item1: 4912 },
// // 			      { y: '2011 Q4', item1: 3767 },
// // 			      { y: '2012 Q1', item1: 6810 },
// // 			      { y: '2012 Q2', item1: 5670 },
// // 			      { y: '2012 Q3', item1: 4820 },
// // 			      { y: '2012 Q4', item1: 15073 },
// // 			      { y: '2013 Q1', item1: 10687 },
// // 			      { y: '2013 Q2', item1: 8432 }
// 			    ],
// 			    xkey             : 'y',
// // 			    ykeys: ['item1'],
// // 			    labels: ['Item 1'],
// 			    ykeys            : [${avg.keys}],
// 			    labels           : [${avg.labels}],
// 			    lineColors       : ['#efefef'],
// 			    lineWidth        : 2,
// 			    hideHover        : 'auto',
// 			    gridTextColor    : 'red',
// 			    gridStrokeWidth  : 0.4,
// 			    pointSize        : 4,
// 			    pointStrokeColors: ['blue'],
// 			    gridLineColor    : '#efefef',
// 			    gridTextFamily   : 'Open Sans',
// 			    gridTextSize     : 10
// 			  });	
// 		}else{
		    var bar_data = {
		    	      data : [${adminChart}],
		    	      color: '#3c8dbc'
		    	    }
		    	    $.plot('#bar-chart', [bar_data], {
		    	      grid  : {
		    	        borderWidth: 1,
		    	        borderColor: '#f3f3f3',
		    	        tickColor  : '#f3f3f3'
		    	      },
		    	      series: {
		    	        bars: {
		    	          show    : true,
		    	          barWidth: 0.5,
		    	          align   : 'center'
		    	        }
		    	      },
		    	      xaxis : {
		    	        mode      : 'categories',
		    	        tickLength: 0
		    	      }
		    	    })
// 		}
		
	})
</script>

</body>
</html>