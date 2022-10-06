<!-- S : SNB -->
<div class="mypage-snb">
    <ul class="float-area menu-box">
        <li class="fl selected">
            <a href="/totalWebSite/renew2019/sdijS/_mypage/default.asp" >
                <span class="ico ico-mypage-off"></span>
                <span class="menu-txt">My Page</span>
            </a><!-- 진입 페이지 메뉴 class="selected" 추가 -->
        </li>
        <li class="fl">
            <a href="/totalWebSite/renew2019/sdijS/_mypage/lecture/default.asp">
                <span class="ico ico-mylecture-off"></span>
                <span class="menu-txt">My lecture</span>
            </a>
        </li>
        <li class="fl">
            <a href="#">
                <span class="ico ico-owl-off"></span>
                <span class="menu-txt">부엉이포스트</span>
            </a>
        </li>
        <li class="fl">
            <a href="/totalWebSite/renew2019/sdijS/_pay/cart/cart.asp">
                <span class="ico ico-cart-off"></span>
                <span class="menu-txt">장바구니</span>
            </a>
        </li>
        <li class="fl">
            <a href="/totalWebSite/renew2019/sdijS/_mypage/order/order_check.asp">
                <span class="ico ico-delivery-off"></span>
                <span class="menu-txt">주문/배송조회</span>
            </a>
        </li>
        <li class="fl">
            <a href="/totalWebSite/renew2019/sdijS/_cs/faq.asp">
                <span class="ico ico-cs-off"></span>
                <span class="menu-txt">고객센터</span>
            </a>
        </li>
    </ul>
</div>


<script type="text/javascript">
    $(function(){
        $('.menu-box li a').on('click', function(){
            $(this).parent().addClass('selected').siblings().removeClass('selected');
        });
    });
</script>
<!--// E : SNB -->
