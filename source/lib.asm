.data
.code

DoNothing proc EXPORT
	ret
DoNothing endp

Return5 proc EXPORT
	mov eax, 5
	ret
Return5 endp

Add5 proc EXPORT
	add ecx, 5
	mov eax, ecx
	ret
Add5 endp

Is7 proc EXPORT
	cmp ecx, 7
	jz is_seven
	mov eax, 0
	ret
is_seven:
	mov eax, 1
	ret
Is7 endp

PowerOperator proc EXPORT
	mov rax, 0
	cmp rdx, 0
	jz finish

	mov rax, rcx
	sub rdx, 1
entry:
	cmp rdx, 0
	jz finish

	imul rax, rcx

	sub rdx, 1
	jmp entry
finish:
	ret
PowerOperator endp

ModifyByPointer proc EXPORT
	mov edx, 10
	add [rcx], edx; This modifies rcx by a pointer
	ret
ModifyByPointer endp



end
