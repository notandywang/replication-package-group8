
c_scheduler_zig_cc:     file format elf64-x86-64


Disassembly of section .text:

00000000010018b0 <_start>:
 10018b0:	f3 0f 1e fa          	endbr64
 10018b4:	31 ed                	xor    %ebp,%ebp
 10018b6:	49 89 d1             	mov    %rdx,%r9
 10018b9:	5e                   	pop    %rsi
 10018ba:	48 89 e2             	mov    %rsp,%rdx
 10018bd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 10018c1:	50                   	push   %rax
 10018c2:	54                   	push   %rsp
 10018c3:	45 31 c0             	xor    %r8d,%r8d
 10018c6:	31 c9                	xor    %ecx,%ecx
 10018c8:	48 8d 3d b1 00 00 00 	lea    0xb1(%rip),%rdi        # 1001980 <main>
 10018cf:	ff 15 4b 14 00 00    	call   *0x144b(%rip)        # 1002d20 <__libc_start_main@GLIBC_2.34>
 10018d5:	f4                   	hlt
 10018d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
 10018dd:	00 00 00 

00000000010018e0 <_dl_relocate_static_pie>:
 10018e0:	f3 0f 1e fa          	endbr64
 10018e4:	c3                   	ret
 10018e5:	cc                   	int3
 10018e6:	cc                   	int3
 10018e7:	cc                   	int3
 10018e8:	cc                   	int3
 10018e9:	cc                   	int3
 10018ea:	cc                   	int3
 10018eb:	cc                   	int3
 10018ec:	cc                   	int3
 10018ed:	cc                   	int3
 10018ee:	cc                   	int3
 10018ef:	cc                   	int3

00000000010018f0 <fibonacci>:
 10018f0:	41 56                	push   %r14
 10018f2:	53                   	push   %rbx
 10018f3:	50                   	push   %rax
 10018f4:	31 db                	xor    %ebx,%ebx
 10018f6:	83 ff 02             	cmp    $0x2,%edi
 10018f9:	7c 1e                	jl     1001919 <fibonacci+0x29>
 10018fb:	41 89 fe             	mov    %edi,%r14d
 10018fe:	66 90                	xchg   %ax,%ax
 1001900:	41 8d 7e ff          	lea    -0x1(%r14),%edi
 1001904:	e8 e7 ff ff ff       	call   10018f0 <fibonacci>
 1001909:	41 8d 7e fe          	lea    -0x2(%r14),%edi
 100190d:	48 01 c3             	add    %rax,%rbx
 1001910:	41 83 fe 04          	cmp    $0x4,%r14d
 1001914:	41 89 fe             	mov    %edi,%r14d
 1001917:	73 e7                	jae    1001900 <fibonacci+0x10>
 1001919:	48 63 c7             	movslq %edi,%rax
 100191c:	48 01 d8             	add    %rbx,%rax
 100191f:	48 83 c4 08          	add    $0x8,%rsp
 1001923:	5b                   	pop    %rbx
 1001924:	41 5e                	pop    %r14
 1001926:	c3                   	ret
 1001927:	cc                   	int3
 1001928:	cc                   	int3
 1001929:	cc                   	int3
 100192a:	cc                   	int3
 100192b:	cc                   	int3
 100192c:	cc                   	int3
 100192d:	cc                   	int3
 100192e:	cc                   	int3
 100192f:	cc                   	int3

0000000001001930 <worker>:
 1001930:	53                   	push   %rbx
 1001931:	8b 1d 65 24 00 00    	mov    0x2465(%rip),%ebx        # 1003d9c <total_tasks>
 1001937:	b8 01 00 00 00       	mov    $0x1,%eax
 100193c:	f0 0f c1 05 54 24 00 	lock xadd %eax,0x2454(%rip)        # 1003d98 <task_counter>
 1001943:	00 
 1001944:	39 d8                	cmp    %ebx,%eax
 1001946:	7d 29                	jge    1001971 <worker+0x41>
 1001948:	bf 28 00 00 00       	mov    $0x28,%edi
 100194d:	e8 9e ff ff ff       	call   10018f0 <fibonacci>
 1001952:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
 1001959:	1f 84 00 00 00 00 00 
 1001960:	b8 01 00 00 00       	mov    $0x1,%eax
 1001965:	f0 0f c1 05 2b 24 00 	lock xadd %eax,0x242b(%rip)        # 1003d98 <task_counter>
 100196c:	00 
 100196d:	39 d8                	cmp    %ebx,%eax
 100196f:	7c ef                	jl     1001960 <worker+0x30>
 1001971:	31 c0                	xor    %eax,%eax
 1001973:	5b                   	pop    %rbx
 1001974:	c3                   	ret
 1001975:	cc                   	int3
 1001976:	cc                   	int3
 1001977:	cc                   	int3
 1001978:	cc                   	int3
 1001979:	cc                   	int3
 100197a:	cc                   	int3
 100197b:	cc                   	int3
 100197c:	cc                   	int3
 100197d:	cc                   	int3
 100197e:	cc                   	int3
 100197f:	cc                   	int3

