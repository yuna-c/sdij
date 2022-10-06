<%
    'index.asp include file

    ''tab6 list
%>

<div class="tab-type2 border-none">
    <ul>
        <li class="selected"><a href="javascript:void(0);">card</a></li>
		<li><a href="javascript:void(0);">index</a></li>
        <li><a href="javascript:void(0);">toggle</a></li>
    </ul>
</div>

<!-- S : card -->
<div class="tab-content tab-on">
    <h3 class="tit-dep4">기본 강좌(카드형) 리스트</h3>

    <div class="code-info">
        <ul class="code-list">
            <li>wide-layout에 주로 사용(1240px)</li>
            <li>기본 강좌 리스트는 4 x 3 총 12개 카드 노출 이 후 더보기 버튼 클릭 시 노출</li>
            <li>리스트와 리스트 더보기 버튼 함께 사용</li>
        </ul>
    </div>

    <div class="code-preview">
        <div class="list-card">
            <ul>
                <% for i = 1 to 12 %>
                <li>
                    <a href="javascript:void(0)" onclick="fnOpenModal('.modal-cart');" class="btn-ico btn-plus"><i class="ico-plus">장바구니 담기</i></a>
        
                    <a href="/lecture/view.asp">
                        <div class="hash-area">
                        <% if i = 3 then '완강일 경우 %>
                            <span class="sticker-red">LIVE</span>
                        <% else %>
                            <span class="sticker-yellow">완강</span>
                        <% end if %>
                            <span>토</span>
                            <span>10:00 ~ 12:00</span>
                        </div>
        
                        <div class="tit-area">국어 서바이벌 정규과정 국어 서바이벌 정규과정 국어 서바이벌 정규과정</div>
                        <div class="txt-area">수학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를 높이는데 중학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 점을 둡니다.</div>
        
                        <div class="info-area">
                            <p>김은영 선생님</p>
        
                            <p class="color-gray">
                                <span>수강기간 23일</span>
                            <% if i = 3 then '완강일 경우 %>
                                <span>52강 완강</span>
                            <% else %>
                                <span>완강예정일 2020/01/01</span>
                            <% end if %>
                            </p>
        
                            <span class="btn-cir btn-black btn-link"><i class="ico-next-w"></i></span>
                        </div>
                    </a>
                </li>
                <% next %>
            </ul>
        </div>

        <div class="btn-area txt-center">
            <a href="javascript:void(0)" class="btn-cir btn-L btn-more"><i class="ico-down">리스트 더보기</i></a>
        </div>
    </div>
                
	<pre><code>
