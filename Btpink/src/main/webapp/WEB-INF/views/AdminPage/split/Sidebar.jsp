<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="./resources/AdminLTE/dist/img/logo-160x160.png" class="img-circle" alt="User Image" style="background-color: white">
        </div>
        <div class="pull-left info">
          <p>${ User.name }</p>
          <a href="/www"><i class="fa fa-circle text-success"></i> メインページへ移動</a>
        </div>
      </div>
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
      <li class="header">主要機能</li>
      <li><a href="Slist"><i class="fa fa-book"></i> <span>出席簿</span></a></li>
      <c:if test="${User.type != 'admin' }">
      <li><a href="ACheck"><i class="fa  fa-check-square"></i> <span>出席チェック</span></a></li>
      <li><a href="PCheck"><i class="fa fa-qq"></i> <span>人数確認</span></a></li>
      </c:if>
      <li><a href="Sapply"><i class="fa fa-plus-square"></i> <span>学生登録</span></a></li>
      <c:if test="${User.type != 'admin' }">
      <li><a href="emotionCal"><i class="fa fa-calendar"></i> <span>感情カレンダー</span></a></li>
      </c:if>
      <c:if test="${User.type == 'admin' }">
      <li class="treeview">
          <a href="#">
            <i class="fa fa-folder"></i> <span>管理者メニュー</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="Aapply"><i class="fa fa-circle-o"></i> 会員加入承認</a></li>
            <li><a href="classManagement"><i class="fa fa-circle-o"></i> クラス管理</a></li>
            <li><a href="autoSplit"><i class="fa fa-plus-square"></i>自動クラス配定</a></li>
            <li><a href="manualSplit"><i class="fa fa-plus-square"></i>手動クラス配定</a></li>
          </ul>
        </li>
        </c:if>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>