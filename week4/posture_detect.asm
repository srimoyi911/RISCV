
posture_new.o:     file format elf32-littleriscv


Disassembly of section .text:

00010074 <register_fini>:
   10074:	ffff0797          	auipc	a5,0xffff0
   10078:	f8c78793          	addi	a5,a5,-116 # 0 <register_fini-0x10074>
   1007c:	00078863          	beqz	a5,1008c <register_fini+0x18>
   10080:	00000517          	auipc	a0,0x0
   10084:	51c50513          	addi	a0,a0,1308 # 1059c <__libc_fini_array>
   10088:	4cc0006f          	j	10554 <atexit>
   1008c:	00008067          	ret

00010090 <_start>:
   10090:	00002197          	auipc	gp,0x2
   10094:	0f818193          	addi	gp,gp,248 # 12188 <__global_pointer$>
   10098:	c3418513          	addi	a0,gp,-972 # 11dbc <_edata>
   1009c:	c5018613          	addi	a2,gp,-944 # 11dd8 <__BSS_END__>
   100a0:	40a60633          	sub	a2,a2,a0
   100a4:	00000593          	li	a1,0
   100a8:	5e8000ef          	jal	ra,10690 <memset>
   100ac:	00000517          	auipc	a0,0x0
   100b0:	4f050513          	addi	a0,a0,1264 # 1059c <__libc_fini_array>
   100b4:	4a0000ef          	jal	ra,10554 <atexit>
   100b8:	544000ef          	jal	ra,105fc <__libc_init_array>
   100bc:	00012503          	lw	a0,0(sp)
   100c0:	00410593          	addi	a1,sp,4
   100c4:	00000613          	li	a2,0
   100c8:	0d4000ef          	jal	ra,1019c <main>
   100cc:	49c0006f          	j	10568 <exit>

000100d0 <__do_global_dtors_aux>:
   100d0:	c341c783          	lbu	a5,-972(gp) # 11dbc <_edata>
   100d4:	04079463          	bnez	a5,1011c <__do_global_dtors_aux+0x4c>
   100d8:	ffff0797          	auipc	a5,0xffff0
   100dc:	f2878793          	addi	a5,a5,-216 # 0 <register_fini-0x10074>
   100e0:	02078863          	beqz	a5,10110 <__do_global_dtors_aux+0x40>
   100e4:	ff010113          	addi	sp,sp,-16
   100e8:	00002517          	auipc	a0,0x2
   100ec:	88c50513          	addi	a0,a0,-1908 # 11974 <__FRAME_END__>
   100f0:	00112623          	sw	ra,12(sp)
   100f4:	00000097          	auipc	ra,0x0
   100f8:	000000e7          	jalr	zero # 0 <register_fini-0x10074>
   100fc:	00c12083          	lw	ra,12(sp)
   10100:	00100793          	li	a5,1
   10104:	c2f18a23          	sb	a5,-972(gp) # 11dbc <_edata>
   10108:	01010113          	addi	sp,sp,16
   1010c:	00008067          	ret
   10110:	00100793          	li	a5,1
   10114:	c2f18a23          	sb	a5,-972(gp) # 11dbc <_edata>
   10118:	00008067          	ret
   1011c:	00008067          	ret

00010120 <frame_dummy>:
   10120:	ffff0797          	auipc	a5,0xffff0
   10124:	ee078793          	addi	a5,a5,-288 # 0 <register_fini-0x10074>
   10128:	00078c63          	beqz	a5,10140 <frame_dummy+0x20>
   1012c:	c3818593          	addi	a1,gp,-968 # 11dc0 <object.5439>
   10130:	00002517          	auipc	a0,0x2
   10134:	84450513          	addi	a0,a0,-1980 # 11974 <__FRAME_END__>
   10138:	00000317          	auipc	t1,0x0
   1013c:	00000067          	jr	zero # 0 <register_fini-0x10074>
   10140:	00008067          	ret

00010144 <division>:
   10144:	fd010113          	addi	sp,sp,-48
   10148:	02812623          	sw	s0,44(sp)
   1014c:	03010413          	addi	s0,sp,48
   10150:	fca42e23          	sw	a0,-36(s0)
   10154:	fcb42c23          	sw	a1,-40(s0)
   10158:	fe042623          	sw	zero,-20(s0)
   1015c:	0200006f          	j	1017c <division+0x38>
   10160:	fdc42703          	lw	a4,-36(s0)
   10164:	fd842783          	lw	a5,-40(s0)
   10168:	40f707b3          	sub	a5,a4,a5
   1016c:	fcf42e23          	sw	a5,-36(s0)
   10170:	fec42783          	lw	a5,-20(s0)
   10174:	00178793          	addi	a5,a5,1
   10178:	fef42623          	sw	a5,-20(s0)
   1017c:	fdc42703          	lw	a4,-36(s0)
   10180:	fd842783          	lw	a5,-40(s0)
   10184:	fcf75ee3          	bge	a4,a5,10160 <division+0x1c>
   10188:	fec42783          	lw	a5,-20(s0)
   1018c:	00078513          	mv	a0,a5
   10190:	02c12403          	lw	s0,44(sp)
   10194:	03010113          	addi	sp,sp,48
   10198:	00008067          	ret

