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

					<table style="text-align: center;" class="table">
						<thead>
							<tr class="warning">
								<th style="text-align: center;">학생번호</th>
								<th style="text-align: center;">반번호</th>
								<th style="text-align: center;">오늘날짜</th>
								<th style="text-align: center;">결석</th>
								<th style="text-align: center;">조퇴</th>
								<th style="text-align: center;">병결</th>
								<th style="text-align: center;">지각</th>
								<th style="text-align: center;">감정</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="rrs" items="${list}">
								<%--<c:if test="${rm.num == rrs.roomNum}"> --%>
								<tr class="success">
									<td class="stdno">${rrs.stdno}</td>
									<td class="classno">${rrs.classno}</td>
									<td class="today">${rrs.today}</td>
									<td class="absent">${rrs.absent }</td>
									<td class="early">${rrs.early }</td>
									<td class="sick">${rrs.sick }</td>
									<td class="late">${rrs.late }</td>
									<td class="emotion">${rrs.emotion }</td>
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
