$(function(){
	// tab click
	$('.tab-type1 > a').on('click', function(){
		$(this).addClass('selected').siblings().removeClass('selected');
	});

	$('.tab-icon ul > li').on('click', function(){
		var $this = $(this),
			$tab = $this.parent().parent(),
			thisIndex = $tab.children().children().index($this);

		$this.addClass('selected').siblings().removeClass('selected');

		if( $tab.find('li').length == $tab.parent().children('.tab-content').length ){
			$tab.parent().children('.tab-content').hide().eq(thisIndex).show();
		}
	});

});

// gnb open
function fnOpenGnb(obj){
    var $this = $(obj);

    if( $('#wrap').hasClass('gnb-on') ){
		$('#wrap').removeClass('gnb-on');
    }else{
		$('#wrap').addClass('gnb-on');
		
		$('#gnb .gnb-1depth').off().on('click', function(){		
			if( $(this).hasClass('selected') ){
				$(this).removeClass('selected');
			}else{
				$(this).addClass('selected').siblings().removeClass('selected');
			}
		});
	}
}

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
