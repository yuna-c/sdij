$(function(){
    // dep-tab click
	$('.tab-dep1 > a').on('click', function(){
		var $tab = $(this).parent();
		var objIndex = $tab.children().index(this);

		$tab.children().removeClass('selected').eq(objIndex).addClass('selected');

		if( $tab.children().length == $tab.parent().children('.tab-content').length ){
			$tab.parent().children('.tab-content').hide().eq(objIndex).show();
		}
	});
});

// layer open
function fnOpenLayer(layer){ // fnOpenLaver(오픈하고 싶은 class or id)
	var $layer = $(layer);

	$layer.show().parents('.modal-wrap').fadeIn(500);

	$('.btn-close').on('click', function(){
		$layer.hide().parents('.modal-wrap').fadeOut(500);
	});

	return false;
}

// layer close
function fnCloseLayer(layer){ // fnCloseLaver(닫고 싶은 class or id)
	var $layer = $(layer);

	$layer.hide().parents('.modal-wrap').fadeOut(500);

	return false;
}

function readMore(obj){
	var $obj = $(obj);

	$obj.toggleClass('on');
}

function imageUpload(obj){
	var $obj = $(obj);

	// 버튼 변경 및 삭제 버튼 생성
	if( $obj.prev('.file-preview').hasClass('on') === false ){
		$obj.next('.btn').html('<i class="ico-magic"></i> 이미지 수정').parents('.input-image').append('<a href="javascript:void(0);" onclick="imageReset(this);" class="btn btn-disabled btn-M"><i class="ico-delete-g"></i> 이미지 삭제</a>');
	}
	
	// 이미지 미리보기
	if( obj.files && obj.files[0] ){
		var reader = new FileReader();

		reader.onload = function(e){
			$obj.prev('.file-preview').addClass('on').html('<img src="' + e.target.result + '" alt="파일 이미지 미리보기">');
		};

		reader.readAsDataURL(obj.files[0]);
	}
}

function imageReset(obj){
	var $obj = $(obj);
	var $input = $obj.siblings('input[type="file"]');
	var agent = navigator.userAgent.toLowerCase();

	if( (navigator.appName == 'Netscape' && navigator.userAgent.search('Trident') != -1) || (agent.indexOf("msie") != -1) ){ // ie
		$input.replaceWith($input.clone(true));
	}else{
		$input.val('');
	}       

	// 미리보기 이미지 삭제
	$input.prev('.file-preview').removeClass('on').empty();
	// 버튼 변경 및 삭제 버튼 삭제
	$obj.prev('.btn').html('<i class="ico-plus"></i> 이미지 업로드');
	$obj.remove();
}