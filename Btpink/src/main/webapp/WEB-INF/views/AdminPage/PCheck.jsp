<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="split/Head.jsp"%>
<link rel="stylesheet" href="./resources/css/imghere.css">
<%@ include file="split/Header.jsp"%>
<%@ include file="split/Sidebar.jsp"%>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
               인원확인
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">인원확인</li>
      </ol>
    </section>
	<br>
      <!-- Main row -->
      <div class="row">
        <!-- Left col -->
        <section class="col-lg-6 connectedSortable">
          	<div class="col-md-12">
	          	<div>
					<video autoplay="autoplay" id="myVideo"></video>
				</div>
				<form id="formId">
					<p id="img_here"></p>
					<input type="hidden" id="image" name="image" > <br>
					<canvas id="store" style="display: none;" ></canvas>
				</form>
        	</div>
        </section>
        <!-- /.Left col -->
        
        <!-- right col (We are only adding the ID to make the widgets sortable)-->
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
	                      <a data-toggle="collapse" data-parent="#accordion">
	                      	  인원확인 메뉴에 대하여
	                      </a>
	                    </h4>
	                  </div>
	                  <div id="collapseOne" class="panel-collapse collapse in">
	                    <div class="box-body">
	                      	&nbsp이 메뉴는 주기적으로 사진을 촬영하여 사진 속 인원 수를 헤야려 출석인원과 비교하여 변동사항이 발생했을 경우 경고알람을 선생님에게 보내는 메뉴입니다.	                      	
	                    </div>
	                  </div>
	                </div>
	                <div class="panel box box-danger">
	                  <div class="box-header with-border">
	                    <h4 class="box-title">
	                      <a data-toggle="collapse" data-parent="#accordion">
	                        	사용 방법
	                      </a>
	                    </h4>
	                  </div>
	                  <div id="collapseTwo" class="panel-collapse collapse in">
	                    <div class="box-body">
	                      1. 인원확인 버튼을 누릅니다.<br>
	                      2. 버튼을 누르면 5분마다 자동으로 사진을 촬영하고 인원 수를 헤아립니다.
	                    </div>
	                  </div>
	                </div>
	                <div class="panel box box-success">
	                  <div class="box-header with-border">
	                    <h4 class="box-title">
	                      <a data-toggle="collapse" data-parent="#accordion">
	                        	특이사항
	                      </a>
	                    </h4>
	                  </div>
	                  <div id="collapseThree" class="panel-collapse collapse in">
	                    <div class="box-body">
	                     	 ◎ 인원 파악만 가능하며 학생식별은 불가능합니다.<br>
	                     	 ◎ 프로그램이 완벽하지 않기 때문에 인원 수 오류가 있을 수 있습니다.<br>
	                     	 ◎ 교구에 가려져 보이지 않을 수 있습니다.<br>
	                     	 ◎ 사진 처리에는 30초이상의 시간이 필요합니다.
	                    </div>
	                  </div>
	                </div>
	              </div>
	            </div>
	            <!-- /.box-body -->
	          </div>
	          <!-- /.box -->
	          <button type="button" class="btn btn-block btn-danger" data-toggle="modal" data-target="#modal-danger" onclick="snapshot()">
                	인원확인
              </button>
				<div class="modal modal-danger fade" id="modal-danger">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="btn btn-outline pull-right"
									data-dismiss="modal" onclick="closeModal()">닫기</button>
								<h4 class="modal-title">인원 확인</h4>
							</div>
							<div class="modal-body">
								<p id="img"></p>
								<p id="hitocheck">인원 확인 중&hellip; <br>30초 이상 시간이 필요합니다. <br>기다려주세요.</p>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				<!-- /.modal -->
			</div>

        </section>
        <!-- right col -->
      </div>
      <!-- /.row (main row) -->
  </div>
  <!-- /.content-wrapper -->
  
<%@ include file="split/Footer.jsp"%> 
<!-- Tensorflow API 자바스크립트 -->
<script src="./resources/object_detection/js/pcheck.js"></script>
</body>
</html>