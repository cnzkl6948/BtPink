<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="split/Head.jsp"%>
<link rel="stylesheet"
	href="./resources/AdminLTE/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">

<style>
.main-header{z-index:9;}
.main-sidebar{z-index:8;}
</style>
<%@ include file="split/Header.jsp"%>
<%@ include file="split/Sidebar.jsp"%>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			회원가입 승인
		</h1>
	</section>
	<!-- Main row -->
	<div class="row">
		<div class="col-lg-12">
		<section class="col-lg-8">
			<div class="box box-danger">
				<div class="box-header with-border">
					<h3 class="box-title">회원목록</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<table id="example2" class="table table-bordered table-hover"
						style="text-align: center;">
						<thead>
							<tr style="text-align: center;">
								<th>I    D</th>
								<th>부모 이름</th>
								<th>구       분</th>
								<th>전화 번호</th>
								<th>가입 날짜</th>
								<th>승인 여부</th>
							</tr>
						</thead>
						<tbody id="tableBody">
							<c:forEach items="${AapplyList}" var="list">
								<c:if test="${list.id != 'admin' }">
									<tr>
										<td>${list.id }</td>
										<td>${list.parentName }</td>
										<td>${list.studentName }</td>
										<td>${list.tell }</td>
										<td>${fn:substring(list.memNo,1,9)}</td>
										<td id="${list.memNo}"><c:if
												test="${list.status =='0' }">
												<button type="button" class="btn btn-block btn-primary" 
													onclick="javascript:sign('${list.memNo}','${list.status}')">승인</button>
											</c:if> <c:if test="${list.status =='1' }">
												<button type="button" class="btn btn-block btn-danger"
													onclick="javascript:sign('${list.memNo}','${list.status}')">비승인</button>
											</c:if></td>
									</tr>
								</c:if>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /.box -->
		</section>
		<section class="col-lg-4" style="padding-left:0">
			<div class="box box-solid">
				<div class="box-header with-border">
					<h3 class="box-title">사용 방법</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<div class="box-group" id="accordion">
						<!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
						<div class="panel box box-primary">
							<div class="box-header with-border">
								<h4 class="box-title">
									<a data-toggle="collapse" data-parent="#accordion"> 회원 가입 승인
										메뉴에 대하여 </a>
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="box-body">&nbsp;이 메뉴는 회원 가입자를 승인해주는 메뉴입니다. </div>
							</div>
						</div>
						<div class="panel box box-danger">
							<div class="box-header with-border">
								<h4 class="box-title">
									<a data-toggle="collapse" data-parent="#accordion"> 사용 방법
									</a>
								</h4>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse in">
								<div class="box-body">
									1. 승인 버튼 또는 비승인 버튼을 눌러주세요.
								</div>
							</div>
						</div>
						<div class="panel box box-success">
							<div class="box-header with-border">
								<h4 class="box-title">
									<a data-toggle="collapse" data-parent="#accordion"> 특이사항 </a>
								</h4>
							</div>
							<div id="collapseThree" class="panel-collapse collapse in">
								<div class="box-body">
									◎ 승인 버튼 활성화 : 비승인 상태<br> 
									◎ 비승인 버튼 활성화 : 승인 상태<br>
									◎ 승인하지 않으면 로그인이 불가능합니다.
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /.box -->
		</section>
	</div>
	</div>
	<!-- /.row -->
</div>
<!-- /.content-wrapper -->

<%@ include file="split/Footer.jsp"%>
<!-- ChartJS -->
<script src="./resources/AdminLTE/bower_components/chart.js/Chart.js"></script>
<!-- DataTables -->
<script
	src="./resources/AdminLTE/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script
	src="./resources/AdminLTE/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<script>
	$('#example2').DataTable();
	function sign(memNo, status) {
		$
				.ajax({
					url : "sign",
					type : "post",
					data : {
						'memNo' : memNo,
						'status' : status
					},
					success : function(account) {
						// SelectStudent background-color: #337ab7
						var text = '';

						if (status == '1') {
							text += '<button type="button" class="btn btn-block btn-primary"'
							text += 'onclick="javascript:sign(\'' + memNo
									+ '\',\'' + 0 + '\')">승인</button>'
						} else {
							text += '<button type="button" class="btn btn-block btn-danger"'
							text += 'onclick="javascript:sign(\'' + memNo
									+ '\',\'' + 1 + '\')">비승인</button>'
						}
						$('#' + memNo).html(text);
					}
				});
	}
</script>
</body>
</html>

