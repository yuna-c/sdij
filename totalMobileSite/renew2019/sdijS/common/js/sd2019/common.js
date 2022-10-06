// 인증관련 Interval 변수
var InterValTimer = 0;
var setInterValTimer = null;

/* 스마트 에디터 전역변수 */
var oEditors = [];
var sLang = "ko_KR";	// 언어 (ko_KR/ en_US/ ja_JP/ zh_CN/ zh_TW), default = ko_KR

var nmReg =/^[가-힣]{2,10}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/;                                             // 한글, 영문만 사용
var idReg = /^[a-z]+[a-z0-9]{5,19}$/g;                                                                  // 영문자로 시작 및 영문, 숫자, 특수문자_ 만 사용
var regExp1 = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*$/;                                                     // 이메일 계정 체크
var regExp2 = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;                                     // 이메일 도메인 체크
//var pwReg = /^.*(?=.{8,20})(?=.*[0-9])(?=.*[a-zA-Z])(?=.*[!@#$%^&*()-_+=]).*$/;                       // 영문, 숫자, 특수문자 포함 비밀번호
var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;     // 이메일 한줄 텍스트 입력 시 사용




// 스마트 에디터
var IfEditorView = function(editorId) {
    nhn.husky.EZCreator.createInIFrame({
        oAppRef: oEditors,
        elPlaceHolder: editorId,
        sSkinURI: "/common/smarteditor2/SmartEditor2Skin.html",	
        htParams : {
            bUseToolbar : true,                             // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
            bUseVerticalResizer : false,                    // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
            bUseModeChanger : true,                         // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
            bSkipXssFilter : false,                         // client-side xss filter 무시 여부 (true:사용하지 않음 / 그외:사용)
            //aAdditionalFontList : aAdditionalFontSet,     // 추가 글꼴 목록
            fOnBeforeUnload : function(){
                // alert("완료!");
            },
            I18N_LOCALE : sLang
        }, //boolean
        fOnAppLoad : function(){
            // 예제 코드
            // oEditors.getById["ir1"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]);
        },
        fCreator: "createSEditor2"
    });
};

// 에디터 입력
var IfEditorInput = function(editorId) {
    oEditors.getById[editorId].exec("UPDATE_CONTENTS_FIELD", []);
};


// 인증번호받기
var IfGetNumberAuth = function(authHp, tTimer, smsGubun) {
    if (setInterValTimer != null) {
        clearInterval(setInterValTimer);
    }

    var params = "mode=GET";
        params += "&authHp=" + authHp;
        params += "&smsGubun=" + smsGubun;

    $.ajax({
        type: "POST",
        url: "/common/ajax/auth_number_proc.asp",
        timeout: 5000,
        data: params,
        async: false,
        dataType: "json",
        success: function(msg) {
            alert("인증번호가 발급되었습니다.");
            
            // 인증번호 발급키
            $("#authIdx").val(msg.status);

            // Timer 시간 만료 체크
            $("#authTimeFlag").val("Y");

            // Timer 계산
            IfIntervalTimer(tTimer);
        },
        error : function(data, msg) {
            alert("관리자에게 문의하세요.(" + msg + ")");
        }
    });
};

// 인증번호 시간계산
var IfIntervalTimer = function(tTimer) {
    var tMin = "0";
    var tSec = "00";
    InterValTimer = tTimer;
    
    setInterValTimer = setInterval(function() {
        InterValTimer -= 1;
        
        if (InterValTimer >= 0) {
            tMin = parseInt(InterValTimer / 60,0);
            tSec = parseInt(InterValTimer % 60,0);

            if (tSec < 10) {
                tSec = "0" + tSec;
            }
        }
    
        $("#authTimer").html(tMin + ":" + tSec);

        if (InterValTimer <= 0) {
            $("#authTimeFlag").val("N");
            clearInterval(setInterValTimer);
        } 
    }, 1000);
};