0000000001001980 <main>:
 1001980:	55                   	push   %rbp
 1001981:	41 57                	push   %r15
 1001983:	41 56                	push   %r14
 1001985:	41 55                	push   %r13
 1001987:	41 54                	push   %r12
 1001989:	53                   	push   %rbx
 100198a:	50                   	push   %rax
 100198b:	49 89 f6             	mov    %rsi,%r14
 100198e:	83 ff 03             	cmp    $0x3,%edi
 1001991:	0f 85 dc 00 00 00    	jne    1001a73 <main+0xf3>
 1001997:	49 8b 7e 08          	mov    0x8(%r14),%rdi
 100199b:	31 f6                	xor    %esi,%esi
 100199d:	ba 0a 00 00 00       	mov    $0xa,%edx
 10019a2:	e8 e9 01 00 00       	call   1001b90 <strtol@plt>
 10019a7:	48 89 c3             	mov    %rax,%rbx
 10019aa:	49 8b 7e 10          	mov    0x10(%r14),%rdi
 10019ae:	31 f6                	xor    %esi,%esi
 10019b0:	ba 0a 00 00 00       	mov    $0xa,%edx
 10019b5:	e8 d6 01 00 00       	call   1001b90 <strtol@plt>
 10019ba:	89 05 dc 23 00 00    	mov    %eax,0x23dc(%rip)        # 1003d9c <total_tasks>
 10019c0:	85 db                	test   %ebx,%ebx
 10019c2:	0f 8e c6 00 00 00    	jle    1001a8e <main+0x10e>
 10019c8:	85 c0                	test   %eax,%eax
 10019ca:	0f 8e be 00 00 00    	jle    1001a8e <main+0x10e>
 10019d0:	89 df                	mov    %ebx,%edi
 10019d2:	81 e7 ff ff ff 7f    	and    $0x7fffffff,%edi
 10019d8:	48 c1 e7 03          	shl    $0x3,%rdi
 10019dc:	e8 4f 01 00 00       	call   1001b30 <malloc@plt>
 10019e1:	48 85 c0             	test   %rax,%rax
 10019e4:	0f 84 c4 00 00 00    	je     1001aae <main+0x12e>
 10019ea:	49 89 c6             	mov    %rax,%r14
 10019ed:	41 89 dc             	mov    %ebx,%r12d
 10019f0:	41 81 e4 ff ff ff 7f 	and    $0x7fffffff,%r12d
 10019f7:	4d 89 e5             	mov    %r12,%r13
 10019fa:	49 89 c7             	mov    %rax,%r15
 10019fd:	0f 1f 00             	nopl   (%rax)
 1001a00:	ba 30 19 00 01       	mov    $0x1001930,%edx
 1001a05:	4c 89 ff             	mov    %r15,%rdi
 1001a08:	31 f6                	xor    %esi,%esi
 1001a0a:	31 c9                	xor    %ecx,%ecx
 1001a0c:	e8 3f 01 00 00       	call   1001b50 <pthread_create@plt>
 1001a11:	85 c0                	test   %eax,%eax
 1001a13:	0f 85 a1 00 00 00    	jne    1001aba <main+0x13a>
 1001a19:	49 83 c7 08          	add    $0x8,%r15
 1001a1d:	49 ff cd             	dec    %r13
 1001a20:	75 de                	jne    1001a00 <main+0x80>
 1001a22:	45 31 ff             	xor    %r15d,%r15d
 1001a25:	eb 11                	jmp    1001a38 <main+0xb8>
 1001a27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 1001a2e:	00 00 
 1001a30:	49 ff c7             	inc    %r15
 1001a33:	4d 39 fc             	cmp    %r15,%r12
 1001a36:	74 1b                	je     1001a53 <main+0xd3>
 1001a38:	4b 8b 3c fe          	mov    (%r14,%r15,8),%rdi
 1001a3c:	31 f6                	xor    %esi,%esi
 1001a3e:	e8 2d 01 00 00       	call   1001b70 <pthread_join@plt>
 1001a43:	85 c0                	test   %eax,%eax
 1001a45:	74 e9                	je     1001a30 <main+0xb0>
 1001a47:	bf de 06 00 01       	mov    $0x10006de,%edi
 1001a4c:	e8 ef 00 00 00       	call   1001b40 <perror@plt>
 1001a51:	eb dd                	jmp    1001a30 <main+0xb0>
 1001a53:	4c 89 f7             	mov    %r14,%rdi
 1001a56:	e8 05 01 00 00       	call   1001b60 <free@plt>
 1001a5b:	8b 35 3b 23 00 00    	mov    0x233b(%rip),%esi        # 1003d9c <total_tasks>
 1001a61:	31 ed                	xor    %ebp,%ebp
 1001a63:	bf 31 07 00 01       	mov    $0x1000731,%edi
 1001a68:	89 da                	mov    %ebx,%edx
 1001a6a:	31 c0                	xor    %eax,%eax
 1001a6c:	e8 0f 01 00 00       	call   1001b80 <printf@plt>
 1001a71:	eb 5e                	jmp    1001ad1 <main+0x151>
 1001a73:	48 8b 05 b6 12 00 00 	mov    0x12b6(%rip),%rax        # 1002d30 <stderr@GLIBC_2.2.5>
 1001a7a:	48 8b 38             	mov    (%rax),%rdi
 1001a7d:	49 8b 16             	mov    (%r14),%rdx
 1001a80:	be 0c 07 00 01       	mov    $0x100070c,%esi
 1001a85:	31 c0                	xor    %eax,%eax
 1001a87:	e8 94 00 00 00       	call   1001b20 <fprintf@plt>
 1001a8c:	eb 3e                	jmp    1001acc <main+0x14c>
 1001a8e:	48 8b 05 9b 12 00 00 	mov    0x129b(%rip),%rax        # 1002d30 <stderr@GLIBC_2.2.5>
 1001a95:	48 8b 08             	mov    (%rax),%rcx
 1001a98:	bf 6a 07 00 01       	mov    $0x100076a,%edi
 1001a9d:	be 2e 00 00 00       	mov    $0x2e,%esi
 1001aa2:	ba 01 00 00 00       	mov    $0x1,%edx
 1001aa7:	e8 f4 00 00 00       	call   1001ba0 <fwrite@plt>
 1001aac:	eb 1e                	jmp    1001acc <main+0x14c>
 1001aae:	bf b8 06 00 01       	mov    $0x10006b8,%edi
 1001ab3:	e8 88 00 00 00       	call   1001b40 <perror@plt>
 1001ab8:	eb 12                	jmp    1001acc <main+0x14c>
 1001aba:	bf f4 06 00 01       	mov    $0x10006f4,%edi
 1001abf:	e8 7c 00 00 00       	call   1001b40 <perror@plt>
 1001ac4:	4c 89 f7             	mov    %r14,%rdi
 1001ac7:	e8 94 00 00 00       	call   1001b60 <free@plt>
 1001acc:	bd 01 00 00 00       	mov    $0x1,%ebp
 1001ad1:	89 e8                	mov    %ebp,%eax
 1001ad3:	48 83 c4 08          	add    $0x8,%rsp
 1001ad7:	5b                   	pop    %rbx
 1001ad8:	41 5c                	pop    %r12
 1001ada:	41 5d                	pop    %r13
 1001adc:	41 5e                	pop    %r14
 1001ade:	41 5f                	pop    %r15
 1001ae0:	5d                   	pop    %rbp
 1001ae1:	c3                   	ret

