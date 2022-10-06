<!--#include virtual="/totalMobileSite/renew2019/common/include/incHeader.asp"-->

<link rel="stylesheet" type="text/css" href="/totalMobileSite/renew2019/common/css/honor.css">
<style type="text/css">
	.list-toggle dd .txt-box *{ font-family:'Noto Sans KR','Sans-serif','맑은 고딕', '돋움','Dotum','Apple SD Gothic Neo' !important; font-size:18px !important; color:#000 !important; }
	.board-video .profile-content{ border-bottom:none; }
</style>



<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <div class="content-layout">
        <h2 class="page-tit border-tit">
            <a href="./video_list.asp">시대인재N 3기 명예의 전당</a>
        </h2>

        <!-- S : 명예의 전당 영상 영역 -->
        <div class="board-video">
            <div class="profile-content">
				<% If false Then '프로필이미지 없을 경우 %>
				<% Else '프로필이미지 있을 경우 %>
                    <div class="data-img">
						<img src="//dfile.sdij.com/sdij/board/interview/[크기변환]정연재2_1.JPG" alt="프로필 이미지">
						<!-- <img src="//via.placeholder.com/58x58/626262/626262/" alt="프로필 이미지"> -->
					</div>
				<% End If %>
                <div class="data-name">
					정연재 학생
					<span>국/수/탐/탐 전과목 만점자 <br>(영어 1등급 /한국사 1등급)</span>
                </div>
				<div class="data-content"></div>
			</div>

			<% If False Then '영상 없을 경우 %>
			<% Else %>
            <div class="video-area">
				<iframe src="//www.youtube.com/embed/4sgs2SEGbjk?rel=0&amp;autoplay=1" frameborder="0" allowfullscreen=""></iframe>
            </div>
			<% End If %>
        </div>
        <!--// E : 명예의 전당 영상 영역 -->

    </div>
</div>
<!--// E : 컨텐츠 영역 -->

<div class="info-box">
	시대인재 N재수종합반의 PC사이트에서<br>
	더 많은 입시정보를 제공합니다.<br>

	<a href="#" class="txt-link mt10">PC Ver.으로 보기</a>
</div>

<!--#include virtual="/totalMobileSite/renew2019/common/include/incFooter.asp"-->

<script type="text/javascript">

$(function(){

});

</script>