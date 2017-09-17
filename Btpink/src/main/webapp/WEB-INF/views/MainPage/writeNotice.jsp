<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="MainHead.jsp"%>
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
        <div class="sectionTitle text-center">
          <h2>
            <span class="shape shape-left bg-color-4"></span>
            <span>글쓰기</span>
            <span class="shape shape-right bg-color-4"></span>
          </h2>
        </div>

        <h4 class="text-center">Write form</h4>
        <div class="space-50">&nbsp;</div>
        <!-- Start contact form 2 -->
        <div class="row">
          <div class="col-xs-12">
            <div class="homeContactContent">
              <form action="writeNotice" method="post" role="form" id="writeform" enctype="multipart/form-data" onsubmit="return formCheck();">
                <div class="row">
                  <div class="col-sm-6 col-xs-12">
                    <div class="form-group">
                      <i class="fa fa-envelope"></i>
                      <input type="text" class="form-control border-color-1"  placeholder="title"  name="title" id="title" >
                    </div>
                  </div>
                  <div class="col-sm-6 col-xs-12">
                    <div class="form-group">
                      <i class="fa fa-user" aria-hidden="true"></i>
                      <input type="text" class="form-control border-color-2" id="exampleInputEmail2" name="id" placeholder="${User.id }" disabled="disabled" >
                    </div>
                  </div>
                 
                 
                  <div class="col-xs-12">
                    <div class="form-group">
                      <i class="fa fa-comments" aria-hidden="true"></i>
                      <textarea class="form-control border-color-4" placeholder="Write message" name="content" id="content" ></textarea>
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
        </div><!-- Ends contact form 2-->
      
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
</script>	

<%@include file="MainFooter.jsp"%>