0001019c <main>:
   1019c:	f9010113          	addi	sp,sp,-112
   101a0:	06112623          	sw	ra,108(sp)
   101a4:	06812423          	sw	s0,104(sp)
   101a8:	07010413          	addi	s0,sp,112
   101ac:	06400793          	li	a5,100
   101b0:	fef42023          	sw	a5,-32(s0)
   101b4:	00100793          	li	a5,1
   101b8:	fcf42e23          	sw	a5,-36(s0)
   101bc:	0ff00793          	li	a5,255
   101c0:	fcf42c23          	sw	a5,-40(s0)
   101c4:	fd842783          	lw	a5,-40(s0)
   101c8:	00fdfdb3          	and	s11,s11,a5
   101cc:	000d8793          	mv	a5,s11
   101d0:	fcf42a23          	sw	a5,-44(s0)
   101d4:	00100793          	li	a5,1
   101d8:	fcf42823          	sw	a5,-48(s0)
   101dc:	fd042783          	lw	a5,-48(s0)
   101e0:	00879793          	slli	a5,a5,0x8
   101e4:	fcf42623          	sw	a5,-52(s0)
   101e8:	eff00793          	li	a5,-257
   101ec:	fcf42423          	sw	a5,-56(s0)
   101f0:	fc842783          	lw	a5,-56(s0)
   101f4:	fcc42703          	lw	a4,-52(s0)
   101f8:	00fdfdb3          	and	s11,s11,a5
   101fc:	00ededb3          	or	s11,s11,a4
   10200:	fe042623          	sw	zero,-20(s0)
   10204:	0100006f          	j	10214 <main+0x78>
   10208:	fec42783          	lw	a5,-20(s0)
   1020c:	00178793          	addi	a5,a5,1
   10210:	fef42623          	sw	a5,-20(s0)
   10214:	fec42703          	lw	a4,-20(s0)
   10218:	00b00793          	li	a5,11
   1021c:	fee7d6e3          	bge	a5,a4,10208 <main+0x6c>
   10220:	fc842783          	lw	a5,-56(s0)
   10224:	00fdfdb3          	and	s11,s11,a5
   10228:	000ded93          	ori	s11,s11,0
   1022c:	00add793          	srli	a5,s11,0xa
   10230:	fcf42223          	sw	a5,-60(s0)
   10234:	fc442783          	lw	a5,-60(s0)
   10238:	0017f793          	andi	a5,a5,1
   1023c:	fcf42223          	sw	a5,-60(s0)
   10240:	fe042423          	sw	zero,-24(s0)
   10244:	fc042023          	sw	zero,-64(s0)
   10248:	fa042e23          	sw	zero,-68(s0)
   1024c:	fc442703          	lw	a4,-60(s0)
   10250:	00100793          	li	a5,1
   10254:	02f71463          	bne	a4,a5,1027c <main+0xe0>
   10258:	fe842783          	lw	a5,-24(s0)
   1025c:	00178793          	addi	a5,a5,1
   10260:	fef42423          	sw	a5,-24(s0)
   10264:	000ded93          	ori	s11,s11,0
   10268:	00add793          	srli	a5,s11,0xa
   1026c:	fcf42223          	sw	a5,-60(s0)
   10270:	fc442783          	lw	a5,-60(s0)
   10274:	0017f793          	andi	a5,a5,1
   10278:	fcf42223          	sw	a5,-60(s0)
   1027c:	fe042783          	lw	a5,-32(s0)
   10280:	06400593          	li	a1,100
   10284:	00078513          	mv	a0,a5
   10288:	218000ef          	jal	ra,104a0 <__divsi3>
   1028c:	00050793          	mv	a5,a0
   10290:	00078593          	mv	a1,a5
   10294:	fe842503          	lw	a0,-24(s0)
   10298:	eadff0ef          	jal	ra,10144 <division>
   1029c:	faa42e23          	sw	a0,-68(s0)
   102a0:	fbc42703          	lw	a4,-68(s0)
   102a4:	00070793          	mv	a5,a4
   102a8:	00379793          	slli	a5,a5,0x3
   102ac:	40e787b3          	sub	a5,a5,a4
   102b0:	00279793          	slli	a5,a5,0x2
   102b4:	40e787b3          	sub	a5,a5,a4
   102b8:	00379793          	slli	a5,a5,0x3
   102bc:	40e787b3          	sub	a5,a5,a4
   102c0:	00379793          	slli	a5,a5,0x3
   102c4:	3e800593          	li	a1,1000
   102c8:	00078513          	mv	a0,a5
   102cc:	1d4000ef          	jal	ra,104a0 <__divsi3>
   102d0:	00050793          	mv	a5,a0
   102d4:	fcf42023          	sw	a5,-64(s0)
   102d8:	00100793          	li	a5,1
   102dc:	fcf42823          	sw	a5,-48(s0)
   102e0:	fd042783          	lw	a5,-48(s0)
   102e4:	00979793          	slli	a5,a5,0x9
   102e8:	fcf42623          	sw	a5,-52(s0)
   102ec:	dff00793          	li	a5,-513
   102f0:	faf42c23          	sw	a5,-72(s0)
   102f4:	fb842783          	lw	a5,-72(s0)
   102f8:	fcc42703          	lw	a4,-52(s0)
   102fc:	00fdfdb3          	and	s11,s11,a5
   10300:	00ededb3          	or	s11,s11,a4
   10304:	fe042623          	sw	zero,-20(s0)
   10308:	0100006f          	j	10318 <main+0x17c>
   1030c:	fec42783          	lw	a5,-20(s0)
   10310:	00178793          	addi	a5,a5,1
   10314:	fef42623          	sw	a5,-20(s0)
   10318:	fec42703          	lw	a4,-20(s0)
   1031c:	00b00793          	li	a5,11
   10320:	fee7d6e3          	bge	a5,a4,1030c <main+0x170>
   10324:	fb842783          	lw	a5,-72(s0)
   10328:	00fdfdb3          	and	s11,s11,a5
   1032c:	000ded93          	ori	s11,s11,0
   10330:	00bdd793          	srli	a5,s11,0xb
   10334:	faf42a23          	sw	a5,-76(s0)
   10338:	fb442783          	lw	a5,-76(s0)
   1033c:	0017f793          	andi	a5,a5,1
   10340:	faf42a23          	sw	a5,-76(s0)
   10344:	fe042223          	sw	zero,-28(s0)
   10348:	fa042823          	sw	zero,-80(s0)
   1034c:	fa042623          	sw	zero,-84(s0)
   10350:	fb442703          	lw	a4,-76(s0)
   10354:	00100793          	li	a5,1
   10358:	02f71463          	bne	a4,a5,10380 <main+0x1e4>
   1035c:	fe442783          	lw	a5,-28(s0)
   10360:	00178793          	addi	a5,a5,1
   10364:	fef42223          	sw	a5,-28(s0)
   10368:	000ded93          	ori	s11,s11,0
   1036c:	00bdd793          	srli	a5,s11,0xb
   10370:	faf42a23          	sw	a5,-76(s0)
   10374:	fb442783          	lw	a5,-76(s0)
   10378:	0017f793          	andi	a5,a5,1
   1037c:	faf42a23          	sw	a5,-76(s0)
   10380:	fe042783          	lw	a5,-32(s0)
   10384:	06400593          	li	a1,100
   10388:	00078513          	mv	a0,a5
   1038c:	114000ef          	jal	ra,104a0 <__divsi3>
   10390:	00050793          	mv	a5,a0
   10394:	00078593          	mv	a1,a5
   10398:	fe442503          	lw	a0,-28(s0)
   1039c:	da9ff0ef          	jal	ra,10144 <division>
   103a0:	faa42623          	sw	a0,-84(s0)
   103a4:	fac42703          	lw	a4,-84(s0)
   103a8:	00070793          	mv	a5,a4
   103ac:	00379793          	slli	a5,a5,0x3
   103b0:	40e787b3          	sub	a5,a5,a4
   103b4:	00279793          	slli	a5,a5,0x2
   103b8:	40e787b3          	sub	a5,a5,a4
   103bc:	00379793          	slli	a5,a5,0x3
   103c0:	40e787b3          	sub	a5,a5,a4
   103c4:	00379793          	slli	a5,a5,0x3
   103c8:	3e800593          	li	a1,1000
   103cc:	00078513          	mv	a0,a5
   103d0:	0d0000ef          	jal	ra,104a0 <__divsi3>
   103d4:	00050793          	mv	a5,a0
   103d8:	faf42823          	sw	a5,-80(s0)
   103dc:	fffff7b7          	lui	a5,0xfffff
   103e0:	fff78793          	addi	a5,a5,-1 # ffffefff <__global_pointer$+0xfffece77>
   103e4:	faf42423          	sw	a5,-88(s0)
   103e8:	ffffe7b7          	lui	a5,0xffffe
   103ec:	fff78793          	addi	a5,a5,-1 # ffffdfff <__global_pointer$+0xfffebe77>
   103f0:	faf42223          	sw	a5,-92(s0)
   103f4:	fc042703          	lw	a4,-64(s0)
   103f8:	fb042783          	lw	a5,-80(s0)
   103fc:	40f707b3          	sub	a5,a4,a5
   10400:	fdc42703          	lw	a4,-36(s0)
   10404:	04e7c663          	blt	a5,a4,10450 <main+0x2b4>
   10408:	00100793          	li	a5,1
   1040c:	faf42023          	sw	a5,-96(s0)
   10410:	fa042783          	lw	a5,-96(s0)
   10414:	00c79793          	slli	a5,a5,0xc
   10418:	f8f42e23          	sw	a5,-100(s0)
   1041c:	fa842783          	lw	a5,-88(s0)
   10420:	f9c42703          	lw	a4,-100(s0)
   10424:	00fdfdb3          	and	s11,s11,a5
   10428:	00ededb3          	or	s11,s11,a4
   1042c:	00100793          	li	a5,1
   10430:	f8f42c23          	sw	a5,-104(s0)
   10434:	f9842783          	lw	a5,-104(s0)
   10438:	00d79793          	slli	a5,a5,0xd
   1043c:	f8f42a23          	sw	a5,-108(s0)
   10440:	fa442783          	lw	a5,-92(s0)
   10444:	f9442703          	lw	a4,-108(s0)
   10448:	00fdfdb3          	and	s11,s11,a5
   1044c:	00ededb3          	or	s11,s11,a4
   10450:	fa842783          	lw	a5,-88(s0)
   10454:	00fdfdb3          	and	s11,s11,a5
   10458:	fa442783          	lw	a5,-92(s0)
   1045c:	00fdfdb3          	and	s11,s11,a5
   10460:	fe042623          	sw	zero,-20(s0)
   10464:	0100006f          	j	10474 <main+0x2d8>
   10468:	fec42783          	lw	a5,-20(s0)
   1046c:	00178793          	addi	a5,a5,1
   10470:	fef42623          	sw	a5,-20(s0)
   10474:	fd442703          	lw	a4,-44(s0)
   10478:	00070793          	mv	a5,a4
   1047c:	00579793          	slli	a5,a5,0x5
   10480:	40e787b3          	sub	a5,a5,a4
   10484:	00279793          	slli	a5,a5,0x2
   10488:	00e787b3          	add	a5,a5,a4
   1048c:	00379793          	slli	a5,a5,0x3
   10490:	00078713          	mv	a4,a5
   10494:	fec42783          	lw	a5,-20(s0)
   10498:	fcf758e3          	bge	a4,a5,10468 <main+0x2cc>
   1049c:	d39ff06f          	j	101d4 <main+0x38>

