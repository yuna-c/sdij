<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 가이드 레이아웃
' 모듈기능 : 시대인재 Digital > 가이드 레이아웃
' 파 일 명 : layout.asp
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
<!--#include virtual="/totalWebSite/sdijx/common/include/incMeta.asp"-->
<link rel="stylesheet" type="text/css" href="guide.css?ver=<%=Now()%>">
<!--#include virtual="/totalWebSite/sdijx/common/include/incHeader.asp"-->

    <!-- S : container -->
    <section id="container" class="layout-container">
        <!-- S : 컨텐츠 -->
        <div class="content-layout">
            <h2 class="tit-dep1">대타이틀</h2>

            <div class="tab-type1 tab-border">
                <ul>
                    <li class="selected"><a href="javascript:void(0);">tab1</a></li>
                    <li><a href="javascript:void(0);">tab2</a></li>
                </ul>
            </div>

            <!-- S : tab1 -->
            <div class="tab-content tab-on">
                <h3 class="tit-dep4">타이틀</h3>

                <div class="code-info">
                    안내 텍스트

                    <ul class="code-list">
                        <li>리스트</li>
                        <li>리스트</li>
                        <li>리스트</li>
                    </ul>
                </div>

                <div class="code-preview">
                    <span class="ico-house">배송지</span>
                </div>
                
<pre><code>
&lt;div&gt;&lt;/div&gt;
</code></pre>
            </div>
            <!--// E : tab1 -->

            <!-- S : tab2 -->
            <div class="tab-content">
                <h3 class="tit-dep4">타이틀</h3>

                <div class="code-info">
                    안내 텍스트

                    <ul class="code-list">
                        <li>리스트</li>
                        <li>리스트</li>
                        <li>리스트</li>
                    </ul>
                </div>

                <div class="code-preview">
                    <span class="ico-house">배송지</span>
                </div>
                
<pre><code>
&lt;div&gt;&lt;/div&gt;
</code></pre>
            </div>
            <!--// E : tab2 -->
        </div>
        <!--// E : 컨텐츠 -->
    </section>
    <!--// E : container -->

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->