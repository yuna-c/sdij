<%
'-----------------------------------------------------------------------
' 업 무 명 : 검색 > 검색필터
' 모듈기능 : 검색 > 검색필터
' 파 일 명 : pop.filter.asp
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

<!-- S : 컨텐츠 영역 -->
<div class="dim-full dim-fixed pop-filter">
    <div class="page-top">
        <a href="javascript:void(0);" class="pop-close"><span class="ico ico-pop-close">팝업창 닫기</span></a>

        <h4 class="pop-tit border-none">상세 필터</h4>
    </div>

    <div class="content-layout">
        <div class="dim-select">
            <div class="snb">
                <ul>
                    <li>
                        <a href="javascript:void(0);" class="snb-depth1 block selected ">시대인재S 커리큘럼</a>

                        <!-- 메뉴 펼칠 경우 class="on" 추가 -->
                        <div class="snb-depth2  filter type1 col2 on">
                            <label class="form-checkbox"><input type="checkbox" onclick="searchFilterCheck(this);"><span class="tit">Revival</span>
                            <span class="ico ico-checkbox"></span></label>
                            <label class="form-checkbox"><input type="checkbox" onclick="searchFilterCheck(this);"><span class="tit">ATG</span>
                            <span class="ico ico-checkbox"></span></label>
                            <label class="form-checkbox"><input type="checkbox" onclick="searchFilterCheck(this);"><span class="tit">Shortcut</span>
                            <span class="ico ico-checkbox"></span></label>
                            <label class="form-checkbox"><input type="checkbox" onclick="searchFilterCheck(this);"><span class="tit">SURVIVAL</span>
                            <span class="ico ico-checkbox"></span></label>
                        </div>
                        <p class="stick"></p>
                    </li>
                    <li >
                        <a href="javascript:void(0);" class="snb-depth1 block selected">과목</a>

                        <ul class="snb-depth2  filter col1 on">
                            <li>
                                <a href="javascript:void(0);" class="snb-depth2-btn block">국어</a>
                                <div class="snb-depth3  filter type4 col2">
                                    <label class="form-checkbox"><input type="checkbox" onclick="searchFilterCheck(this);"><span class="tit">강기원</span>
                                    <span class="ico ico-checkbox"></span></label>
                                    <label class="form-checkbox"><input type="checkbox" onclick="searchFilterCheck(this);"><span class="tit">박종민</span>
                                    <span class="ico ico-checkbox"></span></label>
                                    <label class="form-checkbox"><input type="checkbox" onclick="searchFilterCheck(this);"><span class="tit">엄소연</span>
                                    <span class="ico ico-checkbox"></span></label>
                                    <label class="form-checkbox"><input type="checkbox" onclick="searchFilterCheck(this);"><span class="tit">홍길동</span>
                                    <span class="ico ico-checkbox"></span></label>
                                </div>
                            </li>
                            <li>
                                <a href="javascript:void(0);" class="snb-depth2-btn block">국어</a>
                                <div class="snb-depth3  filter type4 col2">
                                    <label class="form-checkbox"><input type="checkbox" onclick="searchFilterCheck(this);"><span class="tit">강기원</span>
                                    <span class="ico ico-checkbox"></span></label>
                                    <label class="form-checkbox"><input type="checkbox" onclick="searchFilterCheck(this);"><span class="tit">박종민</span>
                                    <span class="ico ico-checkbox"></span></label>
                                    <label class="form-checkbox"><input type="checkbox" onclick="searchFilterCheck(this);"><span class="tit">엄소연</span>
                                    <span class="ico ico-checkbox"></span></label>
                                    <label class="form-checkbox"><input type="checkbox" onclick="searchFilterCheck(this);"><span class="tit">홍길동</span>
                                    <span class="ico ico-checkbox"></span></label>
                                </div>
                            </li>
                        </ul>
                        <p class="stick"></p>
                    </li>
                    <li class="curri-wrap">
                        <a href="javascript:void(0);" class="snb-depth1 block selected">월별 커리큘럼</a>
                        <ul class="snb-depth2 on"><!-- 메뉴 펼칠 경우 class="on" 추가 -->
                            <li class=" filter type3 col1 all-wrap">
                                <label><input type="checkbox" class="check-all" onclick="searchCurriCheck(this);">전체선택
                                <span class="ico ico-checkbox"></span></label>
                            </li>
                            <li class=" filter type1 col3 ">
                                <label class="form-checkbox">
                                    <input type="checkbox" onclick="searchFilterCheck(this);">
                                    <span class="tit">1월</span>
                                    <span class="ico ico-checkbox"></span>
                                </label>
                                <label class="form-checkbox">
                                    <input type="checkbox" onclick="searchFilterCheck(this);">
                                    <span class="tit">2월</span>
                                    <span class="ico ico-checkbox"></span>
                                </label>
                                <label class="form-checkbox">
                                    <input type="checkbox" onclick="searchFilterCheck(this);">
                                    <span class="tit">3월</span>
                                    <span class="ico ico-checkbox"></span>
                                </label>
                                <label class="form-checkbox">
                                    <input type="checkbox" onclick="searchFilterCheck(this);">
                                    <span class="tit">4월</span>
                                    <span class="ico ico-checkbox"></span>
                                </label>
                                <label class="form-checkbox">
                                    <input type="checkbox" onclick="searchFilterCheck(this);">
                                    <span class="tit">5월</span>
                                    <span class="ico ico-checkbox"></span>
                                </label>
                                <label class="form-checkbox">
                                    <input type="checkbox" onclick="searchFilterCheck(this);">
                                    <span class="tit">6월</span>
                                    <span class="ico ico-checkbox"></span>
                                </label>
                                <label class="form-checkbox">
                                    <input type="checkbox" onclick="searchFilterCheck(this);">
                                    <span class="tit">7월</span>
                                    <span class="ico ico-checkbox"></span>
                                </label>
                                <label class="form-checkbox">
                                    <input type="checkbox" onclick="searchFilterCheck(this);">
                                    <span class="tit">8월</span>
                                    <span class="ico ico-checkbox"></span>
                                </label>
                                <label class="form-checkbox">
                                    <input type="checkbox" onclick="searchFilterCheck(this);">
                                    <span class="tit">9월</span>
                                    <span class="ico ico-checkbox"></span>
                                </label>
                                <label class="form-checkbox">
                                    <input type="checkbox" onclick="searchFilterCheck(this);">
                                    <span class="tit">10월</span>
                                    <span class="ico ico-checkbox"></span>
                                </label>
                                <label class="form-checkbox">
                                    <input type="checkbox" onclick="searchFilterCheck(this);">
                                    <span class="tit">11월</span>
                                    <span class="ico ico-checkbox"></span>
                                </label>
                                <label class="form-checkbox">
                                    <input type="checkbox" onclick="searchFilterCheck(this);">
                                    <span class="tit">12월</span>
                                    <span class="ico ico-checkbox"></span>
                                </label>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <div class="board-btn page-btn">
        <button type="button" class="btn btn-lightgray btn-cancle init" onclick="initFilter();">선택 초기화</button>
        <a href="javascript:void(0);" class="btn btn-black btn-confirm">검색</a>
    </div>
