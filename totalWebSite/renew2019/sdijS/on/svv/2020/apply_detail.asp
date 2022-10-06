<!--include virtual="/common/inc/config.asp"-->
<%
'-----------------------------------------------------------------------
' 업 무 명 : 서바이벌 모의고사 학원 신청 > 신청내역 확인
' 모듈기능 : 서바이벌 모의고사 학원 신청 > 신청내역 확인
' 파 일 명 : apply_detail.asp
' 작성일자 : 2020/07/09
' 작 성 자 : 우미경
'-----------------------------------------------------------------------
' 변경일자   변경자  변동내역
'-----------------------------------------------------------------------
%>

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incMeta.asp"-->

<link rel="stylesheet" type="text/css" href="default.css?ver=<%=now()%>" >

<!-- S : wrap -->
<div id="wrap">
	<!-- S : container -->
	<div id="container">
        <!-- S : 컨텐츠 영역 -->
        <div class="layout-container survival-a pb80">
            <div class="board-layout">
                <h2 class="page-tit mt50">Survival α 신청내역</h2>

				<% If True Then '신청 내역 %>
                <!-- S : 비밀번호 확인 -->
                <div class="form-defult form-defult2">
                    <!-- S : 학원 정보 --> 
                    <h4 class="table-tit border-none">학원 정보 확인</h4>

                    <table>
                        <tbody>
                            <tr>
                                <th rowspan="2">학원명</th>
                                <td colspan="3">
                                    <div class="form-input">
                                        <input type="text" name="acdmNm" id="acdmNm" placeholder="학원명" value="">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <p class="txt-guide">*다른 학원과의 구분을 위해 학원명 앞에 지역을 넣어주세요 (ex. 대치 시대인재)</p>
                                </td>
                            </tr>

                            <tr>
                                <th rowspan="2">비밀번호</th>
                                <td colspan="3">
                                    <div class="form-input">
                                        <input type="password" name="acdmPw" id="acdmPw" placeholder="비밀번호" value="">
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    </form>
                    <!--// E : 학원 정보 --> 

                    <div class="board-btn txt-center">
                        <a href="javascript:findAcdm();" class="btn btn-black">확인</a>
                    </div>
                </div>
                <!--// E : 비밀번호 확인 -->

				<% Else '신청 내역 영역 %>
                <!-- S : 신청내역 영역 -->
                <div class="form-defult form-defult2">
                    <!-- S : 학원 정보 --> 
                    <h4 class="table-tit border-none">학원 정보</h4>
                    <table>
                        <tbody>
                            <tr>
                                <th>학원명</th>
                                <td colspan="3"></td>
                            </tr>

                            <tr>
                                <th>전화번호</th>
                                <td colspan="3"></td>
                            </tr>

                            <tr>
                                <th>학원주소</th>
                                <td colspan="3">&nbsp;</td>
                            </tr>

                            <tr>
                                <th>이전 사용<br>모의고사</th>
                                <td colspan="3"></td>
                            </tr>

                            <tr>
                                <th rowspan="2">학원규모<br>(학생 수)</th>
                                <th>중등</th>
                                <th>고등</th>
                                <th>N수</th>
                            </tr>
                            <tr>
                                <td class="txt-center" style="padding:0.666666667rem;">
                                    명
                                </td>
                                <td class="txt-center">
									명
                                </td>
                                <td class="txt-center">
									명
                                </td>
                            </tr>

                            <tr>
                                <th>&nbsp;</th>
                                <th>성함</th>
                                <th>핸드폰</th>
                                <th>이메일</th>
                            </tr>
                            <tr>
                                <th>원장님</th>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <th>담당자</th>
                                <td>
                                   
                                </td>
                                <td>
                                   
                                </td>
                                <td>
                                  
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <!--// E : 학원 정보 --> 

                    <!-- S : 계약자 정보 --> 
                    <h4 class="table-tit border-none">계약자 정보</h4>
                    <table>
                        <tbody>
                            <tr>
                                <th>사업자 유형</th>
                                <td colspan="3"></td>
                            </tr>

                            <tr>
                                <th>회사명</th>
                                <td colspan="3"></td>
                            </tr>

                            <tr>
                                <th>대표자명</th>
                                <td colspan="3"></td>
                            </tr>

                            <tr>
                                <th>사업자<br>등록번호</th>
                                <td colspan="3"></td>
                            </tr>
                        </tbody>
                    </table>
                    <!--// E : 계약자 정보 --> 

                    <!-- S : 서바이벌 모의고사 신청 과목 및 부수 --> 
                    <h4 class="table-tit border-none">서바이벌 모의고사 신청 과목 및 부수</h4>
                    <table>
                        <tbody>
                            <tr>
                                <th colspan="2">과목명</th>
                                <th>신청</th>
                                <th>신청부수</th>
                            </tr>
                            <tr>
                                <th colspan="2">수학(가)</th>
                                <td class="txt-center">
									미신청
                                </td>
                                <td class="txt-center">
									0부
                                </td>
                            </tr>
                            <tr>
                                <th colspan="2">수학(나)</th>
                                <td class="txt-center">
									신청
                                </td>
                                <td class="txt-center">
									0부
                                </td>
                            </tr>
                            <tr>
                                <th colspan="2">영어</th>
                                <td class="txt-center">
									미신청
                                </td>
                                <td class="txt-center">
									0부
                                </td>
                            </tr>
                            <tr>
                                <th rowspan="4">과학</th>
                                <th>물리Ⅰ</th>
                                <td class="txt-center">
									미신청
                                </td>
                                <td class="txt-center">
									0부
                                </td>
                            </tr>
                            <tr>
                                <th>화학Ⅰ</th>
                                <td class="txt-center">
                                    미신청
                                </td>
                                <td class="txt-center">
									0부
                                </td>
                            </tr>
                            <tr>
                                <th>생명과학Ⅰ</th>
                                <td class="txt-center">
									미신청
                                </td>
                                <td class="txt-center">
									0부
                                </td>
                            </tr>
                            <tr>
                                <th>지구과학Ⅰ</th>
                                <td class="txt-center">
									미신청
                                </td>
                                <td class="txt-center">
									0부
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <!--// E : 서바이벌 모의고사 신청 과목 및 부수 -->

                    <div class="board-btn txt-center">
                        <a href="default.asp" class="btn btn-black">메인으로</a>
                    </div>
                </div>
                <!--// E : 신청내역 영역 -->
				<% End If %>
            </div>
        </div>
        <!--// E : 컨텐츠 영역 -->
	</div>
    <!--// E : container -->
</div>
<!--// E : wrap -->
</body>
</html>

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">
</script>
<!--// E : 페이지별 스크립트 -->

<!--#include virtual="/totalWebSite/renew2019/sdijS/common/include/incFooter.asp"-->
