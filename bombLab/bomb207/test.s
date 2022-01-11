
test:     file format elf64-x86-64


Disassembly of section .init:

0000000000000e18 <_init>:
 e18:	48 83 ec 08          	sub    $0x8,%rsp
 e1c:	48 8b 05 c5 31 20 00 	mov    0x2031c5(%rip),%rax        # 203fe8 <__gmon_start__>
 e23:	48 85 c0             	test   %rax,%rax
 e26:	74 02                	je     e2a <_init+0x12>
 e28:	ff d0                	call   *%rax
 e2a:	48 83 c4 08          	add    $0x8,%rsp
 e2e:	c3                   	ret    

Disassembly of section .plt:

0000000000000e30 <.plt>:
     e30:	ff 35 aa 30 20 00    	push   0x2030aa(%rip)        # 203ee0 <_GLOBAL_OFFSET_TABLE_+0x8>
     e36:	ff 25 ac 30 20 00    	jmp    *0x2030ac(%rip)        # 203ee8 <_GLOBAL_OFFSET_TABLE_+0x10>
     e3c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000e40 <getenv@plt>:
     e40:	ff 25 aa 30 20 00    	jmp    *0x2030aa(%rip)        # 203ef0 <getenv@GLIBC_2.2.5>
     e46:	68 00 00 00 00       	push   $0x0
     e4b:	e9 e0 ff ff ff       	jmp    e30 <.plt>

0000000000000e50 <free@plt>:
     e50:	ff 25 a2 30 20 00    	jmp    *0x2030a2(%rip)        # 203ef8 <free@GLIBC_2.2.5>
     e56:	68 01 00 00 00       	push   $0x1
     e5b:	e9 d0 ff ff ff       	jmp    e30 <.plt>

0000000000000e60 <strcasecmp@plt>:
     e60:	ff 25 9a 30 20 00    	jmp    *0x20309a(%rip)        # 203f00 <strcasecmp@GLIBC_2.2.5>
     e66:	68 02 00 00 00       	push   $0x2
     e6b:	e9 c0 ff ff ff       	jmp    e30 <.plt>

0000000000000e70 <__errno_location@plt>:
     e70:	ff 25 92 30 20 00    	jmp    *0x203092(%rip)        # 203f08 <__errno_location@GLIBC_2.2.5>
     e76:	68 03 00 00 00       	push   $0x3
     e7b:	e9 b0 ff ff ff       	jmp    e30 <.plt>

0000000000000e80 <strcpy@plt>:
     e80:	ff 25 8a 30 20 00    	jmp    *0x20308a(%rip)        # 203f10 <strcpy@GLIBC_2.2.5>
     e86:	68 04 00 00 00       	push   $0x4
     e8b:	e9 a0 ff ff ff       	jmp    e30 <.plt>

0000000000000e90 <puts@plt>:
     e90:	ff 25 82 30 20 00    	jmp    *0x203082(%rip)        # 203f18 <puts@GLIBC_2.2.5>
     e96:	68 05 00 00 00       	push   $0x5
     e9b:	e9 90 ff ff ff       	jmp    e30 <.plt>

0000000000000ea0 <write@plt>:
     ea0:	ff 25 7a 30 20 00    	jmp    *0x20307a(%rip)        # 203f20 <write@GLIBC_2.2.5>
     ea6:	68 06 00 00 00       	push   $0x6
     eab:	e9 80 ff ff ff       	jmp    e30 <.plt>

0000000000000eb0 <__stack_chk_fail@plt>:
     eb0:	ff 25 72 30 20 00    	jmp    *0x203072(%rip)        # 203f28 <__stack_chk_fail@GLIBC_2.4>
     eb6:	68 07 00 00 00       	push   $0x7
     ebb:	e9 70 ff ff ff       	jmp    e30 <.plt>

0000000000000ec0 <alarm@plt>:
     ec0:	ff 25 6a 30 20 00    	jmp    *0x20306a(%rip)        # 203f30 <alarm@GLIBC_2.2.5>
     ec6:	68 08 00 00 00       	push   $0x8
     ecb:	e9 60 ff ff ff       	jmp    e30 <.plt>

0000000000000ed0 <close@plt>:
     ed0:	ff 25 62 30 20 00    	jmp    *0x203062(%rip)        # 203f38 <close@GLIBC_2.2.5>
     ed6:	68 09 00 00 00       	push   $0x9
     edb:	e9 50 ff ff ff       	jmp    e30 <.plt>

0000000000000ee0 <read@plt>:
     ee0:	ff 25 5a 30 20 00    	jmp    *0x20305a(%rip)        # 203f40 <read@GLIBC_2.2.5>
     ee6:	68 0a 00 00 00       	push   $0xa
     eeb:	e9 40 ff ff ff       	jmp    e30 <.plt>

0000000000000ef0 <fgets@plt>:
     ef0:	ff 25 52 30 20 00    	jmp    *0x203052(%rip)        # 203f48 <fgets@GLIBC_2.2.5>
     ef6:	68 0b 00 00 00       	push   $0xb
     efb:	e9 30 ff ff ff       	jmp    e30 <.plt>

0000000000000f00 <signal@plt>:
     f00:	ff 25 4a 30 20 00    	jmp    *0x20304a(%rip)        # 203f50 <signal@GLIBC_2.2.5>
     f06:	68 0c 00 00 00       	push   $0xc
     f0b:	e9 20 ff ff ff       	jmp    e30 <.plt>

0000000000000f10 <gethostbyname@plt>:
     f10:	ff 25 42 30 20 00    	jmp    *0x203042(%rip)        # 203f58 <gethostbyname@GLIBC_2.2.5>
     f16:	68 0d 00 00 00       	push   $0xd
     f1b:	e9 10 ff ff ff       	jmp    e30 <.plt>

0000000000000f20 <__memmove_chk@plt>:
     f20:	ff 25 3a 30 20 00    	jmp    *0x20303a(%rip)        # 203f60 <__memmove_chk@GLIBC_2.3.4>
     f26:	68 0e 00 00 00       	push   $0xe
     f2b:	e9 00 ff ff ff       	jmp    e30 <.plt>

0000000000000f30 <memcpy@plt>:
     f30:	ff 25 32 30 20 00    	jmp    *0x203032(%rip)        # 203f68 <memcpy@GLIBC_2.14>
     f36:	68 0f 00 00 00       	push   $0xf
     f3b:	e9 f0 fe ff ff       	jmp    e30 <.plt>

0000000000000f40 <malloc@plt>:
     f40:	ff 25 2a 30 20 00    	jmp    *0x20302a(%rip)        # 203f70 <malloc@GLIBC_2.2.5>
     f46:	68 10 00 00 00       	push   $0x10
     f4b:	e9 e0 fe ff ff       	jmp    e30 <.plt>

0000000000000f50 <fflush@plt>:
     f50:	ff 25 22 30 20 00    	jmp    *0x203022(%rip)        # 203f78 <fflush@GLIBC_2.2.5>
     f56:	68 11 00 00 00       	push   $0x11
     f5b:	e9 d0 fe ff ff       	jmp    e30 <.plt>

0000000000000f60 <__isoc99_sscanf@plt>:
     f60:	ff 25 1a 30 20 00    	jmp    *0x20301a(%rip)        # 203f80 <__isoc99_sscanf@GLIBC_2.7>
     f66:	68 12 00 00 00       	push   $0x12
     f6b:	e9 c0 fe ff ff       	jmp    e30 <.plt>

0000000000000f70 <__printf_chk@plt>:
     f70:	ff 25 12 30 20 00    	jmp    *0x203012(%rip)        # 203f88 <__printf_chk@GLIBC_2.3.4>
     f76:	68 13 00 00 00       	push   $0x13
     f7b:	e9 b0 fe ff ff       	jmp    e30 <.plt>

0000000000000f80 <fopen@plt>:
     f80:	ff 25 0a 30 20 00    	jmp    *0x20300a(%rip)        # 203f90 <fopen@GLIBC_2.2.5>
     f86:	68 14 00 00 00       	push   $0x14
     f8b:	e9 a0 fe ff ff       	jmp    e30 <.plt>

0000000000000f90 <gethostname@plt>:
     f90:	ff 25 02 30 20 00    	jmp    *0x203002(%rip)        # 203f98 <gethostname@GLIBC_2.2.5>
     f96:	68 15 00 00 00       	push   $0x15
     f9b:	e9 90 fe ff ff       	jmp    e30 <.plt>

0000000000000fa0 <exit@plt>:
     fa0:	ff 25 fa 2f 20 00    	jmp    *0x202ffa(%rip)        # 203fa0 <exit@GLIBC_2.2.5>
     fa6:	68 16 00 00 00       	push   $0x16
     fab:	e9 80 fe ff ff       	jmp    e30 <.plt>

0000000000000fb0 <connect@plt>:
     fb0:	ff 25 f2 2f 20 00    	jmp    *0x202ff2(%rip)        # 203fa8 <connect@GLIBC_2.2.5>
     fb6:	68 17 00 00 00       	push   $0x17
     fbb:	e9 70 fe ff ff       	jmp    e30 <.plt>

0000000000000fc0 <__fprintf_chk@plt>:
     fc0:	ff 25 ea 2f 20 00    	jmp    *0x202fea(%rip)        # 203fb0 <__fprintf_chk@GLIBC_2.3.4>
     fc6:	68 18 00 00 00       	push   $0x18
     fcb:	e9 60 fe ff ff       	jmp    e30 <.plt>

0000000000000fd0 <sleep@plt>:
     fd0:	ff 25 e2 2f 20 00    	jmp    *0x202fe2(%rip)        # 203fb8 <sleep@GLIBC_2.2.5>
     fd6:	68 19 00 00 00       	push   $0x19
     fdb:	e9 50 fe ff ff       	jmp    e30 <.plt>

0000000000000fe0 <__ctype_b_loc@plt>:
     fe0:	ff 25 da 2f 20 00    	jmp    *0x202fda(%rip)        # 203fc0 <__ctype_b_loc@GLIBC_2.3>
     fe6:	68 1a 00 00 00       	push   $0x1a
     feb:	e9 40 fe ff ff       	jmp    e30 <.plt>

0000000000000ff0 <__sprintf_chk@plt>:
     ff0:	ff 25 d2 2f 20 00    	jmp    *0x202fd2(%rip)        # 203fc8 <__sprintf_chk@GLIBC_2.3.4>
     ff6:	68 1b 00 00 00       	push   $0x1b
     ffb:	e9 30 fe ff ff       	jmp    e30 <.plt>

0000000000001000 <socket@plt>:
    1000:	ff 25 ca 2f 20 00    	jmp    *0x202fca(%rip)        # 203fd0 <socket@GLIBC_2.2.5>
    1006:	68 1c 00 00 00       	push   $0x1c
    100b:	e9 20 fe ff ff       	jmp    e30 <.plt>

Disassembly of section .plt.got:

0000000000001010 <__cxa_finalize@plt>:
    1010:	ff 25 e2 2f 20 00    	jmp    *0x202fe2(%rip)        # 203ff8 <__cxa_finalize@GLIBC_2.2.5>
    1016:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001020 <_start>:
    1020:	31 ed                	xor    %ebp,%ebp
    1022:	49 89 d1             	mov    %rdx,%r9
    1025:	5e                   	pop    %rsi
    1026:	48 89 e2             	mov    %rsp,%rdx
    1029:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    102d:	50                   	push   %rax
    102e:	54                   	push   %rsp
    102f:	4c 8d 05 9a 1c 00 00 	lea    0x1c9a(%rip),%r8        # 2cd0 <__libc_csu_fini>
    1036:	48 8d 0d 23 1c 00 00 	lea    0x1c23(%rip),%rcx        # 2c60 <__libc_csu_init>
    103d:	48 8d 3d e6 00 00 00 	lea    0xe6(%rip),%rdi        # 112a <main>
    1044:	ff 15 96 2f 20 00    	call   *0x202f96(%rip)        # 203fe0 <__libc_start_main@GLIBC_2.2.5>
    104a:	f4                   	hlt    
    104b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001050 <deregister_tm_clones>:
    1050:	48 8d 3d 09 44 20 00 	lea    0x204409(%rip),%rdi        # 205460 <stdout@@GLIBC_2.2.5>
    1057:	55                   	push   %rbp
    1058:	48 8d 05 01 44 20 00 	lea    0x204401(%rip),%rax        # 205460 <stdout@@GLIBC_2.2.5>
    105f:	48 39 f8             	cmp    %rdi,%rax
    1062:	48 89 e5             	mov    %rsp,%rbp
    1065:	74 19                	je     1080 <deregister_tm_clones+0x30>
    1067:	48 8b 05 6a 2f 20 00 	mov    0x202f6a(%rip),%rax        # 203fd8 <_ITM_deregisterTMCloneTable>
    106e:	48 85 c0             	test   %rax,%rax
    1071:	74 0d                	je     1080 <deregister_tm_clones+0x30>
    1073:	5d                   	pop    %rbp
    1074:	ff e0                	jmp    *%rax
    1076:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    107d:	00 00 00 
    1080:	5d                   	pop    %rbp
    1081:	c3                   	ret    
    1082:	0f 1f 40 00          	nopl   0x0(%rax)
    1086:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    108d:	00 00 00 

0000000000001090 <register_tm_clones>:
    1090:	48 8d 3d c9 43 20 00 	lea    0x2043c9(%rip),%rdi        # 205460 <stdout@@GLIBC_2.2.5>
    1097:	48 8d 35 c2 43 20 00 	lea    0x2043c2(%rip),%rsi        # 205460 <stdout@@GLIBC_2.2.5>
    109e:	55                   	push   %rbp
    109f:	48 29 fe             	sub    %rdi,%rsi
    10a2:	48 89 e5             	mov    %rsp,%rbp
    10a5:	48 c1 fe 03          	sar    $0x3,%rsi
    10a9:	48 89 f0             	mov    %rsi,%rax
    10ac:	48 c1 e8 3f          	shr    $0x3f,%rax
    10b0:	48 01 c6             	add    %rax,%rsi
    10b3:	48 d1 fe             	sar    %rsi
    10b6:	74 18                	je     10d0 <register_tm_clones+0x40>
    10b8:	48 8b 05 31 2f 20 00 	mov    0x202f31(%rip),%rax        # 203ff0 <_ITM_registerTMCloneTable>
    10bf:	48 85 c0             	test   %rax,%rax
    10c2:	74 0c                	je     10d0 <register_tm_clones+0x40>
    10c4:	5d                   	pop    %rbp
    10c5:	ff e0                	jmp    *%rax
    10c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    10ce:	00 00 
    10d0:	5d                   	pop    %rbp
    10d1:	c3                   	ret    
    10d2:	0f 1f 40 00          	nopl   0x0(%rax)
    10d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10dd:	00 00 00 

00000000000010e0 <__do_global_dtors_aux>:
    10e0:	80 3d a1 43 20 00 00 	cmpb   $0x0,0x2043a1(%rip)        # 205488 <completed.7698>
    10e7:	75 2f                	jne    1118 <__do_global_dtors_aux+0x38>
    10e9:	48 83 3d 07 2f 20 00 	cmpq   $0x0,0x202f07(%rip)        # 203ff8 <__cxa_finalize@GLIBC_2.2.5>
    10f0:	00 
    10f1:	55                   	push   %rbp
    10f2:	48 89 e5             	mov    %rsp,%rbp
    10f5:	74 0c                	je     1103 <__do_global_dtors_aux+0x23>
    10f7:	48 8b 3d 0a 2f 20 00 	mov    0x202f0a(%rip),%rdi        # 204008 <__dso_handle>
    10fe:	e8 0d ff ff ff       	call   1010 <__cxa_finalize@plt>
    1103:	e8 48 ff ff ff       	call   1050 <deregister_tm_clones>
    1108:	c6 05 79 43 20 00 01 	movb   $0x1,0x204379(%rip)        # 205488 <completed.7698>
    110f:	5d                   	pop    %rbp
    1110:	c3                   	ret    
    1111:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1118:	f3 c3                	repz ret 
    111a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001120 <frame_dummy>:
    1120:	55                   	push   %rbp
    1121:	48 89 e5             	mov    %rsp,%rbp
    1124:	5d                   	pop    %rbp
    1125:	e9 66 ff ff ff       	jmp    1090 <register_tm_clones>

