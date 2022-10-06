<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 스크립트
' 모듈기능 : 시대인재 Digital > 스크립트
' 파 일 명 : script.asp
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
    <section id="container" class="script-container">
        <!-- S : 컨텐츠 -->
        <div class="content-layout">
            <h2 class="tit-dep1">script guide</h2>

            <div class="tab-type1 tab-border">
                <ul>
                    <li class="selected"><a href="javascript:void(0);">form</a></li>
                    <li><a href="javascript:void(0);">error</a></li>
                    <li><a href="javascript:void(0);">dialog(alert)</a></li>
                    <li><a href="javascript:void(0);">window open</a></li>
                    <li><a href="javascript:void(0);">isMobile</a></li>
                    <li><a href="javascript:void(0);">modal</a></li>
                    <li><a href="javascript:void(0);">popover</a></li>
                </ul>
            </div>

            <!-- S : form -->
            <div class="tab-content tab-on">
                <h3 class="tit-dep4">폴더/파일명 기본 구조</h3>

                <div class="code-info">
                    <ul class="code-list">
                        <li>폴더명은 카멜 표기법</li>
                        <li>class명은 -로 표기</li>
                        <li>incLnb.asp : 각 페이지에 sub menu file</li>
                        <li>inc파일명.asp : include file</li>
                        <li>incModal파일명.asp : include modal file</li>
                        <li>win파일명.asp : window popup page</li>
                    </ul>
                </div>

                <h3 class="tit-dep4">form</h3>

                <div class="code-info">
                    기본 페이지 레이아웃
                    <ul class="code-list">
                        <li>페이지 구조 : <a href="/totalWebSite/sdijx/guide/layout/form.asp" class="txt-link" target="_black">form 페이지 레이아웃 보기</a></li>
                    </ul>


                    validate 사용법
                    <ul class="code-list">
                        <li><a href="https://jqueryvalidation.org/?__cf_chl_jschl_tk__=b8ecb981f76baa279c73bba61540cf32d79b768a-1603257764-0-AQbYfl3AToGRHvv_aPLUH-xTtz36dUnRnnZUBsx1u5m7pDmTkwpl89R6_lCTYSo4wnmsWH4U9HwDSn0Di6_oxbL4J64sQK9rGz9XC9OYVoRN1Nw-c6SUZsmkobvoiHr6Ub66SVsk2OVYAntP41Qms7JivSOnZ3ah3jd2pQCsEKU-6PemA0b_aRvHqha4torgEy5hNhJpbmobRQxA9C7EJKfVxi9HMDpx_yWdXGIS4ql-QaMHIQOs0mevgYPXJevqx_XB4b1L3QXZDG3X1_X46gg" target="_blank" class="txt-link">jquery.validate.js</a></li>
                        <li>사용 페이지에 js파일 연결 후 사용</li>
                    </ul>
                </div>

                <div class="code-preview">
                    <script type="text/javascript" src="/totalWebSite/sdijx/common/js/lib/jquery.validate.js"></script>

                    <div class="content-layout">
                        <form id="loginForm" action="" method="">
                            <div class="form-type1">
                                <dl>
                                    <dt>아이디</dt>
                                    <dd>
                                        <label class="input-text">
                                            <input type="text" name="memId" id="memId" placeholder="아이디를 입력해주세요.">
                                        </label>
                                    </dd>

                                    <dt>비밀번호</dt>
                                    <dd>
                                        <label class="input-text">
                                            <input type="password" name="memPw" id="memPw" placeholder="비밀번호를 입력해주세요.">
                                        </label>
                                    </dd>

                                </dl>
                            </div>

                            <div class="btn-area flex-area mt20">
                                <input type="submit" onclick="fnLogin();" class="btn btn-black btn-L" value="로그인">
                            </div>
                        </form>
                    </div>

                    <!-- S : script -->
                    <script type="text/javascript">
                        $(function(){
                            $('#loginForm').validate({
                                debug: true, // submit X

                                // 규직
                                rules: {
                                    memId: {
                                        required: true
                                    },
                                    memPw: {
                                        required: true
                                    }
                                },

                                // 메시지
                                messages: {
                                    memId: {
                                        required: '아이디를 입력해주세요.'
                                    },
                                    memPw: {
                                        required: '비밀번호를 입력해주세요.'
                                    }
                                },

                                errorElement: 'p',
                                errorClass: 'error-msg',

                                errorPlacement: function(error, element){
                                    error.appendTo( element.parents('dd') );
                                },

                                highlight: function(element, errorClass){
                                    $(element).parents('dd').addClass('error');
                                },

                                unhighlight: function(element, errorClass){
                                    $(element).parents('dd').removeClass('error');
                                }
                            });
                        });
                    </script>
                    <!--// E : script -->
                </div>
                
                <pre><code>