&lt;div class="list-card"&gt;
    &lt;ul&gt;
        &lt;li&gt;
            &lt;a href="javascript:void(0)" onclick="fnOpenModal('.modal-cart');" class="btn-ico btn-plus"&gt;&lt;i class="ico-plus"&gt;장바구니 담기&lt;/i&gt;&lt;/a&gt;

            &lt;a href="/lecture/view.asp"&gt;
                &lt;div class="hash-area"&gt;
                    &lt;span class="sticker-red"&gt;LIVE&lt;/span&gt;
                    &lt;span&gt;토&lt;/span&gt;
                    &lt;span&gt;10:00 ~ 12:00&lt;/span&gt;
                &lt;/div&gt;

                &lt;div class="tit-area"&gt;국어 서바이벌 정규과정 국어 서바이벌 정규과정 국어 서바이벌 정규과정&lt;/div&gt;
                &lt;div class="txt-area"&gt;수학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를 높이는데 중학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 점을 둡니다.&lt;/div&gt;

                &lt;div class="info-area"&gt;
                    &lt;p&gt;김은영 선생님&lt;/p&gt;

                    &lt;p class="color-gray"&gt;
                        &lt;span&gt;수강기간 23일&lt;/span&gt;
                        &lt;span&gt;완강예정일 2020/01/01&lt;/span&gt;
                    &lt;/p&gt;

                    &lt;span class="btn-cir btn-black btn-link"&gt;&lt;i class="ico-next-w"&gt;&lt;/i&gt;&lt;/span&gt;
                &lt;/div&gt;
            &lt;/a&gt;
        &lt;/li&gt;
        &lt;li&gt;
            &lt;a href="javascript:void(0)" onclick="fnOpenModal('.modal-cart');" class="btn-ico btn-plus"&gt;&lt;i class="ico-plus"&gt;장바구니 담기&lt;/i&gt;&lt;/a&gt;

            &lt;a href="/lecture/view.asp"&gt;
                &lt;div class="hash-area"&gt;
                    &lt;span class="sticker-yellow"&gt;완강&lt;/span&gt;&lt;!-- 완강일 경우 --&gt;
                    &lt;span&gt;토&lt;/span&gt;
                    &lt;span&gt;10:00 ~ 12:00&lt;/span&gt;
                &lt;/div&gt;

                &lt;div class="tit-area"&gt;국어 서바이벌 정규과정 국어 서바이벌 정규과정 국어 서바이벌 정규과정&lt;/div&gt;
                &lt;div class="txt-area"&gt;수학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를 높이는데 중학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 점을 둡니다.&lt;/div&gt;

                &lt;div class="info-area"&gt;
                    &lt;p&gt;김은영 선생님&lt;/p&gt;

                    &lt;p class="color-gray"&gt;
                        &lt;span&gt;수강기간 23일&lt;/span&gt;
                        &lt;span&gt;52강 완강&lt;/span&gt;&lt;!-- 완강일 경우 --&gt;
                    &lt;/p&gt;

                    &lt;span class="btn-cir btn-black btn-link"&gt;&lt;i class="ico-next-w"&gt;&lt;/i&gt;&lt;/span&gt;
                &lt;/div&gt;
            &lt;/a&gt;
        &lt;/li&gt;
    &lt;/ul&gt;
&lt;/div&gt;

&lt;div class="btn-area txt-center"&gt;
    &lt;a href="javascript:void(0)" class="btn-cir btn-L btn-more"&gt;&lt;i class="ico-down"&gt;리스트 더보기&lt;/i&gt;&lt;/a&gt;
&lt;/div&gt;
	</code></pre>


    <h3 class="tit-dep4">2 x 6 강좌(카드형) 리스트</h3>

    <div class="code-info">
        <ul class="code-list">
            <li>2 x 6 총 12개 카드 노출은 class col-50 추가</li>
            <li>마이페이지 &gt; 내강좌 / 선생님 &gt; 개설강좌 페이지에서 사용</li>
            <li>리스트와 리스트 더보기 버튼 함께 사용</li>
        </ul>
    </div>

    <div class="code-preview">
        <div class="list-card col-50">
            <ul>
                <% for i = 1 to 12 %>
                <li>
                    <a href="javascript:void(0)" onclick="fnOpenModal('.modal-cart');" class="btn-ico btn-plus"><i class="ico-plus">장바구니 담기</i></a>
        
                    <a href="/lecture/view.asp">
                        <div class="hash-area">
                        <% if i = 3 then '완강일 경우 %>
                            <span class="sticker-red">LIVE</span>
                        <% else %>
                            <span class="sticker-yellow">완강</span>
                        <% end if %>
                            <span>토</span>
                            <span>10:00 ~ 12:00</span>
                        </div>
        
                        <div class="tit-area">국어 서바이벌 정규과정 국어 서바이벌 정규과정 국어 서바이벌 정규과정</div>
                        <div class="txt-area">수학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를 높이는데 중학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 점을 둡니다.</div>
        
                        <div class="info-area">
                            <p>김은영 선생님</p>
        
                            <p class="color-gray">
                                <span>수강기간 23일</span>
                            <% if i = 3 then '완강일 경우 %>
                                <span>52강 완강</span>
                            <% else %>
                                <span>완강예정일 2020/01/01</span>
                            <% end if %>
                            </p>
        
                            <span class="btn-cir btn-black btn-link"><i class="ico-next-w"></i></span>
                        </div>
                    </a>
                </li>
                <% next %>
            </ul>
        </div>

        <div class="btn-area txt-center">
            <a href="javascript:void(0)" class="btn-cir btn-L btn-more"><i class="ico-down">리스트 더보기</i></a>
        </div>
    </div>
                
	<pre><code>
