<%
	Sub fn_live_lec_list(ByVal vList, ByVal vListCnt, ByVal lecture_code) 
		Dim listCount
%>
		<div class="board-lec">
			<table>
				<colgroup>
					<col style="width:120px;">
					<col style="width:80px;">
					<col style="width:auto;">
					<col style="width:140px;">
					<col style="width:120px;">
					<col style="width:140px;">
				</colgroup>
				<thead>
					<tr>
						<th>과목</th>
						<th>강사</th>
						<th>수업명</th>
						<th>라이브날짜/시간</th>
						<th>개강일</th>
						<th>가격</th>
					</tr>
				</thead>
				<tbody>
				<%
						listCount = 0
						If IsArray(vList) Then
							For i=0 To vListCnt
								TOTAL_CNT           = vList(0,i)
								CM_CHR_CD           = vList(1,i)
								CM_CHR_NM           = vList(2,i)
								CM_EXAM_CD          = vList(3,i)
								EM_EXAM_NM          = vList(4,i)
								CM_SUB_CD           = vList(5,i)
								SD_DTL_NM           = vList(6,i)
								CM_TEC_ID           = vList(7,i)
								TM_TEC_NM           = vList(8,i)
								CM_SELL_PRC         = vList(9,i)
								CM_SELL_STAT        = vList(10,i)
								CM_SELL_STAT_NAME   = vList(11,i)
								SLM_LEV_NM          = vList(12,i)
								BM_BOOK_NM          = vList(13,i)
								CM_LEC_CNT          = vList(14,i)
								LM_LEC_MST_CNT      = vList(15,i)
								MTEST_NM            = vList(16,i)
								APP_USER_CNT        = vList(17,i)
								CM_SELL_SDT         = vList(18,i)
								SDT_WEEKDAY         = vList(19,i)
								SDT_WEEKDAY_NAME    = vList(20,i)
								LECTURE_AREA_CODE   = vList(21,i)
								LECTURE_AREA_NAME   = vList(22,i)
								CM_CHR_DES          = vList(23,i)

								If LECTURE_AREA_CODE = lecture_code Then
					%>
					<tr>
						<td class="txt-area"><%=LECTURE_AREA_NAME%></td>
						<td class="txt-area"><%=TM_TEC_NM%></td>
						<td class="lec-area">
							<div class="data-tit"><%=CM_CHR_NM%></div>
						</td>            
						<td class="txt-area"><%=CM_CHR_DES%></td>     
						<td class="txt-area"><%=Left(CM_SELL_SDT, 10)%>(<%=SDT_WEEKDAY_NAME%>)</td>
						<td class="price-area">
							<label class="form-checkbox">
								<input type="checkbox" name="chr_cd" value="<%=CM_CHR_CD%>">
								<span class="ico ico-checkbox"></span>
								<span class="price"><%=FormatNumber(CM_SELL_PRC,0)%>원</span>
							</label>
						</td>
					</tr>
					<%
									listCount = listCount + 1
								End If
							Next
						End If
					%>
					<%  If listCount = 0 Then %>
					<tr>
						<td class="no-data" colspan="6">강좌가 없습니다.</td>
					</tr>
					<%  End If %>
				</tbody>
			</table>
		</div>
<%
	End Sub
%>