&lt;script&gt; type="text/javascript" src="/common/js/lib/jquery.validate.js"&gt;&lt;/script&gt;

&lt;div class="content-layout"&gt;
    &lt;form id="loginForm" action="" method=""&gt;
        &lt;div class="form-type1"&gt;
            &lt;dl&gt;
                &lt;dt&gt;아이디&lt;/dt&gt;
                &lt;dd&gt;
                    &lt;label&gt; class="input-text"&gt;
                        &lt;input type="text" name="memId" id="memId" placeholder="아이디를 입력해주세요."&gt;
                    &lt;/label&gt;
                &lt;/dd&gt;

                &lt;dt&gt;비밀번호&lt;/dt&gt;
                &lt;dd&gt;
                    &lt;label&gt; class="input-text"&gt;
                        &lt;input type="password" name="memPw" id="memPw" placeholder="비밀번호를 입력해주세요."&gt;
                    &lt;/label&gt;
                &lt;/dd&gt;

            &lt;/dl&gt;
        &lt;/div&gt;

        &lt;div&gt; class="btn-area flex-area mt20"&gt;
            &lt;input type="submit" onclick="fnLogin();" class="btn btn-black btn-L" value="로그인"&gt;
        &lt;/div&gt;
    &lt;/form&gt;
&lt;/div&gt;

&lt;!-- S : script --&gt;
&lt;script&gt; type="text/javascript"&gt;
    $(function(){
        $('#loginForm').validate({
            debug: true, // submit X

            // 규직
            rules: {
                memId: {
                    required: true
                },
                memPw: {
                    required: true
                }
            },

            // 메시지
            messages: {
                memId: {
                    required: '아이디를 입력해주세요.'
                },
                memPw: {
                    required: '비밀번호를 입력해주세요.'
                }
            },

            // error 메시지 노출 제어
            errorElement: 'p',
            errorClass: 'error-msg',

            errorPlacement: function(error, element){
                error.appendTo( element.parents('dd') );
            },

            highlight: function(element, errorClass){
                $(element).parents('dd').addClass('error');
            },

            unhighlight: function(element, errorClass){
                $(element).parents('dd').removeClass('error');
            }
        });
    });
&lt;/script&gt;
&lt;!--// E : script --&gt;
                </code></pre>


                <h3 class="tit-dep4">error</h3>

                <div class="code-info">
                    error 페이지
                </div>

                <div class="code-preview">
                    <a href="/totalWebSite/sdijx/error.asp" class="txt-link" target="_blank">예시 페이지 보기</a>
                </div>
            </div>
            <!--// E : form -->

            <!-- S : error -->
            <div class="tab-content">
                <h3 class="tit-dep4">error</h3>

                <div class="code-info">
                    error 페이지
                </div>

                <div class="code-preview">
                    <a href="/totalWebSite/sdijx/error.asp" class="txt-link" target="_blank">예시 페이지 보기</a>
                </div>
            </div>
            <!--// E : error -->

            <!-- S : dialog(alert) -->
            <div class="tab-content">
                <h3 class="tit-dep4">alert</h3>

                <div class="code-info">
                    alert 사용 방법<br><br>

                    modalDialog.alert('메시지', function);
                </div>

                <div class="code-preview">
                    <a href="javascript:void(0);" onclick="modalDialog.alert('alert 창')" class="btn">alert</a>
                </div>
                
                <pre><code>
&lt;a href="javascript:void(0);" onclick="modalDialog.alert('alert 창', function(){ location.href='/' })" class="btn"&gt;알럿&lt;/a&gt;
                </code></pre>


                <h3 class="tit-dep4">confirm</h3>

                <div class="code-info">
                    confirm 사용 방법<br><br>

                    modalDialog.confirm('메시지', function);
                </div>

                <div class="code-preview">
                    <a href="javascript:void(0);" onclick="modalDialog.confirm('confirm 창')" class="btn">confirm</a>
                </div>
                
                <pre><code>
