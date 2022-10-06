<!--#include virtual="/totalWebSite/renew2019/common/include/incHeader.asp"-->


<link rel="stylesheet" type="text/css" href="/totalWebSite/renew2019/common/css/honor.css?ver=<%=now()%>">
<style type="text/css">
	.list-toggle dd .txt-box *{ font-family:'Noto Sans KR','Sans-serif','맑은 고딕', '돋움','Dotum','Apple SD Gothic Neo' !important; font-size:18px !important; color:#000 !important; }
</style>

<!-- S : 컨텐츠 영역 -->
<div class="layout-container video-container">
    <div class="page-loc float-area">
        <div class="fl">
            <a href="javascript:history.back();">&lt; Back</a>
        </div>
    </div>

    <div class="board-layout">
        <h2 class="page-tit border-tit">
            <a href="./video_list.asp">시대인재N 3기 명예의 전당</a>
        </h2>

        <!-- S : 명예의 전당 영상 영역 -->
        <div class="board-video">
            <div class="float-area">
                <div class="profile-content fl">
					<% If false Then '프로필이미지 없을 경우 %>
                    <div class="data-name" style="padding-left:0;">
                        정연재 학생
						<!-- <span>국/수/탐/탐 전과목 만점자 </br>(영어 1등급 /한국사 1등급)</span> -->
						<span>국/수/탐/탐 전과목 만점자 <br>(영어 1등급 /한국사 1등급)</span>
                    </div>
					<% Else %>
					<div class="data-img"><img src="https://dfile.sdij.com/sdij/board/interview/[크기변환]정연재2_1.JPG" alt="프로필 이미지"></div>
					<div class="data-name">
                        정연재 학생
						<!-- <span>국/수/탐/탐 전과목 만점자 </br>(영어 1등급 /한국사 1등급)</span> -->
						<span>국/수/탐/탐 전과목 만점자 <br>(영어 1등급 /한국사 1등급)</span>
                    </div>
					<% End If %>
                </div>
                <div class="video-content fr">
                    <div class="vide-area">
						<iframe width="100%" height="100%" src="https://www.youtube.com/embed/4sgs2SEGbjk?rel=0&amp;autoplay=1" frameborder="0" allowfullscreen=""></iframe>
                    </div>
                </div>
            </div>
        </div>
        <!--// E : 명예의 전당 영상 영역 -->
    </div>
</div>
<!--// E : 컨텐츠 영역 -->


<!--#include virtual="/totalWebSite/renew2019/common/include/incFooter.asp"-->

<script type="text/javascript">

$(function(){

});

</script>