000104a0 <__divsi3>:
   104a0:	06054063          	bltz	a0,10500 <__umodsi3+0x10>
   104a4:	0605c663          	bltz	a1,10510 <__umodsi3+0x20>

000104a8 <__udivsi3>:
   104a8:	00058613          	mv	a2,a1
   104ac:	00050593          	mv	a1,a0
   104b0:	fff00513          	li	a0,-1
   104b4:	02060c63          	beqz	a2,104ec <__udivsi3+0x44>
   104b8:	00100693          	li	a3,1
   104bc:	00b67a63          	bgeu	a2,a1,104d0 <__udivsi3+0x28>
   104c0:	00c05863          	blez	a2,104d0 <__udivsi3+0x28>
   104c4:	00161613          	slli	a2,a2,0x1
   104c8:	00169693          	slli	a3,a3,0x1
   104cc:	feb66ae3          	bltu	a2,a1,104c0 <__udivsi3+0x18>
   104d0:	00000513          	li	a0,0
   104d4:	00c5e663          	bltu	a1,a2,104e0 <__udivsi3+0x38>
   104d8:	40c585b3          	sub	a1,a1,a2
   104dc:	00d56533          	or	a0,a0,a3
   104e0:	0016d693          	srli	a3,a3,0x1
   104e4:	00165613          	srli	a2,a2,0x1
   104e8:	fe0696e3          	bnez	a3,104d4 <__udivsi3+0x2c>
   104ec:	00008067          	ret

