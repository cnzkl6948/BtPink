<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
         <!-- Main row -->
      <div class="row">
        <!-- Left col -->
        <section class="col-lg-6 connectedSortable">
          	<div>
				<video autoplay="autoplay" id="myVideo" width="640" height="360" />
			</div>
			<button type="button" onclick="snapshot()">snapshot</button>
			<form id="formId" action="getCount" method="post">
				<input type="hidden" id="image" name="image">
				<canvas id="store" style="display: none;"></canvas>
			</form>
        </section>
        <!-- /.Left col -->
        
        <!-- right col (We are only adding the ID to make the widgets sortable)-->
        <section class="col-lg-6 connectedSortable">    
		  <p id="img"></p>
<!-- 		<img src="https://www.btpink.xyz/www/resources/object_detection/test.jpg" width="400" height="300"/> -->
<!-- 		<img src="https://gunho.btpink.xyz/www/resources/object_detection/test.jpg" width="400" height="300"/> -->
<!-- 		<img src="https://daheen.btpink.xyz/www/resources/object_detection/test.jpg" width="400" height="300"/> -->
<!-- 		<img src="https://suenghan.btpink.xyz/www/resources/object_detection/test.jpg" width="400" height="300"/> -->

	      <!-- Small boxes (Stat box) -->
	      <div class="row">
	        <!-- ./col -->
	        <div class="col-lg-3 col-xs-6">
	          <!-- small box -->
	          <div class="small-box bg-yellow">
	            <div class="inner">
	              <h3 id="cnt"></h3>
	              <p>교실 현원</p>
	            </div>
	            <div class="icon">
	              <i class="ion ion-person-add"></i>
	            </div>
	            <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
	          </div>
	        </div>
	        <!-- ./col -->
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
