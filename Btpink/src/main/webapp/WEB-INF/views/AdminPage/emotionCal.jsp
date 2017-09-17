<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="split/Head.jsp"%>
<!-- fullCalendar -->
<link rel="stylesheet"
	href="./resources/AdminLTE/bower_components/fullcalendar/dist/fullcalendar.min.css">
<link rel="stylesheet"
	href="./resources/AdminLTE/bower_components/fullcalendar/dist/fullcalendar.print.min.css"
	media="print">
<style>
.bg-brown {
	background-color: #8A2908 !important;
	border: 1px solid white;
	color: white;
}

.bg-hotpink {
	background-color: #DF01A5 !important;
	border: 1px solid white;
	color: white;
}

.bg-mimm {
	background-color: #f56954 !important;
	border: 1px solid white;
	color: white;
}

.bg-green {
	border: 1px solid white;
}

.bg-yellow {
	border: 1px solid white;
}

.bg-blue {
	border: 1px solid white;
}

.bg-aqua {
	border: 1px solid white;
}

.bg-red {
	border: 1px solid white;
}

.bg-black {
	border: 1px solid white;
}

.external-event {
	cursor: pointer;
}

.box.box-primary {
	border-top-color: red;
}

a:link {
	color: white;
	text-decoration: none;
}

a:visited {
	color: white;
	text-decoration: none;
}
</style>
<%@ include file="split/Header.jsp"%>
<%@ include file="split/Sidebar.jsp"%>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			감정달력 <small>Control panel</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">감정달력</li>
		</ol>
	</section>
	<br>
	<!-- Main row -->
	<section class="content">
		<div class="row">
			<div class="col-md-3">
				<!-- /. box -->
				<div class="box box-solid">
					<div class="box-header with-border">
						<h4 class="box-title">색깔 별 감정 상태</h4>
					</div>
					<div class="box-body">
						<!-- the events -->
						<form id="formId" action="getEmotionList" method="post">
							<input type="hidden" id="stdNo" name="stdNo">
						</form>
						<div id="external-events">
							<div class="col-xs-6 external-event bg-green">일반</div>
							<div class="col-xs-6 external-event bg-black">공포</div>
							<div class="col-xs-6 external-event bg-aqua">놀람</div>
							<div class="col-xs-6 external-event bg-yellow">행복</div>
							<div class="col-xs-6 external-event bg-red">분노</div>
							<div class="col-xs-6 external-event bg-blue">슬픔</div>
							<div class="col-xs-6 external-event bg-brown">역겨움</div>
							<div class="col-xs-6 external-event bg-hotpink">경멸</div>
						</div>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /. box -->
				<div class="box box-solid">
					<div class="box-header with-border">
						<h4 class="box-title">학생 목록</h4>
					</div>
					<div class="box-body">
						<!-- the events -->
						<form id="formId" action="getEmotionList" method="post">
							<input type="hidden" id="stdNo" name="stdNo">
						</form>
						<div id="external-events">
							<div class="col-xs-6 external-event bg-mimm">
								<a href="javascript:getEmotionList('21');">학생1</a>
							</div>
							<div class="col-xs-6 external-event bg-mimm">학생2</div>
							<div class="col-xs-6 external-event bg-mimm">학생3</div>
							<div class="col-xs-6 external-event bg-mimm">학생4</div>
							<div class="col-xs-6 external-event bg-mimm">학생5</div>
							<div class="col-xs-6 external-event bg-mimm">학생6</div>
							<div class="col-xs-6 external-event bg-mimm">학생7</div>
							<div class="col-xs-6 external-event bg-mimm">학생8</div>
							<div class="col-xs-6 external-event bg-mimm">학생9</div>
							<div class="col-xs-6 external-event bg-mimm">학생10</div>
							<div class="col-xs-6 external-event bg-mimm">학생11</div>
							<div class="col-xs-6 external-event bg-mimm">학생12</div>
							<div class="col-xs-6 external-event bg-mimm">학생13</div>
							<div class="col-xs-6 external-event bg-mimm">학생14</div>
							<div class="col-xs-6 external-event bg-mimm">학생15</div>
						</div>
					</div>
					<!-- /.box-body -->
				</div>

			</div>
			<!-- /.col md-3 -->
			<div class="col-md-9">
				<div class="box box-primary">
					<div class="box-body no-padding">
						<!-- THE CALENDAR -->
						<div id="calendar"></div>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /. box -->
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row (main row) -->
	</section>
</div>
<!-- /.content-wrapper -->

<%@ include file="split/Footer.jsp"%>
<!-- fullCalendar -->
<script src="./resources/AdminLTE/bower_components/moment/moment.js"></script>
<script
	src="./resources/AdminLTE/bower_components/fullcalendar/dist/fullcalendar.min.js"></script>
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