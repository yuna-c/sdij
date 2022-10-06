<%
    'index.asp include file

    ''tab8 board
%>
<div class="tab-type2 border-none">
    <ul>
        <li class="selected"><a href="javascript:void(0);">board</a></li>
        <li><a href="javascript:void(0);">list</a></li>
    </ul>
</div>

<!-- S : board -->
<div class="tab-content tab-on">

	<h3 class="tit-dep4">board</h3>
	
	<div class="code-info">table-type1</div>
	<div class="code-preview">
		<div class="table-type1 border-none">
			<ul>
				<% for i = 1 to 10 '리스트 최대 10개 노출 이후 더보기 버튼 클릭 시 노출 %>
				<li>
					<div class="num-area"><% = i %></div>

					<div class="tit-area">
						<a href="javascript:void(0);" class="tit">
							신종 코로나바이러스 예방수칙 및 대응지침 안내신종 코로나바이러스 예방수칙 및 대응지침 안내신종 코로나바이러스 예방수칙 및 대응지침 안내신종 코로나바이러스 예방수칙 및 대응지침 안내신종 코로나바이러스 예방수칙 및 대응지침 안내

							<i class="ico-new"></i><!-- 신규게시글 일 경우 노출 -->
						</a>
					</div>

					<div class="name-area">홍길동</div>
					<div class="date-area">2020/01/01</div>
				</li>
				<% next %>
			</ul>
		</div>

		<div class="btn-area txt-center mt30">
			<a href="javascript:void(0)" class="btn-cir btn-L"><i class="ico-down">리스트 더보기</i></a>
		</div>
	</div>
                
	<pre><code>
&lt;div class="table-type1"&gt;
    &lt;ul&gt;
    &lt;% for i = 1 to 10 '리스트 최대 10개 노출 이후 더보기 버튼 클릭 시 노출 %&gt;
        &lt;li&gt;
            &lt;div class="num-area"&gt;&lt;% = i %&gt;&lt;/div&gt;

            &lt;div class="tit-area"&gt;
            &lt;javascript:void(0);" class="tit"&gt;
            신종 코로나바이러스 예방수칙 및 대응지침 안내신종 코로나바이러스 예방수칙 및 대응지침 안내
			신종 코로나바이러스 예방수칙 및 대응지침 안내신종 코로나바이러스 예방수칙 및 대응지침 안내
			신종 코로나바이러스 예방수칙 및 대응지침 안내
	       
            &lt;i class="ico-new"&gt;&lt;/i&gt;&lt;!-- 신규게시글 일 경우 노출 --&gt;
            &lt;/a&gt;
            &lt;/div&gt;

            &lt;div class="name-area"&gt;홍길동&lt;/div&gt;
            &lt;div class="date-area"&gt;2020/01/01&lt;/div&gt;
        &lt;/li&gt;
    &lt;% next %&gt;
    &lt;/ul&gt;
	
	&lt;div class="btn-area txt-center mt30"&gt;
		&lt;a href="javascript:void(0)" class="btn-cir btn-L"&gt;&lt;i class="ico-down"&gt;리스트 더보기&lt;/i&gt;&lt;/a&gt;
	&lt;/div&gt;
&lt;/div&gt;
	</code></pre>


	<div class="code-info mt40">table-notice</div>

	<div class="code-preview">
		 <div class="table-type1 table-notice border-none">
			<ul>
				<% for i = 1 to 10 '리스트 최대 10개 노출 이후 더보기 버튼 클릭 시 노출 %>
				<li>
					<div class="num-area"><% = i %></div>

					<div class="tit-area">
						<p class="txt">강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명</p>
						
						<a href="javascript:void(0);" class="tit">
							신종 코로나바이러스 예방수칙 및 대응지침 안내신종 코로나바이러스 예방수칙 및 대응지침 안내신종 코로나바이러스 예방수칙 및 대응지침 안내신종 코로나바이러스 예방수칙 및 대응지침 안내신종 코로나바이러스 예방수칙 및 대응지침 안내

							<i class="ico-new"></i><!-- 신규게시글 일 경우 노출 -->
						</a>
					</div>

					<div class="name-area">홍길동</div>
					<div class="date-area">2020/01/01</div>
				</li>
				<% next %>
			</ul>
		</div>

		<div class="btn-area txt-center mt30">
			<a href="javascript:void(0)" class="btn-cir btn-L"><i class="ico-down">리스트 더보기</i></a>
		</div>
	</div>

	<pre><code>
