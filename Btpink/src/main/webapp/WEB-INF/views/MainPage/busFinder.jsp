<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="MainHead.jsp"%>
<%@ include file="MainHeader.jsp"%>

<!-- PAGE TITLE SECTION-->
<section class="pageTitleSection">
   <div class="container">
      <div class="pageTitleInfo">
         <h2>バスの位置探し</h2>
      </div>
   </div>
</section>



<!-- MAIN SECTION -->
<section class="mainContent full-width clearfix conactSection">
   <div class="container">


      <div class="sectionTitle text-center">
         <h2>
            <span class="shape shape-left bg-color-4"></span> <span>バスの現在位置</span>
             <span class="shape shape-right bg-color-4"></span>
         </h2>
      </div>



      <div class="row">
         <div class="col-sm-4 col-xs-12">
            <div class="media addressContent">
               <span class="media-left bg-color-1" href="#"> <i
                  class="fa fa-map-marker" aria-hidden="true"></i>
               </span>
               <div class="media-body">
                  <h3 class="media-heading">幼稚園の位置:</h3>
                  <p>ソウル　江南タイロウ 513 COEX Office Tel:1566-5114</p>
               </div>
            </div>
         </div>
         <div class="col-sm-4 col-xs-12">
            <div class="media addressContent">
               <span class="media-left bg-color-2" href="#"> <i
                  class="fa fa-phone" aria-hidden="true"></i>
               </span>
               <div class="media-body">
                  <h3 class="media-heading">運転手の電話番号:</h3>
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
                  <h3 class="media-heading">出席変動事項:</h3>
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
                        href="#collapse-aa"> <span>幼稚園車を逃したときはどうすればいいですか？</span> <span
                        class="iconBlock"><i class="fa fa-chevron-down"></i></span>
                     </a>
                     <div id="collapse-aa" class="panel-collapse collapse in">
                        <div class="panel-body">
                           <p> 上記記載されている幼稚園引率教師の連絡先に連絡したり、幼稚園召喚ご連絡ください</p>
                           <p>幼稚園正規運行経路から大きく外れない場合は、定められた運行経路が終わった後に幼稚園車再びピックアップ場所に移動します。</p>
                        </div>
                     </div>
                  </div>
                  <div class="panel panel-default">
                     <a class="panel-heading accordion-toggle bg-color-2"
                        data-toggle="collapse" data-parent="#accordionFirst"
                        href="#collapse-bb"> <span>引率の教師搭乗義務付け</span> <span class="iconBlock"><i
                           class="fa fa-chevron-up"></i></span>
                     </a>
                     <div id="collapse-bb" class="panel-collapse collapse">
                        <div class="panel-body">
                           <p>[規定]子供の通学バスに子供や乳幼児を乗せるとき、保護者が一緒に搭乗して子供や乳幼児の乗・下車を安全に指導しなければならず、運行中にシートベルトを締めて着席するように指導するなどの子供の安全と保護に必要な措置を講じてください。改正道路交通法が施行されている'15年1月29日から同乗保護者が搭乗しなければします。
                        </p>
                        <p> 当幼稚園では幼稚園スクールバスに引率教師搭乗を義務としており、幼稚園スクールバス乗車を担当する担当引率教師役の子供の担当の先生が決まった時間に子供を迎えます。</p>
                        </div>
                     </div>
                  </div>
                  <div class="panel panel-default">
                     <a class="panel-heading accordion-toggle bg-color-3"
                        data-toggle="collapse" data-parent="#accordionFirst"
                        href="#collapse-cc"> <span>子供の通学バス安全教育の強化</span> <span class="iconBlock"><i
                           class="fa fa-chevron-up"></i></span>
                     </a>
                     <div id="collapse-cc" class="panel-collapse collapse">
                        <div class="panel-body">
                           <p>[規定]子供の通学バスと子供の通学車の車のオペレータと運転は、道路交通法に基づき、2年に一度、道路交通公団や自治体・教育委員会で実施する子どもの通学バスなどの安全教育（子供の行動特性、関連法令、主要教育事例など）を3時間履修が必要です。（米履修時ペナルティ：8万ウォン）
                           </p>
                           <p>子供の通学車自動車運転者と引率教師は、道路交通法に基づいて、2年に一度、安全教育を受けており、最近の教育を修了した日付は2017.07.26です。</p>
                        </div>
                     </div>
                  </div>
                  <div class="panel panel-default">
                     <a class="panel-heading accordion-toggle bg-color-4"
                        data-toggle="collapse" data-parent="#accordionFirst"
                        href="#collapse-dd"> <span>子供の通学バス申告規定」義務化」</span> <span class="iconBlock"><i
                           class="fa fa-chevron-up"></i></span>
                     </a>
                     <div id="collapse-dd" class="panel-collapse collapse">
                        <div class="panel-body">
                           <p>[規定]改正以前には、子供の通学バス車両の届出は義務ではなく、希望者に限って行われました。しかし改正後、満13歳未満の子供を対象とする教育施設で運営され、9人乗り以上の車両は「黄色に塗装、点滅する光、補助足場、子供用シートベルトの設置など「安全基準を備え、管轄警察署に届け出て届出証明書を発行しなければします。（未申告時ペナルティ：30万ウォン）</p>
                           <p> 我らは、規定に基づいて、子供の通学バスの車両の届出を完了し、黄色に塗装、点滅する光、補助足場、子供用シートベルトの設置などの安全基準に適合している判定を受けたています。また、定期的な車両の点検で安全を守っています。
                           
                           </p>
                        </div>
                     </div>
                  </div>
                  <div class="panel panel-default">
                     <a class="panel-heading accordion-toggle bg-color-5"
                        data-toggle="collapse" data-parent="#accordionFirst"
                        href="#collapse-ee"> <span>子供の通学バス内の電源ベルト着用義務化</span> <span class="iconBlock"><i
                           class="fa fa-chevron-up"></i></span>
                     </a>
                     <div id="collapse-ee" class="panel-collapse collapse">
                        <div class="panel-body">
                           <p>[規定]子供の通学バスに子供の体の構造に合わせたシートベルトが設置されるべきであり、前の座席に子供の子供のシートベルト着用が義務化されます。（違反した場合ペナルティ：6万ウォン）</p>
                           <p> 現在、私たちの幼稚園の子供たちの通学バスは前の座席ベルトが設置されており、子供の通学バスに等降車時引率の教師によって前シートベルトするキャンペーンが守られています。</p>
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