000104f0 <__umodsi3>:
   104f0:	00008293          	mv	t0,ra
   104f4:	fb5ff0ef          	jal	ra,104a8 <__udivsi3>
   104f8:	00058513          	mv	a0,a1
   104fc:	00028067          	jr	t0
   10500:	40a00533          	neg	a0,a0
   10504:	0005d863          	bgez	a1,10514 <__umodsi3+0x24>
   10508:	40b005b3          	neg	a1,a1
   1050c:	f9dff06f          	j	104a8 <__udivsi3>
   10510:	40b005b3          	neg	a1,a1
   10514:	00008293          	mv	t0,ra
   10518:	f91ff0ef          	jal	ra,104a8 <__udivsi3>
   1051c:	40a00533          	neg	a0,a0
   10520:	00028067          	jr	t0

00010524 <__modsi3>:
   10524:	00008293          	mv	t0,ra
   10528:	0005ca63          	bltz	a1,1053c <__modsi3+0x18>
   1052c:	00054c63          	bltz	a0,10544 <__modsi3+0x20>
   10530:	f79ff0ef          	jal	ra,104a8 <__udivsi3>
   10534:	00058513          	mv	a0,a1
   10538:	00028067          	jr	t0
   1053c:	40b005b3          	neg	a1,a1
   10540:	fe0558e3          	bgez	a0,10530 <__modsi3+0xc>
   10544:	40a00533          	neg	a0,a0
   10548:	f61ff0ef          	jal	ra,104a8 <__udivsi3>
   1054c:	40b00533          	neg	a0,a1
   10550:	00028067          	jr	t0