Disassembly of section .init:

0000000001001ae4 <_init>:
 1001ae4:	f3 0f 1e fa          	endbr64
 1001ae8:	48 83 ec 08          	sub    $0x8,%rsp
 1001aec:	48 8b 05 35 12 00 00 	mov    0x1235(%rip),%rax        # 1002d28 <__gmon_start__@Base>
 1001af3:	48 85 c0             	test   %rax,%rax
 1001af6:	74 02                	je     1001afa <_init+0x16>
 1001af8:	ff d0                	call   *%rax
 1001afa:	48 83 c4 08          	add    $0x8,%rsp
 1001afe:	c3                   	ret

Disassembly of section .fini:

0000000001001b00 <_fini>:
 1001b00:	f3 0f 1e fa          	endbr64
 1001b04:	48 83 ec 08          	sub    $0x8,%rsp
 1001b08:	48 83 c4 08          	add    $0x8,%rsp
 1001b0c:	c3                   	ret

Disassembly of section .plt:

0000000001001b10 <fprintf@plt-0x10>:
 1001b10:	ff 35 2a 12 00 00    	push   0x122a(%rip)        # 1002d40 <_GLOBAL_OFFSET_TABLE_+0x8>
 1001b16:	ff 25 2c 12 00 00    	jmp    *0x122c(%rip)        # 1002d48 <_GLOBAL_OFFSET_TABLE_+0x10>
 1001b1c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000001001b20 <fprintf@plt>:
 1001b20:	ff 25 2a 12 00 00    	jmp    *0x122a(%rip)        # 1002d50 <fprintf@GLIBC_2.2.5>
 1001b26:	68 00 00 00 00       	push   $0x0
 1001b2b:	e9 e0 ff ff ff       	jmp    1001b10 <_fini+0x10>

