<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="split/Head.jsp"%>
<link rel="stylesheet" href="./resources/AdminLTE/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">

<style>
.main-header {
	z-index: 9; 
}
.main-sidebar {
	z-index: 8; 
}
</style>
<%@ include file="split/Header.jsp"%>
<%@ include file="split/Sidebar.jsp"%>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			반 등록 <small>Control panel</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">반 등록</li>
		</ol>
	</section>
	<br>
	<!-- Main row -->
	<div class="row">
		<section class="col-lg-6 connectedSortable">
			<div class="col-lg-12">
				<!-- Horizontal Form -->
				<div class="box box-danger">
					<div class="box-header with-border">
						<h3 class="box-title">반 등록</h3>
					</div>
					<!-- /.box-header -->
					<!-- form start -->
					<form action="classInsert" method="GET" id="classInsert" role="form" onsubmit="return formCheck();">
<!-- 					<form class="form-horizontal" id="formId" action="Sapply" -->
<!-- 						method="POST" role="form"> -->
						<div class="box-body">
							<div class="form-group">
								<label for="name" class="col-sm-3 control-label">반이름</label>
								<div class="col-sm-6">
									<input type="text" class="form-control" id="className" name="className"	
									placeholder="반이름(중복을 확인해 주세요)" >
								</div>
								<div class="col-sm-3">
									<input type="button" onclick="classNameCheck()" value="확인">
									<input type="hidden" id="classNameHidden">
								</div>
							</div>
						<br>
							<div class="form-group">
								<label for="agegroup" class="col-sm-3 control-label">나이</label>
									<div class="col-sm-4">
											<select id="age" class="select-drop" name="age" onchange="ageCheck();">
												<option label="" disabled selected>나이</option>
												<option value="5">5세</option>
												<option value="6">6세</option>
												<option value="7">7세</option>
											</select>
									</div>
								<div class="col-sm-5">
								<input type="hidden" >
								</div>
							</div>
						<br>
							<div class="form-group">
								<label for="teacherName" class="col-sm-3 control-label">선생님 이름</label>
								<div class="col-sm-6" >
									<input type="text" class="form-control" id="teacherName"
										name="teacherName" placeholder="선생님 이름" >
								</div>
								<div class="col-sm-3" id="teacherNameCheckButton">
									<input type="button"  onclick="teacherNameCheck()" value="확인">
								</div>
							</div>
						<br>	
							
							<div class="form-group">
								<div id="SelectTeacher">
									<input type="hidden" id="teacherCheck">
								</div>
							</div>
										
						</div>
						<div class="box-footer">
							<button type="reset" class="btn btn-default">취소</button>
							<button type="submit" class="btn btn-danger pull-right" >등록</button>
<!-- 							<button type="submit" class="btn btn-danger pull-right">등록</button> -->
<!-- 							<button type="button" class="btn btn-danger pull-right" onclick="addFace()">테스트</button> -->
							
						</div>
						<!-- /.box-footer -->
					</form>
				</div>
			</div>
			<div class="col-lg-12">
				<div class="box">
		            <div class="box-header">
		              <h3 class="box-title">반 목록</h3>
		            </div>
		            <!-- /.box-header -->
		            <div class="box-body">
		            <form id="classlist_form" action="classManagement" method="get">
		              <table id="classlist" class="table table-bordered table-hover">
		                <thead>
		                <tr>
		                  <th>반 번호</th>
		                  <th>반 이름</th>
		                  <th>나이</th>
		                  <th>선생님</th>
		                </tr>
		                </thead>
		                <tbody>
		                <c:forEach var="cla" items="${claList}" varStatus="status">
		                	<tr>
			                  <td>${cla.classNo}<input type="hidden" id="classNo${status.index}" name="claList[${status.index}].classNo" value="${cla.classNo}" readonly="readonly"></td>
			                  <td>${cla.className}<input type="hidden" id="className${status.index}" name="claList[${status.index}].className" value="${cla.className}" readonly="readonly"></td>
			                  <td>${cla.age}<input type="hidden" id="age${status.index}" name="claList[${status.index}].age" value="${cla.age}" readonly="readonly"></td>
			                  <td>${cla.teacherName}<input type="hidden" id="teacherName${status.index}" name="claList[${status.index}].teacherName" value="${cla.teacherName}"></td>
			                </tr>
		                </c:forEach>
		                </tbody>
		              </table>
		              </form>
		            </div>
		            <!-- /.box-body -->
		          </div>
		          <!-- /.box -->
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
										<a data-toggle="collapse" data-parent="#accordion"> 반 등록
											메뉴에 대하여 </a>
									</h4>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in">
									<div class="box-body">&nbsp;이 메뉴는 반을 등록하는 메뉴입니다. </div>
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
										1. 모든 입력란을 채워주세요.<br> 2. 반이름과 선생님이름은 반드시 확인해 주세요.<br> 
										3. 등록 버튼을 누릅니다.
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
										◎ 기존에 있는 반 목록을 불러옵니다.<br> ◎기존에 존재하는 반 이름으로는 등록하실 수 없습니다.
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
				<button type="button" class="btn btn-block btn-danger"
					data-toggle="modal" data-target="#modal-danger" onclick="formcheck()">
					등록</button>
				<button type="button" class="btn btn-block btn-default"
					onclick="cancel()">취소</button>
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
</div>
<!-- /.content-wrapper -->

<%@ include file="split/Footer.jsp"%>
<script src="./resources/AdminLTE/js/sapply.js"></script>
<script type="text/javascript"
	src="https://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>
<script src="./resources/js/classManagement.js"></script>	
<!-- ChartJS -->
<script src="./resources/AdminLTE/bower_components/chart.js/Chart.js"></script>
<!-- DataTables -->
<script src="./resources/AdminLTE/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="./resources/AdminLTE/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>

<script>
  
$('#classlist').DataTable();
function send(index){
	var classNo = '#classNo'+index;
	var className = '#className'+index;
	var age = '#age'+index;
	var teacherName = '#teacherName'+index;
	$.ajax({
        url: "classManagement",
        type: "GET",
        data: {
        	classNo	: $(classNo).val(),
        	className: $(className).val(),
        	age 	: $(age).val(),
        	teacherName : $(teacherName).val(),
        	gender 	: $(gender).val(),
        	likeid 	: $(likeid).val(),
        	hateid 	: $(hateid).val()
        },
        success: function(result){	
        }
    });
}
</script>
</body>
</html>