</div>
<!--// E : 컨텐츠 영역 -->

<!-- S : 페이지별 스크립트 -->
<script type="text/javascript">
<!--
    // swiper 객체가 2개라서 같은 클래스명을 쓰는것이 존재 container 클래스로 조정할때 주의해야합니다

    var swiper = new Swiper('.swiper-container', {
      slidesPerView: 'auto', // 한페이지에 보이는개수
      spaceBetween: 10, // 필터박스 margin-right값
      observer: true,
      observeParents: true
    });

    var swiper2 = new Swiper('.swiper-container-1', {
      slidesPerView: 'auto', // 한페이지에 보이는개수
      spaceBetween: 10, // 필터박스 margin-right값
    });

    $(function(){

        // snb button
        $('.snb-depth1').on('click', function(){
            $(this).toggleClass('selected');
            $(this).next('.snb-depth2').slideToggle(500);
        });

        $('.snb-depth2-btn').on('click', function(){
            $(this).toggleClass('selected');
            $(this).next('.snb-depth3').slideToggle(500);
        });

        $('.filter input').on('click', function(){
            if ($(this).parents().hasClass('all-wrap') === false ){ //전체체크가 아닌것들만 적용
                $(this).parent().toggleClass('on');
            }
    	});


    });

    // 전체 선택 클릭 시
    function searchCurriCheck(obj){
        var $obj = $(obj);
        var $objCheck = $obj.prop('checked');
        var $checkObj = $obj.parents('ul').children('li').children('.form-checkbox').find('input[type="checkbox"]');

        $('.all-wrap').find('label').toggleClass('on');

        // 하단 월 check
        $checkObj.each(function(){
            if( $(this).prop('checked') != $objCheck ){
                $(this).trigger('click');
            }
        });
    }


    // 필터 check 시
    function searchFilterCheck(obj){
        var $obj = $(obj);
        var checkLabel = $obj.parent().find('.tit').text();
        var $hashAlign = $('.swiper-wrapper');

        // 필터 생성 영역 노출
        if( $hashAlign.parents('.hash-align').is(":visible") == false ){
            $hashAlign.parents('.hash-align').show();
        }

        // check 확인 후 hash버튼 생성
        if( $obj.prop('checked') === true ){
            swiper.appendSlide(['<div class="swiper-slide">' + '<button class="hash-txt"  onclick="searchFilterDel(this);">' +  '<span>' + checkLabel + '</span>' + '<span class="ico ico-x">' + '</span>' + '</button>' + '</div>']);
        }else{
            // 같은 값 확인 후 필터 버튼 삭제
            $hashAlign.find('button').filter(function(){
                if( $(this).text() === checkLabel ){
                    $(this).parent().remove();
                }
            });

            if( $obj.parents().hasClass('curri-wrap') === true ){
                $('.all-wrap').find('label').removeClass('on').find('input[type="checkbox"]').prop('checked', false);
            }

        }

        // 월별 check 시 전체 check
        if( $obj.parents('li').hasClass('curri-wrap') === true ){

            var $checkObj = $obj.parents('li').children('.form-checkbox');
            var countCheck = 0;

            for( i = 0; i < $checkObj.length; i++ ){
                if( $checkObj.eq(i).find('input[type="checkbox"]').prop('checked') ) countCheck++;
            }

            if( countCheck === 12 ){
                $('.all-wrap').find('input[type="checkbox"]').prop('checked', true);
                $('.all-wrap').find('label').addClass('on')
            }else{
                $('.all-wrap').find('input[type="checkbox"]').prop('checked', false);
                $('.all-wrap').find('label').removeClass('on')
            }
        }
    }

    function searchFilterDel(obj){
        var $obj = $(obj);
        var buttonLabel = $(obj).text();
        var $searchFilter = $('.pop-filter');

        // 검색 필터에서 해당 input check 해제
        $searchFilter.find('.form-checkbox').children('.tit').filter(function(){
            if( $(this).text() === buttonLabel ){
                $(this).siblings('input[type="checkbox"]').prop('checked', false);
                $(this).parent('label').removeClass('on');

                if( $(this).parents('li').siblings().hasClass('all-wrap') === true ){
                    $('.all-wrap').find('label').removeClass('on').find('input[type="checkbox"]').prop('checked', false);
                }
            }
        });

        // 자신 삭제
        $obj.parent().remove();
    }

    function initFilter(){
        var $all = $('.snb input');
        var $objAll = $('.swiper-container .swiper-wrapper');

        $all.prop('checked', false);
        $all.parent().removeClass('on');
        $objAll.children().remove();
    }

//-->
</script>
<!--// E : 페이지별 스크립트 -->
