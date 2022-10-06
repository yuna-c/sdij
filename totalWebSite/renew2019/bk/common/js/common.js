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