
secret:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 62 2f 00 00    	push   0x2f62(%rip)        # 3f88 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 63 2f 00 00 	bnd jmp *0x2f63(%rip)        # 3f90 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <.plt>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <.plt>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <.plt>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <.plt>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <.plt>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <.plt>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	push   $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <.plt>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	push   $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmp 1020 <.plt>
    10af:	90                   	nop

Disassembly of section .plt.got:

00000000000010b0 <__cxa_finalize@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 3d 2f 00 00 	bnd jmp *0x2f3d(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000010c0 <puts@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 cd 2e 00 00 	bnd jmp *0x2ecd(%rip)        # 3f98 <puts@GLIBC_2.2.5>
    10cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010d0 <__stack_chk_fail@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 c5 2e 00 00 	bnd jmp *0x2ec5(%rip)        # 3fa0 <__stack_chk_fail@GLIBC_2.4>
    10db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010e0 <printf@plt>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	f2 ff 25 bd 2e 00 00 	bnd jmp *0x2ebd(%rip)        # 3fa8 <printf@GLIBC_2.2.5>
    10eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010f0 <read@plt>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	f2 ff 25 b5 2e 00 00 	bnd jmp *0x2eb5(%rip)        # 3fb0 <read@GLIBC_2.2.5>
    10fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001100 <prctl@plt>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	f2 ff 25 ad 2e 00 00 	bnd jmp *0x2ead(%rip)        # 3fb8 <prctl@GLIBC_2.2.5>
    110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001110 <setvbuf@plt>:
    1110:	f3 0f 1e fa          	endbr64 
    1114:	f2 ff 25 a5 2e 00 00 	bnd jmp *0x2ea5(%rip)        # 3fc0 <setvbuf@GLIBC_2.2.5>
    111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001120 <atoi@plt>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	f2 ff 25 9d 2e 00 00 	bnd jmp *0x2e9d(%rip)        # 3fc8 <atoi@GLIBC_2.2.5>
    112b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001130 <exit@plt>:
    1130:	f3 0f 1e fa          	endbr64 
    1134:	f2 ff 25 95 2e 00 00 	bnd jmp *0x2e95(%rip)        # 3fd0 <exit@GLIBC_2.2.5>
    113b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001140 <_start>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	31 ed                	xor    %ebp,%ebp
    1146:	49 89 d1             	mov    %rdx,%r9
    1149:	5e                   	pop    %rsi
    114a:	48 89 e2             	mov    %rsp,%rdx
    114d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1151:	50                   	push   %rax
    1152:	54                   	push   %rsp
    1153:	4c 8d 05 b6 03 00 00 	lea    0x3b6(%rip),%r8        # 1510 <__libc_csu_fini>
    115a:	48 8d 0d 3f 03 00 00 	lea    0x33f(%rip),%rcx        # 14a0 <__libc_csu_init>
    1161:	48 8d 3d 10 03 00 00 	lea    0x310(%rip),%rdi        # 1478 <main>
    1168:	ff 15 72 2e 00 00    	call   *0x2e72(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    116e:	f4                   	hlt    
    116f:	90                   	nop

0000000000001170 <deregister_tm_clones>:
    1170:	48 8d 3d 99 2e 00 00 	lea    0x2e99(%rip),%rdi        # 4010 <stdout@@GLIBC_2.2.5>
    1177:	48 8d 05 92 2e 00 00 	lea    0x2e92(%rip),%rax        # 4010 <stdout@@GLIBC_2.2.5>
    117e:	48 39 f8             	cmp    %rdi,%rax
    1181:	74 15                	je     1198 <deregister_tm_clones+0x28>
    1183:	48 8b 05 4e 2e 00 00 	mov    0x2e4e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    118a:	48 85 c0             	test   %rax,%rax
    118d:	74 09                	je     1198 <deregister_tm_clones+0x28>
    118f:	ff e0                	jmp    *%rax
    1191:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1198:	c3                   	ret    
    1199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011a0 <register_tm_clones>:
    11a0:	48 8d 3d 69 2e 00 00 	lea    0x2e69(%rip),%rdi        # 4010 <stdout@@GLIBC_2.2.5>
    11a7:	48 8d 35 62 2e 00 00 	lea    0x2e62(%rip),%rsi        # 4010 <stdout@@GLIBC_2.2.5>
    11ae:	48 29 fe             	sub    %rdi,%rsi
    11b1:	48 89 f0             	mov    %rsi,%rax
    11b4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    11b8:	48 c1 f8 03          	sar    $0x3,%rax
    11bc:	48 01 c6             	add    %rax,%rsi
    11bf:	48 d1 fe             	sar    %rsi
    11c2:	74 14                	je     11d8 <register_tm_clones+0x38>
    11c4:	48 8b 05 25 2e 00 00 	mov    0x2e25(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    11cb:	48 85 c0             	test   %rax,%rax
    11ce:	74 08                	je     11d8 <register_tm_clones+0x38>
    11d0:	ff e0                	jmp    *%rax
    11d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    11d8:	c3                   	ret    
    11d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011e0 <__do_global_dtors_aux>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	80 3d 3d 2e 00 00 00 	cmpb   $0x0,0x2e3d(%rip)        # 4028 <completed.8060>
    11eb:	75 2b                	jne    1218 <__do_global_dtors_aux+0x38>
    11ed:	55                   	push   %rbp
    11ee:	48 83 3d 02 2e 00 00 	cmpq   $0x0,0x2e02(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    11f5:	00 
    11f6:	48 89 e5             	mov    %rsp,%rbp
    11f9:	74 0c                	je     1207 <__do_global_dtors_aux+0x27>
    11fb:	48 8b 3d 06 2e 00 00 	mov    0x2e06(%rip),%rdi        # 4008 <__dso_handle>
    1202:	e8 a9 fe ff ff       	call   10b0 <__cxa_finalize@plt>
    1207:	e8 64 ff ff ff       	call   1170 <deregister_tm_clones>
    120c:	c6 05 15 2e 00 00 01 	movb   $0x1,0x2e15(%rip)        # 4028 <completed.8060>
    1213:	5d                   	pop    %rbp
    1214:	c3                   	ret    
    1215:	0f 1f 00             	nopl   (%rax)
    1218:	c3                   	ret    
    1219:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001220 <frame_dummy>:
    1220:	f3 0f 1e fa          	endbr64 
    1224:	e9 77 ff ff ff       	jmp    11a0 <register_tm_clones>

0000000000001229 <YouWin>:
    1229:	f3 0f 1e fa          	endbr64 
    122d:	55                   	push   %rbp
    122e:	48 89 e5             	mov    %rsp,%rbp
    1231:	48 8d 3d d0 0d 00 00 	lea    0xdd0(%rip),%rdi        # 2008 <_IO_stdin_used+0x8>
    1238:	e8 83 fe ff ff       	call   10c0 <puts@plt>
    123d:	90                   	nop
    123e:	5d                   	pop    %rbp
    123f:	c3                   	ret    

0000000000001240 <Gets>:
    1240:	f3 0f 1e fa          	endbr64 
    1244:	55                   	push   %rbp
    1245:	48 89 e5             	mov    %rsp,%rbp
    1248:	48 83 ec 10          	sub    $0x10,%rsp
    124c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1250:	89 75 f4             	mov    %esi,-0xc(%rbp)
    1253:	eb 2b                	jmp    1280 <Gets+0x40>
    1255:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1259:	ba 01 00 00 00       	mov    $0x1,%edx
    125e:	48 89 c6             	mov    %rax,%rsi
    1261:	bf 00 00 00 00       	mov    $0x0,%edi
    1266:	b8 00 00 00 00       	mov    $0x0,%eax
    126b:	e8 80 fe ff ff       	call   10f0 <read@plt>
    1270:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1274:	0f b6 00             	movzbl (%rax),%eax
    1277:	3c 0a                	cmp    $0xa,%al
    1279:	74 14                	je     128f <Gets+0x4f>
    127b:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    1280:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1283:	8d 50 ff             	lea    -0x1(%rax),%edx
    1286:	89 55 f4             	mov    %edx,-0xc(%rbp)
    1289:	85 c0                	test   %eax,%eax
    128b:	75 c8                	jne    1255 <Gets+0x15>
    128d:	eb 01                	jmp    1290 <Gets+0x50>
    128f:	90                   	nop
    1290:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1294:	c6 00 0a             	movb   $0xa,(%rax)
    1297:	90                   	nop
    1298:	c9                   	leave  
    1299:	c3                   	ret    

000000000000129a <getNumber>:
    129a:	f3 0f 1e fa          	endbr64 
    129e:	55                   	push   %rbp
    129f:	48 89 e5             	mov    %rsp,%rbp
    12a2:	48 83 ec 20          	sub    $0x20,%rsp
    12a6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    12ad:	00 00 
    12af:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    12b3:	31 c0                	xor    %eax,%eax
    12b5:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    12b9:	be 08 00 00 00       	mov    $0x8,%esi
    12be:	48 89 c7             	mov    %rax,%rdi
    12c1:	e8 7a ff ff ff       	call   1240 <Gets>
    12c6:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    12ca:	48 89 c7             	mov    %rax,%rdi
    12cd:	e8 4e fe ff ff       	call   1120 <atoi@plt>
    12d2:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    12d6:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
    12dd:	00 00 
    12df:	74 05                	je     12e6 <getNumber+0x4c>
    12e1:	e8 ea fd ff ff       	call   10d0 <__stack_chk_fail@plt>
    12e6:	c9                   	leave  
    12e7:	c3                   	ret    

00000000000012e8 <init>:
    12e8:	f3 0f 1e fa          	endbr64 
    12ec:	55                   	push   %rbp
    12ed:	48 89 e5             	mov    %rsp,%rbp
    12f0:	48 8b 05 29 2d 00 00 	mov    0x2d29(%rip),%rax        # 4020 <stdin@@GLIBC_2.2.5>
    12f7:	b9 00 00 00 00       	mov    $0x0,%ecx
    12fc:	ba 02 00 00 00       	mov    $0x2,%edx
    1301:	be 00 00 00 00       	mov    $0x0,%esi
    1306:	48 89 c7             	mov    %rax,%rdi
    1309:	e8 02 fe ff ff       	call   1110 <setvbuf@plt>
    130e:	48 8b 05 fb 2c 00 00 	mov    0x2cfb(%rip),%rax        # 4010 <stdout@@GLIBC_2.2.5>
    1315:	b9 00 00 00 00       	mov    $0x0,%ecx
    131a:	ba 02 00 00 00       	mov    $0x2,%edx
    131f:	be 00 00 00 00       	mov    $0x0,%esi
    1324:	48 89 c7             	mov    %rax,%rdi
    1327:	e8 e4 fd ff ff       	call   1110 <setvbuf@plt>
    132c:	be 01 00 00 00       	mov    $0x1,%esi
    1331:	bf 16 00 00 00       	mov    $0x16,%edi
    1336:	b8 00 00 00 00       	mov    $0x0,%eax
    133b:	e8 c0 fd ff ff       	call   1100 <prctl@plt>
    1340:	90                   	nop
    1341:	5d                   	pop    %rbp
    1342:	c3                   	ret    

0000000000001343 <vul>:
    1343:	f3 0f 1e fa          	endbr64 
    1347:	55                   	push   %rbp
    1348:	48 89 e5             	mov    %rsp,%rbp
    134b:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
    1352:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1359:	00 00 
    135b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    135f:	31 c0                	xor    %eax,%eax
    1361:	c7 85 fc fe ff ff 00 	movl   $0x0,-0x104(%rbp)
    1368:	00 00 00 
    136b:	48 8d 3d 9e 0c 00 00 	lea    0xc9e(%rip),%rdi        # 2010 <_IO_stdin_used+0x10>
    1372:	e8 49 fd ff ff       	call   10c0 <puts@plt>
    1377:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
    137e:	be f8 00 00 00       	mov    $0xf8,%esi
    1383:	48 89 c7             	mov    %rax,%rdi
    1386:	e8 b5 fe ff ff       	call   1240 <Gets>
    138b:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
    1392:	48 89 c6             	mov    %rax,%rsi
    1395:	48 8d 3d 86 0c 00 00 	lea    0xc86(%rip),%rdi        # 2022 <_IO_stdin_used+0x22>
    139c:	b8 00 00 00 00       	mov    $0x0,%eax
    13a1:	e8 3a fd ff ff       	call   10e0 <printf@plt>
    13a6:	48 8d 3d 83 0c 00 00 	lea    0xc83(%rip),%rdi        # 2030 <_IO_stdin_used+0x30>
    13ad:	e8 0e fd ff ff       	call   10c0 <puts@plt>
    13b2:	48 8d 3d b7 0c 00 00 	lea    0xcb7(%rip),%rdi        # 2070 <_IO_stdin_used+0x70>
    13b9:	e8 02 fd ff ff       	call   10c0 <puts@plt>
    13be:	b8 00 00 00 00       	mov    $0x0,%eax
    13c3:	e8 d2 fe ff ff       	call   129a <getNumber>
    13c8:	89 85 fc fe ff ff    	mov    %eax,-0x104(%rbp)
    13ce:	81 bd fc fe ff ff f8 	cmpl   $0xf8,-0x104(%rbp)
    13d5:	00 00 00 
    13d8:	7e 16                	jle    13f0 <vul+0xad>
    13da:	48 8d 3d b6 0c 00 00 	lea    0xcb6(%rip),%rdi        # 2097 <_IO_stdin_used+0x97>
    13e1:	e8 da fc ff ff       	call   10c0 <puts@plt>
    13e6:	bf ff ff ff ff       	mov    $0xffffffff,%edi
    13eb:	e8 40 fd ff ff       	call   1130 <exit@plt>
    13f0:	48 8d 3d b9 0c 00 00 	lea    0xcb9(%rip),%rdi        # 20b0 <_IO_stdin_used+0xb0>
    13f7:	e8 c4 fc ff ff       	call   10c0 <puts@plt>
    13fc:	8b 95 fc fe ff ff    	mov    -0x104(%rbp),%edx
    1402:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
    1409:	89 d6                	mov    %edx,%esi
    140b:	48 89 c7             	mov    %rax,%rdi
    140e:	e8 2d fe ff ff       	call   1240 <Gets>
    1413:	48 8d 3d b6 0c 00 00 	lea    0xcb6(%rip),%rdi        # 20d0 <_IO_stdin_used+0xd0>
    141a:	e8 a1 fc ff ff       	call   10c0 <puts@plt>
    141f:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
    1426:	48 89 c7             	mov    %rax,%rdi
    1429:	e8 92 fc ff ff       	call   10c0 <puts@plt>
    142e:	48 8d 3d b9 0c 00 00 	lea    0xcb9(%rip),%rdi        # 20ee <_IO_stdin_used+0xee>
    1435:	e8 86 fc ff ff       	call   10c0 <puts@plt>
    143a:	8b 95 fc fe ff ff    	mov    -0x104(%rbp),%edx
    1440:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
    1447:	89 d6                	mov    %edx,%esi
    1449:	48 89 c7             	mov    %rax,%rdi
    144c:	e8 ef fd ff ff       	call   1240 <Gets>
    1451:	48 8d 3d b4 0c 00 00 	lea    0xcb4(%rip),%rdi        # 210c <_IO_stdin_used+0x10c>
    1458:	e8 63 fc ff ff       	call   10c0 <puts@plt>
    145d:	b8 00 00 00 00       	mov    $0x0,%eax
    1462:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    1466:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    146d:	00 00 
    146f:	74 05                	je     1476 <vul+0x133>
    1471:	e8 5a fc ff ff       	call   10d0 <__stack_chk_fail@plt>
    1476:	c9                   	leave  
    1477:	c3                   	ret    

0000000000001478 <main>:
    1478:	f3 0f 1e fa          	endbr64 
    147c:	55                   	push   %rbp
    147d:	48 89 e5             	mov    %rsp,%rbp
    1480:	b8 00 00 00 00       	mov    $0x0,%eax
    1485:	e8 5e fe ff ff       	call   12e8 <init>
    148a:	b8 00 00 00 00       	mov    $0x0,%eax
    148f:	e8 af fe ff ff       	call   1343 <vul>
    1494:	b8 00 00 00 00       	mov    $0x0,%eax
    1499:	5d                   	pop    %rbp
    149a:	c3                   	ret    
    149b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000014a0 <__libc_csu_init>:
    14a0:	f3 0f 1e fa          	endbr64 
    14a4:	41 57                	push   %r15
    14a6:	4c 8d 3d d3 28 00 00 	lea    0x28d3(%rip),%r15        # 3d80 <__frame_dummy_init_array_entry>
    14ad:	41 56                	push   %r14
    14af:	49 89 d6             	mov    %rdx,%r14
    14b2:	41 55                	push   %r13
    14b4:	49 89 f5             	mov    %rsi,%r13
    14b7:	41 54                	push   %r12
    14b9:	41 89 fc             	mov    %edi,%r12d
    14bc:	55                   	push   %rbp
    14bd:	48 8d 2d c4 28 00 00 	lea    0x28c4(%rip),%rbp        # 3d88 <__do_global_dtors_aux_fini_array_entry>
    14c4:	53                   	push   %rbx
    14c5:	4c 29 fd             	sub    %r15,%rbp
    14c8:	48 83 ec 08          	sub    $0x8,%rsp
    14cc:	e8 2f fb ff ff       	call   1000 <_init>
    14d1:	48 c1 fd 03          	sar    $0x3,%rbp
    14d5:	74 1f                	je     14f6 <__libc_csu_init+0x56>
    14d7:	31 db                	xor    %ebx,%ebx
    14d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    14e0:	4c 89 f2             	mov    %r14,%rdx
    14e3:	4c 89 ee             	mov    %r13,%rsi
    14e6:	44 89 e7             	mov    %r12d,%edi
    14e9:	41 ff 14 df          	call   *(%r15,%rbx,8)
    14ed:	48 83 c3 01          	add    $0x1,%rbx
    14f1:	48 39 dd             	cmp    %rbx,%rbp
    14f4:	75 ea                	jne    14e0 <__libc_csu_init+0x40>
    14f6:	48 83 c4 08          	add    $0x8,%rsp
    14fa:	5b                   	pop    %rbx
    14fb:	5d                   	pop    %rbp
    14fc:	41 5c                	pop    %r12
    14fe:	41 5d                	pop    %r13
    1500:	41 5e                	pop    %r14
    1502:	41 5f                	pop    %r15
    1504:	c3                   	ret    
    1505:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    150c:	00 00 00 00 

0000000000001510 <__libc_csu_fini>:
    1510:	f3 0f 1e fa          	endbr64 
    1514:	c3                   	ret    

Disassembly of section .fini:

0000000000001518 <_fini>:
    1518:	f3 0f 1e fa          	endbr64 
    151c:	48 83 ec 08          	sub    $0x8,%rsp
    1520:	48 83 c4 08          	add    $0x8,%rsp
    1524:	c3                   	ret    