// 인증번호 확인 체크
var IfAuthConfirm = function(authHp) {
    var strStatus = 100;
    var authIdx = $("#authIdx").val();
    var authNumber = $("#authNumber").val();
    var authTimeFlag = $("#authTimeFlag").val();
    
    if (authNumber == "") {
        alert("인증번호를 입력하세요.");
        return false;
    }

    if (authTimeFlag == "N") {
        alert("인증번호를 확인해주세요.");
        return false;
    }

    var params = "mode=SET";
        params += "&authHp=" + authHp;
        params += "&authIdx=" + authIdx;
        params += "&authNumber=" + authNumber;

    $.ajax({
        type: "POST",
        url: "/common/ajax/auth_number_proc.asp",
        timeout: 5000,
        data: params,
        async: false,
        dataType: "json",
        success: function(msg) {
            strStatus = msg.status;
        },
        error : function(data, msg) {
            alert("관리자에게 문의하세요.(" + msg + ")");
            return false;
        }
    });

    if (strStatus != "200") {
        alert("인증번호가 잘못 입력되었습니다.");
        return false;
    }

    return true;
};

// 회원 중복 체크
var IfMemDuplicationCheck = function(memType, memHp) {
    var params = "memType=" + memType ;
        params += "&memHp=" + memHp;

    $.ajax({
        type: "POST",
        url: "/common/ajax/mem_duplication_proc.asp",
        timeout: 5000,
        data: params,
        async: false,
        dataType: "json",
        success: function(msg) {
            strStatus = msg.status;
        },
        error : function(data, msg) {
            alert("관리자에게 문의하세요.(" + msg + ")");
            return false;
        }
    });

    if (strStatus != "200") {
        alert("이미 등록되어 있는 핸드폰 번호입니다.");
        return false;
    }

    return true;
};

// Set Cookie
var setCookie = function(cname, cvalue, exdays) {
    var d = new Date();
    var expires = "";
    if (exdays != "") {
        d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
        expires = "expires="+d.toUTCString();
    }
    
    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/;"; 
};

// Get Cookie
var getCookie = function(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
};

// 메뉴 LNB 이동
var IfSiteLocation = function(site_cd) {
    /*
    if (site_cd == "905003") {
        alert("시대인재 Books는 9월 25일 오픈됩니다.  잠시만 기다려 주세요.");
        return;
    }
    */

    var expdate = new Date();
    setCookie("site_cd", "", expdate.getTime() - 1);
    setCookie("site_cd", site_cd, 1);
    if (site_cd == "905001"){
        location.href = "/on/";
    } else if (site_cd == "905002"){
        location.href = "/academy/";
    } else if (site_cd == "905003"){
        // location.href = "/mall/launching.asp";
        location.href = "/books/";
    } else if (site_cd == "905004") {
        location.href = "/jaejong/";
    } else{
        location.href = "/academy/";
    }
    //window.document.location.href = window.document.URL;
};

 //콤마찍기
function comma(str) {
    str = String(str);
    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
}

//콤마해제
function uncomma(str) {
    str = String(str);
    return str.replace(/[^\d]+/g, '');
}

//숫자만 입력 체크
function IsNumber(strNumber) {
    var reg = RegExp(/^(\d|-)?(\d|,)*\.?\d*$/);

    return reg .test(strNumber);
}

//1자리 숫자 앞에 0 붙이기
function itoStr(num) {
    num < 10 ? num = '0' + num : num;

    return num.toString();
}

// 텍스트 길이 확인 (Byte) 
function checkTextLenByte(obj, mLen) {
    var i, len;
    var byteLen = 0;
    var value = obj.value;

    for (i=0, len=value.length; i<len; i++) {
        ++byteLen;

        if ((value.charCodeAt(i) < 0) || (value.charCodeAt(i) > 127)) ++byteLen;

        if (byteLen > mLen) {
            alert("1~"+(mLen / 2)+"자의 한글, 또는 2~"+mLen+"자의 영문, 숫자, 문장기호로 입력이 가능합니다.");
            obj.value = value.substring(0, i);
            obj.focus();
            return false;
        }
    }
    
    return true;
}

// 공통 팝업1
var sdijPop1 = function(popUrl, popName, popWidth, popHeight) {
    var winHeight = document.body.clientHeight;
    var winWidth = document.body.clientWidth;
    var winX = window.screenLeft;
    var winY = window.screenTop;

    var popX = winX + (winWidth - popWidth)/2;
    var popY = winY + (winHeight - popHeight)/2;

    var popOpt = "width=" + popWidth + ", height=" + popHeight + ", top=" + popY + ",left=" + popX;

    window.open(popUrl, popName, popOpt);
};

