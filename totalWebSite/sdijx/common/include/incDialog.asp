<div class="dialog-wrap">
    <!-- S : dialog alert -->
    <div class="dialog-container dialog-alert">
        <div class="dialog-content">
            <p class="dialog-icon"><i class="ico-alert">!</i></p>
            <p class="dialog-txt"></p>
        </div>

        <div class="dialog-btn">
            <a href="javascript:void(0);" class="btn btn-black btn-confirm">확인</a>
        </div>
    </div>
    <!--// E : dialog alert -->

    <!-- S : dialog confirm -->
    <div class="dialog-container dialog-confirm">
        <div class="dialog-content">
            <p class="dialog-icon"><i class="ico-alert">!</i></p>
            <p class="dialog-txt"></p>
        </div>

        <div class="dialog-btn">
            <a href="javascript:void(0);" class="btn btn-gray btn-close">닫기</a>
            <a href="javascript:void(0);" class="btn btn-black btn-confirm">확인</a>
        </div>
    </div>
    <!--// E : dialog confirm -->

    <!-- S : dialog loading -->
    <div class="dialog-container dialog-loading">
        <div class="dialog-content">
            <p class="dialog-ani">
                <span class="ani1"></span>
                <span class="ani2"></span>
                <span class="ani3"></span>
            </p>
            <p class="dialog-txt">LOADING</p>
        </div>
    </div>
    <!--// E : dialog loading -->
</div>

<script>
    var modalDialog = {
        target : {
            alert : $('.dialog-alert'),
            confirm : $('.dialog-confirm'),
            loading : $('.dialog-loading')
        },

        show : function( target, mode, msg ){
            // target을 초기화 후 다시 셋팅
            var cloneObj;
            if( mode == 'alert' ) cloneObj = modalDialog.target.alert.clone();
            if( mode == 'confirm' ) cloneObj = modalDialog.target.confirm.clone();
            if( mode == 'loading' ) cloneObj = modalDialog.target.loading.clone();

            target.empty().append( cloneObj.html() );

            if( msg ) target.find('.dialog-txt').html( msg );

            fnOpenWrap();

            target.siblings().css('display','none');
            target.css('display', 'block').parents('.dialog-wrap').css('display', 'block');
        },

        // dialog alert
        alert : function( msg, callback ){
            modalDialog.show( modalDialog.target.alert, 'alert', msg );

            if( typeof callback != 'undefined' && callback ){
                $('.btn-confirm').click(function(){
                    $(this).parents('.dialog-wrap').css('display', 'none');
                    fnCloseWrap();
            
                    if( typeof callback == 'function' ){
                        callback();
                    }else{
                        if( callback ) {
                            if( callback.indexOf('(') == -1 ) eval( callback +'()');
                            else eval( callback );
                        } else {
                            if( typeof( confirmAfter ) == 'function' ) {
                                confirmAfter();
                            }
                        }
                    }
                    
                    $(this).unbind('click');
                });
            }else{
                $('.btn-confirm').click(function(e){
                    $(this).parents('.dialog-wrap').css('display', 'none');
                    fnCloseWrap();
                });
            }
        },

        // dialog confirm
        confirm : function( msg, callback ){
            modalDialog.show( modalDialog.target.confirm, 'confirm', msg );
        
            $('.btn-confirm').click(function(){
                $(this).parents('.dialog-wrap').css('display', 'none');
                fnCloseWrap();
        
                if( typeof callback == 'function' ){
                    callback();
                }else{
                    if( callback ){
                        if( callback.indexOf('(') == -1 ) eval( callback +'()');
                        else eval( callback );
                    }else{
                        if( typeof( confirmAfter ) == 'function' ){
                            confirmAfter();
                        }
                    }
                }
                
                $(this).unbind('click');
            });

            $('.btn-close').click(function(){
                $(this).parents('.dialog-wrap').css('display', 'none');
                fnCloseWrap();
            });
        },

        // dialog loading
        loading : function(){
            modalDialog.show( modalDialog.target.loading, 'loading' );
        },

        close : function(){
            $('.dialog-wrap').css('display', 'none');
            fnCloseWrap();
        }
    }
</script>