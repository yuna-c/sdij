<%
    'index.asp include file

    ''tab4 form
%>

<div class="tab-type2 border-none">
    <ul>
        <li class="selected"><a href="javascript:void(0);">form</a></li>
        <li><a href="javascript:void(0);">btn</a></li>
        <li><a href="javascript:void(0);">input</a></li>
        <li><a href="javascript:void(0);">select</a></li>
        <li><a href="javascript:void(0);">textarea</a></li>
    </ul>
</div>

<!-- S : form -->
<div class="tab-content tab-on">
    <h3 class="tit-dep4">form</h3>

    <div class="code-info">
        기본 페이지 레이아웃
        <ul class="code-list">
            <li>페이지 구조 : <a href="layout/form.asp" class="txt-link" target="_black">form 페이지 레이아웃 보기</a></li>
        </ul>


        validate 사용법
        <ul class="code-list">
            <li><a href="https://jqueryvalidation.org/?__cf_chl_jschl_tk__=b8ecb981f76baa279c73bba61540cf32d79b768a-1603257764-0-AQbYfl3AToGRHvv_aPLUH-xTtz36dUnRnnZUBsx1u5m7pDmTkwpl89R6_lCTYSo4wnmsWH4U9HwDSn0Di6_oxbL4J64sQK9rGz9XC9OYVoRN1Nw-c6SUZsmkobvoiHr6Ub66SVsk2OVYAntP41Qms7JivSOnZ3ah3jd2pQCsEKU-6PemA0b_aRvHqha4torgEy5hNhJpbmobRQxA9C7EJKfVxi9HMDpx_yWdXGIS4ql-QaMHIQOs0mevgYPXJevqx_XB4b1L3QXZDG3X1_X46gg" target="_blank" class="txt-link">jquery.validate.js</a></li>
            <li>사용 페이지에 js파일 연결 후 사용</li>
        </ul>
    </div>

    <div class="code-preview">
        <script type="text/javascript" src="/common/js/lib/jquery.validate.js"></script>

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
&lt;script type="text/javascript" src="/common/js/lib/jquery.validate.js"&gt;&lt;/script&gt;

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

	 <h3 class="tit-dep4">row</h3>

    <div class="code-info">

        <ul class="code-list">
            <li>form-type1 요소 안에서 칸을 구분 지어야 할 때 사용</li>
        </ul>
    </div>

	<div class="code-preview">
		<div class="form-type1">
			<dl>
				<dt>col-25</dt>
				<dd class="row">
					<span class="col-25">
						<label class="input-text">
							<input type="text" placeholder="예시사용">
						</label>
					</span>
				</dd>
				<dt>col-40</dt>
				<dd class="row">
					<span class="col-40">
						<label class="input-text">
							<input type="text" placeholder="예시사용">
						</label>
					</span>
				</dd>
				<dt>col-60</dt>
				<dd class="row">
					<span class="col-60">
						<label class="input-text">
							<input type="text" placeholder="예시사용">
						</label>
					</span>
				</dd>
			    <dt>col-75</dt>
				<dd class="row">
					<span class="col-75">
						<label class="input-text">
							<input type="text" placeholder="예시사용">
						</label>
					</span>
				</dd>
			</dl>
		</div>
	</div>

	<pre><code>
&lt;div class="form-type1"&gt;
    &lt;dl&gt;
        &lt;dt&gt;col-25&lt;/dt&gt;
        &lt;dd class="row"&gt;
            &lt;span class="col-25"&gt;
                &lt;label class="input-text"&gt;
                    &lt;input type="text" name="" id="" placeholder=""&gt;
                &lt;/label&gt;
            &lt;/span&gt;
        &lt;/dd&gt;
        &lt;dt&gt;col-40&lt;/dt&gt;
        &lt;dd class="row"&gt;
            &lt;span class="col-40"&gt;
                &lt;label class="input-text"&gt;
                    &lt;input type="text" name="" id="" placeholder=""&gt;
                &lt;/label&gt;
            &lt;/span&gt;
        &lt;/dd&gt;
        &lt;dt&gt;col-60&lt;/dt&gt;
        &lt;dd class="row"&gt;
            &lt;span class="col-60"&gt;
                &lt;label class="input-text"&gt;
                    &lt;input type="text" name="" id="" placeholder=""&gt;
                &lt;/label&gt;
            &lt;/span&gt;
        &lt;/dd&gt;
        &lt;dt&gt;col-75&lt;/dt&gt;
        &lt;dd class="row"&gt;
            &lt;span class="col-75"&gt;
                &lt;label class="input-text"&gt;
                    &lt;input type="text" name="" id="" placeholder=""&gt;
                &lt;/label&gt;
            &lt;/span&gt;
        &lt;/dd&gt;
    &lt;/dl&gt;
