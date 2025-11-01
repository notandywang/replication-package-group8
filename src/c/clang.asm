
c_scheduler_clang:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 b9 2f 00 00 	mov    0x2fb9(%rip),%rax        # 3fc8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <free@plt-0x10>:
    1020:	ff 35 ca 2f 00 00    	push   0x2fca(%rip)        # 3ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 2f 00 00    	jmp    *0x2fcc(%rip)        # 3ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <free@plt>:
    1030:	ff 25 ca 2f 00 00    	jmp    *0x2fca(%rip)        # 4000 <free@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <printf@plt>:
    1040:	ff 25 c2 2f 00 00    	jmp    *0x2fc2(%rip)        # 4008 <printf@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <fprintf@plt>:
    1050:	ff 25 ba 2f 00 00    	jmp    *0x2fba(%rip)        # 4010 <fprintf@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	push   $0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001060 <strtol@plt>:
    1060:	ff 25 b2 2f 00 00    	jmp    *0x2fb2(%rip)        # 4018 <strtol@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	push   $0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001070 <malloc@plt>:
    1070:	ff 25 aa 2f 00 00    	jmp    *0x2faa(%rip)        # 4020 <malloc@GLIBC_2.2.5>
    1076:	68 04 00 00 00       	push   $0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001080 <pthread_create@plt>:
    1080:	ff 25 a2 2f 00 00    	jmp    *0x2fa2(%rip)        # 4028 <pthread_create@GLIBC_2.34>
    1086:	68 05 00 00 00       	push   $0x5
    108b:	e9 90 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001090 <perror@plt>:
    1090:	ff 25 9a 2f 00 00    	jmp    *0x2f9a(%rip)        # 4030 <perror@GLIBC_2.2.5>
    1096:	68 06 00 00 00       	push   $0x6
    109b:	e9 80 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010a0 <fwrite@plt>:
    10a0:	ff 25 92 2f 00 00    	jmp    *0x2f92(%rip)        # 4038 <fwrite@GLIBC_2.2.5>
    10a6:	68 07 00 00 00       	push   $0x7
    10ab:	e9 70 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010b0 <pthread_join@plt>:
    10b0:	ff 25 8a 2f 00 00    	jmp    *0x2f8a(%rip)        # 4040 <pthread_join@GLIBC_2.34>
    10b6:	68 08 00 00 00       	push   $0x8
    10bb:	e9 60 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .text:

00000000000010c0 <_start-0x20>:
    10c0:	f3 0f 1e fa          	endbr64
    10c4:	55                   	push   %rbp
    10c5:	48 89 e5             	mov    %rsp,%rbp
    10c8:	0f ae 5d fc          	stmxcsr -0x4(%rbp)
    10cc:	8b 45 fc             	mov    -0x4(%rbp),%eax
    10cf:	0d 40 80 00 00       	or     $0x8040,%eax
    10d4:	89 45 f8             	mov    %eax,-0x8(%rbp)
    10d7:	0f ae 55 f8          	ldmxcsr -0x8(%rbp)
    10db:	5d                   	pop    %rbp
    10dc:	c3                   	ret
    10dd:	0f 1f 00             	nopl   (%rax)

