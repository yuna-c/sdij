<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 마이페이지 > 내강좌 > 강좌보기 > 교재보기
' 모듈기능 : 마이페이지 > 내강좌 > 강좌보기 > 교재보기
' 파 일 명 : pop.bookdetail.asp
' 작성일자 : 
' 작 성 자 : 
'-----------------------------------------------------------------------
' 변경일자   변경자  변동내역
'-----------------------------------------------------------------------
'
'-----------------------------------------------------------------------



'------------------------------
' VARS
'------------------------------


'------------------------------
' QUERY
'------------------------------



'------------------------------
' ETC
'------------------------------



%>
<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incMeta.asp"-->
<link rel="stylesheet" type="text/css" href="/totalWebSite/renew2019/sdijS/common/css/sd2019/mypage.css?ver=<%=now()%>">

<body>
<div class="pop-content book-view">
    <!-- S : 교재 정보 -->
    <div class="tit">[홍길동T] NEW 2020 씹어먹는 EBS 수능완성 타 EBS 수능완성 타 EBS 수능완성 타이틀 두줄 일 때</div>
    
    <div class="float-area">
        <div class="slide-container fl">
            <div class="slide-view">
                <div><img src="https://via.placeholder.com/140x164?text=1" alt="교재명"></div>
            </div>            
        </div>

        <div class="list-tit fr">
            <dl>
                <dt>판매가</dt>
                <dd>
                    <del>99,900원</del>
                    →
                    <span class="color-red">90,000원 (10%할인)</span>
                </dd>

                <dt>책소개</dt>
                <dd>
                    <ul class="list-dash">
                        <li>시험장에서 ''진짜'' 써 먹을 수 있는 EBS 지문 분석</li>
                        <li>단순히 EBS 공부만이 아닌, 국어 자체에 대한 실력을 키워주는 수업</li>
                    </ul>
                </dd>
            </dl>

            <div class="form-select mt20">
                <select>
                    <option hidden disabled selected>이 교재로 수강할 수 있는 강좌</option>
                    <option value="">강좌명강좌명강좌명강좌명강좌명강좌명강좌명</option>
                </select>
            </div>
        </div>
    </div>
    <!--// E : 교재 정보 -->
</div>

<script type="text/javascript">

$(function(){
    $('.slide-list .slide').on('click', function(){
        var imgSrc = $(this).html();
        
        $('.slide-view').children('div').html(imgSrc);
        $('.slide-view').children('div').hide().fadeIn('slow');
    });
});

</script>
</body>
</html>