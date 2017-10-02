<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="split/Head.jsp"%>
<link rel="stylesheet" href="./resources/AdminLTE/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">

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
			クラス登錄  
		</h1>
	</section>
	<!-- Main row -->
	<div class="row">
		<form action="classInsert" method="post" id="classInsert" role="form" onsubmit="return formCheck();">
		<div class="col-lg-12">
		<section class="col-lg-6">
			<!-- Horizontal Form -->
			<div class="box box-danger">
				<div class="box-header with-border">
					<h3 class="box-title">クラス登錄  </h3>
				</div>
				<!-- /.box-header -->
				<!-- form start -->
			<!-- 					<form class="form-horizontal" id="formId" action="Sapply" -->
			<!-- 						method="POST" role="form"> -->
					<div class="box-body">
						<div class="form-group clearfix">
							<label for="name" class="col-sm-3 control-label">クラス名前</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="className" name="className"	placeholder="クラス名前(重複を確認してください)" >
								<input type="hidden" id="classNameCheckk" value="0">
							</div>
							<div class="col-sm-3">
								<input type="button" class="btn btn-danger" onclick="classNameCheck()" value="確認">
								<input type="hidden" id="classNameHidden">
							</div>
						</div>
						<div class="form-group clearfix">
							<label for="agegroup" class="col-sm-3 control-label">年齢</label>
								<div class="col-sm-4">
										<select id="age" class="select-drop" name="age"">
											<option label="" disabled selected>年齢</option>
											<option value="5">5歳</option>
											<option value="6">6歳</option>
											<option value="7">7歳</option>
										</select>
								</div>
							<div class="col-sm-5">
								<input type="hidden" >
							</div>
						</div>
						<div class="form-group clearfix">
							<label for="teacherName" class="col-sm-3 control-label">先生名前</label>
							<div class="col-sm-6" >
								<input type="text" class="form-control" id="teacherName" name="teacherName" placeholder="先生名前" >
								<input type="hidden" id="teacherNameCheckk" value="0">
							</div>
							<div class="col-sm-3" id="teacherNameCheckButton">
								<input type="button" class="btn btn-danger" onclick="teacherNameCheck()" value="確認">
							</div>
						</div>	
						
						<div class="form-group">
							<div id="SelectTeacher">
								<input type="hidden" id="teacherCheck">
							</div>
						</div>
									
					</div>
					<!-- <div class="box-footer">
						<button type="reset" class="btn btn-default">취소</button>
						<button type="submit" class="btn btn-danger pull-right" >등록</button>
						<button type="submit" class="btn btn-danger pull-right">등록</button>
						<button type="button" class="btn btn-danger pull-right" onclick="addFace()">테스트</button>
						
					</div> -->
					<!-- /.box-footer -->
			</div>
			<div class="box box-danger">
	            <div class="box-header with-border">
	              <h3 class="box-title">クラス目錄</h3>
	            </div>
	            <!-- /.box-header -->
	            <div class="box-body">
	              <table id="classlist" class="table table-bordered table-hover">
	                <thead>
	                <tr>
	                  <th>クラス番号</th>
	                  <th>クラス名前</th>
	                  <th>年齡</th>
	                  <th>先生</th>
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
	            </div>
	            <!-- /.box-body -->
	          </div>
	          <!-- /.box -->
		</section>
		
		
		<section class="col-lg-6" style="padding-left:0">
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
									<a data-toggle="collapse" data-parent="#accordion"> クラス登録
								メニューについて </a>
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="box-body">&nbsp;このメニューはクラスを登録するメニューです。 </div>
							</div>
						</div>
						<div class="panel box box-danger">
							<div class="box-header with-border">
								<h4 class="box-title">
									<a data-toggle="collapse" data-parent="#accordion"> 使い方
									</a>
								</h4>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse in">
								<div class="box-body">
									1.すべての入力欄を満たしてください。<br> 2.半名前と先生名前は必ず確認してください。<br> 
									3.登録ボタンを押します。
								</div>
							</div>
						</div>
						<div class="panel box box-success">
							<div class="box-header with-border">
								<h4 class="box-title">
									<a data-toggle="collapse" data-parent="#accordion"> 特異事項 </a>
								</h4>
							</div>
							<div id="collapseThree" class="panel-collapse collapse in">
								<div class="box-body">
									◎従来にいるクラスリストを読み込みます。<br> ◎、従来に存在するクラス名は登録できません。
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /.box -->
			<button type="submit" class="btn btn-block btn-danger">登錄</button>
			<button type="reset" class="btn btn-block btn-default">取消</button>
			</div>
		</section>
		</form>
	</div>
	<!-- /.row -->
</div>
<!-- /.content-wrapper -->

<%@ include file="split/Footer.jsp"%>
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

