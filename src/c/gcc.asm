
c_scheduler_gcc:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 d1 2f 00 00 	mov    0x2fd1(%rip),%rax        # 403fe0 <__gmon_start__@Base>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	ret

Disassembly of section .plt:

0000000000401020 <free@plt-0x10>:
  401020:	ff 35 ca 2f 00 00    	push   0x2fca(%rip)        # 403ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 cc 2f 00 00    	jmp    *0x2fcc(%rip)        # 403ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <free@plt>:
  401030:	ff 25 ca 2f 00 00    	jmp    *0x2fca(%rip)        # 404000 <free@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	push   $0x0
  40103b:	e9 e0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401040 <printf@plt>:
  401040:	ff 25 c2 2f 00 00    	jmp    *0x2fc2(%rip)        # 404008 <printf@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	push   $0x1
  40104b:	e9 d0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401050 <fprintf@plt>:
  401050:	ff 25 ba 2f 00 00    	jmp    *0x2fba(%rip)        # 404010 <fprintf@GLIBC_2.2.5>
  401056:	68 02 00 00 00       	push   $0x2
  40105b:	e9 c0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401060 <strtol@plt>:
  401060:	ff 25 b2 2f 00 00    	jmp    *0x2fb2(%rip)        # 404018 <strtol@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	push   $0x3
  40106b:	e9 b0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401070 <malloc@plt>:
  401070:	ff 25 aa 2f 00 00    	jmp    *0x2faa(%rip)        # 404020 <malloc@GLIBC_2.2.5>
  401076:	68 04 00 00 00       	push   $0x4
  40107b:	e9 a0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401080 <pthread_create@plt>:
  401080:	ff 25 a2 2f 00 00    	jmp    *0x2fa2(%rip)        # 404028 <pthread_create@GLIBC_2.34>
  401086:	68 05 00 00 00       	push   $0x5
  40108b:	e9 90 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401090 <perror@plt>:
  401090:	ff 25 9a 2f 00 00    	jmp    *0x2f9a(%rip)        # 404030 <perror@GLIBC_2.2.5>
  401096:	68 06 00 00 00       	push   $0x6
  40109b:	e9 80 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010a0 <fwrite@plt>:
  4010a0:	ff 25 92 2f 00 00    	jmp    *0x2f92(%rip)        # 404038 <fwrite@GLIBC_2.2.5>
  4010a6:	68 07 00 00 00       	push   $0x7
  4010ab:	e9 70 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010b0 <pthread_join@plt>:
  4010b0:	ff 25 8a 2f 00 00    	jmp    *0x2f8a(%rip)        # 404040 <pthread_join@GLIBC_2.34>
  4010b6:	68 08 00 00 00       	push   $0x8
  4010bb:	e9 60 ff ff ff       	jmp    401020 <_init+0x20>

Disassembly of section .text:

