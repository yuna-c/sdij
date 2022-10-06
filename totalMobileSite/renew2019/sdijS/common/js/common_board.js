	// 파일 다운로드
	var FlieDownload = function(file_url,bcd,fnm) {
		location.href= file_url + "/board_file_download.asp?bcd="+bcd+"&fnm="+fnm; 
	};

	//--------------------------------
	// 파일업로드 팝업
	//-------------------------------------
	var FlieUpPop = function(pop_url, form_id) {
		//closs domain
		document.domain = "sdij.com" ;

		var popWidth =  "600"
		var popHeight =  "200"
		var winHeight = document.body.clientHeight;	// 현재창의 높이
		var winWidth = document.body.clientWidth;	// 현재창의 너비
		var winX = window.screenLeft;	// 현재창의 x좌표
		var winY = window.screenTop;	// 현재창의 y좌표

		var popX = winX + (winWidth - popWidth)/2;
		var popY = winY + (winHeight - popHeight)/2;

		var tUrl = pop_url +"/board_front_fileup.asp";
		var tOpt = "width="+popWidth+"px,height="+popHeight+"px,top="+popY+",left="+popX;

		$("#"+form_id).one("submit", function() {
			window.open("","FlieUpPop",tOpt);
			this.action = tUrl;
			this.method = 'POST';
			this.target = 'FlieUpPop';
		}).trigger("submit");

		


	};
	
	var FlieUpPop2 = function(pop_url, form_id) {
		//closs domain
		document.domain = "sdij.com" ;

		var popWidth =  "600"
		var popHeight =  "200"
		var winHeight = document.body.clientHeight;	// 현재창의 높이
		var winWidth = document.body.clientWidth;	// 현재창의 너비
		var winX = window.screenLeft;	// 현재창의 x좌표
		var winY = window.screenTop;	// 현재창의 y좌표

		var popX = winX + (winWidth - popWidth)/2;
		var popY = winY + (winHeight - popHeight)/2;

		var tUrl = pop_url +"/board_front_fileup2.asp";
		var tOpt = "width="+popWidth+"px,height="+popHeight+"px,top="+popY+",left="+popX;

		$("#"+form_id).one("submit", function() {
			window.open("","FlieUpPop",tOpt);
			this.action = tUrl;
			this.method = 'POST';
			this.target = 'FlieUpPop';
		}).trigger("submit");

	};
	
	var FlieUpPop3 = function(pop_url, form_id) {
		//closs domain
		document.domain = "sdij.com" ;

		var popWidth =  "600"
		var popHeight =  "200"
		var winHeight = document.body.clientHeight;	// 현재창의 높이
		var winWidth = document.body.clientWidth;	// 현재창의 너비
		var winX = window.screenLeft;	// 현재창의 x좌표
		var winY = window.screenTop;	// 현재창의 y좌표

		var popX = winX + (winWidth - popWidth)/2;
		var popY = winY + (winHeight - popHeight)/2;

		var tUrl = pop_url +"/board_front_fileup3.asp";
		var tOpt = "width="+popWidth+"px,height="+popHeight+"px,top="+popY+",left="+popX;

		$("#"+form_id).one("submit", function() {
			window.open("","FlieUpPop",tOpt);
			this.action = tUrl;
			this.method = 'POST';
			this.target = 'FlieUpPop';
		}).trigger("submit");

		


	};