000000000000112a <main>:
    112a:	53                   	push   %rbx
    112b:	83 ff 01             	cmp    $0x1,%edi
    112e:	74 51                	je     1181 <main+0x57>
    1130:	48 89 f3             	mov    %rsi,%rbx
    1133:	83 ff 02             	cmp    $0x2,%edi
    1136:	75 7b                	jne    11b3 <main+0x89>
    1138:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    113c:	48 8d 35 8b 22 00 00 	lea    0x228b(%rip),%rsi        # 33ce <transition_table+0x3ae>
    1143:	e8 38 fe ff ff       	call   f80 <fopen@plt>
    1148:	48 89 05 41 43 20 00 	mov    %rax,0x204341(%rip)        # 205490 <infile>
    114f:	48 85 c0             	test   %rax,%rax
    1152:	74 3d                	je     1191 <main+0x67>
    1154:	e8 19 08 00 00       	call   1972 <initialize_bomb>
    1159:	48 89 c3             	mov    %rax,%rbx
    115c:	81 38 11 fa 21 20    	cmpl   $0x2021fa11,(%rax)
    1162:	75 72                	jne    11d6 <main+0xac>
    1164:	48 8d 35 fd 1b 00 00 	lea    0x1bfd(%rip),%rsi        # 2d68 <_IO_stdin_used+0x88>
    116b:	bf 01 00 00 00       	mov    $0x1,%edi
    1170:	b8 00 00 00 00       	mov    $0x0,%eax
    1175:	e8 f6 fd ff ff       	call   f70 <__printf_chk@plt>
    117a:	b8 00 00 00 00       	mov    $0x0,%eax
    117f:	5b                   	pop    %rbx
    1180:	c3                   	ret    
    1181:	48 8b 05 e8 42 20 00 	mov    0x2042e8(%rip),%rax        # 205470 <stdin@@GLIBC_2.2.5>
    1188:	48 89 05 01 43 20 00 	mov    %rax,0x204301(%rip)        # 205490 <infile>
    118f:	eb c3                	jmp    1154 <main+0x2a>
    1191:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    1195:	48 8b 13             	mov    (%rbx),%rdx
    1198:	48 8d 35 45 1b 00 00 	lea    0x1b45(%rip),%rsi        # 2ce4 <_IO_stdin_used+0x4>
    119f:	bf 01 00 00 00       	mov    $0x1,%edi
    11a4:	e8 c7 fd ff ff       	call   f70 <__printf_chk@plt>
    11a9:	bf 08 00 00 00       	mov    $0x8,%edi
    11ae:	e8 ed fd ff ff       	call   fa0 <exit@plt>
    11b3:	48 8b 16             	mov    (%rsi),%rdx
    11b6:	48 8d 35 44 1b 00 00 	lea    0x1b44(%rip),%rsi        # 2d01 <_IO_stdin_used+0x21>
    11bd:	bf 01 00 00 00       	mov    $0x1,%edi
    11c2:	b8 00 00 00 00       	mov    $0x0,%eax
    11c7:	e8 a4 fd ff ff       	call   f70 <__printf_chk@plt>
    11cc:	bf 08 00 00 00       	mov    $0x8,%edi
    11d1:	e8 ca fd ff ff       	call   fa0 <exit@plt>
    11d6:	48 8d 3d cb 1b 00 00 	lea    0x1bcb(%rip),%rdi        # 2da8 <_IO_stdin_used+0xc8>
    11dd:	e8 ae fc ff ff       	call   e90 <puts@plt>
    11e2:	48 8d 3d ff 1b 00 00 	lea    0x1bff(%rip),%rdi        # 2de8 <_IO_stdin_used+0x108>
    11e9:	e8 a2 fc ff ff       	call   e90 <puts@plt>
    11ee:	e8 1f 0b 00 00       	call   1d12 <read_line>
    11f3:	48 89 c7             	mov    %rax,%rdi
    11f6:	90                   	nop
    11f7:	90                   	nop
    11f8:	90                   	nop
    11f9:	90                   	nop
    11fa:	90                   	nop
    11fb:	48 89 df             	mov    %rbx,%rdi
    11fe:	e8 68 0c 00 00       	call   1e6b <phase_defused>
    1203:	48 8d 3d 1e 1c 00 00 	lea    0x1c1e(%rip),%rdi        # 2e28 <_IO_stdin_used+0x148>
    120a:	e8 81 fc ff ff       	call   e90 <puts@plt>
    120f:	e8 fe 0a 00 00       	call   1d12 <read_line>
    1214:	48 89 c7             	mov    %rax,%rdi
    1217:	e8 d1 01 00 00       	call   13ed <phase_2>
    121c:	48 89 df             	mov    %rbx,%rdi
    121f:	e8 47 0c 00 00       	call   1e6b <phase_defused>
    1224:	48 8d 3d f0 1a 00 00 	lea    0x1af0(%rip),%rdi        # 2d1b <_IO_stdin_used+0x3b>
    122b:	e8 60 fc ff ff       	call   e90 <puts@plt>
    1230:	e8 dd 0a 00 00       	call   1d12 <read_line>
    1235:	48 89 c7             	mov    %rax,%rdi
    1238:	e8 1d 02 00 00       	call   145a <phase_3>
    123d:	48 89 df             	mov    %rbx,%rdi
    1240:	e8 26 0c 00 00       	call   1e6b <phase_defused>
    1245:	48 8d 3d ec 1a 00 00 	lea    0x1aec(%rip),%rdi        # 2d38 <_IO_stdin_used+0x58>
    124c:	e8 3f fc ff ff       	call   e90 <puts@plt>
    1251:	e8 bc 0a 00 00       	call   1d12 <read_line>
    1256:	48 89 c7             	mov    %rax,%rdi
    1259:	e8 e8 02 00 00       	call   1546 <phase_4>
    125e:	48 89 df             	mov    %rbx,%rdi
    1261:	e8 05 0c 00 00       	call   1e6b <phase_defused>
    1266:	48 8d 3d eb 1b 00 00 	lea    0x1beb(%rip),%rdi        # 2e58 <_IO_stdin_used+0x178>
    126d:	e8 1e fc ff ff       	call   e90 <puts@plt>
    1272:	e8 9b 0a 00 00       	call   1d12 <read_line>
    1277:	48 89 c7             	mov    %rax,%rdi
    127a:	e8 38 03 00 00       	call   15b7 <phase_5>
    127f:	48 89 df             	mov    %rbx,%rdi
    1282:	e8 e4 0b 00 00       	call   1e6b <phase_defused>
    1287:	48 8d 3d b9 1a 00 00 	lea    0x1ab9(%rip),%rdi        # 2d47 <_IO_stdin_used+0x67>
    128e:	e8 fd fb ff ff       	call   e90 <puts@plt>
    1293:	e8 7a 0a 00 00       	call   1d12 <read_line>
    1298:	48 89 c7             	mov    %rax,%rdi
    129b:	e8 a4 03 00 00       	call   1644 <phase_6>
    12a0:	48 89 df             	mov    %rbx,%rdi
    12a3:	e8 c3 0b 00 00       	call   1e6b <phase_defused>
    12a8:	48 89 df             	mov    %rbx,%rdi
    12ab:	e8 a0 fb ff ff       	call   e50 <free@plt>
    12b0:	e9 c5 fe ff ff       	jmp    117a <main+0x50>

00000000000012b5 <abracadabra>:
    12b5:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
    12bc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    12c3:	00 00 
    12c5:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
    12cc:	00 
    12cd:	31 c0                	xor    %eax,%eax
    12cf:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    12d4:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    12d9:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    12de:	48 8d 35 97 1b 00 00 	lea    0x1b97(%rip),%rsi        # 2e7c <_IO_stdin_used+0x19c>
    12e5:	48 8d 3d 1c 43 20 00 	lea    0x20431c(%rip),%rdi        # 205608 <input_strings+0x168>
    12ec:	e8 6f fc ff ff       	call   f60 <__isoc99_sscanf@plt>
    12f1:	83 f8 03             	cmp    $0x3,%eax
    12f4:	74 20                	je     1316 <abracadabra+0x61>
    12f6:	b8 00 00 00 00       	mov    $0x0,%eax
    12fb:	48 8b b4 24 88 00 00 	mov    0x88(%rsp),%rsi
    1302:	00 
    1303:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    130a:	00 00 
    130c:	75 2b                	jne    1339 <abracadabra+0x84>
    130e:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
    1315:	c3                   	ret    
    1316:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    131b:	48 8d 35 6e 1b 00 00 	lea    0x1b6e(%rip),%rsi        # 2e90 <_IO_stdin_used+0x1b0>
    1322:	e8 fe 05 00 00       	call   1925 <strings_not_equal>
    1327:	85 c0                	test   %eax,%eax
    1329:	74 07                	je     1332 <abracadabra+0x7d>
    132b:	b8 00 00 00 00       	mov    $0x0,%eax
    1330:	eb c9                	jmp    12fb <abracadabra+0x46>
    1332:	b8 01 00 00 00       	mov    $0x1,%eax
    1337:	eb c2                	jmp    12fb <abracadabra+0x46>
    1339:	e8 72 fb ff ff       	call   eb0 <__stack_chk_fail@plt>

000000000000133e <alohomora>:
    133e:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
    1345:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    134c:	00 00 
    134e:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
    1353:	31 c0                	xor    %eax,%eax
    1355:	48 8d 05 bc 41 20 00 	lea    0x2041bc(%rip),%rax        # 205518 <input_strings+0x78>
    135c:	eb 04                	jmp    1362 <alohomora+0x24>
    135e:	48 83 c0 01          	add    $0x1,%rax
    1362:	80 38 00             	cmpb   $0x0,(%rax)
    1365:	75 f7                	jne    135e <alohomora+0x20>
    1367:	48 83 e8 01          	sub    $0x1,%rax
    136b:	48 89 e1             	mov    %rsp,%rcx
    136e:	eb 0a                	jmp    137a <alohomora+0x3c>
    1370:	88 11                	mov    %dl,(%rcx)
    1372:	48 83 c1 01          	add    $0x1,%rcx
    1376:	48 83 e8 01          	sub    $0x1,%rax
    137a:	0f b6 10             	movzbl (%rax),%edx
    137d:	80 fa 20             	cmp    $0x20,%dl
    1380:	74 0c                	je     138e <alohomora+0x50>
    1382:	48 8d 35 8f 41 20 00 	lea    0x20418f(%rip),%rsi        # 205518 <input_strings+0x78>
    1389:	48 39 f0             	cmp    %rsi,%rax
    138c:	75 e2                	jne    1370 <alohomora+0x32>
    138e:	c6 01 00             	movb   $0x0,(%rcx)
    1391:	48 89 e7             	mov    %rsp,%rdi
    1394:	48 8d 35 1d 1b 00 00 	lea    0x1b1d(%rip),%rsi        # 2eb8 <_IO_stdin_used+0x1d8>
    139b:	e8 85 05 00 00       	call   1925 <strings_not_equal>
    13a0:	85 c0                	test   %eax,%eax
    13a2:	74 1d                	je     13c1 <alohomora+0x83>
    13a4:	b8 00 00 00 00       	mov    $0x0,%eax
    13a9:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
    13ae:	64 48 33 3c 25 28 00 	xor    %fs:0x28,%rdi
    13b5:	00 00 
    13b7:	75 0f                	jne    13c8 <alohomora+0x8a>
    13b9:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
    13c0:	c3                   	ret    
    13c1:	b8 01 00 00 00       	mov    $0x1,%eax
    13c6:	eb e1                	jmp    13a9 <alohomora+0x6b>
    13c8:	e8 e3 fa ff ff       	call   eb0 <__stack_chk_fail@plt>

00000000000013cd <phase_1>:
    13cd:	48 83 ec 08          	sub    $0x8,%rsp
    13d1:	48 8d 35 10 1b 00 00 	lea    0x1b10(%rip),%rsi        # 2ee8 <_IO_stdin_used+0x208>
    13d8:	e8 48 05 00 00       	call   1925 <strings_not_equal>
    13dd:	85 c0                	test   %eax,%eax
    13df:	75 05                	jne    13e6 <phase_1+0x19>
    13e1:	48 83 c4 08          	add    $0x8,%rsp
    13e5:	c3                   	ret    
    13e6:	e8 66 08 00 00       	call   1c51 <explode_bomb>
    13eb:	eb f4                	jmp    13e1 <phase_1+0x14>

00000000000013ed <phase_2>:
    13ed:	53                   	push   %rbx
    13ee:	48 83 ec 20          	sub    $0x20,%rsp
    13f2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    13f9:	00 00 
    13fb:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1400:	31 c0                	xor    %eax,%eax
    1402:	48 89 e6             	mov    %rsp,%rsi
    1405:	e8 c7 08 00 00       	call   1cd1 <read_six_numbers>
    140a:	83 3c 24 01          	cmpl   $0x1,(%rsp)
    140e:	75 07                	jne    1417 <phase_2+0x2a>
    1410:	bb 01 00 00 00       	mov    $0x1,%ebx
    1415:	eb 0a                	jmp    1421 <phase_2+0x34>
    1417:	e8 35 08 00 00       	call   1c51 <explode_bomb>
    141c:	eb f2                	jmp    1410 <phase_2+0x23>
    141e:	83 c3 01             	add    $0x1,%ebx
    1421:	83 fb 05             	cmp    $0x5,%ebx
    1424:	7f 19                	jg     143f <phase_2+0x52>
    1426:	48 63 d3             	movslq %ebx,%rdx
    1429:	8d 43 ff             	lea    -0x1(%rbx),%eax
    142c:	48 98                	cltq   
    142e:	8b 04 84             	mov    (%rsp,%rax,4),%eax
    1431:	01 c0                	add    %eax,%eax
    1433:	39 04 94             	cmp    %eax,(%rsp,%rdx,4)
    1436:	74 e6                	je     141e <phase_2+0x31>
    1438:	e8 14 08 00 00       	call   1c51 <explode_bomb>
    143d:	eb df                	jmp    141e <phase_2+0x31>
    143f:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1444:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    144b:	00 00 
    144d:	75 06                	jne    1455 <phase_2+0x68>
    144f:	48 83 c4 20          	add    $0x20,%rsp
    1453:	5b                   	pop    %rbx
    1454:	c3                   	ret    
    1455:	e8 56 fa ff ff       	call   eb0 <__stack_chk_fail@plt>

