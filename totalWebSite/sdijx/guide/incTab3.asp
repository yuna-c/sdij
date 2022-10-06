<%
    'index.asp include file

    ''tab3 default
%>
<div class="tab-type2 border-none">
    <ul>
        <li class="selected"><a href="javascript:void(0);">css</a></li>
        <li><a href="javascript:void(0);">ico</a></li>
        <li><a href="javascript:void(0);">sticker</a></li>
        <li><a href="javascript:void(0);">title</a></li>
        <li><a href="javascript:void(0);">text</a></li>
    </ul>
</div>

<!-- S : css -->
<div class="tab-content tab-on">
    <h3 class="tit-dep4">float-area</h3>

    <div class="code-preview">
        <div class="float-area">
            <div class="fl">fl float-left : 왼쪽 정렬</div>
            <div class="fr">fr float-right : 오른쪽 정렬</div>
        </div>
    </div>

	<pre><code>
&lt;div class="float-area"&gt;
    &lt;div class="fl"&gt;fl float-left : 왼쪽 정렬&lt;/div&gt;
    &lt;div class="fr"&gt;fr float-right : 오른쪽 정렬&lt;/div&gt;
&lt;/div&gt;
	</code></pre>

    <h3 class="tit-dep4">position</h3>

    <div class="code-preview">
        <div class="relative">
            relative
            <div class="absolute">absolute</div>
        </div>
    </div>

	<pre><code>
&lt;div class="relative"&gt;
    relative
    &lt;div class="absolute"&gt;absolute&lt;/div&gt;
&lt;/div&gt;
	</code></pre>

    <h3 class="tit-dep4">flex-area</h3>

    <div class="code-preview">
        <div class="flex-area">
            <div>flex layout</div>
            <div>flex layout</div>
            <div>flex layout</div>
        </div>
    </div>

	<pre><code>
&lt;div class="flex-area"&gt;
    &lt;div&gt;flex layout&lt;/div&gt;
    &lt;div&gt;flex layout&lt;/div&gt;
    &lt;div&gt;flex layout&lt;/div&gt;
&lt;/div&gt;
	</code></pre>

    <h3 class="tit-dep4">margin</h3>

    <div class="code-info">
        <ul class="code-list">
            <li>margin top : 10, 20, 30, 40, 80px</li>
            <li>margin bottom : 0, 10, 20, 60, 70px</li>
            <li>그 외 필요할 경우 board.css 추가 후 사용</li>
        </ul>
    </div>
        
	<pre><code>
&lt;div class="mt10"&gt;mt10&lt;/div&gt;
&lt;div class="mb10"&gt;mb10&lt;/div&gt;
	</code></pre>

    <h3 class="tit-dep4">반응형</h3>
    <div class="code-info">
        <ul class="code-list">
            <li>class="rw-pc" : PC에서만 노출</li>
            <li>class="rw-ta" : tablet에서만 노출</li>
            <li>class="rw-mo" : mobile에서만 노출</li>
        </ul>
    </div>

	<pre><code>
&lt;div class="rw-pc"&gt; PC에서만 노출&lt;/div&gt;
&lt;div class="rw-ta"&gt; tablet에서만 노출&lt;/div&gt;
&lt;div class="rw-mo"&gt; mobile에서만 노출&lt;/div&gt;
	</code></pre>


    <h3 class="tit-dep4">etc</h3>

    <div class="code-info">
        <ul class="code-list">
            <li>class="blind" : 웹접근성을 위해 보조 텍스트 사용이 필요할 경우 사용, 웹 페이지내에서는 보이지 않음</li>
            <li>class="border-none" : border 속성이 있는 레이아웃, 디자인에 border를 없애고 싶을 때 사용</li>
            <li>class="bg-none" : background 속성이 있는 레이아웃, 디자인에 background를 없애고 싶을 때 사용</li>
            <li>class="block" : inline요소를 block 요소로 변경할때 사용</li>
        </ul>
    </div>

	<pre><code>
&lt;div class="blind"&gt;&lt;/div&gt;
&lt;div class="border-none"&gt;&lt;/div&gt;	
&lt;div class="bg-none"&gt;&lt;/div&gt;
&lt;span class="block"&gt;&lt;/span&gt;
	</code></pre>
</div>
<!--// E : css -->

