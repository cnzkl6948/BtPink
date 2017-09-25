<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		<h1>출석부<small>Control panel</small></h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">출석부</li>
		</ol>
	</section>

	<!-- Main row -->
	<div class="row">
		<div class="col-lg-12">
		<section class="col-lg-8">
			<div class="box box-danger">
				<div class="box-header with-border">
					<h3 class="box-title">출석부</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<form action="Slist" method="GET">
						<div class="col-lg-12 col-md-12" style="padding-bottom:10px">
							<div class="col-lg-10 col-lg-offset-1">
								<label for="datepicker" class="control-label pull-left" style="padding-top:7px">날짜선택 : </label>
								<div class="col-lg-8">
									<input type="text" class="form-control inp_date" name="day" id="datepicker" placeholder="${selDay}">
								</div>
								<input type="submit" class="btn btn-danger" value="날짜변경" />
							</div>
						</div>
					</form>
					<table id="stulist" class="table table-bordered table-hover"
						style="text-align: center;">
						<thead>
							<tr>
								<th class="text-center"><input type="checkbox" id="checkall" /></th>
								<th class="text-center">학생번호</th>
								<th class="text-center">이름</th>
								<th class="text-center">출결</th>
								<th class="text-center">조퇴</th>
								<th class="text-center">병결</th>
								<th class="text-center">지각</th>
								<th class="text-center">확인</th>
							</tr>
						</thead>
						<tbody id="tableBody">
							<c:forEach items="${list}" var="rrs" varStatus="status">
								<tr>
									<td><input type="checkbox" class="checkthis" /></td>
									<td>${rrs.stdno}<input type="hidden"
										id="stdno${status.index}" name="list[${status.index}].stdno"
										value="${rrs.stdno}" readonly="readonly"></td>
									<td>${rrs.name}<input type="hidden"
										id="name${status.index}" name="list[${status.index}].name"
										value="${rrs.name}" readonly="readonly"></td>
									<c:if test="${rrs.absent == 1}">
										<td><input type="checkbox" id="absent${status.index}"
											name="list[${status.index}].absent" checked="checked"
											value="absent"></td>
									</c:if>
									<c:if test="${rrs.absent == 0}">
										<td><input type="checkbox" id="absent${status.index}"
											name="list[${status.index}].absent" value="absent"></td>
									</c:if>
									<c:if test="${rrs.early == 1}">
										<td><input type="checkbox" id="early${status.index}"
											name="list[${status.index}].early" checked="checked"
											value="early"></td>
									</c:if>
									<c:if test="${rrs.early == 0}">
										<td><input type="checkbox" id="early${status.index}"
											name="list[${status.index}].early" value="early"></td>
									</c:if>
									<c:if test="${rrs.sick == 1}">
										<td><input type="checkbox" id="sick${status.index}"
											name="list[${status.index}].sick" checked="checked"
											value="sick"></td>
									</c:if>
									<c:if test="${rrs.sick == 0}">
										<td><input type="checkbox" id="sick${status.index}"
											name="list[${status.index}].sick" value="sick"></td>
									</c:if>
									<c:if test="${rrs.late == 1}">
										<td><input type="checkbox" id="late${status.index}"
											name="list[${status.index}].late" checked="checked"
											value="late"></td>
									</c:if>
									<c:if test="${rrs.late == 0}">
										<td><input type="checkbox" id="late${status.index}"
											name="list[${status.index}].late" value="late"></td>
									</c:if>
			
									<input type="hidden" id="day" name="day" value='${selDay}' />
			
			
									<td><p data-placement="top" data-toggle="tooltip"
											title="Edit">
											<button class="btn btn-primary btn-xs"
												onclick="send('${status.index}');">
												<span class="glyphicon glyphicon-pencil"></span>
											</button>
										</p></td>
								</tr>
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
									<a data-toggle="collapse" data-parent="#accordion"> 학생 등록
										메뉴에 대하여 </a>
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="box-body">&nbsp;이 메뉴는 학생을 등록하는 메뉴입니다. 출석체크를
									위해 사진 업로드가 필요합니다.</div>
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
									1. 모든 입력란을 체워주세요.<br> 2. 사진을 업로드 합니다.<br> 3. 등록 버튼을
									누릅니다.
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
									◎ 등록된 사진을 이용해서 출석체크합니다.<br> ◎ 안경을 쓴 학생은 체크해주세요. 자리배치 시
									필요한 정보입니다.
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
<script src="./resources/AdminLTE/js/sapply.js"></script>
<!-- DataTables -->
	<script src="./resources/AdminLTE/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
	<script src="./resources/AdminLTE/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>

<script>
	$(function() {
		//Date picker
		$('#datepicker').datepicker({
			autoclose : true
		})
		$('#stulist').DataTable();
	});

	function send(index) {
		var stdno = '#stdno' + index;
		var name = '#name' + index;
		var absent = '#absent' + index;
		var early = '#early' + index;
		var sick = '#sick' + index;
		var late = '#late' + index;

		var absentD = 'n';
		var earlyD = 'n';
		var sickD = 'n';
		var lateD = 'n';

		if ($(absent).is(":checked")) {
			absentD = $(absent).val();
		}
		if ($(early).is(":checked")) {
			earlyD = $(early).val();
		}
		if ($(sick).is(":checked")) {
			sickD = $(sick).val();
		}
		if ($(late).is(":checked")) {
			lateD = $(late).val();
		}

		$.ajax({
			url : "atdCheck",
			type : "POST",
			data : {
				stdno : $(stdno).val(),
				name : $(name).val(),
				today : $(day).val(),
				absent : absentD,
				early : earlyD,
				sick : sickD,
				late : lateD
			},
			success : function(result) {
				alert('얏따');
				location.href = 'Slist';
			}
		});

	}
</script>
</body>
</html>