00000000004010c0 <main>:
  4010c0:	41 57                	push   %r15
  4010c2:	41 56                	push   %r14
  4010c4:	41 55                	push   %r13
  4010c6:	41 54                	push   %r12
  4010c8:	55                   	push   %rbp
  4010c9:	53                   	push   %rbx
  4010ca:	48 89 f3             	mov    %rsi,%rbx
  4010cd:	48 83 ec 08          	sub    $0x8,%rsp
  4010d1:	83 ff 03             	cmp    $0x3,%edi
  4010d4:	74 2e                	je     401104 <main+0x44>
  4010d6:	48 8b 16             	mov    (%rsi),%rdx
  4010d9:	48 8b 3d 80 2f 00 00 	mov    0x2f80(%rip),%rdi        # 404060 <stderr@GLIBC_2.2.5>
  4010e0:	be 08 20 40 00       	mov    $0x402008,%esi
  4010e5:	31 c0                	xor    %eax,%eax
  4010e7:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  4010ed:	e8 5e ff ff ff       	call   401050 <fprintf@plt>
  4010f2:	48 83 c4 08          	add    $0x8,%rsp
  4010f6:	44 89 e0             	mov    %r12d,%eax
  4010f9:	5b                   	pop    %rbx
  4010fa:	5d                   	pop    %rbp
  4010fb:	41 5c                	pop    %r12
  4010fd:	41 5d                	pop    %r13
  4010ff:	41 5e                	pop    %r14
  401101:	41 5f                	pop    %r15
  401103:	c3                   	ret
  401104:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  401108:	ba 0a 00 00 00       	mov    $0xa,%edx
  40110d:	31 f6                	xor    %esi,%esi
  40110f:	e8 4c ff ff ff       	call   401060 <strtol@plt>
  401114:	48 8b 7b 10          	mov    0x10(%rbx),%rdi
  401118:	ba 0a 00 00 00       	mov    $0xa,%edx
  40111d:	31 f6                	xor    %esi,%esi
  40111f:	49 89 c6             	mov    %rax,%r14
  401122:	89 c5                	mov    %eax,%ebp
  401124:	e8 37 ff ff ff       	call   401060 <strtol@plt>
  401129:	89 05 3d 2f 00 00    	mov    %eax,0x2f3d(%rip)        # 40406c <total_tasks>
  40112f:	45 85 f6             	test   %r14d,%r14d
  401132:	0f 8e 95 00 00 00    	jle    4011cd <main+0x10d>
  401138:	85 c0                	test   %eax,%eax
  40113a:	0f 8e 8d 00 00 00    	jle    4011cd <main+0x10d>
  401140:	49 63 fe             	movslq %r14d,%rdi
  401143:	31 db                	xor    %ebx,%ebx
  401145:	48 c1 e7 03          	shl    $0x3,%rdi
  401149:	e8 22 ff ff ff       	call   401070 <malloc@plt>
  40114e:	49 89 c5             	mov    %rax,%r13
  401151:	49 89 c7             	mov    %rax,%r15
  401154:	48 85 c0             	test   %rax,%rax
  401157:	0f 84 96 00 00 00    	je     4011f3 <main+0x133>
  40115d:	0f 1f 00             	nopl   (%rax)
  401160:	31 c9                	xor    %ecx,%ecx
  401162:	ba 20 15 40 00       	mov    $0x401520,%edx
  401167:	31 f6                	xor    %esi,%esi
  401169:	4c 89 ff             	mov    %r15,%rdi
  40116c:	e8 0f ff ff ff       	call   401080 <pthread_create@plt>
  401171:	41 89 c4             	mov    %eax,%r12d
  401174:	85 c0                	test   %eax,%eax
  401176:	0f 85 8c 00 00 00    	jne    401208 <main+0x148>
  40117c:	ff c3                	inc    %ebx
  40117e:	49 83 c7 08          	add    $0x8,%r15
  401182:	39 eb                	cmp    %ebp,%ebx
  401184:	7c da                	jl     401160 <main+0xa0>
  401186:	31 db                	xor    %ebx,%ebx
  401188:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40118f:	00 
  401190:	49 8b 7c dd 00       	mov    0x0(%r13,%rbx,8),%rdi
  401195:	31 f6                	xor    %esi,%esi
  401197:	e8 14 ff ff ff       	call   4010b0 <pthread_join@plt>
  40119c:	85 c0                	test   %eax,%eax
  40119e:	0f 85 81 00 00 00    	jne    401225 <main+0x165>
  4011a4:	48 ff c3             	inc    %rbx
  4011a7:	39 dd                	cmp    %ebx,%ebp
  4011a9:	7f e5                	jg     401190 <main+0xd0>
  4011ab:	4c 89 ef             	mov    %r13,%rdi
  4011ae:	e8 7d fe ff ff       	call   401030 <free@plt>
  4011b3:	8b 35 b3 2e 00 00    	mov    0x2eb3(%rip),%esi        # 40406c <total_tasks>
  4011b9:	44 89 f2             	mov    %r14d,%edx
  4011bc:	bf 88 20 40 00       	mov    $0x402088,%edi
  4011c1:	31 c0                	xor    %eax,%eax
  4011c3:	e8 78 fe ff ff       	call   401040 <printf@plt>
  4011c8:	e9 25 ff ff ff       	jmp    4010f2 <main+0x32>
  4011cd:	48 8b 0d 8c 2e 00 00 	mov    0x2e8c(%rip),%rcx        # 404060 <stderr@GLIBC_2.2.5>
  4011d4:	ba 2e 00 00 00       	mov    $0x2e,%edx
  4011d9:	be 01 00 00 00       	mov    $0x1,%esi
  4011de:	bf 30 20 40 00       	mov    $0x402030,%edi
  4011e3:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  4011e9:	e8 b2 fe ff ff       	call   4010a0 <fwrite@plt>
  4011ee:	e9 ff fe ff ff       	jmp    4010f2 <main+0x32>
  4011f3:	bf 60 20 40 00       	mov    $0x402060,%edi
  4011f8:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  4011fe:	e8 8d fe ff ff       	call   401090 <perror@plt>
  401203:	e9 ea fe ff ff       	jmp    4010f2 <main+0x32>
  401208:	bf c1 20 40 00       	mov    $0x4020c1,%edi
  40120d:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  401213:	e8 78 fe ff ff       	call   401090 <perror@plt>
  401218:	4c 89 ef             	mov    %r13,%rdi
  40121b:	e8 10 fe ff ff       	call   401030 <free@plt>
  401220:	e9 cd fe ff ff       	jmp    4010f2 <main+0x32>
  401225:	bf d9 20 40 00       	mov    $0x4020d9,%edi
  40122a:	e8 61 fe ff ff       	call   401090 <perror@plt>
  40122f:	e9 70 ff ff ff       	jmp    4011a4 <main+0xe4>
  401234:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40123b:	00 00 00 
  40123e:	66 90                	xchg   %ax,%ax

