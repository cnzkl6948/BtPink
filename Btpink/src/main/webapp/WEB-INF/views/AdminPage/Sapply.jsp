<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="split/Head.jsp"%>
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
			학생 등록  
		</h1>
	</section>
	<!-- Main row -->
	<div class="row">
		<form id="formId">
		<div class="col-lg-12">
		<section class="col-lg-6">
			<!-- Horizontal Form -->
			<div class="box box-danger">
				<div class="box-header with-border">
					<h3 class="box-title">학생등록</h3>
				</div>
				<!-- /.box-header -->
				<!-- form start -->
					<div class="box-body">
						<div class="form-group clearfix">
							<label for="name" class="col-sm-2 control-label text-center">이름</label>
							<div class="col-sm-5">
								<input type="text" class="form-control" id="name" name="name"
									placeholder="이름">
							</div>
							<label class="col-sm-2 control-label text-center">성별</label>
							<div class="col-sm-3">
								<label for="optionsRadios1" style="margin-right:12px"> <input type="radio" name="gender" id="optionsRadios1" value="M" checked> 남</label> 
								<label for="optionsRadios2"> <input type="radio" name="gender" id="optionsRadios2" value="W"> 여</label>
							</div>
						</div>
						<div class="form-group clearfix">
							<label for="birth" class="col-sm-2 control-label text-center">생일</label>
							<div class="col-sm-5">
								<input type="text" class="form-control pull-right" name="birth"
									id="datepicker">
							</div>
							<label for="height" class="col-sm-2 control-label text-center">신장</label>
							<div class="col-sm-3">
								<input type="text" class="form-control" id="height"
									name="height" placeholder="키(cm)">
							</div>
						</div>
						<div class="form-group clearfix">
							<label for="address" class="col-sm-2 control-label text-center">주소</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="address"
									name="address" placeholder="주소">
							</div>
						</div>
						<div class="form-group clearfix">
							<input type="file" class="col-sm-12" id="uploadImage"
								name="file" />
							<div class="col-sm-12" id="preview">
								<img id="imagePreview" src="#" alt="" width="100%" /> <input type="hidden" id="imgSelect"
									value="notyet">
							</div>
						</div>
						
						<input type="hidden" id="personalid" name="personalid"/>
						<input type="hidden" id="stdno" name="stdno"/>
										
					</div>
					<!--
					<div class="box-footer">
						<button type="reset" class="btn btn-default">취소</button>
						<button type="button" class="btn btn-danger pull-right" onclick="formcheck()">등록</button>
						<button type="submit" class="btn btn-danger pull-right">등록</button>
						<button type="button" class="btn btn-danger pull-right" onclick="addFace()">테스트</button>
					</div> -->
					<!-- /.box-footer -->
			</div>
		</section>

		<section class="col-lg-6" style="padding-left:0">
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
				data-toggle="modal" data-target="#modal-danger2" onclick="formcheck()">
				등록</button>
			<button type="reset" class="btn btn-block btn-default">취소</button>
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
			
			<div class="modal modal-danger fade" id="modal-danger2">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="btn btn-outline pull-right"
								data-dismiss="modal">닫기</button>
							<h4 class="modal-title">학생 등록</h4>
						</div>
						<div class="modal-body">
							<p id="chulcheck">등록중...</p>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->
			
		</section>
		</div>
		</form>
	</div>
	<!-- /.row -->
</div>
<!-- /.content-wrapper -->

<%@ include file="split/Footer.jsp"%>
<script src="./resources/AdminLTE/js/sapply.js"></script>
<script type="text/javascript" src="https://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>
<script>
$(function(){
	//Date picker
    $('#datepicker').datepicker({
      autoclose: true
    })
});

function formcheck(){
	if($('#name').val() === ""){
		alert('이름을 작성해 주세요');
// 		return false;
	}
	else if($('#classno').val() === ""){
		alert('반 이름을 작성해 주세요');
// 		return false;
	}
	else if($('#height').val() === ""){
		alert('키를 작성해 주세요');
// 		return false;
	}
	else if($('#datepicker').val() === ""){
		alert('생일을 작성해 주세요');
// 		return false;
	}
	
// 	else if(years!=5||years!=6||years!=7){
// 		alert('만 5,6,7세의 아동이 아닙니다.');
// //		return false;
// 	}
	
	else if($('#address').val() === ""){
		alert('주소를 작성해 주세요');
// 		return false;
	}
	else if($('#imgSelect').val() === "notyet"){
		alert('사진을 넣어 주세요');
// 		return false;
	}
	
	else{
	apper();
    }

};


</script>
</body>
</html>

