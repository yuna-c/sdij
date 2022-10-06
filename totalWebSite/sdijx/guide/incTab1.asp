<%
    'index.asp include file

    ''tab1 기본규칙
%>
<h3 class="tit-dep4">기본규칙</h3>

<div class="code-info">
    <ul class="code-list">
        <li>HTML5 / css3</li>
        <li>지원 브라우저 : ie9이상, 크롬 , 파이어폭스 최신 버전</li>
        <li>인코딩 : UTF-8</li>
        <li>네이밍 규칙 : 소문자로 기입, -(하이픈)으로 사용</li>
        <li>이미지 네이밍 규칙 : 소문자로 기입, _(언더바)으로 사용</li>
    </ul>
</div>

<h3 class="tit-dep4">HTML작성 규칙</h3>

<div class="code-info">
    <ul class="code-list">
        <li>주석 : S와 E로 시작과 끝을 기재</li>
        <li>img, input 등 단일 태그는 '/' 마침 표시를 사용하지 않는다.</li>
    </ul>
</div>

<pre><code>
&lt;!-- S : 구분 --&gt;
&lt;div&gt;내용&lt;/div&gt;
&lt;!--// E : 구분 --&gt;
</code></pre>

<h3 class="tit-dep4">CSS작성 규칙</h3>

<div class="code-info">
    <ul class="code-list">
        <li>모든 속성은 영문 소문자로 한 줄로 기입한다.</li>
        <li>중괄호 좌우 공백 기입 후 css 작성</li>
        <li>반복되는 색상 값은 축약하여 사용(#fffff → #fff)</li>
        <li>background 위치은 left, enter 문자식으로 표기하기 보다는 0, 50% 숫자식으로 표기한다.</li>
    </ul>
</div>

<h3 class="tit-dep4">속성 기재 순서</h3>

<div class="code-info">
    <ul class="code-list">
        <li>width, height</li>
        <li>margin, padding</li>
        <li>display</li>
        <li>float</li>
        <li>position, top, left, right, bottom</li>
        <li>background, border</li>
        <li>font, color, letter-spacing, white-space</li>
        <li>text-align, vertical-align, text-decoration, text-indent</li>
        <li>overflow</li>
        <li>z-index</li>
        <li>나머지 속성들</li>
    </ul>
</div>