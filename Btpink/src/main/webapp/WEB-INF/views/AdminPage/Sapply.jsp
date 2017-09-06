<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>요괴 유치원 | 출석 체크</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <script src="./resources/AdminLTE/bower_components/jquery/dist/jquery.min.js"></script>
  <link rel="stylesheet" type="text/css" href="http://www.shieldui.com/shared/components/latest/css/light/all.min.css" />
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="./resources/AdminLTE/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="./resources/AdminLTE/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="./resources/AdminLTE/bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="./resources/AdminLTE/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="./resources/AdminLTE/dist/css/skins/_all-skins.min.css">
  <!-- Morris chart -->
  <link rel="stylesheet" href="./resources/AdminLTE/bower_components/morris.js/morris.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="./resources/AdminLTE/bower_components/jvectormap/jquery-jvectormap.css">
  <!-- Date Picker -->
  <link rel="stylesheet" href="./resources/AdminLTE/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="./resources/AdminLTE/bower_components/bootstrap-daterangepicker/daterangepicker.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="./resources/AdminLTE/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  
  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
  
  <style>
    #f1
    {
        font-family: 'Nunito', sans-serif;
        color: #384047;
    }

    #panel1
    {
        padding: 10px 20px;
        background: #f4f7f8;
        border-radius: 8px;
    }

    h1
    {
        margin: 0 0 30px 0;
        text-align: center;
    }

    #f1 input[type="text"],
    #f1 input[type="password"],
    #f1 input[type="date"],
    #f1 input[type="datetime"],
    #f1 input[type="email"],
    #f1 input[type="number"],
    #f1 input[type="search"],
    #f1 input[type="tel"],
    #f1 input[type="time"],
    #f1 input[type="url"],
    #f1 textarea,
    #f1 select
    {
        background: rgba(255,255,255,0.1);
        
        font-size: 16px;
        height: auto;
        margin: 0;
        outline: 0;
        padding: 15px;
        width: 100%;
        background-color: #fff;
        color: #8a97a0;
        box-shadow: 0 1px 0 rgba(0,0,0,0.03) inset;
    }

    #f1 textarea,
    #f1 select
    {
        border: 1px solid #ccc;
    }

    #f1 input[type="radio"],
    #f1 input[type="checkbox"]
    {
        margin: 0 4px 8px 0;
    }

    #f1 .sui-sprite.sui-calendar-icon
    {
        margin-top: 14px;
    }

    #b1
    {
        padding: 19px 39px 18px 39px;
        color: #FFF;
        background-color: #4bc970;
        font-size: 18px;
        text-align: center;
        font-style: normal;
        border-radius: 5px;
        width: 100%;
        border: 1px solid #3ac162;
        border-width: 1px 1px 3px;
        box-shadow: 0 -1px 0 rgba(255,255,255,0.1) inset;
        margin-bottom: 10px;
    }

    fieldset
    {
        margin-bottom: 30px;
        border: none;
    }

    legend
    {
        font-size: 1.4em;
        margin-bottom: 10px;
    }

    label
    {
        display: block;
        margin-bottom: 8px;
    }

        label.light
        {
            font-weight: 300;
            display: inline;
        }

    .number
    {
        background-color: #5fcf80;
        color: #fff;
        height: 30px;
        width: 30px;
        display: inline-block;
        font-size: 0.8em;
        margin-right: 4px;
        line-height: 30px;
        text-align: center;
        text-shadow: 0 1px 0 rgba(255,255,255,0.2);
        border-radius: 100%;
    }

    #footer
    {
        font-size: 10px;
        text-align: center;
        font-weight: bold;
    }

    #passwordMatch
    {
        text-align: center;
    }

    .input-group-addon
    {
        background-color: #e8eeef;
    }

    #or
    {
        text-align: center;
        font-weight: bold;
    }

    .social
    {
        list-style-type: none;
        background: #29AFBB;
        height: 52px;
        border: 2px solid#218C95;
    }

        .social li
        {
            padding-right: 20px;
            display: inline-block;
            font-size: 27px;
            border-bottom: 5px solid#29AFBB;
            cursor: pointer;
            margin-top: 5px;
        }

            .social li a
            {
                color: #fff;
                vertical-align: -webkit-baseline-middle;
            }
</style>
  
  
  