// 공통 팝업2
var sdijPop2 = function(popUrl, popName, popWidth, popHeight) {
    var winHeight = document.body.clientHeight;
    var winWidth = document.body.clientWidth;
    var winX = window.screenLeft;
    var winY = window.screenTop;

    var popX = winX + (winWidth - popWidth)/2;
    var popY = winY + (winHeight - popHeight)/2;

    var popOpt = "width=" + popWidth + ", height=" + popHeight + ", top=" + popY + ",left=" + popX + ", scrollbars=yes";

    window.open(popUrl, popName, popOpt);
};

var IfOpenIng = function() {
    alert("곧, 서비스 예정입니다.");
};

// 서바이벌 상품 배송 및 환불 취소 규정 확인 팝업
var survial_guide = function() {
    sdijPop1("/on/svv/guide_pop.asp", "survial_guide", 755, 980);
};

$(function() {
    // 숫자만 입력
    $(".onlyNumber").css("imeMode","disabled").keypress(function(event) {
        if(event.which && (event.which < 48 || event.which > 57) ) {
            event.preventDefault();
        }
    }).keyup(function() {
        if ($(this).val() != null && $(this).val() != '') {
            $(this).val($(this).val().replace(/[^0-9]/g, ''));
        }
    });
    
    // maxlength 길이만큼만 적용(모바일에서는 maxlength가 적용되지 않는다.)
    $(".onlyMaxlength").css("imeMode","disabled").keyup(function() {
        if (this.value.length > this.maxLength){
            this.value = this.value.slice(0, this.maxLength);
        }
    });
});

// 택배사 주문조회
var delv = function(delv_num){
    // window.open('https://www.doortodoor.co.kr/parcel/doortodoor.do?fsp_action=PARC_ACT_002&fsp_cmd=retrieveInvNoACT&invc_no='+delv_num);

    window.open('http://nplus.doortodoor.co.kr/web/detail.jsp?slipno='+delv_num);
};

/*-----------------------------------------------------------------------
 업 무 명 : Daum 공통 지도 팝업
 모듈기능 : Daum 공통 지도 팝업
 작성일자 : 2017/03/28
 작 성 자 : 이재충
 변수내용 : mapAddr: 주소(필수), mapInfo: 정보
-----------------------------------------------------------------------
 변경일자   변경자  변동내역
-----------------------------------------------------------------------

-----------------------------------------------------------------------*/
var IfMapView = function(mapAddr, mapInfo) {
    //alert(mapAddr);
    var tUrl = "/common/daum_map.asp?mapAddr=" + mapAddr;
         tUrl += "&mapInfo=" + mapInfo;

    var tOpt = "width=530,height=530,scrollbars=no,toolbar=no,menubar=no,resizable=yes";

    window.open(tUrl, "mapPop", tOpt);
};


/*-----------------------------------------------------------------------
 업 무 명 : Daum 지도 빠른길 찾기
 모듈기능 : Daum 지도 빠른길 찾기
 작성일자 : 2017/07/11
 작 성 자 : 이재충
 변수내용 : mapAddr: 주소(필수), mapInfo: 정보
-----------------------------------------------------------------------
 변경일자   변경자  변동내역
-----------------------------------------------------------------------

-----------------------------------------------------------------------*/
var IfDaumMapRoad = function(mapAddr, mapInfo) {
    if (mapAddr == ""){
        mapAddr = "서울특별시 강남구 도곡로 460";
    }

    var mapLat = 37.498433599;
    var mapLng = 127.0606283384;
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
        mapOption = {
            center: new daum.maps.LatLng(mapLat, mapLng), // 지도의 중심좌표
            level: 3 // 지도의 확대 레벨
        };  

    // 지도를 생성합니다    
    var map = new daum.maps.Map(mapContainer, mapOption); 

    // 주소-좌표 변환 객체를 생성합니다
    var geocoder = new daum.maps.services.Geocoder();

    // 주소로 좌표를 검색합니다
    geocoder.addr2coord(mapAddr, function(status, result) {
        // 정상적으로 검색이 완료됐으면 
        if (status === daum.maps.services.Status.OK) {
            mapLat = result.addr[0].lat;
            mapLng = result.addr[0].lng;

            //var coords = new daum.maps.LatLng(result.addr[0].lat, result.addr[0].lng);
        }
    });
    
    var mapUrl = "http://map.daum.net/link/to/" + mapInfo + "," + mapLat + "," + mapLng;
    window.open(mapUrl);
};




