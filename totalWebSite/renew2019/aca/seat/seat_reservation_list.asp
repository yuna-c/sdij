<!--#include virtual="/totalWebSite/renew2019/common/include/incHeader.asp"-->

<!-- S : 컨텐츠 영역 -->
<div class="layout-container">
    <div class="page-loc float-area">
        <div class="fl">
            <a href="javascript:history.back();">&lt; Back</a>
        </div>
    </div>

    <h2 class="page-tit">
        강의실 입실번호 발급이력
    </h2>
    <div class="board-layout">
        <p class="mb50">
            - 입실번호를 클릭하면 번호표를 확인할 수 있습니다. <br/>
            - 입실번호는 영문+숫자3자리로 구성되며, <span class="txt-link color-red">A>B>C순으로 입장, 동일 알파벳 그룹내에서는 숫자가 빠른 순으로 입장합니다.</span><br/>
            &nbsp;&nbsp; (ex. B001번은 A의 마지막 번호가 입장 한 후 입실 가능)<br/>
            - 앞번호를 발급받았더라도 입실이 시작되면 번호 효력이 상실되며, 본인의 번호 순서에 입실할 수 없습니다.<br/>
            - 입실번호 신청정보는 SMS로 발송되며, 발급이력 조회에서도 핸드폰번호 인증 후 신청번호 조회가 가능합니다.<br/>
            - 입실번호는 어떤 사유로도 변경 또는 재발급 되지 않습니다.

        </p>

        <table class="class-list sm">
            <colgroup>
                <col width="10%" />
                <col width="28%" />
                <col width="10%" />
                <col width="12%" />
                <col width="12%" />
                <col width="8%" />
                <col width="20%" />
            </colgroup>
            <thead>
                <tr>
                    <th>선생님</th>
                    <th>수업명</th>
                    <th>수업회차</th>
                    <th>수업일시</th>
                    <th>입실번호</th>
                    <th>상태</th>
                    <th>신청기간</th>
                </tr>
            </thead>
            <tbody>
              <tr>
                  <td>현우진</td>
                  <td>수능 최상위반 미적분 2</td>
                  <td>5회차</td>
                  <td>2019-02-09<br/>13:30</td>
                  <td>
                      <a href="#" class="b txt-link" onclick="db_pop('pop_05','500','400'); return false;">C001</a>
                  </td>
                  <td>입실대기</td>
                  <td>2019-01-01 11:00:00</td>
              </tr>
              <tr>
                  <td>현우진</td>
                  <td>수능 최상위반 미적분 2</td>
                  <td>3회차</td>
                  <td>2019-02-09<br/>13:30</td>
                  <td>
                      <a href="#" class="b txt-link" onclick="db_pop('pop_05','500','400'); return false;">&nbsp;</a>
                  </td>
                  <td>입실대기</td>
                  <td>2019-01-01 11:00:00</td>
              </tr>
              <tr>
                  <td>현우진</td>
                  <td>수능 최상위반 미적분 2</td>
                  <td>7회차</td>
                  <td>2019-02-09<br/>13:30</td>
                  <td>
                      <a href="#" class="b txt-link" onclick="db_pop('pop_05','500','400'); return false;">B123</a>
                  </td>
                  <td>입실종료</td>
                  <td>-</td>
              </tr>
              <tr>
                  <td>현우진</td>
                  <td>수능 최상위반 미적분 2</td>
                  <td>9회차</td>
                  <td>2019-02-09<br/>13:30</td>
                  <td>
                      <a href="#" class="b txt-link" onclick="db_pop('pop_05','500','400'); return false;">A002</a>
                  </td>
                  <td>입실종료</td>
                  <td>2019-01-01 11:00:00</td>
              </tr>
            </tbody>
        </table>
    </div>

</div>
<!--// E : 컨텐츠 영역 -->

<!--#include virtual="/totalWebSite/renew2019/common/include/incFooter.asp"-->

<script type="text/javascript">
    var db_pop = function(url,w,h){
        var winHeight = document.body.clientHeight; // 현재창의 높이
        var winWidth = document.body.clientWidth;   // 현재창의 너비
        var winX = window.screenLeft;   // 현재창의 x좌표
        var winY = window.screenTop;    // 현재창의 y좌표

        var popX = winX + (winWidth - w)/2;
        var popY = winY + (winHeight - h)/2;

        var tUrl = "./"+url+".asp";
        var tOpt = "width="+w+"px,height="+h+"px,top="+popY+",left="+popX+",scrollbars = no";

        window.open(tUrl,"",tOpt);

    };

</script>