<!-- S : ico -->
<div class="tab-content">
    <h3 class="tit-dep4">ico</h3>

    <div class="code-info">
        <ul class="code-list">
            <li>class="ico"를 기본으로 오는 형태, tag는 구조에 맞게 사용</li>
            <li>기능 모양에 따라 ico-기능 또는 모양 형태로 네이밍</li>
        </ul>
    </div>

    <div class="code-preview" style="background-color:#f2f2f2;">
        <span class="ico-down">더보기</span>
        <span class="ico-search">검색 바로가기</span>
        <span class="ico-fb">페이스북 바로가기</span>
        <span class="ico-inst">인스타그램 바로가기</span>
        <span class="ico-twit">트위터 바로가기</span>
        <span class="ico-ytb">유튜브 바로가기</span>
        <span class="ico-noti">경고</span>
        <span class="ico-next">다음</span>
        <span class="ico-next-w">다음</span>
        <span class="ico-prev">이전</span>
        <span class="ico-plus">더하기</span>
        <span class="ico-file">파일</span>
        <span class="ico-list">리스트</span>
        <span class="ico-ellipsis"></span>
        <span class="ico-check">체크</span>
        <span class="ico-lock">잠금</span>
        <span class="ico-clock">시계</span>
        <span class="ico-users">추천대상</span>
        <span class="ico-lightb">lightb</span>
        <span class="ico-lec">강의</span>
        <span class="ico-calender">캘린더</span>
        <span class="ico-noti2">경고</span>
        <span class="ico-cart">카트</span>
        <span class="ico-right">오른쪽</span>
        <span class="ico-left">왼쪽</span>
        <span class="ico-pin">pin</span>
        <span class="ico-phone">핸드폰</span>
        <span class="ico-page">페이지</span>
        <span class="ico-new">new</span>
        <span class="ico-close-g">닫기</span>
        <span class="ico-alert">경고창</span>
        <span class="ico-alert-p">경고창</span>
        <span class="ico-ci">시대인재</span>
        <span class="ico-ci-w">시대인재</span>
        <span class="ico-logo">시대인재</span>
        <span class="ico upload">업로드완료</span>
        <span class="ico-house">배송지</span>
    </div>

	<pre><code>
&lt;span class="ico-down"&gt;더보기&lt;/span&gt;
&lt;span class="ico-search"&gt;검색 바로가기&lt;/span&gt;
&lt;span class="ico-fb"&gt;페이스북 바로가기&lt;/span&gt;
&lt;span class="ico-inst"&gt;인스타그램 바로가기&lt;/span&gt;
&lt;span class="ico-twit"&gt;트위터 바로가기&lt;/span&gt;
&lt;span class="ico-ytb"&gt;유튜브 바로가기&lt;/span&gt;
&lt;span class="ico-noti"&gt;경고&lt;/span&gt;
&lt;span class="ico-next"&gt;다음&lt;/span&gt;
&lt;span class="ico-next-w&gt;다음&lt;/span&gt;
&lt;span class="ico-prev"&gt;이전&lt;/span&gt;
&lt;span class="ico-plus"&gt;더하기&lt;/span&gt;
&lt;span class="ico-file"&gt;파일&lt;/span&gt;
&lt;span class="ico-list"&gt;리스트&lt;/span&gt;
&lt;span class="ico-ellipsis"&gt;&lt;/span&gt;
&lt;span class="ico-check"&gt;체크&lt;/span&gt;
&lt;span class="ico-lock"&gt;잠금&lt;/span&gt;
&lt;span class="ico-clock"&gt;시계&lt;/span&gt;
&lt;span class="ico-users"&gt;추천대상&lt;/span&gt;
&lt;span class="ico-lightb"&gt;lightb&lt;/span&gt;
&lt;span class="ico-lec"&gt;강의&lt;/span&gt;
&lt;span class="ico-calender;&gt;캘린더&lt;/span&gt;
&lt;span class="ico-noti2"&gt;경고&lt;/span&gt;
&lt;span class="ico-cart"&gt;카트&lt;/span&gt;
&lt;span class="ico-right"&gt;오른쪽&lt;/span&gt;
&lt;span class="ico-left"&gt;왼쪽&lt;/span&gt;
&lt;span class="ico-pin"&gt;pin&lt;/span&gt;
&lt;span class="ico-phone"&gt;핸드폰&lt;/span&gt;
&lt;span class="ico-page"&gt;페이지&lt;/span&gt;
&lt;span class="ico-new"&gt;new&lt;/span&gt;
&lt;span class="ico-close-g"&gt;닫기&lt;/span&gt;
&lt;span class="ico-alert"&gt;경고창&lt;/span&gt;
&lt;span class="ico-alert-p"&gt;경고창&lt;/span&gt;
&lt;span class="ico-ci"&gt;시대인재&lt;/span&gt;
&lt;span class="ico-ci-w"&gt;시대인재&lt;/span&gt;
&lt;span class="ico-logo"&gt;시대인재&lt;/span&gt;
&lt;span class="ico upload"&gt;업로드완료&lt;/span&gt;
&lt;span class="ico-house"&gt;배송지&lt;/span&gt;
	</code></pre>
