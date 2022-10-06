<%
'-----------------------------------------------------------------------
' 업 무 명 : 보강신청 > 리스트
' 모듈기능 : 보강신청 > 리스트
' 파 일 명 : index.asp
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
				<h2 class="tit-dep1">보강신청하기</h2>

				<a href="detail.asp" class="btn btn-M tit-side">신청 내역 보기</a>
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
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:4.285714286rem;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>수강 중인 강좌</th>
                            <th>보강 가능 강좌</th>
                            <th>신청하기</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% for i = 1 to 10 '리스트 10줄 이후 더보기 버튼 클릭 시 노출 %>
                        <tr>
                            <td>
                                <p class="lec-info">
                                    <span>기하와벡터</span>
                                    <span>홍길동</span>
                                </p>
                                <p class="lec-tit">(16회차) 박종민T 수학 서바이벌 정규 수업 + 추가영상</p>
                            </td>
                            <td>
                                <label class="select">
                                    <select id="" name="">
                                        <option hidden="" disabled="" selected="" value="">강좌 선택</option>
                                        <option value="">(16회차) 박종민T 수학 서바이벌 정규 수업 + 추가영상</option>
                                    </select>
                                </label>
                            </td>
                            <td>
                                <div class="btn-area txt-center">
                                <% if i = 1 then '신청 전 일 경우 %>
                                    <a href="javascript:void(0);" class="btn btn-black">신청하기</a>

                                <% else %>
                                    <span class="color-gray">처리대기</span>
                                <% end if %>
                                </div>
                            </td>
                        </tr>
                        <% next %>
                    </tbody>
                </table>
            </div>

            <div class="list-btn mt1">
                <a href="javascript:void(0);" class="btn btn-more">더 보기</a>
            </div>
        </article>
        <!--// E : 강좌 리스트 -->
    </section>
    <!--// E : container -->

<!--#include virtual="/totalWebSite/renew2019/reclass/common/include/incFooter.asp"-->