000000000000145a <phase_3>:
    145a:	48 83 ec 18          	sub    $0x18,%rsp
    145e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1465:	00 00 
    1467:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    146c:	31 c0                	xor    %eax,%eax
    146e:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    1473:	48 89 e2             	mov    %rsp,%rdx
    1476:	48 8d 35 b3 1e 00 00 	lea    0x1eb3(%rip),%rsi        # 3330 <transition_table+0x310>
    147d:	e8 de fa ff ff       	call   f60 <__isoc99_sscanf@plt>
    1482:	83 f8 01             	cmp    $0x1,%eax
    1485:	7e 19                	jle    14a0 <phase_3+0x46>
    1487:	83 3c 24 07          	cmpl   $0x7,(%rsp)
    148b:	77 4b                	ja     14d8 <phase_3+0x7e>
    148d:	8b 04 24             	mov    (%rsp),%eax
    1490:	48 8d 15 49 1b 00 00 	lea    0x1b49(%rip),%rdx        # 2fe0 <_IO_stdin_used+0x300>
    1497:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    149b:	48 01 d0             	add    %rdx,%rax
    149e:	ff e0                	jmp    *%rax
    14a0:	e8 ac 07 00 00       	call   1c51 <explode_bomb>
    14a5:	eb e0                	jmp    1487 <phase_3+0x2d>
    14a7:	b8 bd 03 00 00       	mov    $0x3bd,%eax
    14ac:	eb 3b                	jmp    14e9 <phase_3+0x8f>
    14ae:	b8 fb 00 00 00       	mov    $0xfb,%eax
    14b3:	eb 34                	jmp    14e9 <phase_3+0x8f>
    14b5:	b8 6a 03 00 00       	mov    $0x36a,%eax
    14ba:	eb 2d                	jmp    14e9 <phase_3+0x8f>
    14bc:	b8 9d 03 00 00       	mov    $0x39d,%eax
    14c1:	eb 26                	jmp    14e9 <phase_3+0x8f>
    14c3:	b8 24 03 00 00       	mov    $0x324,%eax
    14c8:	eb 1f                	jmp    14e9 <phase_3+0x8f>
    14ca:	b8 14 01 00 00       	mov    $0x114,%eax
    14cf:	eb 18                	jmp    14e9 <phase_3+0x8f>
    14d1:	b8 9c 02 00 00       	mov    $0x29c,%eax
    14d6:	eb 11                	jmp    14e9 <phase_3+0x8f>
    14d8:	e8 74 07 00 00       	call   1c51 <explode_bomb>
    14dd:	b8 00 00 00 00       	mov    $0x0,%eax
    14e2:	eb 05                	jmp    14e9 <phase_3+0x8f>
    14e4:	b8 72 02 00 00       	mov    $0x272,%eax
    14e9:	39 44 24 04          	cmp    %eax,0x4(%rsp)
    14ed:	74 05                	je     14f4 <phase_3+0x9a>
    14ef:	e8 5d 07 00 00       	call   1c51 <explode_bomb>
    14f4:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    14f9:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1500:	00 00 
    1502:	75 05                	jne    1509 <phase_3+0xaf>
    1504:	48 83 c4 18          	add    $0x18,%rsp
    1508:	c3                   	ret    
    1509:	e8 a2 f9 ff ff       	call   eb0 <__stack_chk_fail@plt>

000000000000150e <func4>:
    150e:	85 ff                	test   %edi,%edi
    1510:	7e 2e                	jle    1540 <func4+0x32>
    1512:	83 ff 01             	cmp    $0x1,%edi
    1515:	75 03                	jne    151a <func4+0xc>
    1517:	89 f0                	mov    %esi,%eax
    1519:	c3                   	ret    
    151a:	41 54                	push   %r12
    151c:	55                   	push   %rbp
    151d:	53                   	push   %rbx
    151e:	89 f3                	mov    %esi,%ebx
    1520:	89 fd                	mov    %edi,%ebp
    1522:	8d 7f ff             	lea    -0x1(%rdi),%edi
    1525:	e8 e4 ff ff ff       	call   150e <func4>
    152a:	44 8d 24 18          	lea    (%rax,%rbx,1),%r12d
    152e:	8d 7d fe             	lea    -0x2(%rbp),%edi
    1531:	89 de                	mov    %ebx,%esi
    1533:	e8 d6 ff ff ff       	call   150e <func4>
    1538:	44 01 e0             	add    %r12d,%eax
    153b:	5b                   	pop    %rbx
    153c:	5d                   	pop    %rbp
    153d:	41 5c                	pop    %r12
    153f:	c3                   	ret    
    1540:	b8 00 00 00 00       	mov    $0x0,%eax
    1545:	c3                   	ret    

0000000000001546 <phase_4>:
    1546:	48 83 ec 18          	sub    $0x18,%rsp
    154a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1551:	00 00 
    1553:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1558:	31 c0                	xor    %eax,%eax
    155a:	48 89 e1             	mov    %rsp,%rcx
    155d:	48 8d 54 24 04       	lea    0x4(%rsp),%rdx
    1562:	48 8d 35 c7 1d 00 00 	lea    0x1dc7(%rip),%rsi        # 3330 <transition_table+0x310>
    1569:	e8 f2 f9 ff ff       	call   f60 <__isoc99_sscanf@plt>
    156e:	83 f8 02             	cmp    $0x2,%eax
    1571:	75 0d                	jne    1580 <phase_4+0x3a>
    1573:	8b 04 24             	mov    (%rsp),%eax
    1576:	83 f8 01             	cmp    $0x1,%eax
    1579:	7e 05                	jle    1580 <phase_4+0x3a>
    157b:	83 f8 04             	cmp    $0x4,%eax
    157e:	7e 05                	jle    1585 <phase_4+0x3f>
    1580:	e8 cc 06 00 00       	call   1c51 <explode_bomb>
    1585:	8b 34 24             	mov    (%rsp),%esi
    1588:	bf 09 00 00 00       	mov    $0x9,%edi
    158d:	e8 7c ff ff ff       	call   150e <func4>
    1592:	39 44 24 04          	cmp    %eax,0x4(%rsp)
    1596:	74 05                	je     159d <phase_4+0x57>
    1598:	e8 b4 06 00 00       	call   1c51 <explode_bomb>
    159d:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    15a2:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    15a9:	00 00 
    15ab:	75 05                	jne    15b2 <phase_4+0x6c>
    15ad:	48 83 c4 18          	add    $0x18,%rsp
    15b1:	c3                   	ret    
    15b2:	e8 f9 f8 ff ff       	call   eb0 <__stack_chk_fail@plt>

00000000000015b7 <phase_5>:
    15b7:	53                   	push   %rbx
    15b8:	48 83 ec 10          	sub    $0x10,%rsp
    15bc:	48 89 fb             	mov    %rdi,%rbx
    15bf:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    15c6:	00 00 
    15c8:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    15cd:	31 c0                	xor    %eax,%eax
    15cf:	e8 3c 03 00 00       	call   1910 <string_length>
    15d4:	83 f8 06             	cmp    $0x6,%eax
    15d7:	75 07                	jne    15e0 <phase_5+0x29>
    15d9:	b8 00 00 00 00       	mov    $0x0,%eax
    15de:	eb 23                	jmp    1603 <phase_5+0x4c>
    15e0:	e8 6c 06 00 00       	call   1c51 <explode_bomb>
    15e5:	eb f2                	jmp    15d9 <phase_5+0x22>
    15e7:	48 63 c8             	movslq %eax,%rcx
    15ea:	0f b6 14 0b          	movzbl (%rbx,%rcx,1),%edx
    15ee:	83 e2 0f             	and    $0xf,%edx
    15f1:	48 8d 35 08 1a 00 00 	lea    0x1a08(%rip),%rsi        # 3000 <array.3438>
    15f8:	0f b6 14 16          	movzbl (%rsi,%rdx,1),%edx
    15fc:	88 54 0c 01          	mov    %dl,0x1(%rsp,%rcx,1)
    1600:	83 c0 01             	add    $0x1,%eax
    1603:	83 f8 05             	cmp    $0x5,%eax
    1606:	7e df                	jle    15e7 <phase_5+0x30>
    1608:	c6 44 24 07 00       	movb   $0x0,0x7(%rsp)
    160d:	48 8d 7c 24 01       	lea    0x1(%rsp),%rdi
    1612:	48 8d 35 6c 18 00 00 	lea    0x186c(%rip),%rsi        # 2e85 <_IO_stdin_used+0x1a5>
    1619:	e8 07 03 00 00       	call   1925 <strings_not_equal>
    161e:	85 c0                	test   %eax,%eax
    1620:	75 16                	jne    1638 <phase_5+0x81>
    1622:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1627:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    162e:	00 00 
    1630:	75 0d                	jne    163f <phase_5+0x88>
    1632:	48 83 c4 10          	add    $0x10,%rsp
    1636:	5b                   	pop    %rbx
    1637:	c3                   	ret    
    1638:	e8 14 06 00 00       	call   1c51 <explode_bomb>
    163d:	eb e3                	jmp    1622 <phase_5+0x6b>
    163f:	e8 6c f8 ff ff       	call   eb0 <__stack_chk_fail@plt>

0000000000001644 <phase_6>:
    1644:	41 54                	push   %r12
    1646:	55                   	push   %rbp
    1647:	53                   	push   %rbx
    1648:	48 83 ec 60          	sub    $0x60,%rsp
    164c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1653:	00 00 
    1655:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    165a:	31 c0                	xor    %eax,%eax
    165c:	48 89 e6             	mov    %rsp,%rsi
    165f:	e8 6d 06 00 00       	call   1cd1 <read_six_numbers>
    1664:	bd 00 00 00 00       	mov    $0x0,%ebp
    1669:	eb 27                	jmp    1692 <phase_6+0x4e>
    166b:	e8 e1 05 00 00       	call   1c51 <explode_bomb>
    1670:	eb 33                	jmp    16a5 <phase_6+0x61>
    1672:	83 c3 01             	add    $0x1,%ebx
    1675:	83 fb 05             	cmp    $0x5,%ebx
    1678:	7f 15                	jg     168f <phase_6+0x4b>
    167a:	48 63 c5             	movslq %ebp,%rax
    167d:	48 63 d3             	movslq %ebx,%rdx
    1680:	8b 3c 94             	mov    (%rsp,%rdx,4),%edi
    1683:	39 3c 84             	cmp    %edi,(%rsp,%rax,4)
    1686:	75 ea                	jne    1672 <phase_6+0x2e>
    1688:	e8 c4 05 00 00       	call   1c51 <explode_bomb>
    168d:	eb e3                	jmp    1672 <phase_6+0x2e>
    168f:	44 89 e5             	mov    %r12d,%ebp
    1692:	83 fd 05             	cmp    $0x5,%ebp
    1695:	7f 17                	jg     16ae <phase_6+0x6a>
    1697:	48 63 c5             	movslq %ebp,%rax
    169a:	8b 04 84             	mov    (%rsp,%rax,4),%eax
    169d:	83 e8 01             	sub    $0x1,%eax
    16a0:	83 f8 05             	cmp    $0x5,%eax
    16a3:	77 c6                	ja     166b <phase_6+0x27>
    16a5:	44 8d 65 01          	lea    0x1(%rbp),%r12d
    16a9:	44 89 e3             	mov    %r12d,%ebx
    16ac:	eb c7                	jmp    1675 <phase_6+0x31>
    16ae:	b8 00 00 00 00       	mov    $0x0,%eax
    16b3:	eb 11                	jmp    16c6 <phase_6+0x82>
    16b5:	48 63 c8             	movslq %eax,%rcx
    16b8:	ba 07 00 00 00       	mov    $0x7,%edx
    16bd:	2b 14 8c             	sub    (%rsp,%rcx,4),%edx
    16c0:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
    16c3:	83 c0 01             	add    $0x1,%eax
    16c6:	83 f8 05             	cmp    $0x5,%eax
    16c9:	7e ea                	jle    16b5 <phase_6+0x71>
    16cb:	be 00 00 00 00       	mov    $0x0,%esi
    16d0:	eb 17                	jmp    16e9 <phase_6+0xa5>
    16d2:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    16d6:	83 c0 01             	add    $0x1,%eax
    16d9:	48 63 ce             	movslq %esi,%rcx
    16dc:	39 04 8c             	cmp    %eax,(%rsp,%rcx,4)
    16df:	7f f1                	jg     16d2 <phase_6+0x8e>
    16e1:	48 89 54 cc 20       	mov    %rdx,0x20(%rsp,%rcx,8)
    16e6:	83 c6 01             	add    $0x1,%esi
    16e9:	83 fe 05             	cmp    $0x5,%esi
    16ec:	7f 0e                	jg     16fc <phase_6+0xb8>
    16ee:	b8 01 00 00 00       	mov    $0x1,%eax
    16f3:	48 8d 15 56 39 20 00 	lea    0x203956(%rip),%rdx        # 205050 <node1>
    16fa:	eb dd                	jmp    16d9 <phase_6+0x95>
    16fc:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    1701:	48 89 d9             	mov    %rbx,%rcx
    1704:	b8 01 00 00 00       	mov    $0x1,%eax
    1709:	eb 12                	jmp    171d <phase_6+0xd9>
    170b:	48 63 d0             	movslq %eax,%rdx
    170e:	48 8b 54 d4 20       	mov    0x20(%rsp,%rdx,8),%rdx
    1713:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    1717:	83 c0 01             	add    $0x1,%eax
    171a:	48 89 d1             	mov    %rdx,%rcx
    171d:	83 f8 05             	cmp    $0x5,%eax
    1720:	7e e9                	jle    170b <phase_6+0xc7>
    1722:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)
    1729:	00 
    172a:	bd 00 00 00 00       	mov    $0x0,%ebp
    172f:	eb 07                	jmp    1738 <phase_6+0xf4>
    1731:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    1735:	83 c5 01             	add    $0x1,%ebp
    1738:	83 fd 04             	cmp    $0x4,%ebp
    173b:	7f 11                	jg     174e <phase_6+0x10a>
    173d:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1741:	8b 00                	mov    (%rax),%eax
    1743:	39 03                	cmp    %eax,(%rbx)
    1745:	7d ea                	jge    1731 <phase_6+0xed>
    1747:	e8 05 05 00 00       	call   1c51 <explode_bomb>
    174c:	eb e3                	jmp    1731 <phase_6+0xed>
    174e:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    1753:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    175a:	00 00 
    175c:	75 09                	jne    1767 <phase_6+0x123>
    175e:	48 83 c4 60          	add    $0x60,%rsp
    1762:	5b                   	pop    %rbx
    1763:	5d                   	pop    %rbp
    1764:	41 5c                	pop    %r12
    1766:	c3                   	ret    
    1767:	e8 44 f7 ff ff       	call   eb0 <__stack_chk_fail@plt>

000000000000176c <emulate_fsm>:
    176c:	0f b6 16             	movzbl (%rsi),%edx
    176f:	84 d2                	test   %dl,%dl
    1771:	74 36                	je     17a9 <emulate_fsm+0x3d>
    1773:	8d 42 d0             	lea    -0x30(%rdx),%eax
    1776:	3c 01                	cmp    $0x1,%al
    1778:	77 2a                	ja     17a4 <emulate_fsm+0x38>
    177a:	0f be d2             	movsbl %dl,%edx
    177d:	83 ea 30             	sub    $0x30,%edx
    1780:	48 63 c7             	movslq %edi,%rax
    1783:	48 63 d2             	movslq %edx,%rdx
    1786:	48 8d 3c d5 00 00 00 	lea    0x0(,%rdx,8),%rdi
    178d:	00 
    178e:	48 29 d7             	sub    %rdx,%rdi
    1791:	48 01 c7             	add    %rax,%rdi
    1794:	48 8d 05 85 18 00 00 	lea    0x1885(%rip),%rax        # 3020 <transition_table>
    179b:	8b 3c b8             	mov    (%rax,%rdi,4),%edi
    179e:	48 83 c6 01          	add    $0x1,%rsi
    17a2:	eb c8                	jmp    176c <emulate_fsm>
    17a4:	bf ff ff ff ff       	mov    $0xffffffff,%edi
    17a9:	89 f8                	mov    %edi,%eax
    17ab:	c3                   	ret    