&lt;a href="javascript:void(0);" onclick="modalDialog.confirm('confirm 창', function(){ location.href='/' })" class="btn"&gt;confirm&lt;/a&gt;
                </code></pre>


                <h3 class="tit-dep4">loading</h3>

                <div class="code-info">
                    loading 사용 방법
                </div>

                <div class="code-preview">
                    <a href="//pub.sdij.com/totalWebSite/sdijx/loading.asp" class="txt-link" target="_blank">예시 페이지 보기</a>
                </div>
                
                <pre><code>
&lt;script&gt;&gt;
$(function(){
    // 로딩 오픈
    modalDialog.loading();

    // 로딩 닫을 때
    setTimeout('modalDialog.close()', 3000);
});
&lt;/script&gt;
                </code></pre>
            </div>
            <!--// E : dialog(alert) -->

            <!-- S : window open -->
            <div class="tab-content">
                <h3 class="tit-dep4">window open</h3>

                <div class="code-info">
                    <ul class="code-list">
                        <li>full html 페이지로 작업</li>
                        <li>css, script는 페이지 내에 기재</li>
                        <li>모바일에서는 100%로 맞춰져 보이게 작업</li>
                        <li>fnOpenWindow(url, title, 창 가로값(width), 창 세로값(height))</li>
                    </ul>
                </div>

                <div class="code-preview">
                    <a href="javascript:void(0)" class="txt-link" onclick="fnOpenWindow('/totalWebSite/sdijx/guide/layout/winlayout.asp', '윈도우 팝업', '400', '260');">예시 페이지 보기</a>
                </div>
                
                <pre><code>
&lt;a href="javascript:void(0)" class="txt-link" onclick="fnOpenWindow('/totalWebSite/sdijx/guide/layout/winlayout.asp', '윈도우 팝업', '400', '260');"&gt;예시 페이지 보기&lt;/a&gt;
                </code></pre>
            </div>
            <!--// E : window open -->

            <!-- S : isMobile -->
            <div class="tab-content">
                <h3 class="tit-dep4">isMobile 안내</h3>

                <div class="code-info">
                    원활한 반응혈 작업을 위해 script로 기기 구분이 필요할 경우 사용
                </div>

                <div class="code-preview">
                    <a href="javascript:void(0);" onclick="isMobileTest()" class="btn">isMobile test</a>

                    <script>
                        function isMobileTest(){
                            if( isMobile() ){
                                modalDialog.alert('mobile');
                            }else{
                                modalDialog.alert('pc');
                            }
                        }
                    </script>
                </div>
                
                <pre><code>
// 사용 시
function isMobileTest(){
    if( isMobile() ){
        modalDialog.alert('mobile');
    }else{
        modalDialog.alert('pc');
    }
}

// 스트립트 내용
function isMobile(){
	var UserAgent = navigator.userAgent,
		UserPlatform = window.navigator.platform, // window check
		macPlatforms = ['Macintosh', 'MacIntel', 'MacPPC', 'Mac68K'], // mac check
		touchPoints = navigator.maxTouchPoints; // touch point check

	if( UserAgent.match(/iPhone|iPod|iPad|Android|Windows CE|BlackBerry|Symbian|Windows Phone|webOS|Opera Mini|Opera Mobi|POLARIS|IEMobile|lgtelecom|nokia|SonyEricsson/i) !== null || UserAgent.match(/LG|SAMSUNG|Samsung/) !== null ){ // mobile
		return true;
		
	}else{ // pc
		if( macPlatforms.indexOf(UserPlatform) !== -1 ){ // mac os
			if( touchPoints > 0 ){ // ipad safari
				return true;
			}else{
				return false;
			}
		}else{ 
			return false;
		}
	}
}
                </code></pre>
            </div>
            <!--// E : isMobile -->

            <!-- S : modal -->
            <div class="tab-content">
                <h3 class="tit-dep4">modal</h3>

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
            <!--// E : modal -->

            <!-- S : popover -->
            <div class="tab-content">
                <h3 class="tit-dep4">popover</h3>

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
            <!--// E : popover -->
        </div>
        <!--// E : 컨텐츠 -->
    </section>
    <!--// E : container -->

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->