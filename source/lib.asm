.data
.code

DoNothing proc
	ret
DoNothing endp

ModifyByPointer proc
	mov edx, 10
	add [rcx], edx
	ret
ModifyByPointer endp

end
