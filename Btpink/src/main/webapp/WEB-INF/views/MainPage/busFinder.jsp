<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="MainHead.jsp"%>
<%@ include file="MainHeader.jsp"%>

<!-- PAGE TITLE SECTION-->
<section class="pageTitleSection">
   <div class="container">
      <div class="pageTitleInfo">
         <h2>버스 위치 찾기</h2>
      </div>
   </div>
</section>



<!-- MAIN SECTION -->
<section class="mainContent full-width clearfix conactSection">
   <div class="container">


      <div class="sectionTitle text-center">
         <h2>
            <span class="shape shape-left bg-color-4"></span> <span>Bus
               Current Location</span> <span class="shape shape-right bg-color-4"></span>
         </h2>
      </div>



      <div class="row">
         <div class="col-sm-4 col-xs-12">
            <div class="media addressContent">
               <span class="media-left bg-color-1" href="#"> <i
                  class="fa fa-map-marker" aria-hidden="true"></i>
               </span>
               <div class="media-body">
                  <h3 class="media-heading">유치원 위치:</h3>
                  <p>서울특별시 강남구 영동대로 513 COEX Office Tel:1566-5114</p>
               </div>
            </div>
         </div>
         <div class="col-sm-4 col-xs-12">
            <div class="media addressContent">
               <span class="media-left bg-color-2" href="#"> <i
                  class="fa fa-phone" aria-hidden="true"></i>
               </span>
               <div class="media-body">
                  <h3 class="media-heading">기사님 전화번호:</h3>
                  <p>954 124 2542 Or 546 235 4478</p>
               </div>
            </div>
         </div>
         <div class="col-sm-4 col-xs-12">
            <div class="media addressContent">
               <span class="media-left bg-color-3" href="writeDemand"> <i
                  class="fa fa-envelope-o" aria-hidden="true"></i>
               </span>
               <div class="media-body">
                  <h3 class="media-heading">출석변동사항:</h3>
                  <p>
                     <a href="MySon">writeDemand</a>
                  </p>
               </div>
            </div>
         </div>
      </div>

      <!-- 