00010554 <atexit>:
   10554:	00050593          	mv	a1,a0
   10558:	00000693          	li	a3,0
   1055c:	00000613          	li	a2,0
   10560:	00000513          	li	a0,0
   10564:	2080006f          	j	1076c <__register_exitproc>

00010568 <exit>:
   10568:	ff010113          	addi	sp,sp,-16
   1056c:	00000593          	li	a1,0
   10570:	00812423          	sw	s0,8(sp)
   10574:	00112623          	sw	ra,12(sp)
   10578:	00050413          	mv	s0,a0
   1057c:	28c000ef          	jal	ra,10808 <__call_exitprocs>
   10580:	c2818793          	addi	a5,gp,-984 # 11db0 <_global_impure_ptr>
   10584:	0007a503          	lw	a0,0(a5)
   10588:	03c52783          	lw	a5,60(a0)
   1058c:	00078463          	beqz	a5,10594 <exit+0x2c>
   10590:	000780e7          	jalr	a5
   10594:	00040513          	mv	a0,s0
   10598:	38c000ef          	jal	ra,10924 <_exit>

0001059c <__libc_fini_array>:
   1059c:	ff010113          	addi	sp,sp,-16
   105a0:	00812423          	sw	s0,8(sp)
   105a4:	00001797          	auipc	a5,0x1
   105a8:	3dc78793          	addi	a5,a5,988 # 11980 <__init_array_end>
   105ac:	00001417          	auipc	s0,0x1
   105b0:	3d840413          	addi	s0,s0,984 # 11984 <__fini_array_end>
   105b4:	40f40433          	sub	s0,s0,a5
   105b8:	00112623          	sw	ra,12(sp)
   105bc:	00912223          	sw	s1,4(sp)
   105c0:	40245413          	srai	s0,s0,0x2
   105c4:	02040263          	beqz	s0,105e8 <__libc_fini_array+0x4c>
   105c8:	00241493          	slli	s1,s0,0x2
   105cc:	ffc48493          	addi	s1,s1,-4
   105d0:	00f484b3          	add	s1,s1,a5
   105d4:	0004a783          	lw	a5,0(s1)
   105d8:	fff40413          	addi	s0,s0,-1
   105dc:	ffc48493          	addi	s1,s1,-4
   105e0:	000780e7          	jalr	a5
   105e4:	fe0418e3          	bnez	s0,105d4 <__libc_fini_array+0x38>
   105e8:	00c12083          	lw	ra,12(sp)
   105ec:	00812403          	lw	s0,8(sp)
   105f0:	00412483          	lw	s1,4(sp)
   105f4:	01010113          	addi	sp,sp,16
   105f8:	00008067          	ret

