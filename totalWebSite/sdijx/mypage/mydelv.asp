<%
'-----------------------------------------------------------------------
' 업 무 명 : 시대인재 Digital > 배송지관리
' 모듈기능 : 시대인재 Digital > 배송지관리
' 파 일 명 : myDelv.asp
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
<!--#include virtual="/totalWebSite/sdijx/common/include/incMeta.asp"-->
<link rel="stylesheet" type="text/css" href="/totalWebSite/sdijx/common/css/mypage.css?ver=<%=Now()%>">
<script type="text/javascript" src="/totalWebSite/sdijx/common/js/lib/jquery.validate.js"></script>
<!--#include virtual="/totalWebSite/sdijx/common/include/incHeader.asp"-->

    <!-- S : container -->
    <section id="container" class="mydelv-container">
        <div class="content-layout">
            <h2 class="tit-dep1">
                <span class="tit">마이페이지</span>
            </h2>

            <!-- S : lnb -->
            <!--#include file="incLnb.asp"-->
            <!--// E : lnb -->

            <div class="tab-type2 border-none">
                <ul>
                    <li><a href="myInfo.asp">내정보관리</a></li>
                    <li><a href="myPw.asp">비밀번호관리</a></li>
                    <li class="selected"><a href="javascript:void(0);">배송지관리</a></li>
                </ul>
            </div>

            <div class="tab-content tab-on">
                <div class="btn-area txt-right mb10">
                    <a href="javascript:void(0)" onclick="fnOpenModal('.modal-add');" class="btn btn-gray btn-add"><i class="ico-plus"></i>&nbsp;배송지 추가</a>
                </div>

                <!-- S : 배송지 목록 리스트 -->
                <ul class="list-delivery">
                    <% for i = 1 to 10 %>
                    <li>
                        <div class="name-area">
                            <% if i = 1 then '기본 배송지에 노출 %><i class="ico-check"></i><% end if %>
                            홍길동
                        </div>
                        <div class="add-area">
                            <p>서울 강남구 강남대로 777(압구정동) 2층 101호</p>
                            <p>010-1234-5678</p>
                        </div>
                        <div class="btn-area">
                            <a href="javascript:void(0)" onclick="fnOpenModal('.modal-add');" class="txt-link">수정</a>
                            <a href="javascript:void(0)" onclick="modalDialog.confirm('배송지를 삭제하시겠습니까?');" class="txt-link color-red">삭제</a>
                        </div>
                    </li>
                    <% next %>
                </ul>
                <!--// E : 배송지 목록 리스트 -->

                <!-- S : 저장된 배송지가 없을 경우 -->
                <div class="no-data">
                    <i class="ico-house"></i>
                    <p>저장되어 있는 배송지가 없습니다.</p>
                </div>
                <!--// E : 저장된 배송지가 없을 경우 -->
            </div>
        </div>        
    </section>
    <!--// E : container -->

    <!-- S : modal -->
    <div class="modal-wrap">
        <div class="modal-bg"></div>

        <!-- S : 배송지 추가 -->
        <!--#include virtual="/totalWebSite/sdijx/pay/incModalAdd.asp"-->
        <!--// E : 배송지 추가 -->
    </div>
    <!--// E : modal -->

<!--#include virtual="/totalWebSite/sdijx/common/include/incFooter.asp"-->