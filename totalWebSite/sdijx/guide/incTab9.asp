<%
    'index.asp include file

    ''tab9 visual
%>
<div class="tab-type2 border-none">
    <ul>
        <li class="selected"><a href="javascript:void(0);">silde</a></li>
        <li><a href="javascript:void(0);">video</a></li>
        <li><a href="javascript:void(0);">img</a></li>
    </ul>
</div>

<!-- S : slide -->
<div class="tab-content tab-on">
	<h3 class="tit-dep4"> slide</h3>

	<div class="code-preview">
		<div class="banner-content">
			<div class="swiper-container swiper-slide-type1">
				<div class="swiper-wrapper">
					<a href="javascript:void(0);" class="swiper-slide"><img src="http://placehold.it/1240x136/000000/" alt="강좌 배너1"></a>
					<a href="javascript:void(0);" class="swiper-slide"><img src="http://placehold.it/1240x136/000000/?text=banner2" alt="강좌 배너2"></a>
					<a href="javascript:void(0);" class="swiper-slide"><img src="http://placehold.it/1240x136/000000/?text=banner3" alt="강좌 배너3"></a>
				</div>

				<div class="swiper-pager"></div>

				<div class="swiper-btn">
					<a href="javascript:void(0);" class="btn-prev"><i class="ico-prev">이전 슬라이드</i></a>
					<a href="javascript:void(0);" class="btn-next"><i class="ico-next">다음 슬라이드</i></a>
				</div>
			</div>
		</div>
	</div>
                
	<pre><code>
&lt;div class="banner-content"&gt;
	&lt;div class="swiper-container swiper-slide-type1"&gt;
		&lt;div class="swiper-wrapper"&gt;
			&lt;a href="javascript:void(0);" class="swiper-slide"&gt;&lt;img src="http://placehold.it/1240x136/000000/" alt="강좌 배너1"&gt;&lt;/a&gt;
			&lt;a href="javascript:void(0);" class="swiper-slide"&gt;&lt;img src="http://placehold.it/1240x136/000000/?text=banner2" alt="강좌 배너2"&gt;&lt;/a&gt;
			&lt;a href="javascript:void(0);" class="swiper-slide"&gt;&lt;img src="http://placehold.it/1240x136/000000/?text=banner3" alt="강좌 배너3"&gt;&lt;/a&gt;
		&lt;/div&gt;

		&lt;div class="swiper-pager"&gt;&lt;/div&gt;

		&lt;div class="swiper-btn"&gt;
			&lt;a href="javascript:void(0);" class="btn-prev"&gt;&1t;i class="ico-prev"&gt;이전 슬라이드&lt;/i&gt;&lt;/a&gt;
			&lt;a href="javascript:void(0);" class="btn-next"&gt;&1t;i class="ico-next"&gt;다음 슬라이드&lt;/i&gt;&lt;/a&gt;
		&lt;/div&gt;
	&lt;/div&gt;
&lt;/div&gt;
	</code></pre>
</div>
<!--// E : slide -->

<!-- S : video -->
<div class="tab-content">
	<h3 class="tit-dep4">video</h3>

	<div class="code-preview">
		<div class="video-area">
			<iframe src="https://www.youtube.com/embed/v7AcmMdwqDw" width="100%" height="100%" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		</div>
	</div>

	<pre><code>
&lt;div class="video-area"&gt;
    &lt;iframe src="https://www.youtube.com/embed/v7AcmMdwqDw" width="100%" height="100%" frameborder="0" allow="accelerometer;
	autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen&gt;&lt;/iframe&gt;
&lt;/div&gt;
	</code></pre>
</div>
<!--// E : video -->

<!-- S : image -->
<div class="tab-content">
	<h3 class="tit-dep4">image</h3>

	
	<div class="code-info">
		<ul class="code-list">
			<li>이미지를 세로, 가로 가운데 정렬할 경우 사용</li>	
		</ul>
	</div>

	<div class="code-preview">
		<div class="book-img">
			<img src="http://placehold.it/505x517" alt="상품 이미지">
		</div>
	</div>
	
	<pre><code>
&lt;div class="book-img"&gt;
    &lt;img src="http://placehold.it/505x517" alt="상품 이미지"&gt;
&lt;/div&gt;
	</code></pre>
</div>
<!--// E : image -->