&lt;div class="list-card col-50"&gt;
    &lt;ul&gt;
        &lt;li&gt;
            &lt;a href="javascript:void(0)" onclick="fnOpenModal('.modal-cart');" class="btn-ico btn-plus"&gt;&lt;i class="ico-plus"&gt;장바구니 담기&lt;/i&gt;&lt;/a&gt;

            &lt;a href="/lecture/view.asp"&gt;
                &lt;div class="hash-area"&gt;
                    &lt;span class="sticker-red"&gt;LIVE&lt;/span&gt;
                    &lt;span&gt;토&lt;/span&gt;
                    &lt;span&gt;10:00 ~ 12:00&lt;/span&gt;
                &lt;/div&gt;

                &lt;div class="tit-area"&gt;국어 서바이벌 정규과정 국어 서바이벌 정규과정 국어 서바이벌 정규과정&lt;/div&gt;
                &lt;div class="txt-area"&gt;수학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를 높이는데 중학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 점을 둡니다.&lt;/div&gt;

                &lt;div class="info-area"&gt;
                    &lt;p&gt;김은영 선생님&lt;/p&gt;

                    &lt;p class="color-gray"&gt;
                        &lt;span&gt;수강기간 23일&lt;/span&gt;
                        &lt;span&gt;완강예정일 2020/01/01&lt;/span&gt;
                    &lt;/p&gt;

                    &lt;span class="btn-cir btn-black btn-link"&gt;&lt;i class="ico-next-w"&gt;&lt;/i&gt;&lt;/span&gt;
                &lt;/div&gt;
            &lt;/a&gt;
        &lt;/li&gt;
        &lt;li&gt;
            &lt;a href="javascript:void(0)" onclick="fnOpenModal('.modal-cart');" class="btn-ico btn-plus"&gt;&lt;i class="ico-plus"&gt;장바구니 담기&lt;/i&gt;&lt;/a&gt;

            &lt;a href="/lecture/view.asp"&gt;
                &lt;div class="hash-area"&gt;
                    &lt;span class="sticker-yellow"&gt;완강&lt;/span&gt;
                    &lt;span&gt;토&lt;/span&gt;
                    &lt;span&gt;10:00 ~ 12:00&lt;/span&gt;
                &lt;/div&gt;

                &lt;div class="tit-area"&gt;국어 서바이벌 정규과정 국어 서바이벌 정규과정 국어 서바이벌 정규과정&lt;/div&gt;
                &lt;div class="txt-area"&gt;수학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를 높이는데 중학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 점을 둡니다.&lt;/div&gt;

                &lt;div class="info-area"&gt;
                    &lt;p&gt;김은영 선생님&lt;/p&gt;

                    &lt;p class="color-gray"&gt;
                        &lt;span&gt;수강기간 23일&lt;/span&gt;
                        &lt;span&gt;52강 완강&lt;/span&gt;
                    &lt;/p&gt;

                    &lt;span class="btn-cir btn-black btn-link"&gt;&lt;i class="ico-next-w"&gt;&lt;/i&gt;&lt;/span&gt;
                &lt;/div&gt;
            &lt;/a&gt;
        &lt;/li&gt;
    &lt;/ul&gt;
&lt;/div&gt;