0000000000401240 <_start>:
  401240:	f3 0f 1e fa          	endbr64
  401244:	31 ed                	xor    %ebp,%ebp
  401246:	49 89 d1             	mov    %rdx,%r9
  401249:	5e                   	pop    %rsi
  40124a:	48 89 e2             	mov    %rsp,%rdx
  40124d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401251:	50                   	push   %rax
  401252:	54                   	push   %rsp
  401253:	45 31 c0             	xor    %r8d,%r8d
  401256:	31 c9                	xor    %ecx,%ecx
  401258:	48 c7 c7 c0 10 40 00 	mov    $0x4010c0,%rdi
  40125f:	ff 15 73 2d 00 00    	call   *0x2d73(%rip)        # 403fd8 <__libc_start_main@GLIBC_2.34>
  401265:	f4                   	hlt
  401266:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40126d:	00 00 00 

0000000000401270 <_dl_relocate_static_pie>:
  401270:	f3 0f 1e fa          	endbr64
  401274:	c3                   	ret
  401275:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40127c:	00 00 00 
  40127f:	90                   	nop

0000000000401280 <deregister_tm_clones>:
  401280:	b8 58 40 40 00       	mov    $0x404058,%eax
  401285:	48 3d 58 40 40 00    	cmp    $0x404058,%rax
  40128b:	74 13                	je     4012a0 <deregister_tm_clones+0x20>
  40128d:	b8 00 00 00 00       	mov    $0x0,%eax
  401292:	48 85 c0             	test   %rax,%rax
  401295:	74 09                	je     4012a0 <deregister_tm_clones+0x20>
  401297:	bf 58 40 40 00       	mov    $0x404058,%edi
  40129c:	ff e0                	jmp    *%rax
  40129e:	66 90                	xchg   %ax,%ax
  4012a0:	c3                   	ret
  4012a1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4012a8:	00 00 00 00 
  4012ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012b0 <register_tm_clones>:
  4012b0:	be 58 40 40 00       	mov    $0x404058,%esi
  4012b5:	48 81 ee 58 40 40 00 	sub    $0x404058,%rsi
  4012bc:	48 89 f0             	mov    %rsi,%rax
  4012bf:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4012c3:	48 c1 f8 03          	sar    $0x3,%rax
  4012c7:	48 01 c6             	add    %rax,%rsi
  4012ca:	48 d1 fe             	sar    %rsi
  4012cd:	74 11                	je     4012e0 <register_tm_clones+0x30>
  4012cf:	b8 00 00 00 00       	mov    $0x0,%eax
  4012d4:	48 85 c0             	test   %rax,%rax
  4012d7:	74 07                	je     4012e0 <register_tm_clones+0x30>
  4012d9:	bf 58 40 40 00       	mov    $0x404058,%edi
  4012de:	ff e0                	jmp    *%rax
  4012e0:	c3                   	ret
  4012e1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4012e8:	00 00 00 00 
  4012ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012f0 <__do_global_dtors_aux>:
  4012f0:	80 3d 71 2d 00 00 00 	cmpb   $0x0,0x2d71(%rip)        # 404068 <completed.0>
  4012f7:	75 17                	jne    401310 <__do_global_dtors_aux+0x20>
  4012f9:	55                   	push   %rbp
  4012fa:	48 89 e5             	mov    %rsp,%rbp
  4012fd:	e8 7e ff ff ff       	call   401280 <deregister_tm_clones>
  401302:	c6 05 5f 2d 00 00 01 	movb   $0x1,0x2d5f(%rip)        # 404068 <completed.0>
  401309:	5d                   	pop    %rbp
  40130a:	c3                   	ret
  40130b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401310:	c3                   	ret
  401311:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401318:	00 00 00 00 
  40131c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401320 <frame_dummy>:
  401320:	eb 8e                	jmp    4012b0 <register_tm_clones>
  401322:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  401329:	00 00 00 
  40132c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401330 <fibonacci.isra.0>:
  401330:	83 ff 01             	cmp    $0x1,%edi
  401333:	0f 84 d9 01 00 00    	je     401512 <fibonacci.isra.0+0x1e2>
  401339:	89 f8                	mov    %edi,%eax
  40133b:	41 57                	push   %r15
  40133d:	8d 57 fd             	lea    -0x3(%rdi),%edx
  401340:	41 56                	push   %r14
  401342:	83 e8 02             	sub    $0x2,%eax
  401345:	41 55                	push   %r13
  401347:	41 54                	push   %r12
  401349:	55                   	push   %rbp
  40134a:	83 e0 fe             	and    $0xfffffffe,%eax
  40134d:	53                   	push   %rbx
  40134e:	44 8d 4f ff          	lea    -0x1(%rdi),%r9d
  401352:	48 83 ec 38          	sub    $0x38,%rsp
  401356:	29 c2                	sub    %eax,%edx
  401358:	45 89 ca             	mov    %r9d,%r10d
  40135b:	89 54 24 08          	mov    %edx,0x8(%rsp)
  40135f:	41 8d 7a ff          	lea    -0x1(%r10),%edi
  401363:	44 89 d0             	mov    %r10d,%eax
  401366:	89 3c 24             	mov    %edi,(%rsp)
  401369:	41 83 fa 01          	cmp    $0x1,%r10d
  40136d:	0f 84 81 01 00 00    	je     4014f4 <fibonacci.isra.0+0x1c4>
  401373:	44 89 54 24 0c       	mov    %r10d,0xc(%rsp)
  401378:	83 3c 24 01          	cmpl   $0x1,(%rsp)
  40137c:	44 8d 48 fe          	lea    -0x2(%rax),%r9d
  401380:	0f 84 58 01 00 00    	je     4014de <fibonacci.isra.0+0x1ae>
  401386:	8d 50 fc             	lea    -0x4(%rax),%edx
  401389:	83 e8 03             	sub    $0x3,%eax
  40138c:	44 89 c9             	mov    %r9d,%ecx
  40138f:	83 e0 fe             	and    $0xfffffffe,%eax
  401392:	29 c2                	sub    %eax,%edx
  401394:	89 54 24 04          	mov    %edx,0x4(%rsp)
  401398:	89 c8                	mov    %ecx,%eax
  40139a:	44 8d 51 ff          	lea    -0x1(%rcx),%r10d
  40139e:	83 f9 01             	cmp    $0x1,%ecx
  4013a1:	0f 84 2a 01 00 00    	je     4014d1 <fibonacci.isra.0+0x1a1>
  4013a7:	44 8d 58 fe          	lea    -0x2(%rax),%r11d
  4013ab:	41 83 fa 01          	cmp    $0x1,%r10d
  4013af:	0f 84 0b 01 00 00    	je     4014c0 <fibonacci.isra.0+0x190>
  4013b5:	8d 70 fc             	lea    -0x4(%rax),%esi
  4013b8:	83 e8 03             	sub    $0x3,%eax
  4013bb:	44 89 db             	mov    %r11d,%ebx
  4013be:	83 e0 fe             	and    $0xfffffffe,%eax
  4013c1:	29 c6                	sub    %eax,%esi
  4013c3:	44 8d 73 ff          	lea    -0x1(%rbx),%r14d
  4013c7:	89 dd                	mov    %ebx,%ebp
  4013c9:	41 89 d8             	mov    %ebx,%r8d
  4013cc:	44 89 f2             	mov    %r14d,%edx
  4013cf:	83 fb 01             	cmp    $0x1,%ebx
  4013d2:	0f 84 dd 00 00 00    	je     4014b5 <fibonacci.isra.0+0x185>
  4013d8:	83 fa 01             	cmp    $0x1,%edx
  4013db:	0f 84 c2 00 00 00    	je     4014a3 <fibonacci.isra.0+0x173>
  4013e1:	44 8d 6d fd          	lea    -0x3(%rbp),%r13d
  4013e5:	44 8d 7d fb          	lea    -0x5(%rbp),%r15d
  4013e9:	44 89 e8             	mov    %r13d,%eax
  4013ec:	83 e0 fe             	and    $0xfffffffe,%eax
  4013ef:	41 29 c7             	sub    %eax,%r15d
  4013f2:	41 8d 45 01          	lea    0x1(%r13),%eax
  4013f6:	44 89 eb             	mov    %r13d,%ebx
  4013f9:	45 85 ed             	test   %r13d,%r13d
  4013fc:	0f 84 94 00 00 00    	je     401496 <fibonacci.isra.0+0x166>
  401402:	44 8d 60 fe          	lea    -0x2(%rax),%r12d
  401406:	83 fb 01             	cmp    $0x1,%ebx
  401409:	74 7b                	je     401486 <fibonacci.isra.0+0x156>
  40140b:	44 8d 70 fc          	lea    -0x4(%rax),%r14d
  40140f:	83 e8 03             	sub    $0x3,%eax
  401412:	44 89 e7             	mov    %r12d,%edi
  401415:	83 e0 fe             	and    $0xfffffffe,%eax
  401418:	41 29 c6             	sub    %eax,%r14d
  40141b:	44 89 e0             	mov    %r12d,%eax
  40141e:	41 89 dc             	mov    %ebx,%r12d
  401421:	44 89 f3             	mov    %r14d,%ebx
  401424:	41 89 fe             	mov    %edi,%r14d
  401427:	44 89 f7             	mov    %r14d,%edi
  40142a:	41 83 ee 02          	sub    $0x2,%r14d
  40142e:	44 89 5c 24 2c       	mov    %r11d,0x2c(%rsp)
  401433:	44 89 4c 24 28       	mov    %r9d,0x28(%rsp)
  401438:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40143c:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
  401440:	44 89 54 24 1c       	mov    %r10d,0x1c(%rsp)
  401445:	89 74 24 18          	mov    %esi,0x18(%rsp)
  401449:	44 89 44 24 14       	mov    %r8d,0x14(%rsp)
  40144e:	89 54 24 10          	mov    %edx,0x10(%rsp)
  401452:	e8 d9 fe ff ff       	call   401330 <fibonacci.isra.0>
  401457:	44 39 f3             	cmp    %r14d,%ebx
  40145a:	8b 54 24 10          	mov    0x10(%rsp),%edx
  40145e:	44 8b 44 24 14       	mov    0x14(%rsp),%r8d
  401463:	8b 74 24 18          	mov    0x18(%rsp),%esi
  401467:	44 8b 54 24 1c       	mov    0x1c(%rsp),%r10d
  40146c:	8b 4c 24 20          	mov    0x20(%rsp),%ecx
  401470:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401474:	44 8b 4c 24 28       	mov    0x28(%rsp),%r9d
  401479:	44 8b 5c 24 2c       	mov    0x2c(%rsp),%r11d
  40147e:	75 a7                	jne    401427 <fibonacci.isra.0+0xf7>
  401480:	44 89 e3             	mov    %r12d,%ebx
  401483:	41 89 c4             	mov    %eax,%r12d
  401486:	44 89 e0             	mov    %r12d,%eax
  401489:	83 eb 02             	sub    $0x2,%ebx
  40148c:	41 83 fc 01          	cmp    $0x1,%r12d
  401490:	0f 8f 6c ff ff ff    	jg     401402 <fibonacci.isra.0+0xd2>
  401496:	41 83 ed 02          	sub    $0x2,%r13d
  40149a:	45 39 fd             	cmp    %r15d,%r13d
  40149d:	0f 85 4f ff ff ff    	jne    4013f2 <fibonacci.isra.0+0xc2>
  4014a3:	83 ed 02             	sub    $0x2,%ebp
  4014a6:	83 ea 02             	sub    $0x2,%edx
  4014a9:	83 fd 01             	cmp    $0x1,%ebp
  4014ac:	0f 8f 26 ff ff ff    	jg     4013d8 <fibonacci.isra.0+0xa8>
  4014b2:	44 89 c3             	mov    %r8d,%ebx
  4014b5:	83 eb 02             	sub    $0x2,%ebx
  4014b8:	39 f3                	cmp    %esi,%ebx
  4014ba:	0f 85 03 ff ff ff    	jne    4013c3 <fibonacci.isra.0+0x93>
  4014c0:	44 89 d8             	mov    %r11d,%eax
  4014c3:	41 83 ea 02          	sub    $0x2,%r10d
  4014c7:	41 83 fb 01          	cmp    $0x1,%r11d
  4014cb:	0f 8f d6 fe ff ff    	jg     4013a7 <fibonacci.isra.0+0x77>
  4014d1:	83 e9 02             	sub    $0x2,%ecx
  4014d4:	3b 4c 24 04          	cmp    0x4(%rsp),%ecx
  4014d8:	0f 85 ba fe ff ff    	jne    401398 <fibonacci.isra.0+0x68>
  4014de:	83 2c 24 02          	subl   $0x2,(%rsp)
  4014e2:	44 89 c8             	mov    %r9d,%eax
  4014e5:	41 83 f9 01          	cmp    $0x1,%r9d
  4014e9:	0f 8f 89 fe ff ff    	jg     401378 <fibonacci.isra.0+0x48>
  4014ef:	44 8b 54 24 0c       	mov    0xc(%rsp),%r10d
  4014f4:	41 83 ea 02          	sub    $0x2,%r10d
  4014f8:	44 3b 54 24 08       	cmp    0x8(%rsp),%r10d
  4014fd:	0f 85 5c fe ff ff    	jne    40135f <fibonacci.isra.0+0x2f>
  401503:	48 83 c4 38          	add    $0x38,%rsp
  401507:	5b                   	pop    %rbx
  401508:	5d                   	pop    %rbp
  401509:	41 5c                	pop    %r12
  40150b:	41 5d                	pop    %r13
  40150d:	41 5e                	pop    %r14
  40150f:	41 5f                	pop    %r15
  401511:	c3                   	ret
  401512:	c3                   	ret
  401513:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40151a:	00 00 00 00 
  40151e:	66 90                	xchg   %ax,%ax