&lt;/div&gt;
	</code></pre>
</div>
<!--// E : form -->

<!-- S : btn -->
<div class="tab-content">
    <h3 class="tit-dep4">btn</h3>

    <div class="code-info">
        <ul class="code-list">
            <li>일반적인 버튼은 btn</li>
            <li>아이콘이 함께 있는 버튼은 btn-ico</li>
            <li>아이콘만 있는 동그란버튼은 btn-cir</li>

            <li class="mt10">(btn-ico 제외) size, color별로 class 추가하여 사용가능</li>
            <li class="mt10">버튼 모양이지만 click이 불가하면 class="btn-disabled"</li>
        </ul>
    </div>

    <div class="code-preview">
        <button type="button" class="btn">btn</button>
        <button type="button" class="btn btn-M">btn-M</button>
        <button type="button" class="btn btn-L">btn-L</button><br><br>
        
        <a href="javascript:void(0);" class="btn-ico"><i class="ico-list"></i> 아이콘이 있는 버튼</a><br><br>

        <a href="javascript:void(0);" class="btn-cir"><i class="ico-down">리스트 더보기</i></a>
        <a href="javascript:void(0);" class="btn-cir btn-S"><i class="ico-down">리스트 더보기</i></a>
        <a href="javascript:void(0);" class="btn-cir btn-M"><i class="ico-down">리스트 더보기</i></a>
        <a href="javascript:void(0);" class="btn-cir btn-L"><i class="ico-down">리스트 더보기</i></a><br><br>

        <button type="button" class="btn btn-black">btn-black</button>
        <button type="button" class="btn btn-gray">btn-gray</button>
        <button type="button" class="btn btn-green">btn-green</button>
        <button type="button" class="btn btn-disabled" onclick="return false;">btn-disabled</button><br><br>       
    </div>

	<pre><code>
&lt;button type="button" class="btn"&gt;btn&lt;/button&gt;
&lt;button type="button" class="btn btn-M"&gt;btn-M&lt;/button&gt;
&lt;button type="button" class="btn btn-L"&gt;btn-L&lt;/button&gt;

&lt;a href="javascript:void(0);" class="btn-ico"&gt;&lt;i class="ico-list"&gt;&lt;/i&gt; 아이콘이 있는 버튼&lt;/a&gt;

&lt;a href="javascript:void(0);" class="btn-cir"&gt;&lt;i class="ico-down"&gt;리스트 더보기&lt;/i&gt;&lt;/a&gt;
&lt;a href="javascript:void(0);" class="btn-cir btn-S"&gt;&lt;i class="ico-down"&gt;리스트 더보기&lt;/i&gt;&lt;/a&gt;
&lt;a href="javascript:void(0);" class="btn-cir btn-M"&gt;&lt;i class="ico-down"&gt;리스트 더보기&lt;/i&gt;&lt;/a&gt;
&lt;a href="javascript:void(0);" class="btn-cir btn-L"&gt;&lt;i class="ico-down"&gt;리스트 더보기&lt;/i&gt;&lt;/a&gt;

&lt;button type="button" class="btn btn-black"&gt;btn-black&lt;/button&gt;
&lt;button type="button" class="btn btn-gray"&gt;btn-gray&lt;/button&gt;
&lt;button type="button" class="btn btn-green"&gt;btn-green&lt;/button&gt;
&lt;button type="button" class="btn btn-disabled" onclick="return false;"&gt;btn-disabled&lt;/button&gt;
	</code></pre>
</div>
<!--// E : btn -->

<!-- S : input -->
<div class="tab-content">
    <h3 class="tit-dep4">input</h3>

    <div class="code-info">
        checkbox, radio, toggle-radio, date
    </div>

    <div class="code-preview">
        <label class="input-checkbox">
            <input type="checkbox">
            <i class="ico-checkbox"></i>
            checkbox
        </label>

        <label class="input-radio">
            <input type="radio">
            <i class="ico-radio"></i>
            radio
        </label>

        <br><br>

        <div class="form-toggle">
            <label class="toggle-radio">
                <input type="radio" id="toggle1" name="toggle" checked>
                <span>신용카드</span>
            </label>
            <label class="toggle-radio">
                <input type="radio" id="toggle2" name="toggle">
                <span>계좌이체</span>
            </label>
        </div>

        <br>

        <label class="input-date">
            <input type="text" readonly>
        </label>
    </div>
    
	<pre><code>
