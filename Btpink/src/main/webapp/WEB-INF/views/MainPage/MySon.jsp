<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../MainPage/MainHead.jsp"%>
<link rel="stylesheet" href="./resources/AdminLTE/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
<link rel="stylesheet" href="./resources/AdminLTE/bower_components/bootstrap-daterangepicker/daterangepicker.css">
<!-- fullCalendar -->
<link rel="stylesheet" href="./resources/AdminLTE/bower_components/fullcalendar/dist/fullcalendar.min.css">
<link rel="stylesheet" href="./resources/AdminLTE/bower_components/fullcalendar/dist/fullcalendar.print.min.css" media="print">
<%@include file="../MainPage/MainHeader.jsp"%>

<!-- WHITE SECTION -->
<section class="whiteSection full-width clearfix p-t-n">
	<div class="row" style="margin-top: 5%;">
		<div class="col-lg-12">
			<!-- 공백 -->
			<div class="col-lg-2"></div>
			<!-- 공백 -->
			<!-- 탭 -->
			<div class="col-lg-2">
				<div class="tabCommon tabLeft">
					<ul class="nav nav-tabs">
						<li class="active"><a data-toggle="tab" href="#Calender">아이  정보</a></li>
						<li><a data-toggle="tab" href="#Message">마음의 소리</a></li>
					</ul>
				</div>
			</div>
			<!-- 탭 -->
			<!-- 내용 -->
			<div class="col-lg-6">
				<div class="tab-content">
				<!-- 아이정보 -->
					<div id="Calender" class="tab-pane fade in active">
						<!-- 학생정보 -->
						<div class="row">
							<div class="media eventContent bg-color-1">
				              <div class="media-left">
				                <img class="media-object" src="./resources/img/home/event/event-2.jpg" alt="Image">
				              </div>
				              <div class="media-body">
				                <h3 class="media-heading"><a href="single-event-left-sidebar.html">학생이름</a></h3>
				                <ul class="list-unstyled">
				                  <li><i class="fa fa-calendar-o" aria-hidden="true"></i> Age 2 to 4 Years</li>
				                  <li><i class="fa fa-clock-o" aria-hidden="true"></i> 정보정보</li>
				                </ul>
				                <p>블라블라 잡정보 </p>
				              </div>
				            </div>
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
						<form action="writeDemand" method="post" role="form" id="writeform" enctype="multipart/form-data" onsubmit="return formCheck();">
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
										<option value="attendence" id="attendence">출석</option>
										<option value="etc">기타</option>
									</select>
								</div>
							</div>

							<div class="col-sm-6 col-xs-12">
								<div class="form-group">
									<i class="fa fa-user" aria-hidden="true"></i> <input
										type="text" class="form-control border-color-1"
										id="parentId" name="parentId" readonly="readonly"
										value="${User.name}">
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
			<!-- 공백 -->
			<div class="col-lg-2"></div>
			<!-- 공백 -->
		</div>
	</div>
	
</section>


<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="./resources/plugins/jquery-ui/jquery-ui.js"></script>
<script src="./resources/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="./resources/plugins/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
<script src="./resources/plugins/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
<script src="./resources/plugins/selectbox/jquery.selectbox-0.1.3.min.js"></script>
<script src="./resources/plugins/owl-carousel/owl.carousel.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
<script src="./resources/plugins/counter-up/jquery.counterup.min.js"></script>
<script src="./resources/plugins/isotope/isotope.min.js"></script>
<script src="./resources/plugins/isotope/jquery.fancybox.pack.js"></script>
<script src="./resources/plugins/isotope/isotope-triger.js"></script>
<script src="./resources/plugins/countdown/jquery.syotimer.js"></script>
<script src="./resources/plugins/velocity/velocity.min.js"></script>
<script src="./resources/plugins/smoothscroll/SmoothScroll.js"></script>
<script src="./resources/js/custom.js"></script>
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

	function getEmotionList(stdNo){
		var form = document.getElementById('formId');
		$('#stdNo').val(stdNo);
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