<div class="accordionCommon" id="accordionTwo">
                     <div class="panel-group" id="accordionSecond">
                        <div class="panel panel-default">
 -->

      <div class="row">
         <div class="col-sm-6 col-xs-12">

            <div id="maps" style="width: 100%; height: 500px;"></div>

         </div>

         <div class="col-sm-6 col-xs-12">
            <div class="accordionCommon" id="accordionTwo">
               <div class="panel-group" id="accordionSecond">
                  <div class="panel panel-default">
                     <a class="panel-heading accordion-toggle bg-color-1"
                        data-toggle="collapse" data-parent="#accordionFirst"
                        href="#collapse-aa"> <span>유치원차를 놓쳤을때 어떻게 하면 되나요?</span> <span
                        class="iconBlock"><i class="fa fa-chevron-down"></i></span>
                     </a>
                     <div id="collapse-aa" class="panel-collapse collapse in">
                        <div class="panel-body">
                           <p> 위에 기재되어있는 유치원 인솔교사의 연락처로 연락하거나, 유치원 교무실로 연락 주십시오</p>
                           <p>유치원 정규 운행 경로에서 크게 벗어나지 않는 경우, 정해진 운행 경로가 끝난 이후에
                              유치원 차가 다시 픽업장소로 이동합니다.</p>
                        </div>
                     </div>
                  </div>
                  <div class="panel panel-default">
                     <a class="panel-heading accordion-toggle bg-color-2"
                        data-toggle="collapse" data-parent="#accordionFirst"
                        href="#collapse-bb"> <span>인솔교사 탑승의무화</span> <span class="iconBlock"><i
                           class="fa fa-chevron-up"></i></span>
                     </a>
                     <div id="collapse-bb" class="panel-collapse collapse">
                        <div class="panel-body">
                           <p>[규정] 어린이통학버스에 어린이나 영유아를 태울 때는 보호자가 함께 탑승하여 
                           어린이나 영유아의 승·하차를 안전하게 지도해야 하며, 운행 중에 안전띠를 매고 착석하도록 
                           지도하는 등의 어린이 안전과 보호에 필요한 조치를 취해야 합니다. 
                           개정 도로교통법이 시행되는 ‘15년 1월 29일부터 동승 보호자가 탑승하여야 합니다. 
                        </p>
                        <p> 저희 유치원에서는 유치원 통학버스에 인솔교사 탑승을 의무로 하고 있으며, 
                           유치원 통학버스탑승을 담당하는 담당 인솔교사역에 아이들의 담당 선생님이 
                           정해진 시간에 아이들을 맞이합니다.</p>
                        </div>
                     </div>
                  </div>
                  <div class="panel panel-default">
                     <a class="panel-heading accordion-toggle bg-color-3"
                        data-toggle="collapse" data-parent="#accordionFirst"
                        href="#collapse-cc"> <span>어린이 통학버스 안전교육 강화</span> <span class="iconBlock"><i
                           class="fa fa-chevron-up"></i></span>
                     </a>
                     <div id="collapse-cc" class="panel-collapse collapse">
                        <div class="panel-body">
                           <p>[규정] 어린이통학버스 및 어린이통학차량용자동차 운영자와 운전자는 
                           도로교통법에 의거 2년에 한 번씩도로교통공단이나 지자체·교육청에서 실시하는
                            어린이통학버스 등에 관련 안전교육(어린이 행동특성, 관련 법령, 주요 교육사례 등)을
                            3시간 이수하여야 합니다. (미 이수 시 과태료 : 8만원)
                           </p>
                           <p>어린이 통학차량용 자동차 운전자와 인솔교사는 도로 교통법에 의거하여, 2년에 한번씩 
                           안전교육을 받고 있으며, 가장 최근 교육을 수료한 날짜는 2017.07.26 입니다.</p>
                        </div>
                     </div>
                  </div>
                  <div class="panel panel-default">
                     <a class="panel-heading accordion-toggle bg-color-4"
                        data-toggle="collapse" data-parent="#accordionFirst"
                        href="#collapse-dd"> <span>어린이 통학버스 신고규정'의무화'</span> <span class="iconBlock"><i
                           class="fa fa-chevron-up"></i></span>
                     </a>
                     <div id="collapse-dd" class="panel-collapse collapse">
                        <div class="panel-body">
                           <p>[규정] 개정 이전에는 어린이통학버스 차량의 신고는 의무가 아닌 희망자에 한해 이루어졌습니다. 
                           그러나 개정 후, 만 13세 미만의 어린이를 대상으로 하는 교육시설에서 운영되며, 
                           9인승 이상의 차량은 ‘황색으로 도색, 경광등, 보조발판, 어린이용 안전띠 설치 등’ 
                           안전 기준을 갖추어 관할 경찰서에 신고하여 신고증명서를 발급받아야 합니다. 
                           (미신고시 과태료 : 30만원)</p>
                           <p> 저희유치원은 규정에 따라, 어린이 통학버스 차량의 신고를 완료하였으며, 
                           황색으로 도색, 경광등, 보조발판, 어린이용 안전띠 설치 등의 안전기준에 
                           적합하다는 판정을 받은 바 있습니다. 또한, 정기적인 차량의 점검으로 안전을 지키고 있습니다.
                           
                           </p>
                        </div>
                     </div>
                  </div>
                  <div class="panel panel-default">
                     <a class="panel-heading accordion-toggle bg-color-5"
                        data-toggle="collapse" data-parent="#accordionFirst"
                        href="#collapse-ee"> <span>어린이 통학버스내 전원 안전띠 착용 의무화</span> <span class="iconBlock"><i
                           class="fa fa-chevron-up"></i></span>
                     </a>
                     <div id="collapse-ee" class="panel-collapse collapse">
                        <div class="panel-body">
                           <p>[규정] 어린이통학버스에는 어린이의 신체구조에 맞춘 안전띠가 설치되어야 하며, 
                           전 좌석에 어린이 어린이의 안전띠 착용이 의무화됩니다. 
                           (위반 시 과태료 : 6만원)</p>
                           <p> 현재 우리 유치원의 어린이통학버스는 전 좌석 안전띠가 설치되어 있으며, 
                           어린이통학버스에 등 하차시 인솔교사에 의해 전 좌석 안전띠 하기 캠페인이 지켜지고 있습니다.</p>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
</section>
</div>
<%@ include file="MainFooter.jsp"%>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0612d5a0dcb8c7608772061cd533bfa6"></script>
<script>
var lat = ${lat};  // 위도
var lon = ${lon}; // 경도
</script>
<script src="./resources/js/BusMap.js"></script>

</body>
</html>