0000000001001b30 <malloc@plt>:
 1001b30:	ff 25 22 12 00 00    	jmp    *0x1222(%rip)        # 1002d58 <malloc@GLIBC_2.2.5>
 1001b36:	68 01 00 00 00       	push   $0x1
 1001b3b:	e9 d0 ff ff ff       	jmp    1001b10 <_fini+0x10>

0000000001001b40 <perror@plt>:
 1001b40:	ff 25 1a 12 00 00    	jmp    *0x121a(%rip)        # 1002d60 <perror@GLIBC_2.2.5>
 1001b46:	68 02 00 00 00       	push   $0x2
 1001b4b:	e9 c0 ff ff ff       	jmp    1001b10 <_fini+0x10>

0000000001001b50 <pthread_create@plt>:
 1001b50:	ff 25 12 12 00 00    	jmp    *0x1212(%rip)        # 1002d68 <pthread_create@GLIBC_2.34>
 1001b56:	68 03 00 00 00       	push   $0x3
 1001b5b:	e9 b0 ff ff ff       	jmp    1001b10 <_fini+0x10>

0000000001001b60 <free@plt>:
 1001b60:	ff 25 0a 12 00 00    	jmp    *0x120a(%rip)        # 1002d70 <free@GLIBC_2.2.5>
 1001b66:	68 04 00 00 00       	push   $0x4
 1001b6b:	e9 a0 ff ff ff       	jmp    1001b10 <_fini+0x10>

0000000001001b70 <pthread_join@plt>:
 1001b70:	ff 25 02 12 00 00    	jmp    *0x1202(%rip)        # 1002d78 <pthread_join@GLIBC_2.34>
 1001b76:	68 05 00 00 00       	push   $0x5
 1001b7b:	e9 90 ff ff ff       	jmp    1001b10 <_fini+0x10>

0000000001001b80 <printf@plt>:
 1001b80:	ff 25 fa 11 00 00    	jmp    *0x11fa(%rip)        # 1002d80 <printf@GLIBC_2.2.5>
 1001b86:	68 06 00 00 00       	push   $0x6
 1001b8b:	e9 80 ff ff ff       	jmp    1001b10 <_fini+0x10>

0000000001001b90 <strtol@plt>:
 1001b90:	ff 25 f2 11 00 00    	jmp    *0x11f2(%rip)        # 1002d88 <strtol@GLIBC_2.2.5>
 1001b96:	68 07 00 00 00       	push   $0x7
 1001b9b:	e9 70 ff ff ff       	jmp    1001b10 <_fini+0x10>

0000000001001ba0 <fwrite@plt>:
 1001ba0:	ff 25 ea 11 00 00    	jmp    *0x11ea(%rip)        # 1002d90 <fwrite@GLIBC_2.2.5>
 1001ba6:	68 08 00 00 00       	push   $0x8
 1001bab:	e9 60 ff ff ff       	jmp    1001b10 <_fini+0x10>