</head>
<body class="hold-transition skin-red-light fixed sidebar-mini">
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="adminPage" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>요괴</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>요괴</b>유치원</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Notifications: style can be found in dropdown.less -->
          <li class="dropdown notifications-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-bell-o"></i>
              <span class="label label-warning">10</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have 10 notifications</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li>
                    <a href="#">
                      <i class="fa fa-users text-aqua"></i> 5 new members joined today
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-warning text-yellow"></i> Very long description here that may not fit into the
                      page and may cause design problems
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-users text-red"></i> 5 new members joined
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-shopping-cart text-green"></i> 25 sales made
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-user text-red"></i> You changed your username
                    </a>
                  </li>
                </ul>
              </li>
              <li class="footer"><a href="#">View all</a></li>
            </ul>
          </li>
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="./resources/AdminLTE/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
              <span class="hidden-xs">선생이름(헤더)</span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="./resources/AdminLTE/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                <p>
                  	사람이름 - 계급
                  <small>회원 가입일</small>
                </p>
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat">개인 정보 수정</a>
                </div>
                <div class="pull-right">
                  <a href="#" class="btn btn-default btn-flat">로그 아웃</a>
                </div>
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="./resources/AdminLTE/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>선생이름(사이드바)</p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
      <li class="header">주요 기능</li>
      <li><a href="https://adminlte.io/docs"><i class="fa fa-book"></i> <span>출석부</span></a></li>
      <li><a href="ACheck"><i class="fa fa-book"></i> <span>출석체크</span></a></li>
      <li><a href="https://adminlte.io/docs"><i class="fa fa-book"></i> <span>인원확인</span></a></li>
      <li><a href="Sapply"><i class="fa fa-book"></i> <span>학생등록</span></a></li>
      <li>
        <a href="./resources/AdminLTE/pages/calendar.html">
          <i class="fa fa-calendar"></i> <span>감정달력</span>
        </a>
      </li>
      <li class="treeview">
          <a href="#">
            <i class="fa fa-files-o"></i>
            <span>기능</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="pages/layout/top-nav.html"><i class="fa fa-circle-o"></i>자동 반 배정</a></li>
            <li><a href="pages/layout/boxed.html"><i class="fa fa-circle-o"></i>자동 자리 배치</a></li>
          </ul>
        </li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

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
        <li class="active">학생등록</li>
      </ol>
    </section>
	
	<!-- Main row -->
    <div class="container" id="f1">
    <div class="col-md-3"></div>
    <div class="col-md-6">
        <div id="panel1" class="panel panel-default">
            <h1>학생등록</h1>
            
             <form action="#" method="POST" role="form" enctype="multipart/form-data">
          <div class="form-group formField">
            <input type="text" class="form-control" placeholder="이름">
          </div>
          <div class="form-group formField">
            <input type="text" class="form-control" placeholder="키">
          </div>
          <!-- Date -->
              <div class="form-group">
                <label>Date:</label>

                <div class="input-group date">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
                  <input type="text" class="form-control pull-right" id="datepicker">
                </div>
                <!-- /.input group -->
              </div>
              <!-- /.form group -->
          
          <div class="form-group formField">
            <input type="text" class="form-control" placeholder="반">
          </div>
          <div class="form-group formField">
            <input type="text" class="form-control" placeholder="주소">
          </div>
          <div class="form-group formField">
            <input type="text" class="form-control" placeholder="시력">
          </div>
          <div class="form-group formField">
            <input type="text" class="form-control" placeholder="학부모번호">
          </div>
         <div class="form-group formField">
  			<input type='file' id="uploadImage" />
			    <div id="preview"><!-- 사이즈는 알아서 하고~ ㅋㅋ -->
				<img id="imagePreview" src="#" alt="Preview upload images" />
				</div>
		</div>
        
        <div class="form-group formField">
            <input type="submit" class="btn btn-primary btn-block bg-color-3 border-color-3" value="Register">
          </div>
         </form>
            <footer>
                <p id="footer">Desing provided by <a href="https://www.shieldui.com/">Shield UI</a></p>
            </footer>
        </div>
    </div>
    <div class="col-md-3"></div>
</div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
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

<script type="text/javascript">

function readUploadImage( inputObject ) {

	/*

	브라우저에서 FileReader가 지원되는지

	확인하기 위해 

	window.File && window.FileReader 

	해 본다. 

	안되면 안된다고 알려 주면 되지~ ㅋㅋ

	*/

		if ( window.File && window.FileReader ) {

			/*

			입력된 파일이 1개 이상 있는지 확인~

			*/

			if ( inputObject.files && inputObject.files[0]) {



				/* 이미지 파일인지도 체크해 주면 좋지~ */

				if ( !(/image/i).test(inputObject.files[0].type ) ){

					alert("이미지 파일을 선택해 주세요!");

					return false;

				}

				/* FileReader 를 준비 한다. */

				var reader = new FileReader();

				reader.onload = function (e) {

					/* reader가 다 읽으면 imagePreview에 뿌려 주면 끝~  */

					$('#imagePreview').attr('src', e.target.result);

				}



				/* input file에 있는 파일 하나를 읽어온다. */

				reader.readAsDataURL(inputObject.files[0]);

			}



		} else {

			alert( "미리보기 안되요.~ 브라우저를 업그레이드하세요~");

		}

	}



	/*

	input 태그에 보통

	<element onchange="SomeJavaScriptCode">

	해 주던지 아님

	jquery를 이용해 change 이벤트를 달아 줘도 된다.

	*/

	$("#uploadImage").change(function(){

	    readUploadImage(this);

	});


</script>


<script type="text/javascript">
    jQuery(function ($) {
    	  	
    	
        $(function () {
            $("#dateTimePicker").shieldDatePicker();

            $('#confirmPass').on('keyup', function () {
                if ($('#confirmPass').val() == $('#pass').val()) {
                    $('#passwordMatch').html('Passwords match!').css('color', 'green');
                }
                else {
                    $('#passwordMatch').html('Passwords do not match!').css('color', 'red');
                }
            });
        });
    });
        
</script>




<script type="text/javascript" src="http://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>
<!-- jQuery 3 -->

<!-- jQuery UI 1.11.4 -->
<script src="./resources/AdminLTE/bower_components/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>

<!-- Bootstrap 3.3.7 -->
<script src="./resources/AdminLTE/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Sparkline -->
<script src="./resources/AdminLTE/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="./resources/AdminLTE/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="./resources/AdminLTE/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="./resources/AdminLTE/bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="./resources/AdminLTE/bower_components/moment/min/moment.min.js"></script>
<script src="./resources/AdminLTE/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="./resources/AdminLTE/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="./resources/AdminLTE/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="./resources/AdminLTE/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="./resources/AdminLTE/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="./resources/AdminLTE/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="./resources/AdminLTE/dist/js/demo.js"></script>

<script>
$(function(){
	//Date picker
    $('#datepicker').datepicker({
      autoclose: true
    })
	
})
</script>

</body>
</html>
