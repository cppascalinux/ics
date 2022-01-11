
ctarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400cb0 <_init>:
  400cb0:	48 83 ec 08          	sub    $0x8,%rsp
  400cb4:	48 8b 05 3d 43 20 00 	mov    0x20433d(%rip),%rax        # 604ff8 <__gmon_start__>
  400cbb:	48 85 c0             	test   %rax,%rax
  400cbe:	74 02                	je     400cc2 <_init+0x12>
  400cc0:	ff d0                	call   *%rax
  400cc2:	48 83 c4 08          	add    $0x8,%rsp
  400cc6:	c3                   	ret    

Disassembly of section .plt:

0000000000400cd0 <.plt>:
  400cd0:	ff 35 32 43 20 00    	push   0x204332(%rip)        # 605008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400cd6:	ff 25 34 43 20 00    	jmp    *0x204334(%rip)        # 605010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400cdc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400ce0 <strcasecmp@plt>:
  400ce0:	ff 25 32 43 20 00    	jmp    *0x204332(%rip)        # 605018 <strcasecmp@GLIBC_2.2.5>
  400ce6:	68 00 00 00 00       	push   $0x0
  400ceb:	e9 e0 ff ff ff       	jmp    400cd0 <.plt>

0000000000400cf0 <__errno_location@plt>:
  400cf0:	ff 25 2a 43 20 00    	jmp    *0x20432a(%rip)        # 605020 <__errno_location@GLIBC_2.2.5>
  400cf6:	68 01 00 00 00       	push   $0x1
  400cfb:	e9 d0 ff ff ff       	jmp    400cd0 <.plt>

0000000000400d00 <srandom@plt>:
  400d00:	ff 25 22 43 20 00    	jmp    *0x204322(%rip)        # 605028 <srandom@GLIBC_2.2.5>
  400d06:	68 02 00 00 00       	push   $0x2
  400d0b:	e9 c0 ff ff ff       	jmp    400cd0 <.plt>

0000000000400d10 <strncpy@plt>:
  400d10:	ff 25 1a 43 20 00    	jmp    *0x20431a(%rip)        # 605030 <strncpy@GLIBC_2.2.5>
  400d16:	68 03 00 00 00       	push   $0x3
  400d1b:	e9 b0 ff ff ff       	jmp    400cd0 <.plt>

0000000000400d20 <strncmp@plt>:
  400d20:	ff 25 12 43 20 00    	jmp    *0x204312(%rip)        # 605038 <strncmp@GLIBC_2.2.5>
  400d26:	68 04 00 00 00       	push   $0x4
  400d2b:	e9 a0 ff ff ff       	jmp    400cd0 <.plt>

0000000000400d30 <strcpy@plt>:
  400d30:	ff 25 0a 43 20 00    	jmp    *0x20430a(%rip)        # 605040 <strcpy@GLIBC_2.2.5>
  400d36:	68 05 00 00 00       	push   $0x5
  400d3b:	e9 90 ff ff ff       	jmp    400cd0 <.plt>

0000000000400d40 <puts@plt>:
  400d40:	ff 25 02 43 20 00    	jmp    *0x204302(%rip)        # 605048 <puts@GLIBC_2.2.5>
  400d46:	68 06 00 00 00       	push   $0x6
  400d4b:	e9 80 ff ff ff       	jmp    400cd0 <.plt>

0000000000400d50 <write@plt>:
  400d50:	ff 25 fa 42 20 00    	jmp    *0x2042fa(%rip)        # 605050 <write@GLIBC_2.2.5>
  400d56:	68 07 00 00 00       	push   $0x7
  400d5b:	e9 70 ff ff ff       	jmp    400cd0 <.plt>

0000000000400d60 <mmap@plt>:
  400d60:	ff 25 f2 42 20 00    	jmp    *0x2042f2(%rip)        # 605058 <mmap@GLIBC_2.2.5>
  400d66:	68 08 00 00 00       	push   $0x8
  400d6b:	e9 60 ff ff ff       	jmp    400cd0 <.plt>

0000000000400d70 <memset@plt>:
  400d70:	ff 25 ea 42 20 00    	jmp    *0x2042ea(%rip)        # 605060 <memset@GLIBC_2.2.5>
  400d76:	68 09 00 00 00       	push   $0x9
  400d7b:	e9 50 ff ff ff       	jmp    400cd0 <.plt>

0000000000400d80 <alarm@plt>:
  400d80:	ff 25 e2 42 20 00    	jmp    *0x2042e2(%rip)        # 605068 <alarm@GLIBC_2.2.5>
  400d86:	68 0a 00 00 00       	push   $0xa
  400d8b:	e9 40 ff ff ff       	jmp    400cd0 <.plt>

0000000000400d90 <close@plt>:
  400d90:	ff 25 da 42 20 00    	jmp    *0x2042da(%rip)        # 605070 <close@GLIBC_2.2.5>
  400d96:	68 0b 00 00 00       	push   $0xb
  400d9b:	e9 30 ff ff ff       	jmp    400cd0 <.plt>

0000000000400da0 <read@plt>:
  400da0:	ff 25 d2 42 20 00    	jmp    *0x2042d2(%rip)        # 605078 <read@GLIBC_2.2.5>
  400da6:	68 0c 00 00 00       	push   $0xc
  400dab:	e9 20 ff ff ff       	jmp    400cd0 <.plt>

0000000000400db0 <strcmp@plt>:
  400db0:	ff 25 ca 42 20 00    	jmp    *0x2042ca(%rip)        # 605080 <strcmp@GLIBC_2.2.5>
  400db6:	68 0d 00 00 00       	push   $0xd
  400dbb:	e9 10 ff ff ff       	jmp    400cd0 <.plt>

0000000000400dc0 <signal@plt>:
  400dc0:	ff 25 c2 42 20 00    	jmp    *0x2042c2(%rip)        # 605088 <signal@GLIBC_2.2.5>
  400dc6:	68 0e 00 00 00       	push   $0xe
  400dcb:	e9 00 ff ff ff       	jmp    400cd0 <.plt>

0000000000400dd0 <gethostbyname@plt>:
  400dd0:	ff 25 ba 42 20 00    	jmp    *0x2042ba(%rip)        # 605090 <gethostbyname@GLIBC_2.2.5>
  400dd6:	68 0f 00 00 00       	push   $0xf
  400ddb:	e9 f0 fe ff ff       	jmp    400cd0 <.plt>

0000000000400de0 <__memmove_chk@plt>:
  400de0:	ff 25 b2 42 20 00    	jmp    *0x2042b2(%rip)        # 605098 <__memmove_chk@GLIBC_2.3.4>
  400de6:	68 10 00 00 00       	push   $0x10
  400deb:	e9 e0 fe ff ff       	jmp    400cd0 <.plt>

0000000000400df0 <strtol@plt>:
  400df0:	ff 25 aa 42 20 00    	jmp    *0x2042aa(%rip)        # 6050a0 <strtol@GLIBC_2.2.5>
  400df6:	68 11 00 00 00       	push   $0x11
  400dfb:	e9 d0 fe ff ff       	jmp    400cd0 <.plt>

0000000000400e00 <memcpy@plt>:
  400e00:	ff 25 a2 42 20 00    	jmp    *0x2042a2(%rip)        # 6050a8 <memcpy@GLIBC_2.14>
  400e06:	68 12 00 00 00       	push   $0x12
  400e0b:	e9 c0 fe ff ff       	jmp    400cd0 <.plt>

0000000000400e10 <time@plt>:
  400e10:	ff 25 9a 42 20 00    	jmp    *0x20429a(%rip)        # 6050b0 <time@GLIBC_2.2.5>
  400e16:	68 13 00 00 00       	push   $0x13
  400e1b:	e9 b0 fe ff ff       	jmp    400cd0 <.plt>

0000000000400e20 <random@plt>:
  400e20:	ff 25 92 42 20 00    	jmp    *0x204292(%rip)        # 6050b8 <random@GLIBC_2.2.5>
  400e26:	68 14 00 00 00       	push   $0x14
  400e2b:	e9 a0 fe ff ff       	jmp    400cd0 <.plt>

0000000000400e30 <_IO_getc@plt>:
  400e30:	ff 25 8a 42 20 00    	jmp    *0x20428a(%rip)        # 6050c0 <_IO_getc@GLIBC_2.2.5>
  400e36:	68 15 00 00 00       	push   $0x15
  400e3b:	e9 90 fe ff ff       	jmp    400cd0 <.plt>

0000000000400e40 <__isoc99_sscanf@plt>:
  400e40:	ff 25 82 42 20 00    	jmp    *0x204282(%rip)        # 6050c8 <__isoc99_sscanf@GLIBC_2.7>
  400e46:	68 16 00 00 00       	push   $0x16
  400e4b:	e9 80 fe ff ff       	jmp    400cd0 <.plt>

0000000000400e50 <munmap@plt>:
  400e50:	ff 25 7a 42 20 00    	jmp    *0x20427a(%rip)        # 6050d0 <munmap@GLIBC_2.2.5>
  400e56:	68 17 00 00 00       	push   $0x17
  400e5b:	e9 70 fe ff ff       	jmp    400cd0 <.plt>

0000000000400e60 <__printf_chk@plt>:
  400e60:	ff 25 72 42 20 00    	jmp    *0x204272(%rip)        # 6050d8 <__printf_chk@GLIBC_2.3.4>
  400e66:	68 18 00 00 00       	push   $0x18
  400e6b:	e9 60 fe ff ff       	jmp    400cd0 <.plt>

0000000000400e70 <fopen@plt>:
  400e70:	ff 25 6a 42 20 00    	jmp    *0x20426a(%rip)        # 6050e0 <fopen@GLIBC_2.2.5>
  400e76:	68 19 00 00 00       	push   $0x19
  400e7b:	e9 50 fe ff ff       	jmp    400cd0 <.plt>

0000000000400e80 <getopt@plt>:
  400e80:	ff 25 62 42 20 00    	jmp    *0x204262(%rip)        # 6050e8 <getopt@GLIBC_2.2.5>
  400e86:	68 1a 00 00 00       	push   $0x1a
  400e8b:	e9 40 fe ff ff       	jmp    400cd0 <.plt>

0000000000400e90 <strtoul@plt>:
  400e90:	ff 25 5a 42 20 00    	jmp    *0x20425a(%rip)        # 6050f0 <strtoul@GLIBC_2.2.5>
  400e96:	68 1b 00 00 00       	push   $0x1b
  400e9b:	e9 30 fe ff ff       	jmp    400cd0 <.plt>

0000000000400ea0 <gethostname@plt>:
  400ea0:	ff 25 52 42 20 00    	jmp    *0x204252(%rip)        # 6050f8 <gethostname@GLIBC_2.2.5>
  400ea6:	68 1c 00 00 00       	push   $0x1c
  400eab:	e9 20 fe ff ff       	jmp    400cd0 <.plt>

0000000000400eb0 <exit@plt>:
  400eb0:	ff 25 4a 42 20 00    	jmp    *0x20424a(%rip)        # 605100 <exit@GLIBC_2.2.5>
  400eb6:	68 1d 00 00 00       	push   $0x1d
  400ebb:	e9 10 fe ff ff       	jmp    400cd0 <.plt>

0000000000400ec0 <connect@plt>:
  400ec0:	ff 25 42 42 20 00    	jmp    *0x204242(%rip)        # 605108 <connect@GLIBC_2.2.5>
  400ec6:	68 1e 00 00 00       	push   $0x1e
  400ecb:	e9 00 fe ff ff       	jmp    400cd0 <.plt>

0000000000400ed0 <__fprintf_chk@plt>:
  400ed0:	ff 25 3a 42 20 00    	jmp    *0x20423a(%rip)        # 605110 <__fprintf_chk@GLIBC_2.3.4>
  400ed6:	68 1f 00 00 00       	push   $0x1f
  400edb:	e9 f0 fd ff ff       	jmp    400cd0 <.plt>

0000000000400ee0 <__sprintf_chk@plt>:
  400ee0:	ff 25 32 42 20 00    	jmp    *0x204232(%rip)        # 605118 <__sprintf_chk@GLIBC_2.3.4>
  400ee6:	68 20 00 00 00       	push   $0x20
  400eeb:	e9 e0 fd ff ff       	jmp    400cd0 <.plt>

0000000000400ef0 <socket@plt>:
  400ef0:	ff 25 2a 42 20 00    	jmp    *0x20422a(%rip)        # 605120 <socket@GLIBC_2.2.5>
  400ef6:	68 21 00 00 00       	push   $0x21
  400efb:	e9 d0 fd ff ff       	jmp    400cd0 <.plt>

Disassembly of section .text:

0000000000400f00 <_start>:
  400f00:	31 ed                	xor    %ebp,%ebp
  400f02:	49 89 d1             	mov    %rdx,%r9
  400f05:	5e                   	pop    %rsi
  400f06:	48 89 e2             	mov    %rsp,%rdx
  400f09:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400f0d:	50                   	push   %rax
  400f0e:	54                   	push   %rsp
  400f0f:	49 c7 c0 80 31 40 00 	mov    $0x403180,%r8
  400f16:	48 c7 c1 10 31 40 00 	mov    $0x403110,%rcx
  400f1d:	48 c7 c7 0e 12 40 00 	mov    $0x40120e,%rdi
  400f24:	ff 15 c6 40 20 00    	call   *0x2040c6(%rip)        # 604ff0 <__libc_start_main@GLIBC_2.2.5>
  400f2a:	f4                   	hlt    
  400f2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400f30 <_dl_relocate_static_pie>:
  400f30:	f3 c3                	repz ret 
  400f32:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  400f39:	00 00 00 
  400f3c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400f40 <deregister_tm_clones>:
  400f40:	55                   	push   %rbp
  400f41:	b8 b0 54 60 00       	mov    $0x6054b0,%eax
  400f46:	48 3d b0 54 60 00    	cmp    $0x6054b0,%rax
  400f4c:	48 89 e5             	mov    %rsp,%rbp
  400f4f:	74 17                	je     400f68 <deregister_tm_clones+0x28>
  400f51:	b8 00 00 00 00       	mov    $0x0,%eax
  400f56:	48 85 c0             	test   %rax,%rax
  400f59:	74 0d                	je     400f68 <deregister_tm_clones+0x28>
  400f5b:	5d                   	pop    %rbp
  400f5c:	bf b0 54 60 00       	mov    $0x6054b0,%edi
  400f61:	ff e0                	jmp    *%rax
  400f63:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400f68:	5d                   	pop    %rbp
  400f69:	c3                   	ret    
  400f6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400f70 <register_tm_clones>:
  400f70:	be b0 54 60 00       	mov    $0x6054b0,%esi
  400f75:	55                   	push   %rbp
  400f76:	48 81 ee b0 54 60 00 	sub    $0x6054b0,%rsi
  400f7d:	48 89 e5             	mov    %rsp,%rbp
  400f80:	48 c1 fe 03          	sar    $0x3,%rsi
  400f84:	48 89 f0             	mov    %rsi,%rax
  400f87:	48 c1 e8 3f          	shr    $0x3f,%rax
  400f8b:	48 01 c6             	add    %rax,%rsi
  400f8e:	48 d1 fe             	sar    %rsi
  400f91:	74 15                	je     400fa8 <register_tm_clones+0x38>
  400f93:	b8 00 00 00 00       	mov    $0x0,%eax
  400f98:	48 85 c0             	test   %rax,%rax
  400f9b:	74 0b                	je     400fa8 <register_tm_clones+0x38>
  400f9d:	5d                   	pop    %rbp
  400f9e:	bf b0 54 60 00       	mov    $0x6054b0,%edi
  400fa3:	ff e0                	jmp    *%rax
  400fa5:	0f 1f 00             	nopl   (%rax)
  400fa8:	5d                   	pop    %rbp
  400fa9:	c3                   	ret    
  400faa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400fb0 <__do_global_dtors_aux>:
  400fb0:	80 3d 31 45 20 00 00 	cmpb   $0x0,0x204531(%rip)        # 6054e8 <completed.7698>
  400fb7:	75 17                	jne    400fd0 <__do_global_dtors_aux+0x20>
  400fb9:	55                   	push   %rbp
  400fba:	48 89 e5             	mov    %rsp,%rbp
  400fbd:	e8 7e ff ff ff       	call   400f40 <deregister_tm_clones>
  400fc2:	c6 05 1f 45 20 00 01 	movb   $0x1,0x20451f(%rip)        # 6054e8 <completed.7698>
  400fc9:	5d                   	pop    %rbp
  400fca:	c3                   	ret    
  400fcb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400fd0:	f3 c3                	repz ret 
  400fd2:	0f 1f 40 00          	nopl   0x0(%rax)
  400fd6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  400fdd:	00 00 00 

0000000000400fe0 <frame_dummy>:
  400fe0:	55                   	push   %rbp
  400fe1:	48 89 e5             	mov    %rsp,%rbp
  400fe4:	5d                   	pop    %rbp
  400fe5:	eb 89                	jmp    400f70 <register_tm_clones>