00000000000017ac <check_synchronizing_sequence>:
    17ac:	41 54                	push   %r12
    17ae:	55                   	push   %rbp
    17af:	53                   	push   %rbx
    17b0:	48 89 fd             	mov    %rdi,%rbp
    17b3:	48 89 fe             	mov    %rdi,%rsi
    17b6:	bf 00 00 00 00       	mov    $0x0,%edi
    17bb:	e8 ac ff ff ff       	call   176c <emulate_fsm>
    17c0:	41 89 c4             	mov    %eax,%r12d
    17c3:	bb 01 00 00 00       	mov    $0x1,%ebx
    17c8:	83 fb 06             	cmp    $0x6,%ebx
    17cb:	7f 14                	jg     17e1 <check_synchronizing_sequence+0x35>
    17cd:	48 89 ee             	mov    %rbp,%rsi
    17d0:	89 df                	mov    %ebx,%edi
    17d2:	e8 95 ff ff ff       	call   176c <emulate_fsm>
    17d7:	44 39 e0             	cmp    %r12d,%eax
    17da:	75 0f                	jne    17eb <check_synchronizing_sequence+0x3f>
    17dc:	83 c3 01             	add    $0x1,%ebx
    17df:	eb e7                	jmp    17c8 <check_synchronizing_sequence+0x1c>
    17e1:	b8 00 00 00 00       	mov    $0x0,%eax
    17e6:	5b                   	pop    %rbx
    17e7:	5d                   	pop    %rbp
    17e8:	41 5c                	pop    %r12
    17ea:	c3                   	ret    
    17eb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    17f0:	eb f4                	jmp    17e6 <check_synchronizing_sequence+0x3a>

00000000000017f2 <secret_phase>:
    17f2:	55                   	push   %rbp
    17f3:	53                   	push   %rbx
    17f4:	48 83 ec 18          	sub    $0x18,%rsp
    17f8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    17ff:	00 00 
    1801:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1806:	31 c0                	xor    %eax,%eax
    1808:	e8 05 05 00 00       	call   1d12 <read_line>
    180d:	48 89 c5             	mov    %rax,%rbp
    1810:	bb 00 00 00 00       	mov    $0x0,%ebx
    1815:	eb 03                	jmp    181a <secret_phase+0x28>
    1817:	83 c3 01             	add    $0x1,%ebx
    181a:	48 63 c3             	movslq %ebx,%rax
    181d:	80 7c 05 00 00       	cmpb   $0x0,0x0(%rbp,%rax,1)
    1822:	74 0c                	je     1830 <secret_phase+0x3e>
    1824:	83 fb 10             	cmp    $0x10,%ebx
    1827:	7e ee                	jle    1817 <secret_phase+0x25>
    1829:	e8 23 04 00 00       	call   1c51 <explode_bomb>
    182e:	eb e7                	jmp    1817 <secret_phase+0x25>
    1830:	48 89 ef             	mov    %rbp,%rdi
    1833:	e8 74 ff ff ff       	call   17ac <check_synchronizing_sequence>
    1838:	85 c0                	test   %eax,%eax
    183a:	75 45                	jne    1881 <secret_phase+0x8f>
    183c:	48 8d 3d e5 16 00 00 	lea    0x16e5(%rip),%rdi        # 2f28 <_IO_stdin_used+0x248>
    1843:	e8 48 f6 ff ff       	call   e90 <puts@plt>
    1848:	48 8d 3d 09 17 00 00 	lea    0x1709(%rip),%rdi        # 2f58 <_IO_stdin_used+0x278>
    184f:	e8 3c f6 ff ff       	call   e90 <puts@plt>
    1854:	48 8d 3d 55 17 00 00 	lea    0x1755(%rip),%rdi        # 2fb0 <_IO_stdin_used+0x2d0>
    185b:	e8 30 f6 ff ff       	call   e90 <puts@plt>
    1860:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    1865:	e8 01 06 00 00       	call   1e6b <phase_defused>
    186a:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    186f:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1876:	00 00 
    1878:	75 0e                	jne    1888 <secret_phase+0x96>
    187a:	48 83 c4 18          	add    $0x18,%rsp
    187e:	5b                   	pop    %rbx
    187f:	5d                   	pop    %rbp
    1880:	c3                   	ret    
    1881:	e8 cb 03 00 00       	call   1c51 <explode_bomb>
    1886:	eb b4                	jmp    183c <secret_phase+0x4a>
    1888:	e8 23 f6 ff ff       	call   eb0 <__stack_chk_fail@plt>

000000000000188d <sig_handler>:
    188d:	48 83 ec 08          	sub    $0x8,%rsp
    1891:	48 8d 3d c0 17 00 00 	lea    0x17c0(%rip),%rdi        # 3058 <transition_table+0x38>
    1898:	e8 f3 f5 ff ff       	call   e90 <puts@plt>
    189d:	bf 03 00 00 00       	mov    $0x3,%edi
    18a2:	e8 29 f7 ff ff       	call   fd0 <sleep@plt>
    18a7:	48 8d 35 fb 19 00 00 	lea    0x19fb(%rip),%rsi        # 32a9 <transition_table+0x289>
    18ae:	bf 01 00 00 00       	mov    $0x1,%edi
    18b3:	b8 00 00 00 00       	mov    $0x0,%eax
    18b8:	e8 b3 f6 ff ff       	call   f70 <__printf_chk@plt>
    18bd:	48 8b 3d 9c 3b 20 00 	mov    0x203b9c(%rip),%rdi        # 205460 <stdout@@GLIBC_2.2.5>
    18c4:	e8 87 f6 ff ff       	call   f50 <fflush@plt>
    18c9:	bf 01 00 00 00       	mov    $0x1,%edi
    18ce:	e8 fd f6 ff ff       	call   fd0 <sleep@plt>
    18d3:	48 8d 3d d7 19 00 00 	lea    0x19d7(%rip),%rdi        # 32b1 <transition_table+0x291>
    18da:	e8 b1 f5 ff ff       	call   e90 <puts@plt>
    18df:	bf 10 00 00 00       	mov    $0x10,%edi
    18e4:	e8 b7 f6 ff ff       	call   fa0 <exit@plt>

00000000000018e9 <invalid_phase>:
    18e9:	48 83 ec 08          	sub    $0x8,%rsp
    18ed:	48 89 fa             	mov    %rdi,%rdx
    18f0:	48 8d 35 c2 19 00 00 	lea    0x19c2(%rip),%rsi        # 32b9 <transition_table+0x299>
    18f7:	bf 01 00 00 00       	mov    $0x1,%edi
    18fc:	b8 00 00 00 00       	mov    $0x0,%eax
    1901:	e8 6a f6 ff ff       	call   f70 <__printf_chk@plt>
    1906:	bf 08 00 00 00       	mov    $0x8,%edi
    190b:	e8 90 f6 ff ff       	call   fa0 <exit@plt>

0000000000001910 <string_length>:
    1910:	b8 00 00 00 00       	mov    $0x0,%eax
    1915:	eb 07                	jmp    191e <string_length+0xe>
    1917:	48 83 c7 01          	add    $0x1,%rdi
    191b:	83 c0 01             	add    $0x1,%eax
    191e:	80 3f 00             	cmpb   $0x0,(%rdi)
    1921:	75 f4                	jne    1917 <string_length+0x7>
    1923:	f3 c3                	repz ret 

0000000000001925 <strings_not_equal>:
    1925:	41 54                	push   %r12
    1927:	55                   	push   %rbp
    1928:	53                   	push   %rbx
    1929:	48 89 fb             	mov    %rdi,%rbx
    192c:	48 89 f5             	mov    %rsi,%rbp
    192f:	e8 dc ff ff ff       	call   1910 <string_length>
    1934:	41 89 c4             	mov    %eax,%r12d
    1937:	48 89 ef             	mov    %rbp,%rdi
    193a:	e8 d1 ff ff ff       	call   1910 <string_length>
    193f:	41 39 c4             	cmp    %eax,%r12d
    1942:	74 0a                	je     194e <strings_not_equal+0x29>
    1944:	b8 01 00 00 00       	mov    $0x1,%eax
    1949:	5b                   	pop    %rbx
    194a:	5d                   	pop    %rbp
    194b:	41 5c                	pop    %r12
    194d:	c3                   	ret    
    194e:	0f b6 03             	movzbl (%rbx),%eax
    1951:	84 c0                	test   %al,%al
    1953:	74 0f                	je     1964 <strings_not_equal+0x3f>
    1955:	38 45 00             	cmp    %al,0x0(%rbp)
    1958:	75 11                	jne    196b <strings_not_equal+0x46>
    195a:	48 83 c3 01          	add    $0x1,%rbx
    195e:	48 83 c5 01          	add    $0x1,%rbp
    1962:	eb ea                	jmp    194e <strings_not_equal+0x29>
    1964:	b8 00 00 00 00       	mov    $0x0,%eax
    1969:	eb de                	jmp    1949 <strings_not_equal+0x24>
    196b:	b8 01 00 00 00       	mov    $0x1,%eax
    1970:	eb d7                	jmp    1949 <strings_not_equal+0x24>

0000000000001972 <initialize_bomb>:
    1972:	c3                   	ret    
    1973:	53                   	push   %rbx
    1974:	48 81 ec 58 20 00 00 	sub    $0x2058,%rsp
    197b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1982:	00 00 
    1984:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
    198b:	00 
    198c:	31 c0                	xor    %eax,%eax
    198e:	48 8d 35 f8 fe ff ff 	lea    -0x108(%rip),%rsi        # 188d <sig_handler>
    1995:	bf 02 00 00 00       	mov    $0x2,%edi
    199a:	e8 61 f5 ff ff       	call   f00 <signal@plt>
    199f:	48 89 e7             	mov    %rsp,%rdi
    19a2:	be 40 00 00 00       	mov    $0x40,%esi
    19a7:	e8 e4 f5 ff ff       	call   f90 <gethostname@plt>
    19ac:	85 c0                	test   %eax,%eax
    19ae:	eb 02                	jmp    19b2 <initialize_bomb+0x40>
    19b0:	89 c5                	mov    %eax,%ebp
    19b2:	89 c3                	mov    %eax,%ebx
    19b4:	48 63 c3             	movslq %ebx,%rax
    19b7:	48 8d 15 e2 36 20 00 	lea    0x2036e2(%rip),%rdx        # 2050a0 <host_table>
    19be:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
    19c2:	48 85 ff             	test   %rdi,%rdi
    19c5:	eb 02                	jmp    19c9 <initialize_bomb+0x57>
    19c7:	48 89 e6             	mov    %rsp,%rsi
    19ca:	e8 91 f4 ff ff       	call   e60 <strcasecmp@plt>
    19cf:	85 c0                	test   %eax,%eax
    19d1:	75 1b                	jne    19ee <initialize_bomb+0x7c>
    19d3:	83 c3 01             	add    $0x1,%ebx
    19d6:	eb dc                	jmp    19b4 <initialize_bomb+0x42>
    19d8:	48 8d 3d b1 16 00 00 	lea    0x16b1(%rip),%rdi        # 3090 <transition_table+0x70>
    19df:	e8 ac f4 ff ff       	call   e90 <puts@plt>
    19e4:	bf 08 00 00 00       	mov    $0x8,%edi
    19e9:	e8 b2 f5 ff ff       	call   fa0 <exit@plt>
    19ee:	bd 01 00 00 00       	mov    $0x1,%ebp
    19f3:	85 ed                	test   %ebp,%ebp
    19f5:	75 3b                	jne    1a32 <initialize_bomb+0xc0>
    19f7:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    19fc:	e8 bd 0f 00 00       	call   29be <init_driver>
    1a01:	85 c0                	test   %eax,%eax
    1a03:	78 43                	js     1a48 <initialize_bomb+0xd6>
    1a05:	bf 04 00 00 00       	mov    $0x4,%edi
    1a0a:	e8 31 f5 ff ff       	call   f40 <malloc@plt>
    1a0f:	c7 00 11 fa 21 20    	movl   $0x2021fa11,(%rax)
    1a15:	48 8b 8c 24 48 20 00 	mov    0x2048(%rsp),%rcx
    1a1c:	00 
    1a1d:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    1a24:	00 00 
    1a26:	75 45                	jne    1a6d <initialize_bomb+0xfb>
    1a28:	48 81 c4 58 20 00 00 	add    $0x2058,%rsp
    1a2f:	5b                   	pop    %rbx
    1a30:	5d                   	pop    %rbp
    1a31:	c3                   	ret    
    1a32:	48 8d 3d 8f 16 00 00 	lea    0x168f(%rip),%rdi        # 30c8 <transition_table+0xa8>
    1a39:	e8 52 f4 ff ff       	call   e90 <puts@plt>
    1a3e:	bf 08 00 00 00       	mov    $0x8,%edi
    1a43:	e8 58 f5 ff ff       	call   fa0 <exit@plt>
    1a48:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
    1a4d:	48 8d 35 76 18 00 00 	lea    0x1876(%rip),%rsi        # 32ca <transition_table+0x2aa>
    1a54:	bf 01 00 00 00       	mov    $0x1,%edi
    1a59:	b8 00 00 00 00       	mov    $0x0,%eax
    1a5e:	e8 0d f5 ff ff       	call   f70 <__printf_chk@plt>
    1a63:	bf 08 00 00 00       	mov    $0x8,%edi
    1a68:	e8 33 f5 ff ff       	call   fa0 <exit@plt>
    1a6d:	e8 3e f4 ff ff       	call   eb0 <__stack_chk_fail@plt>

0000000000001a72 <initialize_bomb_solve>:
    1a72:	f3 c3                	repz ret 

0000000000001a74 <blank_line>:
    1a74:	55                   	push   %rbp
    1a75:	53                   	push   %rbx
    1a76:	48 83 ec 08          	sub    $0x8,%rsp
    1a7a:	48 89 fd             	mov    %rdi,%rbp
    1a7d:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    1a81:	84 db                	test   %bl,%bl
    1a83:	74 1e                	je     1aa3 <blank_line+0x2f>
    1a85:	e8 56 f5 ff ff       	call   fe0 <__ctype_b_loc@plt>
    1a8a:	48 8b 00             	mov    (%rax),%rax
    1a8d:	48 83 c5 01          	add    $0x1,%rbp
    1a91:	48 0f be db          	movsbq %bl,%rbx
    1a95:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    1a9a:	75 e1                	jne    1a7d <blank_line+0x9>
    1a9c:	b8 00 00 00 00       	mov    $0x0,%eax
    1aa1:	eb 05                	jmp    1aa8 <blank_line+0x34>
    1aa3:	b8 01 00 00 00       	mov    $0x1,%eax
    1aa8:	48 83 c4 08          	add    $0x8,%rsp
    1aac:	5b                   	pop    %rbx
    1aad:	5d                   	pop    %rbp
    1aae:	c3                   	ret    

0000000000001aaf <skip>:
    1aaf:	53                   	push   %rbx
    1ab0:	48 63 15 d5 39 20 00 	movslq 0x2039d5(%rip),%rdx        # 20548c <num_input_strings>
    1ab7:	48 89 d0             	mov    %rdx,%rax
    1aba:	48 c1 e0 04          	shl    $0x4,%rax
    1abe:	48 29 d0             	sub    %rdx,%rax
    1ac1:	48 8d 3c c5 00 00 00 	lea    0x0(,%rax,8),%rdi
    1ac8:	00 
    1ac9:	48 8d 05 d0 39 20 00 	lea    0x2039d0(%rip),%rax        # 2054a0 <input_strings>
    1ad0:	48 01 c7             	add    %rax,%rdi
    1ad3:	48 8b 15 b6 39 20 00 	mov    0x2039b6(%rip),%rdx        # 205490 <infile>
    1ada:	be 78 00 00 00       	mov    $0x78,%esi
    1adf:	e8 0c f4 ff ff       	call   ef0 <fgets@plt>
    1ae4:	48 89 c3             	mov    %rax,%rbx
    1ae7:	48 85 c0             	test   %rax,%rax
    1aea:	74 0c                	je     1af8 <skip+0x49>
    1aec:	48 89 c7             	mov    %rax,%rdi
    1aef:	e8 80 ff ff ff       	call   1a74 <blank_line>
    1af4:	85 c0                	test   %eax,%eax
    1af6:	75 b8                	jne    1ab0 <skip+0x1>
    1af8:	48 89 d8             	mov    %rbx,%rax
    1afb:	5b                   	pop    %rbx
    1afc:	c3                   	ret    