&lt;div class="code-preview"&gt;
    &lt;div class="table-type1 table-notice border-none"&gt;
       &lt;ul&gt;
           &lt;% for i = 1 to 10 '리스트 최대 10개 노출 이후 더보기 버튼 클릭 시 노출 %&gt;
           &lt;li&gt;
               &lt;div class="num-area"&gt;&lt;% = i %&gt;&lt;/div&gt;

               &lt;div class="tit-area"&gt;
                   &lt;p class="txt"&gt;강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명강좌명&lt;/p&gt;
                   
                   &lt;a href="javascript:void(0);" class="tit"&gt;
                       신종 코로나바이러스 예방수칙 및 대응지침 안내신종 코로나바이러스 예방수칙 및 대응지침 안내신종 코로나바이러스 예방수칙 및 대응지침 안내신종 코로나바이러스 예방수칙 및 대응지침 안내신종 코로나바이러스 예방수칙 및 대응지침 안내

                       &lt;i class="ico-new"&gt;&lt;/i&gt;&lt;!-- 신규게시글 일 경우 노출 --&gt;
                   &lt;/a&gt;
               &lt;/div&gt;

               &lt;div class="name-area"&gt;홍길동&lt;/div&gt;
               &lt;div class="date-area"&gt;2020/01/01&lt;/div&gt;
           &lt;/li&gt;
           &lt;% next %&gt;
       &lt;/ul&gt;
   &lt;/div&gt;

   &lt;div class="btn-area txt-center mt30"&gt;
       &lt;a href="javascript:void(0)" class="btn-cir btn-L"&gt;&lt;i class="ico-down"&gt;리스트 더보기&lt;/i&gt;&lt;/a&gt;
   &lt;/div&gt;
&lt;/div&gt;
	</code></pre>


	<h3 class="tit-dep4">board 상세</h3>

	<div class="code-preview">
		<!-- S : view-type1 -->
		<div class="view-type1">
			<div class="tit-area">
				<h4 class="tit-dep5">게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목</h4>

				<div class="info-area">
					<% if false then '답변 대기중 일 경우 %>
					<span><i class="ico-ellipsis"></i> 답변대기중</span>
					<% else %>
					<span class="color-green"><i class="ico-check"></i> 답변완료</span>
					<% end if %>

					<span>강좌명</span>
					<span>강의명</span>
					<span>교재명</span>
					<span>2020/01/01</span>
					<span><i class="ico-lock">비공개글</i></span><!-- 비공개 게시글 일 경우 노출 -->
				</div>
			</div>

			<div class="content-area">
				질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.
			</div>

			<!-- S : 첨부파일이 있을 경우 -->
			<div class="file-area">
				<span class="tit">첨부파일</span>

				<a href="javascript:void(0)" class="btn"><i class="ico-file"></i> 파일명파일명.jpg</a>
			</div>
			<!--// E : 첨부파일이 있을 경우 -->
		</div>
		<!--// E : view-type1 -->

		<!-- S : view-reply -->
		<div class="view-type1 view-reply">
			<h4 class="tit-dep4">
				<span class="tit">답변</span>
			</h4>

			<div class="tit-area">
				<h4 class="tit-dep5">답변 제목 답변 제목 답변 제목 답변 제목 답변 제목 답변 제목 답변 제목 답변 제목 답변 제목 답변 제목 답변 제목 답변 제목</h4>

				<div class="info-area">
					<span>답변자</span>
					<span>2020/01/01</span>
				</div>
			</div>
			
			<div class="content-area">
				질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.
			</div>

			<!-- S : 첨부파일이 있을 경우 -->
			<div class="file-area">
				<span class="tit">첨부파일</span> 

				<a href="javascript:void(0)" class="btn"><i class="ico-file"></i> 파일명파일명.jpg</a>
			</div>
			<!--// E : 첨부파일이 있을 경우 -->
		</div>
		<!--// E : view-reply -->

		<div class="view-pager">
			<a href="qnaList.asp" class="btn-ico"><i class="ico-list"></i> 목록</a>

			<% If true Then '수강후기 일 경우 %>
			<div class="right">
				<a href="javascript:void(0);" class="btn-ico"><i class="ico-prev"></i>이전</a>
				<a href="javascript:void(0);" class="btn-ico">다음<i class="ico-next"></i></a>
			</div>
			
			<% Else '나의 수강 후기일 경우 %>
			<div class="right">
				<a href="javascript:void(0);" class="color-red" onclick="IfDel()">삭제</a>
				<a href="javascript:void(0);" onclick="IfMod()">수정</a>
			</div>
			<% End If %>
		</div>
	</div>
                
	<pre><code>
