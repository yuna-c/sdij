<%
'-----------------------------------------------------------------------
' 업 무 명 : 보충강좌 서비스 > 택배 신청 상세페이지 
' 모듈기능 : 보충강좌 서비스 > 택배 신청 상세페이지 
' 파 일 명 : detail.asp
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



%>

<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incMeta.asp"-->
   <!-- S : header -->
    <header id="header">
        <div class="content-layout">
            <a href="javascript:window.history.back();" class="btn-back">뒤로가기</a>
            <h1 class="tit-dep1">택배 신청 내역</h1>
        </div>
    </header>
    <!--// E : header -->

    <!-- S : container -->
    <section id="container" class="delv-container">
        <!-- S : 택배신청 -->
        <article class="container-list content-layout">
			<div class="tit-area">
				<h2 class="tit-dep1">시대인재 택배 신청 내역</h2>

				<a href="index.asp" class="btn btn-M tit-side">금주 배송 신청하기</a>
			</div>

            <div class="box-gray">
                <ul class="list-dash">
					<li>교재 신청 내역과 운송장 번호를 확인 하실 수 있습니다.</li>
					<li>
						운송장 번호의 경우 CJ대한통운에서 조회 후 확인 가능 합니다.<br>
						<a href="https://www.cjlogistics.com/ko/tool/parcel/tracking" target="_blank" class="txt-link">CJ대한통운 운송장 조회 바로가기</a>
					</li>
					<li>신청 후 취소는 불가능 하며, 이미 발송된 건의 경우 주소 변경 불가 합니다.</li>
                </ul>
            </div>

            <div class="table-type1 mt1">
                <table>
                    <colgroup>
                        <col style="width:auto;">
                        <col style="width:auto;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>신청날짜</th>
                            <th>강좌명</th>
							<th>신청 배송지</th>
							<th>운송장번호</th>
                        </tr>
                    </thead>
                    <tbody>
						<% for i = 1 to 10 '리스트 10줄 이후 더보기 버튼 클릭 시 노출 %>
						<tr>
							<td class="txt-center">2020-09-08</td>
							<td class="txt-center">&lt;택배신청&gt; 강기원T 수학 서바이벌 정규 5회차</td>
							<td class="txt-center">서울강남구도곡로460(대치동,동선빌딩)</td>
							<% if i = 1 then '운송장 번호 업로드 된 경우 %>
							<td class="txt-center">
								123-1234-12345
							</td>
							<% else '운송장 번호 업로드 안된 경우 %>
							<td class="txt-center">
								배송준비중
							</td>
							<% end if %>
						</tr>
						<% next %>

						<tr>
							<td colspan="4" class="no-data">
								신청한 내역이 없습니다.
							</td>
						</tr>
                    </tbody>
                </table>
			</div>
			
			<div class="list-btn mt1">
                <a href="javascript:void(0)" class="btn btn-more">더 보기</a>
            </div>
        </article>
        <!--// E : 택배신청 -->
    </section>
    <!--// E : container -->

<script>
	
</script>


<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incFooter.asp"-->