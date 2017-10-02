<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
			出席チェック 
		</h1>
	</section>
	<!-- Main row -->
      <div class="row">
      <div class="col-lg-12">
      <!-- left col -->
        <section class="col-lg-6 col-md-12">
          	<div style="position:relative">
       	 		<div style="position:relative">
        		<form id="formId" style="font-size:0">
					<div id="img_here"></div>
					<input type="hidden" id="image" name="image"> <br>
					<canvas id="store" style="display: none;"></canvas>
				</form>
	          	<video autoplay="autoplay" id="myVideo" width="100%"></video><!-- width:100% 추가 -->
        		</div>
			</div>
		</section>
		<!-- /.left col -->
		<!-- right col -->
		<section class="col-lg-6 col-md-12" style="padding-left:0">
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
									<a data-toggle="collapse" data-parent="#accordion"> 出席チェック
										メニューについて </a>
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="box-body">&nbspこのメニューは写真を撮影して出席のチェック及び感情をセーブする
									メニューです。</div>
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
									1. 出席チェックのボタンを押します.<br> 2. 出席が確認された学生の名前を確認します.<br> 3. 閉じるの
									ボタンを押して抜け出します.
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
									◎ 同時に複数の出席チェックができます。<br> ◎ 学生登録メニューで登録した学生だけ出席チェックができます。.<br>
									◎ 一回チェックに３秒の時間が必要です。<br> ◎ このメニューでの出席は1日1回だけ
									可能です。
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /.box -->
			<button type="button" class="btn btn-block btn-danger"
				data-toggle="modal" data-target="#modal-danger" onclick="snapshot()">
				出席チェック</button>
			<div class="modal modal-danger fade" id="modal-danger">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="btn btn-outline pull-right"
								data-dismiss="modal" onclick="closeModal()">閉じる</button>
							<h4 class="modal-title">出席チェック</h4>
						</div>
						<div class="modal-body">
							<p id="chulcheck">出席チェック中&hellip;</p>
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
</div>
<!-- /.content-wrapper -->
<%@ include file="split/Footer.jsp"%>
<!-- Face API 자바스크립트 -->
<script src="./resources/js/acheck.js"></script>
</body>
</html>