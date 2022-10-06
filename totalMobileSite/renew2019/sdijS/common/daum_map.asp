<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : Daum 공통 지도 팝업
' 모듈기능 : Daum 공통 지도 팝업
' 파 일 명 : daum_map.asp
' 작성일자 : 2017/03/28
' 작 성 자 :
'-----------------------------------------------------------------------
' 변경일자   변경자  변동내역
'-----------------------------------------------------------------------
'
'-----------------------------------------------------------------------



'------------------------------
' page navi code
'------------------------------
SCRIPT_FLAG_DAUM_MAP = True  ' 다음 지도

'------------------------------
' VARS
'------------------------------
mapAddr = fncRequest("mapAddr")
mapInfo = fncRequest("mapInfo")

'------------------------------
' QUERY
'------------------------------


'------------------------------
' ETC
'------------------------------




%>
<!-- #include virtual = "/common/menu/header.asp" -->
<body class="nav-md pop"  data-depth4="pop">
<div class="container body">
    <div class="main_container">
        <!-- Page Content e -->
        <div class="pop_col" role="main">
            <div class="row">
                <form name="dataForm" method="post">
                    <input type="hidden" name="mapAddr" value="<%=mapAddr%>">
                    <input type="hidden" name="mapInfo" value="<%=mapInfo%>">
                    <div class="x_panel">
                        <div class="x_content">
                            <div id="map" style="width:30em;height:50em;"></div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- Page Content s -->
    </div>
</div>

<script type="text/javascript">
$(function() {
    var mapAddr = $("input[name='mapAddr']").val();
    var mapInfo = $("input[name='mapInfo']").val();
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
        mapOption = {
            center: new daum.maps.LatLng(37.498433599, 127.0606283384), // 지도의 중심좌표
            level: 3 // 지도의 확대 레벨
        };  

    // 지도를 생성합니다    
    var map = new daum.maps.Map(mapContainer, mapOption); 

    // 주소-좌표 변환 객체를 생성합니다
    var geocoder = new daum.maps.services.Geocoder();

    // 주소로 좌표를 검색합니다
    geocoder.addr2coord(mapAddr, function(status, result) {
        // 정상적으로 검색이 완료됐으면 
        if (status === daum.maps.services.Status.OK) {
            var coords = new daum.maps.LatLng(result.addr[0].lat, result.addr[0].lng);

            // 결과값으로 받은 위치를 마커로 표시합니다
            var marker = new daum.maps.Marker({
                map: map,
                position: coords
            });
            
            // 인포윈도우로 장소에 대한 설명을 표시합니다
            if (mapInfo != "") {
                var infowindow = new daum.maps.InfoWindow({
                    content: '<div style="width:150px;text-align:center;padding:6px 0;">' + mapInfo + '</div>'
                });
                infowindow.open(map, marker);
            }

            // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
            map.setCenter(coords);
        } else {
            var coords = new daum.maps.LatLng(37.498433599, 127.0606283384); // 지도의 기본 좌표

            // 결과값으로 받은 위치를 마커로 표시합니다
            var marker = new daum.maps.Marker({
                map: map,
                position: coords
            });

            // 인포윈도우로 장소에 대한 설명을 표시합니다
            if (mapInfo != "") {
                var infowindow = new daum.maps.InfoWindow({
                    content: '<div style="width:150px;text-align:center;padding:6px 0;">시대인재</div>'
                });
                infowindow.open(map, marker);
            }

            // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
            map.setCenter(coords);
        }
    });
});
</script>
</body>
</html>