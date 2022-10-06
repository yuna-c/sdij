        <link rel="stylesheet" type="text/css" href="/on/menu_on.css">

        <header id="zero_header">
            <!-- S : gnb -->
            <div class="gnb-area">
                <button class="btn-gnb"><span class="ico ico-menu">메뉴</span></button>
                <h1 class="fl">
                    <a href="/on/">시대인재</a>
                </h1>
            </div>
            <!--// E : gnb -->
        </header>

        <div id="container" style="height:100%">
			<!-- S : nav -->
			<nav class="nav-area">
				<div class="content-layout">
					<div class="nav">
						<ul>
                            <li>&nbsp</li>
							<!--li><a href="/aca/schd/schd_view.asp">시간표</a></li>
							<li><a href="/aca/aboutSDIJ.asp">About SDIJ</a></li>
							<li><a href="/aca/brief/brief_list.asp">입시설명회</a></li>
							<li><a href="/aca/svv/2018/grade/ ">부엉이포스트</a></li>
                            <li><a href="/aca/notice_list.asp">공지사항</a></li>
                            <li><a href="/aca/board/exam_list.asp">입시정보</a></li>
							<li><a href="/aca/info/facility.asp">학원시설</a></li>
							<li><a href="/aca/map.asp">오시는길</a></li-->
						</ul>
					</div>

					<div class="family-site">
						<ul>
							<li><a href="/aca/">시대인재 </a></li>

							<li><a href="/sdn/">시대인재N 재수종합</a></li>
                            <% If fncRequestVariables("HTTP_HOST") = "dm.sdij.com" Then %>
                            <li><a href="http://dm.sdijbooks.com/" target="_blank">시대인재 Books</a></li>
                            <% Else %>
                            <li><a href="http://m.sdijbooks.com/" target="_blank">시대인재 Books</a></li>
                            <% End If %>

                            <li><a href="/on/">SURVIVAL Zero</a></li>
						</ul>
					</div>

					<div class="copyright">
						<ul>
							<li>주소: 서울시 강남구 삼성로 434 5층(대치동 쥬비스타워)</li>
							<li>(주)하이컨시온  대표이사: 오우석</li>
							<% if META_OG_URL="sdn" then '재종반 %>
							<li>시대인재 부엉이 라이브러리 신관학원</li>
							<li>시대인재 부엉이 라이브러리 엔(N)학원</li>
							<% End If%>
							<li>사업자등록번호: 429-88-00534</li>
							<li>학원설립, 운영 등록번호: 제 12226호</li>
							<li>신고기관명: 서울시 강남서초교육지원청</li>
							<li>COPYRIGHT (주)하이컨시온. All Rights Reserved.</li>
							<li><a href="mailto:sdij@sdij.com" class="txt-link">SDIJ@SDIJ.COM</a></li>
						</ul>
					</div>
				</div>
			</nav>
			<!--// E : nav -->



        <script language="javascript">
        jQuery(document).ready(function(){

            // gnb button
            $('.btn-gnb').on('click', function(){
                $(this).parents().next().toggleClass('nav-on');
            });

        });
        </script>

        <iframe id="hiddenIframe" name="hiddenIframe" src="" width="0" height="0" style="display:none;"></iframe>