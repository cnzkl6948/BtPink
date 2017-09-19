<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="MainHead.jsp"%>

<style>
.filebox input[type="file"] { /* 파일 필드 숨기기 */
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}
</style>
<%@include file="MainHeader.jsp"%>



<!-- PAGE TITLE SECTION-->
<section class="pageTitleSection">
	<div class="container">
		<div class="pageTitleInfo">
			<h2>Forms</h2>
			<ol class="breadcrumb">
				<li><a href="index.html">Board</a></li>
				<li class="active">Write Form</li>
			</ol>
		</div>
	</div>
</section>

<!-- MAIN SECTION -->
<section class="mainContent full-width clearfix">
	<div class="container">
		<h4 class="text-center">Write form</h4>
		<div class="space-50">&nbsp;</div>
		<!-- Start contact form 2 -->
		<div class="row">
			<div class="col-xs-12">
				<div class="homeContactContent">
					<form action="writeNotice" method="post" role="form" id="writeform"
						enctype="multipart/form-data" onsubmit="return formCheck();">
						<div class="row">

							<div class="col-sm-10 col-xs-12">
								<div class="sectionTitle text-center">
									<h2>
										<span class="shape shape-left bg-color-4"></span> <span>글쓰기</span>
										<span class="shape shape-right bg-color-4"></span>
									</h2>
								</div>
								<div class="form-group">
									<i class="fa fa-envelope"></i> <input type="text"
										class="form-control border-color-1" placeholder="title"
										name="title" id="title">
								</div>
								<div class="form-group">
									<i class="fa fa-user" aria-hidden="true"></i> <input
										type="text" class="form-control border-color-2"
										id="exampleInputEmail2" name="id" placeholder="${User.id }"
										disabled="disabled">

								</div>
							</div>
							<div class="col-sm-2 col-xs-12">
								<div class="col-sm-12 col-xs-12">
									<div class="box bg-color-5">
										<div class="box-img border-color-5 text-center">
											<img id="target" src="#" alt="image" class="img-responsive">
										</div>
										<div class="box-info">
											<div class="filebox" style="padding: 3px">
												<h4 style="text-align: center;">
													<input type="file" name="file" id="file"
														accept="image/*" capture="camera"
														onchange="getThumbnailPrivew(this,$('#cma_image'))" /> <label
														for="cma_file">Img Upload</label>
												</h4>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xs-12">
								<div class="form-group">
									<i class="fa fa-comments" aria-hidden="true"></i>
									<textarea class="form-control border-color-4"
										placeholder="Write message" name="content" id="content"></textarea>
								</div>
							</div>
							<div class="col-xs-12">
								<div class="formBtnArea">
									<button type="submit" class="btn btn-primary">등록</button>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- Ends contact form 2-->

	</div>
</section>

<script>
	//글쓰기폼 확인
	function formCheck() {
		var title = document.getElementById('title');
		var content = document.getElementById('content');

		if (title.value.length < 5) {
			alert("제목을 입력하세요.");
			title.focus();
			title.select();
			return false;
		}
		if (content.value.length < 5) {
			alert("내용을 입력하세요.");
			title.focus();
			title.select();
			return false;
		}
		return true;
	}
	function getThumbnailPrivew(html, $target) {
		if (html.files && html.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				//$target.css('background-image', 'url(\"' + e.target.result + '\")'); // 배경으로 지정시  <img src="#" alt="image" class="img-responsive"> + e.target.result +
				// 				$('#target').html('<img src="'+ e.target.result +'" alt="image" class="img-responsive">');
				$('#target').attr('src', e.target.result);
			}
			reader.readAsDataURL(html.files[0]);
		}
	}
</script>

<%@include file="MainFooter.jsp"%>
</body>
</html>