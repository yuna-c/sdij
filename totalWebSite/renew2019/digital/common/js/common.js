$(function(){
	// tab click
	// $('.tab-type1 > a').on('click', function(){
	// 	$(this).addClass('selected').siblings().removeClass('selected');
	// });

	responsiveWab();
});

$(window).resize(function(){
	responsiveWab();
});

// modal open
function fnOpenModal(obj){ // fnOpenLaver(오픈하고 싶은 class or id)
	var $modal = $(obj);

	if( $modal.siblings().not('.modal-bg').length < 0 ){
        $modal.siblings().not('.modal-bg').hide();
    }

	$modal.show().parents('.modal-wrap').fadeIn(500);

	$('.btn-close').on('click', function(){
		$modal.hide().parents('.modal-wrap').fadeOut(500);
	});

	return false;
}

// modal close
function fnCloseModal(obj){ // fnCloseLaver(닫고 싶은 class or id)
	var $modal = $(obj);

	$modal.hide().parents('.modal-wrap').fadeOut(500);

	return false;
}

function responsiveWab(){
	var isMobile = /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent) ? true : false;

	if(isMobile){
		if( window.matchMedia("screen and (max-width:539px) and (orientation:portrait)").matches || window.matchMedia("screen and (max-width:959px) and (orientation:landscape)").matches ){ // mobile
			$('#wrap').removeClass().addClass('mobile-wrap');
		}else if( window.matchMedia("screen and (max-width:1024px) and (orientation:portrait)").matches || window.matchMedia("screen and (max-width:1336px) and (orientation:landscape)").matches ){ // tablets
			$('#wrap').removeClass().addClass('tablets-wrap');
		}else{ // pc
			$('#wrap').removeClass().addClass('pc-wrap');
		}
	}
}


/************************************************************************
	Description		:	null 체크
	Parameter		:	str(null체크할 값)
	Return			:	false(null일 경우)
						true(null이 아닐경우)
	Use				:	isNull(input1)

*************************************************************************/
function isNull(str){
	if (str == null) return true;
	if (str == "null") return true;
	if (str == "NaN") return true;
	if (new String(str).valueOf() == "undefined") return true;
	var chkStr = new String(str);
	if (chkStr.valueOf() == "undefined") return true;
	if (chkStr == null) return true;    
	if (chkStr.toString().trim().length == 0 ) return true;   
	return false; 
}
