<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ include file="split/Head.jsp"%>
<link rel="stylesheet" href="./resources/AdminLTE/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">

<%@ include file="split/Header.jsp"%>
<%@ include file="split/Sidebar.jsp"%>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
		クラス手動配置
		</h1>
	</section>
	<!-- Main row -->
	<div class="row">
		<div class="col-lg-12">
			<!-- left col -->
			<section class="col-lg-8 col-md-12">
				<div class="box box-danger">
					<div class="box-header with-border">
						<h3 class="box-title">年齢別の情報</h3>
					</div>
					<div class="box-body">
						<div class="col-lg-12 col-md-12">
							<div id="collapseTwo" class="panel-collapse collapse in">
								<div class="progress">
									<div class="progress-bar progress-bar-success progress-bar active" style="width: ${ (count5 / allCount) * 100 }%">
										5才 ${ count5 }人
									</div>
									<div class="progress-bar progress-bar-warning progress-bar active" style="width: ${ (count6 / allCount) * 100 }%">
										6才 ${ count6 }人
									</div>
									<div class="progress-bar progress-bar-danger progress-bar active" style="width: ${ (count7 / allCount) * 100 }%">
										7才 ${ count7 }人
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="box box-danger">
					<div class="box-header with-border">
						<h3 class="box-title">學生目錄</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<form id="stulist_form" action="autoSplit" method="post">
							<table id="stulist" class="table table-bordered table-hover">
								<thead>
									<tr>
										<th>學生番號</th>
										<th>名前</th>
										<th>年齡</th>
										<th>クラス</th>
										<th>性別</th>
										<th>例外 ID</th>
										<th>適用</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="stu" items="${stuList}" varStatus="status">
									<tr>
										<td>${stu.stdno}<input type="hidden" id="stdno${status.index}" name="stuList[${status.index}].stdno" value="${stu.stdno}" readonly="readonly"></td>
										<td>${stu.name}<input type="hidden" id="name${status.index}" name="stuList[${status.index}].name" value="${stu.name}" readonly="readonly"></td>
										<td>${stu.age}<input type="hidden" id="age${status.index}" name="stuList[${status.index}].age" value="${stu.age}" readonly="readonly"></td>
										<td>
											<select id="classno${status.index}" name="stuList[${status.index}].classno">
												<c:forEach var="ccc" items="${classList}">
													<c:choose>
														<c:when test="${ ccc == stu.classno }">
															<option value="${ccc}" selected>${ccc}</option>
														</c:when>
														<c:otherwise>
															<option value="${ccc}">${ccc}</option>
														</c:otherwise>
													</c:choose>
												</c:forEach>
											</select>
										</td>
										<td>${stu.gender}<input type="hidden" id="gender${status.index}" name="stuList[${status.index}].gender" value="${stu.gender}" readonly="readonly"></td>
										<td>${stu.hateid}<input type="hidden" id="hateid${status.index}" name="stuList[${status.index}].hateid" value="${stu.hateid}" style="width:100%"></td>
										<td><button type="button" class="btn btn-block btn-danger btn-sm" data-toggle="modal" data-target="#modal-danger" onclick="send('${status.index}');">適用</button></td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
						</form>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
			</section>
			<!-- /.left col -->
			<!-- right col -->
			<section class="col-lg-4 col-md-12" style="padding-left:0">
				<div class="box box-solid">
					<div class="box-header with-border">
						<h3 class="box-title">使い方</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<div class="box-group" id="accordion">
							<!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
							<div class="panel box box-primary">
								<div class="box-header with-border">
									<h4 class="box-title">
									<span>
										クラス手動配置メニューについて
									</span>
									</h4>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in">
									<div class="box-body">
										&nbspこのメニューは半を直接的に修正するメニューです。
									</div>
								</div>
							</div>
							<div class="panel box box-danger">
								<div class="box-header with-border">
									<h4 class="box-title">
									<span>
										使い方
									</span>
									</h4>
								</div>
								<div id="collapseTwo" class="panel-collapse collapse in">
									<div class="box-body">
										1. classnoを入力します。<br>
										2. 適用ボタンを押してください。
									</div>
								</div>
							</div>
							<div class="panel box box-success">
								<div class="box-header with-border">
									<h4 class="box-title">
									<span>
										特異事項
									</span>
									</h4>
								</div>
								<div id="collapseThree" class="panel-collapse collapse in">
									<div class="box-body">
										◎  適用ボタンを押した瞬間、例外IDに関係なく適用されます。<br>
										◎クラス分けをする場合、今日出席したすべての情報は削除されます。
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
			</section>
			<!-- /.right col -->
		</div>
		<!-- /.row (main row) -->
	</div>
	
	<!-- table row -->
	<section class="content">
		<div class="row">
			<div class="col-lg-12">
				
			</div>
			<!-- ./table row -->
		</div>
		<!-- /.content-wrapper -->
	</section>
	<%@ include file="split/Footer.jsp"%>
	<!-- ChartJS -->
	<script src="./resources/AdminLTE/bower_components/chart.js/Chart.js"></script>
	<!-- DataTables -->
	<script src="./resources/AdminLTE/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
	<script src="./resources/AdminLTE/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
	<!-- page script -->
	<script>
	$(function(){
		$('#stulist').DataTable();
 	});
	
	function send(index){
		var stdno = '#stdno'+index;
		var name = '#name'+index;
		var age = '#age'+index;
		var classno = '#classno'+index;
		var gender = '#gender'+index;
		var hateid = '#hateid'+index;
		
		$.ajax({
			url: "manualSplit",
			type: "POST",
			data: {
					stdno 	: $(stdno).val(),
					name 	: $(name).val(),
					age 	: $(age).val(),
					classno : $(classno).val(),
					gender 	: $(gender).val(),
					hateid 	: $(hateid).val()
			},
				success: function(result){
				location.href='manualSplit';
			}
		});
	}
	</script>
</body>
</html>