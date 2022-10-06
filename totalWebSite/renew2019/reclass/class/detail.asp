<%
'-----------------------------------------------------------------------
' 업 무 명 : 보강신청 > 상세
' 모듈기능 : 보강신청 > 상세
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





'------------------------------
' QUERY
'------------------------------


'------------------------------
' ETC
'------------------------------





%>
<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incMeta.asp"-->

    <!-- S : header -->
    <!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incHeader.asp"-->
    <!--// E : header -->

    <!-- S : container -->
    <section id="container" class="class-container">
        <!-- S : 강좌 리스트 -->
        <article class="container-list content-layout">
            <div class="tit-area">
				<h2 class="tit-dep1">보강신청내역</h2>

				<a href="index.asp" class="btn btn-M tit-side">보강 신청하기</a>
			</div>

            <div class="box-gray">
                <h4 class="tit-dep4">
                    안내 타이틀
                </h4>

                <p class="strong mt20">서브 타이틀</p>
                <ul class="list-dash">
                    <li>안내 내용</li>
                </ul>
            </div>

            <div class="table-type1 mt1">
                <table>
                    <colgroup>
                        <col style="width:3.928571429rem;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:3.928571429rem;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>선생님<br>과목</th>
                            <th>원 수강 강좌</th>
                            <th>보강 신청 강좌</th>
                            <th>신청날짜</th>
                        </tr>
                    </thead>
                    <tbody>
						<% for i = 1 to 10 '리스트 10줄 이후 더보기 버튼 클릭 시 노출 %>
						<tr>
                            <td class="txt-center">
                                <p class="lec-info">홍길동</p>
                                <p class="lec-info">기하와벡터</p>
                            </td>
                            <td>
                                <p>(16회차) 박종민T 수학 서바이벌 정규 수업 + 추가영상</p>
                            </td>
                            <td>
                                <p class="lec-tit">(16회차) 박종민T 수학 서바이벌 정규 수업 + 추가영상</p>
                            </td>
							<td class="txt-center">2020-09-08</td>
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
        <!--// E : 강좌 리스트 -->
    </section>
    <!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incFooter.asp"-->