&lt;div class="btn-area txt-center"&gt;
    &lt;a href="javascript:void(0)" class="btn-cir btn-L btn-more"&gt;&lt;i class="ico-down"&gt;리스트 더보기&lt;/i&gt;&lt;/a&gt;
&lt;/div&gt;
	</code></pre>


    <h3 class="tit-dep4">summary 강좌(카드형) 리스트</h3>

    <div class="code-info">
        <ul class="code-list">
            <li>summary영역에 베스트/신규 강좌 3개씩 노출할 경우 사용</li>
            <li>class summary-card 추가</li>
            <li>선생님 &gt; 메인 / 검색 페이지에서 사용</li>
            <li>리스트와 리스트 전체보기 링크 버튼 함께 사용</li>
        </ul>
    </div>

    <div class="code-preview">
        <div class="list-card summary-card">
            <ul>
                <% for i = 1 to 3 '최대 강좌 3개 노출 %>
                <% if i = 1 then '완강예정일 경우 %>
                <li>
                    <a href="javascript:void(0)" onclick="fnOpenModal('.modal-cart');" class="btn-ico btn-plus"><i class="ico-plus">장바구니 담기</i></a>

                    <a href="/sdijx/lecture/view.asp">
                        <div class="hash-area">
                            <span class="sticker-red">LIVE</span>
                            <span>토</span>
                            <span>10:00 ~ 12:00</span>
                        </div>

                        <div class="tit-area">국어 서바이벌 정규과정 국어 서바이벌 정규과정 국어 서바이벌 정규과정</div>
                        <div class="txt-area">수학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를 높이는데 중학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 점을 둡니다.</div>

                        <div class="info-area">
                            <p>김은영 선생님</p>

                            <p class="color-gray">
                                <span>수강기간 23일</span>
                                <span>완강예정일 2020/01/01</span>
                            </p>

                            <span class="btn-cir btn-black btn-link"><i class="ico-next-w"></i></span>
                        </div>
                    </a>
                </li>

                <% else '완강일 경우 %>
                <li>
                    <a href="javascript:void(0)" onclick="fnOpenModal('.modal-cart');" class="btn-ico btn-plus"><i class="ico-plus">장바구니 담기</i></a>

                    <a href="/sdijx/lecture/view.asp">
                        <div class="hash-area">
                            <span class="sticker-yellow">완강</span>
                            <span>토</span>
                            <span>10:00 ~ 12:00</span>
                        </div>

                        <div class="tit-area">국어 서바이벌 정규과정 국어 서바이벌 정규과정 국어 서바이벌 정규과정</div>
                        <div class="txt-area">수학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를 높이는데 중학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 점을 둡니다.</div>

                        <div class="info-area">
                            <p>김은영 선생님</p>

                            <p class="color-gray">
                                <span>수강기간 23일</span>
                                <span>52강 완강</span>
                            </p>

                            <span class="btn-cir btn-black btn-link"><i class="ico-next-w"></i></span>
                        </div>
                    </a>
                </li>
                <% end if %>
                <% next %>
            </ul>

            <a href="#" class="btn-cir btn-L btn-more"><i class="ico-plus">전체 강좌 보러가기</i></a>
        </div>
    </div>
                
	<pre><code>
