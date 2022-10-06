$(function(){
    $('#container').fullpage({
        menu: '.lnb-main',
        anchors: ['main', 'feature', 'result', 'tutor', 'location', 'notice'],
        scrollingSpeed: 500,
        css3: true,

        afterLoad: function(obj, idx){
            if( obj === 'main' ){
                $('.video-main').find('video').get(0).play();
            }else if( obj === 'feature' ){
                slideCont.slideTo(0);
                slideCont.autoplay.start();
            }else if( obj === 'result' ){
                slideTab.slideTo(0);
                slideTab.autoplay.start();
            }else if( obj === 'tutor' ){
                // slideTeachers.autoplay.start();
            }
        },
    });

    // feature slide
    var slideCont = new Swiper('.feature-content .swiper-slide-cont', {
        pagination: {
            el: '.swiper-pager',
        },
        on: {
            slideChange: function(){
                slideBg.slideTo(slideCont.activeIndex);
            }
        },
        autoHeight: true,
        autoplay: {
            delay: 5000
        }
    });

    var slideBg = new Swiper('.feature-content .swiper-slide-back', {
        effect: 'fade',
        on: {
            slideChange: function(){
                slideCont.slideTo(slideBg.activeIndex);
            }
        }
    });


    // result slide
    var slideRecord = new Swiper('.result-content .swiper-slide-record', {
        on: {
            slideChange: function(){
                slideTab.slideTo(slideRecord.activeIndex);
            }
        },
        autoHeight: true,
        autoplay: {
            delay: 3000
        }
    });

    var slideTab = new Swiper('.result-content .swiper-slide-tab', {
        centeredSlides: true,
        slidesPerView: '5',
        on: {
            slideChange: function(){
                slideRecord.slideTo(slideTab.activeIndex);
            }
        }
    });


    // tutor slide
    var slideTeachers = new Swiper('.tutor-content .swiper-slide-teachers', {
        // effect: 'coverflow',
        centeredSlides: true,
        slidesPerView: '3',
        // coverflowEffect: {
        //     slideShadows: false,
        //     scale: .8,
        //     rotate: 0,
        // },
        loop: true,
        autoplay: {
            delay: 3000
        }
    });


    // location slide
    var slideLocation = new Swiper('.location-content .swiper-slide-location', {
        centeredSlides: true,
        slidesPerView: '4',
    });
});