&lt;label class="input-checkbox"&gt;
    &lt;input type="checkbox"&gt;
    &lt;i class="ico-checkbox"&gt;&lt;/i&gt;
    checkbox
&lt;/label&gt;

&lt;label class="input-radio"&gt;
    &lt;input type="radio"&gt;
    &lt;i class="ico-radio"&gt;&lt;/i&gt;
    radio
&lt;/label&gt;


&lt;div class="form-toggle"&gt;
    &lt;label class="toggle-radio"&gt;
        &lt;input type="radio" id="toggle1" name="toggle" checked&gt;
        &lt;span&gt;신용카드&lt;/span&gt;
    &lt;/label&gt;
    &lt;label class="toggle-radio"&gt;
        &lt;input type="radio" id="toggle2" name="toggle"&gt;
        &lt;span&gt;계좌이체&lt;/span&gt;
    &lt;/label&gt;
&lt;/div&gt;

&lt;label class="input-date"&gt;
	&lt;input type="text" readonly&gt;
&lt;/label&gt;
	</code></pre>

    <div class="code-info mt40">
        text
    </div>

    <div class="code-preview">
        <label class="input-text">
            <input type="text" name="" id="" placeholder="input">
        </label>

        <br><br>

        <label class="input-text">
            <input type="text" name="" id="" value="readonly" readonly>
        </label>

        <br><br>

        <label class="input-text">
            <input type="text" name="" id="" value="disabled" disabled>
        </label>

        <br><br>

        <label class="input-text input-ico">
            <i class="ico-clock"></i>

            <input type="text" name="" id="" placeholder="ico input">
        </label>
        
        <br><br>

        <label class="input-search">
            <input type="text" id="" name="" placeholder="검색어를 입력해주세요.">
        </label>
    </div>

	<pre><code>
&lt;label class="input-text"&gt;
    &lt;input type="text" name="" id="" placeholder="input"&gt;
&lt;/label&gt;

&lt;label class="input-text"&gt;
    &lt;input type="text" name="" id="" value="readonly" readonly&gt;
&lt;/label&gt;

&lt;label class="input-text"&gt;
    &lt;input type="text" name="" id="" value="disabled" disabled&gt;
&lt;/label&gt;

&lt;label class="input-text input-ico"&gt;
    &lt;i class="ico-clock"&gt;&lt;/i&gt;

    &lt;input type="text" name="" id="" placeholder="ico input"&gt;
&lt;/label&gt;

&lt;label class="input-search"&gt;
    &lt;input type="text" id="" name="" placeholder="검색어를 입력해주세요."&gt;
&lt;/label&gt;
	</code></pre>
</div>
<!--// E : input -->

<!-- S : select -->
<div class="tab-content">
    <h3 class="tit-dep4">select</h3>

    <div class="code-info">
        기본 select
    </div>

    <div class="code-preview">
        <label class="select">
            <select name="" id="">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
            </select>
        </label>
    </div>
    
	<pre><code>
&lt;label class="select"&gt;
    &lt;select name="" id=""&gt;
        &lt;option value="1"&gt;1&lt;/option&gt;
        &lt;option value="2"&gt;2&lt;/option&gt;
        &lt;option value="3"&gt;3&lt;/option&gt;
    &lt;/select&gt;
&lt;/label&gt;
	</code></pre>

    <div class="code-info mt40">
        sort select<br>리스트 정렬에 사용
    </div>

    <div class="code-preview">
        <label class="select select-sort">
            <select id="" name="">
                <option hidden="" disabled="" selected="">선택</option>
                <option>선택값1</option>
                <option>선택값2</option>
            </select>
        </label>
    </div>

	<pre><code>    
&lt;label class="select select-sort"&gt;
    &lt;select id="" name=""&gt;
        &lt;option&gt; hidden="" disabled="" selected=""&gt;선택&lt;/option&gt;
        &lt;option&gt;선택값1&lt;/option&gt;
        &lt;option&gt;선택값2&lt;/option&gt;
    &lt;/select&gt;
&lt;/label&gt;
	</code></pre>
</div>
<!--// E : select -->

<!-- S : textarea -->
<div class="tab-content">
    <h3 class="tit-dep4">textarea</h3>

    <div class="code-info">
        기본 textarea
    </div>

    <div class="code-preview">
        <div class="textarea">
            <textarea name="" id="" placeholder="내용을 입력해주세요."></textarea>
        </div>
    </div>
    
	<pre><code>
&lt;div class="textarea"&gt;
    &lt;textarea name="" id="" placeholder="내용을 입력해주세요."&gt;&lt;/textarea&gt;
&lt;/div&gt;
	</code></pre>
</div>
<!--// E : textarea -->