</div>
<!--// E : ico -->

<!-- S : sticker -->
<div class="tab-content">
    <h3 class="tit-dep4">sticker</h3>

    <div class="code-preview">
        <span class="sticker-yellow">sticker-yellow</span>
        <span class="sticker-red">sticker-red</span>
        <span class="sticker-gray">sticker-gray</span>
    </div>

	<pre><code>
&lt;span class="sticker-yellow"&gt;sticker-yellow&lt;/span&gt;
&lt;span class="sticker-red"&gt;sticker-red&lt;/span&gt;
&lt;span class="sticker-gray"&gt;sticker-gray&lt;/span&gt;
	</code></pre>
</div>
<!--// E : sticker -->

<!-- S : title -->
<div class="tab-content">
    <h3 class="tit-dep4">기본 타이틀</h3>

    <div class="code-preview">
        <h2 class="tit-dep1">
            dep1 타이틀
            <small>dep1 서브텍스트</small>
        </h2>

        <h3 class="tit-dep2">
            dep2 타이틀
            <small>dep2 서브텍스트</small>
        </h3>

        <h4 class="tit-dep4">dep4 타이틀</h4>
        <h5 class="tit-dep5">dep5 타이틀</h5>
    </div>

	<pre><code>
&lt;h2 class="tit-dep1"&gt;
    dep1 타이틀
    &lt;small&gt;dep1 서브텍스트&lt;/small&gt;
&lt;/h2&gt;

&lt;h3 class="tit-dep2"&gt;
    dep2 타이틀
    &lt;small&gt;dep2 서브텍스트&lt;/small&gt;
&lt;/h3&gt;

&lt;h4 class="tit-dep4"&gt;dep4 타이틀&lt;/h4&gt;
&lt;h5 class="tit-dep5"&gt;dep5 타이틀&lt;/h5&gt;
	</code></pre>

    <h3 class="tit-dep4">디자인 + 기능 타이틀</h3>

    <div class="code-info">
        <ul class="code-list">
            <li>(모든 타이틀) 텍스트를 class="tit"로 감싸면 밑줄 그려짐</li>
            <li>(모든 타이틀) 사이드에 요소가 있을 경우 전체를 tit-area로 감싼 후 사이드에 들어가는 요소에 tit-side 기입</li>
            <li>(dep1 타이틀에 경우) 등록된 게시글 수는 &lt;span class="sub"&gt;123&lt;/span&gt;으로 표현</li>
            <li>(dep1 타이틀에 경우) 사이드에 버튼이 있는 경우가 있어 그럴 경우 class="btn-side"</li>
        </ul>
    </div>

    <div class="code-preview">
        <h2 class="tit-dep1">
            <span class="tit">
                dep1 타이틀
                <span class="sub">123</span>
            </span>

            <a href="#" class="btn-cir btn-L btn-black btn-side"><i class="ico-plus-w">글쓰기 버튼</i></a>
        </h2>

        <div class="tit-area">
            <h3 class="tit-dep2">
                <span class="tit">dep2 타이틀</span>
            </h3>

            <div class="tit-side">
                <label class="select select-sort">
                    <select id="" name="">
                        <option hidden="" disabled="" selected="">선택</option>
                        <option>선택값1</option>
                        <option>선택값2</option>
                    </select>
                </label>
            </div>
        </div>

        <div class="tit-area">
            <h4 class="tit-dep4">
                <span class="tit">dep4 타이틀</span>
            </h4>

            <div class="tit-side btn-area">
                <a href="javascript:void(0);" class="btn btn-M">버튼</a>
            </div>
        </div>
        
        <h5 class="tit-dep5">
            <span class="tit">dep5 타이틀</span>
        </h5>
    </div>

	<pre><code>
