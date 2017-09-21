<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
          <a href="/www"><i class="fa fa-circle text-success"></i> 메인화면 이동</a>
        </div>
      </div>
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
      <li class="header">주요 기능</li>
      <li><a href="Slist"><i class="fa fa-book"></i> <span>출석부</span></a></li>
      <c:if test="${User.type != 'admin' }">
      <li><a href="ACheck"><i class="fa  fa-check-square"></i> <span>출석체크</span></a></li>
      <li><a href="PCheck"><i class="fa fa-qq"></i> <span>인원확인</span></a></li>
      </c:if>
      <li><a href="Sapply"><i class="fa fa-plus-square"></i> <span>학생등록</span></a></li>
      <c:if test="${User.type != 'admin' }">
      <li><a href="emotionCal"><i class="fa fa-calendar"></i> <span>감정달력</span></a></li>
      </c:if>
      <c:if test="${User.type == 'admin' }">
      <li class="treeview">
          <a href="#">
            <i class="fa fa-folder"></i> <span>관리자 메뉴</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="Aapply"><i class="fa fa-circle-o"></i> 회원 가입 승인</a></li>
            <li><a href="classManagement"><i class="fa fa-circle-o"></i> 반 관리</a></li>
            <li><a href="autoSplit"><i class="fa fa-plus-square"></i>자동 반 배정</a></li>
          </ul>
        </li>
        </c:if>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>