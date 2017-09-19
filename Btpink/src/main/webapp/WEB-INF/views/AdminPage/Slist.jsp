<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="split/Head.jsp"%>
<%@ include file="split/Header.jsp"%>
<%@ include file="split/Sidebar.jsp"%>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					<!--                출석체크 -->
					<!--         <small>Control panel</small> -->
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li class="active">출석부</li>
				</ol>
			</section>

			<!-- Main row -->
			<article>
				<div class="container">
					<h1>출석부</h1>

					<table id="mytable" class="table table-bordred table-striped">
                   
                   <thead>
                   
                   <th><input type="checkbox" id="checkall" /></th>
                   <th>학생번호</th>
                    <th>이름</th>
                     <th>출결</th>
                     <th>조회</th>
                     <th>병결</th>
                      <th>지각</th>
                      
                       <th>확인</th>
                   </thead>
    <tbody>
    	<c:forEach var="rrs" items="${list}">
								<%--<c:if test="${rm.num == rrs.roomNum}"> --%>
								<tr>
									<td><input type="checkbox" class="checkthis" /></td>
									<td>${rrs.stdno}</td>
									<td>${rrs.name}</td>
									<c:if test="${rrs.absent == 1}">
									<td><input type="checkbox" checked="checked"></td>
									</c:if>
									<c:if test="${rrs.absent == 0}">
									<td><input type="checkbox"></td>
									</c:if>
									<c:if test="${rrs.early == 1}">
									<td><input type="checkbox" checked="checked"></td>
									</c:if>
									<c:if test="${rrs.early == 0}">
									<td><input type="checkbox"></td>
									</c:if>
									<c:if test="${rrs.sick == 1}">
									<td><input type="checkbox" checked="checked"></td>
									</c:if>
									<c:if test="${rrs.sick == 0}">
									<td><input type="checkbox"></td>
									</c:if>
									<c:if test="${rrs.late == 1}">
									<td><input type="checkbox" checked="checked"></td>
									</c:if>
									<c:if test="${rrs.late == 0}">
									<td><input type="checkbox"></td>
									</c:if>
									<td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
								</tr>
								<%--</c:if> --%>
		</c:forEach>
     </tbody>
 
</table>
				</div>
			</article>
			<!-- /.row -->
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

<%@ include file="split/Footer.jsp"%>	
<script src="./resources/AdminLTE/js/sapply.js"></script>
<script type="text/javascript" src="https://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>
</body>
</html>