0000000000001afd <send_msg>:
    1afd:	c3                   	ret    
    1afe:	53                   	push   %rbx
    1aff:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
    1b06:	41 89 f8             	mov    %edi,%r8d
    1b09:	48 89 f3             	mov    %rsi,%rbx
    1b0c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1b13:	00 00 
    1b15:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    1b1c:	00 
    1b1d:	31 c0                	xor    %eax,%eax
    1b1f:	8b 35 67 39 20 00    	mov    0x203967(%rip),%esi        # 20548c <num_input_strings>
    1b25:	8d 46 ff             	lea    -0x1(%rsi),%eax
    1b28:	48 98                	cltq   
    1b2a:	48 89 c2             	mov    %rax,%rdx
    1b2d:	48 c1 e2 04          	shl    $0x4,%rdx
    1b31:	48 29 c2             	sub    %rax,%rdx
    1b34:	48 8d 04 d5 00 00 00 	lea    0x0(,%rdx,8),%rax
    1b3b:	00 
    1b3c:	48 8d 15 5d 39 20 00 	lea    0x20395d(%rip),%rdx        # 2054a0 <input_strings>
    1b43:	48 01 c2             	add    %rax,%rdx
    1b46:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    1b4d:	b8 00 00 00 00       	mov    $0x0,%eax
    1b52:	48 89 d7             	mov    %rdx,%rdi
    1b55:	f2 ae                	repnz scas %es:(%rdi),%al
    1b57:	48 89 c8             	mov    %rcx,%rax
    1b5a:	48 f7 d0             	not    %rax
    1b5d:	48 83 c0 63          	add    $0x63,%rax
    1b61:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    1b67:	0f 87 9c 00 00 00    	ja     1c09 <send_msg+0x10c>
    1b6d:	45 85 c0             	test   %r8d,%r8d
    1b70:	0f 84 b3 00 00 00    	je     1c29 <send_msg+0x12c>
    1b76:	48 8d 05 67 17 00 00 	lea    0x1767(%rip),%rax        # 32e4 <transition_table+0x2c4>
    1b7d:	48 89 e5             	mov    %rsp,%rbp
    1b80:	48 83 ec 08          	sub    $0x8,%rsp
    1b84:	52                   	push   %rdx
    1b85:	56                   	push   %rsi
    1b86:	50                   	push   %rax
    1b87:	4c 8d 0d b2 2c 20 00 	lea    0x202cb2(%rip),%r9        # 204840 <authkey>
    1b8e:	44 8b 05 ab 34 20 00 	mov    0x2034ab(%rip),%r8d        # 205040 <bomb_id>
    1b95:	48 8d 0d 59 17 00 00 	lea    0x1759(%rip),%rcx        # 32f5 <transition_table+0x2d5>
    1b9c:	ba 00 20 00 00       	mov    $0x2000,%edx
    1ba1:	be 01 00 00 00       	mov    $0x1,%esi
    1ba6:	48 89 ef             	mov    %rbp,%rdi
    1ba9:	b8 00 00 00 00       	mov    $0x0,%eax
    1bae:	e8 3d f4 ff ff       	call   ff0 <__sprintf_chk@plt>
    1bb3:	48 83 c4 20          	add    $0x20,%rsp
    1bb7:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
    1bbe:	00 
    1bbf:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    1bc5:	48 89 e9             	mov    %rbp,%rcx
    1bc8:	48 8d 15 71 24 20 00 	lea    0x202471(%rip),%rdx        # 204040 <lab>
    1bcf:	48 8d 35 6a 28 20 00 	lea    0x20286a(%rip),%rsi        # 204440 <course>
    1bd6:	48 8d 3d 63 30 20 00 	lea    0x203063(%rip),%rdi        # 204c40 <userid>
    1bdd:	e8 07 10 00 00       	call   2be9 <driver_post>
    1be2:	c7 03 01 00 00 00    	movl   $0x1,(%rbx)
    1be8:	85 c0                	test   %eax,%eax
    1bea:	78 49                	js     1c35 <send_msg+0x138>
    1bec:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    1bf3:	00 
    1bf4:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1bfb:	00 00 
    1bfd:	75 4d                	jne    1c4c <send_msg+0x14f>
    1bff:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
    1c06:	5b                   	pop    %rbx
    1c07:	5d                   	pop    %rbp
    1c08:	c3                   	ret    
    1c09:	48 8d 35 f0 14 00 00 	lea    0x14f0(%rip),%rsi        # 3100 <transition_table+0xe0>
    1c10:	bf 01 00 00 00       	mov    $0x1,%edi
    1c15:	b8 00 00 00 00       	mov    $0x0,%eax
    1c1a:	e8 51 f3 ff ff       	call   f70 <__printf_chk@plt>
    1c1f:	bf 08 00 00 00       	mov    $0x8,%edi
    1c24:	e8 77 f3 ff ff       	call   fa0 <exit@plt>
    1c29:	48 8d 05 bc 16 00 00 	lea    0x16bc(%rip),%rax        # 32ec <transition_table+0x2cc>
    1c30:	e9 48 ff ff ff       	jmp    1b7d <send_msg+0x80>
    1c35:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
    1c3c:	00 
    1c3d:	e8 4e f2 ff ff       	call   e90 <puts@plt>
    1c42:	bf 00 00 00 00       	mov    $0x0,%edi
    1c47:	e8 54 f3 ff ff       	call   fa0 <exit@plt>
    1c4c:	e8 5f f2 ff ff       	call   eb0 <__stack_chk_fail@plt>

0000000000001c51 <explode_bomb>:
    1c51:	48 83 ec 18          	sub    $0x18,%rsp
    1c55:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1c5c:	00 00 
    1c5e:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1c63:	31 c0                	xor    %eax,%eax
    1c65:	48 8d 3d 98 16 00 00 	lea    0x1698(%rip),%rdi        # 3304 <transition_table+0x2e4>
    1c6c:	e8 1f f2 ff ff       	call   e90 <puts@plt>
    1c71:	48 8d 3d 95 16 00 00 	lea    0x1695(%rip),%rdi        # 330d <transition_table+0x2ed>
    1c78:	e8 13 f2 ff ff       	call   e90 <puts@plt>
    1c7d:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%rsp)
    1c84:	00 
    1c85:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
    1c8a:	bf 00 00 00 00       	mov    $0x0,%edi
    1c8f:	e8 69 fe ff ff       	call   1afd <send_msg>
    1c94:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)
    1c99:	74 20                	je     1cbb <explode_bomb+0x6a>
    1c9b:	48 8d 35 86 14 00 00 	lea    0x1486(%rip),%rsi        # 3128 <transition_table+0x108>
    1ca2:	bf 01 00 00 00       	mov    $0x1,%edi
    1ca7:	b8 00 00 00 00       	mov    $0x0,%eax
    1cac:	e8 bf f2 ff ff       	call   f70 <__printf_chk@plt>
    1cb1:	bf 08 00 00 00       	mov    $0x8,%edi
    1cb6:	e8 e5 f2 ff ff       	call   fa0 <exit@plt>
    1cbb:	48 8d 3d ae 14 00 00 	lea    0x14ae(%rip),%rdi        # 3170 <transition_table+0x150>
    1cc2:	e8 c9 f1 ff ff       	call   e90 <puts@plt>
    1cc7:	bf 08 00 00 00       	mov    $0x8,%edi
    1ccc:	e8 cf f2 ff ff       	call   fa0 <exit@plt>

0000000000001cd1 <read_six_numbers>:
    1cd1:	48 83 ec 08          	sub    $0x8,%rsp
    1cd5:	48 89 f2             	mov    %rsi,%rdx
    1cd8:	48 8d 76 14          	lea    0x14(%rsi),%rsi
    1cdc:	48 8d 42 10          	lea    0x10(%rdx),%rax
    1ce0:	48 8d 4a 04          	lea    0x4(%rdx),%rcx
    1ce4:	56                   	push   %rsi
    1ce5:	50                   	push   %rax
    1ce6:	4c 8d 4a 0c          	lea    0xc(%rdx),%r9
    1cea:	4c 8d 42 08          	lea    0x8(%rdx),%r8
    1cee:	48 8d 35 2f 16 00 00 	lea    0x162f(%rip),%rsi        # 3324 <transition_table+0x304>
    1cf5:	b8 00 00 00 00       	mov    $0x0,%eax
    1cfa:	e8 61 f2 ff ff       	call   f60 <__isoc99_sscanf@plt>
    1cff:	48 83 c4 10          	add    $0x10,%rsp
    1d03:	83 f8 05             	cmp    $0x5,%eax
    1d06:	7e 05                	jle    1d0d <read_six_numbers+0x3c>
    1d08:	48 83 c4 08          	add    $0x8,%rsp
    1d0c:	c3                   	ret    
    1d0d:	e8 3f ff ff ff       	call   1c51 <explode_bomb>

0000000000001d12 <read_line>:
    1d12:	48 83 ec 08          	sub    $0x8,%rsp
    1d16:	b8 00 00 00 00       	mov    $0x0,%eax
    1d1b:	e8 8f fd ff ff       	call   1aaf <skip>
    1d20:	48 85 c0             	test   %rax,%rax
    1d23:	0f 84 80 00 00 00    	je     1da9 <read_line+0x97>
    1d29:	8b 35 5d 37 20 00    	mov    0x20375d(%rip),%esi        # 20548c <num_input_strings>
    1d2f:	48 63 d6             	movslq %esi,%rdx
    1d32:	48 89 d0             	mov    %rdx,%rax
    1d35:	48 c1 e0 04          	shl    $0x4,%rax
    1d39:	48 29 d0             	sub    %rdx,%rax
    1d3c:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    1d43:	00 
    1d44:	48 8d 05 55 37 20 00 	lea    0x203755(%rip),%rax        # 2054a0 <input_strings>
    1d4b:	48 01 c2             	add    %rax,%rdx
    1d4e:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    1d55:	b8 00 00 00 00       	mov    $0x0,%eax
    1d5a:	48 89 d7             	mov    %rdx,%rdi
    1d5d:	f2 ae                	repnz scas %es:(%rdi),%al
    1d5f:	48 f7 d1             	not    %rcx
    1d62:	48 83 e9 01          	sub    $0x1,%rcx
    1d66:	83 f9 76             	cmp    $0x76,%ecx
    1d69:	0f 8f b2 00 00 00    	jg     1e21 <read_line+0x10f>
    1d6f:	83 e9 01             	sub    $0x1,%ecx
    1d72:	48 63 c9             	movslq %ecx,%rcx
    1d75:	48 63 fe             	movslq %esi,%rdi
    1d78:	48 89 f8             	mov    %rdi,%rax
    1d7b:	48 c1 e0 04          	shl    $0x4,%rax
    1d7f:	48 29 f8             	sub    %rdi,%rax
    1d82:	48 8d 3c c5 00 00 00 	lea    0x0(,%rax,8),%rdi
    1d89:	00 
    1d8a:	48 8d 05 0f 37 20 00 	lea    0x20370f(%rip),%rax        # 2054a0 <input_strings>
    1d91:	48 01 f8             	add    %rdi,%rax
    1d94:	c6 04 08 00          	movb   $0x0,(%rax,%rcx,1)
    1d98:	83 c6 01             	add    $0x1,%esi
    1d9b:	89 35 eb 36 20 00    	mov    %esi,0x2036eb(%rip)        # 20548c <num_input_strings>
    1da1:	48 89 d0             	mov    %rdx,%rax
    1da4:	48 83 c4 08          	add    $0x8,%rsp
    1da8:	c3                   	ret    
    1da9:	48 8b 05 c0 36 20 00 	mov    0x2036c0(%rip),%rax        # 205470 <stdin@@GLIBC_2.2.5>
    1db0:	48 39 05 d9 36 20 00 	cmp    %rax,0x2036d9(%rip)        # 205490 <infile>
    1db7:	74 1b                	je     1dd4 <read_line+0xc2>
    1db9:	48 8d 3d 94 15 00 00 	lea    0x1594(%rip),%rdi        # 3354 <transition_table+0x334>
    1dc0:	e8 7b f0 ff ff       	call   e40 <getenv@plt>
    1dc5:	48 85 c0             	test   %rax,%rax
    1dc8:	74 20                	je     1dea <read_line+0xd8>
    1dca:	bf 00 00 00 00       	mov    $0x0,%edi
    1dcf:	e8 cc f1 ff ff       	call   fa0 <exit@plt>
    1dd4:	48 8d 3d 5b 15 00 00 	lea    0x155b(%rip),%rdi        # 3336 <transition_table+0x316>
    1ddb:	e8 b0 f0 ff ff       	call   e90 <puts@plt>
    1de0:	bf 08 00 00 00       	mov    $0x8,%edi
    1de5:	e8 b6 f1 ff ff       	call   fa0 <exit@plt>
    1dea:	48 8b 05 7f 36 20 00 	mov    0x20367f(%rip),%rax        # 205470 <stdin@@GLIBC_2.2.5>
    1df1:	48 89 05 98 36 20 00 	mov    %rax,0x203698(%rip)        # 205490 <infile>
    1df8:	b8 00 00 00 00       	mov    $0x0,%eax
    1dfd:	e8 ad fc ff ff       	call   1aaf <skip>
    1e02:	48 85 c0             	test   %rax,%rax
    1e05:	0f 85 1e ff ff ff    	jne    1d29 <read_line+0x17>
    1e0b:	48 8d 3d 24 15 00 00 	lea    0x1524(%rip),%rdi        # 3336 <transition_table+0x316>
    1e12:	e8 79 f0 ff ff       	call   e90 <puts@plt>
    1e17:	bf 00 00 00 00       	mov    $0x0,%edi
    1e1c:	e8 7f f1 ff ff       	call   fa0 <exit@plt>
    1e21:	48 8d 3d 37 15 00 00 	lea    0x1537(%rip),%rdi        # 335f <transition_table+0x33f>
    1e28:	e8 63 f0 ff ff       	call   e90 <puts@plt>
    1e2d:	8b 05 59 36 20 00    	mov    0x203659(%rip),%eax        # 20548c <num_input_strings>
    1e33:	8d 50 01             	lea    0x1(%rax),%edx
    1e36:	89 15 50 36 20 00    	mov    %edx,0x203650(%rip)        # 20548c <num_input_strings>
    1e3c:	48 98                	cltq   
    1e3e:	48 6b c0 78          	imul   $0x78,%rax,%rax
    1e42:	48 8d 15 57 36 20 00 	lea    0x203657(%rip),%rdx        # 2054a0 <input_strings>
    1e49:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    1e50:	75 6e 63 
    1e53:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    1e5a:	2a 2a 00 
    1e5d:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    1e61:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    1e66:	e8 e6 fd ff ff       	call   1c51 <explode_bomb>

