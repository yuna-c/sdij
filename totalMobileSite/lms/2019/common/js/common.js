$(document).ready(function() {

  init();

  function init(){
     // rem 사용
      $( window ).resize(function(){
        var $width = $(window).width()
        var $fontsize = 24/600*$width

        $('html').css("font-size",$fontsize);
      });

      var $width = $(window).width()
      var $fontsize = 24/600*$width

      $('html').css("font-size",$fontsize);

      textHide();
  }


  //글자수
  function textHide(){
    $('.news-list li').each(function(e){
      var txt = $(this).find('p');
      var realTxt = txt.text().trim();
      var txtLen = realTxt.length;
      var titLen = 53;

      if(txtLen > titLen){
        txt.text(txt.text().trim().substr(0,titLen)+'...')
      };
    });
  };

  var listLen = $('.mento-list .swiper-slide').length;
  console.log(listLen);

  if(listLen > 6 ){
    var swiper = new Swiper('.mento-list', {
      slidesPerView: 6,
      spaceBetween: 0,
      // init: false,
      pagination: {
        el: '.swiper-pagination',
        clickable: false,
      }
    });
    $('.connected-list').addClass('act');
  }else{
    $('.connected-list').removeClass('act');
  }

});