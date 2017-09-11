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
               출석체크
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">출석체크</li>
      </ol>
    </section>
	
	<!-- Main row -->
      <div class="row">
        <!-- Left col -->
        <section class="col-lg-12 connectedSortable">
          	<div>
				<video autoplay="autoplay" id="myVideo" width="640" height="360" />
			</div>
			<button type="button" onclick="snapshot()">snapshot</button>
			<br>
			<div id="jsonOutput">
				Reponse:<br>
				<textarea id="responseTextArea" class="UIInput"
					style="width: 400px; height: 100px;"></textarea>
			</div>
			<form id="formTest">
<!-- 				<img id="selfieimage" src="" width="400" height="300">  -->
				<input type="hidden" id="image" name="image" > <br>
				<canvas id="store" style="display: none;" ></canvas>
			</form>
			<a href="/www/resources/test.html">test</a>
        </section>
        <!-- /.Left col -->
        
        
      </div>
      <!-- /.row (main row) -->
      
  </div>
  <!-- /.content-wrapper -->
  
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 2.4.0
    </div>
    <strong>Copyright &copy; 2014-2016 <a href="https://adminlte.io">Almsaeed Studio</a>.</strong> All rights
    reserved.
  </footer>
</div>
<!-- ./wrapper -->


<%@ include file="split/Footer.jsp"%> 
<!-- Face API 자바스크립트 -->
<script src="./resources/AdminLTE/js/acheck.js"></script>