00000000000010e0 <_start>:
    10e0:	f3 0f 1e fa          	endbr64
    10e4:	31 ed                	xor    %ebp,%ebp
    10e6:	49 89 d1             	mov    %rdx,%r9
    10e9:	5e                   	pop    %rsi
    10ea:	48 89 e2             	mov    %rsp,%rdx
    10ed:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    10f1:	50                   	push   %rax
    10f2:	54                   	push   %rsp
    10f3:	45 31 c0             	xor    %r8d,%r8d
    10f6:	31 c9                	xor    %ecx,%ecx
    10f8:	48 8d 3d 71 01 00 00 	lea    0x171(%rip),%rdi        # 1270 <main>
    10ff:	ff 15 b3 2e 00 00    	call   *0x2eb3(%rip)        # 3fb8 <__libc_start_main@GLIBC_2.34>
    1105:	f4                   	hlt
    1106:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    110d:	00 00 00 
    1110:	48 8d 3d 41 2f 00 00 	lea    0x2f41(%rip),%rdi        # 4058 <__TMC_END__>
    1117:	48 8d 05 3a 2f 00 00 	lea    0x2f3a(%rip),%rax        # 4058 <__TMC_END__>
    111e:	48 39 f8             	cmp    %rdi,%rax
    1121:	74 15                	je     1138 <_start+0x58>
    1123:	48 8b 05 96 2e 00 00 	mov    0x2e96(%rip),%rax        # 3fc0 <_ITM_deregisterTMCloneTable@Base>
    112a:	48 85 c0             	test   %rax,%rax
    112d:	74 09                	je     1138 <_start+0x58>
    112f:	ff e0                	jmp    *%rax
    1131:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1138:	c3                   	ret
    1139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1140:	48 8d 3d 11 2f 00 00 	lea    0x2f11(%rip),%rdi        # 4058 <__TMC_END__>
    1147:	48 8d 35 0a 2f 00 00 	lea    0x2f0a(%rip),%rsi        # 4058 <__TMC_END__>
    114e:	48 29 fe             	sub    %rdi,%rsi
    1151:	48 89 f0             	mov    %rsi,%rax
    1154:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1158:	48 c1 f8 03          	sar    $0x3,%rax
    115c:	48 01 c6             	add    %rax,%rsi
    115f:	48 d1 fe             	sar    %rsi
    1162:	74 14                	je     1178 <_start+0x98>
    1164:	48 8b 05 65 2e 00 00 	mov    0x2e65(%rip),%rax        # 3fd0 <_ITM_registerTMCloneTable@Base>
    116b:	48 85 c0             	test   %rax,%rax
    116e:	74 08                	je     1178 <_start+0x98>
    1170:	ff e0                	jmp    *%rax
    1172:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1178:	c3                   	ret
    1179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1180:	f3 0f 1e fa          	endbr64
    1184:	80 3d cd 2e 00 00 00 	cmpb   $0x0,0x2ecd(%rip)        # 4058 <__TMC_END__>
    118b:	75 33                	jne    11c0 <_start+0xe0>
    118d:	55                   	push   %rbp
    118e:	48 83 3d 42 2e 00 00 	cmpq   $0x0,0x2e42(%rip)        # 3fd8 <__cxa_finalize@GLIBC_2.2.5>
    1195:	00 
    1196:	48 89 e5             	mov    %rsp,%rbp
    1199:	74 0d                	je     11a8 <_start+0xc8>
    119b:	48 8b 3d ae 2e 00 00 	mov    0x2eae(%rip),%rdi        # 4050 <__dso_handle>
    11a2:	ff 15 30 2e 00 00    	call   *0x2e30(%rip)        # 3fd8 <__cxa_finalize@GLIBC_2.2.5>
    11a8:	e8 63 ff ff ff       	call   1110 <_start+0x30>
    11ad:	c6 05 a4 2e 00 00 01 	movb   $0x1,0x2ea4(%rip)        # 4058 <__TMC_END__>
    11b4:	5d                   	pop    %rbp
    11b5:	c3                   	ret
    11b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    11bd:	00 00 00 
    11c0:	c3                   	ret
    11c1:	0f 1f 40 00          	nopl   0x0(%rax)
    11c5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    11cc:	00 00 00 00 
    11d0:	f3 0f 1e fa          	endbr64
    11d4:	e9 67 ff ff ff       	jmp    1140 <_start+0x60>
    11d9:	0f 1f 00             	nopl   (%rax)
    11dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000011e0 <fibonacci>:
    11e0:	41 56                	push   %r14
    11e2:	53                   	push   %rbx
    11e3:	50                   	push   %rax
    11e4:	31 db                	xor    %ebx,%ebx
    11e6:	83 ff 02             	cmp    $0x2,%edi
    11e9:	7c 1e                	jl     1209 <fibonacci+0x29>
    11eb:	41 89 fe             	mov    %edi,%r14d
    11ee:	66 90                	xchg   %ax,%ax
    11f0:	41 8d 7e ff          	lea    -0x1(%r14),%edi
    11f4:	e8 e7 ff ff ff       	call   11e0 <fibonacci>
    11f9:	41 8d 7e fe          	lea    -0x2(%r14),%edi
    11fd:	48 01 c3             	add    %rax,%rbx
    1200:	41 83 fe 04          	cmp    $0x4,%r14d
    1204:	41 89 fe             	mov    %edi,%r14d
    1207:	73 e7                	jae    11f0 <fibonacci+0x10>
    1209:	48 63 c7             	movslq %edi,%rax
    120c:	48 01 d8             	add    %rbx,%rax
    120f:	48 83 c4 08          	add    $0x8,%rsp
    1213:	5b                   	pop    %rbx
    1214:	41 5e                	pop    %r14
    1216:	c3                   	ret
    1217:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    121e:	00 00 

