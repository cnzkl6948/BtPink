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
		<h1>学生登録</h1>
	</section>
	<!-- Main row -->
	<div class="row">
		<form id="formId">
			<div class="col-lg-12">
				<section class="col-lg-6">
					<!-- Horizontal Form -->
					<div class="box box-danger">
						<div class="box-header with-border">
							<h3 class="box-title">学生登録</h3>
						</div>
						<!-- /.box-header -->
						<!-- form start -->
						<div class="box-body">
							<div class="form-group clearfix">
								<label for="name" class="col-sm-2 control-label text-center">名前</label>
								<div class="col-sm-5">
									<input type="text" class="form-control" id="name" name="name"
										placeholder="이름">
								</div>
								<label class="col-sm-2 control-label text-center">性別</label>
								<div class="col-sm-3">
									<label for="optionsRadios1" style="margin-right: 12px">
										<input type="radio" name="gender" id="optionsRadios1"
										value="M" checked> 男
									</label> <label for="optionsRadios2"> <input type="radio"
										name="gender" id="optionsRadios2" value="W"> 女
									</label>
								</div>
							</div>
							<div class="form-group clearfix">
								<label for="birth" class="col-sm-2 control-label text-center">誕生日</label>
								<div class="col-sm-5">
									<input type="text" class="form-control pull-right" name="birth"
										id="datepicker">
								</div>
								<label for="height" class="col-sm-2 control-label text-center">身長</label>
								<div class="col-sm-3">
									<input type="text" class="form-control" id="height"
										name="height" placeholder="키(cm)">
								</div>
							</div>
							<div class="form-group clearfix">
								<label for="address" class="col-sm-2 control-label text-center">住所</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="address"
										name="address" placeholder="주소">
								</div>
							</div>
							<div class="form-group clearfix">
								<input type="file" class="col-sm-12" id="uploadImage"
									name="file" />
								<div class="col-sm-12" id="preview">
									<img id="imagePreview" src="#" alt="" width="100%" /> <input
										type="hidden" id="imgSelect" value="notyet">
								</div>
							</div>

							<input type="hidden" id="personalid" name="personalid" /> <input
								type="hidden" id="stdno" name="stdno" />

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

				<section class="col-lg-6" style="padding-left: 0">
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
											<a data-toggle="collapse" data-parent="#accordion"> 学生登録
												メニューについて</a>
										</h4>
									</div>
									<div id="collapseOne" class="panel-collapse collapse in">
										<div class="box-body">&nbsp;このメニューは学生を登録するメニューです。
											出席チェックを ために、写真のアップロードが必要です。</div>
									</div>
								</div>
								<div class="panel box box-danger">
									<div class="box-header with-border">
										<h4 class="box-title">
											<a data-toggle="collapse" data-parent="#accordion"> 使い方 </a>
										</h4>
									</div>
									<div id="collapseTwo" class="panel-collapse collapse in">
										<div class="box-body">
											1.すべての入力欄を塞ぎてください。<br>2.写真をアップロードします。<br>3.、登録ボタンを
											押します。
										</div>
									</div>
								</div>
								<div class="panel box box-success">
									<div class="box-header with-border">
										<h4 class="box-title">
											<a data-toggle="collapse" data-parent="#accordion"> 特異事項
											</a>
										</h4>
									</div>
									<div id="collapseThree" class="panel-collapse collapse in">
										<div class="box-body">
											◎登録された写真を利用して出席チェックします。<br>◎眼鏡を書いた学生はチェックしてください。 座席配置の際
											必要な情報です。
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
					<button type="button" class="btn btn-block btn-danger"
						onclick="formcheck()">登錄</button>
					<button type="reset" class="btn btn-block btn-default">取消</button>
					<div class="modal modal-danger fade" id="modal-danger">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="btn btn-outline pull-right"
										data-dismiss="modal">閉じる</button>
									<h4 class="modal-title">学生登録</h4>
								</div>
								<div class="modal-body">
									<p id="chulcheck">登錄完了</p>
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
									<h4 class="modal-title">学生登録</h4>
								</div>
								<div class="modal-body">
									<p id="chulcheck">登錄中...</p>
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
<script type="text/javascript"
	src="https://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>
<script>
	$(function() {
		//Date picker
		$('#datepicker').datepicker({
			autoclose : true
		})
	});

	function formcheck() {
		//나이 계산
		var birthday = new Date($('#datepicker').val());
		var today = new Date();
		var years = today.getFullYear() - birthday.getFullYear();

		// Reset birthday to the current year.
		birthday.setFullYear(today.getFullYear());

		// If the user's birthday has not occurred yet this year, subtract 1.
		// 	if (today < birthday)
		// 	{
		// 	    years--;
		// 	}

		if ($('#name').val() === "") {
			alert('이름을 작성해 주세요');
			// 		return false;
		} else if ($('#classno').val() === "") {
			alert('반 이름을 작성해 주세요');
			// 		return false;
		} else if ($('#datepicker').val() === "") {
			alert('생일을 작성해 주세요');
			// 		return false;
		} else if (!(years >= 5 && years <= 7)) {
			alert('5, 6, 7세의 아동이 아닙니다.');
			//		return false;
		} else if ($('#height').val() === "") {
			alert('키를 작성해 주세요');
			// 		return false;
		}

		else if ($('#address').val() === "") {
			alert('주소를 작성해 주세요');
			// 		return false;
		} else if ($('#imgSelect').val() === "notyet") {
			alert('사진을 넣어 주세요');
			// 		return false;
		}

		else {
			$('#modal-danger2').modal();
			apper();
		}

	};
</script>
</body>
</html>

