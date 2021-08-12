<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../layout/header.jsp"%>

<main id="main">
<!--============container===========-->
  <div class="store_drive_container">
    <!--=========서브타이틀==========-->
    <div class="sub_tit_wrap">
        <div class="sub_tit_inner">    
          <h2><img src="/images/store/driver_store_tit.jpg" alt="STORE"/></h2>
        </div>
    </div>
    <!--=========서브타이틀 End=======-->

    <!--=========매장 소개==========-->
    <section class="drive_store_full">
      <div class="st_cont">						
        <article class="full_text">
          <figure class="full_img">
            <img src="/images/store/drive_store_fimg01.png" alt="드라이브 스루 매장"></figure>
          <strong class="dt_emphasis">"가끔은 내리지 않고 즐기셔도 좋습니다."</strong><br><br>
          <p>차 안 가득히 퍼져나가는 커피향과 여운, 스타벅스 드라이브 스루 매장에서 함께 태워가세요!<br><span><strong>스타벅스 드라이브 스루(Drive Thru)는</strong> 고객이 주차를 하지 않고 차를 탄 채로 스타벅스의 최고의 서비스를 편리하게 이용할 수 있는 서비스 입니다.</span><br>이동 중에도 부담 없이 이용할 수 있으며, 스타벅스 최초 Face to Face 화상 주문 시스템으로 주문과정에서 부터 결제까지 친절한 스타벅스 파트너의 미소가 함께합니다.</p>
        </article>
      </div>

      <!--=========드라이브스루 트랙 ==========-->
      <div class="drive_through_track">
        <div class="drive_through_rail">
          <div class="drive_through_inner">
            <p class="drive_tit" style="display: block;">
                <img src="/images/store/drive_through_tit.png" alt="이용방법"></p>
            <div class="drive_car" style="opacity: 1; left: 138px; top: 354px;"></div>
            <div class="step1_obj">
                <img src="/images/store/myCircle01.png" alt=""></div>
            <div class="step1_txt" style="display: block;">
                <img src="/images/store/myText01.png" alt="스타벅스 드라이브 스루 매장 방문하기">
            </div>
            <div class="step2_obj">
               <img src="/images/store/myCircle02.png" alt=""></div>
            <div class="step2_txt" style="display: block;">
                <img src="/images/store/myText02.png" alt="차 안에서 화상으로 편리하게 주문하기">
            </div>
            <div class="step3_obj">
                <img src="/images/store/myCircle03.png" alt=""></div>
            <div class="step3_txt" style="display: block;">
                <img src="/images/store/myText03.png" alt="스타벅스 음료를 제대로 즐기기">
            </div>

            <div class="step1_flag">
                <img src="/images/store/drive_step01.png" alt="">
            </div>
            <div class="step2_flag">
                <img src="/images/store/drive_step02.png" alt="">
            </div>
            <div class="step3_flag">
                <img src="/images/store/drive_step03.png" alt="">
            </div>
            <div class="store_bg">
                <img src="/images/store/icon_store.png" alt="">
            </div>

          </div>
        </div>
      </div>

<!--===========드라이브스루 매장 지도============-->
<section class="driveStore_ber_wrap">
  <article class="driveStore_ber_innner">
    <dl>
      <dt>
        <img class="w_pic" src="/images/store/driveStore_ber_img.png" alt="DRIVE THRU(DT) Store">
      </dt>
      <dd>전국의 드라이브 스루 매장을 확인해 보세요!</dd>
    </dl>
  </article>
</section>

<!--지도영역-->
<section class="store_map_wrap" id="storeMap" style="position: relative; overflow: hidden; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/bg_tile.png&quot;);">
    <div id="map" style="width:100%;height:631px;"></div>
</section>

<!--자바스크립트-->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a46aa39525659b92f0dda2e367cdde6a"></script>
<script>
    let container = document.querySelector("#map"); //지도를 담을 영역의 DOM 레퍼런스
    let options = { //지도를 생성할 때 필요한 기본 옵션
                      center: new kakao.maps.LatLng(35.189565, 129.121754), //지도의 중심좌표.
                      level: 3 //지도의 레벨(확대, 축소 정도)
                      };          

    let map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

    let positions = [
{
          //부산재송DT점 /  부산광역시 해운대구 해운대로 189 (재송동) /  위도,경도 : 35.189565, 129.121754
  title: '부산재송DT', 
  latlng: new kakao.maps.LatLng(35.189565, 129.121754)
},
{
  title: '수영망미DT', 
  latlng: new kakao.maps.LatLng(35.177500, 129.107486)
},
{
  title: '부산안락DT', 
  latlng: new kakao.maps.LatLng(35.199600654462785, 129.10327341310693)
},
{
  title: '수영강변DT',
  latlng: new kakao.maps.LatLng(35.20398474547014, 129.11936812660127)
}
];

    let imageSrc = '/images/store/pin_general_DT.png'; // 마커이미지의 주소입니다    

// 커스텀 오버레이에 표시할 컨텐츠 입니다
// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
// 별도의 이벤트 메소드를 제공하지 않습니다 
let content = '<div class="wrap">' + 
      '    <div class="info">' + 
      '        <div class="title">' + 
      '            부산재송DT' + 
      '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
      '        </div>' + 
      '        <div class="body-wrap">' +             
      '           <div class="body">' + 
      '               <div class="img">' +
      '                   <img src="/images/store/icon03.png" >' +
      '                   <img src="/images/store/icon22.png" >' +
      '                </div>' + 
      '                <div class="desc">' +
      '                   <div class="ellipsis"><img src="/images/store/icon_addr.png" >' + 
      '                                                     부산광역시 해운대구 해운대로 189 (재송동)</div>' + 
      '                   <div class="tel"><img src="/images/store/icon_tel.png" >' + 
      '                                               1522-3232</div>' + 
      '                </div>' + 
      '           </div>' + 
      '        </div>' + 
      '    </div>' +    
      '</div>';

for (var i = 0; i < positions.length; i ++) {

// 마커 이미지의 이미지 크기 입니다
let imageSize = new kakao.maps.Size(42, 65); // 마커이미지의 크기입니다

// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다    
let markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 

// 마커를 생성합니다
let marker = new kakao.maps.Marker({
    map: map, // 마커를 표시할 지도
    position: positions[i].latlng, // 마커를 표시할 위치
    title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
    image : markerImage // 마커 이미지 
});


// 마커 위에 커스텀오버레이를 표시합니다
// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
let overlay = new kakao.maps.CustomOverlay({
content: content,
map: map,
position: marker.getPosition()       
});

// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(marker, 'click', function() {
overlay.setMap(map);
});

// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
function closeOverlay() {
overlay.setMap(null);     
}
}

    // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
    // let markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
    //markerPosition = new kakao.maps.LatLng(35.189565, 129.121754);  // 마커가 표시될 위치입니다

    // 마커가 지도 위에 표시되도록 설정합니다
    //marker.setMap(map);

    // 아래 코드는 지도 위의 마커를 제거하는 코드입니다
    // marker.setMap(null);    
</script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a46aa39525659b92f0dda2e367cdde6a&libraries=services,clusterer,drawing"></script>

</main>
<%@include file="../layout/footer.jsp"%>