000105fc <__libc_init_array>:
   105fc:	ff010113          	addi	sp,sp,-16
   10600:	00812423          	sw	s0,8(sp)
   10604:	01212023          	sw	s2,0(sp)
   10608:	00001417          	auipc	s0,0x1
   1060c:	37040413          	addi	s0,s0,880 # 11978 <__init_array_start>
   10610:	00001917          	auipc	s2,0x1
   10614:	36890913          	addi	s2,s2,872 # 11978 <__init_array_start>
   10618:	40890933          	sub	s2,s2,s0
   1061c:	00112623          	sw	ra,12(sp)
   10620:	00912223          	sw	s1,4(sp)
   10624:	40295913          	srai	s2,s2,0x2
   10628:	00090e63          	beqz	s2,10644 <__libc_init_array+0x48>
   1062c:	00000493          	li	s1,0
   10630:	00042783          	lw	a5,0(s0)
   10634:	00148493          	addi	s1,s1,1
   10638:	00440413          	addi	s0,s0,4
   1063c:	000780e7          	jalr	a5
   10640:	fe9918e3          	bne	s2,s1,10630 <__libc_init_array+0x34>
   10644:	00001417          	auipc	s0,0x1
   10648:	33440413          	addi	s0,s0,820 # 11978 <__init_array_start>
   1064c:	00001917          	auipc	s2,0x1
   10650:	33490913          	addi	s2,s2,820 # 11980 <__init_array_end>
   10654:	40890933          	sub	s2,s2,s0
   10658:	40295913          	srai	s2,s2,0x2
   1065c:	00090e63          	beqz	s2,10678 <__libc_init_array+0x7c>
   10660:	00000493          	li	s1,0
   10664:	00042783          	lw	a5,0(s0)
   10668:	00148493          	addi	s1,s1,1
   1066c:	00440413          	addi	s0,s0,4
   10670:	000780e7          	jalr	a5
   10674:	fe9918e3          	bne	s2,s1,10664 <__libc_init_array+0x68>
   10678:	00c12083          	lw	ra,12(sp)
   1067c:	00812403          	lw	s0,8(sp)
   10680:	00412483          	lw	s1,4(sp)
   10684:	00012903          	lw	s2,0(sp)
   10688:	01010113          	addi	sp,sp,16
   1068c:	00008067          	ret

00010690 <memset>:
   10690:	00f00313          	li	t1,15
   10694:	00050713          	mv	a4,a0
   10698:	02c37e63          	bgeu	t1,a2,106d4 <memset+0x44>
   1069c:	00f77793          	andi	a5,a4,15
   106a0:	0a079063          	bnez	a5,10740 <memset+0xb0>
   106a4:	08059263          	bnez	a1,10728 <memset+0x98>
   106a8:	ff067693          	andi	a3,a2,-16
   106ac:	00f67613          	andi	a2,a2,15
   106b0:	00e686b3          	add	a3,a3,a4
   106b4:	00b72023          	sw	a1,0(a4)
   106b8:	00b72223          	sw	a1,4(a4)
   106bc:	00b72423          	sw	a1,8(a4)
   106c0:	00b72623          	sw	a1,12(a4)
   106c4:	01070713          	addi	a4,a4,16
   106c8:	fed766e3          	bltu	a4,a3,106b4 <memset+0x24>
   106cc:	00061463          	bnez	a2,106d4 <memset+0x44>
   106d0:	00008067          	ret
   106d4:	40c306b3          	sub	a3,t1,a2
   106d8:	00269693          	slli	a3,a3,0x2
   106dc:	00000297          	auipc	t0,0x0
   106e0:	005686b3          	add	a3,a3,t0
   106e4:	00c68067          	jr	12(a3)
   106e8:	00b70723          	sb	a1,14(a4)
   106ec:	00b706a3          	sb	a1,13(a4)
   106f0:	00b70623          	sb	a1,12(a4)
   106f4:	00b705a3          	sb	a1,11(a4)
   106f8:	00b70523          	sb	a1,10(a4)
   106fc:	00b704a3          	sb	a1,9(a4)
   10700:	00b70423          	sb	a1,8(a4)
   10704:	00b703a3          	sb	a1,7(a4)
   10708:	00b70323          	sb	a1,6(a4)
   1070c:	00b702a3          	sb	a1,5(a4)
   10710:	00b70223          	sb	a1,4(a4)
   10714:	00b701a3          	sb	a1,3(a4)
   10718:	00b70123          	sb	a1,2(a4)
   1071c:	00b700a3          	sb	a1,1(a4)
   10720:	00b70023          	sb	a1,0(a4)
   10724:	00008067          	ret
   10728:	0ff5f593          	andi	a1,a1,255
   1072c:	00859693          	slli	a3,a1,0x8
   10730:	00d5e5b3          	or	a1,a1,a3
   10734:	01059693          	slli	a3,a1,0x10
   10738:	00d5e5b3          	or	a1,a1,a3
   1073c:	f6dff06f          	j	106a8 <memset+0x18>
   10740:	00279693          	slli	a3,a5,0x2
   10744:	00000297          	auipc	t0,0x0
   10748:	005686b3          	add	a3,a3,t0
   1074c:	00008293          	mv	t0,ra
   10750:	fa0680e7          	jalr	-96(a3)
   10754:	00028093          	mv	ra,t0
   10758:	ff078793          	addi	a5,a5,-16
   1075c:	40f70733          	sub	a4,a4,a5
   10760:	00f60633          	add	a2,a2,a5
   10764:	f6c378e3          	bgeu	t1,a2,106d4 <memset+0x44>
   10768:	f3dff06f          	j	106a4 <memset+0x14>