0000000000400fe7 <usage>:
  400fe7:	48 83 ec 08          	sub    $0x8,%rsp
  400feb:	48 89 fa             	mov    %rdi,%rdx
  400fee:	83 3d 33 45 20 00 00 	cmpl   $0x0,0x204533(%rip)        # 605528 <is_checker>
  400ff5:	74 50                	je     401047 <usage+0x60>
  400ff7:	48 8d 35 9a 21 00 00 	lea    0x219a(%rip),%rsi        # 403198 <_IO_stdin_used+0x8>
  400ffe:	bf 01 00 00 00       	mov    $0x1,%edi
  401003:	b8 00 00 00 00       	mov    $0x0,%eax
  401008:	e8 53 fe ff ff       	call   400e60 <__printf_chk@plt>
  40100d:	48 8d 3d bc 21 00 00 	lea    0x21bc(%rip),%rdi        # 4031d0 <_IO_stdin_used+0x40>
  401014:	e8 27 fd ff ff       	call   400d40 <puts@plt>
  401019:	48 8d 3d 40 23 00 00 	lea    0x2340(%rip),%rdi        # 403360 <_IO_stdin_used+0x1d0>
  401020:	e8 1b fd ff ff       	call   400d40 <puts@plt>
  401025:	48 8d 3d cc 21 00 00 	lea    0x21cc(%rip),%rdi        # 4031f8 <_IO_stdin_used+0x68>
  40102c:	e8 0f fd ff ff       	call   400d40 <puts@plt>
  401031:	48 8d 3d 42 23 00 00 	lea    0x2342(%rip),%rdi        # 40337a <_IO_stdin_used+0x1ea>
  401038:	e8 03 fd ff ff       	call   400d40 <puts@plt>
  40103d:	bf 00 00 00 00       	mov    $0x0,%edi
  401042:	e8 69 fe ff ff       	call   400eb0 <exit@plt>
  401047:	48 8d 35 48 23 00 00 	lea    0x2348(%rip),%rsi        # 403396 <_IO_stdin_used+0x206>
  40104e:	bf 01 00 00 00       	mov    $0x1,%edi
  401053:	b8 00 00 00 00       	mov    $0x0,%eax
  401058:	e8 03 fe ff ff       	call   400e60 <__printf_chk@plt>
  40105d:	48 8d 3d bc 21 00 00 	lea    0x21bc(%rip),%rdi        # 403220 <_IO_stdin_used+0x90>
  401064:	e8 d7 fc ff ff       	call   400d40 <puts@plt>
  401069:	48 8d 3d d8 21 00 00 	lea    0x21d8(%rip),%rdi        # 403248 <_IO_stdin_used+0xb8>
  401070:	e8 cb fc ff ff       	call   400d40 <puts@plt>
  401075:	48 8d 3d 38 23 00 00 	lea    0x2338(%rip),%rdi        # 4033b4 <_IO_stdin_used+0x224>
  40107c:	e8 bf fc ff ff       	call   400d40 <puts@plt>
  401081:	eb ba                	jmp    40103d <usage+0x56>

0000000000401083 <initialize_target>:
  401083:	55                   	push   %rbp
  401084:	53                   	push   %rbx
  401085:	48 81 ec 18 21 00 00 	sub    $0x2118,%rsp
  40108c:	89 f5                	mov    %esi,%ebp
  40108e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401095:	00 00 
  401097:	48 89 84 24 08 21 00 	mov    %rax,0x2108(%rsp)
  40109e:	00 
  40109f:	31 c0                	xor    %eax,%eax
  4010a1:	89 3d 71 44 20 00    	mov    %edi,0x204471(%rip)        # 605518 <check_level>
  4010a7:	8b 3d a3 40 20 00    	mov    0x2040a3(%rip),%edi        # 605150 <target_id>
  4010ad:	e8 35 20 00 00       	call   4030e7 <gencookie>
  4010b2:	89 05 6c 44 20 00    	mov    %eax,0x20446c(%rip)        # 605524 <cookie>
  4010b8:	89 c7                	mov    %eax,%edi
  4010ba:	e8 28 20 00 00       	call   4030e7 <gencookie>
  4010bf:	89 05 5b 44 20 00    	mov    %eax,0x20445b(%rip)        # 605520 <authkey>
  4010c5:	8b 05 85 40 20 00    	mov    0x204085(%rip),%eax        # 605150 <target_id>
  4010cb:	8d 78 01             	lea    0x1(%rax),%edi
  4010ce:	e8 2d fc ff ff       	call   400d00 <srandom@plt>
  4010d3:	e8 48 fd ff ff       	call   400e20 <random@plt>
  4010d8:	89 c7                	mov    %eax,%edi
  4010da:	e8 93 03 00 00       	call   401472 <scramble>
  4010df:	89 c3                	mov    %eax,%ebx
  4010e1:	85 ed                	test   %ebp,%ebp
  4010e3:	75 54                	jne    401139 <initialize_target+0xb6>
  4010e5:	b8 00 00 00 00       	mov    $0x0,%eax
  4010ea:	01 d8                	add    %ebx,%eax
  4010ec:	0f b7 c0             	movzwl %ax,%eax
  4010ef:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  4010f6:	89 c0                	mov    %eax,%eax
  4010f8:	48 89 05 a1 43 20 00 	mov    %rax,0x2043a1(%rip)        # 6054a0 <buf_offset>
  4010ff:	c6 05 42 50 20 00 63 	movb   $0x63,0x205042(%rip)        # 606148 <target_prefix>
  401106:	83 3d 9b 43 20 00 00 	cmpl   $0x0,0x20439b(%rip)        # 6054a8 <notify>
  40110d:	74 09                	je     401118 <initialize_target+0x95>
  40110f:	83 3d 12 44 20 00 00 	cmpl   $0x0,0x204412(%rip)        # 605528 <is_checker>
  401116:	74 39                	je     401151 <initialize_target+0xce>
  401118:	48 8b 84 24 08 21 00 	mov    0x2108(%rsp),%rax
  40111f:	00 
  401120:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401127:	00 00 
  401129:	0f 85 da 00 00 00    	jne    401209 <initialize_target+0x186>
  40112f:	48 81 c4 18 21 00 00 	add    $0x2118,%rsp
  401136:	5b                   	pop    %rbx
  401137:	5d                   	pop    %rbp
  401138:	c3                   	ret    
  401139:	bf 00 00 00 00       	mov    $0x0,%edi
  40113e:	e8 cd fc ff ff       	call   400e10 <time@plt>
  401143:	89 c7                	mov    %eax,%edi
  401145:	e8 b6 fb ff ff       	call   400d00 <srandom@plt>
  40114a:	e8 d1 fc ff ff       	call   400e20 <random@plt>
  40114f:	eb 99                	jmp    4010ea <initialize_target+0x67>
  401151:	48 89 e7             	mov    %rsp,%rdi
  401154:	be 00 01 00 00       	mov    $0x100,%esi
  401159:	e8 42 fd ff ff       	call   400ea0 <gethostname@plt>
  40115e:	89 c5                	mov    %eax,%ebp
  401160:	85 c0                	test   %eax,%eax
  401162:	75 26                	jne    40118a <initialize_target+0x107>
  401164:	89 c3                	mov    %eax,%ebx
  401166:	48 63 c3             	movslq %ebx,%rax
  401169:	48 8d 15 10 40 20 00 	lea    0x204010(%rip),%rdx        # 605180 <host_table>
  401170:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
  401174:	48 85 ff             	test   %rdi,%rdi
  401177:	74 2c                	je     4011a5 <initialize_target+0x122>
  401179:	48 89 e6             	mov    %rsp,%rsi
  40117c:	e8 5f fb ff ff       	call   400ce0 <strcasecmp@plt>
  401181:	85 c0                	test   %eax,%eax
  401183:	74 1b                	je     4011a0 <initialize_target+0x11d>
  401185:	83 c3 01             	add    $0x1,%ebx
  401188:	eb dc                	jmp    401166 <initialize_target+0xe3>
  40118a:	48 8d 3d e7 20 00 00 	lea    0x20e7(%rip),%rdi        # 403278 <_IO_stdin_used+0xe8>
  401191:	e8 aa fb ff ff       	call   400d40 <puts@plt>
  401196:	bf 08 00 00 00       	mov    $0x8,%edi
  40119b:	e8 10 fd ff ff       	call   400eb0 <exit@plt>
  4011a0:	bd 01 00 00 00       	mov    $0x1,%ebp
  4011a5:	85 ed                	test   %ebp,%ebp
  4011a7:	74 3d                	je     4011e6 <initialize_target+0x163>
  4011a9:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  4011b0:	00 
  4011b1:	e8 61 1c 00 00       	call   402e17 <init_driver>
  4011b6:	85 c0                	test   %eax,%eax
  4011b8:	0f 89 5a ff ff ff    	jns    401118 <initialize_target+0x95>
  4011be:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  4011c5:	00 
  4011c6:	48 8d 35 23 21 00 00 	lea    0x2123(%rip),%rsi        # 4032f0 <_IO_stdin_used+0x160>
  4011cd:	bf 01 00 00 00       	mov    $0x1,%edi
  4011d2:	b8 00 00 00 00       	mov    $0x0,%eax
  4011d7:	e8 84 fc ff ff       	call   400e60 <__printf_chk@plt>
  4011dc:	bf 08 00 00 00       	mov    $0x8,%edi
  4011e1:	e8 ca fc ff ff       	call   400eb0 <exit@plt>
  4011e6:	48 89 e2             	mov    %rsp,%rdx
  4011e9:	48 8d 35 c0 20 00 00 	lea    0x20c0(%rip),%rsi        # 4032b0 <_IO_stdin_used+0x120>
  4011f0:	bf 01 00 00 00       	mov    $0x1,%edi
  4011f5:	b8 00 00 00 00       	mov    $0x0,%eax
  4011fa:	e8 61 fc ff ff       	call   400e60 <__printf_chk@plt>
  4011ff:	bf 08 00 00 00       	mov    $0x8,%edi
  401204:	e8 a7 fc ff ff       	call   400eb0 <exit@plt>
  401209:	e8 79 0f 00 00       	call   402187 <__stack_chk_fail>

