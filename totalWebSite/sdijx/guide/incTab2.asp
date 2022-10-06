<%
    'index.asp include file

    ''tab2 기본 레이아웃
%>
<div class="tab-type2 border-none">
    <ul>
        <li class="selected"><a href="javascript:void(0);">layout</a></li>
        <li><a href="javascript:void(0);">landing</a></li>
        <li><a href="javascript:void(0);">popup</a></li>
    </ul>
</div>

<!-- S : layout -->
<div class="tab-content tab-on">
    <h3 class="tit-dep4">layout</h3>

    <div class="code-info">
        신규 페이지 작업시 작성 규칙

        <ul class="code-list">
            <li>header, footer 및 기본 구조 include 후 id="container" 안에 내용만 기입</li>
            <li>최상위 폴더 네이밍으로 /common/css/ 폴더에 별도로 css 파일 생성 후 스타일 기재</li>
            <li>공통 css(reset.css, layout.css, board.css)파일에 경우<br><span class="color-red">사이트 전체적으로 수정이 필요한 경우에만 수정가능</span>하며, 반응형 css는 rw폴더 내에 동일 파일명으로 기재해둠</li>
            <li>그 외에 반응형 css에 경우 기존 파일 하단에 작성</li>
            <li>각 페이지 내에 lnb menu가 존재할 경우 2가지 lnb로 작업 진행</li>
        </ul>
    </div>

    <pre><code>
    ex) 멤버 관련 페이지 작성 시

    /member/ 폴더 내에 html 소스 작성
    /common/css/member.css 파일 내에 css 소스 작성 / 반응형 소스도 동일한 파일에 기재

    /** Tablets **/
    @media (max-width:1024px) and (orientation:portrait), (max-width:1336px) and (orientation:landscape){
    }

    /** mobiles **/
    @media (max-width:539px) and (orientation:portrait), (max-width:959px) and (orientation:landscape){
    }

    /** mobiles xs **/
    @media (max-width:320px) and (orientation:portrait){
        
    }
    </code></pre>

    <div class="code-info mt10">
        전체 사이트 레이아웃<br>
        <span class="color-red">(하단 파일 수정 금지)</span>

        <ul class="code-list">
            <li><a href="../layout.asp" class="txt-link" target="_black">기본 페이지 레이아웃 보기</a></li>
            <li><a href="layout/form.asp" class="txt-link" target="_black">form 페이지 레이아웃 보기</a></li>
            <li><a href="layout/end.asp" class="txt-link" target="_black">end 페이지 레이아웃 보기</a></li>
            <li><a href="layout/lnbType1.asp" class="txt-link" target="_black">lnbType1 페이지 레이아웃 보기</a></li>
            <li><a href="layout/lnbType2.asp" class="txt-link" target="_black">lnbType2 페이지 레이아웃 보기</a></li>
        </ul>
    </div>
</div>
<!--// E : layout -->

<!-- S : landing -->
<div class="tab-content">
    <h3 class="tit-dep4">landing</h3>

    <div class="code-info">
        이벤트, 상품 관련 랜딩 페이지 작업 시 작성 규칙

        <ul class="code-list">
            <li>landing/YYMM/WORK번호/index.asp 형식으로 파일 생성</li>
            <li>work번호에 경우 업무에 고유 부여된 number(//work.sdij.kr/)</li>
            <li>css, js파일 : 해당 폴더 내부에 index.css / index.js 파일 생성 후 작업 진행<br>(필요하지 않을 경우 생략 가능)</li>
            <li>img파일 : img.sdij.com/sdijx/landing 폴더내에 동일한 형식으로 폴더 생성 후 업로드</li>
            
            <li class="mt10"><a href="../landing/YYMM/WORK/index.asp" class="txt-link" target="_black">랜딩 페이지 레이아웃 보기</a></li>
        </ul>
    </div>

    <pre><code>
    ex) 2020년 10월에 131번 업무라면

    landing/2010/131/ 폴더 생성 후
    index.asp
    index.css
    index.js

    파일 생성 후 작업 진행

    이미지 파일에 경우 동일 경로로
    //img.sdij.com/landing/2010/131/ 폴더 생성 후 업로드
    </code></pre>
</div>
<!--// E : landing -->

<!-- S : popup -->
<div class="tab-content">
    <h3 class="tit-dep4">window popup, dialog(alert), modal, popover</h3>

    <div class="code-info">
        script 가이드 참고

        <ul class="code-list">
            <li><a href="script.asp" class="txt-link" target="_black">script 가이드 바로가기</a></li>
        </ul>
    </div>
</div>
<!--// E : popup -->