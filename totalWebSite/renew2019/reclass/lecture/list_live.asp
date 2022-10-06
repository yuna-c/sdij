<%
'-----------------------------------------------------------------------
' 업 무 명 : 보충강좌 서비스 > 강좌 > 라이브 강좌 리스트
' 모듈기능 : 라이브 강좌 리스트
' 파 일 명 : list_live.asp
' 작성일자 : 
' 작 성 자 : 
'-----------------------------------------------------------------------
' 변경일자   변경자  변동내역
'-----------------------------------------------------------------------
'
'-----------------------------------------------------------------------
%>
<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incMeta.asp"-->

    <!-- S : header -->
    <header id="header">
        <div class="content-layout">
            <a href="javascript:histroy.back();" class="btn-back">뒤로가기</a>
            <h1 class="tit-dep1 tit-player">실시간 LIVE</h1>
        </div>
    </header>
    <!--// E : header -->

    <!-- S : container -->
    <section id="container" class="live-container">
        <!-- S : 라이브 강좌 리스트 -->
        <article class="container-list content-layout">
            <div class="table-type2">
                <table>
                    <thead>
                        <tr>
                            <th><span>월</span></th>
                            <th><span>화</span></th>
                            <th class="today"><span>수</span></th>
                            <th><span>목</span></th>
                            <th><span>금</span></th>
                        </tr>
                    </thead>
                    <tbody>
                        <% for i = 1 to 6 %>
                        <tr>
                            <td><a href="javascript:void(0);">
                                <em>12:00 ~ 14:00</em>
                                엄영대T 지구과학Ⅰ
                            </a></td>
                            <td><a href="javascript:void(0);">
                                <em>12:00 ~ 14:00</em>
                                이준호T 국어
                            </a></td>
                            <td class="today <% if i = 3 then %>on<% end if %>"><a href="javascript:void(0);"><!-- 현재 요일 class="today" 추가 / 현재 LIVE 강좌 class="on" 추가 -->
                                <em>12:00 ~ 14:00</em>
                                이준호T 국어
                            </a></td>
                            <!-- S : 강의가 종료 되었을 경우 -->
                            <td><a href="javascript:void(0);" onclick="alert('종료된 라이브 입니다.');">
                                <em>12:00 ~ 14:00</em>
                                이준호T 국어
                            </a></td>
                            <!--// E : 강의가 종료 되었을 경우 -->
                            <!-- S : 강의가 없을 경우 -->
                            <td>
                                &nbsp;
                            </td>
                            <!--// E : 강의가 없을 경우 -->
                        </tr>
                        <% next %>
                    </tbody>
                </table>
            </div>
        </article>
        <!--// E : 라이브 강좌 리스트 -->
    </section>
    <!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incFooter.asp"-->

<script type="text/javascript">
$(function() {


});

</script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-158980606-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-158980606-1');
</script>