&lt;!-- S : view-type1 --&gt;
&lt;div class="view-type1"&gt;
    &lt;div class="tit-area"&gt;
        &lt;h4 class="tit-dep5"&gt;게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 &lt;/h4&gt;

        &lt;div class="info-area"&gt;
            &lt;% if false then '답변 대기중 일 경우 %&gt;
            &lt;span&gt;&lt;i class="ico-ellipsis"&gt;&lt;/i&gt; 답변대기중&lt;/span&gt;
            &lt;% else %&gt;
            &lt;span class="color-green"&gt;&lt;i class="ico-check"&gt;&lt;/i&gt; 답변완료&lt;/span&gt;
            &lt;% end if %&gt;

            &lt;span&gt;강좌명&lt;/span&gt;
            &lt;span&gt;강의명&lt;/span&gt;
            &lt;span&gt;교재명&lt;/span&gt;
            &lt;span&gt;2020/01/01&lt;/span&gt;
            &lt;span&gt;&lt;i class="ico-lock"&gt;비공개글&lt;/i&gt;&lt;/span&gt;&lt;!-- 비공개 게시글 일 경우 노출 --&gt;
        &lt;/div&gt;
    &lt;/div&gt;

    &lt;div class="content-area"&gt;
        질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.
        질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.
        질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.
        질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.
        질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.
    &lt;/div&gt;

    &lt;!-- S : 첨부파일이 있을 경우 --&gt;
    &lt;div class="file-area"&gt;
        &lt;span class="tit"&gt;첨부파일&lt;/span&gt;

        &lt;a href="javascript:void(0)" class="btn"&gt;&lt;i class="ico-file">&lt;/i&gt; 파일명파일명.jpg&lt;/a&gt;
    &lt;/div&gt;
    &lt;!--// E : 첨부파일이 있을 경우 --&gt;
&lt;/div&gt;
&lt;!--// E : view-type1 --&gt;

&lt;!-- S : view-reply --&gt;
&lt;div class="view-type1 view-reply"&gt;
    &lt;h4 class="tit-dep4"&gt;
        &lt;span class="tit"&gt;답변&lt;/span&gt;
    &lt;/h4&gt;

    &lt;div class="tit-area"&gt;
        &lt;h4 class="tit-dep5"&gt;답변 제목 답변 제목 답변 제목 답변 제목 답변 제목 답변 제목 답변 제목 답변 제목 답변 제목 답변 제목 답변 제목 답변 제목&lt;/h4&gt;

        &lt;div class="info-area"&gt;
            &lt;span&gt;답변자&lt;/span&gt;
            &lt;span&gt;2020/01/01&lt;/span&gt;
        &lt;/div&gt;
    &lt;/div&gt;
                    
    &lt;div class="content-area"&gt;
        질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.
        질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.
        질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.
        질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.
        질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.질문내용이 들어갑니다.
    &lt;/div&gt;

    &lt;!-- S : 첨부파일이 있을 경우 --&gt;
    &lt;div class="file-area"&gt;
        &lt;span class="tit"&gt;첨부파일&lt;/span&gt; 

        &lt;a href="javascript:void(0)" class="btn"&gt;&lt;i class="ico-file">&lt;/i&gt; 파일명파일명.jpg&lt;/a&gt;
    &lt;/div&gt;
    &lt;!--// E : 첨부파일이 있을 경우 --&gt;
&lt;/div&gt;
&lt;!--// E : view-reply --&gt;

