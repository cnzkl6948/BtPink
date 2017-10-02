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
             人員確認 
      </h1>
    </section>
      <!-- Main row -->
      <div class="row">
      <div class="col-lg-12">
        <!-- Left col -->
        <section class="col-lg-6 col-md-12">
              <div style="position:relative">
                 <div style="position:relative"><!-- style 추가 -->
              <form id="formId" style="font-size:0"><!-- style 추가/구조변경 -->
               <div id="img_here" ></div>
               <input type="hidden" id="image" name="image"> <br>
               <canvas id="store" style="display: none;"></canvas>
            </form>
                <video autoplay="autoplay" id="myVideo" width="100%"></video><!-- width:100% 추가 -->
              </div>
         </div>
        </section>
        <!-- /.Left col -->
        
        <!-- right col (We are only adding the ID to make the widgets sortable)-->

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
                         <a data-toggle="collapse" data-parent="#accordion">
                              人員確認メニューについて
                         </a>
                       </h4>
                     </div>
                     <div id="collapseOne" class="panel-collapse collapse in">
                       <div class="box-body">
                            &nbspこのメニューは周期的に写真を撮影して、写真の中の人数をヘヤリョ出席人数と比較して変動事項が発生した場合、警告アラームを先生に送ってくるメニューです。                            
                       </div>
                     </div>
                   </div>
                   <div class="panel box box-danger">
                     <div class="box-header with-border">
                       <h4 class="box-title">
                         <a data-toggle="collapse" data-parent="#accordion">
                              使い方
                         </a>
                       </h4>
                     </div>
                     <div id="collapseTwo" class="panel-collapse collapse in">
                       <div class="box-body">
                         1.人員確認ボタンを押します。<br>
                         2.ボタンを押すと5分ごとに自動に写真を撮影し、人員数をお察しいたします
                       </div>
                     </div>
                   </div>
                   <div class="panel box box-success">
                     <div class="box-header with-border">
                       <h4 class="box-title">
                         <a data-toggle="collapse" data-parent="#accordion">
                              特異事項
                         </a>
                       </h4>
                     </div>
                     <div id="collapseThree" class="panel-collapse collapse in">
                       <div class="box-body">
                         ◎人員把握に限られ、学生の識別は不可能です。<br>
                         ◎プログラムが完璧でないため、人数の誤りがあります。<br>
                         ◎教区に包まれて見えないができます。<br>
                         ◎写真処理には30秒以上の時間が必要です。
                       </div>
                     </div>
                   </div>
                 </div>
               </div>
               <!-- /.box-body -->
             </div>
             <!-- /.box -->
             <button type="button" class="btn btn-block btn-danger" data-toggle="modal" data-target="#modal-danger" onclick="snapshot()">
                   人員確認
              </button>
            <div class="modal modal-danger fade" id="modal-danger">
               <div class="modal-dialog">
                  <div class="modal-content">
                     <div class="modal-header">
                        <button type="button" class="btn btn-outline pull-right"
                           data-dismiss="modal" onclick="closeModal()">閉じる</button>
                        <h4 class="modal-title">人員確認</h4>
                     </div>
                     <div class="modal-body">
                        <div id="imgg">
                           <p id="img"></p>
                        </div>
                        <p id="hitocheck">人員確認中&hellip; <br>◎写真処理には30秒以上の時間が必要です。 <br>待ってください。</p>
                     </div>
                  </div>
                  <!-- /.modal-content -->
               </div>
               <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->
        </section>
        <!-- right col -->
        </div>
      </div>
      <!-- /.row (main row) -->
  </div>
  <!-- /.content-wrapper -->
  
<%@ include file="split/Footer.jsp"%> 
<!-- Tensorflow API 자바스크립트 -->
<script src="./resources/js/pcheck.js"></script>
</body>
</html>