0000000000001e6b <phase_defused>:
    1e6b:	53                   	push   %rbx
    1e6c:	48 89 fb             	mov    %rdi,%rbx
    1e6f:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
    1e75:	48 89 fe             	mov    %rdi,%rsi
    1e78:	bf 01 00 00 00       	mov    $0x1,%edi
    1e7d:	e8 7b fc ff ff       	call   1afd <send_msg>
    1e82:	83 3b 01             	cmpl   $0x1,(%rbx)
    1e85:	74 0b                	je     1e92 <phase_defused+0x27>
    1e87:	83 3d fe 35 20 00 06 	cmpl   $0x6,0x2035fe(%rip)        # 20548c <num_input_strings>
    1e8e:	74 22                	je     1eb2 <phase_defused+0x47>
    1e90:	5b                   	pop    %rbx
    1e91:	c3                   	ret    
    1e92:	48 8d 35 8f 12 00 00 	lea    0x128f(%rip),%rsi        # 3128 <transition_table+0x108>
    1e99:	bf 01 00 00 00       	mov    $0x1,%edi
    1e9e:	b8 00 00 00 00       	mov    $0x0,%eax
    1ea3:	e8 c8 f0 ff ff       	call   f70 <__printf_chk@plt>
    1ea8:	bf 08 00 00 00       	mov    $0x8,%edi
    1ead:	e8 ee f0 ff ff       	call   fa0 <exit@plt>
    1eb2:	e8 fe f3 ff ff       	call   12b5 <abracadabra>
    1eb7:	85 c0                	test   %eax,%eax
    1eb9:	75 1a                	jne    1ed5 <phase_defused+0x6a>
    1ebb:	48 8d 3d 76 13 00 00 	lea    0x1376(%rip),%rdi        # 3238 <transition_table+0x218>
    1ec2:	e8 c9 ef ff ff       	call   e90 <puts@plt>
    1ec7:	48 8d 3d 9a 13 00 00 	lea    0x139a(%rip),%rdi        # 3268 <transition_table+0x248>
    1ece:	e8 bd ef ff ff       	call   e90 <puts@plt>
    1ed3:	eb bb                	jmp    1e90 <phase_defused+0x25>
    1ed5:	e8 64 f4 ff ff       	call   133e <alohomora>
    1eda:	85 c0                	test   %eax,%eax
    1edc:	74 24                	je     1f02 <phase_defused+0x97>
    1ede:	48 8d 3d b3 12 00 00 	lea    0x12b3(%rip),%rdi        # 3198 <transition_table+0x178>
    1ee5:	e8 a6 ef ff ff       	call   e90 <puts@plt>
    1eea:	48 8d 3d cf 12 00 00 	lea    0x12cf(%rip),%rdi        # 31c0 <transition_table+0x1a0>
    1ef1:	e8 9a ef ff ff       	call   e90 <puts@plt>
    1ef6:	b8 00 00 00 00       	mov    $0x0,%eax
    1efb:	e8 f2 f8 ff ff       	call   17f2 <secret_phase>
    1f00:	eb b9                	jmp    1ebb <phase_defused+0x50>
    1f02:	48 8d 3d ef 12 00 00 	lea    0x12ef(%rip),%rdi        # 31f8 <transition_table+0x1d8>
    1f09:	e8 82 ef ff ff       	call   e90 <puts@plt>
    1f0e:	eb ab                	jmp    1ebb <phase_defused+0x50>

0000000000001f10 <rio_readinitb>:
    1f10:	89 37                	mov    %esi,(%rdi)
    1f12:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
    1f19:	48 8d 47 10          	lea    0x10(%rdi),%rax
    1f1d:	48 89 47 08          	mov    %rax,0x8(%rdi)
    1f21:	c3                   	ret    

0000000000001f22 <sigalrm_handler>:
    1f22:	48 83 ec 08          	sub    $0x8,%rsp
    1f26:	b9 00 00 00 00       	mov    $0x0,%ecx
    1f2b:	48 8d 15 9e 14 00 00 	lea    0x149e(%rip),%rdx        # 33d0 <transition_table+0x3b0>
    1f32:	be 01 00 00 00       	mov    $0x1,%esi
    1f37:	48 8b 3d 42 35 20 00 	mov    0x203542(%rip),%rdi        # 205480 <stderr@@GLIBC_2.2.5>
    1f3e:	b8 00 00 00 00       	mov    $0x0,%eax
    1f43:	e8 78 f0 ff ff       	call   fc0 <__fprintf_chk@plt>
    1f48:	bf 01 00 00 00       	mov    $0x1,%edi
    1f4d:	e8 4e f0 ff ff       	call   fa0 <exit@plt>

0000000000001f52 <rio_writen>:
    1f52:	41 55                	push   %r13
    1f54:	41 54                	push   %r12
    1f56:	55                   	push   %rbp
    1f57:	53                   	push   %rbx
    1f58:	48 83 ec 08          	sub    $0x8,%rsp
    1f5c:	41 89 fc             	mov    %edi,%r12d
    1f5f:	48 89 f5             	mov    %rsi,%rbp
    1f62:	49 89 d5             	mov    %rdx,%r13
    1f65:	48 89 d3             	mov    %rdx,%rbx
    1f68:	eb 06                	jmp    1f70 <rio_writen+0x1e>
    1f6a:	48 29 c3             	sub    %rax,%rbx
    1f6d:	48 01 c5             	add    %rax,%rbp
    1f70:	48 85 db             	test   %rbx,%rbx
    1f73:	74 24                	je     1f99 <rio_writen+0x47>
    1f75:	48 89 da             	mov    %rbx,%rdx
    1f78:	48 89 ee             	mov    %rbp,%rsi
    1f7b:	44 89 e7             	mov    %r12d,%edi
    1f7e:	e8 1d ef ff ff       	call   ea0 <write@plt>
    1f83:	48 85 c0             	test   %rax,%rax
    1f86:	7f e2                	jg     1f6a <rio_writen+0x18>
    1f88:	e8 e3 ee ff ff       	call   e70 <__errno_location@plt>
    1f8d:	83 38 04             	cmpl   $0x4,(%rax)
    1f90:	75 15                	jne    1fa7 <rio_writen+0x55>
    1f92:	b8 00 00 00 00       	mov    $0x0,%eax
    1f97:	eb d1                	jmp    1f6a <rio_writen+0x18>
    1f99:	4c 89 e8             	mov    %r13,%rax
    1f9c:	48 83 c4 08          	add    $0x8,%rsp
    1fa0:	5b                   	pop    %rbx
    1fa1:	5d                   	pop    %rbp
    1fa2:	41 5c                	pop    %r12
    1fa4:	41 5d                	pop    %r13
    1fa6:	c3                   	ret    
    1fa7:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1fae:	eb ec                	jmp    1f9c <rio_writen+0x4a>

0000000000001fb0 <rio_read>:
    1fb0:	41 55                	push   %r13
    1fb2:	41 54                	push   %r12
    1fb4:	55                   	push   %rbp
    1fb5:	53                   	push   %rbx
    1fb6:	48 83 ec 08          	sub    $0x8,%rsp
    1fba:	48 89 fb             	mov    %rdi,%rbx
    1fbd:	49 89 f5             	mov    %rsi,%r13
    1fc0:	49 89 d4             	mov    %rdx,%r12
    1fc3:	eb 0a                	jmp    1fcf <rio_read+0x1f>
    1fc5:	e8 a6 ee ff ff       	call   e70 <__errno_location@plt>
    1fca:	83 38 04             	cmpl   $0x4,(%rax)
    1fcd:	75 5c                	jne    202b <rio_read+0x7b>
    1fcf:	8b 6b 04             	mov    0x4(%rbx),%ebp
    1fd2:	85 ed                	test   %ebp,%ebp
    1fd4:	7f 24                	jg     1ffa <rio_read+0x4a>
    1fd6:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
    1fda:	8b 3b                	mov    (%rbx),%edi
    1fdc:	ba 00 20 00 00       	mov    $0x2000,%edx
    1fe1:	48 89 ee             	mov    %rbp,%rsi
    1fe4:	e8 f7 ee ff ff       	call   ee0 <read@plt>
    1fe9:	89 43 04             	mov    %eax,0x4(%rbx)
    1fec:	85 c0                	test   %eax,%eax
    1fee:	78 d5                	js     1fc5 <rio_read+0x15>
    1ff0:	85 c0                	test   %eax,%eax
    1ff2:	74 40                	je     2034 <rio_read+0x84>
    1ff4:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    1ff8:	eb d5                	jmp    1fcf <rio_read+0x1f>
    1ffa:	89 e8                	mov    %ebp,%eax
    1ffc:	4c 39 e0             	cmp    %r12,%rax
    1fff:	72 03                	jb     2004 <rio_read+0x54>
    2001:	44 89 e5             	mov    %r12d,%ebp
    2004:	4c 63 e5             	movslq %ebp,%r12
    2007:	48 8b 73 08          	mov    0x8(%rbx),%rsi
    200b:	4c 89 e2             	mov    %r12,%rdx
    200e:	4c 89 ef             	mov    %r13,%rdi
    2011:	e8 1a ef ff ff       	call   f30 <memcpy@plt>
    2016:	4c 01 63 08          	add    %r12,0x8(%rbx)
    201a:	29 6b 04             	sub    %ebp,0x4(%rbx)
    201d:	4c 89 e0             	mov    %r12,%rax
    2020:	48 83 c4 08          	add    $0x8,%rsp
    2024:	5b                   	pop    %rbx
    2025:	5d                   	pop    %rbp
    2026:	41 5c                	pop    %r12
    2028:	41 5d                	pop    %r13
    202a:	c3                   	ret    
    202b:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    2032:	eb ec                	jmp    2020 <rio_read+0x70>
    2034:	b8 00 00 00 00       	mov    $0x0,%eax
    2039:	eb e5                	jmp    2020 <rio_read+0x70>

000000000000203b <rio_readlineb>:
    203b:	41 55                	push   %r13
    203d:	41 54                	push   %r12
    203f:	55                   	push   %rbp
    2040:	53                   	push   %rbx
    2041:	48 83 ec 18          	sub    $0x18,%rsp
    2045:	49 89 fd             	mov    %rdi,%r13
    2048:	48 89 f5             	mov    %rsi,%rbp
    204b:	49 89 d4             	mov    %rdx,%r12
    204e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2055:	00 00 
    2057:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    205c:	31 c0                	xor    %eax,%eax
    205e:	bb 01 00 00 00       	mov    $0x1,%ebx
    2063:	4c 39 e3             	cmp    %r12,%rbx
    2066:	73 47                	jae    20af <rio_readlineb+0x74>
    2068:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
    206d:	ba 01 00 00 00       	mov    $0x1,%edx
    2072:	4c 89 ef             	mov    %r13,%rdi
    2075:	e8 36 ff ff ff       	call   1fb0 <rio_read>
    207a:	83 f8 01             	cmp    $0x1,%eax
    207d:	75 1c                	jne    209b <rio_readlineb+0x60>
    207f:	48 8d 45 01          	lea    0x1(%rbp),%rax
    2083:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
    2088:	88 55 00             	mov    %dl,0x0(%rbp)
    208b:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
    2090:	74 1a                	je     20ac <rio_readlineb+0x71>
    2092:	48 83 c3 01          	add    $0x1,%rbx
    2096:	48 89 c5             	mov    %rax,%rbp
    2099:	eb c8                	jmp    2063 <rio_readlineb+0x28>
    209b:	85 c0                	test   %eax,%eax
    209d:	75 32                	jne    20d1 <rio_readlineb+0x96>
    209f:	48 83 fb 01          	cmp    $0x1,%rbx
    20a3:	75 0a                	jne    20af <rio_readlineb+0x74>
    20a5:	b8 00 00 00 00       	mov    $0x0,%eax
    20aa:	eb 0a                	jmp    20b6 <rio_readlineb+0x7b>
    20ac:	48 89 c5             	mov    %rax,%rbp
    20af:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
    20b3:	48 89 d8             	mov    %rbx,%rax
    20b6:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    20bb:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    20c2:	00 00 
    20c4:	75 14                	jne    20da <rio_readlineb+0x9f>
    20c6:	48 83 c4 18          	add    $0x18,%rsp
    20ca:	5b                   	pop    %rbx
    20cb:	5d                   	pop    %rbp
    20cc:	41 5c                	pop    %r12
    20ce:	41 5d                	pop    %r13
    20d0:	c3                   	ret    
    20d1:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    20d8:	eb dc                	jmp    20b6 <rio_readlineb+0x7b>
    20da:	e8 d1 ed ff ff       	call   eb0 <__stack_chk_fail@plt>

00000000000020df <urlencode>:
    20df:	41 54                	push   %r12
    20e1:	55                   	push   %rbp
    20e2:	53                   	push   %rbx
    20e3:	48 83 ec 10          	sub    $0x10,%rsp
    20e7:	48 89 fb             	mov    %rdi,%rbx
    20ea:	48 89 f5             	mov    %rsi,%rbp
    20ed:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    20f4:	00 00 
    20f6:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    20fb:	31 c0                	xor    %eax,%eax
    20fd:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    2104:	f2 ae                	repnz scas %es:(%rdi),%al
    2106:	48 89 ce             	mov    %rcx,%rsi
    2109:	48 f7 d6             	not    %rsi
    210c:	8d 46 ff             	lea    -0x1(%rsi),%eax
    210f:	eb 0f                	jmp    2120 <urlencode+0x41>
    2111:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    2115:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    2119:	48 83 c3 01          	add    $0x1,%rbx
    211d:	44 89 e0             	mov    %r12d,%eax
    2120:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
    2124:	85 c0                	test   %eax,%eax
    2126:	0f 84 a8 00 00 00    	je     21d4 <urlencode+0xf5>
    212c:	44 0f b6 03          	movzbl (%rbx),%r8d
    2130:	41 80 f8 2a          	cmp    $0x2a,%r8b
    2134:	0f 94 c2             	sete   %dl
    2137:	41 80 f8 2d          	cmp    $0x2d,%r8b
    213b:	0f 94 c0             	sete   %al
    213e:	08 c2                	or     %al,%dl
    2140:	75 cf                	jne    2111 <urlencode+0x32>
    2142:	41 80 f8 2e          	cmp    $0x2e,%r8b
    2146:	74 c9                	je     2111 <urlencode+0x32>
    2148:	41 80 f8 5f          	cmp    $0x5f,%r8b
    214c:	74 c3                	je     2111 <urlencode+0x32>
    214e:	41 8d 40 d0          	lea    -0x30(%r8),%eax
    2152:	3c 09                	cmp    $0x9,%al
    2154:	76 bb                	jbe    2111 <urlencode+0x32>
    2156:	41 8d 40 bf          	lea    -0x41(%r8),%eax
    215a:	3c 19                	cmp    $0x19,%al
    215c:	76 b3                	jbe    2111 <urlencode+0x32>
    215e:	41 8d 40 9f          	lea    -0x61(%r8),%eax
    2162:	3c 19                	cmp    $0x19,%al
    2164:	76 ab                	jbe    2111 <urlencode+0x32>
    2166:	41 80 f8 20          	cmp    $0x20,%r8b
    216a:	74 56                	je     21c2 <urlencode+0xe3>
    216c:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    2170:	3c 5f                	cmp    $0x5f,%al
    2172:	0f 96 c2             	setbe  %dl
    2175:	41 80 f8 09          	cmp    $0x9,%r8b
    2179:	0f 94 c0             	sete   %al
    217c:	08 c2                	or     %al,%dl
    217e:	74 4f                	je     21cf <urlencode+0xf0>
    2180:	48 89 e7             	mov    %rsp,%rdi
    2183:	45 0f b6 c0          	movzbl %r8b,%r8d
    2187:	48 8d 0d fa 12 00 00 	lea    0x12fa(%rip),%rcx        # 3488 <transition_table+0x468>
    218e:	ba 08 00 00 00       	mov    $0x8,%edx
    2193:	be 01 00 00 00       	mov    $0x1,%esi
    2198:	b8 00 00 00 00       	mov    $0x0,%eax
    219d:	e8 4e ee ff ff       	call   ff0 <__sprintf_chk@plt>
    21a2:	0f b6 04 24          	movzbl (%rsp),%eax
    21a6:	88 45 00             	mov    %al,0x0(%rbp)
    21a9:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
    21ae:	88 45 01             	mov    %al,0x1(%rbp)
    21b1:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
    21b6:	88 45 02             	mov    %al,0x2(%rbp)
    21b9:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    21bd:	e9 57 ff ff ff       	jmp    2119 <urlencode+0x3a>
    21c2:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    21c6:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    21ca:	e9 4a ff ff ff       	jmp    2119 <urlencode+0x3a>
    21cf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    21d4:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
    21d9:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    21e0:	00 00 
    21e2:	75 09                	jne    21ed <urlencode+0x10e>
    21e4:	48 83 c4 10          	add    $0x10,%rsp
    21e8:	5b                   	pop    %rbx
    21e9:	5d                   	pop    %rbp
    21ea:	41 5c                	pop    %r12
    21ec:	c3                   	ret    
    21ed:	e8 be ec ff ff       	call   eb0 <__stack_chk_fail@plt>