/*-----------------------------------------------------------------------
 업 무 명 : 카카오멥 지도 검색 ( 새창 )
 모듈기능 : 카카오멥 지도 검색 ( 새창 )
 작성일자 : 2018/01/31
 작 성 자 : kym
 변수내용 : 검색어
-----------------------------------------------------------------------
 변경일자   변경자  변동내역
-----------------------------------------------------------------------

-----------------------------------------------------------------------*/
var IfKakaoMap = function(mapSearch) 
{
	var mapUrl = "http://map.daum.net/link/search/"+ mapSearch
	window.open(mapUrl);
}




/*-----------------------------------------------------------------------
 업 무 명 : Daum 공통 지도 Inner
 모듈기능 : Daum 공통 지도 Inner
 작성일자 : 2017/03/28
 작 성 자 : 이재충
 변수내용 : mapAddr: 주소(필수), mapInfo: 정보
-----------------------------------------------------------------------
 변경일자   변경자  변동내역
-----------------------------------------------------------------------

-----------------------------------------------------------------------*/
var IfDaumMapInner = function(mapAddr, mapInfo) {
    if (mapAddr == "") {
        mapAddr = "서울특별시 강남구 도곡로 460";
    }

    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
        mapOption = {
            center: new daum.maps.LatLng(37.498433599, 127.0606283384), // 지도의 중심좌표
            level: 3 // 지도의 확대 레벨
        };  

    // 지도를 생성합니다    
    var map = new daum.maps.Map(mapContainer, mapOption); 

    // 주소-좌표 변환 객체를 생성합니다
    var geocoder = new daum.maps.services.Geocoder();

    // 주소로 좌표를 검색합니다
    geocoder.addr2coord(mapAddr, function(status, result) {
        // 정상적으로 검색이 완료됐으면 
        if (status === daum.maps.services.Status.OK) {
            var coords = new daum.maps.LatLng(result.addr[0].lat, result.addr[0].lng);

            // 결과값으로 받은 위치를 마커로 표시합니다
            var marker = new daum.maps.Marker({
                map: map,
                position: coords
            });

            // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
            map.setCenter(coords);
        } else {
            var coords = new daum.maps.LatLng(37.498433599, 127.0606283384); // 지도의 기본 좌표

            // 결과값으로 받은 위치를 마커로 표시합니다
            var marker = new daum.maps.Marker({
                map: map,
                position: coords
            });

            // 인포윈도우로 장소에 대한 설명을 표시합니다
            if (mapInfo != "") {
                var infowindow = new daum.maps.InfoWindow({
                    content: '<div style="width:150px;text-align:center;padding:6px 0;"><h2>시대인재</h2></div>'
                });
                infowindow.open(map, marker);
            }

            // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
            map.setCenter(coords);
        }
    });
};

/*-----------------------------------------------------------------------
 업 무 명 : Daum 공통 우편번호
 모듈기능 : Daum 공통 우편번호
 작성일자 : 2017/03/28
 작 성 자 : 이재충
 변수내용 : sPost: 우편번호, sAddr1: 주소1
-----------------------------------------------------------------------
 변경일자   변경자  변동내역
-----------------------------------------------------------------------

-----------------------------------------------------------------------*/
var IfDAumPostCode = function(sPost, sAddr1) {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullAddr = ''; // 최종 주소 변수
            var extraAddr = ''; // 조합형 주소 변수

            // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                fullAddr = data.roadAddress;

            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                fullAddr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
            if(data.userSelectedType === 'R'){
                //법정동명이 있을 경우 추가한다.
                if(data.bname !== ''){
                    extraAddr += data.bname;
                }
                // 건물명이 있을 경우 추가한다.
                if(data.buildingName !== ''){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            $("#" + sPost).val(data.zonecode);
            $("#" + sAddr1).val(fullAddr);
        }
    }).open();
};



// 파일 다운로드
var IfFileDownload = function(sFolderCd, sDownFileNm, sFileNm) {
    document.domain = "sdij.com";

    var domain_url = "http://file.sdij.com";
    if (location.host == "dm.sdij.com") {
        domain_url = "http://dfile.sdij.com";
    }

    var tUrl = domain_url + "/file_download.asp?sFolderCd=" + sFolderCd;
        tUrl += "&sDownFileNm=" + sDownFileNm;
        tUrl += "&sFileNm=" + sFileNm;

    location.href = tUrl;
    /*
    document.getElementById('fileDown').src = tUrl;
      	document.getElementById('fileDown').location.reload();

    window.open(tUrl, '_blank');
    */
};

