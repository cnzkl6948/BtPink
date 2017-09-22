<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="split/Head.jsp"%>
<%@ include file="split/Header.jsp"%>
<%@ include file="split/Sidebar.jsp"%>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			<!--                출석체크 -->
			<!--         <small>Control panel</small> -->
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">출석부</li>
		</ol>
	</section>

	<!-- Main row -->
	<div class="row">
		<section class="col-lg-6 connectedSortable">
			<div class="col-lg-12">


				<div class="col-lg-12">
					<div class="box">
						<div class="box-header">
							<h3 class="box-title">Hover Data Table</h3>
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<table id="example2" class="table table-bordered table-hover"
								style="text-align: center;">
								<thead>
									<tr>
										<th><input type="checkbox" id="checkall" /></th>
										<th>학생번호</th>
										<th>이름</th>
										<th>출결</th>
										<th>조회</th>
										<th>병결</th>
										<th>지각</th>
										<th>확인</th>
									</tr>
								</thead>
								<tbody id="tableBody">
									<c:forEach items="${list}" var="rrs" varStatus="status">
										<tr>
											<td><input type="checkbox" class="checkthis" /></td>
											<td>${rrs.stdno}<input type="hidden" id="stdno${status.index}" name="list[${status.index}].stdno" value="${rrs.stdno}" readonly="readonly"></td>
											<td>${rrs.name}<input type="hidden" id="name${status.index}" name="list[${status.index}].name" value="${rrs.name}" readonly="readonly"></td>
											<c:if test="${rrs.absent == 1}">
												<td><input type="checkbox" id="absent${status.index}" name="list[${status.index}].absent" checked="checked" value="absent"></td>
											</c:if>
											<c:if test="${rrs.absent == 0}">
												<td><input type="checkbox" id="absent${status.index}" name="list[${status.index}].absent" value="absent"></td>
											</c:if>
											<c:if test="${rrs.early == 1}">
												<td><input type="checkbox" id="early${status.index}" name="list[${status.index}].early" checked="checked" value="early"></td>
											</c:if>
											<c:if test="${rrs.early == 0}">
												<td><input type="checkbox" id="early${status.index}" name="list[${status.index}].early" value="early"></td>
											</c:if>
											<c:if test="${rrs.sick == 1}">
												<td><input type="checkbox" id="sick${status.index}" name="list[${status.index}].sick" checked="checked" value="sick"></td>
											</c:if>
											<c:if test="${rrs.sick == 0}">
												<td><input type="checkbox" id="sick${status.index}" name="list[${status.index}].sick" value="sick"></td>
											</c:if>
											<c:if test="${rrs.late == 1}">
												<td><input type="checkbox" id="late${status.index}" name="list[${status.index}].late" checked="checked" value="late"></td>
											</c:if>
											<c:if test="${rrs.late == 0}">
												<td><input type="checkbox" id="late${status.index}" name="list[${status.index}].late" value="late"></td>
											</c:if>
											<td><p data-placement="top" data-toggle="tooltip" title="Edit">
													<button class="btn btn-primary btn-xs" onclick="send('${status.index}');">
														<span class="glyphicon glyphicon-pencil"></span>
													</button>
												</p>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
				</div>


			</div>
		</section>

		<section class="col-lg-6 connectedSortable">
			<div class="col-md-12">
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
				<button type="button" class="btn btn-block btn-danger"
					data-toggle="modal" data-target="#modal-danger"
					onclick="formcheck()">등록</button>
				<button type="button" class="btn btn-block btn-default"
					onclick="cancel()">취소</button>
					
					<label for="birth" class="col-sm-2 control-label">생일</label>
								<div class="col-sm-5">
									<input type="text" class="form-control pull-right" name="birth"
										id="datepicker">
								</div>
				<div class="modal modal-danger fade" id="modal-danger">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="btn btn-outline pull-right"
									data-dismiss="modal">닫기</button>
								<h4 class="modal-title">학생 등록</h4>
							</div>
							<div class="modal-body">
								<p id="chulcheck">등록 완료</p>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				<!-- /.modal -->
			</div>
		</section>
	</div>
	<!-- /.row -->
	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<%@ include file="split/Footer.jsp"%>
<script src="./resources/AdminLTE/js/sapply.js"></script>
<script type="text/javascript"
	src="https://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>
	
	
<script>
$(function(){
	//Date picker
    $('#datepicker').datepicker({
      autoclose: true
    })
});


function send(index){
	var stdno = '#stdno'+index;
	var name = '#name'+index;
	var absent = '#absent'+index;
	var early = '#early'+index;
	var sick = '#sick'+index;
	var late = '#late'+index;
	
	var absentD = 'n';
	var earlyD = 'n';
	var sickD = 'n';
	var lateD = 'n';
	
	if($(absent).is(":checked")){
		absentD = $(absent).val();
	}
	if($(early).is(":checked")){
		earlyD = $(early).val();
	}	
	if($(sick).is(":checked")){
		sickD = $(sick).val();
	}	
	if($(late).is(":checked")){
		lateD = $(late).val();
	}
	
	
	$.ajax({
        url: "atdCheck",
        type: "POST",
        data: {
        	stdno 	: $(stdno).val(),
        	name 	: $(name).val(),
        	absent : absentD,
    		early : earlyD,
    		sick : sickD,
    		late : lateD
        },
        success: function(result){	
        	alert('얏따');
        	location.href='Slist';
        }
    });
	
	
	
}
</script>
</body>
</html>