00000000000021f2 <submitr>:
    21f2:	41 57                	push   %r15
    21f4:	41 56                	push   %r14
    21f6:	41 55                	push   %r13
    21f8:	41 54                	push   %r12
    21fa:	55                   	push   %rbp
    21fb:	53                   	push   %rbx
    21fc:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
    2203:	49 89 fd             	mov    %rdi,%r13
    2206:	89 74 24 1c          	mov    %esi,0x1c(%rsp)
    220a:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    220f:	49 89 ce             	mov    %rcx,%r14
    2212:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
    2217:	4d 89 cf             	mov    %r9,%r15
    221a:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
    2221:	00 
    2222:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2229:	00 00 
    222b:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
    2232:	00 
    2233:	31 c0                	xor    %eax,%eax
    2235:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
    223c:	00 
    223d:	ba 00 00 00 00       	mov    $0x0,%edx
    2242:	be 01 00 00 00       	mov    $0x1,%esi
    2247:	bf 02 00 00 00       	mov    $0x2,%edi
    224c:	e8 af ed ff ff       	call   1000 <socket@plt>
    2251:	85 c0                	test   %eax,%eax
    2253:	0f 88 ae 02 00 00    	js     2507 <submitr+0x315>
    2259:	89 c3                	mov    %eax,%ebx
    225b:	4c 89 ef             	mov    %r13,%rdi
    225e:	e8 ad ec ff ff       	call   f10 <gethostbyname@plt>
    2263:	48 85 c0             	test   %rax,%rax
    2266:	0f 84 e7 02 00 00    	je     2553 <submitr+0x361>
    226c:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
    2271:	48 c7 44 24 32 00 00 	movq   $0x0,0x32(%rsp)
    2278:	00 00 
    227a:	c7 44 24 3a 00 00 00 	movl   $0x0,0x3a(%rsp)
    2281:	00 
    2282:	66 c7 44 24 3e 00 00 	movw   $0x0,0x3e(%rsp)
    2289:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
    2290:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2294:	48 8b 40 18          	mov    0x18(%rax),%rax
    2298:	48 8b 30             	mov    (%rax),%rsi
    229b:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
    22a0:	b9 0c 00 00 00       	mov    $0xc,%ecx
    22a5:	e8 76 ec ff ff       	call   f20 <__memmove_chk@plt>
    22aa:	0f b7 44 24 1c       	movzwl 0x1c(%rsp),%eax
    22af:	66 c1 c8 08          	ror    $0x8,%ax
    22b3:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
    22b8:	ba 10 00 00 00       	mov    $0x10,%edx
    22bd:	4c 89 e6             	mov    %r12,%rsi
    22c0:	89 df                	mov    %ebx,%edi
    22c2:	e8 e9 ec ff ff       	call   fb0 <connect@plt>
    22c7:	85 c0                	test   %eax,%eax
    22c9:	0f 88 fa 02 00 00    	js     25c9 <submitr+0x3d7>
    22cf:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
    22d6:	b8 00 00 00 00       	mov    $0x0,%eax
    22db:	48 89 f1             	mov    %rsi,%rcx
    22de:	4c 89 ff             	mov    %r15,%rdi
    22e1:	f2 ae                	repnz scas %es:(%rdi),%al
    22e3:	48 89 ca             	mov    %rcx,%rdx
    22e6:	48 f7 d2             	not    %rdx
    22e9:	48 89 f1             	mov    %rsi,%rcx
    22ec:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    22f1:	f2 ae                	repnz scas %es:(%rdi),%al
    22f3:	48 f7 d1             	not    %rcx
    22f6:	49 89 c8             	mov    %rcx,%r8
    22f9:	48 89 f1             	mov    %rsi,%rcx
    22fc:	4c 89 f7             	mov    %r14,%rdi
    22ff:	f2 ae                	repnz scas %es:(%rdi),%al
    2301:	48 f7 d1             	not    %rcx
    2304:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
    2309:	48 89 f1             	mov    %rsi,%rcx
    230c:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    2311:	f2 ae                	repnz scas %es:(%rdi),%al
    2313:	48 89 c8             	mov    %rcx,%rax
    2316:	48 f7 d0             	not    %rax
    2319:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
    231e:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
    2323:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
    232a:	00 
    232b:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    2331:	0f 87 fa 02 00 00    	ja     2631 <submitr+0x43f>
    2337:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
    233e:	00 
    233f:	b9 00 04 00 00       	mov    $0x400,%ecx
    2344:	b8 00 00 00 00       	mov    $0x0,%eax
    2349:	48 89 f7             	mov    %rsi,%rdi
    234c:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    234f:	4c 89 ff             	mov    %r15,%rdi
    2352:	e8 88 fd ff ff       	call   20df <urlencode>
    2357:	85 c0                	test   %eax,%eax
    2359:	0f 88 45 03 00 00    	js     26a4 <submitr+0x4b2>
    235f:	4c 8d a4 24 50 20 00 	lea    0x2050(%rsp),%r12
    2366:	00 
    2367:	48 83 ec 08          	sub    $0x8,%rsp
    236b:	41 55                	push   %r13
    236d:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
    2374:	00 
    2375:	50                   	push   %rax
    2376:	41 56                	push   %r14
    2378:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
    237d:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
    2382:	48 8d 0d 6f 10 00 00 	lea    0x106f(%rip),%rcx        # 33f8 <transition_table+0x3d8>
    2389:	ba 00 20 00 00       	mov    $0x2000,%edx
    238e:	be 01 00 00 00       	mov    $0x1,%esi
    2393:	4c 89 e7             	mov    %r12,%rdi
    2396:	b8 00 00 00 00       	mov    $0x0,%eax
    239b:	e8 50 ec ff ff       	call   ff0 <__sprintf_chk@plt>
    23a0:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    23a7:	b8 00 00 00 00       	mov    $0x0,%eax
    23ac:	4c 89 e7             	mov    %r12,%rdi
    23af:	f2 ae                	repnz scas %es:(%rdi),%al
    23b1:	48 89 ca             	mov    %rcx,%rdx
    23b4:	48 f7 d2             	not    %rdx
    23b7:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
    23bb:	48 83 c4 20          	add    $0x20,%rsp
    23bf:	4c 89 e6             	mov    %r12,%rsi
    23c2:	89 df                	mov    %ebx,%edi
    23c4:	e8 89 fb ff ff       	call   1f52 <rio_writen>
    23c9:	48 85 c0             	test   %rax,%rax
    23cc:	0f 88 5d 03 00 00    	js     272f <submitr+0x53d>
    23d2:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
    23d7:	89 de                	mov    %ebx,%esi
    23d9:	4c 89 e7             	mov    %r12,%rdi
    23dc:	e8 2f fb ff ff       	call   1f10 <rio_readinitb>
    23e1:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    23e8:	00 
    23e9:	ba 00 20 00 00       	mov    $0x2000,%edx
    23ee:	4c 89 e7             	mov    %r12,%rdi
    23f1:	e8 45 fc ff ff       	call   203b <rio_readlineb>
    23f6:	48 85 c0             	test   %rax,%rax
    23f9:	0f 8e 9c 03 00 00    	jle    279b <submitr+0x5a9>
    23ff:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
    2404:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
    240b:	00 
    240c:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    2413:	00 
    2414:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
    241b:	00 
    241c:	48 8d 35 6c 10 00 00 	lea    0x106c(%rip),%rsi        # 348f <transition_table+0x46f>
    2423:	b8 00 00 00 00       	mov    $0x0,%eax
    2428:	e8 33 eb ff ff       	call   f60 <__isoc99_sscanf@plt>
    242d:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2434:	00 
    2435:	b9 03 00 00 00       	mov    $0x3,%ecx
    243a:	48 8d 3d 65 10 00 00 	lea    0x1065(%rip),%rdi        # 34a6 <transition_table+0x486>
    2441:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2443:	0f 97 c0             	seta   %al
    2446:	1c 00                	sbb    $0x0,%al
    2448:	84 c0                	test   %al,%al
    244a:	0f 84 cb 03 00 00    	je     281b <submitr+0x629>
    2450:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2457:	00 
    2458:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    245d:	ba 00 20 00 00       	mov    $0x2000,%edx
    2462:	e8 d4 fb ff ff       	call   203b <rio_readlineb>
    2467:	48 85 c0             	test   %rax,%rax
    246a:	7f c1                	jg     242d <submitr+0x23b>
    246c:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2473:	3a 20 43 
    2476:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    247d:	20 75 6e 
    2480:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2484:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2488:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    248f:	74 6f 20 
    2492:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    2499:	68 65 61 
    249c:	48 89 45 10          	mov    %rax,0x10(%rbp)
    24a0:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    24a4:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    24ab:	66 72 6f 
    24ae:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
    24b5:	6f 6c 61 
    24b8:	48 89 45 20          	mov    %rax,0x20(%rbp)
    24bc:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    24c0:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
    24c7:	76 65 72 
    24ca:	48 89 45 30          	mov    %rax,0x30(%rbp)
    24ce:	c6 45 38 00          	movb   $0x0,0x38(%rbp)
    24d2:	89 df                	mov    %ebx,%edi
    24d4:	e8 f7 e9 ff ff       	call   ed0 <close@plt>
    24d9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    24de:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
    24e5:	00 
    24e6:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    24ed:	00 00 
    24ef:	0f 85 96 04 00 00    	jne    298b <submitr+0x799>
    24f5:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
    24fc:	5b                   	pop    %rbx
    24fd:	5d                   	pop    %rbp
    24fe:	41 5c                	pop    %r12
    2500:	41 5d                	pop    %r13
    2502:	41 5e                	pop    %r14
    2504:	41 5f                	pop    %r15
    2506:	c3                   	ret    
    2507:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    250e:	3a 20 43 
    2511:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2518:	20 75 6e 
    251b:	48 89 45 00          	mov    %rax,0x0(%rbp)
    251f:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2523:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    252a:	74 6f 20 
    252d:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2534:	65 20 73 
    2537:	48 89 45 10          	mov    %rax,0x10(%rbp)
    253b:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    253f:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    2546:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    254c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2551:	eb 8b                	jmp    24de <submitr+0x2ec>
    2553:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    255a:	3a 20 44 
    255d:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2564:	20 75 6e 
    2567:	48 89 45 00          	mov    %rax,0x0(%rbp)
    256b:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    256f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2576:	74 6f 20 
    2579:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2580:	76 65 20 
    2583:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2587:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    258b:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
    2592:	61 62 20 
    2595:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
    259c:	72 20 61 
    259f:	48 89 45 20          	mov    %rax,0x20(%rbp)
    25a3:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    25a7:	c7 45 30 64 64 72 65 	movl   $0x65726464,0x30(%rbp)
    25ae:	66 c7 45 34 73 73    	movw   $0x7373,0x34(%rbp)
    25b4:	c6 45 36 00          	movb   $0x0,0x36(%rbp)
    25b8:	89 df                	mov    %ebx,%edi
    25ba:	e8 11 e9 ff ff       	call   ed0 <close@plt>
    25bf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    25c4:	e9 15 ff ff ff       	jmp    24de <submitr+0x2ec>
    25c9:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    25d0:	3a 20 55 
    25d3:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    25da:	20 74 6f 
    25dd:	48 89 45 00          	mov    %rax,0x0(%rbp)
    25e1:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    25e5:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    25ec:	65 63 74 
    25ef:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    25f6:	68 65 20 
    25f9:	48 89 45 10          	mov    %rax,0x10(%rbp)
    25fd:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2601:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
    2608:	61 62 20 
    260b:	48 89 45 20          	mov    %rax,0x20(%rbp)
    260f:	c7 45 28 73 65 72 76 	movl   $0x76726573,0x28(%rbp)
    2616:	66 c7 45 2c 65 72    	movw   $0x7265,0x2c(%rbp)
    261c:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    2620:	89 df                	mov    %ebx,%edi
    2622:	e8 a9 e8 ff ff       	call   ed0 <close@plt>
    2627:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    262c:	e9 ad fe ff ff       	jmp    24de <submitr+0x2ec>
    2631:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2638:	3a 20 52 
    263b:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2642:	20 73 74 
    2645:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2649:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    264d:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    2654:	74 6f 6f 
    2657:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    265e:	65 2e 20 
    2661:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2665:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2669:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    2670:	61 73 65 
    2673:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    267a:	49 54 52 
    267d:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2681:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2685:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    268c:	55 46 00 
    268f:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2693:	89 df                	mov    %ebx,%edi
    2695:	e8 36 e8 ff ff       	call   ed0 <close@plt>
    269a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    269f:	e9 3a fe ff ff       	jmp    24de <submitr+0x2ec>
    26a4:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    26ab:	3a 20 52 
    26ae:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    26b5:	20 73 74 
    26b8:	48 89 45 00          	mov    %rax,0x0(%rbp)
    26bc:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    26c0:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    26c7:	63 6f 6e 
    26ca:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    26d1:	20 61 6e 
    26d4:	48 89 45 10          	mov    %rax,0x10(%rbp)
    26d8:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    26dc:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    26e3:	67 61 6c 
    26e6:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    26ed:	6e 70 72 
    26f0:	48 89 45 20          	mov    %rax,0x20(%rbp)
    26f4:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    26f8:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    26ff:	6c 65 20 
    2702:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    2709:	63 74 65 
    270c:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2710:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    2714:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
    271a:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
    271e:	89 df                	mov    %ebx,%edi
    2720:	e8 ab e7 ff ff       	call   ed0 <close@plt>
    2725:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    272a:	e9 af fd ff ff       	jmp    24de <submitr+0x2ec>
    272f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2736:	3a 20 43 
    2739:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2740:	20 75 6e 
    2743:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2747:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    274b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2752:	74 6f 20 
    2755:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    275c:	20 74 6f 
    275f:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2763:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2767:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
    276e:	41 75 74 
    2771:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
    2778:	73 65 72 
    277b:	48 89 45 20          	mov    %rax,0x20(%rbp)
    277f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2783:	c7 45 30 76 65 72 00 	movl   $0x726576,0x30(%rbp)
    278a:	89 df                	mov    %ebx,%edi
    278c:	e8 3f e7 ff ff       	call   ed0 <close@plt>
    2791:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2796:	e9 43 fd ff ff       	jmp    24de <submitr+0x2ec>
    279b:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    27a2:	3a 20 43 
    27a5:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    27ac:	20 75 6e 
    27af:	48 89 45 00          	mov    %rax,0x0(%rbp)
    27b3:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    27b7:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    27be:	74 6f 20 
    27c1:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    27c8:	66 69 72 
    27cb:	48 89 45 10          	mov    %rax,0x10(%rbp)
    27cf:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    27d3:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    27da:	61 64 65 
    27dd:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
    27e4:	6d 20 41 
    27e7:	48 89 45 20          	mov    %rax,0x20(%rbp)
    27eb:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    27ef:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
    27f6:	62 20 73 
    27f9:	48 89 45 30          	mov    %rax,0x30(%rbp)
    27fd:	c7 45 38 65 72 76 65 	movl   $0x65767265,0x38(%rbp)
    2804:	66 c7 45 3c 72 00    	movw   $0x72,0x3c(%rbp)
    280a:	89 df                	mov    %ebx,%edi
    280c:	e8 bf e6 ff ff       	call   ed0 <close@plt>
    2811:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2816:	e9 c3 fc ff ff       	jmp    24de <submitr+0x2ec>
    281b:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2822:	00 
    2823:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2828:	ba 00 20 00 00       	mov    $0x2000,%edx
    282d:	e8 09 f8 ff ff       	call   203b <rio_readlineb>
    2832:	48 85 c0             	test   %rax,%rax
    2835:	0f 8e 96 00 00 00    	jle    28d1 <submitr+0x6df>
    283b:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
    2840:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    2847:	0f 85 05 01 00 00    	jne    2952 <submitr+0x760>
    284d:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2854:	00 
    2855:	48 89 ef             	mov    %rbp,%rdi
    2858:	e8 23 e6 ff ff       	call   e80 <strcpy@plt>
    285d:	89 df                	mov    %ebx,%edi
    285f:	e8 6c e6 ff ff       	call   ed0 <close@plt>
    2864:	b9 04 00 00 00       	mov    $0x4,%ecx
    2869:	48 8d 3d 30 0c 00 00 	lea    0xc30(%rip),%rdi        # 34a0 <transition_table+0x480>
    2870:	48 89 ee             	mov    %rbp,%rsi
    2873:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2875:	0f 97 c0             	seta   %al
    2878:	1c 00                	sbb    $0x0,%al
    287a:	0f be c0             	movsbl %al,%eax
    287d:	85 c0                	test   %eax,%eax
    287f:	0f 84 59 fc ff ff    	je     24de <submitr+0x2ec>
    2885:	b9 05 00 00 00       	mov    $0x5,%ecx
    288a:	48 8d 3d 13 0c 00 00 	lea    0xc13(%rip),%rdi        # 34a4 <transition_table+0x484>
    2891:	48 89 ee             	mov    %rbp,%rsi
    2894:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2896:	0f 97 c0             	seta   %al
    2899:	1c 00                	sbb    $0x0,%al
    289b:	0f be c0             	movsbl %al,%eax
    289e:	85 c0                	test   %eax,%eax
    28a0:	0f 84 38 fc ff ff    	je     24de <submitr+0x2ec>
    28a6:	b9 03 00 00 00       	mov    $0x3,%ecx
    28ab:	48 8d 3d f7 0b 00 00 	lea    0xbf7(%rip),%rdi        # 34a9 <transition_table+0x489>
    28b2:	48 89 ee             	mov    %rbp,%rsi
    28b5:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    28b7:	0f 97 c0             	seta   %al
    28ba:	1c 00                	sbb    $0x0,%al
    28bc:	0f be c0             	movsbl %al,%eax
    28bf:	85 c0                	test   %eax,%eax
    28c1:	0f 84 17 fc ff ff    	je     24de <submitr+0x2ec>
    28c7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    28cc:	e9 0d fc ff ff       	jmp    24de <submitr+0x2ec>
    28d1:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    28d8:	3a 20 43 
    28db:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    28e2:	20 75 6e 
    28e5:	48 89 45 00          	mov    %rax,0x0(%rbp)
    28e9:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    28ed:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    28f4:	74 6f 20 
    28f7:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    28fe:	73 74 61 
    2901:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2905:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2909:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    2910:	65 73 73 
    2913:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    291a:	72 6f 6d 
    291d:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2921:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2925:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
    292c:	6c 61 62 
    292f:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
    2936:	65 72 00 
    2939:	48 89 45 30          	mov    %rax,0x30(%rbp)
    293d:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    2941:	89 df                	mov    %ebx,%edi
    2943:	e8 88 e5 ff ff       	call   ed0 <close@plt>
    2948:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    294d:	e9 8c fb ff ff       	jmp    24de <submitr+0x2ec>
    2952:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
    2959:	00 
    295a:	48 8d 0d f7 0a 00 00 	lea    0xaf7(%rip),%rcx        # 3458 <transition_table+0x438>
    2961:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2968:	be 01 00 00 00       	mov    $0x1,%esi
    296d:	48 89 ef             	mov    %rbp,%rdi
    2970:	b8 00 00 00 00       	mov    $0x0,%eax
    2975:	e8 76 e6 ff ff       	call   ff0 <__sprintf_chk@plt>
    297a:	89 df                	mov    %ebx,%edi
    297c:	e8 4f e5 ff ff       	call   ed0 <close@plt>
    2981:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2986:	e9 53 fb ff ff       	jmp    24de <submitr+0x2ec>
    298b:	e8 20 e5 ff ff       	call   eb0 <__stack_chk_fail@plt>