&lt;div class="list-card summary-card"&gt;
    &lt;ul&gt;
        &lt;li&gt;
            &lt;a href="javascript:void(0)" onclick="fnOpenModal('.modal-cart');" class="btn-ico btn-plus"&gt;&lt;i&gt; class="ico-plus"&gt;장바구니 담기&lt;/i&gt;&lt;/a&gt;

            &lt;a href="/sdijx/lecture/view.asp"&gt;
                &lt;div class="hash-area"&gt;
                    &lt;span&gt; class="sticker-red"&gt;LIVE&lt;/span&gt;
                    &lt;span&gt;토&lt;/span&gt;
                    &lt;span&gt;10:00 ~ 12:00&lt;/span&gt;
                &lt;/div&gt;

                &lt;div&gt; class="tit-area"&gt;국어 서바이벌 정규과정 국어 서바이벌 정규과정 국어 서바이벌 정규과정&lt;/div&gt;
                &lt;div&gt; class="txt-area"&gt;수학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를 높이는데 중학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 점을 둡니다.&lt;/div&gt;

                &lt;div class="info-area"&gt;
                    &lt;p&gt;김은영 선생님&lt;/p&gt;

                    &lt;p class="color-gray"&gt;
                        &lt;span&gt;수강기간 23일&lt;/span&gt;
                        &lt;span&gt;완강예정일 2020/01/01&lt;/span&gt;
                    &lt;/p&gt;

                    &lt;span class="btn-cir btn-black btn-link"&gt;&lt;i&gt; class="ico-next-w"&gt;&lt;/i&gt;&lt;/span&gt;
                &lt;/div&gt;
            &lt;/a&gt;
        &lt;/li&gt;

        &lt;-- S : 완강일 경우 --&gt;
        &lt;li&gt;
            &lt;a href="javascript:void(0)" onclick="fnOpenModal('.modal-cart');" class="btn-ico btn-plus"&gt;&lt;i&gt; class="ico-plus"&gt;장바구니 담기&lt;/i&gt;&lt;/a&gt;

            &lt;a href="/sdijx/lecture/view.asp"&gt;
                &lt;div class="hash-area"&gt;
                    &lt;span&gt; class="sticker-yellow"&gt;완강&lt;/span&gt;
                    &lt;span&gt;토&lt;/span&gt;
                    &lt;span&gt;10:00 ~ 12:00&lt;/span&gt;
                &lt;/div&gt;

                &lt;div&gt; class="tit-area"&gt;국어 서바이벌 정규과정 국어 서바이벌 정규과정 국어 서바이벌 정규과정&lt;/div&gt;
                &lt;div&gt; class="txt-area"&gt;수학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를)에 대한 이해를 높이는데 중학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 학(가)에 대한 이해를 높이는데 중점을 둡니다.수학(가)에 대한 이해를 높이는데 중점을 둡니다. 수학(가)에 대한 이해를 높이는데 중점을 점을 둡니다.&lt;/div&gt;

                &lt;div class="info-area"&gt;
                    &lt;p&gt;김은영 선생님&lt;/p&gt;

                    &lt;p class="color-gray"&gt;
                        &lt;span&gt;수강기간 23일&lt;/span&gt;
                        &lt;span&gt;52강 완강&lt;/span&gt;
                    &lt;/p&gt;

                    &lt;span class="btn-cir btn-black btn-link"&gt;&lt;i&gt; class="ico-next-w"&gt;&lt;/i&gt;&lt;/span&gt;
                &lt;/div&gt;
            &lt;/a&gt;
        &lt;/li&gt;
        &lt;--// E : 완강일 경우 --&gt;
    &lt;/ul&gt;

    &lt;a href="#" class="btn-cir btn-L btn-more"&gt;&lt;i&gt; class="ico-plus"&gt;전체 강좌 보러가기&lt;/i&gt;&lt;/a&gt;
&lt;/div&gt;
	</code></pre>
</div>
<!--// E : card -->

<!-- S : index-->
<div class="tab-content">
    <h3 class="tit-dep4">index</h3>

	<div class="code-preview">
		<ul class="list-index">
		<% for j = 1 to 10 %>
			<li>
			   <div class="cont-area">
					<div class="txt">
						<span><%= j %>강</span>
						<span class="color-gray">47분</span>
					</div>

					<div class="tit">강의명이 들어갑니다.</div>
			   </div>

			   <div class="btn-area">
					<a href="javascript:void(0)" class="btn btn-M btn-green">맛보기</a>
			   </div>
			</li>
		<% next %>
		</ul>
	</div>	

	<pre><code>
