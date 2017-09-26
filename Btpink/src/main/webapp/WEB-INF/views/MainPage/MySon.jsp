<%@ page language="java" contentType="text/html; charset=UTF-8"
	 pageEncoding="UTF-8"%>
<%@include file="../MainPage/MainHead.jsp"%>
<link rel="stylesheet" href="./resources/AdminLTE/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
<link rel="stylesheet" href="./resources/AdminLTE/bower_components/bootstrap-daterangepicker/daterangepicker.css">
<!-- fullCalendar -->
<link rel="stylesheet" href="./resources/AdminLTE/bower_components/fullcalendar/dist/fullcalendar.min.css">
<link rel="stylesheet" href="./resources/AdminLTE/bower_components/fullcalendar/dist/fullcalendar.print.min.css" media="print">
<style type="text/css">
	 .ico_cal {padding:4px;margin-right:4px;border-radius:50%;font-size:12px;color: #fff}
	 .list-group-item {padding:10px 30px}
</style>
<%@include file="../MainPage/MainHeader.jsp"%>
<!-- PAGE TITLE SECTION-->
<div class="row">
	 <section class="pageTitleSection">
			<div class="container">
				 <div class="pageTitleInfo">
						<h2>내 아이 정보</h2>
				 </div>
			</div>
	 </section>
</div>
<!-- 학생정보 -->
<section class="mainContent full-width clearfix">
	<div class="container">
		<div class="row">
			<div class="col-lg-7 col-lg-offset-1">
				<div class="thumbnail thumbnailContent alt media">
					<img class="media-object" src="./resources/img/event/parent2.jpg" alt="Image">
				</div>
			</div>
			<div class="col-lg-3">
				<aside>
					<div class="panel panel-default eventSidebar">
							<div class="panel-heading bg-color-1 border-color-1">
								<h3 class="panel-title">${ mySon.name } 어린이</h3>
							</div>
							<div class="panel-body">
								<ul class="media-list">
									<li class="media">
										<div class="media-left iconContent bg-color-2">
										 <i class="fa fa-birthday-cake" aria-hidden="true"></i>
										</div>
										<div class="media-body iconContent">
											<h4 class="media-heading color-2">생일</h4>
											<p>${ mySon.birth }</p>
										</div>
									</li>
									<li class="media">
										<div class="media-left iconContent bg-color-3">
										 <i class="fa fa-sliders" aria-hidden="true"></i>
										</div>
										<div class="media-body iconContent">
											<h4 class="media-heading color-3">신장</h4>
											<p>${ mySon.height } cm</p>
										</div>
									</li>
									<li class="media iconContet">
										<div class="media-left iconContent bg-color-4">
										 <i class="fa fa-suitcase" aria-hidden="true"></i>
										</div>
										<div class="media-body iconContent">
											<h4 class="media-heading color-4">클래스</h4>
											<p>${ mySon.classno } 반</p>
										</div>
									</li>
									<li class="media">
										<div class="media-left iconContent bg-color-5">
										 <i class="fa fa-user" aria-hidden="true"></i>
										</div>
										<div class="media-body iconContent">
											<h4 class="media-heading color-5">담임선생님</h4>
											<p>${ teacher } 선생님</p>
										</div>
									</li>
								</ul>
							</div>
					</div>
				</aside>
			</div>
		</div>
		<div class="row whiteSection">
			<!-- 탭 -->
			<div class="col-lg-2 col-lg-offset-1">
				<div class="tabCommon tabLeft">
					 <ul class="nav nav-tabs">
							<li class="active"><a data-toggle="tab" href="#Calender" style="display:block">감정 달력</a></li>
							<li><a data-toggle="tab" href="#Message" style="display:block">마음의 소리</a></li>
					 </ul>
				</div>
			</div>
			<!-- 탭 -->
			<!-- 내용 -->
			<div class="col-lg-8">
				<!-- 아이정보 -->
				<div class="tab-content">
					 <div id="Calender" class="tab-pane fade in active" style="position:relative">
					 	<div class="col-lg-2">
					 		<ul class="list-group" style="position:absolute;top:162px;left:-194px;width:100%">
				              <li class="list-group-item"><i class="fa fa-gg ico_cal" aria-hidden="true" style="background-color:#00a65a;"></i> 일반</li>
				              <li class="list-group-item"><i class="fa fa-gg ico_cal" aria-hidden="true" style="background-color:#000;"></i> 공포</li>
				              <li class="list-group-item"><i class="fa fa-gg ico_cal" aria-hidden="true" style="background-color:#00c0ef;"></i> 놀람</li>
				              <li class="list-group-item"><i class="fa fa-gg ico_cal" aria-hidden="true" style="background-color:#f39c12;"></i> 행복</li>
				              <li class="list-group-item"><i class="fa fa-gg ico_cal" aria-hidden="true" style="background-color:#dd4b39;"></i> 분노</li>
				              <li class="list-group-item"><i class="fa fa-gg ico_cal" aria-hidden="true" style="background-color:#0073b7;"></i> 슬픔</li>
				            </ul>
				         </div>
							<!-- 감정달력 -->
							<div class="row">
								 <div class="sectionTitle text-center">
										<h2>
											 <span class="shape shape-left bg-color-4"></span> 
											 <span>우리 아이 감정 달력</span>
											 <span class="shape shape-right bg-color-4"></span>
										</h2>
								 </div>
								 <div class="box-body no-padding">
										<div id="calendar"></div>
								 </div>
							</div>
					 </div>
					 <!-- 아이정보 -->
					 <!-- 선생님에게 메세지 보내는 폼 -->
					 <div id="Message" class="tab-pane fade">
							<div class="sectionTitle text-center">
								 <h2>
										<span class="shape shape-left bg-color-4"></span> 
										<span>선생님께 전하는 마음의 소리</span>
										<span class="shape shape-right bg-color-4"></span>
								 </h2>
							</div>
							<div class="homeContactContent">
							<form action="writeDemand" method="post" role="form" id="writeform" enctype="multipart/form-data" onsubmit="return formDemandCheck();">
								 <div class="col-sm-6 col-xs-12">
										<div class="form-group">
											 <i class="fa fa-book" aria-hidden="true"></i> <select
													id="demandsubject"
													class="form-control border-color-2"
													name="demandsubject" onchange="subjectCheck();">
													<option value="" disabled selected>주제를 선택하세요.</option>
													<option value="food">음식</option>
													<option value="medicine">약</option>
													<option value="friends">교우관계</option>
													<option value="attendence" >출석</option>
													<option value="etc">기타</option>
											 </select>
										</div>
								 </div>
	
								 <div class="col-sm-6 col-xs-12">
										<div class="form-group">
											 <i class="fa fa-user" aria-hidden="true"></i> <input
													type="text" class="form-control border-color-1"
													readonly="readonly" value="${className}">
										</div>
								 </div>
	
	
								 <div class="col-sm-6 col-xs-12">
										<div class="form-group">
													 <i class="fa fa-calendar-o"></i>
											 <input type="text"
													class="form-control border-color-3" name="dateRange"
													id="dateRange" placeholder="Date input">
										</div>
								 </div>
	
	
								 <div class="col-sm-6 col-xs-12">
										<div class="form-group">
											 <i class="fa fa-phone" aria-hidden="true"></i>
	
											 <select id="attend"
													class="form-control border-color-6" name="attend"
													disabled="disabled">
													<option value="" disabled selected>출결...</option>
													<option value="absent">결석</option>
													<option value="early">조퇴</option>
													<option value="sick">병결</option>
													<option value="late">지각</option>
													<option value="normal">정상등원</option>
											 </select>
										</div>
								 </div>
								 <div class="col-xs-12">
										<div class="form-group">
											 <i class="fa fa-comments" aria-hidden="true"></i>
											 <textarea class="form-control border-color-5"
													placeholder="Write message" name="demandcontent"
													id="demandcontent"></textarea>
										</div>
								 </div>
								 <div class="col-xs-12">
										<div class="formBtnArea">
											 <button type="submit" class="btn btn-primary">등록</button>
										</div>
								 </div>
							</form>
							</div>
					 </div>
					 <!-- 선생님에게 메세지 보내는 폼 -->
					 
				</div>
			</div>
			<!-- 내용 -->
		</div>
	</div>
</section>

	<%@ include file="MainFooter.jsp"%>
<script src="./resources/AdminLTE/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<script src="./resources/AdminLTE/bower_components/moment/min/moment.min.js"></script>
<script src="./resources/AdminLTE/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<script src="./resources/js/mySon.js"></script>
<script src="./resources/js/calender.js"></script>
<!-- fullCalendar -->
<script src="./resources/AdminLTE/bower_components/moment/moment.js"></script>
<script src="./resources/AdminLTE/bower_components/fullcalendar/dist/fullcalendar.min.js"></script>
<!-- Page specific script -->
<script>

	 function getEmotionList(stdno){
			var form = document.getElementById('formId');
			$('#stdno').val(stdno);
			form.submit();
	 }
	 
	$(function () {
		 /* initialize the calendar
				-----------------------------------------------------------------*/
			 //Date for the calendar events (dummy data)
			 var date = new Date()
			 var d    = date.getDate(),
					 m    = date.getMonth(),
					 y    = date.getFullYear()
			 $('#calendar').fullCalendar({
				 header    : {
					 left  : 'prev,next today',
					 center: 'title',
					 right : 'month,agendaWeek,agendaDay'
				 },
				 buttonText: {
					 today: 'today',
					 month: 'month',
					 week : 'week',
					 day  : 'day'
				 },
				 //★★★★★★★★★★★★★★★★★★★★★★★★★★★ 캘린더에 이벤트 삽입하는 부분. ★★★★★★★★★★★★★★★★★★★★★★★★★★★
				 events    : [
						${emotionEvent}]
				 ,
			 //★★★★★★★★★★★★★★★★★★★★★★★★★★★ 캘린더에 이벤트 삽입하는 부분. ★★★★★★★★★★★★★★★★★★★★★★★★★★★
				 editable  : true,
				 droppable : true, // this allows things to be dropped onto the calendar !!!
				 drop      : function (date, allDay) { // this function is called when something is dropped

					 // retrieve the dropped element's stored Event Object
					 var originalEventObject = $(this).data('eventObject');

					 // we need to copy it, so that multiple events don't have a reference to the same object
					 var copiedEventObject = $.extend({}, originalEventObject)

					 // assign it the date that was reported
					 copiedEventObject.start           = date;
					 copiedEventObject.allDay          = allDay;
					 copiedEventObject.backgroundColor = $(this).css('background-color');
					 copiedEventObject.borderColor     = $(this).css('border-color');

					 // render the event on the calendar
					 // the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
					 $('#calendar').fullCalendar('renderEvent', copiedEventObject, true);

					 // is the "remove after drop" checkbox checked?
					 if ($('#drop-remove').is(':checked')) {
						 // if so, remove the element from the "Draggable Events" list
						 $(this).remove();
					 }
				 }
			 }) 
	})  
	
	
	
</script>
</body>
</html>