&lt;h2 class="tit-dep1"&gt;
    &lt;span class="tit"&gt;
        dep1 타이틀
        &lt;span&gt; class="sub"&gt;123&lt;/span&gt;
    &lt;/span&gt;

    &lt;a href="#" class="btn-cir btn-L btn-black btn-side"&gt;&lt;i&gt; class="ico-plus-w"&gt;글쓰기 버튼&lt;/i&gt;&lt;/a&gt;
&lt;/h2&gt;

&lt;div class="tit-area"&gt;
    &lt;h3 class="tit-dep2"&gt;
        &lt;span&gt; class="tit"&gt;dep2 타이틀&lt;/span&gt;
    &lt;/h3&gt;

    &lt;div class="tit-side"&gt;
        &lt;label class="select select-sort"&gt;
            &lt;select id="" name=""&gt;
                &lt;option&gt; hidden="" disabled="" selected=""&gt;선택&lt;/option&gt;
                &lt;option&gt;선택값1&lt;/option&gt;
                &lt;option&gt;선택값2&lt;/option&gt;
            &lt;/select&gt;
        &lt;/label&gt;
    &lt;/div&gt;
&lt;/div&gt;

&lt;div class="tit-area"&gt;
    &lt;h4 class="tit-dep4"&gt;
        &lt;span&gt; class="tit"&gt;dep4 타이틀&lt;/span&gt;
    &lt;/h4&gt;

    &lt;div class="tit-side btn-area"&gt;
        &lt;a&gt; href="javascript:void(0);" class="btn btn-M"&gt;버튼&lt;/a&gt;
    &lt;/div&gt;
&lt;/div&gt;

&lt;h5 class="tit-dep5"&gt;
    &lt;span&gt; class="tit"&gt;dep5 타이틀&lt;/span&gt;
&lt;/h5&gt;
	</code></pre>
</div>
<!--// E : title -->

<!-- S : text -->
<div class="tab-content">
    <h3 class="tit-dep4">text</h3>

    <div class="code-preview">
        <p class="txt-line">밑줄 텍스트</p>
        <a href="#" class="txt-link">링크 텍스트</a>
        <p class="txt-info">안내 텍스트<i class="ico-alert">!</i></p><br>
        <p class="strong">글씨 굵게</p>
    </div>

	<pre><code>
&lt;p class="txt-line"&gt;밑줄 텍스트&lt;/p&gt;
&lt;a href="#" class="txt-link"&gt;링크 텍스트&lt;/a&gt;
&lt;p class="txt-info"&gt;안내 텍스트&lt;i class="ico-alert"&gt;!&lt;/i&gt;&lt;/p&gt;&lt;br&gt;
&lt;p class="strong"&gt;글씨 굵게&lt;/p&gt;
	</code></pre>

    <h3 class="tit-dep4">text color</h3>

    <div class="code-preview">
        <p class="color-black">color-black</p>
        <p class="color-green">color-green</p>
        <p class="color-gray">color-gray</p>
        <p class="color-red">color-red</p>	
    </div>

	<pre><code>
&lt;p class="color-black"&gt;color-black&lt;/p&gt;
&lt;p class="color-green"&gt;color-green&lt;/p&gt;
&lt;p class="color-gray"&gt;color-gray&lt;/p&gt;
&lt;p class="color-red"&gt;color-red&lt;/p&gt;	
	</code></pre>

    <h3 class="tit-dep4">text-align</h3>

    <div class="code-preview">
        <div class="txt-left">왼쪽 정렬</div>
        <div class="txt-center">가운데 정렬</div>
        <div class="txt-right">오른쪽 정렬</div>
    </div>

	<pre><code>
&lt;div class="txt-left"&gt;왼쪽 정렬&lt;/div&gt;
&lt;div class="txt-center"&gt;가운데 정렬&lt;/div&gt;
&lt;div class="txt-right"&gt;오른쪽 정렬&lt;/div&gt;
	</code></pre>
</div>
<!--// E : text -->