000000000040120e <main>:
  40120e:	41 56                	push   %r14
  401210:	41 55                	push   %r13
  401212:	41 54                	push   %r12
  401214:	55                   	push   %rbp
  401215:	53                   	push   %rbx
  401216:	48 83 ec 60          	sub    $0x60,%rsp
  40121a:	89 fd                	mov    %edi,%ebp
  40121c:	48 89 f3             	mov    %rsi,%rbx
  40121f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401226:	00 00 
  401228:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  40122d:	31 c0                	xor    %eax,%eax
  40122f:	48 b8 53 70 69 72 69 	movabs $0x6465746972697053,%rax
  401236:	74 65 64 
  401239:	48 89 04 24          	mov    %rax,(%rsp)
  40123d:	c7 44 24 08 41 77 61 	movl   $0x79617741,0x8(%rsp)
  401244:	79 
  401245:	66 c7 44 24 0c 43 4e 	movw   $0x4e43,0xc(%rsp)
  40124c:	c6 44 24 0e 00       	movb   $0x0,0xe(%rsp)
  401251:	48 c7 c6 88 20 40 00 	mov    $0x402088,%rsi
  401258:	bf 0b 00 00 00       	mov    $0xb,%edi
  40125d:	e8 5e fb ff ff       	call   400dc0 <signal@plt>
  401262:	48 c7 c6 34 20 40 00 	mov    $0x402034,%rsi
  401269:	bf 07 00 00 00       	mov    $0x7,%edi
  40126e:	e8 4d fb ff ff       	call   400dc0 <signal@plt>
  401273:	48 c7 c6 dc 20 40 00 	mov    $0x4020dc,%rsi
  40127a:	bf 04 00 00 00       	mov    $0x4,%edi
  40127f:	e8 3c fb ff ff       	call   400dc0 <signal@plt>
  401284:	83 3d 9d 42 20 00 00 	cmpl   $0x0,0x20429d(%rip)        # 605528 <is_checker>
  40128b:	75 26                	jne    4012b3 <main+0xa5>
  40128d:	4c 8d 25 39 21 00 00 	lea    0x2139(%rip),%r12        # 4033cd <_IO_stdin_used+0x23d>
  401294:	48 8b 05 25 42 20 00 	mov    0x204225(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  40129b:	48 89 05 6e 42 20 00 	mov    %rax,0x20426e(%rip)        # 605510 <infile>
  4012a2:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  4012a8:	41 be 00 00 00 00    	mov    $0x0,%r14d
  4012ae:	e9 8d 00 00 00       	jmp    401340 <main+0x132>
  4012b3:	48 c7 c6 30 21 40 00 	mov    $0x402130,%rsi
  4012ba:	bf 0e 00 00 00       	mov    $0xe,%edi
  4012bf:	e8 fc fa ff ff       	call   400dc0 <signal@plt>
  4012c4:	bf 02 00 00 00       	mov    $0x2,%edi
  4012c9:	e8 b2 fa ff ff       	call   400d80 <alarm@plt>
  4012ce:	4c 8d 25 fd 20 00 00 	lea    0x20fd(%rip),%r12        # 4033d2 <_IO_stdin_used+0x242>
  4012d5:	eb bd                	jmp    401294 <main+0x86>
  4012d7:	48 8b 3b             	mov    (%rbx),%rdi
  4012da:	e8 08 fd ff ff       	call   400fe7 <usage>
  4012df:	48 8d 35 be 21 00 00 	lea    0x21be(%rip),%rsi        # 4034a4 <_IO_stdin_used+0x314>
  4012e6:	48 8b 3d db 41 20 00 	mov    0x2041db(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  4012ed:	e8 7e fb ff ff       	call   400e70 <fopen@plt>
  4012f2:	48 89 05 17 42 20 00 	mov    %rax,0x204217(%rip)        # 605510 <infile>
  4012f9:	48 85 c0             	test   %rax,%rax
  4012fc:	75 42                	jne    401340 <main+0x132>
  4012fe:	48 8b 0d c3 41 20 00 	mov    0x2041c3(%rip),%rcx        # 6054c8 <optarg@@GLIBC_2.2.5>
  401305:	48 8d 15 d0 20 00 00 	lea    0x20d0(%rip),%rdx        # 4033dc <_IO_stdin_used+0x24c>
  40130c:	be 01 00 00 00       	mov    $0x1,%esi
  401311:	48 8b 3d c8 41 20 00 	mov    0x2041c8(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  401318:	e8 b3 fb ff ff       	call   400ed0 <__fprintf_chk@plt>
  40131d:	b8 01 00 00 00       	mov    $0x1,%eax
  401322:	e9 29 01 00 00       	jmp    401450 <main+0x242>
  401327:	ba 10 00 00 00       	mov    $0x10,%edx
  40132c:	be 00 00 00 00       	mov    $0x0,%esi
  401331:	48 8b 3d 90 41 20 00 	mov    0x204190(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  401338:	e8 53 fb ff ff       	call   400e90 <strtoul@plt>
  40133d:	41 89 c6             	mov    %eax,%r14d
  401340:	4c 89 e2             	mov    %r12,%rdx
  401343:	48 89 de             	mov    %rbx,%rsi
  401346:	89 ef                	mov    %ebp,%edi
  401348:	e8 33 fb ff ff       	call   400e80 <getopt@plt>
  40134d:	3c ff                	cmp    $0xff,%al
  40134f:	74 78                	je     4013c9 <main+0x1bb>
  401351:	0f be d0             	movsbl %al,%edx
  401354:	83 e8 61             	sub    $0x61,%eax
  401357:	3c 14                	cmp    $0x14,%al
  401359:	77 50                	ja     4013ab <main+0x19d>
  40135b:	0f b6 c0             	movzbl %al,%eax
  40135e:	48 8d 0d b7 20 00 00 	lea    0x20b7(%rip),%rcx        # 40341c <_IO_stdin_used+0x28c>
  401365:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
  401369:	48 01 c8             	add    %rcx,%rax
  40136c:	ff e0                	jmp    *%rax
  40136e:	ba 0a 00 00 00       	mov    $0xa,%edx
  401373:	be 00 00 00 00       	mov    $0x0,%esi
  401378:	48 8b 3d 49 41 20 00 	mov    0x204149(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  40137f:	e8 6c fa ff ff       	call   400df0 <strtol@plt>
  401384:	41 89 c5             	mov    %eax,%r13d
  401387:	eb b7                	jmp    401340 <main+0x132>
  401389:	c7 05 15 41 20 00 00 	movl   $0x0,0x204115(%rip)        # 6054a8 <notify>
  401390:	00 00 00 
  401393:	eb ab                	jmp    401340 <main+0x132>
  401395:	48 89 e7             	mov    %rsp,%rdi
  401398:	ba 50 00 00 00       	mov    $0x50,%edx
  40139d:	48 8b 35 24 41 20 00 	mov    0x204124(%rip),%rsi        # 6054c8 <optarg@@GLIBC_2.2.5>
  4013a4:	e8 67 f9 ff ff       	call   400d10 <strncpy@plt>
  4013a9:	eb 95                	jmp    401340 <main+0x132>
  4013ab:	48 8d 35 47 20 00 00 	lea    0x2047(%rip),%rsi        # 4033f9 <_IO_stdin_used+0x269>
  4013b2:	bf 01 00 00 00       	mov    $0x1,%edi
  4013b7:	b8 00 00 00 00       	mov    $0x0,%eax
  4013bc:	e8 9f fa ff ff       	call   400e60 <__printf_chk@plt>
  4013c1:	48 8b 3b             	mov    (%rbx),%rdi
  4013c4:	e8 1e fc ff ff       	call   400fe7 <usage>
  4013c9:	be 00 00 00 00       	mov    $0x0,%esi
  4013ce:	44 89 ef             	mov    %r13d,%edi
  4013d1:	e8 ad fc ff ff       	call   401083 <initialize_target>
  4013d6:	83 3d 4b 41 20 00 00 	cmpl   $0x0,0x20414b(%rip)        # 605528 <is_checker>
  4013dd:	74 3f                	je     40141e <main+0x210>
  4013df:	44 39 35 3a 41 20 00 	cmp    %r14d,0x20413a(%rip)        # 605520 <authkey>
  4013e6:	75 13                	jne    4013fb <main+0x1ed>
  4013e8:	48 89 e7             	mov    %rsp,%rdi
  4013eb:	48 8b 35 6e 3d 20 00 	mov    0x203d6e(%rip),%rsi        # 605160 <user_id>
  4013f2:	e8 b9 f9 ff ff       	call   400db0 <strcmp@plt>
  4013f7:	85 c0                	test   %eax,%eax
  4013f9:	74 23                	je     40141e <main+0x210>
  4013fb:	44 89 f2             	mov    %r14d,%edx
  4013fe:	48 8d 35 13 1f 00 00 	lea    0x1f13(%rip),%rsi        # 403318 <_IO_stdin_used+0x188>
  401405:	bf 01 00 00 00       	mov    $0x1,%edi
  40140a:	b8 00 00 00 00       	mov    $0x0,%eax
  40140f:	e8 4c fa ff ff       	call   400e60 <__printf_chk@plt>
  401414:	b8 00 00 00 00       	mov    $0x0,%eax
  401419:	e8 77 08 00 00       	call   401c95 <check_fail>
  40141e:	8b 15 00 41 20 00    	mov    0x204100(%rip),%edx        # 605524 <cookie>
  401424:	48 8d 35 e1 1f 00 00 	lea    0x1fe1(%rip),%rsi        # 40340c <_IO_stdin_used+0x27c>
  40142b:	bf 01 00 00 00       	mov    $0x1,%edi
  401430:	b8 00 00 00 00       	mov    $0x0,%eax
  401435:	e8 26 fa ff ff       	call   400e60 <__printf_chk@plt>
  40143a:	be 00 00 00 00       	mov    $0x0,%esi
  40143f:	48 8b 3d 5a 40 20 00 	mov    0x20405a(%rip),%rdi        # 6054a0 <buf_offset>
  401446:	e8 5c 0e 00 00       	call   4022a7 <stable_launch>
  40144b:	b8 00 00 00 00       	mov    $0x0,%eax
  401450:	48 8b 5c 24 58       	mov    0x58(%rsp),%rbx
  401455:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  40145c:	00 00 
  40145e:	75 0d                	jne    40146d <main+0x25f>
  401460:	48 83 c4 60          	add    $0x60,%rsp
  401464:	5b                   	pop    %rbx
  401465:	5d                   	pop    %rbp
  401466:	41 5c                	pop    %r12
  401468:	41 5d                	pop    %r13
  40146a:	41 5e                	pop    %r14
  40146c:	c3                   	ret    
  40146d:	e8 15 0d 00 00       	call   402187 <__stack_chk_fail>

0000000000401472 <scramble>:
  401472:	48 83 ec 38          	sub    $0x38,%rsp
  401476:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40147d:	00 00 
  40147f:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401484:	31 c0                	xor    %eax,%eax
  401486:	eb 10                	jmp    401498 <scramble+0x26>
  401488:	69 d0 75 66 00 00    	imul   $0x6675,%eax,%edx
  40148e:	01 fa                	add    %edi,%edx
  401490:	89 c1                	mov    %eax,%ecx
  401492:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  401495:	83 c0 01             	add    $0x1,%eax
  401498:	83 f8 09             	cmp    $0x9,%eax
  40149b:	76 eb                	jbe    401488 <scramble+0x16>
  40149d:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4014a1:	69 c0 08 15 00 00    	imul   $0x1508,%eax,%eax
  4014a7:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4014ab:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4014af:	69 c0 1f 24 00 00    	imul   $0x241f,%eax,%eax
  4014b5:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4014b9:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4014bd:	69 c0 2d 49 00 00    	imul   $0x492d,%eax,%eax
  4014c3:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4014c7:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4014cb:	69 c0 26 a4 00 00    	imul   $0xa426,%eax,%eax
  4014d1:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4014d5:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4014d9:	69 c0 5c 66 00 00    	imul   $0x665c,%eax,%eax
  4014df:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4014e3:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4014e7:	69 c0 ca 23 00 00    	imul   $0x23ca,%eax,%eax
  4014ed:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4014f1:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4014f5:	69 c0 f9 8d 00 00    	imul   $0x8df9,%eax,%eax
  4014fb:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4014ff:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401503:	69 c0 32 e5 00 00    	imul   $0xe532,%eax,%eax
  401509:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40150d:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401511:	69 c0 72 6f 00 00    	imul   $0x6f72,%eax,%eax
  401517:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40151b:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40151f:	69 c0 20 a2 00 00    	imul   $0xa220,%eax,%eax
  401525:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401529:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40152d:	69 c0 fe dd 00 00    	imul   $0xddfe,%eax,%eax
  401533:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401537:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40153b:	69 c0 c1 0c 00 00    	imul   $0xcc1,%eax,%eax
  401541:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401545:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401549:	69 c0 8e 4b 00 00    	imul   $0x4b8e,%eax,%eax
  40154f:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401553:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401557:	69 c0 ea c7 00 00    	imul   $0xc7ea,%eax,%eax
  40155d:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401561:	8b 04 24             	mov    (%rsp),%eax
  401564:	69 c0 d7 96 00 00    	imul   $0x96d7,%eax,%eax
  40156a:	89 04 24             	mov    %eax,(%rsp)
  40156d:	8b 04 24             	mov    (%rsp),%eax
  401570:	69 c0 03 df 00 00    	imul   $0xdf03,%eax,%eax
  401576:	89 04 24             	mov    %eax,(%rsp)
  401579:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40157d:	69 c0 37 a2 00 00    	imul   $0xa237,%eax,%eax
  401583:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401587:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40158b:	69 c0 55 35 00 00    	imul   $0x3555,%eax,%eax
  401591:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401595:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401599:	69 c0 8c 1c 00 00    	imul   $0x1c8c,%eax,%eax
  40159f:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4015a3:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4015a7:	69 c0 54 da 00 00    	imul   $0xda54,%eax,%eax
  4015ad:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4015b1:	8b 04 24             	mov    (%rsp),%eax
  4015b4:	69 c0 08 06 00 00    	imul   $0x608,%eax,%eax
  4015ba:	89 04 24             	mov    %eax,(%rsp)
  4015bd:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4015c1:	69 c0 f2 62 00 00    	imul   $0x62f2,%eax,%eax
  4015c7:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4015cb:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4015cf:	69 c0 8e 33 00 00    	imul   $0x338e,%eax,%eax
  4015d5:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4015d9:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4015dd:	69 c0 aa a3 00 00    	imul   $0xa3aa,%eax,%eax
  4015e3:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4015e7:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4015eb:	69 c0 0c 23 00 00    	imul   $0x230c,%eax,%eax
  4015f1:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4015f5:	8b 04 24             	mov    (%rsp),%eax
  4015f8:	69 c0 13 17 00 00    	imul   $0x1713,%eax,%eax
  4015fe:	89 04 24             	mov    %eax,(%rsp)
  401601:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401605:	69 c0 77 bf 00 00    	imul   $0xbf77,%eax,%eax
  40160b:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40160f:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401613:	69 c0 f8 5a 00 00    	imul   $0x5af8,%eax,%eax
  401619:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40161d:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401621:	69 c0 1e 70 00 00    	imul   $0x701e,%eax,%eax
  401627:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40162b:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40162f:	69 c0 93 83 00 00    	imul   $0x8393,%eax,%eax
  401635:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401639:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40163d:	69 c0 6f 44 00 00    	imul   $0x446f,%eax,%eax
  401643:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401647:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40164b:	69 c0 d5 b2 00 00    	imul   $0xb2d5,%eax,%eax
  401651:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401655:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401659:	69 c0 ba 65 00 00    	imul   $0x65ba,%eax,%eax
  40165f:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401663:	8b 04 24             	mov    (%rsp),%eax
  401666:	69 c0 0a d2 00 00    	imul   $0xd20a,%eax,%eax
  40166c:	89 04 24             	mov    %eax,(%rsp)
  40166f:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401673:	69 c0 a6 c1 00 00    	imul   $0xc1a6,%eax,%eax
  401679:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40167d:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401681:	69 c0 2e 05 00 00    	imul   $0x52e,%eax,%eax
  401687:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40168b:	8b 04 24             	mov    (%rsp),%eax
  40168e:	69 c0 7d aa 00 00    	imul   $0xaa7d,%eax,%eax
  401694:	89 04 24             	mov    %eax,(%rsp)
  401697:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40169b:	69 c0 b0 5b 00 00    	imul   $0x5bb0,%eax,%eax
  4016a1:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4016a5:	8b 04 24             	mov    (%rsp),%eax
  4016a8:	69 c0 44 b0 00 00    	imul   $0xb044,%eax,%eax
  4016ae:	89 04 24             	mov    %eax,(%rsp)
  4016b1:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4016b5:	69 c0 0b 81 00 00    	imul   $0x810b,%eax,%eax
  4016bb:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4016bf:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4016c3:	69 c0 24 45 00 00    	imul   $0x4524,%eax,%eax
  4016c9:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4016cd:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4016d1:	69 c0 5a d4 00 00    	imul   $0xd45a,%eax,%eax
  4016d7:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4016db:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4016df:	69 c0 f2 bb 00 00    	imul   $0xbbf2,%eax,%eax
  4016e5:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4016e9:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4016ed:	69 c0 a0 0f 00 00    	imul   $0xfa0,%eax,%eax
  4016f3:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4016f7:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4016fb:	69 c0 35 52 00 00    	imul   $0x5235,%eax,%eax
  401701:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401705:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401709:	69 c0 06 33 00 00    	imul   $0x3306,%eax,%eax
  40170f:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401713:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401717:	69 c0 ca f5 00 00    	imul   $0xf5ca,%eax,%eax
  40171d:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401721:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401725:	69 c0 4b 7d 00 00    	imul   $0x7d4b,%eax,%eax
  40172b:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40172f:	8b 04 24             	mov    (%rsp),%eax
  401732:	69 c0 06 ce 00 00    	imul   $0xce06,%eax,%eax
  401738:	89 04 24             	mov    %eax,(%rsp)
  40173b:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40173f:	69 c0 ca dd 00 00    	imul   $0xddca,%eax,%eax
  401745:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401749:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40174d:	69 c0 b5 fb 00 00    	imul   $0xfbb5,%eax,%eax
  401753:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401757:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40175b:	69 c0 5b 57 00 00    	imul   $0x575b,%eax,%eax
  401761:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401765:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401769:	69 c0 18 4b 00 00    	imul   $0x4b18,%eax,%eax
  40176f:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401773:	8b 04 24             	mov    (%rsp),%eax
  401776:	69 c0 3e 84 00 00    	imul   $0x843e,%eax,%eax
  40177c:	89 04 24             	mov    %eax,(%rsp)
  40177f:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401783:	69 c0 65 b2 00 00    	imul   $0xb265,%eax,%eax
  401789:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40178d:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401791:	69 c0 ac ce 00 00    	imul   $0xceac,%eax,%eax
  401797:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40179b:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40179f:	69 c0 68 9d 00 00    	imul   $0x9d68,%eax,%eax
  4017a5:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4017a9:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4017ad:	69 c0 24 fc 00 00    	imul   $0xfc24,%eax,%eax
  4017b3:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4017b7:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4017bb:	69 c0 59 d2 00 00    	imul   $0xd259,%eax,%eax
  4017c1:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4017c5:	8b 04 24             	mov    (%rsp),%eax
  4017c8:	69 c0 6b 85 00 00    	imul   $0x856b,%eax,%eax
  4017ce:	89 04 24             	mov    %eax,(%rsp)
  4017d1:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4017d5:	69 c0 f8 9e 00 00    	imul   $0x9ef8,%eax,%eax
  4017db:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4017df:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4017e3:	69 c0 33 bb 00 00    	imul   $0xbb33,%eax,%eax
  4017e9:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4017ed:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4017f1:	69 c0 4c 9e 00 00    	imul   $0x9e4c,%eax,%eax
  4017f7:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4017fb:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4017ff:	69 c0 47 f0 00 00    	imul   $0xf047,%eax,%eax
  401805:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401809:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40180d:	69 c0 d5 87 00 00    	imul   $0x87d5,%eax,%eax
  401813:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401817:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40181b:	69 c0 00 fc 00 00    	imul   $0xfc00,%eax,%eax
  401821:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401825:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401829:	69 c0 0a b1 00 00    	imul   $0xb10a,%eax,%eax
  40182f:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401833:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401837:	69 c0 bc 29 00 00    	imul   $0x29bc,%eax,%eax
  40183d:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401841:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401845:	69 c0 67 06 00 00    	imul   $0x667,%eax,%eax
  40184b:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40184f:	8b 04 24             	mov    (%rsp),%eax
  401852:	69 c0 7f f7 00 00    	imul   $0xf77f,%eax,%eax
  401858:	89 04 24             	mov    %eax,(%rsp)
  40185b:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40185f:	69 c0 44 b3 00 00    	imul   $0xb344,%eax,%eax
  401865:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401869:	8b 04 24             	mov    (%rsp),%eax
  40186c:	69 c0 56 b0 00 00    	imul   $0xb056,%eax,%eax
  401872:	89 04 24             	mov    %eax,(%rsp)
  401875:	8b 04 24             	mov    (%rsp),%eax
  401878:	69 c0 32 69 00 00    	imul   $0x6932,%eax,%eax
  40187e:	89 04 24             	mov    %eax,(%rsp)
  401881:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401885:	69 c0 06 aa 00 00    	imul   $0xaa06,%eax,%eax
  40188b:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40188f:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401893:	69 c0 3f b8 00 00    	imul   $0xb83f,%eax,%eax
  401899:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40189d:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4018a1:	69 c0 19 60 00 00    	imul   $0x6019,%eax,%eax
  4018a7:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4018ab:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4018af:	69 c0 e2 e7 00 00    	imul   $0xe7e2,%eax,%eax
  4018b5:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4018b9:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4018bd:	69 c0 f9 eb 00 00    	imul   $0xebf9,%eax,%eax
  4018c3:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4018c7:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4018cb:	69 c0 cc 53 00 00    	imul   $0x53cc,%eax,%eax
  4018d1:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4018d5:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4018d9:	69 c0 82 f2 00 00    	imul   $0xf282,%eax,%eax
  4018df:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4018e3:	8b 04 24             	mov    (%rsp),%eax
  4018e6:	69 c0 52 aa 00 00    	imul   $0xaa52,%eax,%eax
  4018ec:	89 04 24             	mov    %eax,(%rsp)
  4018ef:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4018f3:	69 c0 2b 5f 00 00    	imul   $0x5f2b,%eax,%eax
  4018f9:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4018fd:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401901:	69 c0 dd 41 00 00    	imul   $0x41dd,%eax,%eax
  401907:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40190b:	8b 04 24             	mov    (%rsp),%eax
  40190e:	69 c0 7e 57 00 00    	imul   $0x577e,%eax,%eax
  401914:	89 04 24             	mov    %eax,(%rsp)
  401917:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40191b:	69 c0 e2 36 00 00    	imul   $0x36e2,%eax,%eax
  401921:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401925:	8b 04 24             	mov    (%rsp),%eax
  401928:	69 c0 11 01 00 00    	imul   $0x111,%eax,%eax
  40192e:	89 04 24             	mov    %eax,(%rsp)
  401931:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401935:	69 c0 29 15 00 00    	imul   $0x1529,%eax,%eax
  40193b:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40193f:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401943:	69 c0 d2 3a 00 00    	imul   $0x3ad2,%eax,%eax
  401949:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40194d:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401951:	69 c0 e1 5d 00 00    	imul   $0x5de1,%eax,%eax
  401957:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40195b:	ba 00 00 00 00       	mov    $0x0,%edx
  401960:	b8 00 00 00 00       	mov    $0x0,%eax
  401965:	eb 0a                	jmp    401971 <scramble+0x4ff>
  401967:	89 d1                	mov    %edx,%ecx
  401969:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  40196c:	01 c8                	add    %ecx,%eax
  40196e:	83 c2 01             	add    $0x1,%edx
  401971:	83 fa 09             	cmp    $0x9,%edx
  401974:	76 f1                	jbe    401967 <scramble+0x4f5>
  401976:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  40197b:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  401982:	00 00 
  401984:	75 05                	jne    40198b <scramble+0x519>
  401986:	48 83 c4 38          	add    $0x38,%rsp
  40198a:	c3                   	ret    
  40198b:	e8 f7 07 00 00       	call   402187 <__stack_chk_fail>

0000000000401990 <getbuf>:
  401990:	48 83 ec 18          	sub    $0x18,%rsp
  401994:	48 89 e7             	mov    %rsp,%rdi
  401997:	e8 31 03 00 00       	call   401ccd <Gets>
  40199c:	b8 01 00 00 00       	mov    $0x1,%eax
  4019a1:	48 83 c4 18          	add    $0x18,%rsp
  4019a5:	c3                   	ret    

00000000004019a6 <getbuf_withcanary>:
  4019a6:	55                   	push   %rbp
  4019a7:	48 89 e5             	mov    %rsp,%rbp
  4019aa:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
  4019b1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4019b8:	00 00 
  4019ba:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4019be:	31 c0                	xor    %eax,%eax
  4019c0:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  4019c7:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  4019ce:	48 89 c7             	mov    %rax,%rdi
  4019d1:	e8 f7 02 00 00       	call   401ccd <Gets>
  4019d6:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  4019d9:	48 98                	cltq   
  4019db:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  4019e2:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
  4019e6:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  4019ed:	ba 80 00 00 00       	mov    $0x80,%edx
  4019f2:	48 89 c6             	mov    %rax,%rsi
  4019f5:	48 89 cf             	mov    %rcx,%rdi
  4019f8:	e8 03 f4 ff ff       	call   400e00 <memcpy@plt>
  4019fd:	b8 01 00 00 00       	mov    $0x1,%eax
  401a02:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  401a06:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  401a0d:	00 00 
  401a0f:	74 05                	je     401a16 <getbuf_withcanary+0x70>
  401a11:	e8 71 07 00 00       	call   402187 <__stack_chk_fail>
  401a16:	c9                   	leave  
  401a17:	c3                   	ret    

0000000000401a18 <touch1>:
  401a18:	48 83 ec 08          	sub    $0x8,%rsp
  401a1c:	c7 05 f6 3a 20 00 01 	movl   $0x1,0x203af6(%rip)        # 60551c <vlevel>
  401a23:	00 00 00 
  401a26:	48 8d 3d 79 1a 00 00 	lea    0x1a79(%rip),%rdi        # 4034a6 <_IO_stdin_used+0x316>
  401a2d:	e8 0e f3 ff ff       	call   400d40 <puts@plt>
  401a32:	bf 01 00 00 00       	mov    $0x1,%edi
  401a37:	e8 f9 04 00 00       	call   401f35 <validate>
  401a3c:	bf 00 00 00 00       	mov    $0x0,%edi
  401a41:	e8 6a f4 ff ff       	call   400eb0 <exit@plt>

0000000000401a46 <touch2>:
  401a46:	48 83 ec 08          	sub    $0x8,%rsp
  401a4a:	89 fa                	mov    %edi,%edx
  401a4c:	c7 05 c6 3a 20 00 02 	movl   $0x2,0x203ac6(%rip)        # 60551c <vlevel>
  401a53:	00 00 00 
  401a56:	39 3d c8 3a 20 00    	cmp    %edi,0x203ac8(%rip)        # 605524 <cookie>
  401a5c:	74 2a                	je     401a88 <touch2+0x42>
  401a5e:	48 8d 35 8b 1a 00 00 	lea    0x1a8b(%rip),%rsi        # 4034f0 <_IO_stdin_used+0x360>
  401a65:	bf 01 00 00 00       	mov    $0x1,%edi
  401a6a:	b8 00 00 00 00       	mov    $0x0,%eax
  401a6f:	e8 ec f3 ff ff       	call   400e60 <__printf_chk@plt>
  401a74:	bf 02 00 00 00       	mov    $0x2,%edi
  401a79:	e8 8e 05 00 00       	call   40200c <fail>
  401a7e:	bf 00 00 00 00       	mov    $0x0,%edi
  401a83:	e8 28 f4 ff ff       	call   400eb0 <exit@plt>
  401a88:	48 8d 35 39 1a 00 00 	lea    0x1a39(%rip),%rsi        # 4034c8 <_IO_stdin_used+0x338>
  401a8f:	bf 01 00 00 00       	mov    $0x1,%edi
  401a94:	b8 00 00 00 00       	mov    $0x0,%eax
  401a99:	e8 c2 f3 ff ff       	call   400e60 <__printf_chk@plt>
  401a9e:	bf 02 00 00 00       	mov    $0x2,%edi
  401aa3:	e8 8d 04 00 00       	call   401f35 <validate>
  401aa8:	eb d4                	jmp    401a7e <touch2+0x38>

0000000000401aaa <hexmatch>:
  401aaa:	41 54                	push   %r12
  401aac:	55                   	push   %rbp
  401aad:	53                   	push   %rbx
  401aae:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  401ab2:	89 fd                	mov    %edi,%ebp
  401ab4:	48 89 f3             	mov    %rsi,%rbx
  401ab7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401abe:	00 00 
  401ac0:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  401ac5:	31 c0                	xor    %eax,%eax
  401ac7:	e8 54 f3 ff ff       	call   400e20 <random@plt>
  401acc:	48 89 c1             	mov    %rax,%rcx
  401acf:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401ad6:	0a d7 a3 
  401ad9:	48 f7 ea             	imul   %rdx
  401adc:	48 01 ca             	add    %rcx,%rdx
  401adf:	48 c1 fa 06          	sar    $0x6,%rdx
  401ae3:	48 89 c8             	mov    %rcx,%rax
  401ae6:	48 c1 f8 3f          	sar    $0x3f,%rax
  401aea:	48 29 c2             	sub    %rax,%rdx
  401aed:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  401af1:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  401af5:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
  401afc:	00 
  401afd:	48 29 c1             	sub    %rax,%rcx
  401b00:	4c 8d 24 0c          	lea    (%rsp,%rcx,1),%r12
  401b04:	41 89 e8             	mov    %ebp,%r8d
  401b07:	48 8d 0d b5 19 00 00 	lea    0x19b5(%rip),%rcx        # 4034c3 <_IO_stdin_used+0x333>
  401b0e:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  401b15:	be 01 00 00 00       	mov    $0x1,%esi
  401b1a:	4c 89 e7             	mov    %r12,%rdi
  401b1d:	b8 00 00 00 00       	mov    $0x0,%eax
  401b22:	e8 b9 f3 ff ff       	call   400ee0 <__sprintf_chk@plt>
  401b27:	ba 09 00 00 00       	mov    $0x9,%edx
  401b2c:	4c 89 e6             	mov    %r12,%rsi
  401b2f:	48 89 df             	mov    %rbx,%rdi
  401b32:	e8 e9 f1 ff ff       	call   400d20 <strncmp@plt>
  401b37:	85 c0                	test   %eax,%eax
  401b39:	0f 94 c0             	sete   %al
  401b3c:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
  401b41:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  401b48:	00 00 
  401b4a:	75 0c                	jne    401b58 <hexmatch+0xae>
  401b4c:	0f b6 c0             	movzbl %al,%eax
  401b4f:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  401b53:	5b                   	pop    %rbx
  401b54:	5d                   	pop    %rbp
  401b55:	41 5c                	pop    %r12
  401b57:	c3                   	ret    
  401b58:	e8 2a 06 00 00       	call   402187 <__stack_chk_fail>

0000000000401b5d <touch3>:
  401b5d:	53                   	push   %rbx
  401b5e:	48 89 fb             	mov    %rdi,%rbx
  401b61:	c7 05 b1 39 20 00 03 	movl   $0x3,0x2039b1(%rip)        # 60551c <vlevel>
  401b68:	00 00 00 
  401b6b:	48 89 fe             	mov    %rdi,%rsi
  401b6e:	8b 3d b0 39 20 00    	mov    0x2039b0(%rip),%edi        # 605524 <cookie>
  401b74:	e8 31 ff ff ff       	call   401aaa <hexmatch>
  401b79:	85 c0                	test   %eax,%eax
  401b7b:	74 2d                	je     401baa <touch3+0x4d>
  401b7d:	48 89 da             	mov    %rbx,%rdx
  401b80:	48 8d 35 91 19 00 00 	lea    0x1991(%rip),%rsi        # 403518 <_IO_stdin_used+0x388>
  401b87:	bf 01 00 00 00       	mov    $0x1,%edi
  401b8c:	b8 00 00 00 00       	mov    $0x0,%eax
  401b91:	e8 ca f2 ff ff       	call   400e60 <__printf_chk@plt>
  401b96:	bf 03 00 00 00       	mov    $0x3,%edi
  401b9b:	e8 95 03 00 00       	call   401f35 <validate>
  401ba0:	bf 00 00 00 00       	mov    $0x0,%edi
  401ba5:	e8 06 f3 ff ff       	call   400eb0 <exit@plt>
  401baa:	48 89 da             	mov    %rbx,%rdx
  401bad:	48 8d 35 8c 19 00 00 	lea    0x198c(%rip),%rsi        # 403540 <_IO_stdin_used+0x3b0>
  401bb4:	bf 01 00 00 00       	mov    $0x1,%edi
  401bb9:	b8 00 00 00 00       	mov    $0x0,%eax
  401bbe:	e8 9d f2 ff ff       	call   400e60 <__printf_chk@plt>
  401bc3:	bf 03 00 00 00       	mov    $0x3,%edi
  401bc8:	e8 3f 04 00 00       	call   40200c <fail>
  401bcd:	eb d1                	jmp    401ba0 <touch3+0x43>

0000000000401bcf <test>:
  401bcf:	48 83 ec 08          	sub    $0x8,%rsp
  401bd3:	b8 00 00 00 00       	mov    $0x0,%eax
  401bd8:	e8 b3 fd ff ff       	call   401990 <getbuf>
  401bdd:	89 c2                	mov    %eax,%edx
  401bdf:	48 8d 35 82 19 00 00 	lea    0x1982(%rip),%rsi        # 403568 <_IO_stdin_used+0x3d8>
  401be6:	bf 01 00 00 00       	mov    $0x1,%edi
  401beb:	b8 00 00 00 00       	mov    $0x0,%eax
  401bf0:	e8 6b f2 ff ff       	call   400e60 <__printf_chk@plt>
  401bf5:	48 83 c4 08          	add    $0x8,%rsp
  401bf9:	c3                   	ret    

0000000000401bfa <test2>:
  401bfa:	48 83 ec 08          	sub    $0x8,%rsp
  401bfe:	b8 00 00 00 00       	mov    $0x0,%eax
  401c03:	e8 9e fd ff ff       	call   4019a6 <getbuf_withcanary>
  401c08:	89 c2                	mov    %eax,%edx
  401c0a:	48 8d 35 7f 19 00 00 	lea    0x197f(%rip),%rsi        # 403590 <_IO_stdin_used+0x400>
  401c11:	bf 01 00 00 00       	mov    $0x1,%edi
  401c16:	b8 00 00 00 00       	mov    $0x0,%eax
  401c1b:	e8 40 f2 ff ff       	call   400e60 <__printf_chk@plt>
  401c20:	48 83 c4 08          	add    $0x8,%rsp
  401c24:	c3                   	ret    

0000000000401c25 <save_char>:
  401c25:	8b 05 19 45 20 00    	mov    0x204519(%rip),%eax        # 606144 <gets_cnt>
  401c2b:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401c30:	7f 4a                	jg     401c7c <save_char+0x57>
  401c32:	89 f9                	mov    %edi,%ecx
  401c34:	c0 e9 04             	shr    $0x4,%cl
  401c37:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401c3a:	4c 8d 05 bf 1c 00 00 	lea    0x1cbf(%rip),%r8        # 403900 <trans_char>
  401c41:	83 e1 0f             	and    $0xf,%ecx
  401c44:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  401c49:	48 8d 0d f0 38 20 00 	lea    0x2038f0(%rip),%rcx        # 605540 <gets_buf>
  401c50:	48 63 f2             	movslq %edx,%rsi
  401c53:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  401c57:	8d 72 01             	lea    0x1(%rdx),%esi
  401c5a:	83 e7 0f             	and    $0xf,%edi
  401c5d:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  401c62:	48 63 f6             	movslq %esi,%rsi
  401c65:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  401c69:	83 c2 02             	add    $0x2,%edx
  401c6c:	48 63 d2             	movslq %edx,%rdx
  401c6f:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  401c73:	83 c0 01             	add    $0x1,%eax
  401c76:	89 05 c8 44 20 00    	mov    %eax,0x2044c8(%rip)        # 606144 <gets_cnt>
  401c7c:	f3 c3                	repz ret 

0000000000401c7e <save_term>:
  401c7e:	8b 05 c0 44 20 00    	mov    0x2044c0(%rip),%eax        # 606144 <gets_cnt>
  401c84:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401c87:	48 98                	cltq   
  401c89:	48 8d 15 b0 38 20 00 	lea    0x2038b0(%rip),%rdx        # 605540 <gets_buf>
  401c90:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  401c94:	c3                   	ret    

0000000000401c95 <check_fail>:
  401c95:	48 83 ec 08          	sub    $0x8,%rsp
  401c99:	0f be 15 a8 44 20 00 	movsbl 0x2044a8(%rip),%edx        # 606148 <target_prefix>
  401ca0:	4c 8d 05 99 38 20 00 	lea    0x203899(%rip),%r8        # 605540 <gets_buf>
  401ca7:	8b 0d 6b 38 20 00    	mov    0x20386b(%rip),%ecx        # 605518 <check_level>
  401cad:	48 8d 35 0a 19 00 00 	lea    0x190a(%rip),%rsi        # 4035be <_IO_stdin_used+0x42e>
  401cb4:	bf 01 00 00 00       	mov    $0x1,%edi
  401cb9:	b8 00 00 00 00       	mov    $0x0,%eax
  401cbe:	e8 9d f1 ff ff       	call   400e60 <__printf_chk@plt>
  401cc3:	bf 01 00 00 00       	mov    $0x1,%edi
  401cc8:	e8 e3 f1 ff ff       	call   400eb0 <exit@plt>

0000000000401ccd <Gets>:
  401ccd:	41 54                	push   %r12
  401ccf:	55                   	push   %rbp
  401cd0:	53                   	push   %rbx
  401cd1:	49 89 fc             	mov    %rdi,%r12
  401cd4:	c7 05 66 44 20 00 00 	movl   $0x0,0x204466(%rip)        # 606144 <gets_cnt>
  401cdb:	00 00 00 
  401cde:	48 89 fb             	mov    %rdi,%rbx
  401ce1:	eb 11                	jmp    401cf4 <Gets+0x27>
  401ce3:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401ce7:	88 03                	mov    %al,(%rbx)
  401ce9:	0f b6 f8             	movzbl %al,%edi
  401cec:	e8 34 ff ff ff       	call   401c25 <save_char>
  401cf1:	48 89 eb             	mov    %rbp,%rbx
  401cf4:	48 8b 3d 15 38 20 00 	mov    0x203815(%rip),%rdi        # 605510 <infile>
  401cfb:	e8 30 f1 ff ff       	call   400e30 <_IO_getc@plt>
  401d00:	83 f8 ff             	cmp    $0xffffffff,%eax
  401d03:	74 05                	je     401d0a <Gets+0x3d>
  401d05:	83 f8 0a             	cmp    $0xa,%eax
  401d08:	75 d9                	jne    401ce3 <Gets+0x16>
  401d0a:	c6 03 00             	movb   $0x0,(%rbx)
  401d0d:	b8 00 00 00 00       	mov    $0x0,%eax
  401d12:	e8 67 ff ff ff       	call   401c7e <save_term>
  401d17:	4c 89 e0             	mov    %r12,%rax
  401d1a:	5b                   	pop    %rbx
  401d1b:	5d                   	pop    %rbp
  401d1c:	41 5c                	pop    %r12
  401d1e:	c3                   	ret    

0000000000401d1f <notify_server>:
  401d1f:	55                   	push   %rbp
  401d20:	53                   	push   %rbx
  401d21:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
  401d28:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401d2f:	00 00 
  401d31:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  401d38:	00 
  401d39:	31 c0                	xor    %eax,%eax
  401d3b:	83 3d e6 37 20 00 00 	cmpl   $0x0,0x2037e6(%rip)        # 605528 <is_checker>
  401d42:	0f 85 cb 01 00 00    	jne    401f13 <notify_server+0x1f4>
  401d48:	89 fb                	mov    %edi,%ebx
  401d4a:	8b 05 f4 43 20 00    	mov    0x2043f4(%rip),%eax        # 606144 <gets_cnt>
  401d50:	83 c0 64             	add    $0x64,%eax
  401d53:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401d58:	0f 8f bd 00 00 00    	jg     401e1b <notify_server+0xfc>
  401d5e:	0f be 05 e3 43 20 00 	movsbl 0x2043e3(%rip),%eax        # 606148 <target_prefix>
  401d65:	83 3d 3c 37 20 00 00 	cmpl   $0x0,0x20373c(%rip)        # 6054a8 <notify>
  401d6c:	0f 84 c9 00 00 00    	je     401e3b <notify_server+0x11c>
  401d72:	8b 15 a8 37 20 00    	mov    0x2037a8(%rip),%edx        # 605520 <authkey>
  401d78:	85 db                	test   %ebx,%ebx
  401d7a:	0f 84 c5 00 00 00    	je     401e45 <notify_server+0x126>
  401d80:	48 8d 2d 4d 18 00 00 	lea    0x184d(%rip),%rbp        # 4035d4 <_IO_stdin_used+0x444>
  401d87:	48 89 e7             	mov    %rsp,%rdi
  401d8a:	48 8d 0d af 37 20 00 	lea    0x2037af(%rip),%rcx        # 605540 <gets_buf>
  401d91:	51                   	push   %rcx
  401d92:	56                   	push   %rsi
  401d93:	50                   	push   %rax
  401d94:	52                   	push   %rdx
  401d95:	49 89 e9             	mov    %rbp,%r9
  401d98:	44 8b 05 b1 33 20 00 	mov    0x2033b1(%rip),%r8d        # 605150 <target_id>
  401d9f:	48 8d 0d 38 18 00 00 	lea    0x1838(%rip),%rcx        # 4035de <_IO_stdin_used+0x44e>
  401da6:	ba 00 20 00 00       	mov    $0x2000,%edx
  401dab:	be 01 00 00 00       	mov    $0x1,%esi
  401db0:	b8 00 00 00 00       	mov    $0x0,%eax
  401db5:	e8 26 f1 ff ff       	call   400ee0 <__sprintf_chk@plt>
  401dba:	48 83 c4 20          	add    $0x20,%rsp
  401dbe:	83 3d e3 36 20 00 00 	cmpl   $0x0,0x2036e3(%rip)        # 6054a8 <notify>
  401dc5:	0f 84 bf 00 00 00    	je     401e8a <notify_server+0x16b>
  401dcb:	48 89 e1             	mov    %rsp,%rcx
  401dce:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  401dd5:	00 
  401dd6:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401ddc:	48 8b 15 85 33 20 00 	mov    0x203385(%rip),%rdx        # 605168 <lab>
  401de3:	48 8b 35 86 33 20 00 	mov    0x203386(%rip),%rsi        # 605170 <course>
  401dea:	48 8b 3d 6f 33 20 00 	mov    0x20336f(%rip),%rdi        # 605160 <user_id>
  401df1:	e8 4c 12 00 00       	call   403042 <driver_post>
  401df6:	85 c0                	test   %eax,%eax
  401df8:	78 57                	js     401e51 <notify_server+0x132>
  401dfa:	85 db                	test   %ebx,%ebx
  401dfc:	74 7b                	je     401e79 <notify_server+0x15a>
  401dfe:	48 8d 3d 13 19 00 00 	lea    0x1913(%rip),%rdi        # 403718 <_IO_stdin_used+0x588>
  401e05:	e8 36 ef ff ff       	call   400d40 <puts@plt>
  401e0a:	48 8d 3d f5 17 00 00 	lea    0x17f5(%rip),%rdi        # 403606 <_IO_stdin_used+0x476>
  401e11:	e8 2a ef ff ff       	call   400d40 <puts@plt>
  401e16:	e9 f8 00 00 00       	jmp    401f13 <notify_server+0x1f4>
  401e1b:	48 8d 35 c6 18 00 00 	lea    0x18c6(%rip),%rsi        # 4036e8 <_IO_stdin_used+0x558>
  401e22:	bf 01 00 00 00       	mov    $0x1,%edi
  401e27:	b8 00 00 00 00       	mov    $0x0,%eax
  401e2c:	e8 2f f0 ff ff       	call   400e60 <__printf_chk@plt>
  401e31:	bf 01 00 00 00       	mov    $0x1,%edi
  401e36:	e8 75 f0 ff ff       	call   400eb0 <exit@plt>
  401e3b:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  401e40:	e9 33 ff ff ff       	jmp    401d78 <notify_server+0x59>
  401e45:	48 8d 2d 8d 17 00 00 	lea    0x178d(%rip),%rbp        # 4035d9 <_IO_stdin_used+0x449>
  401e4c:	e9 36 ff ff ff       	jmp    401d87 <notify_server+0x68>
  401e51:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  401e58:	00 
  401e59:	48 8d 35 9a 17 00 00 	lea    0x179a(%rip),%rsi        # 4035fa <_IO_stdin_used+0x46a>
  401e60:	bf 01 00 00 00       	mov    $0x1,%edi
  401e65:	b8 00 00 00 00       	mov    $0x0,%eax
  401e6a:	e8 f1 ef ff ff       	call   400e60 <__printf_chk@plt>
  401e6f:	bf 01 00 00 00       	mov    $0x1,%edi
  401e74:	e8 37 f0 ff ff       	call   400eb0 <exit@plt>
  401e79:	48 8d 3d 90 17 00 00 	lea    0x1790(%rip),%rdi        # 403610 <_IO_stdin_used+0x480>
  401e80:	e8 bb ee ff ff       	call   400d40 <puts@plt>
  401e85:	e9 89 00 00 00       	jmp    401f13 <notify_server+0x1f4>
  401e8a:	48 89 ea             	mov    %rbp,%rdx
  401e8d:	48 8d 35 bc 18 00 00 	lea    0x18bc(%rip),%rsi        # 403750 <_IO_stdin_used+0x5c0>
  401e94:	bf 01 00 00 00       	mov    $0x1,%edi
  401e99:	b8 00 00 00 00       	mov    $0x0,%eax
  401e9e:	e8 bd ef ff ff       	call   400e60 <__printf_chk@plt>
  401ea3:	48 8b 15 b6 32 20 00 	mov    0x2032b6(%rip),%rdx        # 605160 <user_id>
  401eaa:	48 8d 35 66 17 00 00 	lea    0x1766(%rip),%rsi        # 403617 <_IO_stdin_used+0x487>
  401eb1:	bf 01 00 00 00       	mov    $0x1,%edi
  401eb6:	b8 00 00 00 00       	mov    $0x0,%eax
  401ebb:	e8 a0 ef ff ff       	call   400e60 <__printf_chk@plt>
  401ec0:	48 8b 15 a9 32 20 00 	mov    0x2032a9(%rip),%rdx        # 605170 <course>
  401ec7:	48 8d 35 56 17 00 00 	lea    0x1756(%rip),%rsi        # 403624 <_IO_stdin_used+0x494>
  401ece:	bf 01 00 00 00       	mov    $0x1,%edi
  401ed3:	b8 00 00 00 00       	mov    $0x0,%eax
  401ed8:	e8 83 ef ff ff       	call   400e60 <__printf_chk@plt>
  401edd:	48 8b 15 84 32 20 00 	mov    0x203284(%rip),%rdx        # 605168 <lab>
  401ee4:	48 8d 35 45 17 00 00 	lea    0x1745(%rip),%rsi        # 403630 <_IO_stdin_used+0x4a0>
  401eeb:	bf 01 00 00 00       	mov    $0x1,%edi
  401ef0:	b8 00 00 00 00       	mov    $0x0,%eax
  401ef5:	e8 66 ef ff ff       	call   400e60 <__printf_chk@plt>
  401efa:	48 89 e2             	mov    %rsp,%rdx
  401efd:	48 8d 35 35 17 00 00 	lea    0x1735(%rip),%rsi        # 403639 <_IO_stdin_used+0x4a9>
  401f04:	bf 01 00 00 00       	mov    $0x1,%edi
  401f09:	b8 00 00 00 00       	mov    $0x0,%eax
  401f0e:	e8 4d ef ff ff       	call   400e60 <__printf_chk@plt>
  401f13:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  401f1a:	00 
  401f1b:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401f22:	00 00 
  401f24:	75 0a                	jne    401f30 <notify_server+0x211>
  401f26:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  401f2d:	5b                   	pop    %rbx
  401f2e:	5d                   	pop    %rbp
  401f2f:	c3                   	ret    
  401f30:	e8 52 02 00 00       	call   402187 <__stack_chk_fail>

0000000000401f35 <validate>:
  401f35:	53                   	push   %rbx
  401f36:	89 fb                	mov    %edi,%ebx
  401f38:	83 3d e9 35 20 00 00 	cmpl   $0x0,0x2035e9(%rip)        # 605528 <is_checker>
  401f3f:	74 79                	je     401fba <validate+0x85>
  401f41:	39 3d d5 35 20 00    	cmp    %edi,0x2035d5(%rip)        # 60551c <vlevel>
  401f47:	75 39                	jne    401f82 <validate+0x4d>
  401f49:	8b 15 c9 35 20 00    	mov    0x2035c9(%rip),%edx        # 605518 <check_level>
  401f4f:	39 fa                	cmp    %edi,%edx
  401f51:	75 45                	jne    401f98 <validate+0x63>
  401f53:	0f be 0d ee 41 20 00 	movsbl 0x2041ee(%rip),%ecx        # 606148 <target_prefix>
  401f5a:	4c 8d 0d df 35 20 00 	lea    0x2035df(%rip),%r9        # 605540 <gets_buf>
  401f61:	41 89 f8             	mov    %edi,%r8d
  401f64:	8b 15 b6 35 20 00    	mov    0x2035b6(%rip),%edx        # 605520 <authkey>
  401f6a:	48 8d 35 2f 18 00 00 	lea    0x182f(%rip),%rsi        # 4037a0 <_IO_stdin_used+0x610>
  401f71:	bf 01 00 00 00       	mov    $0x1,%edi
  401f76:	b8 00 00 00 00       	mov    $0x0,%eax
  401f7b:	e8 e0 ee ff ff       	call   400e60 <__printf_chk@plt>
  401f80:	5b                   	pop    %rbx
  401f81:	c3                   	ret    
  401f82:	48 8d 3d bc 16 00 00 	lea    0x16bc(%rip),%rdi        # 403645 <_IO_stdin_used+0x4b5>
  401f89:	e8 b2 ed ff ff       	call   400d40 <puts@plt>
  401f8e:	b8 00 00 00 00       	mov    $0x0,%eax
  401f93:	e8 fd fc ff ff       	call   401c95 <check_fail>
  401f98:	89 f9                	mov    %edi,%ecx
  401f9a:	48 8d 35 d7 17 00 00 	lea    0x17d7(%rip),%rsi        # 403778 <_IO_stdin_used+0x5e8>
  401fa1:	bf 01 00 00 00       	mov    $0x1,%edi
  401fa6:	b8 00 00 00 00       	mov    $0x0,%eax
  401fab:	e8 b0 ee ff ff       	call   400e60 <__printf_chk@plt>
  401fb0:	b8 00 00 00 00       	mov    $0x0,%eax
  401fb5:	e8 db fc ff ff       	call   401c95 <check_fail>
  401fba:	39 3d 5c 35 20 00    	cmp    %edi,0x20355c(%rip)        # 60551c <vlevel>
  401fc0:	74 1a                	je     401fdc <validate+0xa7>
  401fc2:	48 8d 3d 7c 16 00 00 	lea    0x167c(%rip),%rdi        # 403645 <_IO_stdin_used+0x4b5>
  401fc9:	e8 72 ed ff ff       	call   400d40 <puts@plt>
  401fce:	89 de                	mov    %ebx,%esi
  401fd0:	bf 00 00 00 00       	mov    $0x0,%edi
  401fd5:	e8 45 fd ff ff       	call   401d1f <notify_server>
  401fda:	eb a4                	jmp    401f80 <validate+0x4b>
  401fdc:	0f be 0d 65 41 20 00 	movsbl 0x204165(%rip),%ecx        # 606148 <target_prefix>
  401fe3:	89 fa                	mov    %edi,%edx
  401fe5:	48 8d 35 dc 17 00 00 	lea    0x17dc(%rip),%rsi        # 4037c8 <_IO_stdin_used+0x638>
  401fec:	bf 01 00 00 00       	mov    $0x1,%edi
  401ff1:	b8 00 00 00 00       	mov    $0x0,%eax
  401ff6:	e8 65 ee ff ff       	call   400e60 <__printf_chk@plt>
  401ffb:	89 de                	mov    %ebx,%esi
  401ffd:	bf 01 00 00 00       	mov    $0x1,%edi
  402002:	e8 18 fd ff ff       	call   401d1f <notify_server>
  402007:	e9 74 ff ff ff       	jmp    401f80 <validate+0x4b>

000000000040200c <fail>:
  40200c:	48 83 ec 08          	sub    $0x8,%rsp
  402010:	83 3d 11 35 20 00 00 	cmpl   $0x0,0x203511(%rip)        # 605528 <is_checker>
  402017:	75 11                	jne    40202a <fail+0x1e>
  402019:	89 fe                	mov    %edi,%esi
  40201b:	bf 00 00 00 00       	mov    $0x0,%edi
  402020:	e8 fa fc ff ff       	call   401d1f <notify_server>
  402025:	48 83 c4 08          	add    $0x8,%rsp
  402029:	c3                   	ret    
  40202a:	b8 00 00 00 00       	mov    $0x0,%eax
  40202f:	e8 61 fc ff ff       	call   401c95 <check_fail>

0000000000402034 <bushandler>:
  402034:	48 83 ec 08          	sub    $0x8,%rsp
  402038:	83 3d e9 34 20 00 00 	cmpl   $0x0,0x2034e9(%rip)        # 605528 <is_checker>
  40203f:	74 16                	je     402057 <bushandler+0x23>
  402041:	48 8d 3d 1b 16 00 00 	lea    0x161b(%rip),%rdi        # 403663 <_IO_stdin_used+0x4d3>
  402048:	e8 f3 ec ff ff       	call   400d40 <puts@plt>
  40204d:	b8 00 00 00 00       	mov    $0x0,%eax
  402052:	e8 3e fc ff ff       	call   401c95 <check_fail>
  402057:	48 8d 3d a2 17 00 00 	lea    0x17a2(%rip),%rdi        # 403800 <_IO_stdin_used+0x670>
  40205e:	e8 dd ec ff ff       	call   400d40 <puts@plt>
  402063:	48 8d 3d 03 16 00 00 	lea    0x1603(%rip),%rdi        # 40366d <_IO_stdin_used+0x4dd>
  40206a:	e8 d1 ec ff ff       	call   400d40 <puts@plt>
  40206f:	be 00 00 00 00       	mov    $0x0,%esi
  402074:	bf 00 00 00 00       	mov    $0x0,%edi
  402079:	e8 a1 fc ff ff       	call   401d1f <notify_server>
  40207e:	bf 01 00 00 00       	mov    $0x1,%edi
  402083:	e8 28 ee ff ff       	call   400eb0 <exit@plt>

0000000000402088 <seghandler>:
  402088:	48 83 ec 08          	sub    $0x8,%rsp
  40208c:	83 3d 95 34 20 00 00 	cmpl   $0x0,0x203495(%rip)        # 605528 <is_checker>
  402093:	74 16                	je     4020ab <seghandler+0x23>
  402095:	48 8d 3d e7 15 00 00 	lea    0x15e7(%rip),%rdi        # 403683 <_IO_stdin_used+0x4f3>
  40209c:	e8 9f ec ff ff       	call   400d40 <puts@plt>
  4020a1:	b8 00 00 00 00       	mov    $0x0,%eax
  4020a6:	e8 ea fb ff ff       	call   401c95 <check_fail>
  4020ab:	48 8d 3d 6e 17 00 00 	lea    0x176e(%rip),%rdi        # 403820 <_IO_stdin_used+0x690>
  4020b2:	e8 89 ec ff ff       	call   400d40 <puts@plt>
  4020b7:	48 8d 3d af 15 00 00 	lea    0x15af(%rip),%rdi        # 40366d <_IO_stdin_used+0x4dd>
  4020be:	e8 7d ec ff ff       	call   400d40 <puts@plt>
  4020c3:	be 00 00 00 00       	mov    $0x0,%esi
  4020c8:	bf 00 00 00 00       	mov    $0x0,%edi
  4020cd:	e8 4d fc ff ff       	call   401d1f <notify_server>
  4020d2:	bf 01 00 00 00       	mov    $0x1,%edi
  4020d7:	e8 d4 ed ff ff       	call   400eb0 <exit@plt>

00000000004020dc <illegalhandler>:
  4020dc:	48 83 ec 08          	sub    $0x8,%rsp
  4020e0:	83 3d 41 34 20 00 00 	cmpl   $0x0,0x203441(%rip)        # 605528 <is_checker>
  4020e7:	74 16                	je     4020ff <illegalhandler+0x23>
  4020e9:	48 8d 3d a6 15 00 00 	lea    0x15a6(%rip),%rdi        # 403696 <_IO_stdin_used+0x506>
  4020f0:	e8 4b ec ff ff       	call   400d40 <puts@plt>
  4020f5:	b8 00 00 00 00       	mov    $0x0,%eax
  4020fa:	e8 96 fb ff ff       	call   401c95 <check_fail>
  4020ff:	48 8d 3d 42 17 00 00 	lea    0x1742(%rip),%rdi        # 403848 <_IO_stdin_used+0x6b8>
  402106:	e8 35 ec ff ff       	call   400d40 <puts@plt>
  40210b:	48 8d 3d 5b 15 00 00 	lea    0x155b(%rip),%rdi        # 40366d <_IO_stdin_used+0x4dd>
  402112:	e8 29 ec ff ff       	call   400d40 <puts@plt>
  402117:	be 00 00 00 00       	mov    $0x0,%esi
  40211c:	bf 00 00 00 00       	mov    $0x0,%edi
  402121:	e8 f9 fb ff ff       	call   401d1f <notify_server>
  402126:	bf 01 00 00 00       	mov    $0x1,%edi
  40212b:	e8 80 ed ff ff       	call   400eb0 <exit@plt>

0000000000402130 <sigalrmhandler>:
  402130:	48 83 ec 08          	sub    $0x8,%rsp
  402134:	83 3d ed 33 20 00 00 	cmpl   $0x0,0x2033ed(%rip)        # 605528 <is_checker>
  40213b:	74 16                	je     402153 <sigalrmhandler+0x23>
  40213d:	48 8d 3d 66 15 00 00 	lea    0x1566(%rip),%rdi        # 4036aa <_IO_stdin_used+0x51a>
  402144:	e8 f7 eb ff ff       	call   400d40 <puts@plt>
  402149:	b8 00 00 00 00       	mov    $0x0,%eax
  40214e:	e8 42 fb ff ff       	call   401c95 <check_fail>
  402153:	ba 02 00 00 00       	mov    $0x2,%edx
  402158:	48 8d 35 19 17 00 00 	lea    0x1719(%rip),%rsi        # 403878 <_IO_stdin_used+0x6e8>
  40215f:	bf 01 00 00 00       	mov    $0x1,%edi
  402164:	b8 00 00 00 00       	mov    $0x0,%eax
  402169:	e8 f2 ec ff ff       	call   400e60 <__printf_chk@plt>
  40216e:	be 00 00 00 00       	mov    $0x0,%esi
  402173:	bf 00 00 00 00       	mov    $0x0,%edi
  402178:	e8 a2 fb ff ff       	call   401d1f <notify_server>
  40217d:	bf 01 00 00 00       	mov    $0x1,%edi
  402182:	e8 29 ed ff ff       	call   400eb0 <exit@plt>

0000000000402187 <__stack_chk_fail>:
  402187:	48 83 ec 08          	sub    $0x8,%rsp
  40218b:	83 3d 96 33 20 00 00 	cmpl   $0x0,0x203396(%rip)        # 605528 <is_checker>
  402192:	74 16                	je     4021aa <__stack_chk_fail+0x23>
  402194:	48 8d 3d 17 15 00 00 	lea    0x1517(%rip),%rdi        # 4036b2 <_IO_stdin_used+0x522>
  40219b:	e8 a0 eb ff ff       	call   400d40 <puts@plt>
  4021a0:	b8 00 00 00 00       	mov    $0x0,%eax
  4021a5:	e8 eb fa ff ff       	call   401c95 <check_fail>
  4021aa:	48 8d 3d ff 16 00 00 	lea    0x16ff(%rip),%rdi        # 4038b0 <_IO_stdin_used+0x720>
  4021b1:	e8 8a eb ff ff       	call   400d40 <puts@plt>
  4021b6:	48 8d 3d b0 14 00 00 	lea    0x14b0(%rip),%rdi        # 40366d <_IO_stdin_used+0x4dd>
  4021bd:	e8 7e eb ff ff       	call   400d40 <puts@plt>
  4021c2:	be 00 00 00 00       	mov    $0x0,%esi
  4021c7:	bf 00 00 00 00       	mov    $0x0,%edi
  4021cc:	e8 4e fb ff ff       	call   401d1f <notify_server>
  4021d1:	bf 01 00 00 00       	mov    $0x1,%edi
  4021d6:	e8 d5 ec ff ff       	call   400eb0 <exit@plt>

00000000004021db <launch>:
  4021db:	55                   	push   %rbp
  4021dc:	48 89 e5             	mov    %rsp,%rbp
  4021df:	53                   	push   %rbx
  4021e0:	48 83 ec 18          	sub    $0x18,%rsp
  4021e4:	48 89 fa             	mov    %rdi,%rdx
  4021e7:	89 f3                	mov    %esi,%ebx
  4021e9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4021f0:	00 00 
  4021f2:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  4021f6:	31 c0                	xor    %eax,%eax
  4021f8:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  4021fc:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  402200:	48 29 c4             	sub    %rax,%rsp
  402203:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  402208:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  40220c:	be f4 00 00 00       	mov    $0xf4,%esi
  402211:	e8 5a eb ff ff       	call   400d70 <memset@plt>
  402216:	48 8b 05 a3 32 20 00 	mov    0x2032a3(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  40221d:	48 39 05 ec 32 20 00 	cmp    %rax,0x2032ec(%rip)        # 605510 <infile>
  402224:	74 42                	je     402268 <launch+0x8d>
  402226:	c7 05 ec 32 20 00 00 	movl   $0x0,0x2032ec(%rip)        # 60551c <vlevel>
  40222d:	00 00 00 
  402230:	85 db                	test   %ebx,%ebx
  402232:	75 4c                	jne    402280 <launch+0xa5>
  402234:	b8 00 00 00 00       	mov    $0x0,%eax
  402239:	e8 91 f9 ff ff       	call   401bcf <test>
  40223e:	83 3d e3 32 20 00 00 	cmpl   $0x0,0x2032e3(%rip)        # 605528 <is_checker>
  402245:	75 45                	jne    40228c <launch+0xb1>
  402247:	48 8d 3d 8b 14 00 00 	lea    0x148b(%rip),%rdi        # 4036d9 <_IO_stdin_used+0x549>
  40224e:	e8 ed ea ff ff       	call   400d40 <puts@plt>
  402253:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402257:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  40225e:	00 00 
  402260:	75 40                	jne    4022a2 <launch+0xc7>
  402262:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  402266:	c9                   	leave  
  402267:	c3                   	ret    
  402268:	48 8d 35 52 14 00 00 	lea    0x1452(%rip),%rsi        # 4036c1 <_IO_stdin_used+0x531>
  40226f:	bf 01 00 00 00       	mov    $0x1,%edi
  402274:	b8 00 00 00 00       	mov    $0x0,%eax
  402279:	e8 e2 eb ff ff       	call   400e60 <__printf_chk@plt>
  40227e:	eb a6                	jmp    402226 <launch+0x4b>
  402280:	b8 00 00 00 00       	mov    $0x0,%eax
  402285:	e8 70 f9 ff ff       	call   401bfa <test2>
  40228a:	eb b2                	jmp    40223e <launch+0x63>
  40228c:	48 8d 3d 3b 14 00 00 	lea    0x143b(%rip),%rdi        # 4036ce <_IO_stdin_used+0x53e>
  402293:	e8 a8 ea ff ff       	call   400d40 <puts@plt>
  402298:	b8 00 00 00 00       	mov    $0x0,%eax
  40229d:	e8 f3 f9 ff ff       	call   401c95 <check_fail>
  4022a2:	e8 e0 fe ff ff       	call   402187 <__stack_chk_fail>

00000000004022a7 <stable_launch>:
  4022a7:	55                   	push   %rbp
  4022a8:	53                   	push   %rbx
  4022a9:	48 83 ec 08          	sub    $0x8,%rsp
  4022ad:	89 f5                	mov    %esi,%ebp
  4022af:	48 89 3d 52 32 20 00 	mov    %rdi,0x203252(%rip)        # 605508 <global_offset>
  4022b6:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  4022bc:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4022c2:	b9 32 01 00 00       	mov    $0x132,%ecx
  4022c7:	ba 07 00 00 00       	mov    $0x7,%edx
  4022cc:	be 00 00 10 00       	mov    $0x100000,%esi
  4022d1:	bf 00 60 58 55       	mov    $0x55586000,%edi
  4022d6:	e8 85 ea ff ff       	call   400d60 <mmap@plt>
  4022db:	48 89 c3             	mov    %rax,%rbx
  4022de:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  4022e4:	75 4a                	jne    402330 <stable_launch+0x89>
  4022e6:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  4022ed:	48 89 15 5c 3e 20 00 	mov    %rdx,0x203e5c(%rip)        # 606150 <stack_top>
  4022f4:	48 89 e0             	mov    %rsp,%rax
  4022f7:	48 89 d4             	mov    %rdx,%rsp
  4022fa:	48 89 c2             	mov    %rax,%rdx
  4022fd:	48 89 15 fc 31 20 00 	mov    %rdx,0x2031fc(%rip)        # 605500 <global_save_stack>
  402304:	89 ee                	mov    %ebp,%esi
  402306:	48 8b 3d fb 31 20 00 	mov    0x2031fb(%rip),%rdi        # 605508 <global_offset>
  40230d:	e8 c9 fe ff ff       	call   4021db <launch>
  402312:	48 8b 05 e7 31 20 00 	mov    0x2031e7(%rip),%rax        # 605500 <global_save_stack>
  402319:	48 89 c4             	mov    %rax,%rsp
  40231c:	be 00 00 10 00       	mov    $0x100000,%esi
  402321:	48 89 df             	mov    %rbx,%rdi
  402324:	e8 27 eb ff ff       	call   400e50 <munmap@plt>
  402329:	48 83 c4 08          	add    $0x8,%rsp
  40232d:	5b                   	pop    %rbx
  40232e:	5d                   	pop    %rbp
  40232f:	c3                   	ret    
  402330:	be 00 00 10 00       	mov    $0x100000,%esi
  402335:	48 89 c7             	mov    %rax,%rdi
  402338:	e8 13 eb ff ff       	call   400e50 <munmap@plt>
  40233d:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  402342:	48 8d 15 8f 15 00 00 	lea    0x158f(%rip),%rdx        # 4038d8 <_IO_stdin_used+0x748>
  402349:	be 01 00 00 00       	mov    $0x1,%esi
  40234e:	48 8b 3d 8b 31 20 00 	mov    0x20318b(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  402355:	b8 00 00 00 00       	mov    $0x0,%eax
  40235a:	e8 71 eb ff ff       	call   400ed0 <__fprintf_chk@plt>
  40235f:	bf 01 00 00 00       	mov    $0x1,%edi
  402364:	e8 47 eb ff ff       	call   400eb0 <exit@plt>

0000000000402369 <rio_readinitb>:
  402369:	89 37                	mov    %esi,(%rdi)
  40236b:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  402372:	48 8d 47 10          	lea    0x10(%rdi),%rax
  402376:	48 89 47 08          	mov    %rax,0x8(%rdi)
  40237a:	c3                   	ret    

000000000040237b <sigalrm_handler>:
  40237b:	48 83 ec 08          	sub    $0x8,%rsp
  40237f:	b9 00 00 00 00       	mov    $0x0,%ecx
  402384:	48 8d 15 85 15 00 00 	lea    0x1585(%rip),%rdx        # 403910 <trans_char+0x10>
  40238b:	be 01 00 00 00       	mov    $0x1,%esi
  402390:	48 8b 3d 49 31 20 00 	mov    0x203149(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  402397:	b8 00 00 00 00       	mov    $0x0,%eax
  40239c:	e8 2f eb ff ff       	call   400ed0 <__fprintf_chk@plt>
  4023a1:	bf 01 00 00 00       	mov    $0x1,%edi
  4023a6:	e8 05 eb ff ff       	call   400eb0 <exit@plt>

00000000004023ab <rio_writen>:
  4023ab:	41 55                	push   %r13
  4023ad:	41 54                	push   %r12
  4023af:	55                   	push   %rbp
  4023b0:	53                   	push   %rbx
  4023b1:	48 83 ec 08          	sub    $0x8,%rsp
  4023b5:	41 89 fc             	mov    %edi,%r12d
  4023b8:	48 89 f5             	mov    %rsi,%rbp
  4023bb:	49 89 d5             	mov    %rdx,%r13
  4023be:	48 89 d3             	mov    %rdx,%rbx
  4023c1:	eb 06                	jmp    4023c9 <rio_writen+0x1e>
  4023c3:	48 29 c3             	sub    %rax,%rbx
  4023c6:	48 01 c5             	add    %rax,%rbp
  4023c9:	48 85 db             	test   %rbx,%rbx
  4023cc:	74 24                	je     4023f2 <rio_writen+0x47>
  4023ce:	48 89 da             	mov    %rbx,%rdx
  4023d1:	48 89 ee             	mov    %rbp,%rsi
  4023d4:	44 89 e7             	mov    %r12d,%edi
  4023d7:	e8 74 e9 ff ff       	call   400d50 <write@plt>
  4023dc:	48 85 c0             	test   %rax,%rax
  4023df:	7f e2                	jg     4023c3 <rio_writen+0x18>
  4023e1:	e8 0a e9 ff ff       	call   400cf0 <__errno_location@plt>
  4023e6:	83 38 04             	cmpl   $0x4,(%rax)
  4023e9:	75 15                	jne    402400 <rio_writen+0x55>
  4023eb:	b8 00 00 00 00       	mov    $0x0,%eax
  4023f0:	eb d1                	jmp    4023c3 <rio_writen+0x18>
  4023f2:	4c 89 e8             	mov    %r13,%rax
  4023f5:	48 83 c4 08          	add    $0x8,%rsp
  4023f9:	5b                   	pop    %rbx
  4023fa:	5d                   	pop    %rbp
  4023fb:	41 5c                	pop    %r12
  4023fd:	41 5d                	pop    %r13
  4023ff:	c3                   	ret    
  402400:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402407:	eb ec                	jmp    4023f5 <rio_writen+0x4a>

0000000000402409 <rio_read>:
  402409:	41 55                	push   %r13
  40240b:	41 54                	push   %r12
  40240d:	55                   	push   %rbp
  40240e:	53                   	push   %rbx
  40240f:	48 83 ec 08          	sub    $0x8,%rsp
  402413:	48 89 fb             	mov    %rdi,%rbx
  402416:	49 89 f5             	mov    %rsi,%r13
  402419:	49 89 d4             	mov    %rdx,%r12
  40241c:	eb 0a                	jmp    402428 <rio_read+0x1f>
  40241e:	e8 cd e8 ff ff       	call   400cf0 <__errno_location@plt>
  402423:	83 38 04             	cmpl   $0x4,(%rax)
  402426:	75 5c                	jne    402484 <rio_read+0x7b>
  402428:	8b 6b 04             	mov    0x4(%rbx),%ebp
  40242b:	85 ed                	test   %ebp,%ebp
  40242d:	7f 24                	jg     402453 <rio_read+0x4a>
  40242f:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  402433:	8b 3b                	mov    (%rbx),%edi
  402435:	ba 00 20 00 00       	mov    $0x2000,%edx
  40243a:	48 89 ee             	mov    %rbp,%rsi
  40243d:	e8 5e e9 ff ff       	call   400da0 <read@plt>
  402442:	89 43 04             	mov    %eax,0x4(%rbx)
  402445:	85 c0                	test   %eax,%eax
  402447:	78 d5                	js     40241e <rio_read+0x15>
  402449:	85 c0                	test   %eax,%eax
  40244b:	74 40                	je     40248d <rio_read+0x84>
  40244d:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402451:	eb d5                	jmp    402428 <rio_read+0x1f>
  402453:	89 e8                	mov    %ebp,%eax
  402455:	4c 39 e0             	cmp    %r12,%rax
  402458:	72 03                	jb     40245d <rio_read+0x54>
  40245a:	44 89 e5             	mov    %r12d,%ebp
  40245d:	4c 63 e5             	movslq %ebp,%r12
  402460:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402464:	4c 89 e2             	mov    %r12,%rdx
  402467:	4c 89 ef             	mov    %r13,%rdi
  40246a:	e8 91 e9 ff ff       	call   400e00 <memcpy@plt>
  40246f:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402473:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402476:	4c 89 e0             	mov    %r12,%rax
  402479:	48 83 c4 08          	add    $0x8,%rsp
  40247d:	5b                   	pop    %rbx
  40247e:	5d                   	pop    %rbp
  40247f:	41 5c                	pop    %r12
  402481:	41 5d                	pop    %r13
  402483:	c3                   	ret    
  402484:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40248b:	eb ec                	jmp    402479 <rio_read+0x70>
  40248d:	b8 00 00 00 00       	mov    $0x0,%eax
  402492:	eb e5                	jmp    402479 <rio_read+0x70>

0000000000402494 <rio_readlineb>:
  402494:	41 55                	push   %r13
  402496:	41 54                	push   %r12
  402498:	55                   	push   %rbp
  402499:	53                   	push   %rbx
  40249a:	48 83 ec 18          	sub    $0x18,%rsp
  40249e:	49 89 fd             	mov    %rdi,%r13
  4024a1:	48 89 f5             	mov    %rsi,%rbp
  4024a4:	49 89 d4             	mov    %rdx,%r12
  4024a7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4024ae:	00 00 
  4024b0:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4024b5:	31 c0                	xor    %eax,%eax
  4024b7:	bb 01 00 00 00       	mov    $0x1,%ebx
  4024bc:	4c 39 e3             	cmp    %r12,%rbx
  4024bf:	73 47                	jae    402508 <rio_readlineb+0x74>
  4024c1:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  4024c6:	ba 01 00 00 00       	mov    $0x1,%edx
  4024cb:	4c 89 ef             	mov    %r13,%rdi
  4024ce:	e8 36 ff ff ff       	call   402409 <rio_read>
  4024d3:	83 f8 01             	cmp    $0x1,%eax
  4024d6:	75 1c                	jne    4024f4 <rio_readlineb+0x60>
  4024d8:	48 8d 45 01          	lea    0x1(%rbp),%rax
  4024dc:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  4024e1:	88 55 00             	mov    %dl,0x0(%rbp)
  4024e4:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  4024e9:	74 1a                	je     402505 <rio_readlineb+0x71>
  4024eb:	48 83 c3 01          	add    $0x1,%rbx
  4024ef:	48 89 c5             	mov    %rax,%rbp
  4024f2:	eb c8                	jmp    4024bc <rio_readlineb+0x28>
  4024f4:	85 c0                	test   %eax,%eax
  4024f6:	75 32                	jne    40252a <rio_readlineb+0x96>
  4024f8:	48 83 fb 01          	cmp    $0x1,%rbx
  4024fc:	75 0a                	jne    402508 <rio_readlineb+0x74>
  4024fe:	b8 00 00 00 00       	mov    $0x0,%eax
  402503:	eb 0a                	jmp    40250f <rio_readlineb+0x7b>
  402505:	48 89 c5             	mov    %rax,%rbp
  402508:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  40250c:	48 89 d8             	mov    %rbx,%rax
  40250f:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  402514:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  40251b:	00 00 
  40251d:	75 14                	jne    402533 <rio_readlineb+0x9f>
  40251f:	48 83 c4 18          	add    $0x18,%rsp
  402523:	5b                   	pop    %rbx
  402524:	5d                   	pop    %rbp
  402525:	41 5c                	pop    %r12
  402527:	41 5d                	pop    %r13
  402529:	c3                   	ret    
  40252a:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402531:	eb dc                	jmp    40250f <rio_readlineb+0x7b>
  402533:	e8 4f fc ff ff       	call   402187 <__stack_chk_fail>

0000000000402538 <urlencode>:
  402538:	41 54                	push   %r12
  40253a:	55                   	push   %rbp
  40253b:	53                   	push   %rbx
  40253c:	48 83 ec 10          	sub    $0x10,%rsp
  402540:	48 89 fb             	mov    %rdi,%rbx
  402543:	48 89 f5             	mov    %rsi,%rbp
  402546:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40254d:	00 00 
  40254f:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402554:	31 c0                	xor    %eax,%eax
  402556:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40255d:	f2 ae                	repnz scas %es:(%rdi),%al
  40255f:	48 89 ce             	mov    %rcx,%rsi
  402562:	48 f7 d6             	not    %rsi
  402565:	8d 46 ff             	lea    -0x1(%rsi),%eax
  402568:	eb 0f                	jmp    402579 <urlencode+0x41>
  40256a:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  40256e:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402572:	48 83 c3 01          	add    $0x1,%rbx
  402576:	44 89 e0             	mov    %r12d,%eax
  402579:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  40257d:	85 c0                	test   %eax,%eax
  40257f:	0f 84 a8 00 00 00    	je     40262d <urlencode+0xf5>
  402585:	44 0f b6 03          	movzbl (%rbx),%r8d
  402589:	41 80 f8 2a          	cmp    $0x2a,%r8b
  40258d:	0f 94 c2             	sete   %dl
  402590:	41 80 f8 2d          	cmp    $0x2d,%r8b
  402594:	0f 94 c0             	sete   %al
  402597:	08 c2                	or     %al,%dl
  402599:	75 cf                	jne    40256a <urlencode+0x32>
  40259b:	41 80 f8 2e          	cmp    $0x2e,%r8b
  40259f:	74 c9                	je     40256a <urlencode+0x32>
  4025a1:	41 80 f8 5f          	cmp    $0x5f,%r8b
  4025a5:	74 c3                	je     40256a <urlencode+0x32>
  4025a7:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  4025ab:	3c 09                	cmp    $0x9,%al
  4025ad:	76 bb                	jbe    40256a <urlencode+0x32>
  4025af:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  4025b3:	3c 19                	cmp    $0x19,%al
  4025b5:	76 b3                	jbe    40256a <urlencode+0x32>
  4025b7:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  4025bb:	3c 19                	cmp    $0x19,%al
  4025bd:	76 ab                	jbe    40256a <urlencode+0x32>
  4025bf:	41 80 f8 20          	cmp    $0x20,%r8b
  4025c3:	74 56                	je     40261b <urlencode+0xe3>
  4025c5:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  4025c9:	3c 5f                	cmp    $0x5f,%al
  4025cb:	0f 96 c2             	setbe  %dl
  4025ce:	41 80 f8 09          	cmp    $0x9,%r8b
  4025d2:	0f 94 c0             	sete   %al
  4025d5:	08 c2                	or     %al,%dl
  4025d7:	74 4f                	je     402628 <urlencode+0xf0>
  4025d9:	48 89 e7             	mov    %rsp,%rdi
  4025dc:	45 0f b6 c0          	movzbl %r8b,%r8d
  4025e0:	48 8d 0d e1 13 00 00 	lea    0x13e1(%rip),%rcx        # 4039c8 <trans_char+0xc8>
  4025e7:	ba 08 00 00 00       	mov    $0x8,%edx
  4025ec:	be 01 00 00 00       	mov    $0x1,%esi
  4025f1:	b8 00 00 00 00       	mov    $0x0,%eax
  4025f6:	e8 e5 e8 ff ff       	call   400ee0 <__sprintf_chk@plt>
  4025fb:	0f b6 04 24          	movzbl (%rsp),%eax
  4025ff:	88 45 00             	mov    %al,0x0(%rbp)
  402602:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  402607:	88 45 01             	mov    %al,0x1(%rbp)
  40260a:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  40260f:	88 45 02             	mov    %al,0x2(%rbp)
  402612:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402616:	e9 57 ff ff ff       	jmp    402572 <urlencode+0x3a>
  40261b:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  40261f:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402623:	e9 4a ff ff ff       	jmp    402572 <urlencode+0x3a>
  402628:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40262d:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  402632:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  402639:	00 00 
  40263b:	75 09                	jne    402646 <urlencode+0x10e>
  40263d:	48 83 c4 10          	add    $0x10,%rsp
  402641:	5b                   	pop    %rbx
  402642:	5d                   	pop    %rbp
  402643:	41 5c                	pop    %r12
  402645:	c3                   	ret    
  402646:	e8 3c fb ff ff       	call   402187 <__stack_chk_fail>

000000000040264b <submitr>:
  40264b:	41 57                	push   %r15
  40264d:	41 56                	push   %r14
  40264f:	41 55                	push   %r13
  402651:	41 54                	push   %r12
  402653:	55                   	push   %rbp
  402654:	53                   	push   %rbx
  402655:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
  40265c:	49 89 fd             	mov    %rdi,%r13
  40265f:	89 74 24 1c          	mov    %esi,0x1c(%rsp)
  402663:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
  402668:	49 89 ce             	mov    %rcx,%r14
  40266b:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
  402670:	4d 89 cf             	mov    %r9,%r15
  402673:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
  40267a:	00 
  40267b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402682:	00 00 
  402684:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  40268b:	00 
  40268c:	31 c0                	xor    %eax,%eax
  40268e:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  402695:	00 
  402696:	ba 00 00 00 00       	mov    $0x0,%edx
  40269b:	be 01 00 00 00       	mov    $0x1,%esi
  4026a0:	bf 02 00 00 00       	mov    $0x2,%edi
  4026a5:	e8 46 e8 ff ff       	call   400ef0 <socket@plt>
  4026aa:	85 c0                	test   %eax,%eax
  4026ac:	0f 88 ae 02 00 00    	js     402960 <submitr+0x315>
  4026b2:	89 c3                	mov    %eax,%ebx
  4026b4:	4c 89 ef             	mov    %r13,%rdi
  4026b7:	e8 14 e7 ff ff       	call   400dd0 <gethostbyname@plt>
  4026bc:	48 85 c0             	test   %rax,%rax
  4026bf:	0f 84 e7 02 00 00    	je     4029ac <submitr+0x361>
  4026c5:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
  4026ca:	48 c7 44 24 32 00 00 	movq   $0x0,0x32(%rsp)
  4026d1:	00 00 
  4026d3:	c7 44 24 3a 00 00 00 	movl   $0x0,0x3a(%rsp)
  4026da:	00 
  4026db:	66 c7 44 24 3e 00 00 	movw   $0x0,0x3e(%rsp)
  4026e2:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  4026e9:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4026ed:	48 8b 40 18          	mov    0x18(%rax),%rax
  4026f1:	48 8b 30             	mov    (%rax),%rsi
  4026f4:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  4026f9:	b9 0c 00 00 00       	mov    $0xc,%ecx
  4026fe:	e8 dd e6 ff ff       	call   400de0 <__memmove_chk@plt>
  402703:	0f b7 44 24 1c       	movzwl 0x1c(%rsp),%eax
  402708:	66 c1 c8 08          	ror    $0x8,%ax
  40270c:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
  402711:	ba 10 00 00 00       	mov    $0x10,%edx
  402716:	4c 89 e6             	mov    %r12,%rsi
  402719:	89 df                	mov    %ebx,%edi
  40271b:	e8 a0 e7 ff ff       	call   400ec0 <connect@plt>
  402720:	85 c0                	test   %eax,%eax
  402722:	0f 88 fa 02 00 00    	js     402a22 <submitr+0x3d7>
  402728:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  40272f:	b8 00 00 00 00       	mov    $0x0,%eax
  402734:	48 89 f1             	mov    %rsi,%rcx
  402737:	4c 89 ff             	mov    %r15,%rdi
  40273a:	f2 ae                	repnz scas %es:(%rdi),%al
  40273c:	48 89 ca             	mov    %rcx,%rdx
  40273f:	48 f7 d2             	not    %rdx
  402742:	48 89 f1             	mov    %rsi,%rcx
  402745:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  40274a:	f2 ae                	repnz scas %es:(%rdi),%al
  40274c:	48 f7 d1             	not    %rcx
  40274f:	49 89 c8             	mov    %rcx,%r8
  402752:	48 89 f1             	mov    %rsi,%rcx
  402755:	4c 89 f7             	mov    %r14,%rdi
  402758:	f2 ae                	repnz scas %es:(%rdi),%al
  40275a:	48 f7 d1             	not    %rcx
  40275d:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  402762:	48 89 f1             	mov    %rsi,%rcx
  402765:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  40276a:	f2 ae                	repnz scas %es:(%rdi),%al
  40276c:	48 89 c8             	mov    %rcx,%rax
  40276f:	48 f7 d0             	not    %rax
  402772:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  402777:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  40277c:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  402783:	00 
  402784:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  40278a:	0f 87 fa 02 00 00    	ja     402a8a <submitr+0x43f>
  402790:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  402797:	00 
  402798:	b9 00 04 00 00       	mov    $0x400,%ecx
  40279d:	b8 00 00 00 00       	mov    $0x0,%eax
  4027a2:	48 89 f7             	mov    %rsi,%rdi
  4027a5:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4027a8:	4c 89 ff             	mov    %r15,%rdi
  4027ab:	e8 88 fd ff ff       	call   402538 <urlencode>
  4027b0:	85 c0                	test   %eax,%eax
  4027b2:	0f 88 45 03 00 00    	js     402afd <submitr+0x4b2>
  4027b8:	4c 8d a4 24 50 20 00 	lea    0x2050(%rsp),%r12
  4027bf:	00 
  4027c0:	48 83 ec 08          	sub    $0x8,%rsp
  4027c4:	41 55                	push   %r13
  4027c6:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
  4027cd:	00 
  4027ce:	50                   	push   %rax
  4027cf:	41 56                	push   %r14
  4027d1:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
  4027d6:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
  4027db:	48 8d 0d 56 11 00 00 	lea    0x1156(%rip),%rcx        # 403938 <trans_char+0x38>
  4027e2:	ba 00 20 00 00       	mov    $0x2000,%edx
  4027e7:	be 01 00 00 00       	mov    $0x1,%esi
  4027ec:	4c 89 e7             	mov    %r12,%rdi
  4027ef:	b8 00 00 00 00       	mov    $0x0,%eax
  4027f4:	e8 e7 e6 ff ff       	call   400ee0 <__sprintf_chk@plt>
  4027f9:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402800:	b8 00 00 00 00       	mov    $0x0,%eax
  402805:	4c 89 e7             	mov    %r12,%rdi
  402808:	f2 ae                	repnz scas %es:(%rdi),%al
  40280a:	48 89 ca             	mov    %rcx,%rdx
  40280d:	48 f7 d2             	not    %rdx
  402810:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
  402814:	48 83 c4 20          	add    $0x20,%rsp
  402818:	4c 89 e6             	mov    %r12,%rsi
  40281b:	89 df                	mov    %ebx,%edi
  40281d:	e8 89 fb ff ff       	call   4023ab <rio_writen>
  402822:	48 85 c0             	test   %rax,%rax
  402825:	0f 88 5d 03 00 00    	js     402b88 <submitr+0x53d>
  40282b:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
  402830:	89 de                	mov    %ebx,%esi
  402832:	4c 89 e7             	mov    %r12,%rdi
  402835:	e8 2f fb ff ff       	call   402369 <rio_readinitb>
  40283a:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402841:	00 
  402842:	ba 00 20 00 00       	mov    $0x2000,%edx
  402847:	4c 89 e7             	mov    %r12,%rdi
  40284a:	e8 45 fc ff ff       	call   402494 <rio_readlineb>
  40284f:	48 85 c0             	test   %rax,%rax
  402852:	0f 8e 9c 03 00 00    	jle    402bf4 <submitr+0x5a9>
  402858:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  40285d:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  402864:	00 
  402865:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  40286c:	00 
  40286d:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  402874:	00 
  402875:	48 8d 35 53 11 00 00 	lea    0x1153(%rip),%rsi        # 4039cf <trans_char+0xcf>
  40287c:	b8 00 00 00 00       	mov    $0x0,%eax
  402881:	e8 ba e5 ff ff       	call   400e40 <__isoc99_sscanf@plt>
  402886:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  40288d:	00 
  40288e:	b9 03 00 00 00       	mov    $0x3,%ecx
  402893:	48 8d 3d 4c 11 00 00 	lea    0x114c(%rip),%rdi        # 4039e6 <trans_char+0xe6>
  40289a:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  40289c:	0f 97 c0             	seta   %al
  40289f:	1c 00                	sbb    $0x0,%al
  4028a1:	84 c0                	test   %al,%al
  4028a3:	0f 84 cb 03 00 00    	je     402c74 <submitr+0x629>
  4028a9:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4028b0:	00 
  4028b1:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  4028b6:	ba 00 20 00 00       	mov    $0x2000,%edx
  4028bb:	e8 d4 fb ff ff       	call   402494 <rio_readlineb>
  4028c0:	48 85 c0             	test   %rax,%rax
  4028c3:	7f c1                	jg     402886 <submitr+0x23b>
  4028c5:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4028cc:	3a 20 43 
  4028cf:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4028d6:	20 75 6e 
  4028d9:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4028dd:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4028e1:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4028e8:	74 6f 20 
  4028eb:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  4028f2:	68 65 61 
  4028f5:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4028f9:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4028fd:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402904:	66 72 6f 
  402907:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
  40290e:	6f 6c 61 
  402911:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402915:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402919:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
  402920:	76 65 72 
  402923:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402927:	c6 45 38 00          	movb   $0x0,0x38(%rbp)
  40292b:	89 df                	mov    %ebx,%edi
  40292d:	e8 5e e4 ff ff       	call   400d90 <close@plt>
  402932:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402937:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
  40293e:	00 
  40293f:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  402946:	00 00 
  402948:	0f 85 96 04 00 00    	jne    402de4 <submitr+0x799>
  40294e:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  402955:	5b                   	pop    %rbx
  402956:	5d                   	pop    %rbp
  402957:	41 5c                	pop    %r12
  402959:	41 5d                	pop    %r13
  40295b:	41 5e                	pop    %r14
  40295d:	41 5f                	pop    %r15
  40295f:	c3                   	ret    
  402960:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402967:	3a 20 43 
  40296a:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402971:	20 75 6e 
  402974:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402978:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40297c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402983:	74 6f 20 
  402986:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  40298d:	65 20 73 
  402990:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402994:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402998:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  40299f:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  4029a5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029aa:	eb 8b                	jmp    402937 <submitr+0x2ec>
  4029ac:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4029b3:	3a 20 44 
  4029b6:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  4029bd:	20 75 6e 
  4029c0:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4029c4:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4029c8:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4029cf:	74 6f 20 
  4029d2:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  4029d9:	76 65 20 
  4029dc:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4029e0:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4029e4:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  4029eb:	61 62 20 
  4029ee:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
  4029f5:	72 20 61 
  4029f8:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4029fc:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402a00:	c7 45 30 64 64 72 65 	movl   $0x65726464,0x30(%rbp)
  402a07:	66 c7 45 34 73 73    	movw   $0x7373,0x34(%rbp)
  402a0d:	c6 45 36 00          	movb   $0x0,0x36(%rbp)
  402a11:	89 df                	mov    %ebx,%edi
  402a13:	e8 78 e3 ff ff       	call   400d90 <close@plt>
  402a18:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a1d:	e9 15 ff ff ff       	jmp    402937 <submitr+0x2ec>
  402a22:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402a29:	3a 20 55 
  402a2c:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402a33:	20 74 6f 
  402a36:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a3a:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402a3e:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402a45:	65 63 74 
  402a48:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  402a4f:	68 65 20 
  402a52:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a56:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402a5a:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  402a61:	61 62 20 
  402a64:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402a68:	c7 45 28 73 65 72 76 	movl   $0x76726573,0x28(%rbp)
  402a6f:	66 c7 45 2c 65 72    	movw   $0x7265,0x2c(%rbp)
  402a75:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402a79:	89 df                	mov    %ebx,%edi
  402a7b:	e8 10 e3 ff ff       	call   400d90 <close@plt>
  402a80:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a85:	e9 ad fe ff ff       	jmp    402937 <submitr+0x2ec>
  402a8a:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402a91:	3a 20 52 
  402a94:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402a9b:	20 73 74 
  402a9e:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402aa2:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402aa6:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402aad:	74 6f 6f 
  402ab0:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  402ab7:	65 2e 20 
  402aba:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402abe:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402ac2:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402ac9:	61 73 65 
  402acc:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  402ad3:	49 54 52 
  402ad6:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402ada:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402ade:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402ae5:	55 46 00 
  402ae8:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402aec:	89 df                	mov    %ebx,%edi
  402aee:	e8 9d e2 ff ff       	call   400d90 <close@plt>
  402af3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402af8:	e9 3a fe ff ff       	jmp    402937 <submitr+0x2ec>
  402afd:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402b04:	3a 20 52 
  402b07:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402b0e:	20 73 74 
  402b11:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402b15:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402b19:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402b20:	63 6f 6e 
  402b23:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  402b2a:	20 61 6e 
  402b2d:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402b31:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402b35:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402b3c:	67 61 6c 
  402b3f:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  402b46:	6e 70 72 
  402b49:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402b4d:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402b51:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402b58:	6c 65 20 
  402b5b:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  402b62:	63 74 65 
  402b65:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402b69:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  402b6d:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  402b73:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  402b77:	89 df                	mov    %ebx,%edi
  402b79:	e8 12 e2 ff ff       	call   400d90 <close@plt>
  402b7e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b83:	e9 af fd ff ff       	jmp    402937 <submitr+0x2ec>
  402b88:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402b8f:	3a 20 43 
  402b92:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402b99:	20 75 6e 
  402b9c:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402ba0:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402ba4:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402bab:	74 6f 20 
  402bae:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  402bb5:	20 74 6f 
  402bb8:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402bbc:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402bc0:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  402bc7:	41 75 74 
  402bca:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
  402bd1:	73 65 72 
  402bd4:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402bd8:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402bdc:	c7 45 30 76 65 72 00 	movl   $0x726576,0x30(%rbp)
  402be3:	89 df                	mov    %ebx,%edi
  402be5:	e8 a6 e1 ff ff       	call   400d90 <close@plt>
  402bea:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402bef:	e9 43 fd ff ff       	jmp    402937 <submitr+0x2ec>
  402bf4:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402bfb:	3a 20 43 
  402bfe:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402c05:	20 75 6e 
  402c08:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402c0c:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402c10:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402c17:	74 6f 20 
  402c1a:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  402c21:	66 69 72 
  402c24:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402c28:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402c2c:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402c33:	61 64 65 
  402c36:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
  402c3d:	6d 20 41 
  402c40:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402c44:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402c48:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
  402c4f:	62 20 73 
  402c52:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402c56:	c7 45 38 65 72 76 65 	movl   $0x65767265,0x38(%rbp)
  402c5d:	66 c7 45 3c 72 00    	movw   $0x72,0x3c(%rbp)
  402c63:	89 df                	mov    %ebx,%edi
  402c65:	e8 26 e1 ff ff       	call   400d90 <close@plt>
  402c6a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c6f:	e9 c3 fc ff ff       	jmp    402937 <submitr+0x2ec>
  402c74:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402c7b:	00 
  402c7c:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402c81:	ba 00 20 00 00       	mov    $0x2000,%edx
  402c86:	e8 09 f8 ff ff       	call   402494 <rio_readlineb>
  402c8b:	48 85 c0             	test   %rax,%rax
  402c8e:	0f 8e 96 00 00 00    	jle    402d2a <submitr+0x6df>
  402c94:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  402c99:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402ca0:	0f 85 05 01 00 00    	jne    402dab <submitr+0x760>
  402ca6:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402cad:	00 
  402cae:	48 89 ef             	mov    %rbp,%rdi
  402cb1:	e8 7a e0 ff ff       	call   400d30 <strcpy@plt>
  402cb6:	89 df                	mov    %ebx,%edi
  402cb8:	e8 d3 e0 ff ff       	call   400d90 <close@plt>
  402cbd:	b9 04 00 00 00       	mov    $0x4,%ecx
  402cc2:	48 8d 3d 17 0d 00 00 	lea    0xd17(%rip),%rdi        # 4039e0 <trans_char+0xe0>
  402cc9:	48 89 ee             	mov    %rbp,%rsi
  402ccc:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402cce:	0f 97 c0             	seta   %al
  402cd1:	1c 00                	sbb    $0x0,%al
  402cd3:	0f be c0             	movsbl %al,%eax
  402cd6:	85 c0                	test   %eax,%eax
  402cd8:	0f 84 59 fc ff ff    	je     402937 <submitr+0x2ec>
  402cde:	b9 05 00 00 00       	mov    $0x5,%ecx
  402ce3:	48 8d 3d fa 0c 00 00 	lea    0xcfa(%rip),%rdi        # 4039e4 <trans_char+0xe4>
  402cea:	48 89 ee             	mov    %rbp,%rsi
  402ced:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402cef:	0f 97 c0             	seta   %al
  402cf2:	1c 00                	sbb    $0x0,%al
  402cf4:	0f be c0             	movsbl %al,%eax
  402cf7:	85 c0                	test   %eax,%eax
  402cf9:	0f 84 38 fc ff ff    	je     402937 <submitr+0x2ec>
  402cff:	b9 03 00 00 00       	mov    $0x3,%ecx
  402d04:	48 8d 3d de 0c 00 00 	lea    0xcde(%rip),%rdi        # 4039e9 <trans_char+0xe9>
  402d0b:	48 89 ee             	mov    %rbp,%rsi
  402d0e:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402d10:	0f 97 c0             	seta   %al
  402d13:	1c 00                	sbb    $0x0,%al
  402d15:	0f be c0             	movsbl %al,%eax
  402d18:	85 c0                	test   %eax,%eax
  402d1a:	0f 84 17 fc ff ff    	je     402937 <submitr+0x2ec>
  402d20:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d25:	e9 0d fc ff ff       	jmp    402937 <submitr+0x2ec>
  402d2a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402d31:	3a 20 43 
  402d34:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402d3b:	20 75 6e 
  402d3e:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402d42:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402d46:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402d4d:	74 6f 20 
  402d50:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  402d57:	73 74 61 
  402d5a:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402d5e:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402d62:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402d69:	65 73 73 
  402d6c:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  402d73:	72 6f 6d 
  402d76:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402d7a:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402d7e:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402d85:	6c 61 62 
  402d88:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  402d8f:	65 72 00 
  402d92:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402d96:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  402d9a:	89 df                	mov    %ebx,%edi
  402d9c:	e8 ef df ff ff       	call   400d90 <close@plt>
  402da1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402da6:	e9 8c fb ff ff       	jmp    402937 <submitr+0x2ec>
  402dab:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  402db2:	00 
  402db3:	48 8d 0d de 0b 00 00 	lea    0xbde(%rip),%rcx        # 403998 <trans_char+0x98>
  402dba:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402dc1:	be 01 00 00 00       	mov    $0x1,%esi
  402dc6:	48 89 ef             	mov    %rbp,%rdi
  402dc9:	b8 00 00 00 00       	mov    $0x0,%eax
  402dce:	e8 0d e1 ff ff       	call   400ee0 <__sprintf_chk@plt>
  402dd3:	89 df                	mov    %ebx,%edi
  402dd5:	e8 b6 df ff ff       	call   400d90 <close@plt>
  402dda:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ddf:	e9 53 fb ff ff       	jmp    402937 <submitr+0x2ec>
  402de4:	e8 9e f3 ff ff       	call   402187 <__stack_chk_fail>

0000000000402de9 <init_timeout>:
  402de9:	85 ff                	test   %edi,%edi
  402deb:	74 28                	je     402e15 <init_timeout+0x2c>
  402ded:	53                   	push   %rbx
  402dee:	89 fb                	mov    %edi,%ebx
  402df0:	85 ff                	test   %edi,%edi
  402df2:	78 1a                	js     402e0e <init_timeout+0x25>
  402df4:	48 8d 35 80 f5 ff ff 	lea    -0xa80(%rip),%rsi        # 40237b <sigalrm_handler>
  402dfb:	bf 0e 00 00 00       	mov    $0xe,%edi
  402e00:	e8 bb df ff ff       	call   400dc0 <signal@plt>
  402e05:	89 df                	mov    %ebx,%edi
  402e07:	e8 74 df ff ff       	call   400d80 <alarm@plt>
  402e0c:	5b                   	pop    %rbx
  402e0d:	c3                   	ret    
  402e0e:	bb 00 00 00 00       	mov    $0x0,%ebx
  402e13:	eb df                	jmp    402df4 <init_timeout+0xb>
  402e15:	f3 c3                	repz ret 

0000000000402e17 <init_driver>:
  402e17:	41 54                	push   %r12
  402e19:	55                   	push   %rbp
  402e1a:	53                   	push   %rbx
  402e1b:	48 83 ec 20          	sub    $0x20,%rsp
  402e1f:	49 89 fc             	mov    %rdi,%r12
  402e22:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402e29:	00 00 
  402e2b:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402e30:	31 c0                	xor    %eax,%eax
  402e32:	be 01 00 00 00       	mov    $0x1,%esi
  402e37:	bf 0d 00 00 00       	mov    $0xd,%edi
  402e3c:	e8 7f df ff ff       	call   400dc0 <signal@plt>
  402e41:	be 01 00 00 00       	mov    $0x1,%esi
  402e46:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402e4b:	e8 70 df ff ff       	call   400dc0 <signal@plt>
  402e50:	be 01 00 00 00       	mov    $0x1,%esi
  402e55:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402e5a:	e8 61 df ff ff       	call   400dc0 <signal@plt>
  402e5f:	ba 00 00 00 00       	mov    $0x0,%edx
  402e64:	be 01 00 00 00       	mov    $0x1,%esi
  402e69:	bf 02 00 00 00       	mov    $0x2,%edi
  402e6e:	e8 7d e0 ff ff       	call   400ef0 <socket@plt>
  402e73:	85 c0                	test   %eax,%eax
  402e75:	0f 88 a3 00 00 00    	js     402f1e <init_driver+0x107>
  402e7b:	89 c3                	mov    %eax,%ebx
  402e7d:	48 8d 3d 68 0b 00 00 	lea    0xb68(%rip),%rdi        # 4039ec <trans_char+0xec>
  402e84:	e8 47 df ff ff       	call   400dd0 <gethostbyname@plt>
  402e89:	48 85 c0             	test   %rax,%rax
  402e8c:	0f 84 df 00 00 00    	je     402f71 <init_driver+0x15a>
  402e92:	48 89 e5             	mov    %rsp,%rbp
  402e95:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
  402e9c:	00 00 
  402e9e:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
  402ea5:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
  402eab:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402eb1:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402eb5:	48 8b 40 18          	mov    0x18(%rax),%rax
  402eb9:	48 8b 30             	mov    (%rax),%rsi
  402ebc:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
  402ec0:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402ec5:	e8 16 df ff ff       	call   400de0 <__memmove_chk@plt>
  402eca:	66 c7 44 24 02 0b b8 	movw   $0xb80b,0x2(%rsp)
  402ed1:	ba 10 00 00 00       	mov    $0x10,%edx
  402ed6:	48 89 ee             	mov    %rbp,%rsi
  402ed9:	89 df                	mov    %ebx,%edi
  402edb:	e8 e0 df ff ff       	call   400ec0 <connect@plt>
  402ee0:	85 c0                	test   %eax,%eax
  402ee2:	0f 88 fb 00 00 00    	js     402fe3 <init_driver+0x1cc>
  402ee8:	89 df                	mov    %ebx,%edi
  402eea:	e8 a1 de ff ff       	call   400d90 <close@plt>
  402eef:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
  402ef6:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
  402efc:	b8 00 00 00 00       	mov    $0x0,%eax
  402f01:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  402f06:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402f0d:	00 00 
  402f0f:	0f 85 28 01 00 00    	jne    40303d <init_driver+0x226>
  402f15:	48 83 c4 20          	add    $0x20,%rsp
  402f19:	5b                   	pop    %rbx
  402f1a:	5d                   	pop    %rbp
  402f1b:	41 5c                	pop    %r12
  402f1d:	c3                   	ret    
  402f1e:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402f25:	3a 20 43 
  402f28:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402f2f:	20 75 6e 
  402f32:	49 89 04 24          	mov    %rax,(%r12)
  402f36:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402f3b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402f42:	74 6f 20 
  402f45:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402f4c:	65 20 73 
  402f4f:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402f54:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402f59:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
  402f60:	6b 65 
  402f62:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
  402f69:	00 
  402f6a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f6f:	eb 90                	jmp    402f01 <init_driver+0xea>
  402f71:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402f78:	3a 20 44 
  402f7b:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402f82:	20 75 6e 
  402f85:	49 89 04 24          	mov    %rax,(%r12)
  402f89:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402f8e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402f95:	74 6f 20 
  402f98:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402f9f:	76 65 20 
  402fa2:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402fa7:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402fac:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402fb3:	72 20 61 
  402fb6:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  402fbb:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
  402fc2:	72 65 
  402fc4:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
  402fcb:	73 
  402fcc:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
  402fd2:	89 df                	mov    %ebx,%edi
  402fd4:	e8 b7 dd ff ff       	call   400d90 <close@plt>
  402fd9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402fde:	e9 1e ff ff ff       	jmp    402f01 <init_driver+0xea>
  402fe3:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402fea:	3a 20 55 
  402fed:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402ff4:	20 74 6f 
  402ff7:	49 89 04 24          	mov    %rax,(%r12)
  402ffb:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  403000:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  403007:	65 63 74 
  40300a:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  403011:	65 72 76 
  403014:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  403019:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  40301e:	66 41 c7 44 24 20 65 	movw   $0x7265,0x20(%r12)
  403025:	72 
  403026:	41 c6 44 24 22 00    	movb   $0x0,0x22(%r12)
  40302c:	89 df                	mov    %ebx,%edi
  40302e:	e8 5d dd ff ff       	call   400d90 <close@plt>
  403033:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403038:	e9 c4 fe ff ff       	jmp    402f01 <init_driver+0xea>
  40303d:	e8 45 f1 ff ff       	call   402187 <__stack_chk_fail>

0000000000403042 <driver_post>:
  403042:	53                   	push   %rbx
  403043:	4c 89 cb             	mov    %r9,%rbx
  403046:	45 85 c0             	test   %r8d,%r8d
  403049:	75 18                	jne    403063 <driver_post+0x21>
  40304b:	48 85 ff             	test   %rdi,%rdi
  40304e:	74 05                	je     403055 <driver_post+0x13>
  403050:	80 3f 00             	cmpb   $0x0,(%rdi)
  403053:	75 37                	jne    40308c <driver_post+0x4a>
  403055:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  40305a:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  40305e:	44 89 c0             	mov    %r8d,%eax
  403061:	5b                   	pop    %rbx
  403062:	c3                   	ret    
  403063:	48 89 ca             	mov    %rcx,%rdx
  403066:	48 8d 35 8f 09 00 00 	lea    0x98f(%rip),%rsi        # 4039fc <trans_char+0xfc>
  40306d:	bf 01 00 00 00       	mov    $0x1,%edi
  403072:	b8 00 00 00 00       	mov    $0x0,%eax
  403077:	e8 e4 dd ff ff       	call   400e60 <__printf_chk@plt>
  40307c:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  403081:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  403085:	b8 00 00 00 00       	mov    $0x0,%eax
  40308a:	eb d5                	jmp    403061 <driver_post+0x1f>
  40308c:	48 83 ec 08          	sub    $0x8,%rsp
  403090:	41 51                	push   %r9
  403092:	49 89 c9             	mov    %rcx,%r9
  403095:	49 89 d0             	mov    %rdx,%r8
  403098:	48 89 f9             	mov    %rdi,%rcx
  40309b:	48 89 f2             	mov    %rsi,%rdx
  40309e:	be b8 0b 00 00       	mov    $0xbb8,%esi
  4030a3:	48 8d 3d 42 09 00 00 	lea    0x942(%rip),%rdi        # 4039ec <trans_char+0xec>
  4030aa:	e8 9c f5 ff ff       	call   40264b <submitr>
  4030af:	48 83 c4 10          	add    $0x10,%rsp
  4030b3:	eb ac                	jmp    403061 <driver_post+0x1f>

00000000004030b5 <check>:
  4030b5:	89 f8                	mov    %edi,%eax
  4030b7:	c1 e8 1c             	shr    $0x1c,%eax
  4030ba:	85 c0                	test   %eax,%eax
  4030bc:	74 1d                	je     4030db <check+0x26>
  4030be:	b9 00 00 00 00       	mov    $0x0,%ecx
  4030c3:	83 f9 1f             	cmp    $0x1f,%ecx
  4030c6:	7f 0d                	jg     4030d5 <check+0x20>
  4030c8:	89 f8                	mov    %edi,%eax
  4030ca:	d3 e8                	shr    %cl,%eax
  4030cc:	3c 0a                	cmp    $0xa,%al
  4030ce:	74 11                	je     4030e1 <check+0x2c>
  4030d0:	83 c1 08             	add    $0x8,%ecx
  4030d3:	eb ee                	jmp    4030c3 <check+0xe>
  4030d5:	b8 01 00 00 00       	mov    $0x1,%eax
  4030da:	c3                   	ret    
  4030db:	b8 00 00 00 00       	mov    $0x0,%eax
  4030e0:	c3                   	ret    
  4030e1:	b8 00 00 00 00       	mov    $0x0,%eax
  4030e6:	c3                   	ret    

00000000004030e7 <gencookie>:
  4030e7:	53                   	push   %rbx
  4030e8:	83 c7 01             	add    $0x1,%edi
  4030eb:	e8 10 dc ff ff       	call   400d00 <srandom@plt>
  4030f0:	e8 2b dd ff ff       	call   400e20 <random@plt>
  4030f5:	89 c3                	mov    %eax,%ebx
  4030f7:	89 c7                	mov    %eax,%edi
  4030f9:	e8 b7 ff ff ff       	call   4030b5 <check>
  4030fe:	85 c0                	test   %eax,%eax
  403100:	74 ee                	je     4030f0 <gencookie+0x9>
  403102:	89 d8                	mov    %ebx,%eax
  403104:	5b                   	pop    %rbx
  403105:	c3                   	ret    
  403106:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40310d:	00 00 00 

0000000000403110 <__libc_csu_init>:
  403110:	41 57                	push   %r15
  403112:	41 56                	push   %r14
  403114:	49 89 d7             	mov    %rdx,%r15
  403117:	41 55                	push   %r13
  403119:	41 54                	push   %r12
  40311b:	4c 8d 25 de 1c 20 00 	lea    0x201cde(%rip),%r12        # 604e00 <__frame_dummy_init_array_entry>
  403122:	55                   	push   %rbp
  403123:	48 8d 2d de 1c 20 00 	lea    0x201cde(%rip),%rbp        # 604e08 <__do_global_dtors_aux_fini_array_entry>
  40312a:	53                   	push   %rbx
  40312b:	41 89 fd             	mov    %edi,%r13d
  40312e:	49 89 f6             	mov    %rsi,%r14
  403131:	4c 29 e5             	sub    %r12,%rbp
  403134:	48 83 ec 08          	sub    $0x8,%rsp
  403138:	48 c1 fd 03          	sar    $0x3,%rbp
  40313c:	e8 6f db ff ff       	call   400cb0 <_init>
  403141:	48 85 ed             	test   %rbp,%rbp
  403144:	74 20                	je     403166 <__libc_csu_init+0x56>
  403146:	31 db                	xor    %ebx,%ebx
  403148:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40314f:	00 
  403150:	4c 89 fa             	mov    %r15,%rdx
  403153:	4c 89 f6             	mov    %r14,%rsi
  403156:	44 89 ef             	mov    %r13d,%edi
  403159:	41 ff 14 dc          	call   *(%r12,%rbx,8)
  40315d:	48 83 c3 01          	add    $0x1,%rbx
  403161:	48 39 dd             	cmp    %rbx,%rbp
  403164:	75 ea                	jne    403150 <__libc_csu_init+0x40>
  403166:	48 83 c4 08          	add    $0x8,%rsp
  40316a:	5b                   	pop    %rbx
  40316b:	5d                   	pop    %rbp
  40316c:	41 5c                	pop    %r12
  40316e:	41 5d                	pop    %r13
  403170:	41 5e                	pop    %r14
  403172:	41 5f                	pop    %r15
  403174:	c3                   	ret    
  403175:	90                   	nop
  403176:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40317d:	00 00 00 

0000000000403180 <__libc_csu_fini>:
  403180:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000403184 <_fini>:
  403184:	48 83 ec 08          	sub    $0x8,%rsp
  403188:	48 83 c4 08          	add    $0x8,%rsp
  40318c:	c3                   	ret    
