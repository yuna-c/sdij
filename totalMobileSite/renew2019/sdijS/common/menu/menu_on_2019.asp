<div id="wrap">
    <!-- S : header -->
    <header id="zero-header">
        <!-- S : gnb -->
        <div class="gnb-area">
            <button class="btn-gnb"><span class="ico ico-menu">메뉴</span></button>
            <% if META_OG_URL="sdn" then '재종반 %>
                <h1><a href="/sdn">시대인재N 재수종합</a></h1>
            <% ElseIf META_OG_URL="aca" then '단과반 %>
                <% If sel_camp_cd = "" Then sel_camp_cd = "101" %>
                <% If sel_camp_cd = "101" Then %>
                    <h1 class="fl">
						<a href="/aca/">시대인재</a>
						<select name="tmpSelect" id="tmpSelect" class="gnb-select" onchange="IfCampusLoc(this.value);">
							<option value="101" selected="selected">대치</option>
							<option value="102">분당</option>
						</select>
					</h1>
                <% ElseIf sel_camp_cd = "102" Then %>
                    <h1 class="fl">
						<a href="/aca/">시대인재<!-- 단과 분당--></a>
						<select name="tmpSelect" id="tmpSelect" class="gnb-select" onchange="IfCampusLoc(this.value);">
							<option value="101">대치</option>
							<option value="102" selected="selected">분당</option>
						</select>
					</h1>
                <% End If %>
            <% else %>
                <h1>
                    <a href="/">시대인재</a>
                </h1>

                <div class="gnb-menu">
                    <div>
                        <a href="/mypage/order/order_revival.asp">주문/배송조회</a>
                        <% If COOK_ID = "" Then %>
                        <a href="/member/sd2019/login.asp">로그인</a>
                        <% Else %>
                        <a href="/member/sd2019/logout.asp">로그아웃</a>
                        <% End If %>

                        <%If InStr(LCase(fncRequestVariables("HTTP_HOST") & NowUrl), "sdij.com/on") > 0 Or InStr(LCase(fncRequestVariables("HTTP_HOST") & NowUrl), "sdij.com/event") > 0 Then %>
							<% If Replace(FormatDateTime(Now(),2),"-","")&Replace(FormatDateTime(Now(),4),":","") >= "201905222000" Then %>
	                        <br><a href="/event/14/knock_down.asp" style="text-decoration:underline;">SURVIVAL ZEROⅡ 해설지 다운</a>
							<% End If %>
                        <%End If%>
                    </div>
                </div>
            <% end if %>
        </div>
        <!--// E : gnb -->
    </header>
    <!--// E : header -->

    <!-- S : container -->
    <div id="container">
        <!-- S : nav -->
        <nav class="nav-area">
            <div class="content-layout">
                <% If META_OG_URL="sdn" Then '재종반 %>
                <div class="nav">
                    <ul>
                        <li><a href="/sdn/jj_curri.asp">커리큘럼</a></li>
                        <li><a href="/sdn/jj_library.asp">부엉이 라이브러리</a></li>
                        <li><a href="/sdn/jj_exam.asp">수능모의평가</a></li>
                        <li><a href="/sdn/jj_performance.asp">시대N 입시실적</a></li>
                        <li><a href="/sdn/apply/qual_list.asp">2020 모집요강</a></li>
                        <!--li><a href="javascript: alert('준비중입니다.');">만점구조시스템</a></li-->
                        <li><a href="/sdn/apply/public/2019/app_jayeon.asp">응시원서접수</a></li>

                        <li><a href="/sdn/jj_teacher.asp">강사진</a></li>
                        <li><a href="/sdn/board/jjmtm_list.asp">1:1 질의응답</a></li>
                        <li><a href="/sdn/monthly/2019/grade/ ">부엉이포스트</a></li>
                        <li><a href="/sdn/food/default.asp ">급식</a></li>

                        <li><a href="/sdn/board/exam_list.asp">입시정보</a></li>
                        <!-- <li><a href="/sdn/jj_honor.asp">명예의전당</a></li> -->
                        <li><a href="/sdn/info/facility.asp">학원시설</a></li>
                        <li><a href="/sdn/map.asp">오시는길</a></li>
                    </ul>
                </div>
                <% ElseIf META_OG_URL = "aca" Then '단과반 GNB %>
                <div class="nav">
                    <ul>
                        <li><a href="/aca/schd/schd_view.asp">시간표</a></li>
                        <li><a href="/aca/aboutSDIJ.asp">About SDIJ</a></li>
                        <li><a href="/aca/brief/brief_list.asp">입시설명회</a></li>
                        <li><a href="/aca/svv/2018/grade/ ">부엉이포스트</a></li>
                        <li><a href="/aca/notice_list.asp">공지사항</a></li>
                        <li><a href="/aca/board/exam_list.asp">입시정보</a></li>
                        <li><a href="/aca/info/facility.asp">학원시설</a></li>
                        <li><a href="/aca/map.asp">오시는길</a></li>
                        <li><a href="/recruit/sd2019/tec/">강사채용</a></li>
                        <li><a href="/recruit/sd2019/emp/">직원채용</a></li>
                        <li><a href="/recruit/sd2019/content/">출제진모집</a></li>
                        <li><a href="/recruit/sd2019/author/">집필진모집</a></li>
                    </ul>
                </div>
                <% Else %>

                <% end if %>

                <!-- <div class="news-letter">
                    <h4 class="dep-tit">Newsletter</h4>
                    <label class="input-search">
                        <input type="text" class="input-text" placeholder="Your Email Address">
                        <input type="submit" class="btn btn-xs btn-darkgray" value="ok">
                    </label>
                </div> : 뉴스레터 제거 -->

                <div class="family-site">
                    <ul>
                        <li><a href="/aca/">시대인재</a></li>

                        <li><a href="/sdn/">시대인재N 재수종합</a></li>
                        <% If fncRequestVariables("HTTP_HOST") = "dm.sdij.com" Then %>
                        <li><a href="http://dm.sdijbooks.com/" target="_blank">시대인재 Books</a></li>
                        <% Else %>
                        <li><a href="http://m.sdijbooks.com/" target="_blank">시대인재 Books</a></li>
                        <% End If %>

						<% If fncRequestVariables("HTTP_HOST") = "dm.sdij.com" Then %>
                        <li><a href="/on/revival/201901.asp">REVIVAL</a></li>
						<% End If %>
                        <% If Replace(FormatDateTime(Now(),2),"-","")&Replace(FormatDateTime(Now(),4),":","") >= "201905171700" Then %>
                        <li><a href="/on/">SURVIVAL Zero Ⅱ</a></li>
                        <% End If %>
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
                        <li>통신판매업신고 : 제 2017-서울강남-03764호 <a href="https://goo.gl/5HdB9R" target="_blank">정보확인</a></span></li>
                        <li>신고기관명: 서울시 강남서초교육지원청</li>
                        <li>COPYRIGHT (주)하이컨시온. All Rights Reserved.</li>
                        <li><a href="mailto:sdij@sdij.com" class="txt-link">SDIJ@SDIJ.COM</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!--// E : nav -->