0000000000401520 <worker>:
  401520:	41 54                	push   %r12
  401522:	55                   	push   %rbp
  401523:	53                   	push   %rbx
  401524:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40152b:	00 00 00 00 
  40152f:	90                   	nop
  401530:	b8 01 00 00 00       	mov    $0x1,%eax
  401535:	f0 0f c1 05 33 2b 00 	lock xadd %eax,0x2b33(%rip)        # 404070 <task_counter>
  40153c:	00 
  40153d:	39 05 29 2b 00 00    	cmp    %eax,0x2b29(%rip)        # 40406c <total_tasks>
  401543:	7e 2f                	jle    401574 <worker+0x54>
  401545:	b8 27 00 00 00       	mov    $0x27,%eax
  40154a:	83 f8 01             	cmp    $0x1,%eax
  40154d:	74 e1                	je     401530 <worker+0x10>
  40154f:	8d 68 fe             	lea    -0x2(%rax),%ebp
  401552:	44 8d 60 fd          	lea    -0x3(%rax),%r12d
  401556:	8d 58 ff             	lea    -0x1(%rax),%ebx
  401559:	89 e8                	mov    %ebp,%eax
  40155b:	83 e0 fe             	and    $0xfffffffe,%eax
  40155e:	41 29 c4             	sub    %eax,%r12d
  401561:	89 df                	mov    %ebx,%edi
  401563:	83 eb 02             	sub    $0x2,%ebx
  401566:	e8 c5 fd ff ff       	call   401330 <fibonacci.isra.0>
  40156b:	44 39 e3             	cmp    %r12d,%ebx
  40156e:	75 f1                	jne    401561 <worker+0x41>
  401570:	89 e8                	mov    %ebp,%eax
  401572:	eb d6                	jmp    40154a <worker+0x2a>
  401574:	5b                   	pop    %rbx
  401575:	31 c0                	xor    %eax,%eax
  401577:	5d                   	pop    %rbp
  401578:	41 5c                	pop    %r12
  40157a:	c3                   	ret

Disassembly of section .fini:

000000000040157c <_fini>:
  40157c:	f3 0f 1e fa          	endbr64
  401580:	48 83 ec 08          	sub    $0x8,%rsp
  401584:	48 83 c4 08          	add    $0x8,%rsp
  401588:	c3                   	ret