&lt;ul class="list-index"&gt;
    &lt;li&gt;
        &lt;div class="cont-area"&gt;
            &lt;div class="txt"&gt;
                &lt;span&gt;1강&lt;/span&gt;
                &lt;span class="color-gray"&gt;47분&lt;/span&gt;
            &lt;/div&gt;

            &lt;div class="tit"&gt;강의명이 들어갑니다.&lt;/div&gt;
        &lt;/div&gt;

        &lt;div class="btn-area"&gt;
            &lt;a href="javascript:void(0)" class="btn btn-M btn-green"&gt;맛보기&lt;/a&gt;
        &lt;/div&gt;
    &lt;/li&gt;
&lt;/ul&gt;
	</code></pre>
</div>
<!--// E : index-->

<!-- S : toggle -->
<div class="tab-content">
	<h3 class="tit-dep4">toggle</h3>
	
	<div class="code-info">toggle type1</div>

	<div class="code-preview">
		<dl class="toggle-type1">
			<% for i = 1 to 5 %>
		    <dt>
				<a href="javascript:void(0)">
					<span>
						<%= i %>단원 단원명이 들어갑니다.
					</span>
				</a>
			</dt>
		    <dd>
			  내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
		    </dd>
		    <% next %>
		</dl>
	</div>
	
	<pre><code>
&lt;dl class="toggle-type1"&gt;
    &lt;dt&gt;
        &lt;a href="javascript:void(0)"&gt;
            &lt;span&gt;단원 단원명이 들어갑니다.&lt;/span&gt;
        &lt;/a&gt;
    &lt;/dt&gt;
    &lt;dd&gt;
내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
    &lt;/dd&gt;
&lt;/dl&gt;
	</code></pre>


	<div class="code-info mt40">toggle type2</div>

	<div class="code-info">
		<ul class="code-list">
			<li>toggle list는 10줄 이후 더보기 버튼 클릭 시 노출</li>
			<li>리스트와 리스트 더보기 버튼 함께 사용</li>
		</ul>
	</div>

	<div class="code-preview">
		<div class="toggle-type2">
			<dl>
				<% for i = 1 to 10 %>
				<dt <% if i = 1 then %>class="selected"<% end if %>>
					<div class="type-area">
						공지사항
					</div>

					<div class="tit-area">
						<a href="javascript:void(0)" class="tit">
							공지사항 입니다. 
						</a>
					</div>
				</dt>
				<dd <% if i = 1 then %>class="selected"<% end if %>>
					<div class="content-area">
						내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
					</div>
				</dd>
				<% next %>
			</dl>
		</div>

		<div class="btn-area txt-center mt30">
			<a href="javascript:void(0)" class="btn-cir btn-L"><i class="ico-down">리스트 더보기</i></a>
		</div>
	</div>

	<pre><code>
&lt;div class="toggle-type2"&gt;
    &lt;dl&gt;
        &lt;dt class="selected"&gt;
            &lt;div class="type-area"&gt;
                공지사항
            &lt;/div&gt;
		    
            &lt;div class="tit-area"&gt;
                &lt;a href="javascript:void(0)" class="tit"&gt;
                공지사항 입니다. 
                &lt;/a&gt;
            &lt;/div&gt;
        &lt;/dt&gt;
        &lt;dd &lt;% if i = 1 then %&gt;class="selected"&lt;% end if %&gt;&gt;
            &lt;div class="content-area"&gt;
내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
            &lt;/div&gt;
        &lt;/dd&gt;
    &lt;/dl&gt;
&lt;/div&gt;

&lt;div class="btn-area txt-center mt30"&gt;
    &lt;a href="javascript:void(0)" class="btn-cir btn-L"&gt;&lt;i class="ico-down">리스트 더보기&lt;/i&gt;&lt;/a&gt;
&lt;/div&gt;
	</code></pre>
</div>
<!--// E : toggle -->
