<%
' ######################################################################
'	Class name		: CryptBase64
'	Description		: Crypt Base64
' ######################################################################
Class CryptBase64
	Private MAP_INIT
	Private encMap(63)
	Private decMap(127)

	Private Sub Class_Initialize()
		Dim f, max

		MAP_INIT = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
		max = Len(MAP_INIT)

		For f = 0 To max - 1
			encMap(f) = Mid(MAP_INIT, f + 1, 1)
		Next
		For f = 0 To max - 1
			decMap(Asc(encMap(f))) = f
		Next
	End Sub

	Private Sub Class_Terminate()
		MAP_INIT = ""
	End Sub

	Public Function encrypt(ByVal value)
		Dim ndx, by3, first, secd, third
		Dim result

		value = escape(value)

		If Len(value) = 0 Then
			encrypt = ""
			Exit Function
		End If

		by3 = (Len(value) \ 3) * 3
		ndx = 1
		Do While ndx <= by3
			first  = Asc(Mid(value, ndx+0, 1))
			secd = Asc(Mid(value, ndx+1, 1))
			third  = Asc(Mid(value, ndx+2, 1))
			result = result & encMap((first \ 4) AND 63)
			result = result & encMap(((first * 16) AND 48) + ((secd \ 16) AND 15))
			result = result & encMap(((secd * 4) AND 60) + ((third \ 64) AND 3))
			result = result & encMap(third AND 63)
			ndx = ndx + 3
		Loop

		If by3 < Len(value) Then
			first  = Asc(Mid(value, ndx+0, 1))
			result = result & encMap((first \ 4) AND 63)
			If (Len(value) MOD 3) = 2 Then
				secd = Asc(Mid(value, ndx+1, 1))
				result = result & encMap(((first * 16) AND 48) + ((secd \ 16) AND 15))
				result = result & encMap(((secd * 4) AND 60))
			Else
				result = result & encMap((first * 16) AND 48)
				result = result &"="
			End If
			result = result &"="
		End If

		encrypt = result
	End Function

	Public Function decrypt(ByVal value)
		Dim ndx, by4, first, secd, third, fourth
		Dim realLen
		Dim result

		If Len(value) = 0 Then
			decrypt = ""
			Exit Function
		End If

		realLen = Len(value)
		Do While Mid(value, realLen, 1) = "="
			realLen = realLen - 1
		Loop

		On Error Resume Next

		result = ""
		by4 = (realLen \ 4) * 4
		ndx = 1

		Do While ndx <= by4
			first  = decMap(Asc(Mid(value, ndx+0, 1)))
			secd = decMap(Asc(Mid(value, ndx+1, 1)))
			third  = decMap(Asc(Mid(value, ndx+2, 1)))
			fourth = decMap(Asc(Mid(value, ndx+3, 1)))
			result = result & Chr(((first * 4) AND 255) + ((secd \ 16) AND 3))
			result = result & Chr(((secd * 16) AND 255) + ((third \ 4) AND 15))
			result = result & Chr(((third * 64) AND 255) + (fourth AND 63))
			ndx = ndx + 4
		Loop

		If ndx < realLen Then
			first  = decMap(Asc(Mid(value, ndx+0, 1)))
			secd = decMap(Asc(Mid(value, ndx+1, 1)))
			result = result & Chr(((first * 4) AND 255) + ((secd \ 16) AND 3))
			If realLen MOD 4 = 3 Then
				third = decMap(Asc(Mid(value,ndx+2,1)))
				result = result & Chr(((secd * 16) AND 255) + ((third \ 4) AND 15))
			End If
		End If

		If Err.Number = 0 Then
			decrypt = unescape(result)
		Else
			decrypt = ""
		End If
	End Function
End Class
%>
