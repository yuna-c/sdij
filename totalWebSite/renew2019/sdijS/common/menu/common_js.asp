<script type="text/javascript" src="/common/js/jquery-ui-1.12.1/external/jquery/jquery.js"></script>
<script type="text/javascript" src="/common/js/jquery-ui-1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="/common/js/common_ui.js"></script>
<script type="text/javascript" src="/common/js/selectordie.min.js"></script>
<script type="text/javascript" src="/common/js/modernizr.custom.17475.js"></script>
<script type="text/javascript" src="/common/js/jquery.elastislide.js"></script>
<script type="text/javascript" src="/common/js/jquerypp.custom.js"></script>
<script type="text/javascript" src="/common/js/common.js"></script>
<script type="text/javascript" src="/common/js/swiper.js"></script>
<script type="text/javascript" src="/common/js/jquery.mb-comingsoon.min.js"></script>
<script type="text/javascript" src="/common/js/typed.js"></script>


<script type="text/javascript" src="/common/js/jquery.selectric.js"></script>

<% If DRAG_NO <> "N" Then %>
<script type="text/javascript"src="/common/js/dragno.js"></script>
<% End If %>

<% If SCRIPT_FLAG_PRINT Then %>
<script type="text/javascript" src="/common/js/jQuery.print.js"></script><!-- 프린터 -->
<% End If %>

<% If SCRIPT_FLAG_DAUM_ADDR Then %>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script><!-- 다음 우편번호 주소 -->
<% End If %>

<% If SCRIPT_FLAG_DAUM_MAP Then %>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=<%=kakao_key%>"></script><!-- 카카오 지도-->
<!-- <script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=<%=Daum_Key%>&libraries=services"></script> 다음 지도-->
<% End If %>

<% If SCRIPT_GOOGLE_CHARTS Then %>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script><!-- 구글그래프 -->
<% End If %>

<% If SCRIPT_LGPAY Then %>
    <% If CST_PLATFORM = "service" Then %>
        <script language="JavaScript" src="http://pgweb.uplus.co.kr/WEB_SERVER/js/receipt_link.js"></script>    <!-- 서비스일 경우 -->
    <% Else %>
        <script language="JavaScript" src="http://pgweb.uplus.co.kr:7085/WEB_SERVER/js/receipt_link.js"></script>   <!-- 테스트일 경우 -->
    <% End If %>
<% End If %>

<% If SCRIPT_IMG_ZOOM Then %>
<script type="text/JavaScript" src="/common/js/cloud-zoom.1.0.2.min.js"></script><!-- 이미지 확대 축소 -->
<% End If %>