0000000000002990 <init_timeout>:
    2990:	85 ff                	test   %edi,%edi
    2992:	74 28                	je     29bc <init_timeout+0x2c>
    2994:	53                   	push   %rbx
    2995:	89 fb                	mov    %edi,%ebx
    2997:	85 ff                	test   %edi,%edi
    2999:	78 1a                	js     29b5 <init_timeout+0x25>
    299b:	48 8d 35 80 f5 ff ff 	lea    -0xa80(%rip),%rsi        # 1f22 <sigalrm_handler>
    29a2:	bf 0e 00 00 00       	mov    $0xe,%edi
    29a7:	e8 54 e5 ff ff       	call   f00 <signal@plt>
    29ac:	89 df                	mov    %ebx,%edi
    29ae:	e8 0d e5 ff ff       	call   ec0 <alarm@plt>
    29b3:	5b                   	pop    %rbx
    29b4:	c3                   	ret    
    29b5:	bb 00 00 00 00       	mov    $0x0,%ebx
    29ba:	eb df                	jmp    299b <init_timeout+0xb>
    29bc:	f3 c3                	repz ret 

00000000000029be <init_driver>:
    29be:	41 54                	push   %r12
    29c0:	55                   	push   %rbp
    29c1:	53                   	push   %rbx
    29c2:	48 83 ec 20          	sub    $0x20,%rsp
    29c6:	49 89 fc             	mov    %rdi,%r12
    29c9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    29d0:	00 00 
    29d2:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    29d7:	31 c0                	xor    %eax,%eax
    29d9:	be 01 00 00 00       	mov    $0x1,%esi
    29de:	bf 0d 00 00 00       	mov    $0xd,%edi
    29e3:	e8 18 e5 ff ff       	call   f00 <signal@plt>
    29e8:	be 01 00 00 00       	mov    $0x1,%esi
    29ed:	bf 1d 00 00 00       	mov    $0x1d,%edi
    29f2:	e8 09 e5 ff ff       	call   f00 <signal@plt>
    29f7:	be 01 00 00 00       	mov    $0x1,%esi
    29fc:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2a01:	e8 fa e4 ff ff       	call   f00 <signal@plt>
    2a06:	ba 00 00 00 00       	mov    $0x0,%edx
    2a0b:	be 01 00 00 00       	mov    $0x1,%esi
    2a10:	bf 02 00 00 00       	mov    $0x2,%edi
    2a15:	e8 e6 e5 ff ff       	call   1000 <socket@plt>
    2a1a:	85 c0                	test   %eax,%eax
    2a1c:	0f 88 a3 00 00 00    	js     2ac5 <init_driver+0x107>
    2a22:	89 c3                	mov    %eax,%ebx
    2a24:	48 8d 3d 81 0a 00 00 	lea    0xa81(%rip),%rdi        # 34ac <transition_table+0x48c>
    2a2b:	e8 e0 e4 ff ff       	call   f10 <gethostbyname@plt>
    2a30:	48 85 c0             	test   %rax,%rax
    2a33:	0f 84 df 00 00 00    	je     2b18 <init_driver+0x15a>
    2a39:	48 89 e5             	mov    %rsp,%rbp
    2a3c:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
    2a43:	00 00 
    2a45:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
    2a4c:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
    2a52:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    2a58:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2a5c:	48 8b 40 18          	mov    0x18(%rax),%rax
    2a60:	48 8b 30             	mov    (%rax),%rsi
    2a63:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
    2a67:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2a6c:	e8 af e4 ff ff       	call   f20 <__memmove_chk@plt>
    2a71:	66 c7 44 24 02 0b b8 	movw   $0xb80b,0x2(%rsp)
    2a78:	ba 10 00 00 00       	mov    $0x10,%edx
    2a7d:	48 89 ee             	mov    %rbp,%rsi
    2a80:	89 df                	mov    %ebx,%edi
    2a82:	e8 29 e5 ff ff       	call   fb0 <connect@plt>
    2a87:	85 c0                	test   %eax,%eax
    2a89:	0f 88 fb 00 00 00    	js     2b8a <init_driver+0x1cc>
    2a8f:	89 df                	mov    %ebx,%edi
    2a91:	e8 3a e4 ff ff       	call   ed0 <close@plt>
    2a96:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
    2a9d:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
    2aa3:	b8 00 00 00 00       	mov    $0x0,%eax
    2aa8:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    2aad:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    2ab4:	00 00 
    2ab6:	0f 85 28 01 00 00    	jne    2be4 <init_driver+0x226>
    2abc:	48 83 c4 20          	add    $0x20,%rsp
    2ac0:	5b                   	pop    %rbx
    2ac1:	5d                   	pop    %rbp
    2ac2:	41 5c                	pop    %r12
    2ac4:	c3                   	ret    
    2ac5:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2acc:	3a 20 43 
    2acf:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2ad6:	20 75 6e 
    2ad9:	49 89 04 24          	mov    %rax,(%r12)
    2add:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    2ae2:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2ae9:	74 6f 20 
    2aec:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2af3:	65 20 73 
    2af6:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    2afb:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    2b00:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
    2b07:	6b 65 
    2b09:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
    2b10:	00 
    2b11:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2b16:	eb 90                	jmp    2aa8 <init_driver+0xea>
    2b18:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2b1f:	3a 20 44 
    2b22:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2b29:	20 75 6e 
    2b2c:	49 89 04 24          	mov    %rax,(%r12)
    2b30:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    2b35:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2b3c:	74 6f 20 
    2b3f:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2b46:	76 65 20 
    2b49:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    2b4e:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    2b53:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2b5a:	72 20 61 
    2b5d:	49 89 44 24 20       	mov    %rax,0x20(%r12)
    2b62:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
    2b69:	72 65 
    2b6b:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
    2b72:	73 
    2b73:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
    2b79:	89 df                	mov    %ebx,%edi
    2b7b:	e8 50 e3 ff ff       	call   ed0 <close@plt>
    2b80:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2b85:	e9 1e ff ff ff       	jmp    2aa8 <init_driver+0xea>
    2b8a:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2b91:	3a 20 55 
    2b94:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    2b9b:	20 74 6f 
    2b9e:	49 89 04 24          	mov    %rax,(%r12)
    2ba2:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    2ba7:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    2bae:	65 63 74 
    2bb1:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
    2bb8:	65 72 76 
    2bbb:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    2bc0:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    2bc5:	66 41 c7 44 24 20 65 	movw   $0x7265,0x20(%r12)
    2bcc:	72 
    2bcd:	41 c6 44 24 22 00    	movb   $0x0,0x22(%r12)
    2bd3:	89 df                	mov    %ebx,%edi
    2bd5:	e8 f6 e2 ff ff       	call   ed0 <close@plt>
    2bda:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2bdf:	e9 c4 fe ff ff       	jmp    2aa8 <init_driver+0xea>
    2be4:	e8 c7 e2 ff ff       	call   eb0 <__stack_chk_fail@plt>

0000000000002be9 <driver_post>:
    2be9:	53                   	push   %rbx
    2bea:	4c 89 cb             	mov    %r9,%rbx
    2bed:	45 85 c0             	test   %r8d,%r8d
    2bf0:	75 18                	jne    2c0a <driver_post+0x21>
    2bf2:	48 85 ff             	test   %rdi,%rdi
    2bf5:	74 05                	je     2bfc <driver_post+0x13>
    2bf7:	80 3f 00             	cmpb   $0x0,(%rdi)
    2bfa:	75 37                	jne    2c33 <driver_post+0x4a>
    2bfc:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2c01:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2c05:	44 89 c0             	mov    %r8d,%eax
    2c08:	5b                   	pop    %rbx
    2c09:	c3                   	ret    
    2c0a:	48 89 ca             	mov    %rcx,%rdx
    2c0d:	48 8d 35 a8 08 00 00 	lea    0x8a8(%rip),%rsi        # 34bc <transition_table+0x49c>
    2c14:	bf 01 00 00 00       	mov    $0x1,%edi
    2c19:	b8 00 00 00 00       	mov    $0x0,%eax
    2c1e:	e8 4d e3 ff ff       	call   f70 <__printf_chk@plt>
    2c23:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2c28:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2c2c:	b8 00 00 00 00       	mov    $0x0,%eax
    2c31:	eb d5                	jmp    2c08 <driver_post+0x1f>
    2c33:	48 83 ec 08          	sub    $0x8,%rsp
    2c37:	41 51                	push   %r9
    2c39:	49 89 c9             	mov    %rcx,%r9
    2c3c:	49 89 d0             	mov    %rdx,%r8
    2c3f:	48 89 f9             	mov    %rdi,%rcx
    2c42:	48 89 f2             	mov    %rsi,%rdx
    2c45:	be b8 0b 00 00       	mov    $0xbb8,%esi
    2c4a:	48 8d 3d 5b 08 00 00 	lea    0x85b(%rip),%rdi        # 34ac <transition_table+0x48c>
    2c51:	e8 9c f5 ff ff       	call   21f2 <submitr>
    2c56:	48 83 c4 10          	add    $0x10,%rsp
    2c5a:	eb ac                	jmp    2c08 <driver_post+0x1f>
    2c5c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002c60 <__libc_csu_init>:
    2c60:	41 57                	push   %r15
    2c62:	41 56                	push   %r14
    2c64:	49 89 d7             	mov    %rdx,%r15
    2c67:	41 55                	push   %r13
    2c69:	41 54                	push   %r12
    2c6b:	4c 8d 25 56 10 20 00 	lea    0x201056(%rip),%r12        # 203cc8 <__frame_dummy_init_array_entry>
    2c72:	55                   	push   %rbp
    2c73:	48 8d 2d 56 10 20 00 	lea    0x201056(%rip),%rbp        # 203cd0 <__do_global_dtors_aux_fini_array_entry>
    2c7a:	53                   	push   %rbx
    2c7b:	41 89 fd             	mov    %edi,%r13d
    2c7e:	49 89 f6             	mov    %rsi,%r14
    2c81:	4c 29 e5             	sub    %r12,%rbp
    2c84:	48 83 ec 08          	sub    $0x8,%rsp
    2c88:	48 c1 fd 03          	sar    $0x3,%rbp
    2c8c:	e8 87 e1 ff ff       	call   e18 <_init>
    2c91:	48 85 ed             	test   %rbp,%rbp
    2c94:	74 20                	je     2cb6 <__libc_csu_init+0x56>
    2c96:	31 db                	xor    %ebx,%ebx
    2c98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    2c9f:	00 
    2ca0:	4c 89 fa             	mov    %r15,%rdx
    2ca3:	4c 89 f6             	mov    %r14,%rsi
    2ca6:	44 89 ef             	mov    %r13d,%edi
    2ca9:	41 ff 14 dc          	call   *(%r12,%rbx,8)
    2cad:	48 83 c3 01          	add    $0x1,%rbx
    2cb1:	48 39 dd             	cmp    %rbx,%rbp
    2cb4:	75 ea                	jne    2ca0 <__libc_csu_init+0x40>
    2cb6:	48 83 c4 08          	add    $0x8,%rsp
    2cba:	5b                   	pop    %rbx
    2cbb:	5d                   	pop    %rbp
    2cbc:	41 5c                	pop    %r12
    2cbe:	41 5d                	pop    %r13
    2cc0:	41 5e                	pop    %r14
    2cc2:	41 5f                	pop    %r15
    2cc4:	c3                   	ret    
    2cc5:	90                   	nop
    2cc6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2ccd:	00 00 00 

0000000000002cd0 <__libc_csu_fini>:
    2cd0:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000002cd4 <_fini>:
    2cd4:	48 83 ec 08          	sub    $0x8,%rsp
    2cd8:	48 83 c4 08          	add    $0x8,%rsp
    2cdc:	c3                   	ret    
