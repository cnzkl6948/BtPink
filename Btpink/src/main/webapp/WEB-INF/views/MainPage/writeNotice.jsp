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
          <h2>공지사항 글쓰기</h2>
        </div>
      </div>
    </section>
<!-- MAIN SECTION -->
<section class="mainContent full-width clearfix">
	<div class="container">
		<h4 class="text-center">Write form</h4>
								<div class="sectionTitle text-center">
									<h2>
										<span class="shape shape-left bg-color-4"></span> <span>글쓰기</span>
										<span class="shape shape-right bg-color-4"></span>
									</h2>
								</div>
							
		<div class="space-20">&nbsp;</div>
		<!-- Start contact form 2 -->
		<div class="row">
			<div class="col-xs-12">
				<div class="homeContactContent">
					<form action="writeNotice" method="post" role="form" id="writeform"
						enctype="multipart/form-data" onsubmit="return formCheck();">
						<div class="row">

							<div class="col-sm-6 col-xs-12">
								<div class="form-group">
									<i class="fa fa-envelope"></i> <input type="text"
										class="form-control border-color-6" placeholder="title"
										name="title" id="title">
								</div>
								<div class="form-group">
									<i class="fa fa-user" aria-hidden="true"></i> <input
										type="text" class="form-control border-color-2"
										id="exampleInputEmail2" name="id" placeholder="${User.id }"
										disabled="disabled">
								</div>
								<div class="form-group">
									<i class="fa fa-comments" aria-hidden="true"></i>
									<textarea class="form-control border-color-1"
										placeholder="Write message" name="content" id="content"></textarea>
								</div>
							</div>
								
							
							<div class="col-sm-6 col-xs-12">
									<div class="box bg-color-5">
										<div class="box-img border-color-5 text-center" style="height:220px; padding: 5px; ">
											<img id="target" src="#" alt="image" class="img-responsive" style="max-height: 200px;">
										</div>
										<div class="box-info" style="padding:5px; ">
											<div class="filebox" style="padding: 3px">
												<h4 style="text-align: center;">
													<input type="file" name="file" id="file" accept="image/*"
														capture="camera"
														onchange="getThumbnailPrivew(this,$('#cma_image'))" /> <label
														for="file">Img Upload</label>
														<input type="hidden" id="boardImageCheck" name="boardImageCheck" value="false">
												</h4>
											</div>
										</div>
									</div>
								</div>
							
							<div class="col-xs-12">
								<div class="formBtnArea">
									<button type="reset" class="btn btn-success">
										<i class="fa fa-rocket"> 취소 </i>
									</button>
									&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
									<button type="submit" class="btn btn-primary">
										<i class="fa fa-rocket"> 등록 </i>
									</button>
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
		var img = $('#target').attr('src');
		//이미지 첨부 여부
		if(img !='#'){
			$('#boardImageCheck').val('true');
		}
		//제목 유효성 검사
		if (title.value.length < 5 || title.value.length > 30 ) { 
			alert("제목은 5~30 자만 입력하시오");
			title.focus(); 
			title.select();
			return false;
		}
		//내용 유효성 검사
		if (content.value.length < 5) {
			alert("내용은 5글자 이상 쓰시오.");
			title.focus();
			title.select();
			return false;
		}
		return true;
	}
	//이미지 미리보기 함수
	function getThumbnailPrivew(html, $target) {
		if (html.files && html.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$('#target').attr('src', e.target.result);
			}
			reader.readAsDataURL(html.files[0]);
		}
	}
</script>

<%@include file="MainFooter.jsp"%>
</body>
</html>