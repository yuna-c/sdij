
jQuery(document).ready(function(){
    // 지원 타입 선택
    $('.form-radio .radio input[type="radio"]').on('click', function(){
		if( $(this).prop('checked') ){
			$(this).parent().parent().addClass('selected').siblings('li').removeClass('selected');
		}
    });
    
    $('.file-preview input[type="file"]').change(function(){
        previewImg(this);
    });  
    
    $('.form-more-1 a').on('click', function(){
        var innerHtml = '<tr>';
            innerHtml += '<td>';
            innerHtml += '<input type="text" class="input-text input-text-mid">';
            innerHtml += '<select class="select select-mid">';
            innerHtml += '<option value="선택">선택</option>';
            innerHtml += '</select>';
            innerHtml += '</td>';
            innerHtml += '<td><input type="text" class="input-text"></td>';
            innerHtml += '<td>';
            innerHtml += '<input type="text" class="input-text input-text-xs">';
            innerHtml += '&nbsp;~&nbsp;';
            innerHtml += '<input type="text" class="input-text input-text-xs">';
            innerHtml += '</td>';
            innerHtml += '<td>';
            innerHtml += '<select class="select">';
            innerHtml += '<option value="선택">선택</option>';
            innerHtml += '</select>';
            innerHtml += '</td>';
            innerHtml += '</tr>';

        $(this).parent('.form-more').prev('.form-defult').find('table tbody').append(innerHtml);
    });

    $('.form-more-2 a').on('click', function(){
        var innerHtml = '<tr>';
            innerHtml += '<th>회사명</th>';
            innerHtml += '<th>근무부서</th>';
            innerHtml += '<th>직급(직책)</th>';
            innerHtml += '</tr>';
            innerHtml += '<tr>';
            innerHtml += '<td><input type="text" class="input-text"></td>';
            innerHtml += '<td><input type="text" class="input-text"></td>';
            innerHtml += '<td><input type="text" class="input-text"></td>';
            innerHtml += '</tr>';
            innerHtml += '<tr>';
            innerHtml += '<th>근무기간</th>';
            innerHtml += '<th colspan="2">담당업무</th>';
            innerHtml += '</tr>';
            innerHtml += '<tr>';
            innerHtml += '<td>';
            innerHtml += '<input type="text" class="input-text input-text-xs">';
            innerHtml += '&nbsp;~&nbsp;';
            innerHtml += '<input type="text" class="input-text input-text-xs">';
            innerHtml += '<select class="select select-xs">';
            innerHtml += '<option value="선택">선택</option>';
            innerHtml += '</select>';
            innerHtml += '</td>';
            innerHtml += '<td colspan="2"><input type="text" class="input-text"></td>';
            innerHtml += '</tr>';

        $(this).parent('.form-more').prev('.form-defult').find('table tbody').append(innerHtml);
    });

    $('.form-more-3 a').on('click', function(){
        var innerHtml = '<tr>';
            innerHtml += '<td><input type="text" class="input-text"></td>';
            innerHtml += '<td><input type="text" class="input-text"></td>';
            innerHtml += '<td>';
            innerHtml += '<select class="select">';
            innerHtml += '<option value="선택">선택</option>';
            innerHtml += '</select>';
            innerHtml += '</td>';
            innerHtml += '<td>';
            innerHtml += '<input type="text" class="input-text input-text-xs">';
            innerHtml += '&nbsp;~&nbsp;';
            innerHtml += '<input type="text" class="input-text input-text-xs">';
            innerHtml += '</td>';
            innerHtml += '</tr>';

        $(this).parent('.form-more').prev('.form-defult').find('table tbody').append(innerHtml);
    });
});

// 이미지 미리보기
function previewImg(input) {
    if( input.files && input.files[0] ){
        var reader = new FileReader();
        reader.onload = function(e){
            $('.file-preview .img').html('<img src="' + e.target.result + '" />');
        }
        reader.readAsDataURL(input.files[0]);
    }
}