0001076c <__register_exitproc>:
   1076c:	c2818793          	addi	a5,gp,-984 # 11db0 <_global_impure_ptr>
   10770:	0007a703          	lw	a4,0(a5)
   10774:	14872783          	lw	a5,328(a4)
   10778:	04078c63          	beqz	a5,107d0 <__register_exitproc+0x64>
   1077c:	0047a703          	lw	a4,4(a5)
   10780:	01f00813          	li	a6,31
   10784:	06e84e63          	blt	a6,a4,10800 <__register_exitproc+0x94>
   10788:	00271813          	slli	a6,a4,0x2
   1078c:	02050663          	beqz	a0,107b8 <__register_exitproc+0x4c>
   10790:	01078333          	add	t1,a5,a6
   10794:	08c32423          	sw	a2,136(t1) # 101c0 <main+0x24>
   10798:	1887a883          	lw	a7,392(a5)
   1079c:	00100613          	li	a2,1
   107a0:	00e61633          	sll	a2,a2,a4
   107a4:	00c8e8b3          	or	a7,a7,a2
   107a8:	1917a423          	sw	a7,392(a5)
   107ac:	10d32423          	sw	a3,264(t1)
   107b0:	00200693          	li	a3,2
   107b4:	02d50463          	beq	a0,a3,107dc <__register_exitproc+0x70>
   107b8:	00170713          	addi	a4,a4,1
   107bc:	00e7a223          	sw	a4,4(a5)
   107c0:	010787b3          	add	a5,a5,a6
   107c4:	00b7a423          	sw	a1,8(a5)
   107c8:	00000513          	li	a0,0
   107cc:	00008067          	ret
   107d0:	14c70793          	addi	a5,a4,332
   107d4:	14f72423          	sw	a5,328(a4)
   107d8:	fa5ff06f          	j	1077c <__register_exitproc+0x10>
   107dc:	18c7a683          	lw	a3,396(a5)
   107e0:	00170713          	addi	a4,a4,1
   107e4:	00e7a223          	sw	a4,4(a5)
   107e8:	00c6e633          	or	a2,a3,a2
   107ec:	18c7a623          	sw	a2,396(a5)
   107f0:	010787b3          	add	a5,a5,a6
   107f4:	00b7a423          	sw	a1,8(a5)
   107f8:	00000513          	li	a0,0
   107fc:	00008067          	ret
   10800:	fff00513          	li	a0,-1
   10804:	00008067          	ret