&lt;div class="view-pager"&gt;
    &lt;a href="javascript:void(0);" class="btn-ico"&gt;&lt;i class="ico-list"&gt;&lt;/i&gt;목록&lt;/a&gt;

    &lt;div class="right"&gt;
        &lt;a href="javascript:void(0);" class="btn-ico"&gt;&lt;i class="ico-prev"&gt;&lt;/i&gt;이전&lt;/a&gt;
        &lt;a href="javascript:void(0);" class="btn-ico"&gt;다음&lt;i class="ico-next"&gt;&lt;/i&gt;&lt;/a&gt;
    &lt;/div&gt;
&lt;/div&gt;
	</code></pre>

</div>
<!--// E : board -->

<!-- S : list -->
<div class="tab-content">
    <h3 class="tit-dep4">list</h3>

	<div class="code-info">
		<ul class="code-list">
			<li>content-layout에서 주로 사용(1070px)</li>	
			<li>기본 게시글은 3개로 제한</li>
			<li>plus/더보기 버튼 함께 사용</li>
			<li>summary 페이지에 주로 사용</li>
		</ul>
	</div>

	<div class="code-preview">
		<div class="list-board summary-board">
			<div class="list-board">
				<ul>
					<% For i = 1 To 3 '최대 공지글 3개 노출 %>
					<li>
						<a href="javascript:void(0);">
							<div class="visual-area">
								10/10
							</div>

							<div class="tit-area">
								개학연장으로 인한 학사일정 변경시 수업계획 변경이 있습니다. 개학연장으로 인한 학사일정 변경시 수업계획 변경이 있습니다.
							</div>
							<div class="txt-area">
								개학연장으로 인한 학사일정 변경시 수업계획 변경이 있습니다. 개학연장으로 인한 학사일정 변경시 수업계획 변경이 있습니다.개학연장으로 인한 학사일정 변경시 수업계획 변경이 있습니다. 개학연장으로 인한 학사일정 변경시 수업계획 변경이 있습니다.
							</div>	
							
							<% if i = 1 then '첨부파일이 있을 경우 %>
							<i class="ico-file"></i>
							<% else '없을 경우 %>
							<i class="ico-next"></i>
							<% end if %>
						</a>
					</li>
					<% Next %>
				</ul>
			</div>

			<a href="javascript:void(0);" class="btn-cir btn-L btn-more">
				<i class="ico-plus">리스트 더보기</i>
			</a>
		</div>
	</div>

	<pre><code>
&lt;div class="list-board summary-board"&gt;
    &lt;div class="list-board"&gt;
        &lt;ul&gt;
        &lt;% For i = 1 To 3 '최대 공지글 3개 노출 %&gt;
            &lt;li&gt;
                &lt;a href="javascript:void(0);"&gt;
                    &lt;div class="visual-area"&gt;
                        10/10
                    &lt;/div&gt;

                    &lt;div class="tit-area"&gt;
                        개학연장으로 인한 학사일정 변경시 수업계획 변경이 있습니다. 개학연장으로 인한 학사일정 변경시 수업계획 변경이 있습니다.
                    &lt;/div&gt;
                    &lt;div class="txt-area"&gt;
                        개학연장으로 인한 학사일정 변경시 수업계획 변경이 있습니다. 개학연장으로 인한 학사일정 변경시 수업계획 변경이 있습니다.개학연장으로 인한 학사일정 변경시 수업계획 변경이 있습니다. 개학연장으로 인한 학사일정 변경시 수업계획 변경이 있습니다.
                    &lt;/div&gt;
    
                    &lt;% if i = 1 then '첨부파일이 있을 경우 %&gt;
                    &lt;i class="ico-file"&gt;&lt;/i&gt;
                    &lt;% else '없을 경우 %>
                    &lt;i class="ico-next"&gt;&lt;/i&gt;
                    &lt;% end if %&gt;
                &lt;/a&gt;
            &lt;/li&gt;
        &lt;% Next %&gt;
        &lt;/ul&gt;
    &lt;/div&gt;
	&lt;a href="javascript:void(0);" class="btn-cir btn-L btn-more"&gt;
		&lt;i class="ico-plus"&gt;리스트 더보기&lt;/i&gt;
	&lt;/a&gt;
&lt;/div&gt;
	</code></pre>
</div>
<!--// E : list -->
