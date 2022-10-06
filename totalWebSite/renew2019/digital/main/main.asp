<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 메인
' 모듈기능 : 시대인재 Digital > 메인
' 파 일 명 : main.asp
' 작성일자 : 
' 작 성 자 : 
'-----------------------------------------------------------------------
' 변경일자   변경자  변동내역
'-----------------------------------------------------------------------
'
'-----------------------------------------------------------------------



'------------------------------
' page navi code
'------------------------------



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
<!--#include virtual="/totalWebSite/renew2019/digital/common/include/incMeta.asp"-->
<link rel="stylesheet" type="text/css" href="/totalWebSite/renew2019/digital/common/css/main.css?ver=<%=Now()%>" />
<!--#include virtual="/totalWebSite/renew2019/digital/common/include/incHeader.asp"-->

    <!-- S : container -->
    <section id="container" class="index-container"><!-- 폴더명-container -->
        <!-- S : 공지사항 -->
        <article class="notice-article content-layout">
            <ul class="notice-list">
                <% for i = 1 to 3 '최대 공지사항 3개 %>
                <li><a href="notice_detail.asp">
                    <span class="tit">공지사항 제목</span>
                    <span class="data">2020-01-0</span>
                </a></li>
                <% next %>
            </ul>
        </article>
        <!--// E : 공지사항 -->

        <!-- S : 선생님 -->
        <article class="teachers-article content-layout">
            <div class="tab-type1">
                <ul>
                    <li class="selected"><a href="javascript:void(0)">전체</a></li>
                    <li><a href="javascript:void(0)">수학</a></li>
                    <li><a href="javascript:void(0)">영어</a></li>
                    <li><a href="javascript:void(0)">사회</a></li>
                    <li><a href="javascript:void(0)">과학</a></li>
                    <li><a href="javascript:void(0)">수학스쿨</a></li>
                    <li><a href="javascript:void(0)">특강센터</a></li>
                </ul>
            </div>

            <div class="tab-content tab-on">
                <dl>
                    <dt>수학</dt>
                    <dd>선생님</dd>
                    <dd>선생님</dd>
                    <dd>선생님</dd>
                    <dd>선생님</dd>
                    <dd>선생님</dd>
                    <dd>선생님</dd>
                    <dd>선생님</dd>

                    <dt>영어</dt>
                    <dd>선생님</dd>
                    <dd>선생님</dd>
                    <dd>선생님</dd>
                    <dd>선생님</dd>
                    <dd>선생님</dd>
                    <dd>선생님</dd>
                    <dd>선생님</dd>

                    <dt>사회</dt>
                    <dd>선생님</dd>
                    <dd>선생님</dd>
                    <dd>선생님</dd>
                    <dd>선생님</dd>
                    <dd>선생님</dd>
                    <dd>선생님</dd>
                    <dd>선생님</dd>
                </dl>
            </div>
        </article>
        <!--// E : 선생님 -->
    </section>
    <!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/digital/common/include/incFooter.asp"-->