00010808 <__call_exitprocs>:
   10808:	fd010113          	addi	sp,sp,-48
   1080c:	c2818793          	addi	a5,gp,-984 # 11db0 <_global_impure_ptr>
   10810:	01812423          	sw	s8,8(sp)
   10814:	0007ac03          	lw	s8,0(a5)
   10818:	01312e23          	sw	s3,28(sp)
   1081c:	01412c23          	sw	s4,24(sp)
   10820:	01512a23          	sw	s5,20(sp)
   10824:	01612823          	sw	s6,16(sp)
   10828:	02112623          	sw	ra,44(sp)
   1082c:	02812423          	sw	s0,40(sp)
   10830:	02912223          	sw	s1,36(sp)
   10834:	03212023          	sw	s2,32(sp)
   10838:	01712623          	sw	s7,12(sp)
   1083c:	00050a93          	mv	s5,a0
   10840:	00058b13          	mv	s6,a1
   10844:	00100a13          	li	s4,1
   10848:	fff00993          	li	s3,-1
   1084c:	148c2903          	lw	s2,328(s8)
   10850:	02090863          	beqz	s2,10880 <__call_exitprocs+0x78>
   10854:	00492483          	lw	s1,4(s2)
   10858:	fff48413          	addi	s0,s1,-1
   1085c:	02044263          	bltz	s0,10880 <__call_exitprocs+0x78>
   10860:	00249493          	slli	s1,s1,0x2
   10864:	009904b3          	add	s1,s2,s1
   10868:	040b0463          	beqz	s6,108b0 <__call_exitprocs+0xa8>
   1086c:	1044a783          	lw	a5,260(s1)
   10870:	05678063          	beq	a5,s6,108b0 <__call_exitprocs+0xa8>
   10874:	fff40413          	addi	s0,s0,-1
   10878:	ffc48493          	addi	s1,s1,-4
   1087c:	ff3416e3          	bne	s0,s3,10868 <__call_exitprocs+0x60>
   10880:	02c12083          	lw	ra,44(sp)
   10884:	02812403          	lw	s0,40(sp)
   10888:	02412483          	lw	s1,36(sp)
   1088c:	02012903          	lw	s2,32(sp)
   10890:	01c12983          	lw	s3,28(sp)
   10894:	01812a03          	lw	s4,24(sp)
   10898:	01412a83          	lw	s5,20(sp)
   1089c:	01012b03          	lw	s6,16(sp)
   108a0:	00c12b83          	lw	s7,12(sp)
   108a4:	00812c03          	lw	s8,8(sp)
   108a8:	03010113          	addi	sp,sp,48
   108ac:	00008067          	ret
   108b0:	00492783          	lw	a5,4(s2)
   108b4:	0044a683          	lw	a3,4(s1)
   108b8:	fff78793          	addi	a5,a5,-1
   108bc:	04878a63          	beq	a5,s0,10910 <__call_exitprocs+0x108>
   108c0:	0004a223          	sw	zero,4(s1)
   108c4:	fa0688e3          	beqz	a3,10874 <__call_exitprocs+0x6c>
   108c8:	18892783          	lw	a5,392(s2)
   108cc:	008a1733          	sll	a4,s4,s0
   108d0:	00492b83          	lw	s7,4(s2)
   108d4:	00f777b3          	and	a5,a4,a5
   108d8:	00079e63          	bnez	a5,108f4 <__call_exitprocs+0xec>
   108dc:	000680e7          	jalr	a3
   108e0:	00492783          	lw	a5,4(s2)
   108e4:	f77794e3          	bne	a5,s7,1084c <__call_exitprocs+0x44>
   108e8:	148c2783          	lw	a5,328(s8)
   108ec:	f92784e3          	beq	a5,s2,10874 <__call_exitprocs+0x6c>
   108f0:	f5dff06f          	j	1084c <__call_exitprocs+0x44>
   108f4:	18c92783          	lw	a5,396(s2)
   108f8:	0844a583          	lw	a1,132(s1)
   108fc:	00f77733          	and	a4,a4,a5
   10900:	00071c63          	bnez	a4,10918 <__call_exitprocs+0x110>
   10904:	000a8513          	mv	a0,s5
   10908:	000680e7          	jalr	a3
   1090c:	fd5ff06f          	j	108e0 <__call_exitprocs+0xd8>
   10910:	00892223          	sw	s0,4(s2)
   10914:	fb1ff06f          	j	108c4 <__call_exitprocs+0xbc>
   10918:	00058513          	mv	a0,a1
   1091c:	000680e7          	jalr	a3
   10920:	fc1ff06f          	j	108e0 <__call_exitprocs+0xd8>

00010924 <_exit>:
   10924:	00000593          	li	a1,0
   10928:	00000613          	li	a2,0
   1092c:	00000693          	li	a3,0
   10930:	00000713          	li	a4,0
   10934:	00000793          	li	a5,0
   10938:	05d00893          	li	a7,93
   1093c:	00000073          	ecall
   10940:	00054463          	bltz	a0,10948 <_exit+0x24>
   10944:	0000006f          	j	10944 <_exit+0x20>
   10948:	ff010113          	addi	sp,sp,-16
   1094c:	00812423          	sw	s0,8(sp)
   10950:	00050413          	mv	s0,a0
   10954:	00112623          	sw	ra,12(sp)
   10958:	40800433          	neg	s0,s0
   1095c:	00c000ef          	jal	ra,10968 <__errno>
   10960:	00852023          	sw	s0,0(a0)
   10964:	0000006f          	j	10964 <_exit+0x40>

00010968 <__errno>:
   10968:	c3018793          	addi	a5,gp,-976 # 11db8 <_impure_ptr>
   1096c:	0007a503          	lw	a0,0(a5)
   10970:	00008067          	ret
