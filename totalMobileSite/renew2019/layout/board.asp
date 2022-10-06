<!--#include virtual="/totalMobileSite/renew2019/common/include/incHeader.asp"-->

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <!-- S : page-loc -->
    <div class="page-loc float-area">
        <div class="fl">
            <a href="javascript:history.back();">&lt; Back</a>
        </div>

        <div class="fr">
            <select class="select">
                <option value="선택">선택</option>
                <option value="옵션1">옵션1</option>
            </select>
        </div>
    </div>
    <!--// E : page-loc -->

    <div class="content-layout">
        <!-- S : gallery-list -->
        <div class="gallery-list">
            <ul class="float-area">
                <% For i=1 To 3 %>
                <li>
                    <a href="#">
                        <span class="menu-txt">커리큘럼</span>
                        <span class="more-txt">more &gt;</span>
                    </a>
                </li>
                <% next %>
                <li class="list-banner">
                    <a href="#"><img src="<%=URL_IMG%>/banner/main_banner.png" alt="Meet Our Optimum Contents System 시대인재의 만점 구조 시스템"></a>
                </li>
            </ul>
        </div>
        <!--// E : gallery-list -->

        <!-- S : 관련 컨텐츠 -->
        <div class="gallery-list gallery-content">
            <ul class="float-area">
                <li>
                    <a href="#">
                        <span class="menu-txt">관련컨텐츠1</span>
                        <span class="more-txt">more &gt;</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="menu-txt">관련컨텐츠2</span>
                        <span class="more-txt">more &gt;</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="menu-txt">관련컨텐츠3</span>
                        <span class="more-txt">more &gt;</span>
                    </a>
                </li>
            </ul>
        </div>
        <!--// E : 관련 컨텐츠 -->
    </div>

    <!-- S : tit-layout -->
    <div class="tit-layout float-area">
        <div class="fl">
            타이틀
        </div>
        <div class="fr">
            내용
        </div>
    </div>
    <!--// E : tit-layout -->

    <div class="content-layout">
        <h2 class="page-tit">
            공지사항
            <small>시대인재 만점구조시스템을 통한 합격노하우를 만나보세요.</small>
        </h2>

        <!-- S : board-list : 게시판 리스트 -->
        <div class="board-list">
            <!-- S : board-btn -->
            <div class="board-btn">
                <a href="#" class="btn btn-sm btn-gray">지원결과 조회</a>
            </div>
            <!--// E : board-btn -->

            <table>
                <colgroup>
                    <col style="width:110px;">
                    <col style="width:auto;">
                    <col style="width:170px;">
                    <col style="width:110px;">
                    <col style="width:110px;">
                </colgroup>
                <thead>
                    <tr>
                        <th>구분</th>
                        <th class="tit-box">모집공고</th>
                        <th>모집기간</th>
                        <th>모집부문</th>
                        <th>지원하기</th>
                    </tr>
                </thead>
                <tbody>
                    <% For i=1 To 5 %>
                    <tr>
                        <td>강사모집</td>
                        <td class="tit-box">
                            <a href="#" class="tit-txt">dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd</a>
                        </td>
                        <td>18.12.08 ~ 18.12.31</td>
                        <td>신입/경력</td>
                        <td><a href="#" class="txt-link">지원하기</a></td>
                    </tr>
                    <tr>
                        <td>직원채용</td>
                        <td class="tit-box">
                            <a href="#" class="tit-txt">dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd</a>
                        </td>
                        <td>상시</td>
                        <td>신입</td>
                        <td>지원완료</td>
                    </tr>
                    <% Next %>
                </tbody>
            </table>
        </div>
        <!--// E : board-list : 게시판 리스트 -->

        <!-- S : board-pager : 페이지 버튼 -->
        <div class="board-pager">
            <a href="javascript:void(0);"><span class="ico ico-page-prev2">이전 10개 페이지</span></a>
            <a href="javascript:void(0);"><span class="ico ico-page-prev">이전 페이지</span></a>
            
            <div class="pager-num">
                <% For i=1 To 10 %>
                <a href="javascript:void(0);" <% If i=1 Then Response.Write " class=""on""" %>><%= i %></a>
                <% Next %>
            </div>

            <a href="javascript:void(0);"><span class="ico ico-page-next">다음 페이지</span></a>
            <a href="javascript:void(0);"><span class="ico ico-page-next2">다음 10개 페이지</span></a>
        </div>
        <!--// E : board-pager : 페이지 버튼 -->

        <!-- S : board-view : 게시글 뷰 -->
        <div class="board-view">
            <table>
                <colgroup>
                    <col style="width:auto;">
                </colgroup>
                <thead>
                    <tr>
                        <th>
                            <h3 class="board-tit">ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd</h3>
                            <div>
                                작성자 <span>시대인재</span>
                                작성일 <span>2019-01-01</span>
                            </div>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="txt-box">
                            dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
                            <img src="http://via.placeholder.com/950x100" alt=" ">
                        </td>
                    </tr>
                </tbody>
            </table>

            <!-- S : board-btn -->
            <div class="board-btn">
                <a href="#" class="btn btn-sm btn-gray">리스트</a>
            </div>
            <!--// E : board-btn -->
        </div>
        <!--// E : board-view : 게시글 뷰 -->

        <!-- S : board-tab -->
        <div class="board-tab">
            <div class="tab-list">
                <a href="javascript:void(0);" class="selected">자연계</a>
                <a href="javascript:void(0);">인문계</a>
            </div>
            <div class="tab-content tab-on">
                <div class="content-box">
                    컨텐츠 1
                </div>

                <!-- S : board-btn -->
                <div class="board-btn txt-left">
                    <a href="#" class="btn btn-download">PDF 다운받기</a>
                    <a href="#" class="btn btn-print">인쇄하기</a>
                </div>
                <!--// E : board-btn -->
            </div>
            <div class="tab-content">
                <div class="content-box">
                    <img src="http://via.placeholder.com/1000x500/626262/626262/" alt="컨텐츠 이미지">
                </div>

                <!-- S : board-btn -->
                <div class="board-btn txt-left">
                    <a href="#" class="btn btn-download">PDF 다운받기</a>
                </div>
                <!--// E : board-btn -->
            </div>
        </div>
        <!--// E : board-tab  -->

        <!-- S : board-video -->
        <div class="board-video">
           <div class="float-area">
               <div class="profile-content fl">
                    <div class="data-img"><img src="http://via.placeholder.com/58x58/626262/626262/" alt="프로필 이미지"></div>
                    <div class="data-name">
                        김태현 학생
                        <span>시대인재 N 재수종합 D반</span>
                    </div>
                    <ul class="list-dotted">
                        <li>2018학년도  수능 전과목 만점자</li>
                        <li>자연계 최고득점 전국수석(백분위 기준)</li>
                        <li>국어, 수학, 물리 1, 생명과학 1(백분위 400)</li>
                        <li>영어 / 한국사 1등급</li>
                    </ul>
               </div>
               <div class="video-content fr">
                    <div class="vide-area">
                        <iframe width="100%" height="100%" src="http://www.youtube.com/embed/W1E4X_qCkhE?rel=0&amp;autoplay=1" frameborder="0" allowfullscreen=""></iframe>
                    </div>
               </div>
           </div>

           <div class="txt-content">
                “ 안녕하세요 이번에 수능 만점을 받게된 김태현이라고 합니다. 저는 평범하게 공부했지만, 몇 가지 공유할 만한 점들을 소개해 보도록 할께요. 수험 생활은 정말 길고 지루한 생활이고 아마 인생중에서 가장 스트레스를 많이 받는 시간
                중 하나가 아닐까 싶습니다. 하지만 결국 언젠가는 봄이 오게 되어 있고 수험 기간 동안 얼마나 잘 공부하냐에 따라서 그 봄을 얼마나 즐길 수 있냐가 결정 됩니다. 그러니까 후회할 일을 만들지 말고 수험 생활동안 가장 효율적으로 잘
                공부해서 좋은 성과를 거두었으면 좋겠습니다. ”

                <a href="#" class="btn btn-download btn-rightgray">다운받기</a>
           </div>
        </div>
        <!--// E : board-video  -->

        <!-- S : board-box -->
        <div class="board-box float-area">
            <div class="fl">
                <h3 class="board-tit">무시험 우선 선발</h3>

                <h4 class="dep-tit">기준조건</h4>
                <ul class="list-dotted">
                    <li>2018학년도 수능</li>
                    <li>국수(나) 백분위 합 191 이상</li>
                    <li>단, 영어 1등급 이상</li>
                </ul>

                <h4 class="dep-tit">접수기간</h4>
                <p class="list-dottea">5월 14일 (월) PM 10:00 ~ 선착순 마감 시 까지</p>
            </div>
            <div class="box-end fr"><!-- 접수 마감 시 class="box-end" -->
                <h3 class="board-tit">무시험 성적 선발</h3>

                <h4 class="dep-tit">기준조건</h4>
                <ul class="list-dotted">
                    <li>2018학년도 수능</li>
                    <li>국수(나) 백분위 합 191 이상</li>
                    <li>단, 영어 1등급 이상</li>
                </ul>

                <h4 class="dep-tit">접수기간</h4>
                <p class="list-dottea">5월 14일 (월) PM 10:00 ~ 선착순 마감 시 까지</p>
            </div>
        </div>
        <!--// E : board-box  -->

        <!-- S : board-list -->
        <div class="board-list">
            <table>
                <colgroup>
                    <col style="width:110px;">
                    <col style="width:auto;">
                </colgroup>
                <thead>
                    <tr>
                        <th>구분</th>
                        <th>탈퇴조건</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><div class="txt-box">
                            dddddddddddddddddddddddddddddddddddddddddddddddd
                        </div></td>
                        <td><div class="txt-box">
                            dddddddddddddddddddddddddddddddddddddddddddddddd
                        </div></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!--// E : board-list -->

        <!-- S : board-toggle -->
        <div class="board-toggle float-area">
            <div class="tab-list fl">
                <a href="javascript:void(0);" class="selected">시기별 학습법</a>
                <a href="javascript:void(0);">주제별 학습법</a>
            </div>
            <div class="tab-content tab-on fr">
                <dl class="list-toggle">
                    <dt class="selected"><a href="javascript:void(0);">제목1111</a></dt>
                    <dd class="on"><div class="txt-box">
                        내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
                    </div></dd>
                    <% For i=1 To 5 %>
                    <dt><a href="javascript:void(0);">제목1111</a></dt>
                    <dd><div class="txt-box">
                        내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
                    </div></dd>
                    <% next %>
                </dl>
            </div>
            <div class="tab-content fr">
                <dl class="list-toggle">
                    <dt class="selected"><a href="javascript:void(0);">제목2222</a></dt>
                    <dd class="on"><div class="txt-box">
                        내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
                    </div></dd>
                    <% For i=1 To 5 %>
                    <dt><a href="javascript:void(0);">제목2222</a></dt>
                    <dd><div class="txt-box">
                        내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
                    </div></dd>
                    <% next %>
                </dl>
            </div>
        </div>
        <!--// E : board-toggle  -->
    </div>

    <div class="form-layout">
        <!-- S : form-small -->
        <div class="form-small">
            <table>
                <colgroup>
                    <col style="width:auto;">
                    <col style="width:auto;">
                    <col style="width:auto;">
                    <col style="width:auto;">
                </colgroup>
                <tbody>
                    <tr>
                        <th colspan="4">아이디 찾기</th>
                    </tr>
                    <tr>
                        <td colspan="4"><input type="text" class="input-text" placeholder="이름"></td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <select class="select">
                                <option value="선택">선택</option>
                                <option value="옵션1">옵션1</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <select class="select">
                                <option value="010">010</option>
                            </select>
                        </td>
                        <td><input type="text" maxlength="4" class="input-text"></td>
                        <td><input type="text" maxlength="4" class="input-text"></td>
                        <td><input type="submit" value="인증번호 받기" class="btn btn-black"></td>
                    </tr>
                    <tr class="btn-line">
                        <td colspan="4"><input type="submit" value="확인" class="btn btn-black btn-strong"></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!--// E : form-small -->

        <!-- S : form-small -->
        <div class="form-small">
            <table>
                <colgroup>
                    <col style="width:auto;">
                    <col style="width:auto;">
                </colgroup>
                <tbody>
                    <tr>
                        <th colspan="2"><strong class="tit">입력하신 정보와 일치하는 아이디는 <span>flew****</span>입니다.</strong></th>
                    </tr>
                    <tr>
                        <td class="txt-box" colspan="2">ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd</td>
                    </tr>
                    <tr class="btn-line">
                        <td><input type="submit" value="휴대폰으로 받기" class="btn btn-black"></td>
                        <td><input type="submit" value="이메일로 받기" class="btn btn-black"></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!--// E : form-small -->

        <!-- S : form-list : 리스트 -->
        <div class="form-list">
            <table>
                <colgroup>
                    <col style="width:70px;">
                    <col style="width:auto;">
                </colgroup>
                <tbody>
                    <tr>
                        <th>공지</th>
                        <td>시대인재 N 입학원서는 온라인 접수 또는 방문접수만 가능합니다 (우편접수 불가)</td>
                    </tr>
                    <tr>
                        <th>방문접수</th>
                        <td>서울 강남구 대치동 611 (강남대학교 카이로스 빌딩 2층)</td>
                    </tr>
                    <tr>
                        <th>전화문의</th>
                        <td>02-538-2321</td>
                    </tr>
                    <tr>
                        <th>기타</th>
                        <td>성적표 제출 필수입니다</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!--// E : form-list : 리스트 -->
    
        <!-- S : form-defult : 기본폼 -->
        <div class="form-defult">
            <table>
                <colgroup>
                    <col style="width:auto;">
                    <col style="width:auto;">
                    <col style="width:auto;">
                    <col style="width:auto;">
                </colgroup>
                <tbody>
                    <tr>
                        <th>이름 *</th>
                        <td colspan="3"><input type="text" class="input-text" placeholder="이름" readonly></td>
                    </tr>
                    <tr>
                        <th>아이디 *</th>
                        <td colspan="2"><input type="text" class="input-text" placeholder="6자 이상의 영문, 영문+숫자 조합"></td>
                        <td><input type="button" value="중복확인" class="btn btn-black"></td>
                    </tr>
                    <tr>
                        <th>생년월일 *</th>
                        <td>
                            <select class="select">
                                <option value="선택">선택</option>
                                <option value="옵션1">옵션1</option>
                            </select>
                        </td>
                        <td>
                            <select class="select" >
                                <option value="선택">선택</option>
                                <option value="옵션1">옵션1</option>
                            </select>
                        </td>
                        <td>
                            <select class="select">
                                <option value="선택">선택</option>
                                <option value="옵션1">옵션1</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th>성별 *</th>
                        <td colspan="3">
                            <label class="radio">
                                <input type="radio">
                                <span>남</span>
                            </label>
                            <label class="radio">
                                <input type="radio">
                                <span>여</span>
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <th>이메일 *</th>
                        <td><input type="text" class="input-text"></td>
                        <td colspan="2">
                            <select class="select">
                                <option value="선택">선택</option>
                                <option value="옵션1">옵션1</option>
                            </select>
                        </td>
                    </tr>
                    <tr class="info-txt">
                        <th>&nbsp;</th>
                        <td colspan="3">
                            <span class="txt">상품, 입시정보, 이벤트 정보 등을 SMS로 받음</span>
                            <label class="radio">
                                <input type="radio">
                                <span>받음</span>
                            </label>
                            <label class="radio">
                                <input type="radio">
                                <span>받지않음</span>
                            </label>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!--// E : form-defult : 기본폼 -->

        <!-- S : form-agree : 이용약관 -->
        <div class="form-agree">
            <p class="agree-all">
                <label class="check">
                    <input type="checkbox">
                    <span>시대인재 사이트를 이용하기 위한 통합 이용약관, 정보 활용 및 개인정보<br>제 3자 제공에 모두 동의합니다.</span>
                </label>
            </p>

            <ul class="agree-list">
                <li>
                    <label class="check">
                        <input type="checkbox">
                        <span>시대인재 이용약관(필수)</span>
                    </label>
                    <button class="txt-link"></button>
                </li>
                <li>
                    <label class="check">
                        <input type="checkbox">
                        <span>시대인재 이용약관(필수)</span>
                    </label>
                    <button class="txt-link"></button>
                </li>
                <li>
                    <label class="check">
                        <input type="checkbox">
                        <span>시대인재 이용약관(필수)</span>
                    </label>
                    <button class="txt-link"></button>
                </li>
            </ul>

            <input type="submit" value="확인" class="btn btn-black btn-strong">
        </div>
        <!--// E : form-agree : 이용약관 -->

        <!-- S : list-dotted : 기본 리스트 -->
        <ul class="list-dotted">
            <li>2018학년도 수능</li>
            <li>국수(나) 백분위 합 191 이상</li>
            <li>단, 영어 1등급 이상</li>
        </ul>
        <!--// E : list-dotted : 기본 리스트 -->

        <!-- S : list-number : 기본 리스트 -->
        <ul class="list-number">
            <li>2018학년도 수능</li>
            <li>국수(나) 백분위 합 191 이상</li>
            <li>단, 영어 1등급 이상</li>
        </ul>
        <!--// E : list-number : 기본 리스트 -->
    </div>
</div>
<!--// E : 컨텐츠 영역 -->

<!--#include virtual="/totalMobileSite/renew2019/common/include/incFooter.asp"--> 