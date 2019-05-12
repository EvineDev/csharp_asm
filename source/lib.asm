.data
.code

DoNothing proc EXPORT
	ret
DoNothing endp

ModifyByPointer proc EXPORT
	mov edx, 10
	add [rcx], edx
	ret
ModifyByPointer endp

end
