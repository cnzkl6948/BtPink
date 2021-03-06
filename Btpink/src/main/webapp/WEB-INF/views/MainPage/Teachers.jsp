<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="MainHead.jsp"%>
<style>
.teamImage .maskingContent{background-color: rgba(248, 248, 248, 0);}
</style>
<%@include file="MainHeader.jsp"%>

<body class="body-wrapper">
    <!-- PAGE TITLE SECTION-->
    <section class="pageTitleSection">
      <div class="container">
        <div class="pageTitleInfo">
          <h2>先生紹介</h2>
        </div>
      </div>
    </section>

    <!-- MAIN SECTION -->
    <section class="mainContent full-width clearfix">
      <div class="container">
        <div class="row">
          <div class="col-xs-12">
            <div class="sectionTitle text-center">
              <h2>
                <span class="shape shape-left bg-color-4"></span>
                <span>先生</span>
                <span class="shape shape-right bg-color-4"></span>
              </h2>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-4 col-xs-12">
            <div class="teamContent teamAdjust">
               <img src="./resources/img/teachers/cat/boss1.png"alt="img" style="height: 250px;">
              <div class="teamInfo teamTeacher">
                <h3><a href="" style="font-size:25px;margin-left: 50px;">園長</a></h3>
              </div>
            </div>
          </div>
          <div class="col-sm-4 col-xs-12">
            <div class="teamContent teamAdjust">
              <img src="./resources/img/teachers/cat/boss2.png" alt="img" style="height: 250px;">
              <div class="teamInfo teamTeacher">
                <h3><a href="" style="font-size:25px;margin-left: 50px;">よしなが </a></h3>
              </div>
            </div>
          </div>
          <div class="col-sm-4 col-xs-12">
            <div class="teamContent teamAdjust">
              <img src="./resources/img/teachers/cat/boss3.png"alt="img" style="height: 250px;">
              <div class="teamInfo teamTeacher">
                <h3><a style="font-size:25px;margin-left: 50px;">まつざか</a></h3>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- COLOR SECTION -->
    <section class="colorSection full-width clearfix bg-color-5 teamSection">
      <div class="container">
        <div class="row">
          <div class="col-xs-12">
            <div class="sectionTitle text-center alt">
              <h2>
                <span class="shape shape-left bg-color-3"></span>
                <span>職員</span>
                <span class="shape shape-right bg-color-3"></span>
              </h2>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-xs-12">
            <div class="owl-carousel teamSlider">
              <div class="slide">
                <div class="teamContent">
                  <div class="teamImage">
                   <img src="./resources/img/teachers/cat/kodomo1.jpg" alt="img" class="img-circle">
                    <div class="maskingContent">
                    </div>
                  </div>
                  <div class="teamInfo">
                    <h3><a>風間くん</a></h3>
                    <p>会計</p>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="teamContent">
                  <div class="teamImage">
                    <img src="./resources/img/teachers/cat/kodomo2.jpg" alt="img" class="img-circle">
                   <div class="maskingContent">
                    </div>
                  </div>
                  <div class="teamInfo">
                    <h3><a href="teachers-details.html">ネネちゃん</a></h3>
                    <p>バス補助先生</p>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="teamContent">
                  <div class="teamImage">
                    <img src="./resources/img/teachers/cat/kodomo3.jpg" alt="img" class="img-circle">
                  <div class="maskingContent">
                    </div>
                  </div>
                  <div class="teamInfo">
                    <h3><a>マサオくん</a></h3>
                    <p>料理人</p>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="teamContent">
                  <div class="teamImage">
                   <img src="./resources/img/teachers/cat/kodomo4.jpg" alt="img" class="img-circle">
                    <div class="maskingContent">
                    </div>
                  </div>
                  <div class="teamInfo">
                    <h3><a>ボーちゃん</a></h3>
                    <!-- <h3><a href="teachers-details.html">ボーちゃん</a></h3> -->
                    <p>環境整理</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  <%@ include file="MainFooter.jsp"%>
</body>
</html>