0000000000001220 <worker>:
    1220:	53                   	push   %rbx
    1221:	b8 01 00 00 00       	mov    $0x1,%eax
    1226:	8b 1d 34 2e 00 00    	mov    0x2e34(%rip),%ebx        # 4060 <total_tasks>
    122c:	f0 0f c1 05 28 2e 00 	lock xadd %eax,0x2e28(%rip)        # 405c <task_counter>
    1233:	00 
    1234:	39 d8                	cmp    %ebx,%eax
    1236:	7d 29                	jge    1261 <worker+0x41>
    1238:	bf 28 00 00 00       	mov    $0x28,%edi
    123d:	e8 9e ff ff ff       	call   11e0 <fibonacci>
    1242:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    1249:	1f 84 00 00 00 00 00 
    1250:	b8 01 00 00 00       	mov    $0x1,%eax
    1255:	f0 0f c1 05 ff 2d 00 	lock xadd %eax,0x2dff(%rip)        # 405c <task_counter>
    125c:	00 
    125d:	39 d8                	cmp    %ebx,%eax
    125f:	7c ef                	jl     1250 <worker+0x30>
    1261:	31 c0                	xor    %eax,%eax
    1263:	5b                   	pop    %rbx
    1264:	c3                   	ret
    1265:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    126c:	00 00 00 
    126f:	90                   	nop