// 파일 다운로드 - 경로설정
var IfFilePathDownload = function(sFolderPath, sDownFileNm, sFileNm) {
    document.domain = "sdij.com";

    var domain_url = "http://file.sdij.com";
    if (location.host == "dm.sdij.com") {
        domain_url = "http://dfile.sdij.com";
    }

    var tUrl = domain_url + "/file_download.asp?sFolderPath=" + sFolderPath;
        tUrl += "&sDownFileNm=" + sDownFileNm;
        tUrl += "&sFileNm=" + sFileNm;


    location.href = tUrl;
    /*
    document.getElementById('fileDown').src = tUrl;
    document.getElementById('fileDown').location.reload();

    window.open(tUrl, '_blank');
    */
};

// 레이어 팝업 정렬
jQuery.fn.center = function () {
    this.css("position","absolute");
    this.css("top", Math.max(0, (($(window).height() - $(this).outerHeight()) / 2) + $(window).scrollTop()) + "px");
    this.css("left", Math.max(0, (($(window).width() - $(this).outerWidth()) / 2) + $(window).scrollLeft()) + "px");
    return this;
}


/*-----------------------------------------------------------------------
 업 무 명 : 상단 메뉴 대치, 분당 선택
 모듈기능 : 상단 메뉴 대치, 분당 선택
 작성일자 : 2017/07/24
 작 성 자 : 이재충
 변수내용 : 대치: 101, 분당: 102
-----------------------------------------------------------------------
 변경일자   변경자  변동내역
-----------------------------------------------------------------------

-----------------------------------------------------------------------*/
var IfCampusLocChange = function(campus_loc) {
    setCookie("campus_loc", campus_loc, 1);

    $('#tab_menu_camp').removeClass("deachi");
    $('#tab_menu_camp').removeClass("bundang");

    if (campus_loc == "101") {
        campus_class = "deachi"
    } else {
        campus_class = "bundang"
    }

    $('#tab_menu_camp').addClass(campus_class);
};

/*-----------------------------------------------------------------------
 업 무 명 : 모바일 에이전트 구분
 모듈기능 : 모바일 에이전트 구분
 작성일자 : 2017/07/19
 작 성 자 : 김성울
 변수내용 : 
 사용법 : 
		if(isMobile.any()){
			if(isMobile.Android()){
		 
			}else if(isMobile.IOS()){
				
			}else if(isMobile.BlackBerry()){
				
			}else if(isMobile.Opera()){
				
			}else if(isMobile.Windows()){
				
			}
		}

-----------------------------------------------------------------------
 변경일자   변경자  변동내역
-----------------------------------------------------------------------

-----------------------------------------------------------------------*/
var isMobile = {
	Android: function () {
			 return navigator.userAgent.match(/Android/i) == null ? false : true;
	},
	BlackBerry: function () {
			 return navigator.userAgent.match(/BlackBerry/i) == null ? false : true;
	},
	IOS: function () {
			 return navigator.userAgent.match(/iPhone|iPad|iPod/i) == null ? false : true;
	},
	Opera: function () {
			 return navigator.userAgent.match(/Opera Mini/i) == null ? false : true;
	},
	Windows: function () {
			 return navigator.userAgent.match(/IEMobile/i) == null ? false : true;
	},
	any: function () {
			 return (isMobile.Android() || isMobile.BlackBerry() || isMobile.IOS() || isMobile.Opera() || isMobile.Windows());
	}
};


/*-----------------------------------------------------------------------
 업 무 명 : 상단 메뉴 대치, 분당 선택
 모듈기능 : 상단 메뉴 대치, 분당 선택
 작성일자 : 2017/07/03
 작 성 자 : 이재충
 변수내용 : 대치: 101, 분당: 102
-----------------------------------------------------------------------
 변경일자   변경자  변동내역
-----------------------------------------------------------------------

-----------------------------------------------------------------------*/
var IfCampusLoc = function(campus_loc) {
    // var campus_loc = $("select[name='campus_loc'] option:selected").val();
    if (campus_loc == "") {
        campus_loc = "101";
    }

    setCookie("campus_loc", campus_loc, 1);

    document.location.href = "/aca/";
    /*
    url = "";
    if (window.document.URL.indexOf("?") != -1) {
      url = window.document.URL.split("?")[0];
    } else {
      url = window.document.URL;
    }
    window.document.location.href = url;
    */
};

