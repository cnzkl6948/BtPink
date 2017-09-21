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
               반배정
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">반배정</li>
      </ol>
    </section>
	<br>
	<!-- Main row -->
      <div class="row">
      <div class="col-lg-12">
      <!-- left col -->
        <section class="col-lg-8 col-md-12 connectedSortable">
        	<div class="box box-solid">
	            <div class="box-body">
	            	<div class="box-group">
		            	<div class="panel box box-danger">
		                  <div class="box-header with-border">
		                    <h4 class="box-title">
		                      	<span>연령별 정보</span>
		                    </h4>
		                  </div>
		                  <div class="row">
		                  <div class="col-lg-12 col-md-12">
		                  <div id="collapseTwo" class="panel-collapse collapse in">
		                    <div class="progress">
				              <div class="progress-bar progress-bar-success progress-bar active" style="width: ${ (count5 / allCount) * 100 }%">
				                5세 ${ count5 }명
				              </div>
				              <div class="progress-bar progress-bar-warning progress-bar active" style="width: ${ (count6 / allCount) * 100 }%">
				                6세 ${ count6 }명
				              </div>
				              <div class="progress-bar progress-bar-danger progress-bar active" style="width: ${ (count7 / allCount) * 100 }%">
				                7세 ${ count7 }명
			              	  </div>
			            	</div>
			              </div>
		                  </div>
		                  </div>
		                </div>
	            	</div>
	            </div>
        	</div>
        	<div class="box">
            <div class="box-header">
              <h3 class="box-title">학생 목록</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
            <form id="stulist_form" action="autoSplit" method="post">
              <table id="stulist" class="table table-bordered table-hover">
                <thead>
                <tr>
                  <th>학번</th>
                  <th>이름</th>
                  <th>나이</th>
                  <th>반</th>
                  <th>성별</th>
                  <th>비호감 ID</th>
                  <th>적용</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="stu" items="${stuList}" varStatus="status">
                	<tr>
	                  <td>${stu.stdno}<input type="hidden" id="stdno${status.index}" name="stuList[${status.index}].stdno" value="${stu.stdno}" readonly="readonly"></td>
	                  <td>${stu.name}<input type="hidden" id="name${status.index}" name="stuList[${status.index}].name" value="${stu.name}" readonly="readonly"></td>
	                  <td>${stu.age}<input type="hidden" id="age${status.index}" name="stuList[${status.index}].age" value="${stu.age}" readonly="readonly"></td>
	                  <td>${stu.classno}<input type="hidden" id="classno${status.index}" name="stuList[${status.index}].classno" value="${stu.classno}"></td>
	                  <td>${stu.gender}<input type="hidden" id="gender${status.index}" name="stuList[${status.index}].gender" value="${stu.gender}" readonly="readonly"></td>
	                  <td><input type="text" id="hateid${status.index}" name="stuList[${status.index}].hateid" value="${stu.hateid}" style="width:100%"></td>
	                  <td><button type="button" class="btn btn-block btn-danger btn-sm" data-toggle="modal" data-target="#modal-danger" onclick="send('${status.index}');">적용</button></td>
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
        <section class="col-lg-4 col-md-12 connectedSortable">
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
	                      <span>
	                      	  반 배정 메뉴에 대하여
	                      </span>
	                    </h4>
	                  </div>
	                  <div id="collapseOne" class="panel-collapse collapse in">
	                    <div class="box-body">
	                      	&nbsp이 메뉴는 조건을 입력받아 자동으로 반배정 하는 메뉴입니다.	             	
	                    </div>
	                  </div>
	                </div>
	                <div class="panel box box-danger">
	                  <div class="box-header with-border">
	                    <h4 class="box-title">
	                      <span>
	                        	사용 방법
	                      </span>
	                    </h4>
	                  </div>
	                  <div id="collapseTwo" class="panel-collapse collapse in">
	                    <div class="box-body">
	                      1. 반 배정 버튼을 누릅니다.<br>
	                      2. 호감 비호감 ID 입력란이 활성화 됩니다.<br>
	                      3. ID를 입력하고 적용 버튼을 눌러주세요.
	                    </div>
	                  </div>
	                </div>
	                <div class="panel box box-success">
	                  <div class="box-header with-border">
	                    <h4 class="box-title">
	                      <span>
	                        	특이사항
	                      </span>
	                    </h4>
	                  </div>
	                  <div id="collapseThree" class="panel-collapse collapse in">
	                    <div class="box-body">
	                     	 ◎  남녀 성비율은 자동으로 균등 분배됩니다.<br>
	                     	 ◎  적용버튼을 누르는 순간 비호감 ID를 가진 학생이 교환됩니다.
	                    </div>
	                  </div>
	                </div>
	              </div>
	            </div>
	            <!-- /.box-body -->
	          </div>
	          <!-- /.box -->
	          <button type="button" class="btn btn-block btn-danger" data-toggle="modal" data-target="#modal-danger" onclick="location.href='calculate'">
                	자동 반 배정
              </button>
				<div class="modal modal-danger fade" id="modal-danger">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="btn btn-outline pull-right"
									data-dismiss="modal" onclick="closeModal()">닫기</button>
								<h4 class="modal-title">자동 반 배정</h4>
							</div>
							<div class="modal-body">
								<p id="chulcheck">자동 반 배정 중&hellip;</p>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				<!-- /.modal -->
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
var hateA = ${hateApply};
$(function(){
	if(hateA == 0){
		$('input[type=text]').attr("readonly",true).attr("disabled",false);
	}else{
		$('input[type=text]').attr("readonly",false).attr("disabled",false);
	}
	$('#stulist').DataTable();
});

function send(index){
	var stdno = '#stdno'+index;
	var name = '#name'+index;
	var age = '#age'+index;
	var classno = '#classno'+index;
	var gender = '#gender'+index;
	var hateid = '#hateid'+index;
	
	if(hateA == 0){
		alert('자동 반 배정을 눌러주세요.');
	}else{
		$.ajax({
	        url: "autoSplit",
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
	        	location.href='autoSplit';
	        }
	    });
	}
}
</script>
</body>
</html>