0000000000001270 <main>:
    1270:	55                   	push   %rbp
    1271:	41 57                	push   %r15
    1273:	41 56                	push   %r14
    1275:	41 55                	push   %r13
    1277:	41 54                	push   %r12
    1279:	53                   	push   %rbx
    127a:	50                   	push   %rax
    127b:	49 89 f6             	mov    %rsi,%r14
    127e:	83 ff 03             	cmp    $0x3,%edi
    1281:	0f 85 ec 00 00 00    	jne    1373 <main+0x103>
    1287:	49 8b 7e 08          	mov    0x8(%r14),%rdi
    128b:	ba 0a 00 00 00       	mov    $0xa,%edx
    1290:	31 f6                	xor    %esi,%esi
    1292:	e8 c9 fd ff ff       	call   1060 <strtol@plt>
    1297:	49 8b 7e 10          	mov    0x10(%r14),%rdi
    129b:	ba 0a 00 00 00       	mov    $0xa,%edx
    12a0:	31 f6                	xor    %esi,%esi
    12a2:	48 89 c3             	mov    %rax,%rbx
    12a5:	e8 b6 fd ff ff       	call   1060 <strtol@plt>
    12aa:	89 05 b0 2d 00 00    	mov    %eax,0x2db0(%rip)        # 4060 <total_tasks>
    12b0:	85 db                	test   %ebx,%ebx
    12b2:	0f 8e d8 00 00 00    	jle    1390 <main+0x120>
    12b8:	85 c0                	test   %eax,%eax
    12ba:	0f 8e d0 00 00 00    	jle    1390 <main+0x120>
    12c0:	89 df                	mov    %ebx,%edi
    12c2:	81 e7 ff ff ff 7f    	and    $0x7fffffff,%edi
    12c8:	48 c1 e7 03          	shl    $0x3,%rdi
    12cc:	e8 9f fd ff ff       	call   1070 <malloc@plt>
    12d1:	48 85 c0             	test   %rax,%rax
    12d4:	0f 84 d8 00 00 00    	je     13b2 <main+0x142>
    12da:	41 89 dd             	mov    %ebx,%r13d
    12dd:	41 81 e5 ff ff ff 7f 	and    $0x7fffffff,%r13d
    12e4:	4c 8d 3d 35 ff ff ff 	lea    -0xcb(%rip),%r15        # 1220 <worker>
    12eb:	49 89 c6             	mov    %rax,%r14
    12ee:	49 89 c4             	mov    %rax,%r12
    12f1:	4c 89 ed             	mov    %r13,%rbp
    12f4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
    12fb:	00 00 00 00 00 
    1300:	4c 89 e7             	mov    %r12,%rdi
    1303:	31 f6                	xor    %esi,%esi
    1305:	4c 89 fa             	mov    %r15,%rdx
    1308:	31 c9                	xor    %ecx,%ecx
    130a:	e8 71 fd ff ff       	call   1080 <pthread_create@plt>
    130f:	85 c0                	test   %eax,%eax
    1311:	0f 85 a9 00 00 00    	jne    13c0 <main+0x150>
    1317:	49 83 c4 08          	add    $0x8,%r12
    131b:	48 ff cd             	dec    %rbp
    131e:	75 e0                	jne    1300 <main+0x90>
    1320:	4c 8d 3d 6f 0d 00 00 	lea    0xd6f(%rip),%r15        # 2096 <_IO_stdin_used+0x96>
    1327:	45 31 e4             	xor    %r12d,%r12d
    132a:	eb 0c                	jmp    1338 <main+0xc8>
    132c:	0f 1f 40 00          	nopl   0x0(%rax)
    1330:	49 ff c4             	inc    %r12
    1333:	4d 39 e5             	cmp    %r12,%r13
    1336:	74 19                	je     1351 <main+0xe1>
    1338:	4b 8b 3c e6          	mov    (%r14,%r12,8),%rdi
    133c:	31 f6                	xor    %esi,%esi
    133e:	e8 6d fd ff ff       	call   10b0 <pthread_join@plt>
    1343:	85 c0                	test   %eax,%eax
    1345:	74 e9                	je     1330 <main+0xc0>
    1347:	4c 89 ff             	mov    %r15,%rdi
    134a:	e8 41 fd ff ff       	call   1090 <perror@plt>
    134f:	eb df                	jmp    1330 <main+0xc0>
    1351:	4c 89 f7             	mov    %r14,%rdi
    1354:	e8 d7 fc ff ff       	call   1030 <free@plt>
    1359:	8b 35 01 2d 00 00    	mov    0x2d01(%rip),%esi        # 4060 <total_tasks>
    135f:	48 8d 3d 46 0d 00 00 	lea    0xd46(%rip),%rdi        # 20ac <_IO_stdin_used+0xac>
    1366:	31 ed                	xor    %ebp,%ebp
    1368:	89 da                	mov    %ebx,%edx
    136a:	31 c0                	xor    %eax,%eax
    136c:	e8 cf fc ff ff       	call   1040 <printf@plt>
    1371:	eb 66                	jmp    13d9 <main+0x169>
    1373:	48 8b 05 66 2c 00 00 	mov    0x2c66(%rip),%rax        # 3fe0 <stderr@GLIBC_2.2.5>
    137a:	49 8b 16             	mov    (%r14),%rdx
    137d:	48 8d 35 80 0c 00 00 	lea    0xc80(%rip),%rsi        # 2004 <_IO_stdin_used+0x4>
    1384:	48 8b 38             	mov    (%rax),%rdi
    1387:	31 c0                	xor    %eax,%eax
    1389:	e8 c2 fc ff ff       	call   1050 <fprintf@plt>
    138e:	eb 44                	jmp    13d4 <main+0x164>
    1390:	48 8b 05 49 2c 00 00 	mov    0x2c49(%rip),%rax        # 3fe0 <stderr@GLIBC_2.2.5>
    1397:	48 8d 3d 8b 0c 00 00 	lea    0xc8b(%rip),%rdi        # 2029 <_IO_stdin_used+0x29>
    139e:	be 2e 00 00 00       	mov    $0x2e,%esi
    13a3:	ba 01 00 00 00       	mov    $0x1,%edx
    13a8:	48 8b 08             	mov    (%rax),%rcx
    13ab:	e8 f0 fc ff ff       	call   10a0 <fwrite@plt>
    13b0:	eb 22                	jmp    13d4 <main+0x164>
    13b2:	48 8d 3d 9f 0c 00 00 	lea    0xc9f(%rip),%rdi        # 2058 <_IO_stdin_used+0x58>
    13b9:	e8 d2 fc ff ff       	call   1090 <perror@plt>
    13be:	eb 14                	jmp    13d4 <main+0x164>
    13c0:	48 8d 3d b7 0c 00 00 	lea    0xcb7(%rip),%rdi        # 207e <_IO_stdin_used+0x7e>
    13c7:	e8 c4 fc ff ff       	call   1090 <perror@plt>
    13cc:	4c 89 f7             	mov    %r14,%rdi
    13cf:	e8 5c fc ff ff       	call   1030 <free@plt>
    13d4:	bd 01 00 00 00       	mov    $0x1,%ebp
    13d9:	89 e8                	mov    %ebp,%eax
    13db:	48 83 c4 08          	add    $0x8,%rsp
    13df:	5b                   	pop    %rbx
    13e0:	41 5c                	pop    %r12
    13e2:	41 5d                	pop    %r13
    13e4:	41 5e                	pop    %r14
    13e6:	41 5f                	pop    %r15
    13e8:	5d                   	pop    %rbp
    13e9:	c3                   	ret

Disassembly of section .fini:

00000000000013ec <_fini>:
    13ec:	f3 0f 1e fa          	endbr64
    13f0:	48 83 ec 08          	sub    $0x8,%rsp
    13f4:	48 83 c4 08          	add    $0x8,%rsp
    13f8:	c3                   	ret
