
posture_32.o:     file format elf32-littleriscv


Disassembly of section .text:

00010074 <register_fini>:
   10074:	ffff0797          	auipc	a5,0xffff0
   10078:	f8c78793          	addi	a5,a5,-116 # 0 <register_fini-0x10074>
   1007c:	00078863          	beqz	a5,1008c <register_fini+0x18>
   10080:	00000517          	auipc	a0,0x0
   10084:	70850513          	addi	a0,a0,1800 # 10788 <__libc_fini_array>
   10088:	6b80006f          	j	10740 <atexit>
   1008c:	00008067          	ret

00010090 <_start>:
   10090:	00017197          	auipc	gp,0x17
   10094:	83018193          	addi	gp,gp,-2000 # 268c0 <__global_pointer$>
   10098:	1cc18513          	addi	a0,gp,460 # 26a8c <_edata>
   1009c:	22818613          	addi	a2,gp,552 # 26ae8 <__BSS_END__>
   100a0:	40a60633          	sub	a2,a2,a0
   100a4:	00000593          	li	a1,0
   100a8:	7d4000ef          	jal	ra,1087c <memset>
   100ac:	00000517          	auipc	a0,0x0
   100b0:	6dc50513          	addi	a0,a0,1756 # 10788 <__libc_fini_array>
   100b4:	68c000ef          	jal	ra,10740 <atexit>
   100b8:	730000ef          	jal	ra,107e8 <__libc_init_array>
   100bc:	00012503          	lw	a0,0(sp)
   100c0:	00410593          	addi	a1,sp,4
   100c4:	00000613          	li	a2,0
   100c8:	0d4000ef          	jal	ra,1019c <main>
   100cc:	6880006f          	j	10754 <exit>

000100d0 <__do_global_dtors_aux>:
   100d0:	1e01c783          	lbu	a5,480(gp) # 26aa0 <completed.5434>
   100d4:	04079463          	bnez	a5,1011c <__do_global_dtors_aux+0x4c>
   100d8:	ffff0797          	auipc	a5,0xffff0
   100dc:	f2878793          	addi	a5,a5,-216 # 0 <register_fini-0x10074>
   100e0:	02078863          	beqz	a5,10110 <__do_global_dtors_aux+0x40>
   100e4:	ff010113          	addi	sp,sp,-16
   100e8:	00016517          	auipc	a0,0x16
   100ec:	f1850513          	addi	a0,a0,-232 # 26000 <__EH_FRAME_BEGIN__>
   100f0:	00112623          	sw	ra,12(sp)
   100f4:	00000097          	auipc	ra,0x0
   100f8:	000000e7          	jalr	zero # 0 <register_fini-0x10074>
   100fc:	00c12083          	lw	ra,12(sp)
   10100:	00100793          	li	a5,1
   10104:	1ef18023          	sb	a5,480(gp) # 26aa0 <completed.5434>
   10108:	01010113          	addi	sp,sp,16
   1010c:	00008067          	ret
   10110:	00100793          	li	a5,1
   10114:	1ef18023          	sb	a5,480(gp) # 26aa0 <completed.5434>
   10118:	00008067          	ret
   1011c:	00008067          	ret

00010120 <frame_dummy>:
   10120:	ffff0797          	auipc	a5,0xffff0
   10124:	ee078793          	addi	a5,a5,-288 # 0 <register_fini-0x10074>
   10128:	00078c63          	beqz	a5,10140 <frame_dummy+0x20>
   1012c:	1e418593          	addi	a1,gp,484 # 26aa4 <object.5439>
   10130:	00016517          	auipc	a0,0x16
   10134:	ed050513          	addi	a0,a0,-304 # 26000 <__EH_FRAME_BEGIN__>
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
   1019c:	f6010113          	addi	sp,sp,-160
   101a0:	08112e23          	sw	ra,156(sp)
   101a4:	08812c23          	sw	s0,152(sp)
   101a8:	0a010413          	addi	s0,sp,160
   101ac:	000257b7          	lui	a5,0x25
   101b0:	e8878513          	addi	a0,a5,-376 # 24e88 <__clzsi2+0x4c>
   101b4:	7e8000ef          	jal	ra,1099c <printf>
   101b8:	07800793          	li	a5,120
   101bc:	fcf42c23          	sw	a5,-40(s0)
   101c0:	f0000793          	li	a5,-256
   101c4:	fcf42a23          	sw	a5,-44(s0)
   101c8:	fd442783          	lw	a5,-44(s0)
   101cc:	fd842703          	lw	a4,-40(s0)
   101d0:	00fdfdb3          	and	s11,s11,a5
   101d4:	00ededb3          	or	s11,s11,a4
   101d8:	06400793          	li	a5,100
   101dc:	fcf42823          	sw	a5,-48(s0)
   101e0:	00100793          	li	a5,1
   101e4:	fcf42623          	sw	a5,-52(s0)
   101e8:	0ff00793          	li	a5,255
   101ec:	fcf42423          	sw	a5,-56(s0)
   101f0:	fc842783          	lw	a5,-56(s0)
   101f4:	00fdfdb3          	and	s11,s11,a5
   101f8:	000d8793          	mv	a5,s11
   101fc:	fcf42223          	sw	a5,-60(s0)
   10200:	fc442583          	lw	a1,-60(s0)
   10204:	000257b7          	lui	a5,0x25
   10208:	eb078513          	addi	a0,a5,-336 # 24eb0 <__clzsi2+0x74>
   1020c:	790000ef          	jal	ra,1099c <printf>
   10210:	00100793          	li	a5,1
   10214:	fcf42023          	sw	a5,-64(s0)
   10218:	fc042783          	lw	a5,-64(s0)
   1021c:	00879793          	slli	a5,a5,0x8
   10220:	faf42e23          	sw	a5,-68(s0)
   10224:	eff00793          	li	a5,-257
   10228:	faf42c23          	sw	a5,-72(s0)
   1022c:	fb842783          	lw	a5,-72(s0)
   10230:	fbc42703          	lw	a4,-68(s0)
   10234:	00fdfdb3          	and	s11,s11,a5
   10238:	00ededb3          	or	s11,s11,a4
   1023c:	fe042623          	sw	zero,-20(s0)
   10240:	0100006f          	j	10250 <main+0xb4>
   10244:	fec42783          	lw	a5,-20(s0)
   10248:	00178793          	addi	a5,a5,1
   1024c:	fef42623          	sw	a5,-20(s0)
   10250:	fec42703          	lw	a4,-20(s0)
   10254:	00b00793          	li	a5,11
   10258:	fee7d6e3          	bge	a5,a4,10244 <main+0xa8>
   1025c:	fb842783          	lw	a5,-72(s0)
   10260:	00fdfdb3          	and	s11,s11,a5
   10264:	000257b7          	lui	a5,0x25
   10268:	ee078513          	addi	a0,a5,-288 # 24ee0 <__clzsi2+0xa4>
   1026c:	055000ef          	jal	ra,10ac0 <puts>
   10270:	40000793          	li	a5,1024
   10274:	faf42a23          	sw	a5,-76(s0)
   10278:	bff00793          	li	a5,-1025
   1027c:	faf42823          	sw	a5,-80(s0)
   10280:	fb042783          	lw	a5,-80(s0)
   10284:	fb442703          	lw	a4,-76(s0)
   10288:	00fdfdb3          	and	s11,s11,a5
   1028c:	00ededb3          	or	s11,s11,a4
   10290:	000ded93          	ori	s11,s11,0
   10294:	00add793          	srli	a5,s11,0xa
   10298:	fef42423          	sw	a5,-24(s0)
   1029c:	fe842783          	lw	a5,-24(s0)
   102a0:	0017f793          	andi	a5,a5,1
   102a4:	00078593          	mv	a1,a5
   102a8:	000257b7          	lui	a5,0x25
   102ac:	f0c78513          	addi	a0,a5,-244 # 24f0c <__clzsi2+0xd0>
   102b0:	6ec000ef          	jal	ra,1099c <printf>
   102b4:	fe042223          	sw	zero,-28(s0)
   102b8:	fa042623          	sw	zero,-84(s0)
   102bc:	fa042423          	sw	zero,-88(s0)
   102c0:	fe842703          	lw	a4,-24(s0)
   102c4:	00100793          	li	a5,1
   102c8:	04f71c63          	bne	a4,a5,10320 <main+0x184>
   102cc:	00100793          	li	a5,1
   102d0:	fef42623          	sw	a5,-20(s0)
   102d4:	02c0006f          	j	10300 <main+0x164>
   102d8:	fb042783          	lw	a5,-80(s0)
   102dc:	fb442703          	lw	a4,-76(s0)
   102e0:	00fdfdb3          	and	s11,s11,a5
   102e4:	00ededb3          	or	s11,s11,a4
   102e8:	fe442783          	lw	a5,-28(s0)
   102ec:	00178793          	addi	a5,a5,1
   102f0:	fef42223          	sw	a5,-28(s0)
   102f4:	fec42783          	lw	a5,-20(s0)
   102f8:	00178793          	addi	a5,a5,1
   102fc:	fef42623          	sw	a5,-20(s0)
   10300:	fec42703          	lw	a4,-20(s0)
   10304:	01500793          	li	a5,21
   10308:	fce7d8e3          	bge	a5,a4,102d8 <main+0x13c>
   1030c:	fb042783          	lw	a5,-80(s0)
   10310:	00fdfdb3          	and	s11,s11,a5
   10314:	000ded93          	ori	s11,s11,0
   10318:	00add793          	srli	a5,s11,0xa
   1031c:	fef42423          	sw	a5,-24(s0)
   10320:	fe842783          	lw	a5,-24(s0)
   10324:	0017f793          	andi	a5,a5,1
   10328:	00078593          	mv	a1,a5
   1032c:	000257b7          	lui	a5,0x25
   10330:	f3078513          	addi	a0,a5,-208 # 24f30 <__clzsi2+0xf4>
   10334:	668000ef          	jal	ra,1099c <printf>
   10338:	fd042783          	lw	a5,-48(s0)
   1033c:	06400593          	li	a1,100
   10340:	00078513          	mv	a0,a5
   10344:	348000ef          	jal	ra,1068c <__divsi3>
   10348:	00050793          	mv	a5,a0
   1034c:	00078593          	mv	a1,a5
   10350:	fe442503          	lw	a0,-28(s0)
   10354:	df1ff0ef          	jal	ra,10144 <division>
   10358:	faa42423          	sw	a0,-88(s0)
   1035c:	fa842703          	lw	a4,-88(s0)
   10360:	00070793          	mv	a5,a4
   10364:	00379793          	slli	a5,a5,0x3
   10368:	40e787b3          	sub	a5,a5,a4
   1036c:	00279793          	slli	a5,a5,0x2
   10370:	40e787b3          	sub	a5,a5,a4
   10374:	00379793          	slli	a5,a5,0x3
   10378:	40e787b3          	sub	a5,a5,a4
   1037c:	00379793          	slli	a5,a5,0x3
   10380:	3e800593          	li	a1,1000
   10384:	00078513          	mv	a0,a5
   10388:	304000ef          	jal	ra,1068c <__divsi3>
   1038c:	00050793          	mv	a5,a0
   10390:	faf42623          	sw	a5,-84(s0)
   10394:	fac42583          	lw	a1,-84(s0)
   10398:	000257b7          	lui	a5,0x25
   1039c:	f6478513          	addi	a0,a5,-156 # 24f64 <__clzsi2+0x128>
   103a0:	5fc000ef          	jal	ra,1099c <printf>
   103a4:	00100793          	li	a5,1
   103a8:	fcf42023          	sw	a5,-64(s0)
   103ac:	fc042783          	lw	a5,-64(s0)
   103b0:	00979793          	slli	a5,a5,0x9
   103b4:	faf42e23          	sw	a5,-68(s0)
   103b8:	dff00793          	li	a5,-513
   103bc:	faf42223          	sw	a5,-92(s0)
   103c0:	fa442783          	lw	a5,-92(s0)
   103c4:	fbc42703          	lw	a4,-68(s0)
   103c8:	00fdfdb3          	and	s11,s11,a5
   103cc:	00ededb3          	or	s11,s11,a4
   103d0:	000ded93          	ori	s11,s11,0
   103d4:	009dd793          	srli	a5,s11,0x9
   103d8:	faf42023          	sw	a5,-96(s0)
   103dc:	fa042783          	lw	a5,-96(s0)
   103e0:	0017f793          	andi	a5,a5,1
   103e4:	00078593          	mv	a1,a5
   103e8:	000257b7          	lui	a5,0x25
   103ec:	f8c78513          	addi	a0,a5,-116 # 24f8c <__clzsi2+0x150>
   103f0:	5ac000ef          	jal	ra,1099c <printf>
   103f4:	fe042623          	sw	zero,-20(s0)
   103f8:	0100006f          	j	10408 <main+0x26c>
   103fc:	fec42783          	lw	a5,-20(s0)
   10400:	00178793          	addi	a5,a5,1
   10404:	fef42623          	sw	a5,-20(s0)
   10408:	fec42703          	lw	a4,-20(s0)
   1040c:	00b00793          	li	a5,11
   10410:	fee7d6e3          	bge	a5,a4,103fc <main+0x260>
   10414:	fa442783          	lw	a5,-92(s0)
   10418:	00fdfdb3          	and	s11,s11,a5
   1041c:	000257b7          	lui	a5,0x25
   10420:	fb478513          	addi	a0,a5,-76 # 24fb4 <__clzsi2+0x178>
   10424:	69c000ef          	jal	ra,10ac0 <puts>
   10428:	000017b7          	lui	a5,0x1
   1042c:	80078793          	addi	a5,a5,-2048 # 800 <register_fini-0xf874>
   10430:	f8f42e23          	sw	a5,-100(s0)
   10434:	fffff7b7          	lui	a5,0xfffff
   10438:	7ff78793          	addi	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffd8d17>
   1043c:	f8f42c23          	sw	a5,-104(s0)
   10440:	f9842783          	lw	a5,-104(s0)
   10444:	f9c42703          	lw	a4,-100(s0)
   10448:	00fdfdb3          	and	s11,s11,a5
   1044c:	00ededb3          	or	s11,s11,a4
   10450:	000ded93          	ori	s11,s11,0
   10454:	00bdd793          	srli	a5,s11,0xb
   10458:	fef42023          	sw	a5,-32(s0)
   1045c:	fe042583          	lw	a1,-32(s0)
   10460:	000257b7          	lui	a5,0x25
   10464:	fe078513          	addi	a0,a5,-32 # 24fe0 <__clzsi2+0x1a4>
   10468:	534000ef          	jal	ra,1099c <printf>
   1046c:	fc042e23          	sw	zero,-36(s0)
   10470:	f8042a23          	sw	zero,-108(s0)
   10474:	f8042823          	sw	zero,-112(s0)
   10478:	fe042703          	lw	a4,-32(s0)
   1047c:	00100793          	li	a5,1
   10480:	06f71263          	bne	a4,a5,104e4 <main+0x348>
   10484:	00100793          	li	a5,1
   10488:	fef42623          	sw	a5,-20(s0)
   1048c:	0380006f          	j	104c4 <main+0x328>
   10490:	000017b7          	lui	a5,0x1
   10494:	80078793          	addi	a5,a5,-2048 # 800 <register_fini-0xf874>
   10498:	f8f42623          	sw	a5,-116(s0)
   1049c:	f9842783          	lw	a5,-104(s0)
   104a0:	f8c42703          	lw	a4,-116(s0)
   104a4:	00fdfdb3          	and	s11,s11,a5
   104a8:	00ededb3          	or	s11,s11,a4
   104ac:	fdc42783          	lw	a5,-36(s0)
   104b0:	00178793          	addi	a5,a5,1
   104b4:	fcf42e23          	sw	a5,-36(s0)
   104b8:	fec42783          	lw	a5,-20(s0)
   104bc:	00178793          	addi	a5,a5,1
   104c0:	fef42623          	sw	a5,-20(s0)
   104c4:	fec42703          	lw	a4,-20(s0)
   104c8:	01500793          	li	a5,21
   104cc:	fce7d2e3          	bge	a5,a4,10490 <main+0x2f4>
   104d0:	f9842783          	lw	a5,-104(s0)
   104d4:	00fdfdb3          	and	s11,s11,a5
   104d8:	000ded93          	ori	s11,s11,0
   104dc:	00bdd793          	srli	a5,s11,0xb
   104e0:	fef42023          	sw	a5,-32(s0)
   104e4:	fe042783          	lw	a5,-32(s0)
   104e8:	0017f793          	andi	a5,a5,1
   104ec:	00078593          	mv	a1,a5
   104f0:	000257b7          	lui	a5,0x25
   104f4:	ff478513          	addi	a0,a5,-12 # 24ff4 <__clzsi2+0x1b8>
   104f8:	4a4000ef          	jal	ra,1099c <printf>
   104fc:	fd042783          	lw	a5,-48(s0)
   10500:	06400593          	li	a1,100
   10504:	00078513          	mv	a0,a5
   10508:	184000ef          	jal	ra,1068c <__divsi3>
   1050c:	00050793          	mv	a5,a0
   10510:	00078593          	mv	a1,a5
   10514:	fdc42503          	lw	a0,-36(s0)
   10518:	c2dff0ef          	jal	ra,10144 <division>
   1051c:	f8a42823          	sw	a0,-112(s0)
   10520:	f9042703          	lw	a4,-112(s0)
   10524:	00070793          	mv	a5,a4
   10528:	00379793          	slli	a5,a5,0x3
   1052c:	40e787b3          	sub	a5,a5,a4
   10530:	00279793          	slli	a5,a5,0x2
   10534:	40e787b3          	sub	a5,a5,a4
   10538:	00379793          	slli	a5,a5,0x3
   1053c:	40e787b3          	sub	a5,a5,a4
   10540:	00379793          	slli	a5,a5,0x3
   10544:	3e800593          	li	a1,1000
   10548:	00078513          	mv	a0,a5
   1054c:	140000ef          	jal	ra,1068c <__divsi3>
   10550:	00050793          	mv	a5,a0
   10554:	f8f42a23          	sw	a5,-108(s0)
   10558:	f9442583          	lw	a1,-108(s0)
   1055c:	000257b7          	lui	a5,0x25
   10560:	02878513          	addi	a0,a5,40 # 25028 <__clzsi2+0x1ec>
   10564:	438000ef          	jal	ra,1099c <printf>
   10568:	fffff7b7          	lui	a5,0xfffff
   1056c:	fff78793          	addi	a5,a5,-1 # ffffefff <__BSS_END__+0xfffd8517>
   10570:	f8f42423          	sw	a5,-120(s0)
   10574:	ffffe7b7          	lui	a5,0xffffe
   10578:	fff78793          	addi	a5,a5,-1 # ffffdfff <__BSS_END__+0xfffd7517>
   1057c:	f8f42223          	sw	a5,-124(s0)
   10580:	fac42703          	lw	a4,-84(s0)
   10584:	f9442783          	lw	a5,-108(s0)
   10588:	40f707b3          	sub	a5,a4,a5
   1058c:	fcc42703          	lw	a4,-52(s0)
   10590:	00f74a63          	blt	a4,a5,105a4 <main+0x408>
   10594:	000257b7          	lui	a5,0x25
   10598:	05078513          	addi	a0,a5,80 # 25050 <__clzsi2+0x214>
   1059c:	524000ef          	jal	ra,10ac0 <puts>
   105a0:	0580006f          	j	105f8 <main+0x45c>
   105a4:	00100793          	li	a5,1
   105a8:	f8f42023          	sw	a5,-128(s0)
   105ac:	f8042783          	lw	a5,-128(s0)
   105b0:	00c79793          	slli	a5,a5,0xc
   105b4:	f6f42e23          	sw	a5,-132(s0)
   105b8:	f8842783          	lw	a5,-120(s0)
   105bc:	f7c42703          	lw	a4,-132(s0)
   105c0:	00fdfdb3          	and	s11,s11,a5
   105c4:	00ededb3          	or	s11,s11,a4
   105c8:	00100793          	li	a5,1
   105cc:	f6f42c23          	sw	a5,-136(s0)
   105d0:	f7842783          	lw	a5,-136(s0)
   105d4:	00d79793          	slli	a5,a5,0xd
   105d8:	f6f42a23          	sw	a5,-140(s0)
   105dc:	f8442783          	lw	a5,-124(s0)
   105e0:	f7442703          	lw	a4,-140(s0)
   105e4:	00fdfdb3          	and	s11,s11,a5
   105e8:	00ededb3          	or	s11,s11,a4
   105ec:	000257b7          	lui	a5,0x25
   105f0:	06078513          	addi	a0,a5,96 # 25060 <__clzsi2+0x224>
   105f4:	4cc000ef          	jal	ra,10ac0 <puts>
   105f8:	000ded93          	ori	s11,s11,0
   105fc:	00cdd713          	srli	a4,s11,0xc
   10600:	00ddd793          	srli	a5,s11,0xd
   10604:	f6e42823          	sw	a4,-144(s0)
   10608:	f6f42623          	sw	a5,-148(s0)
   1060c:	f7042783          	lw	a5,-144(s0)
   10610:	0017f793          	andi	a5,a5,1
   10614:	00078593          	mv	a1,a5
   10618:	000257b7          	lui	a5,0x25
   1061c:	08878513          	addi	a0,a5,136 # 25088 <__clzsi2+0x24c>
   10620:	37c000ef          	jal	ra,1099c <printf>
   10624:	f6c42783          	lw	a5,-148(s0)
   10628:	0017f793          	andi	a5,a5,1
   1062c:	00078593          	mv	a1,a5
   10630:	000257b7          	lui	a5,0x25
   10634:	0a878513          	addi	a0,a5,168 # 250a8 <__clzsi2+0x26c>
   10638:	364000ef          	jal	ra,1099c <printf>
   1063c:	f8842783          	lw	a5,-120(s0)
   10640:	00fdfdb3          	and	s11,s11,a5
   10644:	f8442783          	lw	a5,-124(s0)
   10648:	00fdfdb3          	and	s11,s11,a5
   1064c:	fe042623          	sw	zero,-20(s0)
   10650:	0100006f          	j	10660 <main+0x4c4>
   10654:	fec42783          	lw	a5,-20(s0)
   10658:	00178793          	addi	a5,a5,1
   1065c:	fef42623          	sw	a5,-20(s0)
   10660:	fc442703          	lw	a4,-60(s0)
   10664:	00070793          	mv	a5,a4
   10668:	00579793          	slli	a5,a5,0x5
   1066c:	40e787b3          	sub	a5,a5,a4
   10670:	00279793          	slli	a5,a5,0x2
   10674:	00e787b3          	add	a5,a5,a4
   10678:	00379793          	slli	a5,a5,0x3
   1067c:	00078713          	mv	a4,a5
   10680:	fec42783          	lw	a5,-20(s0)
   10684:	fcf758e3          	bge	a4,a5,10654 <main+0x4b8>
   10688:	b89ff06f          	j	10210 <main+0x74>

0001068c <__divsi3>:
   1068c:	06054063          	bltz	a0,106ec <__umodsi3+0x10>
   10690:	0605c663          	bltz	a1,106fc <__umodsi3+0x20>

00010694 <__udivsi3>:
   10694:	00058613          	mv	a2,a1
   10698:	00050593          	mv	a1,a0
   1069c:	fff00513          	li	a0,-1
   106a0:	02060c63          	beqz	a2,106d8 <__udivsi3+0x44>
   106a4:	00100693          	li	a3,1
   106a8:	00b67a63          	bgeu	a2,a1,106bc <__udivsi3+0x28>
   106ac:	00c05863          	blez	a2,106bc <__udivsi3+0x28>
   106b0:	00161613          	slli	a2,a2,0x1
   106b4:	00169693          	slli	a3,a3,0x1
   106b8:	feb66ae3          	bltu	a2,a1,106ac <__udivsi3+0x18>
   106bc:	00000513          	li	a0,0
   106c0:	00c5e663          	bltu	a1,a2,106cc <__udivsi3+0x38>
   106c4:	40c585b3          	sub	a1,a1,a2
   106c8:	00d56533          	or	a0,a0,a3
   106cc:	0016d693          	srli	a3,a3,0x1
   106d0:	00165613          	srli	a2,a2,0x1
   106d4:	fe0696e3          	bnez	a3,106c0 <__udivsi3+0x2c>
   106d8:	00008067          	ret

000106dc <__umodsi3>:
   106dc:	00008293          	mv	t0,ra
   106e0:	fb5ff0ef          	jal	ra,10694 <__udivsi3>
   106e4:	00058513          	mv	a0,a1
   106e8:	00028067          	jr	t0
   106ec:	40a00533          	neg	a0,a0
   106f0:	0005d863          	bgez	a1,10700 <__umodsi3+0x24>
   106f4:	40b005b3          	neg	a1,a1
   106f8:	f9dff06f          	j	10694 <__udivsi3>
   106fc:	40b005b3          	neg	a1,a1
   10700:	00008293          	mv	t0,ra
   10704:	f91ff0ef          	jal	ra,10694 <__udivsi3>
   10708:	40a00533          	neg	a0,a0
   1070c:	00028067          	jr	t0

00010710 <__modsi3>:
   10710:	00008293          	mv	t0,ra
   10714:	0005ca63          	bltz	a1,10728 <__modsi3+0x18>
   10718:	00054c63          	bltz	a0,10730 <__modsi3+0x20>
   1071c:	f79ff0ef          	jal	ra,10694 <__udivsi3>
   10720:	00058513          	mv	a0,a1
   10724:	00028067          	jr	t0
   10728:	40b005b3          	neg	a1,a1
   1072c:	fe0558e3          	bgez	a0,1071c <__modsi3+0xc>
   10730:	40a00533          	neg	a0,a0
   10734:	f61ff0ef          	jal	ra,10694 <__udivsi3>
   10738:	40b00533          	neg	a0,a1
   1073c:	00028067          	jr	t0

00010740 <atexit>:
   10740:	00050593          	mv	a1,a0
   10744:	00000693          	li	a3,0
   10748:	00000613          	li	a2,0
   1074c:	00000513          	li	a0,0
   10750:	1380306f          	j	13888 <__register_exitproc>

00010754 <exit>:
   10754:	ff010113          	addi	sp,sp,-16
   10758:	00000593          	li	a1,0
   1075c:	00812423          	sw	s0,8(sp)
   10760:	00112623          	sw	ra,12(sp)
   10764:	00050413          	mv	s0,a0
   10768:	1bc030ef          	jal	ra,13924 <__call_exitprocs>
   1076c:	1b818793          	addi	a5,gp,440 # 26a78 <_global_impure_ptr>
   10770:	0007a503          	lw	a0,0(a5)
   10774:	03c52783          	lw	a5,60(a0)
   10778:	00078463          	beqz	a5,10780 <exit+0x2c>
   1077c:	000780e7          	jalr	a5
   10780:	00040513          	mv	a0,s0
   10784:	5e80f0ef          	jal	ra,1fd6c <_exit>

00010788 <__libc_fini_array>:
   10788:	ff010113          	addi	sp,sp,-16
   1078c:	00812423          	sw	s0,8(sp)
   10790:	00016797          	auipc	a5,0x16
   10794:	92c78793          	addi	a5,a5,-1748 # 260bc <__init_array_end>
   10798:	00016417          	auipc	s0,0x16
   1079c:	92840413          	addi	s0,s0,-1752 # 260c0 <__fini_array_end>
   107a0:	40f40433          	sub	s0,s0,a5
   107a4:	00112623          	sw	ra,12(sp)
   107a8:	00912223          	sw	s1,4(sp)
   107ac:	40245413          	srai	s0,s0,0x2
   107b0:	02040263          	beqz	s0,107d4 <__libc_fini_array+0x4c>
   107b4:	00241493          	slli	s1,s0,0x2
   107b8:	ffc48493          	addi	s1,s1,-4
   107bc:	00f484b3          	add	s1,s1,a5
   107c0:	0004a783          	lw	a5,0(s1)
   107c4:	fff40413          	addi	s0,s0,-1
   107c8:	ffc48493          	addi	s1,s1,-4
   107cc:	000780e7          	jalr	a5
   107d0:	fe0418e3          	bnez	s0,107c0 <__libc_fini_array+0x38>
   107d4:	00c12083          	lw	ra,12(sp)
   107d8:	00812403          	lw	s0,8(sp)
   107dc:	00412483          	lw	s1,4(sp)
   107e0:	01010113          	addi	sp,sp,16
   107e4:	00008067          	ret

000107e8 <__libc_init_array>:
   107e8:	ff010113          	addi	sp,sp,-16
   107ec:	00812423          	sw	s0,8(sp)
   107f0:	01212023          	sw	s2,0(sp)
   107f4:	00016417          	auipc	s0,0x16
   107f8:	8c040413          	addi	s0,s0,-1856 # 260b4 <__init_array_start>
   107fc:	00016917          	auipc	s2,0x16
   10800:	8b890913          	addi	s2,s2,-1864 # 260b4 <__init_array_start>
   10804:	40890933          	sub	s2,s2,s0
   10808:	00112623          	sw	ra,12(sp)
   1080c:	00912223          	sw	s1,4(sp)
   10810:	40295913          	srai	s2,s2,0x2
   10814:	00090e63          	beqz	s2,10830 <__libc_init_array+0x48>
   10818:	00000493          	li	s1,0
   1081c:	00042783          	lw	a5,0(s0)
   10820:	00148493          	addi	s1,s1,1
   10824:	00440413          	addi	s0,s0,4
   10828:	000780e7          	jalr	a5
   1082c:	fe9918e3          	bne	s2,s1,1081c <__libc_init_array+0x34>
   10830:	00016417          	auipc	s0,0x16
   10834:	88440413          	addi	s0,s0,-1916 # 260b4 <__init_array_start>
   10838:	00016917          	auipc	s2,0x16
   1083c:	88490913          	addi	s2,s2,-1916 # 260bc <__init_array_end>
   10840:	40890933          	sub	s2,s2,s0
   10844:	40295913          	srai	s2,s2,0x2
   10848:	00090e63          	beqz	s2,10864 <__libc_init_array+0x7c>
   1084c:	00000493          	li	s1,0
   10850:	00042783          	lw	a5,0(s0)
   10854:	00148493          	addi	s1,s1,1
   10858:	00440413          	addi	s0,s0,4
   1085c:	000780e7          	jalr	a5
   10860:	fe9918e3          	bne	s2,s1,10850 <__libc_init_array+0x68>
   10864:	00c12083          	lw	ra,12(sp)
   10868:	00812403          	lw	s0,8(sp)
   1086c:	00412483          	lw	s1,4(sp)
   10870:	00012903          	lw	s2,0(sp)
   10874:	01010113          	addi	sp,sp,16
   10878:	00008067          	ret

0001087c <memset>:
   1087c:	00f00313          	li	t1,15
   10880:	00050713          	mv	a4,a0
   10884:	02c37e63          	bgeu	t1,a2,108c0 <memset+0x44>
   10888:	00f77793          	andi	a5,a4,15
   1088c:	0a079063          	bnez	a5,1092c <memset+0xb0>
   10890:	08059263          	bnez	a1,10914 <memset+0x98>
   10894:	ff067693          	andi	a3,a2,-16
   10898:	00f67613          	andi	a2,a2,15
   1089c:	00e686b3          	add	a3,a3,a4
   108a0:	00b72023          	sw	a1,0(a4)
   108a4:	00b72223          	sw	a1,4(a4)
   108a8:	00b72423          	sw	a1,8(a4)
   108ac:	00b72623          	sw	a1,12(a4)
   108b0:	01070713          	addi	a4,a4,16
   108b4:	fed766e3          	bltu	a4,a3,108a0 <memset+0x24>
   108b8:	00061463          	bnez	a2,108c0 <memset+0x44>
   108bc:	00008067          	ret
   108c0:	40c306b3          	sub	a3,t1,a2
   108c4:	00269693          	slli	a3,a3,0x2
   108c8:	00000297          	auipc	t0,0x0
   108cc:	005686b3          	add	a3,a3,t0
   108d0:	00c68067          	jr	12(a3)
   108d4:	00b70723          	sb	a1,14(a4)
   108d8:	00b706a3          	sb	a1,13(a4)
   108dc:	00b70623          	sb	a1,12(a4)
   108e0:	00b705a3          	sb	a1,11(a4)
   108e4:	00b70523          	sb	a1,10(a4)
   108e8:	00b704a3          	sb	a1,9(a4)
   108ec:	00b70423          	sb	a1,8(a4)
   108f0:	00b703a3          	sb	a1,7(a4)
   108f4:	00b70323          	sb	a1,6(a4)
   108f8:	00b702a3          	sb	a1,5(a4)
   108fc:	00b70223          	sb	a1,4(a4)
   10900:	00b701a3          	sb	a1,3(a4)
   10904:	00b70123          	sb	a1,2(a4)
   10908:	00b700a3          	sb	a1,1(a4)
   1090c:	00b70023          	sb	a1,0(a4)
   10910:	00008067          	ret
   10914:	0ff5f593          	andi	a1,a1,255
   10918:	00859693          	slli	a3,a1,0x8
   1091c:	00d5e5b3          	or	a1,a1,a3
   10920:	01059693          	slli	a3,a1,0x10
   10924:	00d5e5b3          	or	a1,a1,a3
   10928:	f6dff06f          	j	10894 <memset+0x18>
   1092c:	00279693          	slli	a3,a5,0x2
   10930:	00000297          	auipc	t0,0x0
   10934:	005686b3          	add	a3,a3,t0
   10938:	00008293          	mv	t0,ra
   1093c:	fa0680e7          	jalr	-96(a3)
   10940:	00028093          	mv	ra,t0
   10944:	ff078793          	addi	a5,a5,-16
   10948:	40f70733          	sub	a4,a4,a5
   1094c:	00f60633          	add	a2,a2,a5
   10950:	f6c378e3          	bgeu	t1,a2,108c0 <memset+0x44>
   10954:	f3dff06f          	j	10890 <memset+0x14>

00010958 <_printf_r>:
   10958:	fc010113          	addi	sp,sp,-64
   1095c:	02c12423          	sw	a2,40(sp)
   10960:	02d12623          	sw	a3,44(sp)
   10964:	02f12a23          	sw	a5,52(sp)
   10968:	02e12823          	sw	a4,48(sp)
   1096c:	03012c23          	sw	a6,56(sp)
   10970:	03112e23          	sw	a7,60(sp)
   10974:	00058613          	mv	a2,a1
   10978:	00852583          	lw	a1,8(a0)
   1097c:	02810793          	addi	a5,sp,40
   10980:	00078693          	mv	a3,a5
   10984:	00112e23          	sw	ra,28(sp)
   10988:	00f12623          	sw	a5,12(sp)
   1098c:	1d0000ef          	jal	ra,10b5c <_vfprintf_r>
   10990:	01c12083          	lw	ra,28(sp)
   10994:	04010113          	addi	sp,sp,64
   10998:	00008067          	ret

0001099c <printf>:
   1099c:	1c018313          	addi	t1,gp,448 # 26a80 <_impure_ptr>
   109a0:	00032303          	lw	t1,0(t1) # 10138 <frame_dummy+0x18>
   109a4:	fc010113          	addi	sp,sp,-64
   109a8:	02c12423          	sw	a2,40(sp)
   109ac:	02d12623          	sw	a3,44(sp)
   109b0:	02f12a23          	sw	a5,52(sp)
   109b4:	02b12223          	sw	a1,36(sp)
   109b8:	02e12823          	sw	a4,48(sp)
   109bc:	03012c23          	sw	a6,56(sp)
   109c0:	03112e23          	sw	a7,60(sp)
   109c4:	00832583          	lw	a1,8(t1)
   109c8:	02410793          	addi	a5,sp,36
   109cc:	00050613          	mv	a2,a0
   109d0:	00078693          	mv	a3,a5
   109d4:	00030513          	mv	a0,t1
   109d8:	00112e23          	sw	ra,28(sp)
   109dc:	00f12623          	sw	a5,12(sp)
   109e0:	17c000ef          	jal	ra,10b5c <_vfprintf_r>
   109e4:	01c12083          	lw	ra,28(sp)
   109e8:	04010113          	addi	sp,sp,64
   109ec:	00008067          	ret

000109f0 <_puts_r>:
   109f0:	fc010113          	addi	sp,sp,-64
   109f4:	02812c23          	sw	s0,56(sp)
   109f8:	00050413          	mv	s0,a0
   109fc:	00058513          	mv	a0,a1
   10a00:	02912a23          	sw	s1,52(sp)
   10a04:	02112e23          	sw	ra,60(sp)
   10a08:	00058493          	mv	s1,a1
   10a0c:	0c4000ef          	jal	ra,10ad0 <strlen>
   10a10:	00150713          	addi	a4,a0,1
   10a14:	00014697          	auipc	a3,0x14
   10a18:	6b068693          	addi	a3,a3,1712 # 250c4 <__clzsi2+0x288>
   10a1c:	00e12e23          	sw	a4,28(sp)
   10a20:	03842783          	lw	a5,56(s0)
   10a24:	02010713          	addi	a4,sp,32
   10a28:	02d12423          	sw	a3,40(sp)
   10a2c:	00e12a23          	sw	a4,20(sp)
   10a30:	00100693          	li	a3,1
   10a34:	00200713          	li	a4,2
   10a38:	02912023          	sw	s1,32(sp)
   10a3c:	02a12223          	sw	a0,36(sp)
   10a40:	02d12623          	sw	a3,44(sp)
   10a44:	00e12c23          	sw	a4,24(sp)
   10a48:	00842583          	lw	a1,8(s0)
   10a4c:	06078063          	beqz	a5,10aac <_puts_r+0xbc>
   10a50:	00c59783          	lh	a5,12(a1)
   10a54:	01279713          	slli	a4,a5,0x12
   10a58:	02074263          	bltz	a4,10a7c <_puts_r+0x8c>
   10a5c:	0645a703          	lw	a4,100(a1)
   10a60:	000026b7          	lui	a3,0x2
   10a64:	00d7e7b3          	or	a5,a5,a3
   10a68:	ffffe6b7          	lui	a3,0xffffe
   10a6c:	fff68693          	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffd7517>
   10a70:	00d77733          	and	a4,a4,a3
   10a74:	00f59623          	sh	a5,12(a1)
   10a78:	06e5a223          	sw	a4,100(a1)
   10a7c:	01410613          	addi	a2,sp,20
   10a80:	00040513          	mv	a0,s0
   10a84:	239030ef          	jal	ra,144bc <__sfvwrite_r>
   10a88:	03c12083          	lw	ra,60(sp)
   10a8c:	03812403          	lw	s0,56(sp)
   10a90:	00a03533          	snez	a0,a0
   10a94:	40a00533          	neg	a0,a0
   10a98:	ff557513          	andi	a0,a0,-11
   10a9c:	03412483          	lw	s1,52(sp)
   10aa0:	00a50513          	addi	a0,a0,10
   10aa4:	04010113          	addi	sp,sp,64
   10aa8:	00008067          	ret
   10aac:	00040513          	mv	a0,s0
   10ab0:	00b12623          	sw	a1,12(sp)
   10ab4:	5a0030ef          	jal	ra,14054 <__sinit>
   10ab8:	00c12583          	lw	a1,12(sp)
   10abc:	f95ff06f          	j	10a50 <_puts_r+0x60>

00010ac0 <puts>:
   10ac0:	1c018793          	addi	a5,gp,448 # 26a80 <_impure_ptr>
   10ac4:	00050593          	mv	a1,a0
   10ac8:	0007a503          	lw	a0,0(a5)
   10acc:	f25ff06f          	j	109f0 <_puts_r>

00010ad0 <strlen>:
   10ad0:	00357793          	andi	a5,a0,3
   10ad4:	00050713          	mv	a4,a0
   10ad8:	04079c63          	bnez	a5,10b30 <strlen+0x60>
   10adc:	7f7f86b7          	lui	a3,0x7f7f8
   10ae0:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <__BSS_END__+0x7f7d1497>
   10ae4:	fff00593          	li	a1,-1
   10ae8:	00470713          	addi	a4,a4,4
   10aec:	ffc72603          	lw	a2,-4(a4)
   10af0:	00d677b3          	and	a5,a2,a3
   10af4:	00d787b3          	add	a5,a5,a3
   10af8:	00c7e7b3          	or	a5,a5,a2
   10afc:	00d7e7b3          	or	a5,a5,a3
   10b00:	feb784e3          	beq	a5,a1,10ae8 <strlen+0x18>
   10b04:	ffc74683          	lbu	a3,-4(a4)
   10b08:	40a707b3          	sub	a5,a4,a0
   10b0c:	ffd74603          	lbu	a2,-3(a4)
   10b10:	ffe74503          	lbu	a0,-2(a4)
   10b14:	04068063          	beqz	a3,10b54 <strlen+0x84>
   10b18:	02060a63          	beqz	a2,10b4c <strlen+0x7c>
   10b1c:	00a03533          	snez	a0,a0
   10b20:	00f50533          	add	a0,a0,a5
   10b24:	ffe50513          	addi	a0,a0,-2
   10b28:	00008067          	ret
   10b2c:	fa0688e3          	beqz	a3,10adc <strlen+0xc>
   10b30:	00074783          	lbu	a5,0(a4)
   10b34:	00170713          	addi	a4,a4,1
   10b38:	00377693          	andi	a3,a4,3
   10b3c:	fe0798e3          	bnez	a5,10b2c <strlen+0x5c>
   10b40:	40a70733          	sub	a4,a4,a0
   10b44:	fff70513          	addi	a0,a4,-1
   10b48:	00008067          	ret
   10b4c:	ffd78513          	addi	a0,a5,-3
   10b50:	00008067          	ret
   10b54:	ffc78513          	addi	a0,a5,-4
   10b58:	00008067          	ret

00010b5c <_vfprintf_r>:
   10b5c:	e1010113          	addi	sp,sp,-496
   10b60:	1e112623          	sw	ra,492(sp)
   10b64:	1e812423          	sw	s0,488(sp)
   10b68:	1d912223          	sw	s9,452(sp)
   10b6c:	00b12223          	sw	a1,4(sp)
   10b70:	00060c93          	mv	s9,a2
   10b74:	00d12623          	sw	a3,12(sp)
   10b78:	1e912223          	sw	s1,484(sp)
   10b7c:	1f212023          	sw	s2,480(sp)
   10b80:	1d312e23          	sw	s3,476(sp)
   10b84:	1d412c23          	sw	s4,472(sp)
   10b88:	1d512a23          	sw	s5,468(sp)
   10b8c:	1d612823          	sw	s6,464(sp)
   10b90:	1d712623          	sw	s7,460(sp)
   10b94:	1d812423          	sw	s8,456(sp)
   10b98:	1da12023          	sw	s10,448(sp)
   10b9c:	1bb12e23          	sw	s11,444(sp)
   10ba0:	00050413          	mv	s0,a0
   10ba4:	00a12e23          	sw	a0,28(sp)
   10ba8:	2bd060ef          	jal	ra,17664 <_localeconv_r>
   10bac:	00052783          	lw	a5,0(a0)
   10bb0:	00078513          	mv	a0,a5
   10bb4:	02f12823          	sw	a5,48(sp)
   10bb8:	f19ff0ef          	jal	ra,10ad0 <strlen>
   10bbc:	02a12423          	sw	a0,40(sp)
   10bc0:	0e012823          	sw	zero,240(sp)
   10bc4:	0e012a23          	sw	zero,244(sp)
   10bc8:	0e012c23          	sw	zero,248(sp)
   10bcc:	0e012e23          	sw	zero,252(sp)
   10bd0:	00040663          	beqz	s0,10bdc <_vfprintf_r+0x80>
   10bd4:	03842783          	lw	a5,56(s0)
   10bd8:	56078ae3          	beqz	a5,1194c <_vfprintf_r+0xdf0>
   10bdc:	00412603          	lw	a2,4(sp)
   10be0:	00c61703          	lh	a4,12(a2)
   10be4:	01071793          	slli	a5,a4,0x10
   10be8:	0107d793          	srli	a5,a5,0x10
   10bec:	01279693          	slli	a3,a5,0x12
   10bf0:	0206c663          	bltz	a3,10c1c <_vfprintf_r+0xc0>
   10bf4:	06462683          	lw	a3,100(a2)
   10bf8:	000027b7          	lui	a5,0x2
   10bfc:	00f767b3          	or	a5,a4,a5
   10c00:	ffffe737          	lui	a4,0xffffe
   10c04:	fff70713          	addi	a4,a4,-1 # ffffdfff <__BSS_END__+0xfffd7517>
   10c08:	00e6f733          	and	a4,a3,a4
   10c0c:	00f61623          	sh	a5,12(a2)
   10c10:	01079793          	slli	a5,a5,0x10
   10c14:	06e62223          	sw	a4,100(a2)
   10c18:	0107d793          	srli	a5,a5,0x10
   10c1c:	0087f713          	andi	a4,a5,8
   10c20:	16070463          	beqz	a4,10d88 <_vfprintf_r+0x22c>
   10c24:	00412703          	lw	a4,4(sp)
   10c28:	01072703          	lw	a4,16(a4)
   10c2c:	14070e63          	beqz	a4,10d88 <_vfprintf_r+0x22c>
   10c30:	01a7f793          	andi	a5,a5,26
   10c34:	00a00713          	li	a4,10
   10c38:	16e78c63          	beq	a5,a4,10db0 <_vfprintf_r+0x254>
   10c3c:	10c10793          	addi	a5,sp,268
   10c40:	000c8d13          	mv	s10,s9
   10c44:	0ef12223          	sw	a5,228(sp)
   10c48:	00078d93          	mv	s11,a5
   10c4c:	000d4783          	lbu	a5,0(s10)
   10c50:	0e012623          	sw	zero,236(sp)
   10c54:	0e012423          	sw	zero,232(sp)
   10c58:	00012c23          	sw	zero,24(sp)
   10c5c:	02012623          	sw	zero,44(sp)
   10c60:	02012c23          	sw	zero,56(sp)
   10c64:	02012e23          	sw	zero,60(sp)
   10c68:	04012023          	sw	zero,64(sp)
   10c6c:	04012223          	sw	zero,68(sp)
   10c70:	00012423          	sw	zero,8(sp)
   10c74:	01000c13          	li	s8,16
   10c78:	01c12a83          	lw	s5,28(sp)
   10c7c:	3e078463          	beqz	a5,11064 <_vfprintf_r+0x508>
   10c80:	02500713          	li	a4,37
   10c84:	00e79463          	bne	a5,a4,10c8c <_vfprintf_r+0x130>
   10c88:	7340106f          	j	123bc <_vfprintf_r+0x1860>
   10c8c:	000d0413          	mv	s0,s10
   10c90:	00c0006f          	j	10c9c <_vfprintf_r+0x140>
   10c94:	14e78263          	beq	a5,a4,10dd8 <_vfprintf_r+0x27c>
   10c98:	00048413          	mv	s0,s1
   10c9c:	00144783          	lbu	a5,1(s0)
   10ca0:	00140493          	addi	s1,s0,1
   10ca4:	fe0798e3          	bnez	a5,10c94 <_vfprintf_r+0x138>
   10ca8:	41a48933          	sub	s2,s1,s10
   10cac:	3a090c63          	beqz	s2,11064 <_vfprintf_r+0x508>
   10cb0:	0ec12703          	lw	a4,236(sp)
   10cb4:	0e812783          	lw	a5,232(sp)
   10cb8:	01ada023          	sw	s10,0(s11)
   10cbc:	01270733          	add	a4,a4,s2
   10cc0:	00178793          	addi	a5,a5,1 # 2001 <register_fini-0xe073>
   10cc4:	012da223          	sw	s2,4(s11)
   10cc8:	0ee12623          	sw	a4,236(sp)
   10ccc:	0ef12423          	sw	a5,232(sp)
   10cd0:	00700713          	li	a4,7
   10cd4:	008d8d93          	addi	s11,s11,8
   10cd8:	10f74663          	blt	a4,a5,10de4 <_vfprintf_r+0x288>
   10cdc:	00812703          	lw	a4,8(sp)
   10ce0:	00144783          	lbu	a5,1(s0)
   10ce4:	01270733          	add	a4,a4,s2
   10ce8:	00e12423          	sw	a4,8(sp)
   10cec:	36078c63          	beqz	a5,11064 <_vfprintf_r+0x508>
   10cf0:	00148913          	addi	s2,s1,1
   10cf4:	0014c403          	lbu	s0,1(s1)
   10cf8:	0c0103a3          	sb	zero,199(sp)
   10cfc:	fff00b13          	li	s6,-1
   10d00:	00000493          	li	s1,0
   10d04:	00000993          	li	s3,0
   10d08:	00900a13          	li	s4,9
   10d0c:	02a00b93          	li	s7,42
   10d10:	00190913          	addi	s2,s2,1
   10d14:	05a00713          	li	a4,90
   10d18:	fe040793          	addi	a5,s0,-32
   10d1c:	22f76c63          	bltu	a4,a5,10f54 <_vfprintf_r+0x3f8>
   10d20:	00014697          	auipc	a3,0x14
   10d24:	3a868693          	addi	a3,a3,936 # 250c8 <__clzsi2+0x28c>
   10d28:	00279793          	slli	a5,a5,0x2
   10d2c:	00d787b3          	add	a5,a5,a3
   10d30:	0007a783          	lw	a5,0(a5)
   10d34:	00d787b3          	add	a5,a5,a3
   10d38:	00078067          	jr	a5
   10d3c:	000a8513          	mv	a0,s5
   10d40:	125060ef          	jal	ra,17664 <_localeconv_r>
   10d44:	00452783          	lw	a5,4(a0)
   10d48:	00078513          	mv	a0,a5
   10d4c:	04f12223          	sw	a5,68(sp)
   10d50:	d81ff0ef          	jal	ra,10ad0 <strlen>
   10d54:	04a12023          	sw	a0,64(sp)
   10d58:	00050413          	mv	s0,a0
   10d5c:	000a8513          	mv	a0,s5
   10d60:	105060ef          	jal	ra,17664 <_localeconv_r>
   10d64:	00852783          	lw	a5,8(a0)
   10d68:	02f12e23          	sw	a5,60(sp)
   10d6c:	00040463          	beqz	s0,10d74 <_vfprintf_r+0x218>
   10d70:	4ec0106f          	j	1225c <_vfprintf_r+0x1700>
   10d74:	00094403          	lbu	s0,0(s2)
   10d78:	f99ff06f          	j	10d10 <_vfprintf_r+0x1b4>
   10d7c:	0209e993          	ori	s3,s3,32
   10d80:	00094403          	lbu	s0,0(s2)
   10d84:	f8dff06f          	j	10d10 <_vfprintf_r+0x1b4>
   10d88:	00412583          	lw	a1,4(sp)
   10d8c:	01c12503          	lw	a0,28(sp)
   10d90:	191020ef          	jal	ra,13720 <__swsetup_r>
   10d94:	00050463          	beqz	a0,10d9c <_vfprintf_r+0x240>
   10d98:	4380206f          	j	131d0 <_vfprintf_r+0x2674>
   10d9c:	00412783          	lw	a5,4(sp)
   10da0:	00a00713          	li	a4,10
   10da4:	00c7d783          	lhu	a5,12(a5)
   10da8:	01a7f793          	andi	a5,a5,26
   10dac:	e8e798e3          	bne	a5,a4,10c3c <_vfprintf_r+0xe0>
   10db0:	00412783          	lw	a5,4(sp)
   10db4:	00e79783          	lh	a5,14(a5)
   10db8:	e807c2e3          	bltz	a5,10c3c <_vfprintf_r+0xe0>
   10dbc:	00c12683          	lw	a3,12(sp)
   10dc0:	00412583          	lw	a1,4(sp)
   10dc4:	01c12503          	lw	a0,28(sp)
   10dc8:	000c8613          	mv	a2,s9
   10dcc:	095020ef          	jal	ra,13660 <__sbprintf>
   10dd0:	00a12423          	sw	a0,8(sp)
   10dd4:	0680006f          	j	10e3c <_vfprintf_r+0x2e0>
   10dd8:	41a48933          	sub	s2,s1,s10
   10ddc:	f0090ae3          	beqz	s2,10cf0 <_vfprintf_r+0x194>
   10de0:	ed1ff06f          	j	10cb0 <_vfprintf_r+0x154>
   10de4:	00412583          	lw	a1,4(sp)
   10de8:	0e410613          	addi	a2,sp,228
   10dec:	000a8513          	mv	a0,s5
   10df0:	6b50b0ef          	jal	ra,1cca4 <__sprint_r>
   10df4:	02051a63          	bnez	a0,10e28 <_vfprintf_r+0x2cc>
   10df8:	10c10d93          	addi	s11,sp,268
   10dfc:	ee1ff06f          	j	10cdc <_vfprintf_r+0x180>
   10e00:	00412583          	lw	a1,4(sp)
   10e04:	0e410613          	addi	a2,sp,228
   10e08:	000a8513          	mv	a0,s5
   10e0c:	6990b0ef          	jal	ra,1cca4 <__sprint_r>
   10e10:	52050063          	beqz	a0,11330 <_vfprintf_r+0x7d4>
   10e14:	01012783          	lw	a5,16(sp)
   10e18:	00078863          	beqz	a5,10e28 <_vfprintf_r+0x2cc>
   10e1c:	01c12503          	lw	a0,28(sp)
   10e20:	00078593          	mv	a1,a5
   10e24:	3a0030ef          	jal	ra,141c4 <_free_r>
   10e28:	00412783          	lw	a5,4(sp)
   10e2c:	00c7d783          	lhu	a5,12(a5)
   10e30:	0407f793          	andi	a5,a5,64
   10e34:	00078463          	beqz	a5,10e3c <_vfprintf_r+0x2e0>
   10e38:	3980206f          	j	131d0 <_vfprintf_r+0x2674>
   10e3c:	1ec12083          	lw	ra,492(sp)
   10e40:	1e812403          	lw	s0,488(sp)
   10e44:	00812503          	lw	a0,8(sp)
   10e48:	1e412483          	lw	s1,484(sp)
   10e4c:	1e012903          	lw	s2,480(sp)
   10e50:	1dc12983          	lw	s3,476(sp)
   10e54:	1d812a03          	lw	s4,472(sp)
   10e58:	1d412a83          	lw	s5,468(sp)
   10e5c:	1d012b03          	lw	s6,464(sp)
   10e60:	1cc12b83          	lw	s7,460(sp)
   10e64:	1c812c03          	lw	s8,456(sp)
   10e68:	1c412c83          	lw	s9,452(sp)
   10e6c:	1c012d03          	lw	s10,448(sp)
   10e70:	1bc12d83          	lw	s11,444(sp)
   10e74:	1f010113          	addi	sp,sp,496
   10e78:	00008067          	ret
   10e7c:	00014797          	auipc	a5,0x14
   10e80:	3e878793          	addi	a5,a5,1000 # 25264 <zeroes.4505+0x20>
   10e84:	02f12623          	sw	a5,44(sp)
   10e88:	0209f793          	andi	a5,s3,32
   10e8c:	0e078c63          	beqz	a5,10f84 <_vfprintf_r+0x428>
   10e90:	00c12783          	lw	a5,12(sp)
   10e94:	00778793          	addi	a5,a5,7
   10e98:	ff87f793          	andi	a5,a5,-8
   10e9c:	0007ac83          	lw	s9,0(a5)
   10ea0:	0047ab83          	lw	s7,4(a5)
   10ea4:	00878713          	addi	a4,a5,8
   10ea8:	00e12623          	sw	a4,12(sp)
   10eac:	0019f713          	andi	a4,s3,1
   10eb0:	00070863          	beqz	a4,10ec0 <_vfprintf_r+0x364>
   10eb4:	017ce733          	or	a4,s9,s7
   10eb8:	00070463          	beqz	a4,10ec0 <_vfprintf_r+0x364>
   10ebc:	3640106f          	j	12220 <_vfprintf_r+0x16c4>
   10ec0:	bff9fa13          	andi	s4,s3,-1025
   10ec4:	00200713          	li	a4,2
   10ec8:	0c0103a3          	sb	zero,199(sp)
   10ecc:	fff00693          	li	a3,-1
   10ed0:	0edb0ee3          	beq	s6,a3,117cc <_vfprintf_r+0xc70>
   10ed4:	017ce6b3          	or	a3,s9,s7
   10ed8:	f7fa7993          	andi	s3,s4,-129
   10edc:	780698e3          	bnez	a3,11e6c <_vfprintf_r+0x1310>
   10ee0:	300b1ce3          	bnez	s6,119f8 <_vfprintf_r+0xe9c>
   10ee4:	22071663          	bnez	a4,11110 <_vfprintf_r+0x5b4>
   10ee8:	001a7b93          	andi	s7,s4,1
   10eec:	1b010d13          	addi	s10,sp,432
   10ef0:	000b8463          	beqz	s7,10ef8 <_vfprintf_r+0x39c>
   10ef4:	2d80106f          	j	121cc <_vfprintf_r+0x1670>
   10ef8:	000b8a13          	mv	s4,s7
   10efc:	016bd463          	bge	s7,s6,10f04 <_vfprintf_r+0x3a8>
   10f00:	000b0a13          	mv	s4,s6
   10f04:	0c714783          	lbu	a5,199(sp)
   10f08:	00012823          	sw	zero,16(sp)
   10f0c:	02012223          	sw	zero,36(sp)
   10f10:	02012023          	sw	zero,32(sp)
   10f14:	00012a23          	sw	zero,20(sp)
   10f18:	32078263          	beqz	a5,1123c <_vfprintf_r+0x6e0>
   10f1c:	001a0a13          	addi	s4,s4,1
   10f20:	31c0006f          	j	1123c <_vfprintf_r+0x6e0>
   10f24:	00000493          	li	s1,0
   10f28:	fd040693          	addi	a3,s0,-48
   10f2c:	00190913          	addi	s2,s2,1
   10f30:	00249793          	slli	a5,s1,0x2
   10f34:	fff94403          	lbu	s0,-1(s2)
   10f38:	009787b3          	add	a5,a5,s1
   10f3c:	00179793          	slli	a5,a5,0x1
   10f40:	00f684b3          	add	s1,a3,a5
   10f44:	fd040693          	addi	a3,s0,-48
   10f48:	feda72e3          	bgeu	s4,a3,10f2c <_vfprintf_r+0x3d0>
   10f4c:	fe040793          	addi	a5,s0,-32
   10f50:	dcf778e3          	bgeu	a4,a5,10d20 <_vfprintf_r+0x1c4>
   10f54:	10040863          	beqz	s0,11064 <_vfprintf_r+0x508>
   10f58:	14810623          	sb	s0,332(sp)
   10f5c:	0c0103a3          	sb	zero,199(sp)
   10f60:	00100a13          	li	s4,1
   10f64:	00100b93          	li	s7,1
   10f68:	14c10d13          	addi	s10,sp,332
   10f6c:	2bc0006f          	j	11228 <_vfprintf_r+0x6cc>
   10f70:	00014797          	auipc	a5,0x14
   10f74:	30878793          	addi	a5,a5,776 # 25278 <zeroes.4505+0x34>
   10f78:	02f12623          	sw	a5,44(sp)
   10f7c:	0209f793          	andi	a5,s3,32
   10f80:	f00798e3          	bnez	a5,10e90 <_vfprintf_r+0x334>
   10f84:	00c12703          	lw	a4,12(sp)
   10f88:	0109f793          	andi	a5,s3,16
   10f8c:	00072c83          	lw	s9,0(a4)
   10f90:	00470713          	addi	a4,a4,4
   10f94:	00e12623          	sw	a4,12(sp)
   10f98:	00078463          	beqz	a5,10fa0 <_vfprintf_r+0x444>
   10f9c:	2480106f          	j	121e4 <_vfprintf_r+0x1688>
   10fa0:	0409f793          	andi	a5,s3,64
   10fa4:	00079463          	bnez	a5,10fac <_vfprintf_r+0x450>
   10fa8:	2340106f          	j	121dc <_vfprintf_r+0x1680>
   10fac:	010c9c93          	slli	s9,s9,0x10
   10fb0:	010cdc93          	srli	s9,s9,0x10
   10fb4:	00000b93          	li	s7,0
   10fb8:	ef5ff06f          	j	10eac <_vfprintf_r+0x350>
   10fbc:	00094403          	lbu	s0,0(s2)
   10fc0:	0049e993          	ori	s3,s3,4
   10fc4:	d4dff06f          	j	10d10 <_vfprintf_r+0x1b4>
   10fc8:	00094403          	lbu	s0,0(s2)
   10fcc:	00190793          	addi	a5,s2,1
   10fd0:	01741463          	bne	s0,s7,10fd8 <_vfprintf_r+0x47c>
   10fd4:	6180206f          	j	135ec <_vfprintf_r+0x2a90>
   10fd8:	fd040693          	addi	a3,s0,-48
   10fdc:	00078913          	mv	s2,a5
   10fe0:	00000b13          	li	s6,0
   10fe4:	d2da6ae3          	bltu	s4,a3,10d18 <_vfprintf_r+0x1bc>
   10fe8:	00190913          	addi	s2,s2,1
   10fec:	002b1793          	slli	a5,s6,0x2
   10ff0:	fff94403          	lbu	s0,-1(s2)
   10ff4:	016787b3          	add	a5,a5,s6
   10ff8:	00179793          	slli	a5,a5,0x1
   10ffc:	00d78b33          	add	s6,a5,a3
   11000:	fd040693          	addi	a3,s0,-48
   11004:	feda72e3          	bgeu	s4,a3,10fe8 <_vfprintf_r+0x48c>
   11008:	d11ff06f          	j	10d18 <_vfprintf_r+0x1bc>
   1100c:	00c12683          	lw	a3,12(sp)
   11010:	0209f793          	andi	a5,s3,32
   11014:	00468713          	addi	a4,a3,4
   11018:	00078463          	beqz	a5,11020 <_vfprintf_r+0x4c4>
   1101c:	2200106f          	j	1223c <_vfprintf_r+0x16e0>
   11020:	0109f793          	andi	a5,s3,16
   11024:	00078463          	beqz	a5,1102c <_vfprintf_r+0x4d0>
   11028:	6380106f          	j	12660 <_vfprintf_r+0x1b04>
   1102c:	0409f793          	andi	a5,s3,64
   11030:	00078463          	beqz	a5,11038 <_vfprintf_r+0x4dc>
   11034:	2250106f          	j	12a58 <_vfprintf_r+0x1efc>
   11038:	2009f993          	andi	s3,s3,512
   1103c:	00099463          	bnez	s3,11044 <_vfprintf_r+0x4e8>
   11040:	6200106f          	j	12660 <_vfprintf_r+0x1b04>
   11044:	00c12783          	lw	a5,12(sp)
   11048:	00e12623          	sw	a4,12(sp)
   1104c:	00812703          	lw	a4,8(sp)
   11050:	0007a783          	lw	a5,0(a5)
   11054:	00090d13          	mv	s10,s2
   11058:	00e78023          	sb	a4,0(a5)
   1105c:	000d4783          	lbu	a5,0(s10)
   11060:	c20790e3          	bnez	a5,10c80 <_vfprintf_r+0x124>
   11064:	0ec12783          	lw	a5,236(sp)
   11068:	dc0780e3          	beqz	a5,10e28 <_vfprintf_r+0x2cc>
   1106c:	00412583          	lw	a1,4(sp)
   11070:	01c12503          	lw	a0,28(sp)
   11074:	0e410613          	addi	a2,sp,228
   11078:	42d0b0ef          	jal	ra,1cca4 <__sprint_r>
   1107c:	dadff06f          	j	10e28 <_vfprintf_r+0x2cc>
   11080:	00094403          	lbu	s0,0(s2)
   11084:	06c00793          	li	a5,108
   11088:	00f41463          	bne	s0,a5,11090 <_vfprintf_r+0x534>
   1108c:	2940106f          	j	12320 <_vfprintf_r+0x17c4>
   11090:	0109e993          	ori	s3,s3,16
   11094:	c7dff06f          	j	10d10 <_vfprintf_r+0x1b4>
   11098:	00094403          	lbu	s0,0(s2)
   1109c:	06800793          	li	a5,104
   110a0:	00f41463          	bne	s0,a5,110a8 <_vfprintf_r+0x54c>
   110a4:	26c0106f          	j	12310 <_vfprintf_r+0x17b4>
   110a8:	0409e993          	ori	s3,s3,64
   110ac:	c65ff06f          	j	10d10 <_vfprintf_r+0x1b4>
   110b0:	0209f793          	andi	a5,s3,32
   110b4:	0a0792e3          	bnez	a5,11958 <_vfprintf_r+0xdfc>
   110b8:	00c12703          	lw	a4,12(sp)
   110bc:	0109f793          	andi	a5,s3,16
   110c0:	00470713          	addi	a4,a4,4
   110c4:	00078463          	beqz	a5,110cc <_vfprintf_r+0x570>
   110c8:	5700206f          	j	13638 <_vfprintf_r+0x2adc>
   110cc:	0409f793          	andi	a5,s3,64
   110d0:	00079463          	bnez	a5,110d8 <_vfprintf_r+0x57c>
   110d4:	65c0106f          	j	12730 <_vfprintf_r+0x1bd4>
   110d8:	00c12783          	lw	a5,12(sp)
   110dc:	00098a13          	mv	s4,s3
   110e0:	00e12623          	sw	a4,12(sp)
   110e4:	00079c83          	lh	s9,0(a5)
   110e8:	41fcdb93          	srai	s7,s9,0x1f
   110ec:	000b8713          	mv	a4,s7
   110f0:	6a074c63          	bltz	a4,117a8 <_vfprintf_r+0xc4c>
   110f4:	fff00713          	li	a4,-1
   110f8:	0ceb0ee3          	beq	s6,a4,119d4 <_vfprintf_r+0xe78>
   110fc:	017ce733          	or	a4,s9,s7
   11100:	f7fa7993          	andi	s3,s4,-129
   11104:	0c0716e3          	bnez	a4,119d0 <_vfprintf_r+0xe74>
   11108:	000b0463          	beqz	s6,11110 <_vfprintf_r+0x5b4>
   1110c:	5b10106f          	j	12ebc <_vfprintf_r+0x2360>
   11110:	00000b13          	li	s6,0
   11114:	00000b93          	li	s7,0
   11118:	1b010d13          	addi	s10,sp,432
   1111c:	dddff06f          	j	10ef8 <_vfprintf_r+0x39c>
   11120:	0809e993          	ori	s3,s3,128
   11124:	00094403          	lbu	s0,0(s2)
   11128:	be9ff06f          	j	10d10 <_vfprintf_r+0x1b4>
   1112c:	0209f793          	andi	a5,s3,32
   11130:	0109ea13          	ori	s4,s3,16
   11134:	040798e3          	bnez	a5,11984 <_vfprintf_r+0xe28>
   11138:	00c12783          	lw	a5,12(sp)
   1113c:	00478713          	addi	a4,a5,4
   11140:	00c12783          	lw	a5,12(sp)
   11144:	00000b93          	li	s7,0
   11148:	00e12623          	sw	a4,12(sp)
   1114c:	0007ac83          	lw	s9,0(a5)
   11150:	00100713          	li	a4,1
   11154:	d75ff06f          	j	10ec8 <_vfprintf_r+0x36c>
   11158:	00c12783          	lw	a5,12(sp)
   1115c:	0c0103a3          	sb	zero,199(sp)
   11160:	0007ad03          	lw	s10,0(a5)
   11164:	00478c93          	addi	s9,a5,4
   11168:	000d1463          	bnez	s10,11170 <_vfprintf_r+0x614>
   1116c:	1c40106f          	j	12330 <_vfprintf_r+0x17d4>
   11170:	fff00793          	li	a5,-1
   11174:	00fb1463          	bne	s6,a5,1117c <_vfprintf_r+0x620>
   11178:	5a80106f          	j	12720 <_vfprintf_r+0x1bc4>
   1117c:	000b0613          	mv	a2,s6
   11180:	00000593          	li	a1,0
   11184:	000d0513          	mv	a0,s10
   11188:	7b5060ef          	jal	ra,1813c <memchr>
   1118c:	00a12823          	sw	a0,16(sp)
   11190:	00051463          	bnez	a0,11198 <_vfprintf_r+0x63c>
   11194:	7890106f          	j	1311c <_vfprintf_r+0x25c0>
   11198:	01012783          	lw	a5,16(sp)
   1119c:	41a78bb3          	sub	s7,a5,s10
   111a0:	0c714783          	lbu	a5,199(sp)
   111a4:	fffbca13          	not	s4,s7
   111a8:	41fa5a13          	srai	s4,s4,0x1f
   111ac:	01912623          	sw	s9,12(sp)
   111b0:	00012823          	sw	zero,16(sp)
   111b4:	02012223          	sw	zero,36(sp)
   111b8:	02012023          	sw	zero,32(sp)
   111bc:	00012a23          	sw	zero,20(sp)
   111c0:	014bfa33          	and	s4,s7,s4
   111c4:	00000b13          	li	s6,0
   111c8:	d4079ae3          	bnez	a5,10f1c <_vfprintf_r+0x3c0>
   111cc:	0700006f          	j	1123c <_vfprintf_r+0x6e0>
   111d0:	0209f793          	andi	a5,s3,32
   111d4:	0109e993          	ori	s3,s3,16
   111d8:	7c079863          	bnez	a5,119a8 <_vfprintf_r+0xe4c>
   111dc:	00c12783          	lw	a5,12(sp)
   111e0:	00478713          	addi	a4,a5,4
   111e4:	00c12783          	lw	a5,12(sp)
   111e8:	00000b93          	li	s7,0
   111ec:	00e12623          	sw	a4,12(sp)
   111f0:	0007ac83          	lw	s9,0(a5)
   111f4:	7d00006f          	j	119c4 <_vfprintf_r+0xe68>
   111f8:	0089e993          	ori	s3,s3,8
   111fc:	00094403          	lbu	s0,0(s2)
   11200:	b11ff06f          	j	10d10 <_vfprintf_r+0x1b4>
   11204:	00c12703          	lw	a4,12(sp)
   11208:	0c0103a3          	sb	zero,199(sp)
   1120c:	00100a13          	li	s4,1
   11210:	00072783          	lw	a5,0(a4)
   11214:	00470713          	addi	a4,a4,4
   11218:	00e12623          	sw	a4,12(sp)
   1121c:	14f10623          	sb	a5,332(sp)
   11220:	00100b93          	li	s7,1
   11224:	14c10d13          	addi	s10,sp,332
   11228:	00012823          	sw	zero,16(sp)
   1122c:	00000b13          	li	s6,0
   11230:	02012223          	sw	zero,36(sp)
   11234:	02012023          	sw	zero,32(sp)
   11238:	00012a23          	sw	zero,20(sp)
   1123c:	0029ff13          	andi	t5,s3,2
   11240:	000f0463          	beqz	t5,11248 <_vfprintf_r+0x6ec>
   11244:	002a0a13          	addi	s4,s4,2
   11248:	0849fe93          	andi	t4,s3,132
   1124c:	0ec12783          	lw	a5,236(sp)
   11250:	000e9663          	bnez	t4,1125c <_vfprintf_r+0x700>
   11254:	414486b3          	sub	a3,s1,s4
   11258:	40d04ee3          	bgtz	a3,11e74 <_vfprintf_r+0x1318>
   1125c:	0c714703          	lbu	a4,199(sp)
   11260:	02070a63          	beqz	a4,11294 <_vfprintf_r+0x738>
   11264:	0e812703          	lw	a4,232(sp)
   11268:	0c710693          	addi	a3,sp,199
   1126c:	00dda023          	sw	a3,0(s11)
   11270:	00178793          	addi	a5,a5,1
   11274:	00100693          	li	a3,1
   11278:	00170713          	addi	a4,a4,1
   1127c:	00dda223          	sw	a3,4(s11)
   11280:	0ef12623          	sw	a5,236(sp)
   11284:	0ee12423          	sw	a4,232(sp)
   11288:	00700693          	li	a3,7
   1128c:	008d8d93          	addi	s11,s11,8
   11290:	0ce6c263          	blt	a3,a4,11354 <_vfprintf_r+0x7f8>
   11294:	020f0a63          	beqz	t5,112c8 <_vfprintf_r+0x76c>
   11298:	0e812703          	lw	a4,232(sp)
   1129c:	0c810693          	addi	a3,sp,200
   112a0:	00dda023          	sw	a3,0(s11)
   112a4:	00278793          	addi	a5,a5,2
   112a8:	00200693          	li	a3,2
   112ac:	00170713          	addi	a4,a4,1
   112b0:	00dda223          	sw	a3,4(s11)
   112b4:	0ef12623          	sw	a5,236(sp)
   112b8:	0ee12423          	sw	a4,232(sp)
   112bc:	00700693          	li	a3,7
   112c0:	008d8d93          	addi	s11,s11,8
   112c4:	4ee6c2e3          	blt	a3,a4,11fa8 <_vfprintf_r+0x144c>
   112c8:	08000713          	li	a4,128
   112cc:	0cee88e3          	beq	t4,a4,11b9c <_vfprintf_r+0x1040>
   112d0:	417b0b33          	sub	s6,s6,s7
   112d4:	1b604ee3          	bgtz	s6,11c90 <_vfprintf_r+0x1134>
   112d8:	1009f713          	andi	a4,s3,256
   112dc:	76071c63          	bnez	a4,11a54 <_vfprintf_r+0xef8>
   112e0:	0e812703          	lw	a4,232(sp)
   112e4:	017787b3          	add	a5,a5,s7
   112e8:	01ada023          	sw	s10,0(s11)
   112ec:	00170713          	addi	a4,a4,1
   112f0:	017da223          	sw	s7,4(s11)
   112f4:	0ef12623          	sw	a5,236(sp)
   112f8:	0ee12423          	sw	a4,232(sp)
   112fc:	00700693          	li	a3,7
   11300:	0ce6c663          	blt	a3,a4,113cc <_vfprintf_r+0x870>
   11304:	008d8d93          	addi	s11,s11,8
   11308:	0049f993          	andi	s3,s3,4
   1130c:	00098663          	beqz	s3,11318 <_vfprintf_r+0x7bc>
   11310:	41448433          	sub	s0,s1,s4
   11314:	0c804c63          	bgtz	s0,113ec <_vfprintf_r+0x890>
   11318:	0144d463          	bge	s1,s4,11320 <_vfprintf_r+0x7c4>
   1131c:	000a0493          	mv	s1,s4
   11320:	00812703          	lw	a4,8(sp)
   11324:	00970733          	add	a4,a4,s1
   11328:	00e12423          	sw	a4,8(sp)
   1132c:	ac079ae3          	bnez	a5,10e00 <_vfprintf_r+0x2a4>
   11330:	01012783          	lw	a5,16(sp)
   11334:	0e012423          	sw	zero,232(sp)
   11338:	00078863          	beqz	a5,11348 <_vfprintf_r+0x7ec>
   1133c:	01012583          	lw	a1,16(sp)
   11340:	000a8513          	mv	a0,s5
   11344:	681020ef          	jal	ra,141c4 <_free_r>
   11348:	10c10d93          	addi	s11,sp,268
   1134c:	00090d13          	mv	s10,s2
   11350:	d0dff06f          	j	1105c <_vfprintf_r+0x500>
   11354:	00412583          	lw	a1,4(sp)
   11358:	0e410613          	addi	a2,sp,228
   1135c:	000a8513          	mv	a0,s5
   11360:	05d12423          	sw	t4,72(sp)
   11364:	03e12a23          	sw	t5,52(sp)
   11368:	13d0b0ef          	jal	ra,1cca4 <__sprint_r>
   1136c:	aa0514e3          	bnez	a0,10e14 <_vfprintf_r+0x2b8>
   11370:	0ec12783          	lw	a5,236(sp)
   11374:	10c10d93          	addi	s11,sp,268
   11378:	04812e83          	lw	t4,72(sp)
   1137c:	03412f03          	lw	t5,52(sp)
   11380:	f15ff06f          	j	11294 <_vfprintf_r+0x738>
   11384:	0019f613          	andi	a2,s3,1
   11388:	200614e3          	bnez	a2,11d90 <_vfprintf_r+0x1234>
   1138c:	00eda223          	sw	a4,4(s11)
   11390:	0f912623          	sw	s9,236(sp)
   11394:	0e812423          	sw	s0,232(sp)
   11398:	00700713          	li	a4,7
   1139c:	728740e3          	blt	a4,s0,122bc <_vfprintf_r+0x1760>
   113a0:	00268b13          	addi	s6,a3,2
   113a4:	010d8d93          	addi	s11,s11,16
   113a8:	03812683          	lw	a3,56(sp)
   113ac:	0d410713          	addi	a4,sp,212
   113b0:	00eba023          	sw	a4,0(s7)
   113b4:	019687b3          	add	a5,a3,s9
   113b8:	00dba223          	sw	a3,4(s7)
   113bc:	0ef12623          	sw	a5,236(sp)
   113c0:	0f612423          	sw	s6,232(sp)
   113c4:	00700713          	li	a4,7
   113c8:	f56750e3          	bge	a4,s6,11308 <_vfprintf_r+0x7ac>
   113cc:	00412583          	lw	a1,4(sp)
   113d0:	0e410613          	addi	a2,sp,228
   113d4:	000a8513          	mv	a0,s5
   113d8:	0cd0b0ef          	jal	ra,1cca4 <__sprint_r>
   113dc:	a2051ce3          	bnez	a0,10e14 <_vfprintf_r+0x2b8>
   113e0:	0ec12783          	lw	a5,236(sp)
   113e4:	10c10d93          	addi	s11,sp,268
   113e8:	f21ff06f          	j	11308 <_vfprintf_r+0x7ac>
   113ec:	0e812703          	lw	a4,232(sp)
   113f0:	00014c97          	auipc	s9,0x14
   113f4:	e44c8c93          	addi	s9,s9,-444 # 25234 <blanks.4504>
   113f8:	068c5063          	bge	s8,s0,11458 <_vfprintf_r+0x8fc>
   113fc:	00700993          	li	s3,7
   11400:	00412b03          	lw	s6,4(sp)
   11404:	00c0006f          	j	11410 <_vfprintf_r+0x8b4>
   11408:	ff040413          	addi	s0,s0,-16
   1140c:	048c5663          	bge	s8,s0,11458 <_vfprintf_r+0x8fc>
   11410:	01078793          	addi	a5,a5,16
   11414:	00170713          	addi	a4,a4,1
   11418:	019da023          	sw	s9,0(s11)
   1141c:	018da223          	sw	s8,4(s11)
   11420:	0ef12623          	sw	a5,236(sp)
   11424:	0ee12423          	sw	a4,232(sp)
   11428:	008d8d93          	addi	s11,s11,8
   1142c:	fce9dee3          	bge	s3,a4,11408 <_vfprintf_r+0x8ac>
   11430:	0e410613          	addi	a2,sp,228
   11434:	000b0593          	mv	a1,s6
   11438:	000a8513          	mv	a0,s5
   1143c:	0690b0ef          	jal	ra,1cca4 <__sprint_r>
   11440:	9c051ae3          	bnez	a0,10e14 <_vfprintf_r+0x2b8>
   11444:	ff040413          	addi	s0,s0,-16
   11448:	0ec12783          	lw	a5,236(sp)
   1144c:	0e812703          	lw	a4,232(sp)
   11450:	10c10d93          	addi	s11,sp,268
   11454:	fa8c4ee3          	blt	s8,s0,11410 <_vfprintf_r+0x8b4>
   11458:	008787b3          	add	a5,a5,s0
   1145c:	00170713          	addi	a4,a4,1
   11460:	019da023          	sw	s9,0(s11)
   11464:	008da223          	sw	s0,4(s11)
   11468:	0ef12623          	sw	a5,236(sp)
   1146c:	0ee12423          	sw	a4,232(sp)
   11470:	00700693          	li	a3,7
   11474:	eae6d2e3          	bge	a3,a4,11318 <_vfprintf_r+0x7bc>
   11478:	00412583          	lw	a1,4(sp)
   1147c:	0e410613          	addi	a2,sp,228
   11480:	000a8513          	mv	a0,s5
   11484:	0210b0ef          	jal	ra,1cca4 <__sprint_r>
   11488:	980516e3          	bnez	a0,10e14 <_vfprintf_r+0x2b8>
   1148c:	0ec12783          	lw	a5,236(sp)
   11490:	e89ff06f          	j	11318 <_vfprintf_r+0x7bc>
   11494:	0089f793          	andi	a5,s3,8
   11498:	54079ae3          	bnez	a5,121ec <_vfprintf_r+0x1690>
   1149c:	00c12783          	lw	a5,12(sp)
   114a0:	0b010513          	addi	a0,sp,176
   114a4:	00778793          	addi	a5,a5,7
   114a8:	ff87f793          	andi	a5,a5,-8
   114ac:	0007a583          	lw	a1,0(a5)
   114b0:	0047a603          	lw	a2,4(a5)
   114b4:	00878793          	addi	a5,a5,8
   114b8:	00f12623          	sw	a5,12(sp)
   114bc:	420130ef          	jal	ra,248dc <__extenddftf2>
   114c0:	0b012783          	lw	a5,176(sp)
   114c4:	0ef12823          	sw	a5,240(sp)
   114c8:	0b412783          	lw	a5,180(sp)
   114cc:	0ef12a23          	sw	a5,244(sp)
   114d0:	0b812783          	lw	a5,184(sp)
   114d4:	0ef12c23          	sw	a5,248(sp)
   114d8:	0bc12783          	lw	a5,188(sp)
   114dc:	0ef12e23          	sw	a5,252(sp)
   114e0:	0f010513          	addi	a0,sp,240
   114e4:	114060ef          	jal	ra,175f8 <_ldcheck>
   114e8:	0ca12623          	sw	a0,204(sp)
   114ec:	00200793          	li	a5,2
   114f0:	00f51463          	bne	a0,a5,114f8 <_vfprintf_r+0x99c>
   114f4:	0ec0106f          	j	125e0 <_vfprintf_r+0x1a84>
   114f8:	00100793          	li	a5,1
   114fc:	00f51463          	bne	a0,a5,11504 <_vfprintf_r+0x9a8>
   11500:	28c0106f          	j	1278c <_vfprintf_r+0x1c30>
   11504:	06100793          	li	a5,97
   11508:	00f41463          	bne	s0,a5,11510 <_vfprintf_r+0x9b4>
   1150c:	5a10106f          	j	132ac <_vfprintf_r+0x2750>
   11510:	04100793          	li	a5,65
   11514:	00f41463          	bne	s0,a5,1151c <_vfprintf_r+0x9c0>
   11518:	5dc0106f          	j	12af4 <_vfprintf_r+0x1f98>
   1151c:	fdf47713          	andi	a4,s0,-33
   11520:	fff00793          	li	a5,-1
   11524:	04e12423          	sw	a4,72(sp)
   11528:	00fb1463          	bne	s6,a5,11530 <_vfprintf_r+0x9d4>
   1152c:	61d0106f          	j	13348 <_vfprintf_r+0x27ec>
   11530:	04700793          	li	a5,71
   11534:	00f71463          	bne	a4,a5,1153c <_vfprintf_r+0x9e0>
   11538:	6010106f          	j	13338 <_vfprintf_r+0x27dc>
   1153c:	0fc12e03          	lw	t3,252(sp)
   11540:	05312a23          	sw	s3,84(sp)
   11544:	1009e793          	ori	a5,s3,256
   11548:	0f012e83          	lw	t4,240(sp)
   1154c:	0f412f03          	lw	t5,244(sp)
   11550:	0f812f83          	lw	t6,248(sp)
   11554:	000e5463          	bgez	t3,1155c <_vfprintf_r+0xa00>
   11558:	2250106f          	j	12f7c <_vfprintf_r+0x2420>
   1155c:	04012e23          	sw	zero,92(sp)
   11560:	00078993          	mv	s3,a5
   11564:	00012823          	sw	zero,16(sp)
   11568:	04812703          	lw	a4,72(sp)
   1156c:	04600793          	li	a5,70
   11570:	00f71463          	bne	a4,a5,11578 <_vfprintf_r+0xa1c>
   11574:	29d0106f          	j	13010 <_vfprintf_r+0x24b4>
   11578:	04500793          	li	a5,69
   1157c:	00f71463          	bne	a4,a5,11584 <_vfprintf_r+0xa28>
   11580:	4c10106f          	j	13240 <_vfprintf_r+0x26e4>
   11584:	0b010b93          	addi	s7,sp,176
   11588:	0d010793          	addi	a5,sp,208
   1158c:	0cc10713          	addi	a4,sp,204
   11590:	0dc10813          	addi	a6,sp,220
   11594:	000b0693          	mv	a3,s6
   11598:	00200613          	li	a2,2
   1159c:	000b8593          	mv	a1,s7
   115a0:	000a8513          	mv	a0,s5
   115a4:	0bd12823          	sw	t4,176(sp)
   115a8:	03d12223          	sw	t4,36(sp)
   115ac:	0be12a23          	sw	t5,180(sp)
   115b0:	03e12023          	sw	t5,32(sp)
   115b4:	0bf12c23          	sw	t6,184(sp)
   115b8:	01f12c23          	sw	t6,24(sp)
   115bc:	0bc12e23          	sw	t3,188(sp)
   115c0:	01c12a23          	sw	t3,20(sp)
   115c4:	541040ef          	jal	ra,16304 <_ldtoa_r>
   115c8:	04812703          	lw	a4,72(sp)
   115cc:	04700793          	li	a5,71
   115d0:	00050d13          	mv	s10,a0
   115d4:	01412e03          	lw	t3,20(sp)
   115d8:	01812f83          	lw	t6,24(sp)
   115dc:	02012f03          	lw	t5,32(sp)
   115e0:	02412e83          	lw	t4,36(sp)
   115e4:	00f70463          	beq	a4,a5,115ec <_vfprintf_r+0xa90>
   115e8:	0580206f          	j	13640 <_vfprintf_r+0x2ae4>
   115ec:	05412783          	lw	a5,84(sp)
   115f0:	0017f793          	andi	a5,a5,1
   115f4:	00078463          	beqz	a5,115fc <_vfprintf_r+0xaa0>
   115f8:	4390106f          	j	13230 <_vfprintf_r+0x26d4>
   115fc:	0dc12783          	lw	a5,220(sp)
   11600:	41a787b3          	sub	a5,a5,s10
   11604:	00f12c23          	sw	a5,24(sp)
   11608:	0cc12703          	lw	a4,204(sp)
   1160c:	04700793          	li	a5,71
   11610:	00e12a23          	sw	a4,20(sp)
   11614:	04812703          	lw	a4,72(sp)
   11618:	00f71463          	bne	a4,a5,11620 <_vfprintf_r+0xac4>
   1161c:	0d90106f          	j	12ef4 <_vfprintf_r+0x2398>
   11620:	04812703          	lw	a4,72(sp)
   11624:	04600793          	li	a5,70
   11628:	00f71463          	bne	a4,a5,11630 <_vfprintf_r+0xad4>
   1162c:	3810106f          	j	131ac <_vfprintf_r+0x2650>
   11630:	01412783          	lw	a5,20(sp)
   11634:	04812603          	lw	a2,72(sp)
   11638:	04100693          	li	a3,65
   1163c:	fff78a13          	addi	s4,a5,-1
   11640:	0d412623          	sw	s4,204(sp)
   11644:	0ff47793          	andi	a5,s0,255
   11648:	00000713          	li	a4,0
   1164c:	00d61863          	bne	a2,a3,1165c <_vfprintf_r+0xb00>
   11650:	00f78793          	addi	a5,a5,15
   11654:	0ff7f793          	andi	a5,a5,255
   11658:	00100713          	li	a4,1
   1165c:	0cf10a23          	sb	a5,212(sp)
   11660:	02b00793          	li	a5,43
   11664:	000a5a63          	bgez	s4,11678 <_vfprintf_r+0xb1c>
   11668:	01412783          	lw	a5,20(sp)
   1166c:	00100a13          	li	s4,1
   11670:	40fa0a33          	sub	s4,s4,a5
   11674:	02d00793          	li	a5,45
   11678:	0cf10aa3          	sb	a5,213(sp)
   1167c:	00900793          	li	a5,9
   11680:	0147c463          	blt	a5,s4,11688 <_vfprintf_r+0xb2c>
   11684:	5550106f          	j	133d8 <_vfprintf_r+0x287c>
   11688:	0e310b13          	addi	s6,sp,227
   1168c:	000b0b93          	mv	s7,s6
   11690:	06300993          	li	s3,99
   11694:	00c0006f          	j	116a0 <_vfprintf_r+0xb44>
   11698:	00068b93          	mv	s7,a3
   1169c:	00050a13          	mv	s4,a0
   116a0:	00a00593          	li	a1,10
   116a4:	000a0513          	mv	a0,s4
   116a8:	868ff0ef          	jal	ra,10710 <__modsi3>
   116ac:	03050513          	addi	a0,a0,48
   116b0:	feab8fa3          	sb	a0,-1(s7)
   116b4:	00a00593          	li	a1,10
   116b8:	000a0513          	mv	a0,s4
   116bc:	fd1fe0ef          	jal	ra,1068c <__divsi3>
   116c0:	fffb8693          	addi	a3,s7,-1
   116c4:	fd49cae3          	blt	s3,s4,11698 <_vfprintf_r+0xb3c>
   116c8:	03050793          	addi	a5,a0,48
   116cc:	0ff7f793          	andi	a5,a5,255
   116d0:	ffeb8713          	addi	a4,s7,-2
   116d4:	fef68fa3          	sb	a5,-1(a3)
   116d8:	01676463          	bltu	a4,s6,116e0 <_vfprintf_r+0xb84>
   116dc:	73d0106f          	j	13618 <_vfprintf_r+0x2abc>
   116e0:	0d610693          	addi	a3,sp,214
   116e4:	0080006f          	j	116ec <_vfprintf_r+0xb90>
   116e8:	00074783          	lbu	a5,0(a4)
   116ec:	00168693          	addi	a3,a3,1
   116f0:	00170713          	addi	a4,a4,1
   116f4:	fef68fa3          	sb	a5,-1(a3)
   116f8:	ff6718e3          	bne	a4,s6,116e8 <_vfprintf_r+0xb8c>
   116fc:	0e510793          	addi	a5,sp,229
   11700:	0d610713          	addi	a4,sp,214
   11704:	417787b3          	sub	a5,a5,s7
   11708:	00f707b3          	add	a5,a4,a5
   1170c:	0d410713          	addi	a4,sp,212
   11710:	40e787b3          	sub	a5,a5,a4
   11714:	02f12c23          	sw	a5,56(sp)
   11718:	01812703          	lw	a4,24(sp)
   1171c:	03812683          	lw	a3,56(sp)
   11720:	00100793          	li	a5,1
   11724:	00d70bb3          	add	s7,a4,a3
   11728:	00e7c463          	blt	a5,a4,11730 <_vfprintf_r+0xbd4>
   1172c:	5f50106f          	j	13520 <_vfprintf_r+0x29c4>
   11730:	02812783          	lw	a5,40(sp)
   11734:	00fb8bb3          	add	s7,s7,a5
   11738:	05412783          	lw	a5,84(sp)
   1173c:	fffbca13          	not	s4,s7
   11740:	41fa5a13          	srai	s4,s4,0x1f
   11744:	bff7f993          	andi	s3,a5,-1025
   11748:	1009e993          	ori	s3,s3,256
   1174c:	014bfa33          	and	s4,s7,s4
   11750:	02012223          	sw	zero,36(sp)
   11754:	02012023          	sw	zero,32(sp)
   11758:	00012a23          	sw	zero,20(sp)
   1175c:	05c12783          	lw	a5,92(sp)
   11760:	00079463          	bnez	a5,11768 <_vfprintf_r+0xc0c>
   11764:	0050106f          	j	12f68 <_vfprintf_r+0x240c>
   11768:	02d00793          	li	a5,45
   1176c:	0cf103a3          	sb	a5,199(sp)
   11770:	00000b13          	li	s6,0
   11774:	001a0a13          	addi	s4,s4,1
   11778:	ac5ff06f          	j	1123c <_vfprintf_r+0x6e0>
   1177c:	0209f793          	andi	a5,s3,32
   11780:	0109ea13          	ori	s4,s3,16
   11784:	1c079c63          	bnez	a5,1195c <_vfprintf_r+0xe00>
   11788:	00c12783          	lw	a5,12(sp)
   1178c:	00478713          	addi	a4,a5,4
   11790:	00c12783          	lw	a5,12(sp)
   11794:	00e12623          	sw	a4,12(sp)
   11798:	0007ac83          	lw	s9,0(a5)
   1179c:	41fcdb93          	srai	s7,s9,0x1f
   117a0:	000b8713          	mv	a4,s7
   117a4:	940758e3          	bgez	a4,110f4 <_vfprintf_r+0x598>
   117a8:	41900cb3          	neg	s9,s9
   117ac:	01903733          	snez	a4,s9
   117b0:	417007b3          	neg	a5,s7
   117b4:	40e78bb3          	sub	s7,a5,a4
   117b8:	02d00713          	li	a4,45
   117bc:	0ce103a3          	sb	a4,199(sp)
   117c0:	fff00693          	li	a3,-1
   117c4:	00100713          	li	a4,1
   117c8:	f0db1663          	bne	s6,a3,10ed4 <_vfprintf_r+0x378>
   117cc:	00100693          	li	a3,1
   117d0:	20d70263          	beq	a4,a3,119d4 <_vfprintf_r+0xe78>
   117d4:	00200693          	li	a3,2
   117d8:	22d70c63          	beq	a4,a3,11a10 <_vfprintf_r+0xeb4>
   117dc:	1b010693          	addi	a3,sp,432
   117e0:	0080006f          	j	117e8 <_vfprintf_r+0xc8c>
   117e4:	000d0693          	mv	a3,s10
   117e8:	01db9793          	slli	a5,s7,0x1d
   117ec:	007cf713          	andi	a4,s9,7
   117f0:	003cdc93          	srli	s9,s9,0x3
   117f4:	03070713          	addi	a4,a4,48
   117f8:	0197ecb3          	or	s9,a5,s9
   117fc:	003bdb93          	srli	s7,s7,0x3
   11800:	fee68fa3          	sb	a4,-1(a3)
   11804:	017ce7b3          	or	a5,s9,s7
   11808:	fff68d13          	addi	s10,a3,-1
   1180c:	fc079ce3          	bnez	a5,117e4 <_vfprintf_r+0xc88>
   11810:	001a7793          	andi	a5,s4,1
   11814:	22078863          	beqz	a5,11a44 <_vfprintf_r+0xee8>
   11818:	03000793          	li	a5,48
   1181c:	22f70463          	beq	a4,a5,11a44 <_vfprintf_r+0xee8>
   11820:	ffe68693          	addi	a3,a3,-2
   11824:	fefd0fa3          	sb	a5,-1(s10)
   11828:	1b010793          	addi	a5,sp,432
   1182c:	40d78bb3          	sub	s7,a5,a3
   11830:	000a0993          	mv	s3,s4
   11834:	00068d13          	mv	s10,a3
   11838:	ec0ff06f          	j	10ef8 <_vfprintf_r+0x39c>
   1183c:	00c12783          	lw	a5,12(sp)
   11840:	ffff8737          	lui	a4,0xffff8
   11844:	83074713          	xori	a4,a4,-2000
   11848:	0007ac83          	lw	s9,0(a5)
   1184c:	00478793          	addi	a5,a5,4
   11850:	00f12623          	sw	a5,12(sp)
   11854:	00014797          	auipc	a5,0x14
   11858:	a1078793          	addi	a5,a5,-1520 # 25264 <zeroes.4505+0x20>
   1185c:	0ce11423          	sh	a4,200(sp)
   11860:	00000b93          	li	s7,0
   11864:	0029ea13          	ori	s4,s3,2
   11868:	02f12623          	sw	a5,44(sp)
   1186c:	00200713          	li	a4,2
   11870:	07800413          	li	s0,120
   11874:	e54ff06f          	j	10ec8 <_vfprintf_r+0x36c>
   11878:	0c714783          	lbu	a5,199(sp)
   1187c:	00094403          	lbu	s0,0(s2)
   11880:	c8079863          	bnez	a5,10d10 <_vfprintf_r+0x1b4>
   11884:	02000793          	li	a5,32
   11888:	0cf103a3          	sb	a5,199(sp)
   1188c:	c84ff06f          	j	10d10 <_vfprintf_r+0x1b4>
   11890:	02b00793          	li	a5,43
   11894:	0cf103a3          	sb	a5,199(sp)
   11898:	00094403          	lbu	s0,0(s2)
   1189c:	c74ff06f          	j	10d10 <_vfprintf_r+0x1b4>
   118a0:	00c12783          	lw	a5,12(sp)
   118a4:	00094403          	lbu	s0,0(s2)
   118a8:	0007a483          	lw	s1,0(a5)
   118ac:	00478793          	addi	a5,a5,4
   118b0:	00f12623          	sw	a5,12(sp)
   118b4:	c404de63          	bgez	s1,10d10 <_vfprintf_r+0x1b4>
   118b8:	409004b3          	neg	s1,s1
   118bc:	0049e993          	ori	s3,s3,4
   118c0:	c50ff06f          	j	10d10 <_vfprintf_r+0x1b4>
   118c4:	0019e993          	ori	s3,s3,1
   118c8:	00094403          	lbu	s0,0(s2)
   118cc:	c44ff06f          	j	10d10 <_vfprintf_r+0x1b4>
   118d0:	0209f793          	andi	a5,s3,32
   118d4:	0c079a63          	bnez	a5,119a8 <_vfprintf_r+0xe4c>
   118d8:	00c12683          	lw	a3,12(sp)
   118dc:	0109f793          	andi	a5,s3,16
   118e0:	00468713          	addi	a4,a3,4
   118e4:	0006ac83          	lw	s9,0(a3)
   118e8:	8e079ee3          	bnez	a5,111e4 <_vfprintf_r+0x688>
   118ec:	0409f793          	andi	a5,s3,64
   118f0:	660782e3          	beqz	a5,12754 <_vfprintf_r+0x1bf8>
   118f4:	010c9c93          	slli	s9,s9,0x10
   118f8:	010cdc93          	srli	s9,s9,0x10
   118fc:	00000b93          	li	s7,0
   11900:	00e12623          	sw	a4,12(sp)
   11904:	0c00006f          	j	119c4 <_vfprintf_r+0xe68>
   11908:	0209f793          	andi	a5,s3,32
   1190c:	06079a63          	bnez	a5,11980 <_vfprintf_r+0xe24>
   11910:	00c12683          	lw	a3,12(sp)
   11914:	0109f793          	andi	a5,s3,16
   11918:	00468713          	addi	a4,a3,4
   1191c:	0006ac83          	lw	s9,0(a3)
   11920:	00078463          	beqz	a5,11928 <_vfprintf_r+0xdcc>
   11924:	4ed0106f          	j	13610 <_vfprintf_r+0x2ab4>
   11928:	0409f793          	andi	a5,s3,64
   1192c:	640780e3          	beqz	a5,1276c <_vfprintf_r+0x1c10>
   11930:	010c9c93          	slli	s9,s9,0x10
   11934:	00e12623          	sw	a4,12(sp)
   11938:	010cdc93          	srli	s9,s9,0x10
   1193c:	00000b93          	li	s7,0
   11940:	00098a13          	mv	s4,s3
   11944:	00100713          	li	a4,1
   11948:	d80ff06f          	j	10ec8 <_vfprintf_r+0x36c>
   1194c:	01c12503          	lw	a0,28(sp)
   11950:	704020ef          	jal	ra,14054 <__sinit>
   11954:	a88ff06f          	j	10bdc <_vfprintf_r+0x80>
   11958:	00098a13          	mv	s4,s3
   1195c:	00c12783          	lw	a5,12(sp)
   11960:	00778793          	addi	a5,a5,7
   11964:	ff87f793          	andi	a5,a5,-8
   11968:	0047a703          	lw	a4,4(a5)
   1196c:	00878693          	addi	a3,a5,8
   11970:	00d12623          	sw	a3,12(sp)
   11974:	0007ac83          	lw	s9,0(a5)
   11978:	00070b93          	mv	s7,a4
   1197c:	f74ff06f          	j	110f0 <_vfprintf_r+0x594>
   11980:	00098a13          	mv	s4,s3
   11984:	00c12783          	lw	a5,12(sp)
   11988:	00778793          	addi	a5,a5,7
   1198c:	ff87f793          	andi	a5,a5,-8
   11990:	00878713          	addi	a4,a5,8
   11994:	00e12623          	sw	a4,12(sp)
   11998:	0007ac83          	lw	s9,0(a5)
   1199c:	0047ab83          	lw	s7,4(a5)
   119a0:	00100713          	li	a4,1
   119a4:	d24ff06f          	j	10ec8 <_vfprintf_r+0x36c>
   119a8:	00c12783          	lw	a5,12(sp)
   119ac:	00778793          	addi	a5,a5,7
   119b0:	ff87f793          	andi	a5,a5,-8
   119b4:	0007ac83          	lw	s9,0(a5)
   119b8:	0047ab83          	lw	s7,4(a5)
   119bc:	00878713          	addi	a4,a5,8
   119c0:	00e12623          	sw	a4,12(sp)
   119c4:	bff9fa13          	andi	s4,s3,-1025
   119c8:	00000713          	li	a4,0
   119cc:	cfcff06f          	j	10ec8 <_vfprintf_r+0x36c>
   119d0:	00098a13          	mv	s4,s3
   119d4:	2e0b96e3          	bnez	s7,124c0 <_vfprintf_r+0x1964>
   119d8:	00900713          	li	a4,9
   119dc:	2f9762e3          	bltu	a4,s9,124c0 <_vfprintf_r+0x1964>
   119e0:	030c8c93          	addi	s9,s9,48
   119e4:	1b9107a3          	sb	s9,431(sp)
   119e8:	000a0993          	mv	s3,s4
   119ec:	00100b93          	li	s7,1
   119f0:	1af10d13          	addi	s10,sp,431
   119f4:	d04ff06f          	j	10ef8 <_vfprintf_r+0x39c>
   119f8:	00100693          	li	a3,1
   119fc:	00d71463          	bne	a4,a3,11a04 <_vfprintf_r+0xea8>
   11a00:	4bc0106f          	j	12ebc <_vfprintf_r+0x2360>
   11a04:	00200693          	li	a3,2
   11a08:	00098a13          	mv	s4,s3
   11a0c:	dcd718e3          	bne	a4,a3,117dc <_vfprintf_r+0xc80>
   11a10:	02c12683          	lw	a3,44(sp)
   11a14:	1b010d13          	addi	s10,sp,432
   11a18:	00fcf793          	andi	a5,s9,15
   11a1c:	00f687b3          	add	a5,a3,a5
   11a20:	0007c783          	lbu	a5,0(a5)
   11a24:	01cb9713          	slli	a4,s7,0x1c
   11a28:	004cdc93          	srli	s9,s9,0x4
   11a2c:	fffd0d13          	addi	s10,s10,-1
   11a30:	01976cb3          	or	s9,a4,s9
   11a34:	004bdb93          	srli	s7,s7,0x4
   11a38:	00fd0023          	sb	a5,0(s10)
   11a3c:	017ce7b3          	or	a5,s9,s7
   11a40:	fc079ce3          	bnez	a5,11a18 <_vfprintf_r+0xebc>
   11a44:	1b010793          	addi	a5,sp,432
   11a48:	41a78bb3          	sub	s7,a5,s10
   11a4c:	000a0993          	mv	s3,s4
   11a50:	ca8ff06f          	j	10ef8 <_vfprintf_r+0x39c>
   11a54:	06500713          	li	a4,101
   11a58:	30875c63          	bge	a4,s0,11d70 <_vfprintf_r+0x1214>
   11a5c:	0f012703          	lw	a4,240(sp)
   11a60:	0a010593          	addi	a1,sp,160
   11a64:	0b010513          	addi	a0,sp,176
   11a68:	0ae12823          	sw	a4,176(sp)
   11a6c:	0f412703          	lw	a4,244(sp)
   11a70:	02f12a23          	sw	a5,52(sp)
   11a74:	0a012023          	sw	zero,160(sp)
   11a78:	0ae12a23          	sw	a4,180(sp)
   11a7c:	0f812703          	lw	a4,248(sp)
   11a80:	0a012223          	sw	zero,164(sp)
   11a84:	0a012423          	sw	zero,168(sp)
   11a88:	0ae12c23          	sw	a4,184(sp)
   11a8c:	0fc12703          	lw	a4,252(sp)
   11a90:	0a012623          	sw	zero,172(sp)
   11a94:	0ae12e23          	sw	a4,188(sp)
   11a98:	70d0f0ef          	jal	ra,219a4 <__eqtf2>
   11a9c:	03412783          	lw	a5,52(sp)
   11aa0:	52051a63          	bnez	a0,11fd4 <_vfprintf_r+0x1478>
   11aa4:	0e812703          	lw	a4,232(sp)
   11aa8:	00013697          	auipc	a3,0x13
   11aac:	7ec68693          	addi	a3,a3,2028 # 25294 <zeroes.4505+0x50>
   11ab0:	00178793          	addi	a5,a5,1
   11ab4:	00dda023          	sw	a3,0(s11)
   11ab8:	00170713          	addi	a4,a4,1 # ffff8001 <__BSS_END__+0xfffd1519>
   11abc:	00100693          	li	a3,1
   11ac0:	00dda223          	sw	a3,4(s11)
   11ac4:	0ef12623          	sw	a5,236(sp)
   11ac8:	0ee12423          	sw	a4,232(sp)
   11acc:	00700793          	li	a5,7
   11ad0:	008d8d93          	addi	s11,s11,8
   11ad4:	2ae7cee3          	blt	a5,a4,12590 <_vfprintf_r+0x1a34>
   11ad8:	0cc12783          	lw	a5,204(sp)
   11adc:	01812703          	lw	a4,24(sp)
   11ae0:	00e7ca63          	blt	a5,a4,11af4 <_vfprintf_r+0xf98>
   11ae4:	0019f793          	andi	a5,s3,1
   11ae8:	00079663          	bnez	a5,11af4 <_vfprintf_r+0xf98>
   11aec:	0ec12783          	lw	a5,236(sp)
   11af0:	819ff06f          	j	11308 <_vfprintf_r+0x7ac>
   11af4:	03012783          	lw	a5,48(sp)
   11af8:	02812683          	lw	a3,40(sp)
   11afc:	0e812703          	lw	a4,232(sp)
   11b00:	00fda023          	sw	a5,0(s11)
   11b04:	0ec12783          	lw	a5,236(sp)
   11b08:	00170713          	addi	a4,a4,1
   11b0c:	00dda223          	sw	a3,4(s11)
   11b10:	00f687b3          	add	a5,a3,a5
   11b14:	0ef12623          	sw	a5,236(sp)
   11b18:	0ee12423          	sw	a4,232(sp)
   11b1c:	00700693          	li	a3,7
   11b20:	008d8d93          	addi	s11,s11,8
   11b24:	7ce6c463          	blt	a3,a4,122ec <_vfprintf_r+0x1790>
   11b28:	01812703          	lw	a4,24(sp)
   11b2c:	fff70413          	addi	s0,a4,-1
   11b30:	fc805c63          	blez	s0,11308 <_vfprintf_r+0x7ac>
   11b34:	0e812703          	lw	a4,232(sp)
   11b38:	268c5ce3          	bge	s8,s0,125b0 <_vfprintf_r+0x1a54>
   11b3c:	00700b93          	li	s7,7
   11b40:	00412b03          	lw	s6,4(sp)
   11b44:	00c0006f          	j	11b50 <_vfprintf_r+0xff4>
   11b48:	ff040413          	addi	s0,s0,-16
   11b4c:	268c52e3          	bge	s8,s0,125b0 <_vfprintf_r+0x1a54>
   11b50:	01078793          	addi	a5,a5,16
   11b54:	00170713          	addi	a4,a4,1
   11b58:	00013697          	auipc	a3,0x13
   11b5c:	6ec68693          	addi	a3,a3,1772 # 25244 <zeroes.4505>
   11b60:	00dda023          	sw	a3,0(s11)
   11b64:	018da223          	sw	s8,4(s11)
   11b68:	0ef12623          	sw	a5,236(sp)
   11b6c:	0ee12423          	sw	a4,232(sp)
   11b70:	008d8d93          	addi	s11,s11,8
   11b74:	fcebdae3          	bge	s7,a4,11b48 <_vfprintf_r+0xfec>
   11b78:	0e410613          	addi	a2,sp,228
   11b7c:	000b0593          	mv	a1,s6
   11b80:	000a8513          	mv	a0,s5
   11b84:	1200b0ef          	jal	ra,1cca4 <__sprint_r>
   11b88:	a8051663          	bnez	a0,10e14 <_vfprintf_r+0x2b8>
   11b8c:	0ec12783          	lw	a5,236(sp)
   11b90:	0e812703          	lw	a4,232(sp)
   11b94:	10c10d93          	addi	s11,sp,268
   11b98:	fb1ff06f          	j	11b48 <_vfprintf_r+0xfec>
   11b9c:	41448cb3          	sub	s9,s1,s4
   11ba0:	f3905863          	blez	s9,112d0 <_vfprintf_r+0x774>
   11ba4:	0e812703          	lw	a4,232(sp)
   11ba8:	099c5e63          	bge	s8,s9,11c44 <_vfprintf_r+0x10e8>
   11bac:	000c8693          	mv	a3,s9
   11bb0:	02812a23          	sw	s0,52(sp)
   11bb4:	000b8c93          	mv	s9,s7
   11bb8:	00700e13          	li	t3,7
   11bbc:	000a0b93          	mv	s7,s4
   11bc0:	00412403          	lw	s0,4(sp)
   11bc4:	00048a13          	mv	s4,s1
   11bc8:	00068493          	mv	s1,a3
   11bcc:	00c0006f          	j	11bd8 <_vfprintf_r+0x107c>
   11bd0:	ff048493          	addi	s1,s1,-16
   11bd4:	049c5c63          	bge	s8,s1,11c2c <_vfprintf_r+0x10d0>
   11bd8:	01078793          	addi	a5,a5,16
   11bdc:	00170713          	addi	a4,a4,1
   11be0:	00013697          	auipc	a3,0x13
   11be4:	66468693          	addi	a3,a3,1636 # 25244 <zeroes.4505>
   11be8:	00dda023          	sw	a3,0(s11)
   11bec:	018da223          	sw	s8,4(s11)
   11bf0:	0ef12623          	sw	a5,236(sp)
   11bf4:	0ee12423          	sw	a4,232(sp)
   11bf8:	008d8d93          	addi	s11,s11,8
   11bfc:	fcee5ae3          	bge	t3,a4,11bd0 <_vfprintf_r+0x1074>
   11c00:	0e410613          	addi	a2,sp,228
   11c04:	00040593          	mv	a1,s0
   11c08:	000a8513          	mv	a0,s5
   11c0c:	0980b0ef          	jal	ra,1cca4 <__sprint_r>
   11c10:	a0051263          	bnez	a0,10e14 <_vfprintf_r+0x2b8>
   11c14:	ff048493          	addi	s1,s1,-16
   11c18:	0ec12783          	lw	a5,236(sp)
   11c1c:	0e812703          	lw	a4,232(sp)
   11c20:	10c10d93          	addi	s11,sp,268
   11c24:	00700e13          	li	t3,7
   11c28:	fa9c48e3          	blt	s8,s1,11bd8 <_vfprintf_r+0x107c>
   11c2c:	03412403          	lw	s0,52(sp)
   11c30:	00048693          	mv	a3,s1
   11c34:	000a0493          	mv	s1,s4
   11c38:	000b8a13          	mv	s4,s7
   11c3c:	000c8b93          	mv	s7,s9
   11c40:	00068c93          	mv	s9,a3
   11c44:	00013697          	auipc	a3,0x13
   11c48:	60068693          	addi	a3,a3,1536 # 25244 <zeroes.4505>
   11c4c:	019787b3          	add	a5,a5,s9
   11c50:	00170713          	addi	a4,a4,1
   11c54:	00dda023          	sw	a3,0(s11)
   11c58:	019da223          	sw	s9,4(s11)
   11c5c:	0ef12623          	sw	a5,236(sp)
   11c60:	0ee12423          	sw	a4,232(sp)
   11c64:	00700693          	li	a3,7
   11c68:	008d8d93          	addi	s11,s11,8
   11c6c:	e6e6d263          	bge	a3,a4,112d0 <_vfprintf_r+0x774>
   11c70:	00412583          	lw	a1,4(sp)
   11c74:	0e410613          	addi	a2,sp,228
   11c78:	000a8513          	mv	a0,s5
   11c7c:	0280b0ef          	jal	ra,1cca4 <__sprint_r>
   11c80:	98051a63          	bnez	a0,10e14 <_vfprintf_r+0x2b8>
   11c84:	0ec12783          	lw	a5,236(sp)
   11c88:	10c10d93          	addi	s11,sp,268
   11c8c:	e44ff06f          	j	112d0 <_vfprintf_r+0x774>
   11c90:	0e812703          	lw	a4,232(sp)
   11c94:	096c5863          	bge	s8,s6,11d24 <_vfprintf_r+0x11c8>
   11c98:	000a0693          	mv	a3,s4
   11c9c:	02812a23          	sw	s0,52(sp)
   11ca0:	00048a13          	mv	s4,s1
   11ca4:	00700c93          	li	s9,7
   11ca8:	000b0493          	mv	s1,s6
   11cac:	00412403          	lw	s0,4(sp)
   11cb0:	00068b13          	mv	s6,a3
   11cb4:	00c0006f          	j	11cc0 <_vfprintf_r+0x1164>
   11cb8:	ff048493          	addi	s1,s1,-16
   11cbc:	049c5a63          	bge	s8,s1,11d10 <_vfprintf_r+0x11b4>
   11cc0:	01078793          	addi	a5,a5,16
   11cc4:	00170713          	addi	a4,a4,1
   11cc8:	00013697          	auipc	a3,0x13
   11ccc:	57c68693          	addi	a3,a3,1404 # 25244 <zeroes.4505>
   11cd0:	00dda023          	sw	a3,0(s11)
   11cd4:	018da223          	sw	s8,4(s11)
   11cd8:	0ef12623          	sw	a5,236(sp)
   11cdc:	0ee12423          	sw	a4,232(sp)
   11ce0:	008d8d93          	addi	s11,s11,8
   11ce4:	fcecdae3          	bge	s9,a4,11cb8 <_vfprintf_r+0x115c>
   11ce8:	0e410613          	addi	a2,sp,228
   11cec:	00040593          	mv	a1,s0
   11cf0:	000a8513          	mv	a0,s5
   11cf4:	7b10a0ef          	jal	ra,1cca4 <__sprint_r>
   11cf8:	90051e63          	bnez	a0,10e14 <_vfprintf_r+0x2b8>
   11cfc:	ff048493          	addi	s1,s1,-16
   11d00:	0ec12783          	lw	a5,236(sp)
   11d04:	0e812703          	lw	a4,232(sp)
   11d08:	10c10d93          	addi	s11,sp,268
   11d0c:	fa9c4ae3          	blt	s8,s1,11cc0 <_vfprintf_r+0x1164>
   11d10:	03412403          	lw	s0,52(sp)
   11d14:	000b0693          	mv	a3,s6
   11d18:	00048b13          	mv	s6,s1
   11d1c:	000a0493          	mv	s1,s4
   11d20:	00068a13          	mv	s4,a3
   11d24:	00013697          	auipc	a3,0x13
   11d28:	52068693          	addi	a3,a3,1312 # 25244 <zeroes.4505>
   11d2c:	016787b3          	add	a5,a5,s6
   11d30:	00170713          	addi	a4,a4,1
   11d34:	00dda023          	sw	a3,0(s11)
   11d38:	016da223          	sw	s6,4(s11)
   11d3c:	0ef12623          	sw	a5,236(sp)
   11d40:	0ee12423          	sw	a4,232(sp)
   11d44:	00700693          	li	a3,7
   11d48:	008d8d93          	addi	s11,s11,8
   11d4c:	d8e6d663          	bge	a3,a4,112d8 <_vfprintf_r+0x77c>
   11d50:	00412583          	lw	a1,4(sp)
   11d54:	0e410613          	addi	a2,sp,228
   11d58:	000a8513          	mv	a0,s5
   11d5c:	7490a0ef          	jal	ra,1cca4 <__sprint_r>
   11d60:	8a051a63          	bnez	a0,10e14 <_vfprintf_r+0x2b8>
   11d64:	0ec12783          	lw	a5,236(sp)
   11d68:	10c10d93          	addi	s11,sp,268
   11d6c:	d6cff06f          	j	112d8 <_vfprintf_r+0x77c>
   11d70:	0e812683          	lw	a3,232(sp)
   11d74:	00178c93          	addi	s9,a5,1
   11d78:	01812783          	lw	a5,24(sp)
   11d7c:	00100713          	li	a4,1
   11d80:	01ada023          	sw	s10,0(s11)
   11d84:	00168413          	addi	s0,a3,1
   11d88:	008d8b93          	addi	s7,s11,8
   11d8c:	def75c63          	bge	a4,a5,11384 <_vfprintf_r+0x828>
   11d90:	00100713          	li	a4,1
   11d94:	00eda223          	sw	a4,4(s11)
   11d98:	0f912623          	sw	s9,236(sp)
   11d9c:	0e812423          	sw	s0,232(sp)
   11da0:	00700713          	li	a4,7
   11da4:	62874063          	blt	a4,s0,123c4 <_vfprintf_r+0x1868>
   11da8:	02812783          	lw	a5,40(sp)
   11dac:	03012703          	lw	a4,48(sp)
   11db0:	00140413          	addi	s0,s0,1
   11db4:	00fc8cb3          	add	s9,s9,a5
   11db8:	00eba023          	sw	a4,0(s7)
   11dbc:	00fba223          	sw	a5,4(s7)
   11dc0:	0f912623          	sw	s9,236(sp)
   11dc4:	0e812423          	sw	s0,232(sp)
   11dc8:	00700713          	li	a4,7
   11dcc:	008b8b93          	addi	s7,s7,8
   11dd0:	60874e63          	blt	a4,s0,123ec <_vfprintf_r+0x1890>
   11dd4:	0f012703          	lw	a4,240(sp)
   11dd8:	01812783          	lw	a5,24(sp)
   11ddc:	00140613          	addi	a2,s0,1
   11de0:	0ae12823          	sw	a4,176(sp)
   11de4:	0f412703          	lw	a4,244(sp)
   11de8:	0a010593          	addi	a1,sp,160
   11dec:	0b010513          	addi	a0,sp,176
   11df0:	0ae12a23          	sw	a4,180(sp)
   11df4:	0f812703          	lw	a4,248(sp)
   11df8:	00060b13          	mv	s6,a2
   11dfc:	02c12023          	sw	a2,32(sp)
   11e00:	0ae12c23          	sw	a4,184(sp)
   11e04:	0fc12703          	lw	a4,252(sp)
   11e08:	0a012023          	sw	zero,160(sp)
   11e0c:	0a012223          	sw	zero,164(sp)
   11e10:	0ae12e23          	sw	a4,188(sp)
   11e14:	fff78713          	addi	a4,a5,-1
   11e18:	00e12a23          	sw	a4,20(sp)
   11e1c:	0a012423          	sw	zero,168(sp)
   11e20:	0a012623          	sw	zero,172(sp)
   11e24:	3810f0ef          	jal	ra,219a4 <__eqtf2>
   11e28:	008b8d93          	addi	s11,s7,8
   11e2c:	01412703          	lw	a4,20(sp)
   11e30:	02012603          	lw	a2,32(sp)
   11e34:	32050063          	beqz	a0,12154 <_vfprintf_r+0x15f8>
   11e38:	00ec8cb3          	add	s9,s9,a4
   11e3c:	001d0813          	addi	a6,s10,1
   11e40:	00eba223          	sw	a4,4(s7)
   11e44:	010ba023          	sw	a6,0(s7)
   11e48:	0f912623          	sw	s9,236(sp)
   11e4c:	0f612423          	sw	s6,232(sp)
   11e50:	00700713          	li	a4,7
   11e54:	47674463          	blt	a4,s6,122bc <_vfprintf_r+0x1760>
   11e58:	010b8713          	addi	a4,s7,16
   11e5c:	00240b13          	addi	s6,s0,2
   11e60:	000d8b93          	mv	s7,s11
   11e64:	00070d93          	mv	s11,a4
   11e68:	d40ff06f          	j	113a8 <_vfprintf_r+0x84c>
   11e6c:	00098a13          	mv	s4,s3
   11e70:	95dff06f          	j	117cc <_vfprintf_r+0xc70>
   11e74:	0e812703          	lw	a4,232(sp)
   11e78:	00013c97          	auipc	s9,0x13
   11e7c:	3bcc8c93          	addi	s9,s9,956 # 25234 <blanks.4504>
   11e80:	0cdc5863          	bge	s8,a3,11f50 <_vfprintf_r+0x13f4>
   11e84:	05212623          	sw	s2,76(sp)
   11e88:	000d8613          	mv	a2,s11
   11e8c:	000c8913          	mv	s2,s9
   11e90:	000d0d93          	mv	s11,s10
   11e94:	000a0c93          	mv	s9,s4
   11e98:	000b8d13          	mv	s10,s7
   11e9c:	00098a13          	mv	s4,s3
   11ea0:	000b0b93          	mv	s7,s6
   11ea4:	00040993          	mv	s3,s0
   11ea8:	00048b13          	mv	s6,s1
   11eac:	00700f93          	li	t6,7
   11eb0:	03e12a23          	sw	t5,52(sp)
   11eb4:	05d12423          	sw	t4,72(sp)
   11eb8:	00412483          	lw	s1,4(sp)
   11ebc:	00068413          	mv	s0,a3
   11ec0:	00c0006f          	j	11ecc <_vfprintf_r+0x1370>
   11ec4:	ff040413          	addi	s0,s0,-16
   11ec8:	048c5a63          	bge	s8,s0,11f1c <_vfprintf_r+0x13c0>
   11ecc:	01078793          	addi	a5,a5,16
   11ed0:	00170713          	addi	a4,a4,1
   11ed4:	01262023          	sw	s2,0(a2)
   11ed8:	01862223          	sw	s8,4(a2)
   11edc:	0ef12623          	sw	a5,236(sp)
   11ee0:	0ee12423          	sw	a4,232(sp)
   11ee4:	00860613          	addi	a2,a2,8
   11ee8:	fcefdee3          	bge	t6,a4,11ec4 <_vfprintf_r+0x1368>
   11eec:	0e410613          	addi	a2,sp,228
   11ef0:	00048593          	mv	a1,s1
   11ef4:	000a8513          	mv	a0,s5
   11ef8:	5ad0a0ef          	jal	ra,1cca4 <__sprint_r>
   11efc:	00050463          	beqz	a0,11f04 <_vfprintf_r+0x13a8>
   11f00:	f15fe06f          	j	10e14 <_vfprintf_r+0x2b8>
   11f04:	ff040413          	addi	s0,s0,-16
   11f08:	0ec12783          	lw	a5,236(sp)
   11f0c:	0e812703          	lw	a4,232(sp)
   11f10:	10c10613          	addi	a2,sp,268
   11f14:	00700f93          	li	t6,7
   11f18:	fa8c4ae3          	blt	s8,s0,11ecc <_vfprintf_r+0x1370>
   11f1c:	00040693          	mv	a3,s0
   11f20:	03412f03          	lw	t5,52(sp)
   11f24:	00098413          	mv	s0,s3
   11f28:	04812e83          	lw	t4,72(sp)
   11f2c:	000a0993          	mv	s3,s4
   11f30:	000c8a13          	mv	s4,s9
   11f34:	00090c93          	mv	s9,s2
   11f38:	04c12903          	lw	s2,76(sp)
   11f3c:	000b0493          	mv	s1,s6
   11f40:	000b8b13          	mv	s6,s7
   11f44:	000d0b93          	mv	s7,s10
   11f48:	000d8d13          	mv	s10,s11
   11f4c:	00060d93          	mv	s11,a2
   11f50:	00d787b3          	add	a5,a5,a3
   11f54:	00170713          	addi	a4,a4,1
   11f58:	00dda223          	sw	a3,4(s11)
   11f5c:	019da023          	sw	s9,0(s11)
   11f60:	0ef12623          	sw	a5,236(sp)
   11f64:	0ee12423          	sw	a4,232(sp)
   11f68:	00700693          	li	a3,7
   11f6c:	008d8d93          	addi	s11,s11,8
   11f70:	aee6d663          	bge	a3,a4,1125c <_vfprintf_r+0x700>
   11f74:	00412583          	lw	a1,4(sp)
   11f78:	0e410613          	addi	a2,sp,228
   11f7c:	000a8513          	mv	a0,s5
   11f80:	05d12423          	sw	t4,72(sp)
   11f84:	03e12a23          	sw	t5,52(sp)
   11f88:	51d0a0ef          	jal	ra,1cca4 <__sprint_r>
   11f8c:	00050463          	beqz	a0,11f94 <_vfprintf_r+0x1438>
   11f90:	e85fe06f          	j	10e14 <_vfprintf_r+0x2b8>
   11f94:	0ec12783          	lw	a5,236(sp)
   11f98:	10c10d93          	addi	s11,sp,268
   11f9c:	04812e83          	lw	t4,72(sp)
   11fa0:	03412f03          	lw	t5,52(sp)
   11fa4:	ab8ff06f          	j	1125c <_vfprintf_r+0x700>
   11fa8:	00412583          	lw	a1,4(sp)
   11fac:	0e410613          	addi	a2,sp,228
   11fb0:	000a8513          	mv	a0,s5
   11fb4:	03d12a23          	sw	t4,52(sp)
   11fb8:	4ed0a0ef          	jal	ra,1cca4 <__sprint_r>
   11fbc:	00050463          	beqz	a0,11fc4 <_vfprintf_r+0x1468>
   11fc0:	e55fe06f          	j	10e14 <_vfprintf_r+0x2b8>
   11fc4:	0ec12783          	lw	a5,236(sp)
   11fc8:	10c10d93          	addi	s11,sp,268
   11fcc:	03412e83          	lw	t4,52(sp)
   11fd0:	af8ff06f          	j	112c8 <_vfprintf_r+0x76c>
   11fd4:	0cc12683          	lw	a3,204(sp)
   11fd8:	42d05e63          	blez	a3,12414 <_vfprintf_r+0x18b8>
   11fdc:	01812703          	lw	a4,24(sp)
   11fe0:	01412683          	lw	a3,20(sp)
   11fe4:	00070413          	mv	s0,a4
   11fe8:	28e6cc63          	blt	a3,a4,12280 <_vfprintf_r+0x1724>
   11fec:	02805663          	blez	s0,12018 <_vfprintf_r+0x14bc>
   11ff0:	0e812703          	lw	a4,232(sp)
   11ff4:	008787b3          	add	a5,a5,s0
   11ff8:	01ada023          	sw	s10,0(s11)
   11ffc:	00170713          	addi	a4,a4,1
   12000:	008da223          	sw	s0,4(s11)
   12004:	0ef12623          	sw	a5,236(sp)
   12008:	0ee12423          	sw	a4,232(sp)
   1200c:	00700693          	li	a3,7
   12010:	008d8d93          	addi	s11,s11,8
   12014:	1ee6cee3          	blt	a3,a4,12a10 <_vfprintf_r+0x1eb4>
   12018:	fff44713          	not	a4,s0
   1201c:	41f75713          	srai	a4,a4,0x1f
   12020:	00e47433          	and	s0,s0,a4
   12024:	01412703          	lw	a4,20(sp)
   12028:	40870433          	sub	s0,a4,s0
   1202c:	32804263          	bgtz	s0,12350 <_vfprintf_r+0x17f4>
   12030:	01412683          	lw	a3,20(sp)
   12034:	4009f713          	andi	a4,s3,1024
   12038:	00dd0b33          	add	s6,s10,a3
   1203c:	7c071663          	bnez	a4,12808 <_vfprintf_r+0x1cac>
   12040:	0cc12403          	lw	s0,204(sp)
   12044:	01812703          	lw	a4,24(sp)
   12048:	00e44663          	blt	s0,a4,12054 <_vfprintf_r+0x14f8>
   1204c:	0019f713          	andi	a4,s3,1
   12050:	1e0706e3          	beqz	a4,12a3c <_vfprintf_r+0x1ee0>
   12054:	03012703          	lw	a4,48(sp)
   12058:	02812683          	lw	a3,40(sp)
   1205c:	008d8d93          	addi	s11,s11,8
   12060:	feedac23          	sw	a4,-8(s11)
   12064:	0e812703          	lw	a4,232(sp)
   12068:	00d787b3          	add	a5,a5,a3
   1206c:	feddae23          	sw	a3,-4(s11)
   12070:	00170713          	addi	a4,a4,1
   12074:	0ef12623          	sw	a5,236(sp)
   12078:	0ee12423          	sw	a4,232(sp)
   1207c:	00700693          	li	a3,7
   12080:	00e6d463          	bge	a3,a4,12088 <_vfprintf_r+0x152c>
   12084:	0700106f          	j	130f4 <_vfprintf_r+0x2598>
   12088:	01812683          	lw	a3,24(sp)
   1208c:	00dd0733          	add	a4,s10,a3
   12090:	40868433          	sub	s0,a3,s0
   12094:	41670733          	sub	a4,a4,s6
   12098:	00040b93          	mv	s7,s0
   1209c:	00875463          	bge	a4,s0,120a4 <_vfprintf_r+0x1548>
   120a0:	00070b93          	mv	s7,a4
   120a4:	03705863          	blez	s7,120d4 <_vfprintf_r+0x1578>
   120a8:	0e812703          	lw	a4,232(sp)
   120ac:	017787b3          	add	a5,a5,s7
   120b0:	016da023          	sw	s6,0(s11)
   120b4:	00170713          	addi	a4,a4,1
   120b8:	017da223          	sw	s7,4(s11)
   120bc:	0ef12623          	sw	a5,236(sp)
   120c0:	0ee12423          	sw	a4,232(sp)
   120c4:	00700693          	li	a3,7
   120c8:	008d8d93          	addi	s11,s11,8
   120cc:	00e6d463          	bge	a3,a4,120d4 <_vfprintf_r+0x1578>
   120d0:	0ac0106f          	j	1317c <_vfprintf_r+0x2620>
   120d4:	fffbc713          	not	a4,s7
   120d8:	41f75713          	srai	a4,a4,0x1f
   120dc:	00ebfbb3          	and	s7,s7,a4
   120e0:	41740433          	sub	s0,s0,s7
   120e4:	a2805263          	blez	s0,11308 <_vfprintf_r+0x7ac>
   120e8:	0e812703          	lw	a4,232(sp)
   120ec:	4c8c5263          	bge	s8,s0,125b0 <_vfprintf_r+0x1a54>
   120f0:	00700b93          	li	s7,7
   120f4:	00412b03          	lw	s6,4(sp)
   120f8:	00c0006f          	j	12104 <_vfprintf_r+0x15a8>
   120fc:	ff040413          	addi	s0,s0,-16
   12100:	4a8c5863          	bge	s8,s0,125b0 <_vfprintf_r+0x1a54>
   12104:	01078793          	addi	a5,a5,16
   12108:	00170713          	addi	a4,a4,1
   1210c:	00013697          	auipc	a3,0x13
   12110:	13868693          	addi	a3,a3,312 # 25244 <zeroes.4505>
   12114:	00dda023          	sw	a3,0(s11)
   12118:	018da223          	sw	s8,4(s11)
   1211c:	0ef12623          	sw	a5,236(sp)
   12120:	0ee12423          	sw	a4,232(sp)
   12124:	008d8d93          	addi	s11,s11,8
   12128:	fcebdae3          	bge	s7,a4,120fc <_vfprintf_r+0x15a0>
   1212c:	0e410613          	addi	a2,sp,228
   12130:	000b0593          	mv	a1,s6
   12134:	000a8513          	mv	a0,s5
   12138:	36d0a0ef          	jal	ra,1cca4 <__sprint_r>
   1213c:	00050463          	beqz	a0,12144 <_vfprintf_r+0x15e8>
   12140:	cd5fe06f          	j	10e14 <_vfprintf_r+0x2b8>
   12144:	0ec12783          	lw	a5,236(sp)
   12148:	0e812703          	lw	a4,232(sp)
   1214c:	10c10d93          	addi	s11,sp,268
   12150:	fadff06f          	j	120fc <_vfprintf_r+0x15a0>
   12154:	a4e05a63          	blez	a4,113a8 <_vfprintf_r+0x84c>
   12158:	00ec4463          	blt	s8,a4,12160 <_vfprintf_r+0x1604>
   1215c:	4880106f          	j	135e4 <_vfprintf_r+0x2a88>
   12160:	00700b13          	li	s6,7
   12164:	00070d93          	mv	s11,a4
   12168:	00412d03          	lw	s10,4(sp)
   1216c:	00060413          	mv	s0,a2
   12170:	0100006f          	j	12180 <_vfprintf_r+0x1624>
   12174:	ff0d8d93          	addi	s11,s11,-16
   12178:	11bc5a63          	bge	s8,s11,1228c <_vfprintf_r+0x1730>
   1217c:	00140413          	addi	s0,s0,1
   12180:	010c8c93          	addi	s9,s9,16
   12184:	00013797          	auipc	a5,0x13
   12188:	0c078793          	addi	a5,a5,192 # 25244 <zeroes.4505>
   1218c:	00fba023          	sw	a5,0(s7)
   12190:	018ba223          	sw	s8,4(s7)
   12194:	0f912623          	sw	s9,236(sp)
   12198:	0e812423          	sw	s0,232(sp)
   1219c:	008b8b93          	addi	s7,s7,8
   121a0:	fc8b5ae3          	bge	s6,s0,12174 <_vfprintf_r+0x1618>
   121a4:	0e410613          	addi	a2,sp,228
   121a8:	000d0593          	mv	a1,s10
   121ac:	000a8513          	mv	a0,s5
   121b0:	2f50a0ef          	jal	ra,1cca4 <__sprint_r>
   121b4:	00050463          	beqz	a0,121bc <_vfprintf_r+0x1660>
   121b8:	c5dfe06f          	j	10e14 <_vfprintf_r+0x2b8>
   121bc:	0ec12c83          	lw	s9,236(sp)
   121c0:	0e812403          	lw	s0,232(sp)
   121c4:	10c10b93          	addi	s7,sp,268
   121c8:	fadff06f          	j	12174 <_vfprintf_r+0x1618>
   121cc:	03000793          	li	a5,48
   121d0:	1af107a3          	sb	a5,431(sp)
   121d4:	1af10d13          	addi	s10,sp,431
   121d8:	d21fe06f          	j	10ef8 <_vfprintf_r+0x39c>
   121dc:	2009f793          	andi	a5,s3,512
   121e0:	0c0798e3          	bnez	a5,12ab0 <_vfprintf_r+0x1f54>
   121e4:	00000b93          	li	s7,0
   121e8:	cc5fe06f          	j	10eac <_vfprintf_r+0x350>
   121ec:	00c12703          	lw	a4,12(sp)
   121f0:	00072783          	lw	a5,0(a4)
   121f4:	00470713          	addi	a4,a4,4
   121f8:	00e12623          	sw	a4,12(sp)
   121fc:	0007a603          	lw	a2,0(a5)
   12200:	0047a683          	lw	a3,4(a5)
   12204:	0087a703          	lw	a4,8(a5)
   12208:	00c7a783          	lw	a5,12(a5)
   1220c:	0ec12823          	sw	a2,240(sp)
   12210:	0ed12a23          	sw	a3,244(sp)
   12214:	0ee12c23          	sw	a4,248(sp)
   12218:	0ef12e23          	sw	a5,252(sp)
   1221c:	ac4ff06f          	j	114e0 <_vfprintf_r+0x984>
   12220:	03000713          	li	a4,48
   12224:	0029e993          	ori	s3,s3,2
   12228:	0ce10423          	sb	a4,200(sp)
   1222c:	0c8104a3          	sb	s0,201(sp)
   12230:	bff9fa13          	andi	s4,s3,-1025
   12234:	00200713          	li	a4,2
   12238:	c91fe06f          	j	10ec8 <_vfprintf_r+0x36c>
   1223c:	00812603          	lw	a2,8(sp)
   12240:	0006a783          	lw	a5,0(a3)
   12244:	00e12623          	sw	a4,12(sp)
   12248:	41f65693          	srai	a3,a2,0x1f
   1224c:	00c7a023          	sw	a2,0(a5)
   12250:	00d7a223          	sw	a3,4(a5)
   12254:	00090d13          	mv	s10,s2
   12258:	e05fe06f          	j	1105c <_vfprintf_r+0x500>
   1225c:	03c12783          	lw	a5,60(sp)
   12260:	00094403          	lbu	s0,0(s2)
   12264:	00079463          	bnez	a5,1226c <_vfprintf_r+0x1710>
   12268:	aa9fe06f          	j	10d10 <_vfprintf_r+0x1b4>
   1226c:	0007c783          	lbu	a5,0(a5)
   12270:	00079463          	bnez	a5,12278 <_vfprintf_r+0x171c>
   12274:	a9dfe06f          	j	10d10 <_vfprintf_r+0x1b4>
   12278:	4009e993          	ori	s3,s3,1024
   1227c:	a95fe06f          	j	10d10 <_vfprintf_r+0x1b4>
   12280:	00068413          	mv	s0,a3
   12284:	d68046e3          	bgtz	s0,11ff0 <_vfprintf_r+0x1494>
   12288:	d91ff06f          	j	12018 <_vfprintf_r+0x14bc>
   1228c:	000d8713          	mv	a4,s11
   12290:	00140b13          	addi	s6,s0,1
   12294:	008b8613          	addi	a2,s7,8
   12298:	00ec8cb3          	add	s9,s9,a4
   1229c:	00013797          	auipc	a5,0x13
   122a0:	fa878793          	addi	a5,a5,-88 # 25244 <zeroes.4505>
   122a4:	00eba223          	sw	a4,4(s7)
   122a8:	00fba023          	sw	a5,0(s7)
   122ac:	0f912623          	sw	s9,236(sp)
   122b0:	0f612423          	sw	s6,232(sp)
   122b4:	00700713          	li	a4,7
   122b8:	71675a63          	bge	a4,s6,129cc <_vfprintf_r+0x1e70>
   122bc:	00412583          	lw	a1,4(sp)
   122c0:	0e410613          	addi	a2,sp,228
   122c4:	000a8513          	mv	a0,s5
   122c8:	1dd0a0ef          	jal	ra,1cca4 <__sprint_r>
   122cc:	00050463          	beqz	a0,122d4 <_vfprintf_r+0x1778>
   122d0:	b45fe06f          	j	10e14 <_vfprintf_r+0x2b8>
   122d4:	0e812683          	lw	a3,232(sp)
   122d8:	0ec12c83          	lw	s9,236(sp)
   122dc:	11410d93          	addi	s11,sp,276
   122e0:	00168b13          	addi	s6,a3,1
   122e4:	10c10b93          	addi	s7,sp,268
   122e8:	8c0ff06f          	j	113a8 <_vfprintf_r+0x84c>
   122ec:	00412583          	lw	a1,4(sp)
   122f0:	0e410613          	addi	a2,sp,228
   122f4:	000a8513          	mv	a0,s5
   122f8:	1ad0a0ef          	jal	ra,1cca4 <__sprint_r>
   122fc:	00050463          	beqz	a0,12304 <_vfprintf_r+0x17a8>
   12300:	b15fe06f          	j	10e14 <_vfprintf_r+0x2b8>
   12304:	0ec12783          	lw	a5,236(sp)
   12308:	10c10d93          	addi	s11,sp,268
   1230c:	81dff06f          	j	11b28 <_vfprintf_r+0xfcc>
   12310:	00194403          	lbu	s0,1(s2)
   12314:	2009e993          	ori	s3,s3,512
   12318:	00190913          	addi	s2,s2,1
   1231c:	9f5fe06f          	j	10d10 <_vfprintf_r+0x1b4>
   12320:	00194403          	lbu	s0,1(s2)
   12324:	0209e993          	ori	s3,s3,32
   12328:	00190913          	addi	s2,s2,1
   1232c:	9e5fe06f          	j	10d10 <_vfprintf_r+0x1b4>
   12330:	00600793          	li	a5,6
   12334:	000b0b93          	mv	s7,s6
   12338:	6f67ee63          	bltu	a5,s6,12a34 <_vfprintf_r+0x1ed8>
   1233c:	000b8a13          	mv	s4,s7
   12340:	01912623          	sw	s9,12(sp)
   12344:	00013d17          	auipc	s10,0x13
   12348:	f48d0d13          	addi	s10,s10,-184 # 2528c <zeroes.4505+0x48>
   1234c:	eddfe06f          	j	11228 <_vfprintf_r+0x6cc>
   12350:	0e812703          	lw	a4,232(sp)
   12354:	468c5263          	bge	s8,s0,127b8 <_vfprintf_r+0x1c5c>
   12358:	00700b93          	li	s7,7
   1235c:	00412b03          	lw	s6,4(sp)
   12360:	00c0006f          	j	1236c <_vfprintf_r+0x1810>
   12364:	ff040413          	addi	s0,s0,-16
   12368:	448c5863          	bge	s8,s0,127b8 <_vfprintf_r+0x1c5c>
   1236c:	01078793          	addi	a5,a5,16
   12370:	00170713          	addi	a4,a4,1
   12374:	00013697          	auipc	a3,0x13
   12378:	ed068693          	addi	a3,a3,-304 # 25244 <zeroes.4505>
   1237c:	00dda023          	sw	a3,0(s11)
   12380:	018da223          	sw	s8,4(s11)
   12384:	0ef12623          	sw	a5,236(sp)
   12388:	0ee12423          	sw	a4,232(sp)
   1238c:	008d8d93          	addi	s11,s11,8
   12390:	fcebdae3          	bge	s7,a4,12364 <_vfprintf_r+0x1808>
   12394:	0e410613          	addi	a2,sp,228
   12398:	000b0593          	mv	a1,s6
   1239c:	000a8513          	mv	a0,s5
   123a0:	1050a0ef          	jal	ra,1cca4 <__sprint_r>
   123a4:	00050463          	beqz	a0,123ac <_vfprintf_r+0x1850>
   123a8:	a6dfe06f          	j	10e14 <_vfprintf_r+0x2b8>
   123ac:	0ec12783          	lw	a5,236(sp)
   123b0:	0e812703          	lw	a4,232(sp)
   123b4:	10c10d93          	addi	s11,sp,268
   123b8:	fadff06f          	j	12364 <_vfprintf_r+0x1808>
   123bc:	000d0493          	mv	s1,s10
   123c0:	931fe06f          	j	10cf0 <_vfprintf_r+0x194>
   123c4:	00412583          	lw	a1,4(sp)
   123c8:	0e410613          	addi	a2,sp,228
   123cc:	000a8513          	mv	a0,s5
   123d0:	0d50a0ef          	jal	ra,1cca4 <__sprint_r>
   123d4:	00050463          	beqz	a0,123dc <_vfprintf_r+0x1880>
   123d8:	a3dfe06f          	j	10e14 <_vfprintf_r+0x2b8>
   123dc:	0ec12c83          	lw	s9,236(sp)
   123e0:	0e812403          	lw	s0,232(sp)
   123e4:	10c10b93          	addi	s7,sp,268
   123e8:	9c1ff06f          	j	11da8 <_vfprintf_r+0x124c>
   123ec:	00412583          	lw	a1,4(sp)
   123f0:	0e410613          	addi	a2,sp,228
   123f4:	000a8513          	mv	a0,s5
   123f8:	0ad0a0ef          	jal	ra,1cca4 <__sprint_r>
   123fc:	00050463          	beqz	a0,12404 <_vfprintf_r+0x18a8>
   12400:	a15fe06f          	j	10e14 <_vfprintf_r+0x2b8>
   12404:	0ec12c83          	lw	s9,236(sp)
   12408:	0e812403          	lw	s0,232(sp)
   1240c:	10c10b93          	addi	s7,sp,268
   12410:	9c5ff06f          	j	11dd4 <_vfprintf_r+0x1278>
   12414:	0e812703          	lw	a4,232(sp)
   12418:	00013617          	auipc	a2,0x13
   1241c:	e7c60613          	addi	a2,a2,-388 # 25294 <zeroes.4505+0x50>
   12420:	00cda023          	sw	a2,0(s11)
   12424:	00178793          	addi	a5,a5,1
   12428:	00100613          	li	a2,1
   1242c:	00170713          	addi	a4,a4,1
   12430:	00cda223          	sw	a2,4(s11)
   12434:	0ef12623          	sw	a5,236(sp)
   12438:	0ee12423          	sw	a4,232(sp)
   1243c:	00700613          	li	a2,7
   12440:	008d8d93          	addi	s11,s11,8
   12444:	58e64c63          	blt	a2,a4,129dc <_vfprintf_r+0x1e80>
   12448:	22069a63          	bnez	a3,1267c <_vfprintf_r+0x1b20>
   1244c:	01812683          	lw	a3,24(sp)
   12450:	0019f713          	andi	a4,s3,1
   12454:	00d76733          	or	a4,a4,a3
   12458:	00071463          	bnez	a4,12460 <_vfprintf_r+0x1904>
   1245c:	eadfe06f          	j	11308 <_vfprintf_r+0x7ac>
   12460:	03012703          	lw	a4,48(sp)
   12464:	02812683          	lw	a3,40(sp)
   12468:	008d8893          	addi	a7,s11,8
   1246c:	00eda023          	sw	a4,0(s11)
   12470:	0e812703          	lw	a4,232(sp)
   12474:	00f687b3          	add	a5,a3,a5
   12478:	00dda223          	sw	a3,4(s11)
   1247c:	00170713          	addi	a4,a4,1
   12480:	0ef12623          	sw	a5,236(sp)
   12484:	0ee12423          	sw	a4,232(sp)
   12488:	00700693          	li	a3,7
   1248c:	62e6cc63          	blt	a3,a4,12ac4 <_vfprintf_r+0x1f68>
   12490:	01812683          	lw	a3,24(sp)
   12494:	00170713          	addi	a4,a4,1
   12498:	01a8a023          	sw	s10,0(a7)
   1249c:	00f687b3          	add	a5,a3,a5
   124a0:	00d8a223          	sw	a3,4(a7)
   124a4:	0ef12623          	sw	a5,236(sp)
   124a8:	0ee12423          	sw	a4,232(sp)
   124ac:	00700693          	li	a3,7
   124b0:	00888d93          	addi	s11,a7,8
   124b4:	00e6c463          	blt	a3,a4,124bc <_vfprintf_r+0x1960>
   124b8:	e51fe06f          	j	11308 <_vfprintf_r+0x7ac>
   124bc:	f11fe06f          	j	113cc <_vfprintf_r+0x870>
   124c0:	1b010d13          	addi	s10,sp,432
   124c4:	00000793          	li	a5,0
   124c8:	400a7993          	andi	s3,s4,1024
   124cc:	01212823          	sw	s2,16(sp)
   124d0:	00812a23          	sw	s0,20(sp)
   124d4:	000d0913          	mv	s2,s10
   124d8:	00078413          	mv	s0,a5
   124dc:	000a8d13          	mv	s10,s5
   124e0:	000a0a93          	mv	s5,s4
   124e4:	000b8a13          	mv	s4,s7
   124e8:	000b0b93          	mv	s7,s6
   124ec:	00048b13          	mv	s6,s1
   124f0:	03c12483          	lw	s1,60(sp)
   124f4:	0240006f          	j	12518 <_vfprintf_r+0x19bc>
   124f8:	00a00613          	li	a2,10
   124fc:	00000693          	li	a3,0
   12500:	000c8513          	mv	a0,s9
   12504:	000a0593          	mv	a1,s4
   12508:	3990d0ef          	jal	ra,200a0 <__udivdi3>
   1250c:	2e0a0ce3          	beqz	s4,13004 <_vfprintf_r+0x24a8>
   12510:	00050c93          	mv	s9,a0
   12514:	00058a13          	mv	s4,a1
   12518:	00a00613          	li	a2,10
   1251c:	00000693          	li	a3,0
   12520:	000c8513          	mv	a0,s9
   12524:	000a0593          	mv	a1,s4
   12528:	14c0e0ef          	jal	ra,20674 <__umoddi3>
   1252c:	03050513          	addi	a0,a0,48
   12530:	fea90fa3          	sb	a0,-1(s2)
   12534:	00140413          	addi	s0,s0,1
   12538:	fff90913          	addi	s2,s2,-1
   1253c:	fa098ee3          	beqz	s3,124f8 <_vfprintf_r+0x199c>
   12540:	0004c683          	lbu	a3,0(s1)
   12544:	fad41ae3          	bne	s0,a3,124f8 <_vfprintf_r+0x199c>
   12548:	0ff00793          	li	a5,255
   1254c:	faf406e3          	beq	s0,a5,124f8 <_vfprintf_r+0x199c>
   12550:	260a1ae3          	bnez	s4,12fc4 <_vfprintf_r+0x2468>
   12554:	00900793          	li	a5,9
   12558:	2797e6e3          	bltu	a5,s9,12fc4 <_vfprintf_r+0x2468>
   1255c:	000a8a13          	mv	s4,s5
   12560:	1b010793          	addi	a5,sp,432
   12564:	000d0a93          	mv	s5,s10
   12568:	00090d13          	mv	s10,s2
   1256c:	00812c23          	sw	s0,24(sp)
   12570:	02912e23          	sw	s1,60(sp)
   12574:	01412403          	lw	s0,20(sp)
   12578:	000b0493          	mv	s1,s6
   1257c:	01012903          	lw	s2,16(sp)
   12580:	000b8b13          	mv	s6,s7
   12584:	000a0993          	mv	s3,s4
   12588:	41a78bb3          	sub	s7,a5,s10
   1258c:	96dfe06f          	j	10ef8 <_vfprintf_r+0x39c>
   12590:	00412583          	lw	a1,4(sp)
   12594:	0e410613          	addi	a2,sp,228
   12598:	000a8513          	mv	a0,s5
   1259c:	7080a0ef          	jal	ra,1cca4 <__sprint_r>
   125a0:	00050463          	beqz	a0,125a8 <_vfprintf_r+0x1a4c>
   125a4:	871fe06f          	j	10e14 <_vfprintf_r+0x2b8>
   125a8:	10c10d93          	addi	s11,sp,268
   125ac:	d2cff06f          	j	11ad8 <_vfprintf_r+0xf7c>
   125b0:	00013697          	auipc	a3,0x13
   125b4:	c9468693          	addi	a3,a3,-876 # 25244 <zeroes.4505>
   125b8:	00dda023          	sw	a3,0(s11)
   125bc:	008da223          	sw	s0,4(s11)
   125c0:	008787b3          	add	a5,a5,s0
   125c4:	00170713          	addi	a4,a4,1
   125c8:	0ef12623          	sw	a5,236(sp)
   125cc:	0ee12423          	sw	a4,232(sp)
   125d0:	00700693          	li	a3,7
   125d4:	00e6c463          	blt	a3,a4,125dc <_vfprintf_r+0x1a80>
   125d8:	d2dfe06f          	j	11304 <_vfprintf_r+0x7a8>
   125dc:	df1fe06f          	j	113cc <_vfprintf_r+0x870>
   125e0:	0f012783          	lw	a5,240(sp)
   125e4:	0a010593          	addi	a1,sp,160
   125e8:	0b010513          	addi	a0,sp,176
   125ec:	0af12823          	sw	a5,176(sp)
   125f0:	0f412783          	lw	a5,244(sp)
   125f4:	0a012023          	sw	zero,160(sp)
   125f8:	0a012223          	sw	zero,164(sp)
   125fc:	0af12a23          	sw	a5,180(sp)
   12600:	0f812783          	lw	a5,248(sp)
   12604:	0a012423          	sw	zero,168(sp)
   12608:	0a012623          	sw	zero,172(sp)
   1260c:	0af12c23          	sw	a5,184(sp)
   12610:	0fc12783          	lw	a5,252(sp)
   12614:	0af12e23          	sw	a5,188(sp)
   12618:	59c0f0ef          	jal	ra,21bb4 <__letf2>
   1261c:	2c0546e3          	bltz	a0,130e8 <_vfprintf_r+0x258c>
   12620:	0c714783          	lbu	a5,199(sp)
   12624:	04700713          	li	a4,71
   12628:	00013d17          	auipc	s10,0x13
   1262c:	c2cd0d13          	addi	s10,s10,-980 # 25254 <zeroes.4505+0x10>
   12630:	3c874a63          	blt	a4,s0,12a04 <_vfprintf_r+0x1ea8>
   12634:	00012823          	sw	zero,16(sp)
   12638:	02012223          	sw	zero,36(sp)
   1263c:	02012023          	sw	zero,32(sp)
   12640:	00012a23          	sw	zero,20(sp)
   12644:	f7f9f993          	andi	s3,s3,-129
   12648:	00300a13          	li	s4,3
   1264c:	00300b93          	li	s7,3
   12650:	00000b13          	li	s6,0
   12654:	00078463          	beqz	a5,1265c <_vfprintf_r+0x1b00>
   12658:	8c5fe06f          	j	10f1c <_vfprintf_r+0x3c0>
   1265c:	be1fe06f          	j	1123c <_vfprintf_r+0x6e0>
   12660:	00c12783          	lw	a5,12(sp)
   12664:	00090d13          	mv	s10,s2
   12668:	0007a783          	lw	a5,0(a5)
   1266c:	00e12623          	sw	a4,12(sp)
   12670:	00812703          	lw	a4,8(sp)
   12674:	00e7a023          	sw	a4,0(a5)
   12678:	9e5fe06f          	j	1105c <_vfprintf_r+0x500>
   1267c:	03012703          	lw	a4,48(sp)
   12680:	02812603          	lw	a2,40(sp)
   12684:	008d8893          	addi	a7,s11,8
   12688:	00eda023          	sw	a4,0(s11)
   1268c:	0e812703          	lw	a4,232(sp)
   12690:	00f607b3          	add	a5,a2,a5
   12694:	00cda223          	sw	a2,4(s11)
   12698:	00170713          	addi	a4,a4,1
   1269c:	0ef12623          	sw	a5,236(sp)
   126a0:	0ee12423          	sw	a4,232(sp)
   126a4:	00700613          	li	a2,7
   126a8:	40e64e63          	blt	a2,a4,12ac4 <_vfprintf_r+0x1f68>
   126ac:	de06d2e3          	bgez	a3,12490 <_vfprintf_r+0x1934>
   126b0:	ff000613          	li	a2,-16
   126b4:	40d00433          	neg	s0,a3
   126b8:	32c6d2e3          	bge	a3,a2,131dc <_vfprintf_r+0x2680>
   126bc:	00700b93          	li	s7,7
   126c0:	00412b03          	lw	s6,4(sp)
   126c4:	00c0006f          	j	126d0 <_vfprintf_r+0x1b74>
   126c8:	ff040413          	addi	s0,s0,-16
   126cc:	308c58e3          	bge	s8,s0,131dc <_vfprintf_r+0x2680>
   126d0:	01078793          	addi	a5,a5,16
   126d4:	00170713          	addi	a4,a4,1
   126d8:	00013697          	auipc	a3,0x13
   126dc:	b6c68693          	addi	a3,a3,-1172 # 25244 <zeroes.4505>
   126e0:	00d8a023          	sw	a3,0(a7)
   126e4:	0188a223          	sw	s8,4(a7)
   126e8:	0ef12623          	sw	a5,236(sp)
   126ec:	0ee12423          	sw	a4,232(sp)
   126f0:	00888893          	addi	a7,a7,8
   126f4:	fcebdae3          	bge	s7,a4,126c8 <_vfprintf_r+0x1b6c>
   126f8:	0e410613          	addi	a2,sp,228
   126fc:	000b0593          	mv	a1,s6
   12700:	000a8513          	mv	a0,s5
   12704:	5a00a0ef          	jal	ra,1cca4 <__sprint_r>
   12708:	00050463          	beqz	a0,12710 <_vfprintf_r+0x1bb4>
   1270c:	f08fe06f          	j	10e14 <_vfprintf_r+0x2b8>
   12710:	0ec12783          	lw	a5,236(sp)
   12714:	0e812703          	lw	a4,232(sp)
   12718:	10c10893          	addi	a7,sp,268
   1271c:	fadff06f          	j	126c8 <_vfprintf_r+0x1b6c>
   12720:	000d0513          	mv	a0,s10
   12724:	bacfe0ef          	jal	ra,10ad0 <strlen>
   12728:	00050b93          	mv	s7,a0
   1272c:	a75fe06f          	j	111a0 <_vfprintf_r+0x644>
   12730:	2009f793          	andi	a5,s3,512
   12734:	36078063          	beqz	a5,12a94 <_vfprintf_r+0x1f38>
   12738:	00c12783          	lw	a5,12(sp)
   1273c:	00098a13          	mv	s4,s3
   12740:	00e12623          	sw	a4,12(sp)
   12744:	00078c83          	lb	s9,0(a5)
   12748:	41fcdb93          	srai	s7,s9,0x1f
   1274c:	000b8713          	mv	a4,s7
   12750:	9a1fe06f          	j	110f0 <_vfprintf_r+0x594>
   12754:	2009f793          	andi	a5,s3,512
   12758:	32078863          	beqz	a5,12a88 <_vfprintf_r+0x1f2c>
   1275c:	0ffcfc93          	andi	s9,s9,255
   12760:	00000b93          	li	s7,0
   12764:	00e12623          	sw	a4,12(sp)
   12768:	a5cff06f          	j	119c4 <_vfprintf_r+0xe68>
   1276c:	2009f793          	andi	a5,s3,512
   12770:	30078263          	beqz	a5,12a74 <_vfprintf_r+0x1f18>
   12774:	00e12623          	sw	a4,12(sp)
   12778:	0ffcfc93          	andi	s9,s9,255
   1277c:	00000b93          	li	s7,0
   12780:	00098a13          	mv	s4,s3
   12784:	00100713          	li	a4,1
   12788:	f40fe06f          	j	10ec8 <_vfprintf_r+0x36c>
   1278c:	0fc12783          	lw	a5,252(sp)
   12790:	3207d663          	bgez	a5,12abc <_vfprintf_r+0x1f60>
   12794:	02d00793          	li	a5,45
   12798:	0cf103a3          	sb	a5,199(sp)
   1279c:	04700713          	li	a4,71
   127a0:	00013d17          	auipc	s10,0x13
   127a4:	abcd0d13          	addi	s10,s10,-1348 # 2525c <zeroes.4505+0x18>
   127a8:	e88756e3          	bge	a4,s0,12634 <_vfprintf_r+0x1ad8>
   127ac:	00013d17          	auipc	s10,0x13
   127b0:	ab4d0d13          	addi	s10,s10,-1356 # 25260 <zeroes.4505+0x1c>
   127b4:	e81ff06f          	j	12634 <_vfprintf_r+0x1ad8>
   127b8:	00013697          	auipc	a3,0x13
   127bc:	a8c68693          	addi	a3,a3,-1396 # 25244 <zeroes.4505>
   127c0:	008787b3          	add	a5,a5,s0
   127c4:	00170713          	addi	a4,a4,1
   127c8:	00dda023          	sw	a3,0(s11)
   127cc:	008da223          	sw	s0,4(s11)
   127d0:	0ef12623          	sw	a5,236(sp)
   127d4:	0ee12423          	sw	a4,232(sp)
   127d8:	00700693          	li	a3,7
   127dc:	008d8d93          	addi	s11,s11,8
   127e0:	84e6d8e3          	bge	a3,a4,12030 <_vfprintf_r+0x14d4>
   127e4:	00412583          	lw	a1,4(sp)
   127e8:	0e410613          	addi	a2,sp,228
   127ec:	000a8513          	mv	a0,s5
   127f0:	4b40a0ef          	jal	ra,1cca4 <__sprint_r>
   127f4:	00050463          	beqz	a0,127fc <_vfprintf_r+0x1ca0>
   127f8:	e1cfe06f          	j	10e14 <_vfprintf_r+0x2b8>
   127fc:	0ec12783          	lw	a5,236(sp)
   12800:	10c10d93          	addi	s11,sp,268
   12804:	82dff06f          	j	12030 <_vfprintf_r+0x14d4>
   12808:	01812703          	lw	a4,24(sp)
   1280c:	02012b83          	lw	s7,32(sp)
   12810:	01212a23          	sw	s2,20(sp)
   12814:	00ed0433          	add	s0,s10,a4
   12818:	03312a23          	sw	s3,52(sp)
   1281c:	04912423          	sw	s1,72(sp)
   12820:	02412903          	lw	s2,36(sp)
   12824:	03412023          	sw	s4,32(sp)
   12828:	03a12223          	sw	s10,36(sp)
   1282c:	00700c93          	li	s9,7
   12830:	00040d13          	mv	s10,s0
   12834:	04012983          	lw	s3,64(sp)
   12838:	03c12483          	lw	s1,60(sp)
   1283c:	000d8693          	mv	a3,s11
   12840:	00412a03          	lw	s4,4(sp)
   12844:	04412403          	lw	s0,68(sp)
   12848:	080b8863          	beqz	s7,128d8 <_vfprintf_r+0x1d7c>
   1284c:	08091863          	bnez	s2,128dc <_vfprintf_r+0x1d80>
   12850:	fff48493          	addi	s1,s1,-1
   12854:	fffb8b93          	addi	s7,s7,-1
   12858:	0e812703          	lw	a4,232(sp)
   1285c:	013787b3          	add	a5,a5,s3
   12860:	0086a023          	sw	s0,0(a3)
   12864:	00170713          	addi	a4,a4,1
   12868:	0136a223          	sw	s3,4(a3)
   1286c:	0ef12623          	sw	a5,236(sp)
   12870:	0ee12423          	sw	a4,232(sp)
   12874:	00868693          	addi	a3,a3,8
   12878:	10ecc463          	blt	s9,a4,12980 <_vfprintf_r+0x1e24>
   1287c:	0004c603          	lbu	a2,0(s1)
   12880:	416d05b3          	sub	a1,s10,s6
   12884:	00060d93          	mv	s11,a2
   12888:	00c5d463          	bge	a1,a2,12890 <_vfprintf_r+0x1d34>
   1288c:	00058d93          	mv	s11,a1
   12890:	03b05663          	blez	s11,128bc <_vfprintf_r+0x1d60>
   12894:	0e812603          	lw	a2,232(sp)
   12898:	01b787b3          	add	a5,a5,s11
   1289c:	0166a023          	sw	s6,0(a3)
   128a0:	00160613          	addi	a2,a2,1
   128a4:	01b6a223          	sw	s11,4(a3)
   128a8:	0ef12623          	sw	a5,236(sp)
   128ac:	0ec12423          	sw	a2,232(sp)
   128b0:	0eccca63          	blt	s9,a2,129a4 <_vfprintf_r+0x1e48>
   128b4:	0004c603          	lbu	a2,0(s1)
   128b8:	00868693          	addi	a3,a3,8
   128bc:	fffdc593          	not	a1,s11
   128c0:	41f5d593          	srai	a1,a1,0x1f
   128c4:	00bdf733          	and	a4,s11,a1
   128c8:	40e60db3          	sub	s11,a2,a4
   128cc:	01b04c63          	bgtz	s11,128e4 <_vfprintf_r+0x1d88>
   128d0:	00cb0b33          	add	s6,s6,a2
   128d4:	f60b9ce3          	bnez	s7,1284c <_vfprintf_r+0x1cf0>
   128d8:	5e090663          	beqz	s2,12ec4 <_vfprintf_r+0x2368>
   128dc:	fff90913          	addi	s2,s2,-1
   128e0:	f79ff06f          	j	12858 <_vfprintf_r+0x1cfc>
   128e4:	0e812603          	lw	a2,232(sp)
   128e8:	01bc4863          	blt	s8,s11,128f8 <_vfprintf_r+0x1d9c>
   128ec:	0600006f          	j	1294c <_vfprintf_r+0x1df0>
   128f0:	ff0d8d93          	addi	s11,s11,-16
   128f4:	05bc5c63          	bge	s8,s11,1294c <_vfprintf_r+0x1df0>
   128f8:	01078793          	addi	a5,a5,16
   128fc:	00160613          	addi	a2,a2,1
   12900:	00013717          	auipc	a4,0x13
   12904:	94470713          	addi	a4,a4,-1724 # 25244 <zeroes.4505>
   12908:	00e6a023          	sw	a4,0(a3)
   1290c:	0186a223          	sw	s8,4(a3)
   12910:	0ef12623          	sw	a5,236(sp)
   12914:	0ec12423          	sw	a2,232(sp)
   12918:	00868693          	addi	a3,a3,8
   1291c:	fcccdae3          	bge	s9,a2,128f0 <_vfprintf_r+0x1d94>
   12920:	0e410613          	addi	a2,sp,228
   12924:	000a0593          	mv	a1,s4
   12928:	000a8513          	mv	a0,s5
   1292c:	3780a0ef          	jal	ra,1cca4 <__sprint_r>
   12930:	00050463          	beqz	a0,12938 <_vfprintf_r+0x1ddc>
   12934:	ce0fe06f          	j	10e14 <_vfprintf_r+0x2b8>
   12938:	ff0d8d93          	addi	s11,s11,-16
   1293c:	0ec12783          	lw	a5,236(sp)
   12940:	0e812603          	lw	a2,232(sp)
   12944:	10c10693          	addi	a3,sp,268
   12948:	fbbc48e3          	blt	s8,s11,128f8 <_vfprintf_r+0x1d9c>
   1294c:	01b787b3          	add	a5,a5,s11
   12950:	00160613          	addi	a2,a2,1
   12954:	00013717          	auipc	a4,0x13
   12958:	8f070713          	addi	a4,a4,-1808 # 25244 <zeroes.4505>
   1295c:	00e6a023          	sw	a4,0(a3)
   12960:	01b6a223          	sw	s11,4(a3)
   12964:	0ef12623          	sw	a5,236(sp)
   12968:	0ec12423          	sw	a2,232(sp)
   1296c:	62ccc663          	blt	s9,a2,12f98 <_vfprintf_r+0x243c>
   12970:	0004c603          	lbu	a2,0(s1)
   12974:	00868693          	addi	a3,a3,8
   12978:	00cb0b33          	add	s6,s6,a2
   1297c:	f59ff06f          	j	128d4 <_vfprintf_r+0x1d78>
   12980:	0e410613          	addi	a2,sp,228
   12984:	000a0593          	mv	a1,s4
   12988:	000a8513          	mv	a0,s5
   1298c:	3180a0ef          	jal	ra,1cca4 <__sprint_r>
   12990:	00050463          	beqz	a0,12998 <_vfprintf_r+0x1e3c>
   12994:	c80fe06f          	j	10e14 <_vfprintf_r+0x2b8>
   12998:	0ec12783          	lw	a5,236(sp)
   1299c:	10c10693          	addi	a3,sp,268
   129a0:	eddff06f          	j	1287c <_vfprintf_r+0x1d20>
   129a4:	0e410613          	addi	a2,sp,228
   129a8:	000a0593          	mv	a1,s4
   129ac:	000a8513          	mv	a0,s5
   129b0:	2f40a0ef          	jal	ra,1cca4 <__sprint_r>
   129b4:	00050463          	beqz	a0,129bc <_vfprintf_r+0x1e60>
   129b8:	c5cfe06f          	j	10e14 <_vfprintf_r+0x2b8>
   129bc:	0004c603          	lbu	a2,0(s1)
   129c0:	0ec12783          	lw	a5,236(sp)
   129c4:	10c10693          	addi	a3,sp,268
   129c8:	ef5ff06f          	j	128bc <_vfprintf_r+0x1d60>
   129cc:	001b0b13          	addi	s6,s6,1
   129d0:	00860d93          	addi	s11,a2,8
   129d4:	00060b93          	mv	s7,a2
   129d8:	9d1fe06f          	j	113a8 <_vfprintf_r+0x84c>
   129dc:	00412583          	lw	a1,4(sp)
   129e0:	0e410613          	addi	a2,sp,228
   129e4:	000a8513          	mv	a0,s5
   129e8:	2bc0a0ef          	jal	ra,1cca4 <__sprint_r>
   129ec:	00050463          	beqz	a0,129f4 <_vfprintf_r+0x1e98>
   129f0:	c24fe06f          	j	10e14 <_vfprintf_r+0x2b8>
   129f4:	0cc12683          	lw	a3,204(sp)
   129f8:	0ec12783          	lw	a5,236(sp)
   129fc:	10c10d93          	addi	s11,sp,268
   12a00:	a49ff06f          	j	12448 <_vfprintf_r+0x18ec>
   12a04:	00013d17          	auipc	s10,0x13
   12a08:	854d0d13          	addi	s10,s10,-1964 # 25258 <zeroes.4505+0x14>
   12a0c:	c29ff06f          	j	12634 <_vfprintf_r+0x1ad8>
   12a10:	00412583          	lw	a1,4(sp)
   12a14:	0e410613          	addi	a2,sp,228
   12a18:	000a8513          	mv	a0,s5
   12a1c:	2880a0ef          	jal	ra,1cca4 <__sprint_r>
   12a20:	00050463          	beqz	a0,12a28 <_vfprintf_r+0x1ecc>
   12a24:	bf0fe06f          	j	10e14 <_vfprintf_r+0x2b8>
   12a28:	0ec12783          	lw	a5,236(sp)
   12a2c:	10c10d93          	addi	s11,sp,268
   12a30:	de8ff06f          	j	12018 <_vfprintf_r+0x14bc>
   12a34:	00600b93          	li	s7,6
   12a38:	905ff06f          	j	1233c <_vfprintf_r+0x17e0>
   12a3c:	01812703          	lw	a4,24(sp)
   12a40:	00ed0833          	add	a6,s10,a4
   12a44:	40870433          	sub	s0,a4,s0
   12a48:	41680bb3          	sub	s7,a6,s6
   12a4c:	e9745463          	bge	s0,s7,120d4 <_vfprintf_r+0x1578>
   12a50:	00040b93          	mv	s7,s0
   12a54:	e80ff06f          	j	120d4 <_vfprintf_r+0x1578>
   12a58:	00c12783          	lw	a5,12(sp)
   12a5c:	00e12623          	sw	a4,12(sp)
   12a60:	00812703          	lw	a4,8(sp)
   12a64:	0007a783          	lw	a5,0(a5)
   12a68:	00090d13          	mv	s10,s2
   12a6c:	00e79023          	sh	a4,0(a5)
   12a70:	decfe06f          	j	1105c <_vfprintf_r+0x500>
   12a74:	00e12623          	sw	a4,12(sp)
   12a78:	00000b93          	li	s7,0
   12a7c:	00098a13          	mv	s4,s3
   12a80:	00100713          	li	a4,1
   12a84:	c44fe06f          	j	10ec8 <_vfprintf_r+0x36c>
   12a88:	00000b93          	li	s7,0
   12a8c:	00e12623          	sw	a4,12(sp)
   12a90:	f35fe06f          	j	119c4 <_vfprintf_r+0xe68>
   12a94:	00c12783          	lw	a5,12(sp)
   12a98:	00098a13          	mv	s4,s3
   12a9c:	00e12623          	sw	a4,12(sp)
   12aa0:	0007ac83          	lw	s9,0(a5)
   12aa4:	41fcdb93          	srai	s7,s9,0x1f
   12aa8:	000b8713          	mv	a4,s7
   12aac:	e44fe06f          	j	110f0 <_vfprintf_r+0x594>
   12ab0:	0ffcfc93          	andi	s9,s9,255
   12ab4:	00000b93          	li	s7,0
   12ab8:	bf4fe06f          	j	10eac <_vfprintf_r+0x350>
   12abc:	0c714783          	lbu	a5,199(sp)
   12ac0:	cddff06f          	j	1279c <_vfprintf_r+0x1c40>
   12ac4:	00412583          	lw	a1,4(sp)
   12ac8:	0e410613          	addi	a2,sp,228
   12acc:	000a8513          	mv	a0,s5
   12ad0:	1d40a0ef          	jal	ra,1cca4 <__sprint_r>
   12ad4:	00050463          	beqz	a0,12adc <_vfprintf_r+0x1f80>
   12ad8:	b3cfe06f          	j	10e14 <_vfprintf_r+0x2b8>
   12adc:	0cc12683          	lw	a3,204(sp)
   12ae0:	0ec12783          	lw	a5,236(sp)
   12ae4:	0e812703          	lw	a4,232(sp)
   12ae8:	10c10893          	addi	a7,sp,268
   12aec:	9a06d2e3          	bgez	a3,12490 <_vfprintf_r+0x1934>
   12af0:	bc1ff06f          	j	126b0 <_vfprintf_r+0x1b54>
   12af4:	03000793          	li	a5,48
   12af8:	0cf10423          	sb	a5,200(sp)
   12afc:	05800793          	li	a5,88
   12b00:	0029e713          	ori	a4,s3,2
   12b04:	0cf104a3          	sb	a5,201(sp)
   12b08:	04e12a23          	sw	a4,84(sp)
   12b0c:	06300793          	li	a5,99
   12b10:	00012823          	sw	zero,16(sp)
   12b14:	14c10d13          	addi	s10,sp,332
   12b18:	7b67c263          	blt	a5,s6,132bc <_vfprintf_r+0x2760>
   12b1c:	0fc12e03          	lw	t3,252(sp)
   12b20:	fdf47793          	andi	a5,s0,-33
   12b24:	04f12423          	sw	a5,72(sp)
   12b28:	04012e23          	sw	zero,92(sp)
   12b2c:	1029e993          	ori	s3,s3,258
   12b30:	0f012e83          	lw	t4,240(sp)
   12b34:	0f412f03          	lw	t5,244(sp)
   12b38:	0f812f83          	lw	t6,248(sp)
   12b3c:	440e4463          	bltz	t3,12f84 <_vfprintf_r+0x2428>
   12b40:	06100793          	li	a5,97
   12b44:	0cf40ce3          	beq	s0,a5,1341c <_vfprintf_r+0x28c0>
   12b48:	04100793          	li	a5,65
   12b4c:	00f40463          	beq	s0,a5,12b54 <_vfprintf_r+0x1ff8>
   12b50:	a19fe06f          	j	11568 <_vfprintf_r+0xa0c>
   12b54:	0b010b93          	addi	s7,sp,176
   12b58:	000b8513          	mv	a0,s7
   12b5c:	0bd12823          	sw	t4,176(sp)
   12b60:	0be12a23          	sw	t5,180(sp)
   12b64:	0bf12c23          	sw	t6,184(sp)
   12b68:	0bc12e23          	sw	t3,188(sp)
   12b6c:	779110ef          	jal	ra,24ae4 <__trunctfdf2>
   12b70:	0cc10613          	addi	a2,sp,204
   12b74:	7bd060ef          	jal	ra,19b30 <frexp>
   12b78:	00058613          	mv	a2,a1
   12b7c:	00050593          	mv	a1,a0
   12b80:	000b8513          	mv	a0,s7
   12b84:	559110ef          	jal	ra,248dc <__extenddftf2>
   12b88:	09010793          	addi	a5,sp,144
   12b8c:	00078593          	mv	a1,a5
   12b90:	00f12c23          	sw	a5,24(sp)
   12b94:	0b012783          	lw	a5,176(sp)
   12b98:	0a010a13          	addi	s4,sp,160
   12b9c:	08010613          	addi	a2,sp,128
   12ba0:	08f12823          	sw	a5,144(sp)
   12ba4:	0b412783          	lw	a5,180(sp)
   12ba8:	000a0513          	mv	a0,s4
   12bac:	04c12623          	sw	a2,76(sp)
   12bb0:	08f12a23          	sw	a5,148(sp)
   12bb4:	0b812783          	lw	a5,184(sp)
   12bb8:	05412c23          	sw	s4,88(sp)
   12bbc:	08012023          	sw	zero,128(sp)
   12bc0:	08f12c23          	sw	a5,152(sp)
   12bc4:	0bc12783          	lw	a5,188(sp)
   12bc8:	08012223          	sw	zero,132(sp)
   12bcc:	08012423          	sw	zero,136(sp)
   12bd0:	08f12e23          	sw	a5,156(sp)
   12bd4:	3ffc07b7          	lui	a5,0x3ffc0
   12bd8:	08f12623          	sw	a5,140(sp)
   12bdc:	11c0f0ef          	jal	ra,21cf8 <__multf3>
   12be0:	0a012683          	lw	a3,160(sp)
   12be4:	0a412e03          	lw	t3,164(sp)
   12be8:	0a812e83          	lw	t4,168(sp)
   12bec:	0ac12f03          	lw	t5,172(sp)
   12bf0:	000a0593          	mv	a1,s4
   12bf4:	000b8513          	mv	a0,s7
   12bf8:	0ad12823          	sw	a3,176(sp)
   12bfc:	02d12a23          	sw	a3,52(sp)
   12c00:	0bc12a23          	sw	t3,180(sp)
   12c04:	03c12223          	sw	t3,36(sp)
   12c08:	0bd12c23          	sw	t4,184(sp)
   12c0c:	03d12023          	sw	t4,32(sp)
   12c10:	0be12e23          	sw	t5,188(sp)
   12c14:	01e12a23          	sw	t5,20(sp)
   12c18:	0a012023          	sw	zero,160(sp)
   12c1c:	0a012223          	sw	zero,164(sp)
   12c20:	0a012423          	sw	zero,168(sp)
   12c24:	0a012623          	sw	zero,172(sp)
   12c28:	57d0e0ef          	jal	ra,219a4 <__eqtf2>
   12c2c:	01412f03          	lw	t5,20(sp)
   12c30:	02012e83          	lw	t4,32(sp)
   12c34:	02412e03          	lw	t3,36(sp)
   12c38:	03412683          	lw	a3,52(sp)
   12c3c:	00051663          	bnez	a0,12c48 <_vfprintf_r+0x20ec>
   12c40:	00100793          	li	a5,1
   12c44:	0cf12623          	sw	a5,204(sp)
   12c48:	00012797          	auipc	a5,0x12
   12c4c:	63078793          	addi	a5,a5,1584 # 25278 <zeroes.4505+0x34>
   12c50:	02f12a23          	sw	a5,52(sp)
   12c54:	fffb0a13          	addi	s4,s6,-1
   12c58:	01a12a23          	sw	s10,20(sp)
   12c5c:	000a0c93          	mv	s9,s4
   12c60:	07212023          	sw	s2,96(sp)
   12c64:	06912623          	sw	s1,108(sp)
   12c68:	07b12a23          	sw	s11,116(sp)
   12c6c:	07512c23          	sw	s5,120(sp)
   12c70:	07a12e23          	sw	s10,124(sp)
   12c74:	06812223          	sw	s0,100(sp)
   12c78:	07312423          	sw	s3,104(sp)
   12c7c:	07612823          	sw	s6,112(sp)
   12c80:	00068d13          	mv	s10,a3
   12c84:	000e0d93          	mv	s11,t3
   12c88:	000e8a13          	mv	s4,t4
   12c8c:	000f0a93          	mv	s5,t5
   12c90:	01812903          	lw	s2,24(sp)
   12c94:	05812483          	lw	s1,88(sp)
   12c98:	0540006f          	j	12cec <_vfprintf_r+0x2190>
   12c9c:	00048593          	mv	a1,s1
   12ca0:	000b8513          	mv	a0,s7
   12ca4:	02c12223          	sw	a2,36(sp)
   12ca8:	03f12023          	sw	t6,32(sp)
   12cac:	00512c23          	sw	t0,24(sp)
   12cb0:	0a512a23          	sw	t0,180(sp)
   12cb4:	0bf12c23          	sw	t6,184(sp)
   12cb8:	0ac12e23          	sw	a2,188(sp)
   12cbc:	0b312823          	sw	s3,176(sp)
   12cc0:	0a012023          	sw	zero,160(sp)
   12cc4:	0a012223          	sw	zero,164(sp)
   12cc8:	0a012423          	sw	zero,168(sp)
   12ccc:	0a012623          	sw	zero,172(sp)
   12cd0:	4d50e0ef          	jal	ra,219a4 <__eqtf2>
   12cd4:	fffc8c93          	addi	s9,s9,-1
   12cd8:	01812283          	lw	t0,24(sp)
   12cdc:	02012f83          	lw	t6,32(sp)
   12ce0:	02412603          	lw	a2,36(sp)
   12ce4:	0e050463          	beqz	a0,12dcc <_vfprintf_r+0x2270>
   12ce8:	01612a23          	sw	s6,20(sp)
   12cec:	400307b7          	lui	a5,0x40030
   12cf0:	00090613          	mv	a2,s2
   12cf4:	00048593          	mv	a1,s1
   12cf8:	000b8513          	mv	a0,s7
   12cfc:	08f12e23          	sw	a5,156(sp)
   12d00:	0ba12023          	sw	s10,160(sp)
   12d04:	0bb12223          	sw	s11,164(sp)
   12d08:	0b412423          	sw	s4,168(sp)
   12d0c:	0b512623          	sw	s5,172(sp)
   12d10:	08012823          	sw	zero,144(sp)
   12d14:	08012a23          	sw	zero,148(sp)
   12d18:	08012c23          	sw	zero,152(sp)
   12d1c:	7dd0e0ef          	jal	ra,21cf8 <__multf3>
   12d20:	000b8513          	mv	a0,s7
   12d24:	0e1110ef          	jal	ra,24604 <__fixtfsi>
   12d28:	00050593          	mv	a1,a0
   12d2c:	00050413          	mv	s0,a0
   12d30:	000b8513          	mv	a0,s7
   12d34:	0b012b03          	lw	s6,176(sp)
   12d38:	0b412a03          	lw	s4,180(sp)
   12d3c:	0b812983          	lw	s3,184(sp)
   12d40:	0bc12a83          	lw	s5,188(sp)
   12d44:	211110ef          	jal	ra,24754 <__floatsitf>
   12d48:	0b012703          	lw	a4,176(sp)
   12d4c:	04c12603          	lw	a2,76(sp)
   12d50:	00090593          	mv	a1,s2
   12d54:	08e12023          	sw	a4,128(sp)
   12d58:	0b412703          	lw	a4,180(sp)
   12d5c:	00048513          	mv	a0,s1
   12d60:	09612823          	sw	s6,144(sp)
   12d64:	08e12223          	sw	a4,132(sp)
   12d68:	0b812703          	lw	a4,184(sp)
   12d6c:	09412a23          	sw	s4,148(sp)
   12d70:	09312c23          	sw	s3,152(sp)
   12d74:	08e12423          	sw	a4,136(sp)
   12d78:	0bc12703          	lw	a4,188(sp)
   12d7c:	09512e23          	sw	s5,156(sp)
   12d80:	08e12623          	sw	a4,140(sp)
   12d84:	2e0100ef          	jal	ra,23064 <__subtf3>
   12d88:	03412783          	lw	a5,52(sp)
   12d8c:	0a012983          	lw	s3,160(sp)
   12d90:	0a412283          	lw	t0,164(sp)
   12d94:	00878733          	add	a4,a5,s0
   12d98:	01412783          	lw	a5,20(sp)
   12d9c:	00074683          	lbu	a3,0(a4)
   12da0:	0a812f83          	lw	t6,168(sp)
   12da4:	0ac12603          	lw	a2,172(sp)
   12da8:	00178b13          	addi	s6,a5,1 # 40030001 <__BSS_END__+0x40009519>
   12dac:	fedb0fa3          	sb	a3,-1(s6)
   12db0:	05912823          	sw	s9,80(sp)
   12db4:	fff00793          	li	a5,-1
   12db8:	00098d13          	mv	s10,s3
   12dbc:	00028d93          	mv	s11,t0
   12dc0:	000f8a13          	mv	s4,t6
   12dc4:	00060a93          	mv	s5,a2
   12dc8:	ecfc9ae3          	bne	s9,a5,12c9c <_vfprintf_r+0x2140>
   12dcc:	05812a03          	lw	s4,88(sp)
   12dd0:	00098393          	mv	t2,s3
   12dd4:	3ffe0737          	lui	a4,0x3ffe0
   12dd8:	000a0593          	mv	a1,s4
   12ddc:	000b8513          	mv	a0,s7
   12de0:	06012903          	lw	s2,96(sp)
   12de4:	00812c23          	sw	s0,24(sp)
   12de8:	000b0c93          	mv	s9,s6
   12dec:	06c12483          	lw	s1,108(sp)
   12df0:	07412d83          	lw	s11,116(sp)
   12df4:	06412403          	lw	s0,100(sp)
   12df8:	07012b03          	lw	s6,112(sp)
   12dfc:	07812a83          	lw	s5,120(sp)
   12e00:	07c12d03          	lw	s10,124(sp)
   12e04:	06812983          	lw	s3,104(sp)
   12e08:	0a712823          	sw	t2,176(sp)
   12e0c:	06712023          	sw	t2,96(sp)
   12e10:	0a512a23          	sw	t0,180(sp)
   12e14:	04512623          	sw	t0,76(sp)
   12e18:	0bf12c23          	sw	t6,184(sp)
   12e1c:	03f12223          	sw	t6,36(sp)
   12e20:	0ac12e23          	sw	a2,188(sp)
   12e24:	02c12023          	sw	a2,32(sp)
   12e28:	0a012023          	sw	zero,160(sp)
   12e2c:	0a012223          	sw	zero,164(sp)
   12e30:	0a012423          	sw	zero,168(sp)
   12e34:	0ae12623          	sw	a4,172(sp)
   12e38:	4390e0ef          	jal	ra,21a70 <__getf2>
   12e3c:	48a04e63          	bgtz	a0,132d8 <_vfprintf_r+0x277c>
   12e40:	06012383          	lw	t2,96(sp)
   12e44:	04c12283          	lw	t0,76(sp)
   12e48:	02412f83          	lw	t6,36(sp)
   12e4c:	02012603          	lw	a2,32(sp)
   12e50:	3ffe0737          	lui	a4,0x3ffe0
   12e54:	000a0593          	mv	a1,s4
   12e58:	000b8513          	mv	a0,s7
   12e5c:	0a712823          	sw	t2,176(sp)
   12e60:	0a512a23          	sw	t0,180(sp)
   12e64:	0bf12c23          	sw	t6,184(sp)
   12e68:	0ac12e23          	sw	a2,188(sp)
   12e6c:	0a012023          	sw	zero,160(sp)
   12e70:	0a012223          	sw	zero,164(sp)
   12e74:	0a012423          	sw	zero,168(sp)
   12e78:	0ae12623          	sw	a4,172(sp)
   12e7c:	3290e0ef          	jal	ra,219a4 <__eqtf2>
   12e80:	00051863          	bnez	a0,12e90 <_vfprintf_r+0x2334>
   12e84:	01812783          	lw	a5,24(sp)
   12e88:	0017fa13          	andi	s4,a5,1
   12e8c:	440a1663          	bnez	s4,132d8 <_vfprintf_r+0x277c>
   12e90:	05012783          	lw	a5,80(sp)
   12e94:	03000693          	li	a3,48
   12e98:	00178713          	addi	a4,a5,1
   12e9c:	00ec8733          	add	a4,s9,a4
   12ea0:	0007c863          	bltz	a5,12eb0 <_vfprintf_r+0x2354>
   12ea4:	001c8c93          	addi	s9,s9,1
   12ea8:	fedc8fa3          	sb	a3,-1(s9)
   12eac:	ff971ce3          	bne	a4,s9,12ea4 <_vfprintf_r+0x2348>
   12eb0:	41ac87b3          	sub	a5,s9,s10
   12eb4:	00f12c23          	sw	a5,24(sp)
   12eb8:	f50fe06f          	j	11608 <_vfprintf_r+0xaac>
   12ebc:	00098a13          	mv	s4,s3
   12ec0:	b21fe06f          	j	119e0 <_vfprintf_r+0xe84>
   12ec4:	02412d03          	lw	s10,36(sp)
   12ec8:	01812703          	lw	a4,24(sp)
   12ecc:	02912e23          	sw	s1,60(sp)
   12ed0:	01412903          	lw	s2,20(sp)
   12ed4:	00ed0733          	add	a4,s10,a4
   12ed8:	03412983          	lw	s3,52(sp)
   12edc:	04812483          	lw	s1,72(sp)
   12ee0:	02012a03          	lw	s4,32(sp)
   12ee4:	00068d93          	mv	s11,a3
   12ee8:	95677c63          	bgeu	a4,s6,12040 <_vfprintf_r+0x14e4>
   12eec:	00070b13          	mv	s6,a4
   12ef0:	950ff06f          	j	12040 <_vfprintf_r+0x14e4>
   12ef4:	01412703          	lw	a4,20(sp)
   12ef8:	ffd00793          	li	a5,-3
   12efc:	00f74463          	blt	a4,a5,12f04 <_vfprintf_r+0x23a8>
   12f00:	00eb5a63          	bge	s6,a4,12f14 <_vfprintf_r+0x23b8>
   12f04:	ffe40413          	addi	s0,s0,-2
   12f08:	fdf47793          	andi	a5,s0,-33
   12f0c:	04f12423          	sw	a5,72(sp)
   12f10:	f20fe06f          	j	11630 <_vfprintf_r+0xad4>
   12f14:	01812783          	lw	a5,24(sp)
   12f18:	01412703          	lw	a4,20(sp)
   12f1c:	22f74663          	blt	a4,a5,13148 <_vfprintf_r+0x25ec>
   12f20:	05412783          	lw	a5,84(sp)
   12f24:	00070b93          	mv	s7,a4
   12f28:	0017f793          	andi	a5,a5,1
   12f2c:	00078663          	beqz	a5,12f38 <_vfprintf_r+0x23dc>
   12f30:	02812783          	lw	a5,40(sp)
   12f34:	00f70bb3          	add	s7,a4,a5
   12f38:	05412783          	lw	a5,84(sp)
   12f3c:	4007f793          	andi	a5,a5,1024
   12f40:	00078663          	beqz	a5,12f4c <_vfprintf_r+0x23f0>
   12f44:	01412783          	lw	a5,20(sp)
   12f48:	40f04463          	bgtz	a5,13350 <_vfprintf_r+0x27f4>
   12f4c:	fffbca13          	not	s4,s7
   12f50:	41fa5a13          	srai	s4,s4,0x1f
   12f54:	014bfa33          	and	s4,s7,s4
   12f58:	06700413          	li	s0,103
   12f5c:	02012223          	sw	zero,36(sp)
   12f60:	02012023          	sw	zero,32(sp)
   12f64:	ff8fe06f          	j	1175c <_vfprintf_r+0xc00>
   12f68:	0c714783          	lbu	a5,199(sp)
   12f6c:	00000b13          	li	s6,0
   12f70:	00078463          	beqz	a5,12f78 <_vfprintf_r+0x241c>
   12f74:	fa9fd06f          	j	10f1c <_vfprintf_r+0x3c0>
   12f78:	ac4fe06f          	j	1123c <_vfprintf_r+0x6e0>
   12f7c:	00012823          	sw	zero,16(sp)
   12f80:	00078993          	mv	s3,a5
   12f84:	800007b7          	lui	a5,0x80000
   12f88:	01c7ce33          	xor	t3,a5,t3
   12f8c:	02d00793          	li	a5,45
   12f90:	04f12e23          	sw	a5,92(sp)
   12f94:	badff06f          	j	12b40 <_vfprintf_r+0x1fe4>
   12f98:	0e410613          	addi	a2,sp,228
   12f9c:	000a0593          	mv	a1,s4
   12fa0:	000a8513          	mv	a0,s5
   12fa4:	501090ef          	jal	ra,1cca4 <__sprint_r>
   12fa8:	00050463          	beqz	a0,12fb0 <_vfprintf_r+0x2454>
   12fac:	e69fd06f          	j	10e14 <_vfprintf_r+0x2b8>
   12fb0:	0004c603          	lbu	a2,0(s1)
   12fb4:	0ec12783          	lw	a5,236(sp)
   12fb8:	10c10693          	addi	a3,sp,268
   12fbc:	00cb0b33          	add	s6,s6,a2
   12fc0:	915ff06f          	j	128d4 <_vfprintf_r+0x1d78>
   12fc4:	04012783          	lw	a5,64(sp)
   12fc8:	04412583          	lw	a1,68(sp)
   12fcc:	00000413          	li	s0,0
   12fd0:	40f90933          	sub	s2,s2,a5
   12fd4:	00078613          	mv	a2,a5
   12fd8:	00090513          	mv	a0,s2
   12fdc:	074070ef          	jal	ra,1a050 <strncpy>
   12fe0:	0014c803          	lbu	a6,1(s1)
   12fe4:	00a00613          	li	a2,10
   12fe8:	00000693          	li	a3,0
   12fec:	01003833          	snez	a6,a6
   12ff0:	000c8513          	mv	a0,s9
   12ff4:	000a0593          	mv	a1,s4
   12ff8:	010484b3          	add	s1,s1,a6
   12ffc:	0a40d0ef          	jal	ra,200a0 <__udivdi3>
   13000:	d10ff06f          	j	12510 <_vfprintf_r+0x19b4>
   13004:	00900793          	li	a5,9
   13008:	d197e463          	bltu	a5,s9,12510 <_vfprintf_r+0x19b4>
   1300c:	d50ff06f          	j	1255c <_vfprintf_r+0x1a00>
   13010:	0b010b93          	addi	s7,sp,176
   13014:	0d010793          	addi	a5,sp,208
   13018:	0cc10713          	addi	a4,sp,204
   1301c:	0dc10813          	addi	a6,sp,220
   13020:	000b0693          	mv	a3,s6
   13024:	00300613          	li	a2,3
   13028:	000b8593          	mv	a1,s7
   1302c:	000a8513          	mv	a0,s5
   13030:	0bd12823          	sw	t4,176(sp)
   13034:	03d12223          	sw	t4,36(sp)
   13038:	0be12a23          	sw	t5,180(sp)
   1303c:	03e12023          	sw	t5,32(sp)
   13040:	0bf12c23          	sw	t6,184(sp)
   13044:	01f12c23          	sw	t6,24(sp)
   13048:	0bc12e23          	sw	t3,188(sp)
   1304c:	01c12a23          	sw	t3,20(sp)
   13050:	2b4030ef          	jal	ra,16304 <_ldtoa_r>
   13054:	00054703          	lbu	a4,0(a0)
   13058:	03000793          	li	a5,48
   1305c:	00050d13          	mv	s10,a0
   13060:	01412e03          	lw	t3,20(sp)
   13064:	01812f83          	lw	t6,24(sp)
   13068:	02012f03          	lw	t5,32(sp)
   1306c:	02412e83          	lw	t4,36(sp)
   13070:	4cf70263          	beq	a4,a5,13534 <_vfprintf_r+0x29d8>
   13074:	0a010793          	addi	a5,sp,160
   13078:	04f12c23          	sw	a5,88(sp)
   1307c:	0cc12783          	lw	a5,204(sp)
   13080:	016787b3          	add	a5,a5,s6
   13084:	00fd0a33          	add	s4,s10,a5
   13088:	05812583          	lw	a1,88(sp)
   1308c:	000b8513          	mv	a0,s7
   13090:	0bd12823          	sw	t4,176(sp)
   13094:	0be12a23          	sw	t5,180(sp)
   13098:	0bf12c23          	sw	t6,184(sp)
   1309c:	0bc12e23          	sw	t3,188(sp)
   130a0:	0a012023          	sw	zero,160(sp)
   130a4:	0a012223          	sw	zero,164(sp)
   130a8:	0a012423          	sw	zero,168(sp)
   130ac:	0a012623          	sw	zero,172(sp)
   130b0:	0f50e0ef          	jal	ra,219a4 <__eqtf2>
   130b4:	000a0793          	mv	a5,s4
   130b8:	00051463          	bnez	a0,130c0 <_vfprintf_r+0x2564>
   130bc:	d44fe06f          	j	11600 <_vfprintf_r+0xaa4>
   130c0:	0dc12783          	lw	a5,220(sp)
   130c4:	03000693          	li	a3,48
   130c8:	0147e463          	bltu	a5,s4,130d0 <_vfprintf_r+0x2574>
   130cc:	d34fe06f          	j	11600 <_vfprintf_r+0xaa4>
   130d0:	00178713          	addi	a4,a5,1 # 80000001 <__BSS_END__+0x7ffd9519>
   130d4:	0ce12e23          	sw	a4,220(sp)
   130d8:	00d78023          	sb	a3,0(a5)
   130dc:	0dc12783          	lw	a5,220(sp)
   130e0:	ff47e8e3          	bltu	a5,s4,130d0 <_vfprintf_r+0x2574>
   130e4:	d1cfe06f          	j	11600 <_vfprintf_r+0xaa4>
   130e8:	02d00793          	li	a5,45
   130ec:	0cf103a3          	sb	a5,199(sp)
   130f0:	d34ff06f          	j	12624 <_vfprintf_r+0x1ac8>
   130f4:	00412583          	lw	a1,4(sp)
   130f8:	0e410613          	addi	a2,sp,228
   130fc:	000a8513          	mv	a0,s5
   13100:	3a5090ef          	jal	ra,1cca4 <__sprint_r>
   13104:	00050463          	beqz	a0,1310c <_vfprintf_r+0x25b0>
   13108:	d0dfd06f          	j	10e14 <_vfprintf_r+0x2b8>
   1310c:	0cc12403          	lw	s0,204(sp)
   13110:	0ec12783          	lw	a5,236(sp)
   13114:	10c10d93          	addi	s11,sp,268
   13118:	f71fe06f          	j	12088 <_vfprintf_r+0x152c>
   1311c:	0c714783          	lbu	a5,199(sp)
   13120:	01912623          	sw	s9,12(sp)
   13124:	02012223          	sw	zero,36(sp)
   13128:	02012023          	sw	zero,32(sp)
   1312c:	00012a23          	sw	zero,20(sp)
   13130:	000b0a13          	mv	s4,s6
   13134:	000b0b93          	mv	s7,s6
   13138:	00000b13          	li	s6,0
   1313c:	00078463          	beqz	a5,13144 <_vfprintf_r+0x25e8>
   13140:	dddfd06f          	j	10f1c <_vfprintf_r+0x3c0>
   13144:	8f8fe06f          	j	1123c <_vfprintf_r+0x6e0>
   13148:	01812783          	lw	a5,24(sp)
   1314c:	02812703          	lw	a4,40(sp)
   13150:	06700413          	li	s0,103
   13154:	00e78bb3          	add	s7,a5,a4
   13158:	01412783          	lw	a5,20(sp)
   1315c:	42f05e63          	blez	a5,13598 <_vfprintf_r+0x2a3c>
   13160:	05412783          	lw	a5,84(sp)
   13164:	4007f793          	andi	a5,a5,1024
   13168:	1e079663          	bnez	a5,13354 <_vfprintf_r+0x27f8>
   1316c:	fffbca13          	not	s4,s7
   13170:	41fa5a13          	srai	s4,s4,0x1f
   13174:	014bfa33          	and	s4,s7,s4
   13178:	de5ff06f          	j	12f5c <_vfprintf_r+0x2400>
   1317c:	00412583          	lw	a1,4(sp)
   13180:	0e410613          	addi	a2,sp,228
   13184:	000a8513          	mv	a0,s5
   13188:	31d090ef          	jal	ra,1cca4 <__sprint_r>
   1318c:	00050463          	beqz	a0,13194 <_vfprintf_r+0x2638>
   13190:	c85fd06f          	j	10e14 <_vfprintf_r+0x2b8>
   13194:	0cc12403          	lw	s0,204(sp)
   13198:	01812703          	lw	a4,24(sp)
   1319c:	0ec12783          	lw	a5,236(sp)
   131a0:	10c10d93          	addi	s11,sp,268
   131a4:	40870433          	sub	s0,a4,s0
   131a8:	f2dfe06f          	j	120d4 <_vfprintf_r+0x1578>
   131ac:	05412783          	lw	a5,84(sp)
   131b0:	01412703          	lw	a4,20(sp)
   131b4:	0017f793          	andi	a5,a5,1
   131b8:	0167e7b3          	or	a5,a5,s6
   131bc:	3ee05a63          	blez	a4,135b0 <_vfprintf_r+0x2a54>
   131c0:	24079463          	bnez	a5,13408 <_vfprintf_r+0x28ac>
   131c4:	01412b83          	lw	s7,20(sp)
   131c8:	06600413          	li	s0,102
   131cc:	f95ff06f          	j	13160 <_vfprintf_r+0x2604>
   131d0:	fff00793          	li	a5,-1
   131d4:	00f12423          	sw	a5,8(sp)
   131d8:	c65fd06f          	j	10e3c <_vfprintf_r+0x2e0>
   131dc:	00012697          	auipc	a3,0x12
   131e0:	06868693          	addi	a3,a3,104 # 25244 <zeroes.4505>
   131e4:	008787b3          	add	a5,a5,s0
   131e8:	00170713          	addi	a4,a4,1 # 3ffe0001 <__BSS_END__+0x3ffb9519>
   131ec:	00d8a023          	sw	a3,0(a7)
   131f0:	0088a223          	sw	s0,4(a7)
   131f4:	0ef12623          	sw	a5,236(sp)
   131f8:	0ee12423          	sw	a4,232(sp)
   131fc:	00700693          	li	a3,7
   13200:	00888893          	addi	a7,a7,8
   13204:	a8e6d663          	bge	a3,a4,12490 <_vfprintf_r+0x1934>
   13208:	00412583          	lw	a1,4(sp)
   1320c:	0e410613          	addi	a2,sp,228
   13210:	000a8513          	mv	a0,s5
   13214:	291090ef          	jal	ra,1cca4 <__sprint_r>
   13218:	00050463          	beqz	a0,13220 <_vfprintf_r+0x26c4>
   1321c:	bf9fd06f          	j	10e14 <_vfprintf_r+0x2b8>
   13220:	0ec12783          	lw	a5,236(sp)
   13224:	0e812703          	lw	a4,232(sp)
   13228:	10c10893          	addi	a7,sp,268
   1322c:	a64ff06f          	j	12490 <_vfprintf_r+0x1934>
   13230:	0a010793          	addi	a5,sp,160
   13234:	016d0a33          	add	s4,s10,s6
   13238:	04f12c23          	sw	a5,88(sp)
   1323c:	e4dff06f          	j	13088 <_vfprintf_r+0x252c>
   13240:	001b0a13          	addi	s4,s6,1
   13244:	0b010b93          	addi	s7,sp,176
   13248:	0dc10813          	addi	a6,sp,220
   1324c:	0d010793          	addi	a5,sp,208
   13250:	0cc10713          	addi	a4,sp,204
   13254:	000a0693          	mv	a3,s4
   13258:	00200613          	li	a2,2
   1325c:	000b8593          	mv	a1,s7
   13260:	000a8513          	mv	a0,s5
   13264:	0bd12823          	sw	t4,176(sp)
   13268:	03d12223          	sw	t4,36(sp)
   1326c:	0be12a23          	sw	t5,180(sp)
   13270:	03e12023          	sw	t5,32(sp)
   13274:	0bf12c23          	sw	t6,184(sp)
   13278:	01f12c23          	sw	t6,24(sp)
   1327c:	0bc12e23          	sw	t3,188(sp)
   13280:	01c12a23          	sw	t3,20(sp)
   13284:	080030ef          	jal	ra,16304 <_ldtoa_r>
   13288:	01412e03          	lw	t3,20(sp)
   1328c:	01812f83          	lw	t6,24(sp)
   13290:	02012f03          	lw	t5,32(sp)
   13294:	02412e83          	lw	t4,36(sp)
   13298:	00050d13          	mv	s10,a0
   1329c:	0a010793          	addi	a5,sp,160
   132a0:	014d0a33          	add	s4,s10,s4
   132a4:	04f12c23          	sw	a5,88(sp)
   132a8:	de1ff06f          	j	13088 <_vfprintf_r+0x252c>
   132ac:	03000793          	li	a5,48
   132b0:	0cf10423          	sb	a5,200(sp)
   132b4:	07800793          	li	a5,120
   132b8:	849ff06f          	j	12b00 <_vfprintf_r+0x1fa4>
   132bc:	001b0593          	addi	a1,s6,1
   132c0:	000a8513          	mv	a0,s5
   132c4:	638040ef          	jal	ra,178fc <_malloc_r>
   132c8:	00050d13          	mv	s10,a0
   132cc:	34050c63          	beqz	a0,13624 <_vfprintf_r+0x2ac8>
   132d0:	00a12823          	sw	a0,16(sp)
   132d4:	849ff06f          	j	12b1c <_vfprintf_r+0x1fc0>
   132d8:	01412783          	lw	a5,20(sp)
   132dc:	000c8713          	mv	a4,s9
   132e0:	0cf12e23          	sw	a5,220(sp)
   132e4:	03412783          	lw	a5,52(sp)
   132e8:	fffcc683          	lbu	a3,-1(s9)
   132ec:	00f7c603          	lbu	a2,15(a5)
   132f0:	02d61063          	bne	a2,a3,13310 <_vfprintf_r+0x27b4>
   132f4:	03000593          	li	a1,48
   132f8:	feb70fa3          	sb	a1,-1(a4)
   132fc:	0dc12703          	lw	a4,220(sp)
   13300:	fff70793          	addi	a5,a4,-1
   13304:	0cf12e23          	sw	a5,220(sp)
   13308:	fff74683          	lbu	a3,-1(a4)
   1330c:	fed606e3          	beq	a2,a3,132f8 <_vfprintf_r+0x279c>
   13310:	00168613          	addi	a2,a3,1
   13314:	03900593          	li	a1,57
   13318:	0ff67613          	andi	a2,a2,255
   1331c:	00b68663          	beq	a3,a1,13328 <_vfprintf_r+0x27cc>
   13320:	fec70fa3          	sb	a2,-1(a4)
   13324:	b8dff06f          	j	12eb0 <_vfprintf_r+0x2354>
   13328:	03412783          	lw	a5,52(sp)
   1332c:	00a7c603          	lbu	a2,10(a5)
   13330:	fec70fa3          	sb	a2,-1(a4)
   13334:	b7dff06f          	j	12eb0 <_vfprintf_r+0x2354>
   13338:	000b0463          	beqz	s6,13340 <_vfprintf_r+0x27e4>
   1333c:	a00fe06f          	j	1153c <_vfprintf_r+0x9e0>
   13340:	00100b13          	li	s6,1
   13344:	9f8fe06f          	j	1153c <_vfprintf_r+0x9e0>
   13348:	00600b13          	li	s6,6
   1334c:	9f0fe06f          	j	1153c <_vfprintf_r+0x9e0>
   13350:	06700413          	li	s0,103
   13354:	03c12583          	lw	a1,60(sp)
   13358:	01412703          	lw	a4,20(sp)
   1335c:	02012223          	sw	zero,36(sp)
   13360:	0005c783          	lbu	a5,0(a1)
   13364:	02012023          	sw	zero,32(sp)
   13368:	0ff00693          	li	a3,255
   1336c:	02d78e63          	beq	a5,a3,133a8 <_vfprintf_r+0x284c>
   13370:	02e7dc63          	bge	a5,a4,133a8 <_vfprintf_r+0x284c>
   13374:	0015c603          	lbu	a2,1(a1)
   13378:	40f70733          	sub	a4,a4,a5
   1337c:	00060e63          	beqz	a2,13398 <_vfprintf_r+0x283c>
   13380:	02012783          	lw	a5,32(sp)
   13384:	00158593          	addi	a1,a1,1
   13388:	00178793          	addi	a5,a5,1
   1338c:	02f12023          	sw	a5,32(sp)
   13390:	00060793          	mv	a5,a2
   13394:	fd9ff06f          	j	1336c <_vfprintf_r+0x2810>
   13398:	02412603          	lw	a2,36(sp)
   1339c:	00160613          	addi	a2,a2,1
   133a0:	02c12223          	sw	a2,36(sp)
   133a4:	fc9ff06f          	j	1336c <_vfprintf_r+0x2810>
   133a8:	00e12a23          	sw	a4,20(sp)
   133ac:	02012783          	lw	a5,32(sp)
   133b0:	02412703          	lw	a4,36(sp)
   133b4:	02b12e23          	sw	a1,60(sp)
   133b8:	04012583          	lw	a1,64(sp)
   133bc:	00e78533          	add	a0,a5,a4
   133c0:	259110ef          	jal	ra,24e18 <__mulsi3>
   133c4:	01750bb3          	add	s7,a0,s7
   133c8:	fffbca13          	not	s4,s7
   133cc:	41fa5a13          	srai	s4,s4,0x1f
   133d0:	014bfa33          	and	s4,s7,s4
   133d4:	b88fe06f          	j	1175c <_vfprintf_r+0xc00>
   133d8:	0d610793          	addi	a5,sp,214
   133dc:	00071863          	bnez	a4,133ec <_vfprintf_r+0x2890>
   133e0:	03000793          	li	a5,48
   133e4:	0cf10b23          	sb	a5,214(sp)
   133e8:	0d710793          	addi	a5,sp,215
   133ec:	1b010713          	addi	a4,sp,432
   133f0:	030a0a13          	addi	s4,s4,48
   133f4:	40e78733          	sub	a4,a5,a4
   133f8:	01478023          	sb	s4,0(a5)
   133fc:	0dd70793          	addi	a5,a4,221
   13400:	02f12c23          	sw	a5,56(sp)
   13404:	b14fe06f          	j	11718 <_vfprintf_r+0xbbc>
   13408:	02812783          	lw	a5,40(sp)
   1340c:	06600413          	li	s0,102
   13410:	00f70bb3          	add	s7,a4,a5
   13414:	016b8bb3          	add	s7,s7,s6
   13418:	d49ff06f          	j	13160 <_vfprintf_r+0x2604>
   1341c:	0b010b93          	addi	s7,sp,176
   13420:	000b8513          	mv	a0,s7
   13424:	0bd12823          	sw	t4,176(sp)
   13428:	0be12a23          	sw	t5,180(sp)
   1342c:	0bf12c23          	sw	t6,184(sp)
   13430:	0bc12e23          	sw	t3,188(sp)
   13434:	6b0110ef          	jal	ra,24ae4 <__trunctfdf2>
   13438:	0cc10613          	addi	a2,sp,204
   1343c:	6f4060ef          	jal	ra,19b30 <frexp>
   13440:	00058613          	mv	a2,a1
   13444:	00050593          	mv	a1,a0
   13448:	000b8513          	mv	a0,s7
   1344c:	490110ef          	jal	ra,248dc <__extenddftf2>
   13450:	09010793          	addi	a5,sp,144
   13454:	00078593          	mv	a1,a5
   13458:	00f12c23          	sw	a5,24(sp)
   1345c:	0b012783          	lw	a5,176(sp)
   13460:	0a010a13          	addi	s4,sp,160
   13464:	08010613          	addi	a2,sp,128
   13468:	08f12823          	sw	a5,144(sp)
   1346c:	0b412783          	lw	a5,180(sp)
   13470:	000a0513          	mv	a0,s4
   13474:	04c12623          	sw	a2,76(sp)
   13478:	08f12a23          	sw	a5,148(sp)
   1347c:	0b812783          	lw	a5,184(sp)
   13480:	05412c23          	sw	s4,88(sp)
   13484:	08012023          	sw	zero,128(sp)
   13488:	08f12c23          	sw	a5,152(sp)
   1348c:	0bc12783          	lw	a5,188(sp)
   13490:	08012223          	sw	zero,132(sp)
   13494:	08012423          	sw	zero,136(sp)
   13498:	08f12e23          	sw	a5,156(sp)
   1349c:	3ffc07b7          	lui	a5,0x3ffc0
   134a0:	08f12623          	sw	a5,140(sp)
   134a4:	0550e0ef          	jal	ra,21cf8 <__multf3>
   134a8:	0a012683          	lw	a3,160(sp)
   134ac:	0a412e03          	lw	t3,164(sp)
   134b0:	0a812e83          	lw	t4,168(sp)
   134b4:	0ac12f03          	lw	t5,172(sp)
   134b8:	000a0593          	mv	a1,s4
   134bc:	000b8513          	mv	a0,s7
   134c0:	0ad12823          	sw	a3,176(sp)
   134c4:	02d12a23          	sw	a3,52(sp)
   134c8:	0bc12a23          	sw	t3,180(sp)
   134cc:	03c12223          	sw	t3,36(sp)
   134d0:	0bd12c23          	sw	t4,184(sp)
   134d4:	03d12023          	sw	t4,32(sp)
   134d8:	0be12e23          	sw	t5,188(sp)
   134dc:	01e12a23          	sw	t5,20(sp)
   134e0:	0a012023          	sw	zero,160(sp)
   134e4:	0a012223          	sw	zero,164(sp)
   134e8:	0a012423          	sw	zero,168(sp)
   134ec:	0a012623          	sw	zero,172(sp)
   134f0:	4b40e0ef          	jal	ra,219a4 <__eqtf2>
   134f4:	01412f03          	lw	t5,20(sp)
   134f8:	02012e83          	lw	t4,32(sp)
   134fc:	02412e03          	lw	t3,36(sp)
   13500:	03412683          	lw	a3,52(sp)
   13504:	00051663          	bnez	a0,13510 <_vfprintf_r+0x29b4>
   13508:	00100793          	li	a5,1
   1350c:	0cf12623          	sw	a5,204(sp)
   13510:	00012797          	auipc	a5,0x12
   13514:	d5478793          	addi	a5,a5,-684 # 25264 <zeroes.4505+0x20>
   13518:	02f12a23          	sw	a5,52(sp)
   1351c:	f38ff06f          	j	12c54 <_vfprintf_r+0x20f8>
   13520:	05412783          	lw	a5,84(sp)
   13524:	0017f793          	andi	a5,a5,1
   13528:	00079463          	bnez	a5,13530 <_vfprintf_r+0x29d4>
   1352c:	a0cfe06f          	j	11738 <_vfprintf_r+0xbdc>
   13530:	a00fe06f          	j	11730 <_vfprintf_r+0xbd4>
   13534:	0a010593          	addi	a1,sp,160
   13538:	000b8513          	mv	a0,s7
   1353c:	0bd12823          	sw	t4,176(sp)
   13540:	03d12223          	sw	t4,36(sp)
   13544:	0be12a23          	sw	t5,180(sp)
   13548:	03e12023          	sw	t5,32(sp)
   1354c:	0bf12c23          	sw	t6,184(sp)
   13550:	01f12c23          	sw	t6,24(sp)
   13554:	0bc12e23          	sw	t3,188(sp)
   13558:	01c12a23          	sw	t3,20(sp)
   1355c:	04b12c23          	sw	a1,88(sp)
   13560:	0a012023          	sw	zero,160(sp)
   13564:	0a012223          	sw	zero,164(sp)
   13568:	0a012423          	sw	zero,168(sp)
   1356c:	0a012623          	sw	zero,172(sp)
   13570:	4340e0ef          	jal	ra,219a4 <__eqtf2>
   13574:	01412e03          	lw	t3,20(sp)
   13578:	01812f83          	lw	t6,24(sp)
   1357c:	02012f03          	lw	t5,32(sp)
   13580:	02412e83          	lw	t4,36(sp)
   13584:	ae050ce3          	beqz	a0,1307c <_vfprintf_r+0x2520>
   13588:	00100793          	li	a5,1
   1358c:	416787b3          	sub	a5,a5,s6
   13590:	0cf12623          	sw	a5,204(sp)
   13594:	aedff06f          	j	13080 <_vfprintf_r+0x2524>
   13598:	40fb8bb3          	sub	s7,s7,a5
   1359c:	001b8b93          	addi	s7,s7,1
   135a0:	fffbca13          	not	s4,s7
   135a4:	41fa5a13          	srai	s4,s4,0x1f
   135a8:	014bfa33          	and	s4,s7,s4
   135ac:	9b1ff06f          	j	12f5c <_vfprintf_r+0x2400>
   135b0:	00079a63          	bnez	a5,135c4 <_vfprintf_r+0x2a68>
   135b4:	00100a13          	li	s4,1
   135b8:	06600413          	li	s0,102
   135bc:	00100b93          	li	s7,1
   135c0:	99dff06f          	j	12f5c <_vfprintf_r+0x2400>
   135c4:	02812783          	lw	a5,40(sp)
   135c8:	06600413          	li	s0,102
   135cc:	00178b93          	addi	s7,a5,1
   135d0:	016b8bb3          	add	s7,s7,s6
   135d4:	fffbca13          	not	s4,s7
   135d8:	41fa5a13          	srai	s4,s4,0x1f
   135dc:	014bfa33          	and	s4,s7,s4
   135e0:	97dff06f          	j	12f5c <_vfprintf_r+0x2400>
   135e4:	000d8613          	mv	a2,s11
   135e8:	cb1fe06f          	j	12298 <_vfprintf_r+0x173c>
   135ec:	00c12703          	lw	a4,12(sp)
   135f0:	00072b03          	lw	s6,0(a4)
   135f4:	00470713          	addi	a4,a4,4
   135f8:	000b5463          	bgez	s6,13600 <_vfprintf_r+0x2aa4>
   135fc:	fff00b13          	li	s6,-1
   13600:	00194403          	lbu	s0,1(s2)
   13604:	00e12623          	sw	a4,12(sp)
   13608:	00078913          	mv	s2,a5
   1360c:	f04fd06f          	j	10d10 <_vfprintf_r+0x1b4>
   13610:	00098a13          	mv	s4,s3
   13614:	b2dfd06f          	j	11140 <_vfprintf_r+0x5e4>
   13618:	00200793          	li	a5,2
   1361c:	02f12c23          	sw	a5,56(sp)
   13620:	8f8fe06f          	j	11718 <_vfprintf_r+0xbbc>
   13624:	00412703          	lw	a4,4(sp)
   13628:	00c75783          	lhu	a5,12(a4)
   1362c:	0407e793          	ori	a5,a5,64
   13630:	00f71623          	sh	a5,12(a4)
   13634:	ff4fd06f          	j	10e28 <_vfprintf_r+0x2cc>
   13638:	00098a13          	mv	s4,s3
   1363c:	954fe06f          	j	11790 <_vfprintf_r+0xc34>
   13640:	000b0a13          	mv	s4,s6
   13644:	c59ff06f          	j	1329c <_vfprintf_r+0x2740>

00013648 <vfprintf>:
   13648:	1c018793          	addi	a5,gp,448 # 26a80 <_impure_ptr>
   1364c:	00060693          	mv	a3,a2
   13650:	00058613          	mv	a2,a1
   13654:	00050593          	mv	a1,a0
   13658:	0007a503          	lw	a0,0(a5)
   1365c:	d00fd06f          	j	10b5c <_vfprintf_r>

00013660 <__sbprintf>:
   13660:	00c5d783          	lhu	a5,12(a1)
   13664:	0645ae03          	lw	t3,100(a1)
   13668:	00e5d303          	lhu	t1,14(a1)
   1366c:	01c5a883          	lw	a7,28(a1)
   13670:	0245a803          	lw	a6,36(a1)
   13674:	b8010113          	addi	sp,sp,-1152
   13678:	ffd7f793          	andi	a5,a5,-3
   1367c:	40000713          	li	a4,1024
   13680:	46812c23          	sw	s0,1144(sp)
   13684:	00f11a23          	sh	a5,20(sp)
   13688:	00058413          	mv	s0,a1
   1368c:	07010793          	addi	a5,sp,112
   13690:	00810593          	addi	a1,sp,8
   13694:	46912a23          	sw	s1,1140(sp)
   13698:	47212823          	sw	s2,1136(sp)
   1369c:	46112e23          	sw	ra,1148(sp)
   136a0:	00050913          	mv	s2,a0
   136a4:	07c12623          	sw	t3,108(sp)
   136a8:	00611b23          	sh	t1,22(sp)
   136ac:	03112223          	sw	a7,36(sp)
   136b0:	03012623          	sw	a6,44(sp)
   136b4:	00f12423          	sw	a5,8(sp)
   136b8:	00f12c23          	sw	a5,24(sp)
   136bc:	00e12823          	sw	a4,16(sp)
   136c0:	00e12e23          	sw	a4,28(sp)
   136c4:	02012023          	sw	zero,32(sp)
   136c8:	c94fd0ef          	jal	ra,10b5c <_vfprintf_r>
   136cc:	00050493          	mv	s1,a0
   136d0:	02055c63          	bgez	a0,13708 <__sbprintf+0xa8>
   136d4:	01415783          	lhu	a5,20(sp)
   136d8:	0407f793          	andi	a5,a5,64
   136dc:	00078863          	beqz	a5,136ec <__sbprintf+0x8c>
   136e0:	00c45783          	lhu	a5,12(s0)
   136e4:	0407e793          	ori	a5,a5,64
   136e8:	00f41623          	sh	a5,12(s0)
   136ec:	47c12083          	lw	ra,1148(sp)
   136f0:	47812403          	lw	s0,1144(sp)
   136f4:	00048513          	mv	a0,s1
   136f8:	47012903          	lw	s2,1136(sp)
   136fc:	47412483          	lw	s1,1140(sp)
   13700:	48010113          	addi	sp,sp,1152
   13704:	00008067          	ret
   13708:	00810593          	addi	a1,sp,8
   1370c:	00090513          	mv	a0,s2
   13710:	58c000ef          	jal	ra,13c9c <_fflush_r>
   13714:	fc0500e3          	beqz	a0,136d4 <__sbprintf+0x74>
   13718:	fff00493          	li	s1,-1
   1371c:	fb9ff06f          	j	136d4 <__sbprintf+0x74>

00013720 <__swsetup_r>:
   13720:	1c018793          	addi	a5,gp,448 # 26a80 <_impure_ptr>
   13724:	0007a783          	lw	a5,0(a5)
   13728:	ff010113          	addi	sp,sp,-16
   1372c:	00812423          	sw	s0,8(sp)
   13730:	00912223          	sw	s1,4(sp)
   13734:	00112623          	sw	ra,12(sp)
   13738:	00050493          	mv	s1,a0
   1373c:	00058413          	mv	s0,a1
   13740:	00078663          	beqz	a5,1374c <__swsetup_r+0x2c>
   13744:	0387a703          	lw	a4,56(a5)
   13748:	08070663          	beqz	a4,137d4 <__swsetup_r+0xb4>
   1374c:	00c41703          	lh	a4,12(s0)
   13750:	01071793          	slli	a5,a4,0x10
   13754:	0107d793          	srli	a5,a5,0x10
   13758:	0087f693          	andi	a3,a5,8
   1375c:	08068a63          	beqz	a3,137f0 <__swsetup_r+0xd0>
   13760:	01042683          	lw	a3,16(s0)
   13764:	0a068a63          	beqz	a3,13818 <__swsetup_r+0xf8>
   13768:	0017f713          	andi	a4,a5,1
   1376c:	02070863          	beqz	a4,1379c <__swsetup_r+0x7c>
   13770:	01442783          	lw	a5,20(s0)
   13774:	00042423          	sw	zero,8(s0)
   13778:	00000513          	li	a0,0
   1377c:	40f007b3          	neg	a5,a5
   13780:	00f42c23          	sw	a5,24(s0)
   13784:	02068a63          	beqz	a3,137b8 <__swsetup_r+0x98>
   13788:	00c12083          	lw	ra,12(sp)
   1378c:	00812403          	lw	s0,8(sp)
   13790:	00412483          	lw	s1,4(sp)
   13794:	01010113          	addi	sp,sp,16
   13798:	00008067          	ret
   1379c:	0027f793          	andi	a5,a5,2
   137a0:	00000713          	li	a4,0
   137a4:	00079463          	bnez	a5,137ac <__swsetup_r+0x8c>
   137a8:	01442703          	lw	a4,20(s0)
   137ac:	00e42423          	sw	a4,8(s0)
   137b0:	00000513          	li	a0,0
   137b4:	fc069ae3          	bnez	a3,13788 <__swsetup_r+0x68>
   137b8:	00c41783          	lh	a5,12(s0)
   137bc:	0807f713          	andi	a4,a5,128
   137c0:	fc0704e3          	beqz	a4,13788 <__swsetup_r+0x68>
   137c4:	0407e793          	ori	a5,a5,64
   137c8:	00f41623          	sh	a5,12(s0)
   137cc:	fff00513          	li	a0,-1
   137d0:	fb9ff06f          	j	13788 <__swsetup_r+0x68>
   137d4:	00078513          	mv	a0,a5
   137d8:	07d000ef          	jal	ra,14054 <__sinit>
   137dc:	00c41703          	lh	a4,12(s0)
   137e0:	01071793          	slli	a5,a4,0x10
   137e4:	0107d793          	srli	a5,a5,0x10
   137e8:	0087f693          	andi	a3,a5,8
   137ec:	f6069ae3          	bnez	a3,13760 <__swsetup_r+0x40>
   137f0:	0107f693          	andi	a3,a5,16
   137f4:	06068e63          	beqz	a3,13870 <__swsetup_r+0x150>
   137f8:	0047f793          	andi	a5,a5,4
   137fc:	04079063          	bnez	a5,1383c <__swsetup_r+0x11c>
   13800:	01042683          	lw	a3,16(s0)
   13804:	00876793          	ori	a5,a4,8
   13808:	00f41623          	sh	a5,12(s0)
   1380c:	01079793          	slli	a5,a5,0x10
   13810:	0107d793          	srli	a5,a5,0x10
   13814:	f4069ae3          	bnez	a3,13768 <__swsetup_r+0x48>
   13818:	2807f713          	andi	a4,a5,640
   1381c:	20000613          	li	a2,512
   13820:	f4c704e3          	beq	a4,a2,13768 <__swsetup_r+0x48>
   13824:	00040593          	mv	a1,s0
   13828:	00048513          	mv	a0,s1
   1382c:	7b1030ef          	jal	ra,177dc <__smakebuf_r>
   13830:	00c45783          	lhu	a5,12(s0)
   13834:	01042683          	lw	a3,16(s0)
   13838:	f31ff06f          	j	13768 <__swsetup_r+0x48>
   1383c:	03042583          	lw	a1,48(s0)
   13840:	00058e63          	beqz	a1,1385c <__swsetup_r+0x13c>
   13844:	04040793          	addi	a5,s0,64
   13848:	00f58863          	beq	a1,a5,13858 <__swsetup_r+0x138>
   1384c:	00048513          	mv	a0,s1
   13850:	175000ef          	jal	ra,141c4 <_free_r>
   13854:	00c41703          	lh	a4,12(s0)
   13858:	02042823          	sw	zero,48(s0)
   1385c:	01042683          	lw	a3,16(s0)
   13860:	fdb77713          	andi	a4,a4,-37
   13864:	00042223          	sw	zero,4(s0)
   13868:	00d42023          	sw	a3,0(s0)
   1386c:	f99ff06f          	j	13804 <__swsetup_r+0xe4>
   13870:	00900793          	li	a5,9
   13874:	00f4a023          	sw	a5,0(s1)
   13878:	04076713          	ori	a4,a4,64
   1387c:	00e41623          	sh	a4,12(s0)
   13880:	fff00513          	li	a0,-1
   13884:	f05ff06f          	j	13788 <__swsetup_r+0x68>

00013888 <__register_exitproc>:
   13888:	1b818793          	addi	a5,gp,440 # 26a78 <_global_impure_ptr>
   1388c:	0007a703          	lw	a4,0(a5)
   13890:	14872783          	lw	a5,328(a4)
   13894:	04078c63          	beqz	a5,138ec <__register_exitproc+0x64>
   13898:	0047a703          	lw	a4,4(a5)
   1389c:	01f00813          	li	a6,31
   138a0:	06e84e63          	blt	a6,a4,1391c <__register_exitproc+0x94>
   138a4:	00271813          	slli	a6,a4,0x2
   138a8:	02050663          	beqz	a0,138d4 <__register_exitproc+0x4c>
   138ac:	01078333          	add	t1,a5,a6
   138b0:	08c32423          	sw	a2,136(t1)
   138b4:	1887a883          	lw	a7,392(a5)
   138b8:	00100613          	li	a2,1
   138bc:	00e61633          	sll	a2,a2,a4
   138c0:	00c8e8b3          	or	a7,a7,a2
   138c4:	1917a423          	sw	a7,392(a5)
   138c8:	10d32423          	sw	a3,264(t1)
   138cc:	00200693          	li	a3,2
   138d0:	02d50463          	beq	a0,a3,138f8 <__register_exitproc+0x70>
   138d4:	00170713          	addi	a4,a4,1
   138d8:	00e7a223          	sw	a4,4(a5)
   138dc:	010787b3          	add	a5,a5,a6
   138e0:	00b7a423          	sw	a1,8(a5)
   138e4:	00000513          	li	a0,0
   138e8:	00008067          	ret
   138ec:	14c70793          	addi	a5,a4,332
   138f0:	14f72423          	sw	a5,328(a4)
   138f4:	fa5ff06f          	j	13898 <__register_exitproc+0x10>
   138f8:	18c7a683          	lw	a3,396(a5)
   138fc:	00170713          	addi	a4,a4,1
   13900:	00e7a223          	sw	a4,4(a5)
   13904:	00c6e633          	or	a2,a3,a2
   13908:	18c7a623          	sw	a2,396(a5)
   1390c:	010787b3          	add	a5,a5,a6
   13910:	00b7a423          	sw	a1,8(a5)
   13914:	00000513          	li	a0,0
   13918:	00008067          	ret
   1391c:	fff00513          	li	a0,-1
   13920:	00008067          	ret

00013924 <__call_exitprocs>:
   13924:	fd010113          	addi	sp,sp,-48
   13928:	1b818793          	addi	a5,gp,440 # 26a78 <_global_impure_ptr>
   1392c:	01812423          	sw	s8,8(sp)
   13930:	0007ac03          	lw	s8,0(a5)
   13934:	01312e23          	sw	s3,28(sp)
   13938:	01412c23          	sw	s4,24(sp)
   1393c:	01512a23          	sw	s5,20(sp)
   13940:	01612823          	sw	s6,16(sp)
   13944:	02112623          	sw	ra,44(sp)
   13948:	02812423          	sw	s0,40(sp)
   1394c:	02912223          	sw	s1,36(sp)
   13950:	03212023          	sw	s2,32(sp)
   13954:	01712623          	sw	s7,12(sp)
   13958:	00050a93          	mv	s5,a0
   1395c:	00058b13          	mv	s6,a1
   13960:	00100a13          	li	s4,1
   13964:	fff00993          	li	s3,-1
   13968:	148c2903          	lw	s2,328(s8)
   1396c:	02090863          	beqz	s2,1399c <__call_exitprocs+0x78>
   13970:	00492483          	lw	s1,4(s2)
   13974:	fff48413          	addi	s0,s1,-1
   13978:	02044263          	bltz	s0,1399c <__call_exitprocs+0x78>
   1397c:	00249493          	slli	s1,s1,0x2
   13980:	009904b3          	add	s1,s2,s1
   13984:	040b0463          	beqz	s6,139cc <__call_exitprocs+0xa8>
   13988:	1044a783          	lw	a5,260(s1)
   1398c:	05678063          	beq	a5,s6,139cc <__call_exitprocs+0xa8>
   13990:	fff40413          	addi	s0,s0,-1
   13994:	ffc48493          	addi	s1,s1,-4
   13998:	ff3416e3          	bne	s0,s3,13984 <__call_exitprocs+0x60>
   1399c:	02c12083          	lw	ra,44(sp)
   139a0:	02812403          	lw	s0,40(sp)
   139a4:	02412483          	lw	s1,36(sp)
   139a8:	02012903          	lw	s2,32(sp)
   139ac:	01c12983          	lw	s3,28(sp)
   139b0:	01812a03          	lw	s4,24(sp)
   139b4:	01412a83          	lw	s5,20(sp)
   139b8:	01012b03          	lw	s6,16(sp)
   139bc:	00c12b83          	lw	s7,12(sp)
   139c0:	00812c03          	lw	s8,8(sp)
   139c4:	03010113          	addi	sp,sp,48
   139c8:	00008067          	ret
   139cc:	00492783          	lw	a5,4(s2)
   139d0:	0044a683          	lw	a3,4(s1)
   139d4:	fff78793          	addi	a5,a5,-1
   139d8:	04878a63          	beq	a5,s0,13a2c <__call_exitprocs+0x108>
   139dc:	0004a223          	sw	zero,4(s1)
   139e0:	fa0688e3          	beqz	a3,13990 <__call_exitprocs+0x6c>
   139e4:	18892783          	lw	a5,392(s2)
   139e8:	008a1733          	sll	a4,s4,s0
   139ec:	00492b83          	lw	s7,4(s2)
   139f0:	00f777b3          	and	a5,a4,a5
   139f4:	00079e63          	bnez	a5,13a10 <__call_exitprocs+0xec>
   139f8:	000680e7          	jalr	a3
   139fc:	00492783          	lw	a5,4(s2)
   13a00:	f77794e3          	bne	a5,s7,13968 <__call_exitprocs+0x44>
   13a04:	148c2783          	lw	a5,328(s8)
   13a08:	f92784e3          	beq	a5,s2,13990 <__call_exitprocs+0x6c>
   13a0c:	f5dff06f          	j	13968 <__call_exitprocs+0x44>
   13a10:	18c92783          	lw	a5,396(s2)
   13a14:	0844a583          	lw	a1,132(s1)
   13a18:	00f77733          	and	a4,a4,a5
   13a1c:	00071c63          	bnez	a4,13a34 <__call_exitprocs+0x110>
   13a20:	000a8513          	mv	a0,s5
   13a24:	000680e7          	jalr	a3
   13a28:	fd5ff06f          	j	139fc <__call_exitprocs+0xd8>
   13a2c:	00892223          	sw	s0,4(s2)
   13a30:	fb1ff06f          	j	139e0 <__call_exitprocs+0xbc>
   13a34:	00058513          	mv	a0,a1
   13a38:	000680e7          	jalr	a3
   13a3c:	fc1ff06f          	j	139fc <__call_exitprocs+0xd8>

00013a40 <__sflush_r>:
   13a40:	00c59783          	lh	a5,12(a1)
   13a44:	fe010113          	addi	sp,sp,-32
   13a48:	00812c23          	sw	s0,24(sp)
   13a4c:	01079713          	slli	a4,a5,0x10
   13a50:	01075713          	srli	a4,a4,0x10
   13a54:	01312623          	sw	s3,12(sp)
   13a58:	00112e23          	sw	ra,28(sp)
   13a5c:	00912a23          	sw	s1,20(sp)
   13a60:	01212823          	sw	s2,16(sp)
   13a64:	00877693          	andi	a3,a4,8
   13a68:	00058413          	mv	s0,a1
   13a6c:	00050993          	mv	s3,a0
   13a70:	10069a63          	bnez	a3,13b84 <__sflush_r+0x144>
   13a74:	00001737          	lui	a4,0x1
   13a78:	80070713          	addi	a4,a4,-2048 # 800 <register_fini-0xf874>
   13a7c:	0045a683          	lw	a3,4(a1)
   13a80:	00e7e7b3          	or	a5,a5,a4
   13a84:	00f59623          	sh	a5,12(a1)
   13a88:	18d05063          	blez	a3,13c08 <__sflush_r+0x1c8>
   13a8c:	02842703          	lw	a4,40(s0)
   13a90:	0c070a63          	beqz	a4,13b64 <__sflush_r+0x124>
   13a94:	01079793          	slli	a5,a5,0x10
   13a98:	0107d793          	srli	a5,a5,0x10
   13a9c:	0009a483          	lw	s1,0(s3)
   13aa0:	01379693          	slli	a3,a5,0x13
   13aa4:	0009a023          	sw	zero,0(s3)
   13aa8:	01c42583          	lw	a1,28(s0)
   13aac:	1606c463          	bltz	a3,13c14 <__sflush_r+0x1d4>
   13ab0:	00100693          	li	a3,1
   13ab4:	00000613          	li	a2,0
   13ab8:	00098513          	mv	a0,s3
   13abc:	000700e7          	jalr	a4
   13ac0:	fff00793          	li	a5,-1
   13ac4:	18f50863          	beq	a0,a5,13c54 <__sflush_r+0x214>
   13ac8:	00c45783          	lhu	a5,12(s0)
   13acc:	02842703          	lw	a4,40(s0)
   13ad0:	01c42583          	lw	a1,28(s0)
   13ad4:	0047f793          	andi	a5,a5,4
   13ad8:	00078e63          	beqz	a5,13af4 <__sflush_r+0xb4>
   13adc:	00442683          	lw	a3,4(s0)
   13ae0:	03042783          	lw	a5,48(s0)
   13ae4:	40d50533          	sub	a0,a0,a3
   13ae8:	00078663          	beqz	a5,13af4 <__sflush_r+0xb4>
   13aec:	03c42783          	lw	a5,60(s0)
   13af0:	40f50533          	sub	a0,a0,a5
   13af4:	00050613          	mv	a2,a0
   13af8:	00000693          	li	a3,0
   13afc:	00098513          	mv	a0,s3
   13b00:	000700e7          	jalr	a4
   13b04:	fff00793          	li	a5,-1
   13b08:	10f51a63          	bne	a0,a5,13c1c <__sflush_r+0x1dc>
   13b0c:	0009a703          	lw	a4,0(s3)
   13b10:	00c41783          	lh	a5,12(s0)
   13b14:	16070463          	beqz	a4,13c7c <__sflush_r+0x23c>
   13b18:	01d00693          	li	a3,29
   13b1c:	00d70663          	beq	a4,a3,13b28 <__sflush_r+0xe8>
   13b20:	01600693          	li	a3,22
   13b24:	0cd71063          	bne	a4,a3,13be4 <__sflush_r+0x1a4>
   13b28:	01042683          	lw	a3,16(s0)
   13b2c:	fffff737          	lui	a4,0xfffff
   13b30:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffd8d17>
   13b34:	00e7f7b3          	and	a5,a5,a4
   13b38:	00f41623          	sh	a5,12(s0)
   13b3c:	00042223          	sw	zero,4(s0)
   13b40:	00d42023          	sw	a3,0(s0)
   13b44:	03042583          	lw	a1,48(s0)
   13b48:	0099a023          	sw	s1,0(s3)
   13b4c:	00058c63          	beqz	a1,13b64 <__sflush_r+0x124>
   13b50:	04040793          	addi	a5,s0,64
   13b54:	00f58663          	beq	a1,a5,13b60 <__sflush_r+0x120>
   13b58:	00098513          	mv	a0,s3
   13b5c:	668000ef          	jal	ra,141c4 <_free_r>
   13b60:	02042823          	sw	zero,48(s0)
   13b64:	00000513          	li	a0,0
   13b68:	01c12083          	lw	ra,28(sp)
   13b6c:	01812403          	lw	s0,24(sp)
   13b70:	01412483          	lw	s1,20(sp)
   13b74:	01012903          	lw	s2,16(sp)
   13b78:	00c12983          	lw	s3,12(sp)
   13b7c:	02010113          	addi	sp,sp,32
   13b80:	00008067          	ret
   13b84:	0105a903          	lw	s2,16(a1)
   13b88:	fc090ee3          	beqz	s2,13b64 <__sflush_r+0x124>
   13b8c:	0005a483          	lw	s1,0(a1)
   13b90:	00377713          	andi	a4,a4,3
   13b94:	0125a023          	sw	s2,0(a1)
   13b98:	412484b3          	sub	s1,s1,s2
   13b9c:	00000793          	li	a5,0
   13ba0:	00071463          	bnez	a4,13ba8 <__sflush_r+0x168>
   13ba4:	0145a783          	lw	a5,20(a1)
   13ba8:	00f42423          	sw	a5,8(s0)
   13bac:	00904863          	bgtz	s1,13bbc <__sflush_r+0x17c>
   13bb0:	fb5ff06f          	j	13b64 <__sflush_r+0x124>
   13bb4:	00a90933          	add	s2,s2,a0
   13bb8:	fa9056e3          	blez	s1,13b64 <__sflush_r+0x124>
   13bbc:	02442783          	lw	a5,36(s0)
   13bc0:	01c42583          	lw	a1,28(s0)
   13bc4:	00048693          	mv	a3,s1
   13bc8:	00090613          	mv	a2,s2
   13bcc:	00098513          	mv	a0,s3
   13bd0:	000780e7          	jalr	a5
   13bd4:	40a484b3          	sub	s1,s1,a0
   13bd8:	fca04ee3          	bgtz	a0,13bb4 <__sflush_r+0x174>
   13bdc:	00c45783          	lhu	a5,12(s0)
   13be0:	fff00513          	li	a0,-1
   13be4:	0407e793          	ori	a5,a5,64
   13be8:	00f41623          	sh	a5,12(s0)
   13bec:	01c12083          	lw	ra,28(sp)
   13bf0:	01812403          	lw	s0,24(sp)
   13bf4:	01412483          	lw	s1,20(sp)
   13bf8:	01012903          	lw	s2,16(sp)
   13bfc:	00c12983          	lw	s3,12(sp)
   13c00:	02010113          	addi	sp,sp,32
   13c04:	00008067          	ret
   13c08:	03c5a703          	lw	a4,60(a1)
   13c0c:	e8e040e3          	bgtz	a4,13a8c <__sflush_r+0x4c>
   13c10:	f55ff06f          	j	13b64 <__sflush_r+0x124>
   13c14:	05042503          	lw	a0,80(s0)
   13c18:	ebdff06f          	j	13ad4 <__sflush_r+0x94>
   13c1c:	00c45783          	lhu	a5,12(s0)
   13c20:	fffff737          	lui	a4,0xfffff
   13c24:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffd8d17>
   13c28:	00e7f7b3          	and	a5,a5,a4
   13c2c:	01042683          	lw	a3,16(s0)
   13c30:	01079793          	slli	a5,a5,0x10
   13c34:	4107d793          	srai	a5,a5,0x10
   13c38:	00f41623          	sh	a5,12(s0)
   13c3c:	00042223          	sw	zero,4(s0)
   13c40:	00d42023          	sw	a3,0(s0)
   13c44:	01379713          	slli	a4,a5,0x13
   13c48:	ee075ee3          	bgez	a4,13b44 <__sflush_r+0x104>
   13c4c:	04a42823          	sw	a0,80(s0)
   13c50:	ef5ff06f          	j	13b44 <__sflush_r+0x104>
   13c54:	0009a783          	lw	a5,0(s3)
   13c58:	e60788e3          	beqz	a5,13ac8 <__sflush_r+0x88>
   13c5c:	01d00713          	li	a4,29
   13c60:	02e78863          	beq	a5,a4,13c90 <__sflush_r+0x250>
   13c64:	01600713          	li	a4,22
   13c68:	02e78463          	beq	a5,a4,13c90 <__sflush_r+0x250>
   13c6c:	00c45783          	lhu	a5,12(s0)
   13c70:	0407e793          	ori	a5,a5,64
   13c74:	00f41623          	sh	a5,12(s0)
   13c78:	ef1ff06f          	j	13b68 <__sflush_r+0x128>
   13c7c:	fffff737          	lui	a4,0xfffff
   13c80:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffd8d17>
   13c84:	01042683          	lw	a3,16(s0)
   13c88:	00e7f7b3          	and	a5,a5,a4
   13c8c:	fadff06f          	j	13c38 <__sflush_r+0x1f8>
   13c90:	0099a023          	sw	s1,0(s3)
   13c94:	00000513          	li	a0,0
   13c98:	ed1ff06f          	j	13b68 <__sflush_r+0x128>

00013c9c <_fflush_r>:
   13c9c:	fe010113          	addi	sp,sp,-32
   13ca0:	00812c23          	sw	s0,24(sp)
   13ca4:	00112e23          	sw	ra,28(sp)
   13ca8:	00050413          	mv	s0,a0
   13cac:	00050663          	beqz	a0,13cb8 <_fflush_r+0x1c>
   13cb0:	03852783          	lw	a5,56(a0)
   13cb4:	02078063          	beqz	a5,13cd4 <_fflush_r+0x38>
   13cb8:	00c59783          	lh	a5,12(a1)
   13cbc:	02079663          	bnez	a5,13ce8 <_fflush_r+0x4c>
   13cc0:	01c12083          	lw	ra,28(sp)
   13cc4:	01812403          	lw	s0,24(sp)
   13cc8:	00000513          	li	a0,0
   13ccc:	02010113          	addi	sp,sp,32
   13cd0:	00008067          	ret
   13cd4:	00b12623          	sw	a1,12(sp)
   13cd8:	37c000ef          	jal	ra,14054 <__sinit>
   13cdc:	00c12583          	lw	a1,12(sp)
   13ce0:	00c59783          	lh	a5,12(a1)
   13ce4:	fc078ee3          	beqz	a5,13cc0 <_fflush_r+0x24>
   13ce8:	00040513          	mv	a0,s0
   13cec:	01812403          	lw	s0,24(sp)
   13cf0:	01c12083          	lw	ra,28(sp)
   13cf4:	02010113          	addi	sp,sp,32
   13cf8:	d49ff06f          	j	13a40 <__sflush_r>

00013cfc <fflush>:
   13cfc:	00050593          	mv	a1,a0
   13d00:	00050863          	beqz	a0,13d10 <fflush+0x14>
   13d04:	1c018793          	addi	a5,gp,448 # 26a80 <_impure_ptr>
   13d08:	0007a503          	lw	a0,0(a5)
   13d0c:	f91ff06f          	j	13c9c <_fflush_r>
   13d10:	1b818793          	addi	a5,gp,440 # 26a78 <_global_impure_ptr>
   13d14:	0007a503          	lw	a0,0(a5)
   13d18:	00000597          	auipc	a1,0x0
   13d1c:	f8458593          	addi	a1,a1,-124 # 13c9c <_fflush_r>
   13d20:	5090006f          	j	14a28 <_fwalk_reent>

00013d24 <__fp_lock>:
   13d24:	00000513          	li	a0,0
   13d28:	00008067          	ret

00013d2c <_cleanup_r>:
   13d2c:	0000a597          	auipc	a1,0xa
   13d30:	4f058593          	addi	a1,a1,1264 # 1e21c <_fclose_r>
   13d34:	4f50006f          	j	14a28 <_fwalk_reent>

00013d38 <__sinit.part.0>:
   13d38:	fe010113          	addi	sp,sp,-32
   13d3c:	00112e23          	sw	ra,28(sp)
   13d40:	00812c23          	sw	s0,24(sp)
   13d44:	00912a23          	sw	s1,20(sp)
   13d48:	01212823          	sw	s2,16(sp)
   13d4c:	01312623          	sw	s3,12(sp)
   13d50:	01412423          	sw	s4,8(sp)
   13d54:	01512223          	sw	s5,4(sp)
   13d58:	01612023          	sw	s6,0(sp)
   13d5c:	00452403          	lw	s0,4(a0)
   13d60:	00000717          	auipc	a4,0x0
   13d64:	fcc70713          	addi	a4,a4,-52 # 13d2c <_cleanup_r>
   13d68:	02e52e23          	sw	a4,60(a0)
   13d6c:	2ec50793          	addi	a5,a0,748
   13d70:	00300713          	li	a4,3
   13d74:	2ee52223          	sw	a4,740(a0)
   13d78:	2ef52423          	sw	a5,744(a0)
   13d7c:	2e052023          	sw	zero,736(a0)
   13d80:	00400793          	li	a5,4
   13d84:	00050913          	mv	s2,a0
   13d88:	00f42623          	sw	a5,12(s0)
   13d8c:	00800613          	li	a2,8
   13d90:	00000593          	li	a1,0
   13d94:	06042223          	sw	zero,100(s0)
   13d98:	00042023          	sw	zero,0(s0)
   13d9c:	00042223          	sw	zero,4(s0)
   13da0:	00042423          	sw	zero,8(s0)
   13da4:	00042823          	sw	zero,16(s0)
   13da8:	00042a23          	sw	zero,20(s0)
   13dac:	00042c23          	sw	zero,24(s0)
   13db0:	05c40513          	addi	a0,s0,92
   13db4:	ac9fc0ef          	jal	ra,1087c <memset>
   13db8:	00892483          	lw	s1,8(s2)
   13dbc:	00006b17          	auipc	s6,0x6
   13dc0:	f0cb0b13          	addi	s6,s6,-244 # 19cc8 <__sread>
   13dc4:	00006a97          	auipc	s5,0x6
   13dc8:	f68a8a93          	addi	s5,s5,-152 # 19d2c <__swrite>
   13dcc:	00006a17          	auipc	s4,0x6
   13dd0:	fe8a0a13          	addi	s4,s4,-24 # 19db4 <__sseek>
   13dd4:	00006997          	auipc	s3,0x6
   13dd8:	04898993          	addi	s3,s3,72 # 19e1c <__sclose>
   13ddc:	000107b7          	lui	a5,0x10
   13de0:	03642023          	sw	s6,32(s0)
   13de4:	03542223          	sw	s5,36(s0)
   13de8:	03442423          	sw	s4,40(s0)
   13dec:	03342623          	sw	s3,44(s0)
   13df0:	00842e23          	sw	s0,28(s0)
   13df4:	00978793          	addi	a5,a5,9 # 10009 <register_fini-0x6b>
   13df8:	00f4a623          	sw	a5,12(s1)
   13dfc:	00800613          	li	a2,8
   13e00:	00000593          	li	a1,0
   13e04:	0604a223          	sw	zero,100(s1)
   13e08:	0004a023          	sw	zero,0(s1)
   13e0c:	0004a223          	sw	zero,4(s1)
   13e10:	0004a423          	sw	zero,8(s1)
   13e14:	0004a823          	sw	zero,16(s1)
   13e18:	0004aa23          	sw	zero,20(s1)
   13e1c:	0004ac23          	sw	zero,24(s1)
   13e20:	05c48513          	addi	a0,s1,92
   13e24:	a59fc0ef          	jal	ra,1087c <memset>
   13e28:	00c92403          	lw	s0,12(s2)
   13e2c:	000207b7          	lui	a5,0x20
   13e30:	0364a023          	sw	s6,32(s1)
   13e34:	0354a223          	sw	s5,36(s1)
   13e38:	0344a423          	sw	s4,40(s1)
   13e3c:	0334a623          	sw	s3,44(s1)
   13e40:	0094ae23          	sw	s1,28(s1)
   13e44:	01278793          	addi	a5,a5,18 # 20012 <_conv_stat+0x22>
   13e48:	00f42623          	sw	a5,12(s0)
   13e4c:	06042223          	sw	zero,100(s0)
   13e50:	00042023          	sw	zero,0(s0)
   13e54:	00042223          	sw	zero,4(s0)
   13e58:	00042423          	sw	zero,8(s0)
   13e5c:	00042823          	sw	zero,16(s0)
   13e60:	00042a23          	sw	zero,20(s0)
   13e64:	00042c23          	sw	zero,24(s0)
   13e68:	05c40513          	addi	a0,s0,92
   13e6c:	00800613          	li	a2,8
   13e70:	00000593          	li	a1,0
   13e74:	a09fc0ef          	jal	ra,1087c <memset>
   13e78:	01c12083          	lw	ra,28(sp)
   13e7c:	03642023          	sw	s6,32(s0)
   13e80:	03542223          	sw	s5,36(s0)
   13e84:	03442423          	sw	s4,40(s0)
   13e88:	03342623          	sw	s3,44(s0)
   13e8c:	00842e23          	sw	s0,28(s0)
   13e90:	01812403          	lw	s0,24(sp)
   13e94:	00100793          	li	a5,1
   13e98:	02f92c23          	sw	a5,56(s2)
   13e9c:	01412483          	lw	s1,20(sp)
   13ea0:	01012903          	lw	s2,16(sp)
   13ea4:	00c12983          	lw	s3,12(sp)
   13ea8:	00812a03          	lw	s4,8(sp)
   13eac:	00412a83          	lw	s5,4(sp)
   13eb0:	00012b03          	lw	s6,0(sp)
   13eb4:	02010113          	addi	sp,sp,32
   13eb8:	00008067          	ret

00013ebc <__fp_unlock>:
   13ebc:	00000513          	li	a0,0
   13ec0:	00008067          	ret

00013ec4 <__sfmoreglue>:
   13ec4:	ff010113          	addi	sp,sp,-16
   13ec8:	fff58613          	addi	a2,a1,-1
   13ecc:	00812423          	sw	s0,8(sp)
   13ed0:	00161413          	slli	s0,a2,0x1
   13ed4:	00c40433          	add	s0,s0,a2
   13ed8:	00241413          	slli	s0,s0,0x2
   13edc:	00c40433          	add	s0,s0,a2
   13ee0:	00341413          	slli	s0,s0,0x3
   13ee4:	01212023          	sw	s2,0(sp)
   13ee8:	00058913          	mv	s2,a1
   13eec:	07440593          	addi	a1,s0,116
   13ef0:	00912223          	sw	s1,4(sp)
   13ef4:	00112623          	sw	ra,12(sp)
   13ef8:	205030ef          	jal	ra,178fc <_malloc_r>
   13efc:	00050493          	mv	s1,a0
   13f00:	02050063          	beqz	a0,13f20 <__sfmoreglue+0x5c>
   13f04:	00c50513          	addi	a0,a0,12
   13f08:	0004a023          	sw	zero,0(s1)
   13f0c:	0124a223          	sw	s2,4(s1)
   13f10:	00a4a423          	sw	a0,8(s1)
   13f14:	06840613          	addi	a2,s0,104
   13f18:	00000593          	li	a1,0
   13f1c:	961fc0ef          	jal	ra,1087c <memset>
   13f20:	00c12083          	lw	ra,12(sp)
   13f24:	00812403          	lw	s0,8(sp)
   13f28:	00048513          	mv	a0,s1
   13f2c:	00012903          	lw	s2,0(sp)
   13f30:	00412483          	lw	s1,4(sp)
   13f34:	01010113          	addi	sp,sp,16
   13f38:	00008067          	ret

00013f3c <__sfp>:
   13f3c:	fe010113          	addi	sp,sp,-32
   13f40:	1b818793          	addi	a5,gp,440 # 26a78 <_global_impure_ptr>
   13f44:	01212823          	sw	s2,16(sp)
   13f48:	0007a903          	lw	s2,0(a5)
   13f4c:	01312623          	sw	s3,12(sp)
   13f50:	00112e23          	sw	ra,28(sp)
   13f54:	03892783          	lw	a5,56(s2)
   13f58:	00812c23          	sw	s0,24(sp)
   13f5c:	00912a23          	sw	s1,20(sp)
   13f60:	00050993          	mv	s3,a0
   13f64:	0a078663          	beqz	a5,14010 <__sfp+0xd4>
   13f68:	2e090913          	addi	s2,s2,736
   13f6c:	fff00493          	li	s1,-1
   13f70:	00492783          	lw	a5,4(s2)
   13f74:	00892403          	lw	s0,8(s2)
   13f78:	fff78793          	addi	a5,a5,-1
   13f7c:	0007da63          	bgez	a5,13f90 <__sfp+0x54>
   13f80:	0800006f          	j	14000 <__sfp+0xc4>
   13f84:	fff78793          	addi	a5,a5,-1
   13f88:	06840413          	addi	s0,s0,104
   13f8c:	06978a63          	beq	a5,s1,14000 <__sfp+0xc4>
   13f90:	00c41703          	lh	a4,12(s0)
   13f94:	fe0718e3          	bnez	a4,13f84 <__sfp+0x48>
   13f98:	ffff07b7          	lui	a5,0xffff0
   13f9c:	00178793          	addi	a5,a5,1 # ffff0001 <__BSS_END__+0xfffc9519>
   13fa0:	06042223          	sw	zero,100(s0)
   13fa4:	00042023          	sw	zero,0(s0)
   13fa8:	00042223          	sw	zero,4(s0)
   13fac:	00042423          	sw	zero,8(s0)
   13fb0:	00f42623          	sw	a5,12(s0)
   13fb4:	00042823          	sw	zero,16(s0)
   13fb8:	00042a23          	sw	zero,20(s0)
   13fbc:	00042c23          	sw	zero,24(s0)
   13fc0:	00800613          	li	a2,8
   13fc4:	00000593          	li	a1,0
   13fc8:	05c40513          	addi	a0,s0,92
   13fcc:	8b1fc0ef          	jal	ra,1087c <memset>
   13fd0:	02042823          	sw	zero,48(s0)
   13fd4:	02042a23          	sw	zero,52(s0)
   13fd8:	04042223          	sw	zero,68(s0)
   13fdc:	04042423          	sw	zero,72(s0)
   13fe0:	00040513          	mv	a0,s0
   13fe4:	01c12083          	lw	ra,28(sp)
   13fe8:	01812403          	lw	s0,24(sp)
   13fec:	01412483          	lw	s1,20(sp)
   13ff0:	01012903          	lw	s2,16(sp)
   13ff4:	00c12983          	lw	s3,12(sp)
   13ff8:	02010113          	addi	sp,sp,32
   13ffc:	00008067          	ret
   14000:	00092403          	lw	s0,0(s2)
   14004:	00040c63          	beqz	s0,1401c <__sfp+0xe0>
   14008:	00040913          	mv	s2,s0
   1400c:	f65ff06f          	j	13f70 <__sfp+0x34>
   14010:	00090513          	mv	a0,s2
   14014:	d25ff0ef          	jal	ra,13d38 <__sinit.part.0>
   14018:	f51ff06f          	j	13f68 <__sfp+0x2c>
   1401c:	00400593          	li	a1,4
   14020:	00098513          	mv	a0,s3
   14024:	ea1ff0ef          	jal	ra,13ec4 <__sfmoreglue>
   14028:	00a92023          	sw	a0,0(s2)
   1402c:	00050413          	mv	s0,a0
   14030:	fc051ce3          	bnez	a0,14008 <__sfp+0xcc>
   14034:	00c00793          	li	a5,12
   14038:	00f9a023          	sw	a5,0(s3)
   1403c:	fa5ff06f          	j	13fe0 <__sfp+0xa4>

00014040 <_cleanup>:
   14040:	1b818793          	addi	a5,gp,440 # 26a78 <_global_impure_ptr>
   14044:	0007a503          	lw	a0,0(a5)
   14048:	0000a597          	auipc	a1,0xa
   1404c:	1d458593          	addi	a1,a1,468 # 1e21c <_fclose_r>
   14050:	1d90006f          	j	14a28 <_fwalk_reent>

00014054 <__sinit>:
   14054:	03852783          	lw	a5,56(a0)
   14058:	00078463          	beqz	a5,14060 <__sinit+0xc>
   1405c:	00008067          	ret
   14060:	cd9ff06f          	j	13d38 <__sinit.part.0>

00014064 <__sfp_lock_acquire>:
   14064:	00008067          	ret

00014068 <__sfp_lock_release>:
   14068:	00008067          	ret

0001406c <__sinit_lock_acquire>:
   1406c:	00008067          	ret

00014070 <__sinit_lock_release>:
   14070:	00008067          	ret

00014074 <__fp_lock_all>:
   14074:	1c018793          	addi	a5,gp,448 # 26a80 <_impure_ptr>
   14078:	0007a503          	lw	a0,0(a5)
   1407c:	00000597          	auipc	a1,0x0
   14080:	ca858593          	addi	a1,a1,-856 # 13d24 <__fp_lock>
   14084:	0f50006f          	j	14978 <_fwalk>

00014088 <__fp_unlock_all>:
   14088:	1c018793          	addi	a5,gp,448 # 26a80 <_impure_ptr>
   1408c:	0007a503          	lw	a0,0(a5)
   14090:	00000597          	auipc	a1,0x0
   14094:	e2c58593          	addi	a1,a1,-468 # 13ebc <__fp_unlock>
   14098:	0e10006f          	j	14978 <_fwalk>

0001409c <_malloc_trim_r>:
   1409c:	fe010113          	addi	sp,sp,-32
   140a0:	00812c23          	sw	s0,24(sp)
   140a4:	00912a23          	sw	s1,20(sp)
   140a8:	01212823          	sw	s2,16(sp)
   140ac:	01312623          	sw	s3,12(sp)
   140b0:	00058413          	mv	s0,a1
   140b4:	00112e23          	sw	ra,28(sp)
   140b8:	d9418993          	addi	s3,gp,-620 # 26654 <__malloc_av_>
   140bc:	00050913          	mv	s2,a0
   140c0:	394040ef          	jal	ra,18454 <__malloc_lock>
   140c4:	0089a683          	lw	a3,8(s3)
   140c8:	00001737          	lui	a4,0x1
   140cc:	fef70793          	addi	a5,a4,-17 # fef <register_fini-0xf085>
   140d0:	0046a483          	lw	s1,4(a3)
   140d4:	40878433          	sub	s0,a5,s0
   140d8:	ffc4f493          	andi	s1,s1,-4
   140dc:	00940433          	add	s0,s0,s1
   140e0:	00c45413          	srli	s0,s0,0xc
   140e4:	fff40413          	addi	s0,s0,-1
   140e8:	00c41413          	slli	s0,s0,0xc
   140ec:	00e44e63          	blt	s0,a4,14108 <_malloc_trim_r+0x6c>
   140f0:	00000593          	li	a1,0
   140f4:	00090513          	mv	a0,s2
   140f8:	1e5050ef          	jal	ra,19adc <_sbrk_r>
   140fc:	0089a783          	lw	a5,8(s3)
   14100:	009787b3          	add	a5,a5,s1
   14104:	02f50663          	beq	a0,a5,14130 <_malloc_trim_r+0x94>
   14108:	00090513          	mv	a0,s2
   1410c:	34c040ef          	jal	ra,18458 <__malloc_unlock>
   14110:	01c12083          	lw	ra,28(sp)
   14114:	01812403          	lw	s0,24(sp)
   14118:	01412483          	lw	s1,20(sp)
   1411c:	01012903          	lw	s2,16(sp)
   14120:	00c12983          	lw	s3,12(sp)
   14124:	00000513          	li	a0,0
   14128:	02010113          	addi	sp,sp,32
   1412c:	00008067          	ret
   14130:	408005b3          	neg	a1,s0
   14134:	00090513          	mv	a0,s2
   14138:	1a5050ef          	jal	ra,19adc <_sbrk_r>
   1413c:	fff00793          	li	a5,-1
   14140:	04f50663          	beq	a0,a5,1418c <_malloc_trim_r+0xf0>
   14144:	1fc18793          	addi	a5,gp,508 # 26abc <__malloc_current_mallinfo>
   14148:	0007a783          	lw	a5,0(a5)
   1414c:	0089a703          	lw	a4,8(s3)
   14150:	408484b3          	sub	s1,s1,s0
   14154:	0014e493          	ori	s1,s1,1
   14158:	40878433          	sub	s0,a5,s0
   1415c:	00090513          	mv	a0,s2
   14160:	00972223          	sw	s1,4(a4)
   14164:	1e81ae23          	sw	s0,508(gp) # 26abc <__malloc_current_mallinfo>
   14168:	2f0040ef          	jal	ra,18458 <__malloc_unlock>
   1416c:	01c12083          	lw	ra,28(sp)
   14170:	01812403          	lw	s0,24(sp)
   14174:	01412483          	lw	s1,20(sp)
   14178:	01012903          	lw	s2,16(sp)
   1417c:	00c12983          	lw	s3,12(sp)
   14180:	00100513          	li	a0,1
   14184:	02010113          	addi	sp,sp,32
   14188:	00008067          	ret
   1418c:	00000593          	li	a1,0
   14190:	00090513          	mv	a0,s2
   14194:	149050ef          	jal	ra,19adc <_sbrk_r>
   14198:	0089a703          	lw	a4,8(s3)
   1419c:	00f00693          	li	a3,15
   141a0:	40e507b3          	sub	a5,a0,a4
   141a4:	f6f6d2e3          	bge	a3,a5,14108 <_malloc_trim_r+0x6c>
   141a8:	1c418693          	addi	a3,gp,452 # 26a84 <__malloc_sbrk_base>
   141ac:	0006a683          	lw	a3,0(a3)
   141b0:	0017e793          	ori	a5,a5,1
   141b4:	00f72223          	sw	a5,4(a4)
   141b8:	40d50533          	sub	a0,a0,a3
   141bc:	1ea1ae23          	sw	a0,508(gp) # 26abc <__malloc_current_mallinfo>
   141c0:	f49ff06f          	j	14108 <_malloc_trim_r+0x6c>

000141c4 <_free_r>:
   141c4:	12058663          	beqz	a1,142f0 <_free_r+0x12c>
   141c8:	ff010113          	addi	sp,sp,-16
   141cc:	00812423          	sw	s0,8(sp)
   141d0:	00912223          	sw	s1,4(sp)
   141d4:	00058413          	mv	s0,a1
   141d8:	00050493          	mv	s1,a0
   141dc:	00112623          	sw	ra,12(sp)
   141e0:	274040ef          	jal	ra,18454 <__malloc_lock>
   141e4:	ffc42583          	lw	a1,-4(s0)
   141e8:	ff840713          	addi	a4,s0,-8
   141ec:	d9418513          	addi	a0,gp,-620 # 26654 <__malloc_av_>
   141f0:	ffe5f793          	andi	a5,a1,-2
   141f4:	00f70633          	add	a2,a4,a5
   141f8:	00462683          	lw	a3,4(a2)
   141fc:	00852803          	lw	a6,8(a0)
   14200:	ffc6f693          	andi	a3,a3,-4
   14204:	18c80e63          	beq	a6,a2,143a0 <_free_r+0x1dc>
   14208:	00d62223          	sw	a3,4(a2)
   1420c:	0015f593          	andi	a1,a1,1
   14210:	00d60833          	add	a6,a2,a3
   14214:	0a059063          	bnez	a1,142b4 <_free_r+0xf0>
   14218:	ff842303          	lw	t1,-8(s0)
   1421c:	00482583          	lw	a1,4(a6)
   14220:	d9c18893          	addi	a7,gp,-612 # 2665c <__malloc_av_+0x8>
   14224:	40670733          	sub	a4,a4,t1
   14228:	00872803          	lw	a6,8(a4)
   1422c:	006787b3          	add	a5,a5,t1
   14230:	0015f593          	andi	a1,a1,1
   14234:	15180063          	beq	a6,a7,14374 <_free_r+0x1b0>
   14238:	00c72303          	lw	t1,12(a4)
   1423c:	00682623          	sw	t1,12(a6)
   14240:	01032423          	sw	a6,8(t1)
   14244:	1c058a63          	beqz	a1,14418 <_free_r+0x254>
   14248:	0017e693          	ori	a3,a5,1
   1424c:	00d72223          	sw	a3,4(a4)
   14250:	00f62023          	sw	a5,0(a2)
   14254:	1ff00693          	li	a3,511
   14258:	0af6e863          	bltu	a3,a5,14308 <_free_r+0x144>
   1425c:	0037d793          	srli	a5,a5,0x3
   14260:	00178693          	addi	a3,a5,1
   14264:	00369693          	slli	a3,a3,0x3
   14268:	00452583          	lw	a1,4(a0)
   1426c:	00d50533          	add	a0,a0,a3
   14270:	00052603          	lw	a2,0(a0)
   14274:	4027d693          	srai	a3,a5,0x2
   14278:	00100793          	li	a5,1
   1427c:	00d797b3          	sll	a5,a5,a3
   14280:	00b7e7b3          	or	a5,a5,a1
   14284:	ff850693          	addi	a3,a0,-8
   14288:	00d72623          	sw	a3,12(a4)
   1428c:	00c72423          	sw	a2,8(a4)
   14290:	d8f1ac23          	sw	a5,-616(gp) # 26658 <__malloc_av_+0x4>
   14294:	00e52023          	sw	a4,0(a0)
   14298:	00e62623          	sw	a4,12(a2)
   1429c:	00812403          	lw	s0,8(sp)
   142a0:	00c12083          	lw	ra,12(sp)
   142a4:	00048513          	mv	a0,s1
   142a8:	00412483          	lw	s1,4(sp)
   142ac:	01010113          	addi	sp,sp,16
   142b0:	1a80406f          	j	18458 <__malloc_unlock>
   142b4:	00482583          	lw	a1,4(a6)
   142b8:	0015f593          	andi	a1,a1,1
   142bc:	02059c63          	bnez	a1,142f4 <_free_r+0x130>
   142c0:	00d787b3          	add	a5,a5,a3
   142c4:	d9c18893          	addi	a7,gp,-612 # 2665c <__malloc_av_+0x8>
   142c8:	00862683          	lw	a3,8(a2)
   142cc:	0017e813          	ori	a6,a5,1
   142d0:	00f705b3          	add	a1,a4,a5
   142d4:	15168e63          	beq	a3,a7,14430 <_free_r+0x26c>
   142d8:	00c62603          	lw	a2,12(a2)
   142dc:	00c6a623          	sw	a2,12(a3)
   142e0:	00d62423          	sw	a3,8(a2)
   142e4:	01072223          	sw	a6,4(a4)
   142e8:	00f5a023          	sw	a5,0(a1)
   142ec:	f69ff06f          	j	14254 <_free_r+0x90>
   142f0:	00008067          	ret
   142f4:	0017e693          	ori	a3,a5,1
   142f8:	fed42e23          	sw	a3,-4(s0)
   142fc:	00f62023          	sw	a5,0(a2)
   14300:	1ff00693          	li	a3,511
   14304:	f4f6fce3          	bgeu	a3,a5,1425c <_free_r+0x98>
   14308:	0097d693          	srli	a3,a5,0x9
   1430c:	00400613          	li	a2,4
   14310:	0ed66263          	bltu	a2,a3,143f4 <_free_r+0x230>
   14314:	0067d693          	srli	a3,a5,0x6
   14318:	03968593          	addi	a1,a3,57
   1431c:	03868613          	addi	a2,a3,56
   14320:	00359593          	slli	a1,a1,0x3
   14324:	00b505b3          	add	a1,a0,a1
   14328:	0005a683          	lw	a3,0(a1)
   1432c:	ff858593          	addi	a1,a1,-8
   14330:	10d58e63          	beq	a1,a3,1444c <_free_r+0x288>
   14334:	0046a603          	lw	a2,4(a3)
   14338:	ffc67613          	andi	a2,a2,-4
   1433c:	00c7f663          	bgeu	a5,a2,14348 <_free_r+0x184>
   14340:	0086a683          	lw	a3,8(a3)
   14344:	fed598e3          	bne	a1,a3,14334 <_free_r+0x170>
   14348:	00c6a583          	lw	a1,12(a3)
   1434c:	00b72623          	sw	a1,12(a4)
   14350:	00d72423          	sw	a3,8(a4)
   14354:	00812403          	lw	s0,8(sp)
   14358:	00e5a423          	sw	a4,8(a1)
   1435c:	00c12083          	lw	ra,12(sp)
   14360:	00048513          	mv	a0,s1
   14364:	00412483          	lw	s1,4(sp)
   14368:	00e6a623          	sw	a4,12(a3)
   1436c:	01010113          	addi	sp,sp,16
   14370:	0e80406f          	j	18458 <__malloc_unlock>
   14374:	12059c63          	bnez	a1,144ac <_free_r+0x2e8>
   14378:	00862583          	lw	a1,8(a2)
   1437c:	00c62603          	lw	a2,12(a2)
   14380:	00f687b3          	add	a5,a3,a5
   14384:	0017e693          	ori	a3,a5,1
   14388:	00c5a623          	sw	a2,12(a1)
   1438c:	00b62423          	sw	a1,8(a2)
   14390:	00d72223          	sw	a3,4(a4)
   14394:	00f70733          	add	a4,a4,a5
   14398:	00f72023          	sw	a5,0(a4)
   1439c:	f01ff06f          	j	1429c <_free_r+0xd8>
   143a0:	0015f593          	andi	a1,a1,1
   143a4:	00d787b3          	add	a5,a5,a3
   143a8:	02059063          	bnez	a1,143c8 <_free_r+0x204>
   143ac:	ff842583          	lw	a1,-8(s0)
   143b0:	40b70733          	sub	a4,a4,a1
   143b4:	00c72683          	lw	a3,12(a4)
   143b8:	00872603          	lw	a2,8(a4)
   143bc:	00b787b3          	add	a5,a5,a1
   143c0:	00d62623          	sw	a3,12(a2)
   143c4:	00c6a423          	sw	a2,8(a3)
   143c8:	1c818693          	addi	a3,gp,456 # 26a88 <__malloc_trim_threshold>
   143cc:	0017e613          	ori	a2,a5,1
   143d0:	0006a683          	lw	a3,0(a3)
   143d4:	00c72223          	sw	a2,4(a4)
   143d8:	d8e1ae23          	sw	a4,-612(gp) # 2665c <__malloc_av_+0x8>
   143dc:	ecd7e0e3          	bltu	a5,a3,1429c <_free_r+0xd8>
   143e0:	1d818793          	addi	a5,gp,472 # 26a98 <__malloc_top_pad>
   143e4:	0007a583          	lw	a1,0(a5)
   143e8:	00048513          	mv	a0,s1
   143ec:	cb1ff0ef          	jal	ra,1409c <_malloc_trim_r>
   143f0:	eadff06f          	j	1429c <_free_r+0xd8>
   143f4:	01400613          	li	a2,20
   143f8:	02d67463          	bgeu	a2,a3,14420 <_free_r+0x25c>
   143fc:	05400613          	li	a2,84
   14400:	06d66463          	bltu	a2,a3,14468 <_free_r+0x2a4>
   14404:	00c7d693          	srli	a3,a5,0xc
   14408:	06f68593          	addi	a1,a3,111
   1440c:	06e68613          	addi	a2,a3,110
   14410:	00359593          	slli	a1,a1,0x3
   14414:	f11ff06f          	j	14324 <_free_r+0x160>
   14418:	00d787b3          	add	a5,a5,a3
   1441c:	eadff06f          	j	142c8 <_free_r+0x104>
   14420:	05c68593          	addi	a1,a3,92
   14424:	05b68613          	addi	a2,a3,91
   14428:	00359593          	slli	a1,a1,0x3
   1442c:	ef9ff06f          	j	14324 <_free_r+0x160>
   14430:	dae1a423          	sw	a4,-600(gp) # 26668 <__malloc_av_+0x14>
   14434:	dae1a223          	sw	a4,-604(gp) # 26664 <__malloc_av_+0x10>
   14438:	01172623          	sw	a7,12(a4)
   1443c:	01172423          	sw	a7,8(a4)
   14440:	01072223          	sw	a6,4(a4)
   14444:	00f5a023          	sw	a5,0(a1)
   14448:	e55ff06f          	j	1429c <_free_r+0xd8>
   1444c:	00452503          	lw	a0,4(a0)
   14450:	00100793          	li	a5,1
   14454:	40265613          	srai	a2,a2,0x2
   14458:	00c79633          	sll	a2,a5,a2
   1445c:	00a66633          	or	a2,a2,a0
   14460:	d8c1ac23          	sw	a2,-616(gp) # 26658 <__malloc_av_+0x4>
   14464:	ee9ff06f          	j	1434c <_free_r+0x188>
   14468:	15400613          	li	a2,340
   1446c:	00d66c63          	bltu	a2,a3,14484 <_free_r+0x2c0>
   14470:	00f7d693          	srli	a3,a5,0xf
   14474:	07868593          	addi	a1,a3,120
   14478:	07768613          	addi	a2,a3,119
   1447c:	00359593          	slli	a1,a1,0x3
   14480:	ea5ff06f          	j	14324 <_free_r+0x160>
   14484:	55400613          	li	a2,1364
   14488:	00d66c63          	bltu	a2,a3,144a0 <_free_r+0x2dc>
   1448c:	0127d693          	srli	a3,a5,0x12
   14490:	07d68593          	addi	a1,a3,125
   14494:	07c68613          	addi	a2,a3,124
   14498:	00359593          	slli	a1,a1,0x3
   1449c:	e89ff06f          	j	14324 <_free_r+0x160>
   144a0:	3f800593          	li	a1,1016
   144a4:	07e00613          	li	a2,126
   144a8:	e7dff06f          	j	14324 <_free_r+0x160>
   144ac:	0017e693          	ori	a3,a5,1
   144b0:	00d72223          	sw	a3,4(a4)
   144b4:	00f62023          	sw	a5,0(a2)
   144b8:	de5ff06f          	j	1429c <_free_r+0xd8>

000144bc <__sfvwrite_r>:
   144bc:	00862783          	lw	a5,8(a2)
   144c0:	34078263          	beqz	a5,14804 <__sfvwrite_r+0x348>
   144c4:	00c5d783          	lhu	a5,12(a1)
   144c8:	fd010113          	addi	sp,sp,-48
   144cc:	02812423          	sw	s0,40(sp)
   144d0:	01412c23          	sw	s4,24(sp)
   144d4:	01512a23          	sw	s5,20(sp)
   144d8:	02112623          	sw	ra,44(sp)
   144dc:	02912223          	sw	s1,36(sp)
   144e0:	03212023          	sw	s2,32(sp)
   144e4:	01312e23          	sw	s3,28(sp)
   144e8:	01612823          	sw	s6,16(sp)
   144ec:	01712623          	sw	s7,12(sp)
   144f0:	01812423          	sw	s8,8(sp)
   144f4:	01912223          	sw	s9,4(sp)
   144f8:	01a12023          	sw	s10,0(sp)
   144fc:	0087f713          	andi	a4,a5,8
   14500:	00058413          	mv	s0,a1
   14504:	00050a93          	mv	s5,a0
   14508:	00060a13          	mv	s4,a2
   1450c:	08070a63          	beqz	a4,145a0 <__sfvwrite_r+0xe4>
   14510:	0105a703          	lw	a4,16(a1)
   14514:	08070663          	beqz	a4,145a0 <__sfvwrite_r+0xe4>
   14518:	0027f713          	andi	a4,a5,2
   1451c:	000a2483          	lw	s1,0(s4)
   14520:	0a070063          	beqz	a4,145c0 <__sfvwrite_r+0x104>
   14524:	02442703          	lw	a4,36(s0)
   14528:	01c42783          	lw	a5,28(s0)
   1452c:	80000b37          	lui	s6,0x80000
   14530:	00000993          	li	s3,0
   14534:	00000913          	li	s2,0
   14538:	c00b4b13          	xori	s6,s6,-1024
   1453c:	00098613          	mv	a2,s3
   14540:	00078593          	mv	a1,a5
   14544:	000a8513          	mv	a0,s5
   14548:	04090463          	beqz	s2,14590 <__sfvwrite_r+0xd4>
   1454c:	00090693          	mv	a3,s2
   14550:	012b7463          	bgeu	s6,s2,14558 <__sfvwrite_r+0x9c>
   14554:	000b0693          	mv	a3,s6
   14558:	000700e7          	jalr	a4
   1455c:	28a05a63          	blez	a0,147f0 <__sfvwrite_r+0x334>
   14560:	008a2783          	lw	a5,8(s4)
   14564:	00a989b3          	add	s3,s3,a0
   14568:	40a90933          	sub	s2,s2,a0
   1456c:	40a78533          	sub	a0,a5,a0
   14570:	00aa2423          	sw	a0,8(s4)
   14574:	20050c63          	beqz	a0,1478c <__sfvwrite_r+0x2d0>
   14578:	01c42783          	lw	a5,28(s0)
   1457c:	02442703          	lw	a4,36(s0)
   14580:	00098613          	mv	a2,s3
   14584:	00078593          	mv	a1,a5
   14588:	000a8513          	mv	a0,s5
   1458c:	fc0910e3          	bnez	s2,1454c <__sfvwrite_r+0x90>
   14590:	0004a983          	lw	s3,0(s1)
   14594:	0044a903          	lw	s2,4(s1)
   14598:	00848493          	addi	s1,s1,8
   1459c:	fa1ff06f          	j	1453c <__sfvwrite_r+0x80>
   145a0:	00040593          	mv	a1,s0
   145a4:	000a8513          	mv	a0,s5
   145a8:	978ff0ef          	jal	ra,13720 <__swsetup_r>
   145ac:	3c051263          	bnez	a0,14970 <__sfvwrite_r+0x4b4>
   145b0:	00c45783          	lhu	a5,12(s0)
   145b4:	000a2483          	lw	s1,0(s4)
   145b8:	0027f713          	andi	a4,a5,2
   145bc:	f60714e3          	bnez	a4,14524 <__sfvwrite_r+0x68>
   145c0:	0017f713          	andi	a4,a5,1
   145c4:	24071463          	bnez	a4,1480c <__sfvwrite_r+0x350>
   145c8:	00842c83          	lw	s9,8(s0)
   145cc:	00042503          	lw	a0,0(s0)
   145d0:	80000bb7          	lui	s7,0x80000
   145d4:	ffebcc13          	xori	s8,s7,-2
   145d8:	00000b13          	li	s6,0
   145dc:	00000913          	li	s2,0
   145e0:	fffbcb93          	not	s7,s7
   145e4:	0e090e63          	beqz	s2,146e0 <__sfvwrite_r+0x224>
   145e8:	2007f713          	andi	a4,a5,512
   145ec:	24070c63          	beqz	a4,14844 <__sfvwrite_r+0x388>
   145f0:	000c8d13          	mv	s10,s9
   145f4:	2f996863          	bltu	s2,s9,148e4 <__sfvwrite_r+0x428>
   145f8:	4807f713          	andi	a4,a5,1152
   145fc:	08070a63          	beqz	a4,14690 <__sfvwrite_r+0x1d4>
   14600:	01442683          	lw	a3,20(s0)
   14604:	01042583          	lw	a1,16(s0)
   14608:	00190713          	addi	a4,s2,1
   1460c:	00169993          	slli	s3,a3,0x1
   14610:	00d986b3          	add	a3,s3,a3
   14614:	01f6d993          	srli	s3,a3,0x1f
   14618:	40b50cb3          	sub	s9,a0,a1
   1461c:	00d989b3          	add	s3,s3,a3
   14620:	4019d993          	srai	s3,s3,0x1
   14624:	01970733          	add	a4,a4,s9
   14628:	00098613          	mv	a2,s3
   1462c:	00e9f663          	bgeu	s3,a4,14638 <__sfvwrite_r+0x17c>
   14630:	00070993          	mv	s3,a4
   14634:	00070613          	mv	a2,a4
   14638:	4007f793          	andi	a5,a5,1024
   1463c:	2e078a63          	beqz	a5,14930 <__sfvwrite_r+0x474>
   14640:	00060593          	mv	a1,a2
   14644:	000a8513          	mv	a0,s5
   14648:	2b4030ef          	jal	ra,178fc <_malloc_r>
   1464c:	00050d13          	mv	s10,a0
   14650:	30050863          	beqz	a0,14960 <__sfvwrite_r+0x4a4>
   14654:	01042583          	lw	a1,16(s0)
   14658:	000c8613          	mv	a2,s9
   1465c:	3bd030ef          	jal	ra,18218 <memcpy>
   14660:	00c45783          	lhu	a5,12(s0)
   14664:	b7f7f793          	andi	a5,a5,-1153
   14668:	0807e793          	ori	a5,a5,128
   1466c:	00f41623          	sh	a5,12(s0)
   14670:	019d0533          	add	a0,s10,s9
   14674:	419987b3          	sub	a5,s3,s9
   14678:	01a42823          	sw	s10,16(s0)
   1467c:	00a42023          	sw	a0,0(s0)
   14680:	01342a23          	sw	s3,20(s0)
   14684:	00090c93          	mv	s9,s2
   14688:	00f42423          	sw	a5,8(s0)
   1468c:	00090d13          	mv	s10,s2
   14690:	000d0613          	mv	a2,s10
   14694:	000b0593          	mv	a1,s6
   14698:	49d030ef          	jal	ra,18334 <memmove>
   1469c:	00842783          	lw	a5,8(s0)
   146a0:	00042603          	lw	a2,0(s0)
   146a4:	00090993          	mv	s3,s2
   146a8:	41978cb3          	sub	s9,a5,s9
   146ac:	01a60633          	add	a2,a2,s10
   146b0:	01942423          	sw	s9,8(s0)
   146b4:	00c42023          	sw	a2,0(s0)
   146b8:	00000913          	li	s2,0
   146bc:	008a2783          	lw	a5,8(s4)
   146c0:	013b0b33          	add	s6,s6,s3
   146c4:	413789b3          	sub	s3,a5,s3
   146c8:	013a2423          	sw	s3,8(s4)
   146cc:	0c098063          	beqz	s3,1478c <__sfvwrite_r+0x2d0>
   146d0:	00842c83          	lw	s9,8(s0)
   146d4:	00042503          	lw	a0,0(s0)
   146d8:	00c45783          	lhu	a5,12(s0)
   146dc:	f00916e3          	bnez	s2,145e8 <__sfvwrite_r+0x12c>
   146e0:	0004ab03          	lw	s6,0(s1)
   146e4:	0044a903          	lw	s2,4(s1)
   146e8:	00848493          	addi	s1,s1,8
   146ec:	ef9ff06f          	j	145e4 <__sfvwrite_r+0x128>
   146f0:	0044a983          	lw	s3,4(s1)
   146f4:	0004ab83          	lw	s7,0(s1)
   146f8:	00848493          	addi	s1,s1,8
   146fc:	fe098ae3          	beqz	s3,146f0 <__sfvwrite_r+0x234>
   14700:	00098613          	mv	a2,s3
   14704:	00a00593          	li	a1,10
   14708:	000b8513          	mv	a0,s7
   1470c:	231030ef          	jal	ra,1813c <memchr>
   14710:	12050463          	beqz	a0,14838 <__sfvwrite_r+0x37c>
   14714:	00150513          	addi	a0,a0,1
   14718:	41750b33          	sub	s6,a0,s7
   1471c:	000b0793          	mv	a5,s6
   14720:	00098c13          	mv	s8,s3
   14724:	0137f463          	bgeu	a5,s3,1472c <__sfvwrite_r+0x270>
   14728:	00078c13          	mv	s8,a5
   1472c:	00042503          	lw	a0,0(s0)
   14730:	01042783          	lw	a5,16(s0)
   14734:	01442683          	lw	a3,20(s0)
   14738:	00a7f863          	bgeu	a5,a0,14748 <__sfvwrite_r+0x28c>
   1473c:	00842903          	lw	s2,8(s0)
   14740:	01268933          	add	s2,a3,s2
   14744:	09894263          	blt	s2,s8,147c8 <__sfvwrite_r+0x30c>
   14748:	1adc4e63          	blt	s8,a3,14904 <__sfvwrite_r+0x448>
   1474c:	02442783          	lw	a5,36(s0)
   14750:	01c42583          	lw	a1,28(s0)
   14754:	000b8613          	mv	a2,s7
   14758:	000a8513          	mv	a0,s5
   1475c:	000780e7          	jalr	a5
   14760:	00050913          	mv	s2,a0
   14764:	08a05663          	blez	a0,147f0 <__sfvwrite_r+0x334>
   14768:	412b0b33          	sub	s6,s6,s2
   1476c:	00100513          	li	a0,1
   14770:	180b0063          	beqz	s6,148f0 <__sfvwrite_r+0x434>
   14774:	008a2783          	lw	a5,8(s4)
   14778:	012b8bb3          	add	s7,s7,s2
   1477c:	412989b3          	sub	s3,s3,s2
   14780:	41278933          	sub	s2,a5,s2
   14784:	012a2423          	sw	s2,8(s4)
   14788:	08091a63          	bnez	s2,1481c <__sfvwrite_r+0x360>
   1478c:	00000513          	li	a0,0
   14790:	02c12083          	lw	ra,44(sp)
   14794:	02812403          	lw	s0,40(sp)
   14798:	02412483          	lw	s1,36(sp)
   1479c:	02012903          	lw	s2,32(sp)
   147a0:	01c12983          	lw	s3,28(sp)
   147a4:	01812a03          	lw	s4,24(sp)
   147a8:	01412a83          	lw	s5,20(sp)
   147ac:	01012b03          	lw	s6,16(sp)
   147b0:	00c12b83          	lw	s7,12(sp)
   147b4:	00812c03          	lw	s8,8(sp)
   147b8:	00412c83          	lw	s9,4(sp)
   147bc:	00012d03          	lw	s10,0(sp)
   147c0:	03010113          	addi	sp,sp,48
   147c4:	00008067          	ret
   147c8:	000b8593          	mv	a1,s7
   147cc:	00090613          	mv	a2,s2
   147d0:	365030ef          	jal	ra,18334 <memmove>
   147d4:	00042783          	lw	a5,0(s0)
   147d8:	00040593          	mv	a1,s0
   147dc:	000a8513          	mv	a0,s5
   147e0:	012787b3          	add	a5,a5,s2
   147e4:	00f42023          	sw	a5,0(s0)
   147e8:	cb4ff0ef          	jal	ra,13c9c <_fflush_r>
   147ec:	f6050ee3          	beqz	a0,14768 <__sfvwrite_r+0x2ac>
   147f0:	00c41783          	lh	a5,12(s0)
   147f4:	0407e793          	ori	a5,a5,64
   147f8:	00f41623          	sh	a5,12(s0)
   147fc:	fff00513          	li	a0,-1
   14800:	f91ff06f          	j	14790 <__sfvwrite_r+0x2d4>
   14804:	00000513          	li	a0,0
   14808:	00008067          	ret
   1480c:	00000b13          	li	s6,0
   14810:	00000513          	li	a0,0
   14814:	00000b93          	li	s7,0
   14818:	00000993          	li	s3,0
   1481c:	ec098ae3          	beqz	s3,146f0 <__sfvwrite_r+0x234>
   14820:	ee051ee3          	bnez	a0,1471c <__sfvwrite_r+0x260>
   14824:	00098613          	mv	a2,s3
   14828:	00a00593          	li	a1,10
   1482c:	000b8513          	mv	a0,s7
   14830:	10d030ef          	jal	ra,1813c <memchr>
   14834:	ee0510e3          	bnez	a0,14714 <__sfvwrite_r+0x258>
   14838:	00198793          	addi	a5,s3,1
   1483c:	00078b13          	mv	s6,a5
   14840:	ee1ff06f          	j	14720 <__sfvwrite_r+0x264>
   14844:	01042783          	lw	a5,16(s0)
   14848:	04a7e863          	bltu	a5,a0,14898 <__sfvwrite_r+0x3dc>
   1484c:	01442983          	lw	s3,20(s0)
   14850:	05396463          	bltu	s2,s3,14898 <__sfvwrite_r+0x3dc>
   14854:	00090513          	mv	a0,s2
   14858:	012c7463          	bgeu	s8,s2,14860 <__sfvwrite_r+0x3a4>
   1485c:	000b8513          	mv	a0,s7
   14860:	00098593          	mv	a1,s3
   14864:	e29fb0ef          	jal	ra,1068c <__divsi3>
   14868:	00098593          	mv	a1,s3
   1486c:	5ac100ef          	jal	ra,24e18 <__mulsi3>
   14870:	01c42583          	lw	a1,28(s0)
   14874:	02442783          	lw	a5,36(s0)
   14878:	00050693          	mv	a3,a0
   1487c:	000b0613          	mv	a2,s6
   14880:	000a8513          	mv	a0,s5
   14884:	000780e7          	jalr	a5
   14888:	f6a054e3          	blez	a0,147f0 <__sfvwrite_r+0x334>
   1488c:	00050993          	mv	s3,a0
   14890:	41390933          	sub	s2,s2,s3
   14894:	e29ff06f          	j	146bc <__sfvwrite_r+0x200>
   14898:	000c8993          	mv	s3,s9
   1489c:	01997463          	bgeu	s2,s9,148a4 <__sfvwrite_r+0x3e8>
   148a0:	00090993          	mv	s3,s2
   148a4:	00098613          	mv	a2,s3
   148a8:	000b0593          	mv	a1,s6
   148ac:	289030ef          	jal	ra,18334 <memmove>
   148b0:	00842783          	lw	a5,8(s0)
   148b4:	00042703          	lw	a4,0(s0)
   148b8:	413787b3          	sub	a5,a5,s3
   148bc:	01370733          	add	a4,a4,s3
   148c0:	00f42423          	sw	a5,8(s0)
   148c4:	00e42023          	sw	a4,0(s0)
   148c8:	fc0794e3          	bnez	a5,14890 <__sfvwrite_r+0x3d4>
   148cc:	00040593          	mv	a1,s0
   148d0:	000a8513          	mv	a0,s5
   148d4:	bc8ff0ef          	jal	ra,13c9c <_fflush_r>
   148d8:	f0051ce3          	bnez	a0,147f0 <__sfvwrite_r+0x334>
   148dc:	41390933          	sub	s2,s2,s3
   148e0:	dddff06f          	j	146bc <__sfvwrite_r+0x200>
   148e4:	00090c93          	mv	s9,s2
   148e8:	00090d13          	mv	s10,s2
   148ec:	da5ff06f          	j	14690 <__sfvwrite_r+0x1d4>
   148f0:	00040593          	mv	a1,s0
   148f4:	000a8513          	mv	a0,s5
   148f8:	ba4ff0ef          	jal	ra,13c9c <_fflush_r>
   148fc:	e6050ce3          	beqz	a0,14774 <__sfvwrite_r+0x2b8>
   14900:	ef1ff06f          	j	147f0 <__sfvwrite_r+0x334>
   14904:	000c0613          	mv	a2,s8
   14908:	000b8593          	mv	a1,s7
   1490c:	229030ef          	jal	ra,18334 <memmove>
   14910:	00842703          	lw	a4,8(s0)
   14914:	00042783          	lw	a5,0(s0)
   14918:	000c0913          	mv	s2,s8
   1491c:	41870733          	sub	a4,a4,s8
   14920:	01878c33          	add	s8,a5,s8
   14924:	00e42423          	sw	a4,8(s0)
   14928:	01842023          	sw	s8,0(s0)
   1492c:	e3dff06f          	j	14768 <__sfvwrite_r+0x2ac>
   14930:	000a8513          	mv	a0,s5
   14934:	3d9040ef          	jal	ra,1950c <_realloc_r>
   14938:	00050d13          	mv	s10,a0
   1493c:	d2051ae3          	bnez	a0,14670 <__sfvwrite_r+0x1b4>
   14940:	01042583          	lw	a1,16(s0)
   14944:	000a8513          	mv	a0,s5
   14948:	87dff0ef          	jal	ra,141c4 <_free_r>
   1494c:	00c41783          	lh	a5,12(s0)
   14950:	00c00713          	li	a4,12
   14954:	00eaa023          	sw	a4,0(s5)
   14958:	f7f7f793          	andi	a5,a5,-129
   1495c:	e99ff06f          	j	147f4 <__sfvwrite_r+0x338>
   14960:	00c00793          	li	a5,12
   14964:	00faa023          	sw	a5,0(s5)
   14968:	00c41783          	lh	a5,12(s0)
   1496c:	e89ff06f          	j	147f4 <__sfvwrite_r+0x338>
   14970:	fff00513          	li	a0,-1
   14974:	e1dff06f          	j	14790 <__sfvwrite_r+0x2d4>

00014978 <_fwalk>:
   14978:	fe010113          	addi	sp,sp,-32
   1497c:	01512223          	sw	s5,4(sp)
   14980:	00112e23          	sw	ra,28(sp)
   14984:	00812c23          	sw	s0,24(sp)
   14988:	00912a23          	sw	s1,20(sp)
   1498c:	01212823          	sw	s2,16(sp)
   14990:	01312623          	sw	s3,12(sp)
   14994:	01412423          	sw	s4,8(sp)
   14998:	01612023          	sw	s6,0(sp)
   1499c:	2e050a93          	addi	s5,a0,736
   149a0:	080a8063          	beqz	s5,14a20 <_fwalk+0xa8>
   149a4:	00058b13          	mv	s6,a1
   149a8:	00000a13          	li	s4,0
   149ac:	00100993          	li	s3,1
   149b0:	fff00913          	li	s2,-1
   149b4:	004aa483          	lw	s1,4(s5)
   149b8:	008aa403          	lw	s0,8(s5)
   149bc:	fff48493          	addi	s1,s1,-1
   149c0:	0204c663          	bltz	s1,149ec <_fwalk+0x74>
   149c4:	00c45783          	lhu	a5,12(s0)
   149c8:	fff48493          	addi	s1,s1,-1
   149cc:	00f9fc63          	bgeu	s3,a5,149e4 <_fwalk+0x6c>
   149d0:	00e41783          	lh	a5,14(s0)
   149d4:	00040513          	mv	a0,s0
   149d8:	01278663          	beq	a5,s2,149e4 <_fwalk+0x6c>
   149dc:	000b00e7          	jalr	s6 # 80000000 <__BSS_END__+0x7ffd9518>
   149e0:	00aa6a33          	or	s4,s4,a0
   149e4:	06840413          	addi	s0,s0,104
   149e8:	fd249ee3          	bne	s1,s2,149c4 <_fwalk+0x4c>
   149ec:	000aaa83          	lw	s5,0(s5)
   149f0:	fc0a92e3          	bnez	s5,149b4 <_fwalk+0x3c>
   149f4:	01c12083          	lw	ra,28(sp)
   149f8:	01812403          	lw	s0,24(sp)
   149fc:	000a0513          	mv	a0,s4
   14a00:	01412483          	lw	s1,20(sp)
   14a04:	01012903          	lw	s2,16(sp)
   14a08:	00c12983          	lw	s3,12(sp)
   14a0c:	00812a03          	lw	s4,8(sp)
   14a10:	00412a83          	lw	s5,4(sp)
   14a14:	00012b03          	lw	s6,0(sp)
   14a18:	02010113          	addi	sp,sp,32
   14a1c:	00008067          	ret
   14a20:	00000a13          	li	s4,0
   14a24:	fd1ff06f          	j	149f4 <_fwalk+0x7c>

00014a28 <_fwalk_reent>:
   14a28:	fd010113          	addi	sp,sp,-48
   14a2c:	01512a23          	sw	s5,20(sp)
   14a30:	02112623          	sw	ra,44(sp)
   14a34:	02812423          	sw	s0,40(sp)
   14a38:	02912223          	sw	s1,36(sp)
   14a3c:	03212023          	sw	s2,32(sp)
   14a40:	01312e23          	sw	s3,28(sp)
   14a44:	01412c23          	sw	s4,24(sp)
   14a48:	01612823          	sw	s6,16(sp)
   14a4c:	01712623          	sw	s7,12(sp)
   14a50:	2e050a93          	addi	s5,a0,736
   14a54:	080a8663          	beqz	s5,14ae0 <_fwalk_reent+0xb8>
   14a58:	00058b93          	mv	s7,a1
   14a5c:	00050b13          	mv	s6,a0
   14a60:	00000a13          	li	s4,0
   14a64:	00100993          	li	s3,1
   14a68:	fff00913          	li	s2,-1
   14a6c:	004aa483          	lw	s1,4(s5)
   14a70:	008aa403          	lw	s0,8(s5)
   14a74:	fff48493          	addi	s1,s1,-1
   14a78:	0204c863          	bltz	s1,14aa8 <_fwalk_reent+0x80>
   14a7c:	00c45783          	lhu	a5,12(s0)
   14a80:	fff48493          	addi	s1,s1,-1
   14a84:	00f9fe63          	bgeu	s3,a5,14aa0 <_fwalk_reent+0x78>
   14a88:	00e41783          	lh	a5,14(s0)
   14a8c:	00040593          	mv	a1,s0
   14a90:	000b0513          	mv	a0,s6
   14a94:	01278663          	beq	a5,s2,14aa0 <_fwalk_reent+0x78>
   14a98:	000b80e7          	jalr	s7 # 80000000 <__BSS_END__+0x7ffd9518>
   14a9c:	00aa6a33          	or	s4,s4,a0
   14aa0:	06840413          	addi	s0,s0,104
   14aa4:	fd249ce3          	bne	s1,s2,14a7c <_fwalk_reent+0x54>
   14aa8:	000aaa83          	lw	s5,0(s5)
   14aac:	fc0a90e3          	bnez	s5,14a6c <_fwalk_reent+0x44>
   14ab0:	02c12083          	lw	ra,44(sp)
   14ab4:	02812403          	lw	s0,40(sp)
   14ab8:	000a0513          	mv	a0,s4
   14abc:	02412483          	lw	s1,36(sp)
   14ac0:	02012903          	lw	s2,32(sp)
   14ac4:	01c12983          	lw	s3,28(sp)
   14ac8:	01812a03          	lw	s4,24(sp)
   14acc:	01412a83          	lw	s5,20(sp)
   14ad0:	01012b03          	lw	s6,16(sp)
   14ad4:	00c12b83          	lw	s7,12(sp)
   14ad8:	03010113          	addi	sp,sp,48
   14adc:	00008067          	ret
   14ae0:	00000a13          	li	s4,0
   14ae4:	fcdff06f          	j	14ab0 <_fwalk_reent+0x88>

00014ae8 <eshdn1>:
   14ae8:	00450693          	addi	a3,a0,4
   14aec:	00000793          	li	a5,0
   14af0:	01a50513          	addi	a0,a0,26
   14af4:	ffff8837          	lui	a6,0xffff8
   14af8:	01c0006f          	j	14b14 <eshdn1+0x2c>
   14afc:	00179793          	slli	a5,a5,0x1
   14b00:	00e69023          	sh	a4,0(a3)
   14b04:	01079793          	slli	a5,a5,0x10
   14b08:	00268693          	addi	a3,a3,2
   14b0c:	0107d793          	srli	a5,a5,0x10
   14b10:	02d50e63          	beq	a0,a3,14b4c <eshdn1+0x64>
   14b14:	0006d703          	lhu	a4,0(a3)
   14b18:	00177613          	andi	a2,a4,1
   14b1c:	00060463          	beqz	a2,14b24 <eshdn1+0x3c>
   14b20:	0017e793          	ori	a5,a5,1
   14b24:	00175713          	srli	a4,a4,0x1
   14b28:	0027f613          	andi	a2,a5,2
   14b2c:	010765b3          	or	a1,a4,a6
   14b30:	fc0606e3          	beqz	a2,14afc <eshdn1+0x14>
   14b34:	00179793          	slli	a5,a5,0x1
   14b38:	00b69023          	sh	a1,0(a3)
   14b3c:	01079793          	slli	a5,a5,0x10
   14b40:	00268693          	addi	a3,a3,2
   14b44:	0107d793          	srli	a5,a5,0x10
   14b48:	fcd516e3          	bne	a0,a3,14b14 <eshdn1+0x2c>
   14b4c:	00008067          	ret

00014b50 <eshup1>:
   14b50:	01850693          	addi	a3,a0,24
   14b54:	00000713          	li	a4,0
   14b58:	00250513          	addi	a0,a0,2
   14b5c:	01c0006f          	j	14b78 <eshup1+0x28>
   14b60:	00171713          	slli	a4,a4,0x1
   14b64:	00f69023          	sh	a5,0(a3)
   14b68:	01071713          	slli	a4,a4,0x10
   14b6c:	ffe68693          	addi	a3,a3,-2
   14b70:	01075713          	srli	a4,a4,0x10
   14b74:	04d50463          	beq	a0,a3,14bbc <eshup1+0x6c>
   14b78:	0006d783          	lhu	a5,0(a3)
   14b7c:	01079613          	slli	a2,a5,0x10
   14b80:	41065613          	srai	a2,a2,0x10
   14b84:	00179793          	slli	a5,a5,0x1
   14b88:	00065463          	bgez	a2,14b90 <eshup1+0x40>
   14b8c:	00176713          	ori	a4,a4,1
   14b90:	01079793          	slli	a5,a5,0x10
   14b94:	0107d793          	srli	a5,a5,0x10
   14b98:	00277613          	andi	a2,a4,2
   14b9c:	0017e593          	ori	a1,a5,1
   14ba0:	fc0600e3          	beqz	a2,14b60 <eshup1+0x10>
   14ba4:	00171713          	slli	a4,a4,0x1
   14ba8:	00b69023          	sh	a1,0(a3)
   14bac:	01071713          	slli	a4,a4,0x10
   14bb0:	ffe68693          	addi	a3,a3,-2
   14bb4:	01075713          	srli	a4,a4,0x10
   14bb8:	fcd510e3          	bne	a0,a3,14b78 <eshup1+0x28>
   14bbc:	00008067          	ret

00014bc0 <m16m>:
   14bc0:	fc010113          	addi	sp,sp,-64
   14bc4:	03412423          	sw	s4,40(sp)
   14bc8:	00010a37          	lui	s4,0x10
   14bcc:	02812c23          	sw	s0,56(sp)
   14bd0:	02912a23          	sw	s1,52(sp)
   14bd4:	03212823          	sw	s2,48(sp)
   14bd8:	03312623          	sw	s3,44(sp)
   14bdc:	03512223          	sw	s5,36(sp)
   14be0:	02112e23          	sw	ra,60(sp)
   14be4:	00050a93          	mv	s5,a0
   14be8:	00060493          	mv	s1,a2
   14bec:	00011d23          	sh	zero,26(sp)
   14bf0:	00011e23          	sh	zero,28(sp)
   14bf4:	01858913          	addi	s2,a1,24
   14bf8:	01c10413          	addi	s0,sp,28
   14bfc:	00810993          	addi	s3,sp,8
   14c00:	fffa0a13          	addi	s4,s4,-1 # ffff <register_fini-0x75>
   14c04:	00095783          	lhu	a5,0(s2)
   14c08:	000a8593          	mv	a1,s5
   14c0c:	ffe40413          	addi	s0,s0,-2
   14c10:	ffe90913          	addi	s2,s2,-2
   14c14:	00078513          	mv	a0,a5
   14c18:	04079663          	bnez	a5,14c64 <m16m+0xa4>
   14c1c:	fe041f23          	sh	zero,-2(s0)
   14c20:	ff3412e3          	bne	s0,s3,14c04 <m16m+0x44>
   14c24:	00448613          	addi	a2,s1,4
   14c28:	01e10713          	addi	a4,sp,30
   14c2c:	00045783          	lhu	a5,0(s0)
   14c30:	00260613          	addi	a2,a2,2
   14c34:	00240413          	addi	s0,s0,2
   14c38:	fef61f23          	sh	a5,-2(a2)
   14c3c:	fee418e3          	bne	s0,a4,14c2c <m16m+0x6c>
   14c40:	03c12083          	lw	ra,60(sp)
   14c44:	03812403          	lw	s0,56(sp)
   14c48:	03412483          	lw	s1,52(sp)
   14c4c:	03012903          	lw	s2,48(sp)
   14c50:	02c12983          	lw	s3,44(sp)
   14c54:	02812a03          	lw	s4,40(sp)
   14c58:	02412a83          	lw	s5,36(sp)
   14c5c:	04010113          	addi	sp,sp,64
   14c60:	00008067          	ret
   14c64:	1b4100ef          	jal	ra,24e18 <__mulsi3>
   14c68:	00245703          	lhu	a4,2(s0)
   14c6c:	00045683          	lhu	a3,0(s0)
   14c70:	014577b3          	and	a5,a0,s4
   14c74:	00e787b3          	add	a5,a5,a4
   14c78:	01055513          	srli	a0,a0,0x10
   14c7c:	0107d713          	srli	a4,a5,0x10
   14c80:	00d50533          	add	a0,a0,a3
   14c84:	00e50533          	add	a0,a0,a4
   14c88:	01055713          	srli	a4,a0,0x10
   14c8c:	00f41123          	sh	a5,2(s0)
   14c90:	00a41023          	sh	a0,0(s0)
   14c94:	fee41f23          	sh	a4,-2(s0)
   14c98:	f73416e3          	bne	s0,s3,14c04 <m16m+0x44>
   14c9c:	f89ff06f          	j	14c24 <m16m+0x64>

00014ca0 <eisnan.part.0>:
   14ca0:	01250713          	addi	a4,a0,18
   14ca4:	00250513          	addi	a0,a0,2
   14ca8:	ffe55783          	lhu	a5,-2(a0)
   14cac:	00079863          	bnez	a5,14cbc <eisnan.part.0+0x1c>
   14cb0:	fea71ae3          	bne	a4,a0,14ca4 <eisnan.part.0+0x4>
   14cb4:	00000513          	li	a0,0
   14cb8:	00008067          	ret
   14cbc:	00100513          	li	a0,1
   14cc0:	00008067          	ret

00014cc4 <eneg>:
   14cc4:	ff010113          	addi	sp,sp,-16
   14cc8:	00812423          	sw	s0,8(sp)
   14ccc:	01255403          	lhu	s0,18(a0)
   14cd0:	00912223          	sw	s1,4(sp)
   14cd4:	00112623          	sw	ra,12(sp)
   14cd8:	fff44793          	not	a5,s0
   14cdc:	01179713          	slli	a4,a5,0x11
   14ce0:	00050493          	mv	s1,a0
   14ce4:	00071663          	bnez	a4,14cf0 <eneg+0x2c>
   14ce8:	fb9ff0ef          	jal	ra,14ca0 <eisnan.part.0>
   14cec:	00051863          	bnez	a0,14cfc <eneg+0x38>
   14cf0:	ffff87b7          	lui	a5,0xffff8
   14cf4:	00f44433          	xor	s0,s0,a5
   14cf8:	00849923          	sh	s0,18(s1)
   14cfc:	00c12083          	lw	ra,12(sp)
   14d00:	00812403          	lw	s0,8(sp)
   14d04:	00412483          	lw	s1,4(sp)
   14d08:	01010113          	addi	sp,sp,16
   14d0c:	00008067          	ret

00014d10 <eisneg>:
   14d10:	ff010113          	addi	sp,sp,-16
   14d14:	00812423          	sw	s0,8(sp)
   14d18:	01255403          	lhu	s0,18(a0)
   14d1c:	00112623          	sw	ra,12(sp)
   14d20:	fff44793          	not	a5,s0
   14d24:	01179713          	slli	a4,a5,0x11
   14d28:	00071863          	bnez	a4,14d38 <eisneg+0x28>
   14d2c:	f75ff0ef          	jal	ra,14ca0 <eisnan.part.0>
   14d30:	00000793          	li	a5,0
   14d34:	00051463          	bnez	a0,14d3c <eisneg+0x2c>
   14d38:	00f45793          	srli	a5,s0,0xf
   14d3c:	00c12083          	lw	ra,12(sp)
   14d40:	00812403          	lw	s0,8(sp)
   14d44:	00078513          	mv	a0,a5
   14d48:	01010113          	addi	sp,sp,16
   14d4c:	00008067          	ret

00014d50 <emovi>:
   14d50:	01255783          	lhu	a5,18(a0)
   14d54:	ff010113          	addi	sp,sp,-16
   14d58:	00812423          	sw	s0,8(sp)
   14d5c:	00f7d793          	srli	a5,a5,0xf
   14d60:	00912223          	sw	s1,4(sp)
   14d64:	00112623          	sw	ra,12(sp)
   14d68:	01212023          	sw	s2,0(sp)
   14d6c:	40f007b3          	neg	a5,a5
   14d70:	00f59023          	sh	a5,0(a1)
   14d74:	01255783          	lhu	a5,18(a0)
   14d78:	000086b7          	lui	a3,0x8
   14d7c:	fff68693          	addi	a3,a3,-1 # 7fff <register_fini-0x8075>
   14d80:	00f6f7b3          	and	a5,a3,a5
   14d84:	00f59123          	sh	a5,2(a1)
   14d88:	00050493          	mv	s1,a0
   14d8c:	01050413          	addi	s0,a0,16
   14d90:	04d78063          	beq	a5,a3,14dd0 <emovi+0x80>
   14d94:	00658793          	addi	a5,a1,6
   14d98:	00059223          	sh	zero,4(a1)
   14d9c:	ffe50513          	addi	a0,a0,-2
   14da0:	ffe40413          	addi	s0,s0,-2
   14da4:	00245703          	lhu	a4,2(s0)
   14da8:	00278793          	addi	a5,a5,2 # ffff8002 <__BSS_END__+0xfffd151a>
   14dac:	fee79f23          	sh	a4,-2(a5)
   14db0:	fea418e3          	bne	s0,a0,14da0 <emovi+0x50>
   14db4:	00059c23          	sh	zero,24(a1)
   14db8:	00c12083          	lw	ra,12(sp)
   14dbc:	00812403          	lw	s0,8(sp)
   14dc0:	00412483          	lw	s1,4(sp)
   14dc4:	00012903          	lw	s2,0(sp)
   14dc8:	01010113          	addi	sp,sp,16
   14dcc:	00008067          	ret
   14dd0:	01255703          	lhu	a4,18(a0)
   14dd4:	00058913          	mv	s2,a1
   14dd8:	00e7f733          	and	a4,a5,a4
   14ddc:	02f71863          	bne	a4,a5,14e0c <emovi+0xbc>
   14de0:	ec1ff0ef          	jal	ra,14ca0 <eisnan.part.0>
   14de4:	02050463          	beqz	a0,14e0c <emovi+0xbc>
   14de8:	00690713          	addi	a4,s2,6
   14dec:	00091223          	sh	zero,4(s2)
   14df0:	ffc48793          	addi	a5,s1,-4
   14df4:	ffe40413          	addi	s0,s0,-2
   14df8:	00245683          	lhu	a3,2(s0)
   14dfc:	00270713          	addi	a4,a4,2
   14e00:	fed71f23          	sh	a3,-2(a4)
   14e04:	fe8798e3          	bne	a5,s0,14df4 <emovi+0xa4>
   14e08:	fb1ff06f          	j	14db8 <emovi+0x68>
   14e0c:	00490793          	addi	a5,s2,4
   14e10:	01a90593          	addi	a1,s2,26
   14e14:	00278793          	addi	a5,a5,2
   14e18:	fe079f23          	sh	zero,-2(a5)
   14e1c:	fef59ce3          	bne	a1,a5,14e14 <emovi+0xc4>
   14e20:	00c12083          	lw	ra,12(sp)
   14e24:	00812403          	lw	s0,8(sp)
   14e28:	00412483          	lw	s1,4(sp)
   14e2c:	00012903          	lw	s2,0(sp)
   14e30:	01010113          	addi	sp,sp,16
   14e34:	00008067          	ret

00014e38 <ecmp>:
   14e38:	01255783          	lhu	a5,18(a0)
   14e3c:	fb010113          	addi	sp,sp,-80
   14e40:	04812423          	sw	s0,72(sp)
   14e44:	fff7c793          	not	a5,a5
   14e48:	04912223          	sw	s1,68(sp)
   14e4c:	04112623          	sw	ra,76(sp)
   14e50:	01179713          	slli	a4,a5,0x11
   14e54:	00050493          	mv	s1,a0
   14e58:	00058413          	mv	s0,a1
   14e5c:	00071663          	bnez	a4,14e68 <ecmp+0x30>
   14e60:	e41ff0ef          	jal	ra,14ca0 <eisnan.part.0>
   14e64:	08051263          	bnez	a0,14ee8 <ecmp+0xb0>
   14e68:	01245783          	lhu	a5,18(s0)
   14e6c:	fff7c793          	not	a5,a5
   14e70:	01179713          	slli	a4,a5,0x11
   14e74:	06070463          	beqz	a4,14edc <ecmp+0xa4>
   14e78:	00810593          	addi	a1,sp,8
   14e7c:	00048513          	mv	a0,s1
   14e80:	ed1ff0ef          	jal	ra,14d50 <emovi>
   14e84:	02410593          	addi	a1,sp,36
   14e88:	00040513          	mv	a0,s0
   14e8c:	ec5ff0ef          	jal	ra,14d50 <emovi>
   14e90:	00815583          	lhu	a1,8(sp)
   14e94:	02415503          	lhu	a0,36(sp)
   14e98:	04b50c63          	beq	a0,a1,14ef0 <ecmp+0xb8>
   14e9c:	00a10793          	addi	a5,sp,10
   14ea0:	02610713          	addi	a4,sp,38
   14ea4:	02010613          	addi	a2,sp,32
   14ea8:	0007d683          	lhu	a3,0(a5)
   14eac:	00278793          	addi	a5,a5,2
   14eb0:	08069a63          	bnez	a3,14f44 <ecmp+0x10c>
   14eb4:	00075683          	lhu	a3,0(a4)
   14eb8:	00270713          	addi	a4,a4,2
   14ebc:	08069463          	bnez	a3,14f44 <ecmp+0x10c>
   14ec0:	fec794e3          	bne	a5,a2,14ea8 <ecmp+0x70>
   14ec4:	00000513          	li	a0,0
   14ec8:	04c12083          	lw	ra,76(sp)
   14ecc:	04812403          	lw	s0,72(sp)
   14ed0:	04412483          	lw	s1,68(sp)
   14ed4:	05010113          	addi	sp,sp,80
   14ed8:	00008067          	ret
   14edc:	00040513          	mv	a0,s0
   14ee0:	dc1ff0ef          	jal	ra,14ca0 <eisnan.part.0>
   14ee4:	f8050ae3          	beqz	a0,14e78 <ecmp+0x40>
   14ee8:	ffe00513          	li	a0,-2
   14eec:	fddff06f          	j	14ec8 <ecmp+0x90>
   14ef0:	00a10713          	addi	a4,sp,10
   14ef4:	02610793          	addi	a5,sp,38
   14ef8:	00278793          	addi	a5,a5,2
   14efc:	00270713          	addi	a4,a4,2
   14f00:	00153513          	seqz	a0,a0
   14f04:	ffe75603          	lhu	a2,-2(a4)
   14f08:	ffe7d683          	lhu	a3,-2(a5)
   14f0c:	40a00533          	neg	a0,a0
   14f10:	00257513          	andi	a0,a0,2
   14f14:	fff50513          	addi	a0,a0,-1
   14f18:	03c10593          	addi	a1,sp,60
   14f1c:	00d61e63          	bne	a2,a3,14f38 <ecmp+0x100>
   14f20:	fab782e3          	beq	a5,a1,14ec4 <ecmp+0x8c>
   14f24:	00278793          	addi	a5,a5,2
   14f28:	00270713          	addi	a4,a4,2
   14f2c:	ffe75603          	lhu	a2,-2(a4)
   14f30:	ffe7d683          	lhu	a3,-2(a5)
   14f34:	fed606e3          	beq	a2,a3,14f20 <ecmp+0xe8>
   14f38:	f8c6e8e3          	bltu	a3,a2,14ec8 <ecmp+0x90>
   14f3c:	40a00533          	neg	a0,a0
   14f40:	f89ff06f          	j	14ec8 <ecmp+0x90>
   14f44:	00100513          	li	a0,1
   14f48:	f80580e3          	beqz	a1,14ec8 <ecmp+0x90>
   14f4c:	fff00513          	li	a0,-1
   14f50:	f79ff06f          	j	14ec8 <ecmp+0x90>

00014f54 <eisinf.part.1>:
   14f54:	ff010113          	addi	sp,sp,-16
   14f58:	00112623          	sw	ra,12(sp)
   14f5c:	d45ff0ef          	jal	ra,14ca0 <eisnan.part.0>
   14f60:	00c12083          	lw	ra,12(sp)
   14f64:	00153513          	seqz	a0,a0
   14f68:	01010113          	addi	sp,sp,16
   14f6c:	00008067          	ret

00014f70 <eshift.part.3>:
   14f70:	ff010113          	addi	sp,sp,-16
   14f74:	00812423          	sw	s0,8(sp)
   14f78:	01212023          	sw	s2,0(sp)
   14f7c:	00112623          	sw	ra,12(sp)
   14f80:	00912223          	sw	s1,4(sp)
   14f84:	00058913          	mv	s2,a1
   14f88:	00050413          	mv	s0,a0
   14f8c:	0a05c263          	bltz	a1,15030 <eshift.part.3+0xc0>
   14f90:	00f00793          	li	a5,15
   14f94:	00058613          	mv	a2,a1
   14f98:	00450513          	addi	a0,a0,4
   14f9c:	01840693          	addi	a3,s0,24
   14fa0:	00f00593          	li	a1,15
   14fa4:	0327d463          	bge	a5,s2,14fcc <eshift.part.3+0x5c>
   14fa8:	00050793          	mv	a5,a0
   14fac:	00278793          	addi	a5,a5,2
   14fb0:	0007d703          	lhu	a4,0(a5)
   14fb4:	fee79f23          	sh	a4,-2(a5)
   14fb8:	fed79ae3          	bne	a5,a3,14fac <eshift.part.3+0x3c>
   14fbc:	00041c23          	sh	zero,24(s0)
   14fc0:	ff060613          	addi	a2,a2,-16
   14fc4:	fec5c2e3          	blt	a1,a2,14fa8 <eshift.part.3+0x38>
   14fc8:	00f97913          	andi	s2,s2,15
   14fcc:	00700793          	li	a5,7
   14fd0:	0327d863          	bge	a5,s2,15000 <eshift.part.3+0x90>
   14fd4:	01840793          	addi	a5,s0,24
   14fd8:	00240593          	addi	a1,s0,2
   14fdc:	00000713          	li	a4,0
   14fe0:	0007d683          	lhu	a3,0(a5)
   14fe4:	ffe78793          	addi	a5,a5,-2
   14fe8:	00869613          	slli	a2,a3,0x8
   14fec:	00c76733          	or	a4,a4,a2
   14ff0:	00e79123          	sh	a4,2(a5)
   14ff4:	0086d713          	srli	a4,a3,0x8
   14ff8:	feb794e3          	bne	a5,a1,14fe0 <eshift.part.3+0x70>
   14ffc:	ff890913          	addi	s2,s2,-8
   15000:	00090a63          	beqz	s2,15014 <eshift.part.3+0xa4>
   15004:	fff90913          	addi	s2,s2,-1
   15008:	00040513          	mv	a0,s0
   1500c:	b45ff0ef          	jal	ra,14b50 <eshup1>
   15010:	fe091ae3          	bnez	s2,15004 <eshift.part.3+0x94>
   15014:	00c12083          	lw	ra,12(sp)
   15018:	00812403          	lw	s0,8(sp)
   1501c:	00412483          	lw	s1,4(sp)
   15020:	00012903          	lw	s2,0(sp)
   15024:	00000513          	li	a0,0
   15028:	01010113          	addi	sp,sp,16
   1502c:	00008067          	ret
   15030:	ff100793          	li	a5,-15
   15034:	40b004b3          	neg	s1,a1
   15038:	0cf5d463          	bge	a1,a5,15100 <eshift.part.3+0x190>
   1503c:	01850593          	addi	a1,a0,24
   15040:	00000913          	li	s2,0
   15044:	00450693          	addi	a3,a0,4
   15048:	00f00613          	li	a2,15
   1504c:	01845703          	lhu	a4,24(s0)
   15050:	00058793          	mv	a5,a1
   15054:	00e96933          	or	s2,s2,a4
   15058:	ffe78793          	addi	a5,a5,-2
   1505c:	0007d703          	lhu	a4,0(a5)
   15060:	00e79123          	sh	a4,2(a5)
   15064:	fed79ae3          	bne	a5,a3,15058 <eshift.part.3+0xe8>
   15068:	00041223          	sh	zero,4(s0)
   1506c:	ff048493          	addi	s1,s1,-16
   15070:	fc964ee3          	blt	a2,s1,1504c <eshift.part.3+0xdc>
   15074:	00700793          	li	a5,7
   15078:	0497d663          	bge	a5,s1,150c4 <eshift.part.3+0x154>
   1507c:	01091913          	slli	s2,s2,0x10
   15080:	41095913          	srai	s2,s2,0x10
   15084:	01844783          	lbu	a5,24(s0)
   15088:	01a40593          	addi	a1,s0,26
   1508c:	00000713          	li	a4,0
   15090:	00f96933          	or	s2,s2,a5
   15094:	01091913          	slli	s2,s2,0x10
   15098:	01095913          	srli	s2,s2,0x10
   1509c:	0006d783          	lhu	a5,0(a3)
   150a0:	00268693          	addi	a3,a3,2
   150a4:	0087d613          	srli	a2,a5,0x8
   150a8:	00c76733          	or	a4,a4,a2
   150ac:	00879793          	slli	a5,a5,0x8
   150b0:	fee69f23          	sh	a4,-2(a3)
   150b4:	01079713          	slli	a4,a5,0x10
   150b8:	01075713          	srli	a4,a4,0x10
   150bc:	feb690e3          	bne	a3,a1,1509c <eshift.part.3+0x12c>
   150c0:	ff848493          	addi	s1,s1,-8
   150c4:	02048063          	beqz	s1,150e4 <eshift.part.3+0x174>
   150c8:	01845783          	lhu	a5,24(s0)
   150cc:	fff48493          	addi	s1,s1,-1
   150d0:	00040513          	mv	a0,s0
   150d4:	0017f793          	andi	a5,a5,1
   150d8:	0127e933          	or	s2,a5,s2
   150dc:	a0dff0ef          	jal	ra,14ae8 <eshdn1>
   150e0:	fe0494e3          	bnez	s1,150c8 <eshift.part.3+0x158>
   150e4:	00c12083          	lw	ra,12(sp)
   150e8:	00812403          	lw	s0,8(sp)
   150ec:	01203533          	snez	a0,s2
   150f0:	00412483          	lw	s1,4(sp)
   150f4:	00012903          	lw	s2,0(sp)
   150f8:	01010113          	addi	sp,sp,16
   150fc:	00008067          	ret
   15100:	ff900793          	li	a5,-7
   15104:	00f5c663          	blt	a1,a5,15110 <eshift.part.3+0x1a0>
   15108:	00000913          	li	s2,0
   1510c:	fbdff06f          	j	150c8 <eshift.part.3+0x158>
   15110:	00000913          	li	s2,0
   15114:	00440693          	addi	a3,s0,4
   15118:	f6dff06f          	j	15084 <eshift.part.3+0x114>

0001511c <enormlz>:
   1511c:	00455783          	lhu	a5,4(a0)
   15120:	ff010113          	addi	sp,sp,-16
   15124:	00912223          	sw	s1,4(sp)
   15128:	00112623          	sw	ra,12(sp)
   1512c:	00812423          	sw	s0,8(sp)
   15130:	01212023          	sw	s2,0(sp)
   15134:	00050493          	mv	s1,a0
   15138:	0c079c63          	bnez	a5,15210 <enormlz+0xf4>
   1513c:	00655703          	lhu	a4,6(a0)
   15140:	00000413          	li	s0,0
   15144:	01071793          	slli	a5,a4,0x10
   15148:	4107d793          	srai	a5,a5,0x10
   1514c:	0a07c463          	bltz	a5,151f4 <enormlz+0xd8>
   15150:	01a50693          	addi	a3,a0,26
   15154:	0a000613          	li	a2,160
   15158:	02071863          	bnez	a4,15188 <enormlz+0x6c>
   1515c:	00648793          	addi	a5,s1,6
   15160:	0080006f          	j	15168 <enormlz+0x4c>
   15164:	0007d703          	lhu	a4,0(a5)
   15168:	00278793          	addi	a5,a5,2
   1516c:	fee79e23          	sh	a4,-4(a5)
   15170:	fef69ae3          	bne	a3,a5,15164 <enormlz+0x48>
   15174:	00049c23          	sh	zero,24(s1)
   15178:	01040413          	addi	s0,s0,16
   1517c:	06c40c63          	beq	s0,a2,151f4 <enormlz+0xd8>
   15180:	0064d703          	lhu	a4,6(s1)
   15184:	fc070ce3          	beqz	a4,1515c <enormlz+0x40>
   15188:	f0077793          	andi	a5,a4,-256
   1518c:	04079063          	bnez	a5,151cc <enormlz+0xb0>
   15190:	01848513          	addi	a0,s1,24
   15194:	00248593          	addi	a1,s1,2
   15198:	00000713          	li	a4,0
   1519c:	00050793          	mv	a5,a0
   151a0:	0007d683          	lhu	a3,0(a5)
   151a4:	ffe78793          	addi	a5,a5,-2
   151a8:	00869613          	slli	a2,a3,0x8
   151ac:	00c76733          	or	a4,a4,a2
   151b0:	00e79123          	sh	a4,2(a5)
   151b4:	0086d713          	srli	a4,a3,0x8
   151b8:	fef594e3          	bne	a1,a5,151a0 <enormlz+0x84>
   151bc:	0064d703          	lhu	a4,6(s1)
   151c0:	00840413          	addi	s0,s0,8
   151c4:	f0077793          	andi	a5,a4,-256
   151c8:	fc0788e3          	beqz	a5,15198 <enormlz+0x7c>
   151cc:	0a000913          	li	s2,160
   151d0:	0140006f          	j	151e4 <enormlz+0xc8>
   151d4:	00140413          	addi	s0,s0,1
   151d8:	979ff0ef          	jal	ra,14b50 <eshup1>
   151dc:	00894c63          	blt	s2,s0,151f4 <enormlz+0xd8>
   151e0:	0064d703          	lhu	a4,6(s1)
   151e4:	01071713          	slli	a4,a4,0x10
   151e8:	41075713          	srai	a4,a4,0x10
   151ec:	00048513          	mv	a0,s1
   151f0:	fe0752e3          	bgez	a4,151d4 <enormlz+0xb8>
   151f4:	00040513          	mv	a0,s0
   151f8:	00c12083          	lw	ra,12(sp)
   151fc:	00812403          	lw	s0,8(sp)
   15200:	00412483          	lw	s1,4(sp)
   15204:	00012903          	lw	s2,0(sp)
   15208:	01010113          	addi	sp,sp,16
   1520c:	00008067          	ret
   15210:	f007f713          	andi	a4,a5,-256
   15214:	00000413          	li	s0,0
   15218:	04071063          	bnez	a4,15258 <enormlz+0x13c>
   1521c:	f6f00913          	li	s2,-145
   15220:	0140006f          	j	15234 <enormlz+0x118>
   15224:	fff40413          	addi	s0,s0,-1
   15228:	8c1ff0ef          	jal	ra,14ae8 <eshdn1>
   1522c:	fd2404e3          	beq	s0,s2,151f4 <enormlz+0xd8>
   15230:	0044d783          	lhu	a5,4(s1)
   15234:	00048513          	mv	a0,s1
   15238:	fe0796e3          	bnez	a5,15224 <enormlz+0x108>
   1523c:	00040513          	mv	a0,s0
   15240:	00c12083          	lw	ra,12(sp)
   15244:	00812403          	lw	s0,8(sp)
   15248:	00412483          	lw	s1,4(sp)
   1524c:	00012903          	lw	s2,0(sp)
   15250:	01010113          	addi	sp,sp,16
   15254:	00008067          	ret
   15258:	00450693          	addi	a3,a0,4
   1525c:	01a50593          	addi	a1,a0,26
   15260:	00000713          	li	a4,0
   15264:	0080006f          	j	1526c <enormlz+0x150>
   15268:	0006d783          	lhu	a5,0(a3)
   1526c:	0087d613          	srli	a2,a5,0x8
   15270:	00c76733          	or	a4,a4,a2
   15274:	00879793          	slli	a5,a5,0x8
   15278:	00e69023          	sh	a4,0(a3)
   1527c:	01079713          	slli	a4,a5,0x10
   15280:	00268693          	addi	a3,a3,2
   15284:	01075713          	srli	a4,a4,0x10
   15288:	feb690e3          	bne	a3,a1,15268 <enormlz+0x14c>
   1528c:	0044d783          	lhu	a5,4(s1)
   15290:	ff800413          	li	s0,-8
   15294:	f89ff06f          	j	1521c <enormlz+0x100>

00015298 <emdnorm>:
   15298:	fe010113          	addi	sp,sp,-32
   1529c:	00812c23          	sw	s0,24(sp)
   152a0:	00912a23          	sw	s1,20(sp)
   152a4:	01212823          	sw	s2,16(sp)
   152a8:	01312623          	sw	s3,12(sp)
   152ac:	01412423          	sw	s4,8(sp)
   152b0:	01512223          	sw	s5,4(sp)
   152b4:	00068913          	mv	s2,a3
   152b8:	00078493          	mv	s1,a5
   152bc:	00112e23          	sw	ra,28(sp)
   152c0:	00050413          	mv	s0,a0
   152c4:	00058993          	mv	s3,a1
   152c8:	00060a13          	mv	s4,a2
   152cc:	00070a93          	mv	s5,a4
   152d0:	e4dff0ef          	jal	ra,1511c <enormlz>
   152d4:	09000793          	li	a5,144
   152d8:	40a90933          	sub	s2,s2,a0
   152dc:	06a7de63          	bge	a5,a0,15358 <emdnorm+0xc0>
   152e0:	000087b7          	lui	a5,0x8
   152e4:	ffe78793          	addi	a5,a5,-2 # 7ffe <register_fini-0x8076>
   152e8:	2127da63          	bge	a5,s2,154fc <emdnorm+0x264>
   152ec:	1e0a8463          	beqz	s5,154d4 <emdnorm+0x23c>
   152f0:	0044a503          	lw	a0,4(s1)
   152f4:	0004a783          	lw	a5,0(s1)
   152f8:	0ea78a63          	beq	a5,a0,153ec <emdnorm+0x154>
   152fc:	01a48713          	addi	a4,s1,26
   15300:	03448793          	addi	a5,s1,52
   15304:	00270713          	addi	a4,a4,2
   15308:	fe071f23          	sh	zero,-2(a4)
   1530c:	fef71ce3          	bne	a4,a5,15304 <emdnorm+0x6c>
   15310:	03800793          	li	a5,56
   15314:	36f50063          	beq	a0,a5,15674 <emdnorm+0x3dc>
   15318:	06a7d263          	bge	a5,a0,1537c <emdnorm+0xe4>
   1531c:	04000793          	li	a5,64
   15320:	2ef50a63          	beq	a0,a5,15614 <emdnorm+0x37c>
   15324:	07100793          	li	a5,113
   15328:	30f51c63          	bne	a0,a5,15640 <emdnorm+0x3a8>
   1532c:	400087b7          	lui	a5,0x40008
   15330:	fff78793          	addi	a5,a5,-1 # 40007fff <__BSS_END__+0x3ffe1517>
   15334:	00a00713          	li	a4,10
   15338:	00f4aa23          	sw	a5,20(s1)
   1533c:	ffff87b7          	lui	a5,0xffff8
   15340:	00e4a423          	sw	a4,8(s1)
   15344:	00f49c23          	sh	a5,24(s1)
   15348:	00e4a623          	sw	a4,12(s1)
   1534c:	00a00793          	li	a5,10
   15350:	00008737          	lui	a4,0x8
   15354:	0600006f          	j	153b4 <emdnorm+0x11c>
   15358:	1e095263          	bgez	s2,1553c <emdnorm+0x2a4>
   1535c:	f7000793          	li	a5,-144
   15360:	1af95a63          	bge	s2,a5,15514 <emdnorm+0x27c>
   15364:	00240793          	addi	a5,s0,2
   15368:	01a40413          	addi	s0,s0,26
   1536c:	00278793          	addi	a5,a5,2 # ffff8002 <__BSS_END__+0xfffd151a>
   15370:	fe079f23          	sh	zero,-2(a5)
   15374:	fe879ce3          	bne	a5,s0,1536c <emdnorm+0xd4>
   15378:	1380006f          	j	154b0 <emdnorm+0x218>
   1537c:	01800793          	li	a5,24
   15380:	26f50463          	beq	a0,a5,155e8 <emdnorm+0x350>
   15384:	03500793          	li	a5,53
   15388:	2af51c63          	bne	a0,a5,15640 <emdnorm+0x3a8>
   1538c:	00001737          	lui	a4,0x1
   15390:	040007b7          	lui	a5,0x4000
   15394:	00600693          	li	a3,6
   15398:	7ff78793          	addi	a5,a5,2047 # 40007ff <__BSS_END__+0x3fd9d17>
   1539c:	80070713          	addi	a4,a4,-2048 # 800 <register_fini-0xf874>
   153a0:	00f4aa23          	sw	a5,20(s1)
   153a4:	00d4a423          	sw	a3,8(s1)
   153a8:	00e49c23          	sh	a4,24(s1)
   153ac:	00d4a623          	sw	a3,12(s1)
   153b0:	00600793          	li	a5,6
   153b4:	00878793          	addi	a5,a5,8
   153b8:	00179793          	slli	a5,a5,0x1
   153bc:	00f487b3          	add	a5,s1,a5
   153c0:	00e79523          	sh	a4,10(a5)
   153c4:	00a4a023          	sw	a0,0(s1)
   153c8:	03204263          	bgtz	s2,153ec <emdnorm+0x154>
   153cc:	09000793          	li	a5,144
   153d0:	1ef50863          	beq	a0,a5,155c0 <emdnorm+0x328>
   153d4:	01845783          	lhu	a5,24(s0)
   153d8:	00040513          	mv	a0,s0
   153dc:	0017f793          	andi	a5,a5,1
   153e0:	00f9e9b3          	or	s3,s3,a5
   153e4:	f04ff0ef          	jal	ra,14ae8 <eshdn1>
   153e8:	0044a503          	lw	a0,4(s1)
   153ec:	0084a583          	lw	a1,8(s1)
   153f0:	0144d783          	lhu	a5,20(s1)
   153f4:	08f00813          	li	a6,143
   153f8:	00159613          	slli	a2,a1,0x1
   153fc:	00c40633          	add	a2,s0,a2
   15400:	00065703          	lhu	a4,0(a2)
   15404:	00f776b3          	and	a3,a4,a5
   15408:	02a84a63          	blt	a6,a0,1543c <emdnorm+0x1a4>
   1540c:	00b00813          	li	a6,11
   15410:	02b84663          	blt	a6,a1,1543c <emdnorm+0x1a4>
   15414:	00060713          	mv	a4,a2
   15418:	01840593          	addi	a1,s0,24
   1541c:	00275783          	lhu	a5,2(a4)
   15420:	00078463          	beqz	a5,15428 <emdnorm+0x190>
   15424:	0016e693          	ori	a3,a3,1
   15428:	00071123          	sh	zero,2(a4)
   1542c:	00270713          	addi	a4,a4,2
   15430:	fee596e3          	bne	a1,a4,1541c <emdnorm+0x184>
   15434:	00065703          	lhu	a4,0(a2)
   15438:	0144d783          	lhu	a5,20(s1)
   1543c:	fff7c793          	not	a5,a5
   15440:	00e7f7b3          	and	a5,a5,a4
   15444:	00f61023          	sh	a5,0(a2)
   15448:	0164d783          	lhu	a5,22(s1)
   1544c:	00d7f733          	and	a4,a5,a3
   15450:	04070063          	beqz	a4,15490 <emdnorm+0x1f8>
   15454:	12d78263          	beq	a5,a3,15578 <emdnorm+0x2e0>
   15458:	03248613          	addi	a2,s1,50
   1545c:	01840713          	addi	a4,s0,24
   15460:	01c48493          	addi	s1,s1,28
   15464:	00000693          	li	a3,0
   15468:	00065783          	lhu	a5,0(a2)
   1546c:	00075583          	lhu	a1,0(a4)
   15470:	ffe70713          	addi	a4,a4,-2
   15474:	ffe60613          	addi	a2,a2,-2
   15478:	00b787b3          	add	a5,a5,a1
   1547c:	00d787b3          	add	a5,a5,a3
   15480:	00f71123          	sh	a5,2(a4)
   15484:	0107d793          	srli	a5,a5,0x10
   15488:	0017f693          	andi	a3,a5,1
   1548c:	fc961ee3          	bne	a2,s1,15468 <emdnorm+0x1d0>
   15490:	11205663          	blez	s2,1559c <emdnorm+0x304>
   15494:	00445783          	lhu	a5,4(s0)
   15498:	0a079c63          	bnez	a5,15550 <emdnorm+0x2b8>
   1549c:	000087b7          	lui	a5,0x8
   154a0:	00041c23          	sh	zero,24(s0)
   154a4:	ffe78793          	addi	a5,a5,-2 # 7ffe <register_fini-0x8076>
   154a8:	0327c863          	blt	a5,s2,154d8 <emdnorm+0x240>
   154ac:	01241123          	sh	s2,2(s0)
   154b0:	01c12083          	lw	ra,28(sp)
   154b4:	01812403          	lw	s0,24(sp)
   154b8:	01412483          	lw	s1,20(sp)
   154bc:	01012903          	lw	s2,16(sp)
   154c0:	00c12983          	lw	s3,12(sp)
   154c4:	00812a03          	lw	s4,8(sp)
   154c8:	00412a83          	lw	s5,4(sp)
   154cc:	02010113          	addi	sp,sp,32
   154d0:	00008067          	ret
   154d4:	00041c23          	sh	zero,24(s0)
   154d8:	ffff87b7          	lui	a5,0xffff8
   154dc:	fff7c793          	not	a5,a5
   154e0:	00f41123          	sh	a5,2(s0)
   154e4:	00440793          	addi	a5,s0,4
   154e8:	01840413          	addi	s0,s0,24
   154ec:	00079023          	sh	zero,0(a5) # ffff8000 <__BSS_END__+0xfffd1518>
   154f0:	00278793          	addi	a5,a5,2
   154f4:	fef41ce3          	bne	s0,a5,154ec <emdnorm+0x254>
   154f8:	fb9ff06f          	j	154b0 <emdnorm+0x218>
   154fc:	00240793          	addi	a5,s0,2
   15500:	01a40413          	addi	s0,s0,26
   15504:	00278793          	addi	a5,a5,2
   15508:	fe079f23          	sh	zero,-2(a5)
   1550c:	fe879ce3          	bne	a5,s0,15504 <emdnorm+0x26c>
   15510:	fa1ff06f          	j	154b0 <emdnorm+0x218>
   15514:	00090593          	mv	a1,s2
   15518:	00040513          	mv	a0,s0
   1551c:	a55ff0ef          	jal	ra,14f70 <eshift.part.3>
   15520:	00050463          	beqz	a0,15528 <emdnorm+0x290>
   15524:	00100993          	li	s3,1
   15528:	0a0a8a63          	beqz	s5,155dc <emdnorm+0x344>
   1552c:	0044a503          	lw	a0,4(s1)
   15530:	0004a783          	lw	a5,0(s1)
   15534:	dca794e3          	bne	a5,a0,152fc <emdnorm+0x64>
   15538:	e95ff06f          	j	153cc <emdnorm+0x134>
   1553c:	f60a80e3          	beqz	s5,1549c <emdnorm+0x204>
   15540:	0044a503          	lw	a0,4(s1)
   15544:	0004a783          	lw	a5,0(s1)
   15548:	daf51ae3          	bne	a0,a5,152fc <emdnorm+0x64>
   1554c:	e7dff06f          	j	153c8 <emdnorm+0x130>
   15550:	00040513          	mv	a0,s0
   15554:	d94ff0ef          	jal	ra,14ae8 <eshdn1>
   15558:	000087b7          	lui	a5,0x8
   1555c:	00190913          	addi	s2,s2,1
   15560:	00041c23          	sh	zero,24(s0)
   15564:	ffe78793          	addi	a5,a5,-2 # 7ffe <register_fini-0x8076>
   15568:	f727c8e3          	blt	a5,s2,154d8 <emdnorm+0x240>
   1556c:	f40950e3          	bgez	s2,154ac <emdnorm+0x214>
   15570:	00041123          	sh	zero,2(s0)
   15574:	f3dff06f          	j	154b0 <emdnorm+0x218>
   15578:	0e099a63          	bnez	s3,1566c <emdnorm+0x3d4>
   1557c:	00c4a783          	lw	a5,12(s1)
   15580:	0184d703          	lhu	a4,24(s1)
   15584:	00179793          	slli	a5,a5,0x1
   15588:	00f407b3          	add	a5,s0,a5
   1558c:	0007d783          	lhu	a5,0(a5)
   15590:	00e7f7b3          	and	a5,a5,a4
   15594:	ec0792e3          	bnez	a5,15458 <emdnorm+0x1c0>
   15598:	ef204ee3          	bgtz	s2,15494 <emdnorm+0x1fc>
   1559c:	09000793          	li	a5,144
   155a0:	00f50663          	beq	a0,a5,155ac <emdnorm+0x314>
   155a4:	00040513          	mv	a0,s0
   155a8:	da8ff0ef          	jal	ra,14b50 <eshup1>
   155ac:	00445783          	lhu	a5,4(s0)
   155b0:	fa0790e3          	bnez	a5,15550 <emdnorm+0x2b8>
   155b4:	00041c23          	sh	zero,24(s0)
   155b8:	fa094ce3          	bltz	s2,15570 <emdnorm+0x2d8>
   155bc:	ef1ff06f          	j	154ac <emdnorm+0x214>
   155c0:	0084a603          	lw	a2,8(s1)
   155c4:	0144d783          	lhu	a5,20(s1)
   155c8:	00161613          	slli	a2,a2,0x1
   155cc:	00c40633          	add	a2,s0,a2
   155d0:	00065703          	lhu	a4,0(a2)
   155d4:	00e7f6b3          	and	a3,a5,a4
   155d8:	e65ff06f          	j	1543c <emdnorm+0x1a4>
   155dc:	00041c23          	sh	zero,24(s0)
   155e0:	00041123          	sh	zero,2(s0)
   155e4:	ecdff06f          	j	154b0 <emdnorm+0x218>
   155e8:	008007b7          	lui	a5,0x800
   155ec:	0ff78793          	addi	a5,a5,255 # 8000ff <__BSS_END__+0x7d9617>
   155f0:	00400713          	li	a4,4
   155f4:	00f4aa23          	sw	a5,20(s1)
   155f8:	10000793          	li	a5,256
   155fc:	00e4a423          	sw	a4,8(s1)
   15600:	00f49c23          	sh	a5,24(s1)
   15604:	00e4a623          	sw	a4,12(s1)
   15608:	00400793          	li	a5,4
   1560c:	10000713          	li	a4,256
   15610:	da5ff06f          	j	153b4 <emdnorm+0x11c>
   15614:	00700793          	li	a5,7
   15618:	00f4a423          	sw	a5,8(s1)
   1561c:	800107b7          	lui	a5,0x80010
   15620:	fff78793          	addi	a5,a5,-1 # 8000ffff <__BSS_END__+0x7ffe9517>
   15624:	00f4aa23          	sw	a5,20(s1)
   15628:	00100793          	li	a5,1
   1562c:	00f49c23          	sh	a5,24(s1)
   15630:	00600793          	li	a5,6
   15634:	00f4a623          	sw	a5,12(s1)
   15638:	00100713          	li	a4,1
   1563c:	d79ff06f          	j	153b4 <emdnorm+0x11c>
   15640:	00c00793          	li	a5,12
   15644:	00f4a423          	sw	a5,8(s1)
   15648:	800107b7          	lui	a5,0x80010
   1564c:	fff78793          	addi	a5,a5,-1 # 8000ffff <__BSS_END__+0x7ffe9517>
   15650:	00f4aa23          	sw	a5,20(s1)
   15654:	00100793          	li	a5,1
   15658:	00f49c23          	sh	a5,24(s1)
   1565c:	00b00793          	li	a5,11
   15660:	00f4a623          	sw	a5,12(s1)
   15664:	00100713          	li	a4,1
   15668:	d4dff06f          	j	153b4 <emdnorm+0x11c>
   1566c:	de0a06e3          	beqz	s4,15458 <emdnorm+0x1c0>
   15670:	e21ff06f          	j	15490 <emdnorm+0x1f8>
   15674:	008007b7          	lui	a5,0x800
   15678:	0ff78793          	addi	a5,a5,255 # 8000ff <__BSS_END__+0x7d9617>
   1567c:	00600713          	li	a4,6
   15680:	00f4aa23          	sw	a5,20(s1)
   15684:	10000793          	li	a5,256
   15688:	00e4a423          	sw	a4,8(s1)
   1568c:	00f49c23          	sh	a5,24(s1)
   15690:	00e4a623          	sw	a4,12(s1)
   15694:	00600793          	li	a5,6
   15698:	10000713          	li	a4,256
   1569c:	d19ff06f          	j	153b4 <emdnorm+0x11c>

000156a0 <eiremain>:
   156a0:	fd010113          	addi	sp,sp,-48
   156a4:	01312e23          	sw	s3,28(sp)
   156a8:	00255983          	lhu	s3,2(a0)
   156ac:	02912223          	sw	s1,36(sp)
   156b0:	00058493          	mv	s1,a1
   156b4:	02112623          	sw	ra,44(sp)
   156b8:	02812423          	sw	s0,40(sp)
   156bc:	03212023          	sw	s2,32(sp)
   156c0:	01412c23          	sw	s4,24(sp)
   156c4:	00060913          	mv	s2,a2
   156c8:	01512a23          	sw	s5,20(sp)
   156cc:	01612823          	sw	s6,16(sp)
   156d0:	01712623          	sw	s7,12(sp)
   156d4:	01812423          	sw	s8,8(sp)
   156d8:	01912223          	sw	s9,4(sp)
   156dc:	01a12023          	sw	s10,0(sp)
   156e0:	00050a13          	mv	s4,a0
   156e4:	a39ff0ef          	jal	ra,1511c <enormlz>
   156e8:	0024d403          	lhu	s0,2(s1)
   156ec:	40a989b3          	sub	s3,s3,a0
   156f0:	00048513          	mv	a0,s1
   156f4:	a29ff0ef          	jal	ra,1511c <enormlz>
   156f8:	03490a93          	addi	s5,s2,52
   156fc:	40a40433          	sub	s0,s0,a0
   15700:	04e90713          	addi	a4,s2,78
   15704:	000a8793          	mv	a5,s5
   15708:	00278793          	addi	a5,a5,2
   1570c:	fe079f23          	sh	zero,-2(a5)
   15710:	fee79ce3          	bne	a5,a4,15708 <eiremain+0x68>
   15714:	09344a63          	blt	s0,s3,157a8 <eiremain+0x108>
   15718:	004a0b93          	addi	s7,s4,4
   1571c:	00448b13          	addi	s6,s1,4
   15720:	fff98993          	addi	s3,s3,-1
   15724:	01aa0c93          	addi	s9,s4,26
   15728:	00248c13          	addi	s8,s1,2
   1572c:	000b0713          	mv	a4,s6
   15730:	000b8793          	mv	a5,s7
   15734:	00278793          	addi	a5,a5,2
   15738:	00270713          	addi	a4,a4,2
   1573c:	ffe7d603          	lhu	a2,-2(a5)
   15740:	ffe75683          	lhu	a3,-2(a4)
   15744:	0ad61a63          	bne	a2,a3,157f8 <eiremain+0x158>
   15748:	ff9796e3          	bne	a5,s9,15734 <eiremain+0x94>
   1574c:	018a0693          	addi	a3,s4,24
   15750:	01848713          	addi	a4,s1,24
   15754:	00000613          	li	a2,0
   15758:	00075783          	lhu	a5,0(a4)
   1575c:	0006d583          	lhu	a1,0(a3)
   15760:	ffe70713          	addi	a4,a4,-2
   15764:	40c787b3          	sub	a5,a5,a2
   15768:	40b787b3          	sub	a5,a5,a1
   1576c:	00f71123          	sh	a5,2(a4)
   15770:	0107d793          	srli	a5,a5,0x10
   15774:	ffe68693          	addi	a3,a3,-2
   15778:	0017f613          	andi	a2,a5,1
   1577c:	fcec1ee3          	bne	s8,a4,15758 <eiremain+0xb8>
   15780:	00100d13          	li	s10,1
   15784:	000a8513          	mv	a0,s5
   15788:	bc8ff0ef          	jal	ra,14b50 <eshup1>
   1578c:	04c95783          	lhu	a5,76(s2)
   15790:	fff40413          	addi	s0,s0,-1
   15794:	00048513          	mv	a0,s1
   15798:	00fd6d33          	or	s10,s10,a5
   1579c:	05a91623          	sh	s10,76(s2)
   157a0:	bb0ff0ef          	jal	ra,14b50 <eshup1>
   157a4:	f93414e3          	bne	s0,s3,1572c <eiremain+0x8c>
   157a8:	00040693          	mv	a3,s0
   157ac:	02812403          	lw	s0,40(sp)
   157b0:	02c12083          	lw	ra,44(sp)
   157b4:	01c12983          	lw	s3,28(sp)
   157b8:	01812a03          	lw	s4,24(sp)
   157bc:	01412a83          	lw	s5,20(sp)
   157c0:	01012b03          	lw	s6,16(sp)
   157c4:	00c12b83          	lw	s7,12(sp)
   157c8:	00812c03          	lw	s8,8(sp)
   157cc:	00412c83          	lw	s9,4(sp)
   157d0:	00012d03          	lw	s10,0(sp)
   157d4:	00090793          	mv	a5,s2
   157d8:	00048513          	mv	a0,s1
   157dc:	02012903          	lw	s2,32(sp)
   157e0:	02412483          	lw	s1,36(sp)
   157e4:	00000713          	li	a4,0
   157e8:	00000613          	li	a2,0
   157ec:	00000593          	li	a1,0
   157f0:	03010113          	addi	sp,sp,48
   157f4:	aa5ff06f          	j	15298 <emdnorm>
   157f8:	00000d13          	li	s10,0
   157fc:	f8c6e4e3          	bltu	a3,a2,15784 <eiremain+0xe4>
   15800:	f4dff06f          	j	1574c <eiremain+0xac>

00015804 <emovo.isra.6>:
   15804:	00055703          	lhu	a4,0(a0)
   15808:	00255783          	lhu	a5,2(a0)
   1580c:	00070663          	beqz	a4,15818 <emovo.isra.6+0x14>
   15810:	00008737          	lui	a4,0x8
   15814:	00e7e7b3          	or	a5,a5,a4
   15818:	00f59923          	sh	a5,18(a1)
   1581c:	00255703          	lhu	a4,2(a0)
   15820:	000087b7          	lui	a5,0x8
   15824:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   15828:	02f70463          	beq	a4,a5,15850 <emovo.isra.6+0x4c>
   1582c:	00650793          	addi	a5,a0,6
   15830:	01058593          	addi	a1,a1,16
   15834:	01850513          	addi	a0,a0,24
   15838:	00278793          	addi	a5,a5,2
   1583c:	ffe7d703          	lhu	a4,-2(a5)
   15840:	ffe58593          	addi	a1,a1,-2
   15844:	00e59123          	sh	a4,2(a1)
   15848:	fea798e3          	bne	a5,a0,15838 <emovo.isra.6+0x34>
   1584c:	00008067          	ret
   15850:	00650793          	addi	a5,a0,6
   15854:	01a50513          	addi	a0,a0,26
   15858:	0007d703          	lhu	a4,0(a5)
   1585c:	00278793          	addi	a5,a5,2
   15860:	02071a63          	bnez	a4,15894 <emovo.isra.6+0x90>
   15864:	fea79ae3          	bne	a5,a0,15858 <emovo.isra.6+0x54>
   15868:	01258713          	addi	a4,a1,18
   1586c:	00058793          	mv	a5,a1
   15870:	00278793          	addi	a5,a5,2
   15874:	fe079f23          	sh	zero,-2(a5)
   15878:	fef71ce3          	bne	a4,a5,15870 <emovo.isra.6+0x6c>
   1587c:	0125d783          	lhu	a5,18(a1)
   15880:	00008737          	lui	a4,0x8
   15884:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x8075>
   15888:	00e7e7b3          	or	a5,a5,a4
   1588c:	00f59923          	sh	a5,18(a1)
   15890:	00008067          	ret
   15894:	01058713          	addi	a4,a1,16
   15898:	00058793          	mv	a5,a1
   1589c:	00278793          	addi	a5,a5,2
   158a0:	fe079f23          	sh	zero,-2(a5)
   158a4:	fef71ce3          	bne	a4,a5,1589c <emovo.isra.6+0x98>
   158a8:	7fffc7b7          	lui	a5,0x7fffc
   158ac:	00f5a823          	sw	a5,16(a1)
   158b0:	00008067          	ret

000158b4 <emul>:
   158b4:	f7010113          	addi	sp,sp,-144
   158b8:	07512a23          	sw	s5,116(sp)
   158bc:	01255a83          	lhu	s5,18(a0)
   158c0:	000087b7          	lui	a5,0x8
   158c4:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   158c8:	08812423          	sw	s0,136(sp)
   158cc:	08912223          	sw	s1,132(sp)
   158d0:	09212023          	sw	s2,128(sp)
   158d4:	07312e23          	sw	s3,124(sp)
   158d8:	07612823          	sw	s6,112(sp)
   158dc:	08112623          	sw	ra,140(sp)
   158e0:	07412c23          	sw	s4,120(sp)
   158e4:	07712623          	sw	s7,108(sp)
   158e8:	07812423          	sw	s8,104(sp)
   158ec:	07912223          	sw	s9,100(sp)
   158f0:	0157fb33          	and	s6,a5,s5
   158f4:	00050493          	mv	s1,a0
   158f8:	00058913          	mv	s2,a1
   158fc:	00060413          	mv	s0,a2
   15900:	00068993          	mv	s3,a3
   15904:	0afb1863          	bne	s6,a5,159b4 <emul+0x100>
   15908:	b98ff0ef          	jal	ra,14ca0 <eisnan.part.0>
   1590c:	20051c63          	bnez	a0,15b24 <emul+0x270>
   15910:	01295a03          	lhu	s4,18(s2)
   15914:	014b77b3          	and	a5,s6,s4
   15918:	23679463          	bne	a5,s6,15b40 <emul+0x28c>
   1591c:	00090513          	mv	a0,s2
   15920:	b80ff0ef          	jal	ra,14ca0 <eisnan.part.0>
   15924:	0a051463          	bnez	a0,159cc <emul+0x118>
   15928:	00048513          	mv	a0,s1
   1592c:	e28ff0ef          	jal	ra,14f54 <eisinf.part.1>
   15930:	20051e63          	bnez	a0,15b4c <emul+0x298>
   15934:	000087b7          	lui	a5,0x8
   15938:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   1593c:	0147fa33          	and	s4,a5,s4
   15940:	010a1a13          	slli	s4,s4,0x10
   15944:	010a5a13          	srli	s4,s4,0x10
   15948:	2cfa1663          	bne	s4,a5,15c14 <emul+0x360>
   1594c:	00090513          	mv	a0,s2
   15950:	e04ff0ef          	jal	ra,14f54 <eisinf.part.1>
   15954:	32051263          	bnez	a0,15c78 <emul+0x3c4>
   15958:	0124d783          	lhu	a5,18(s1)
   1595c:	00fa77b3          	and	a5,s4,a5
   15960:	21478463          	beq	a5,s4,15b68 <emul+0x2b4>
   15964:	00048513          	mv	a0,s1
   15968:	00c10593          	addi	a1,sp,12
   1596c:	be4ff0ef          	jal	ra,14d50 <emovi>
   15970:	00090513          	mv	a0,s2
   15974:	02810593          	addi	a1,sp,40
   15978:	bd8ff0ef          	jal	ra,14d50 <emovi>
   1597c:	00e15483          	lhu	s1,14(sp)
   15980:	02a15903          	lhu	s2,42(sp)
   15984:	08049a63          	bnez	s1,15a18 <emul+0x164>
   15988:	01010793          	addi	a5,sp,16
   1598c:	02410693          	addi	a3,sp,36
   15990:	2cd78063          	beq	a5,a3,15c50 <emul+0x39c>
   15994:	00278793          	addi	a5,a5,2
   15998:	ffe7d703          	lhu	a4,-2(a5)
   1599c:	fe070ae3          	beqz	a4,15990 <emul+0xdc>
   159a0:	00c10513          	addi	a0,sp,12
   159a4:	f78ff0ef          	jal	ra,1511c <enormlz>
   159a8:	40a004b3          	neg	s1,a0
   159ac:	02a15703          	lhu	a4,42(sp)
   159b0:	06c0006f          	j	15a1c <emul+0x168>
   159b4:	0125da03          	lhu	s4,18(a1)
   159b8:	0147f733          	and	a4,a5,s4
   159bc:	faf714e3          	bne	a4,a5,15964 <emul+0xb0>
   159c0:	00058513          	mv	a0,a1
   159c4:	adcff0ef          	jal	ra,14ca0 <eisnan.part.0>
   159c8:	f60506e3          	beqz	a0,15934 <emul+0x80>
   159cc:	01490713          	addi	a4,s2,20
   159d0:	00290913          	addi	s2,s2,2
   159d4:	ffe95783          	lhu	a5,-2(s2)
   159d8:	00240413          	addi	s0,s0,2
   159dc:	fef41f23          	sh	a5,-2(s0)
   159e0:	fee918e3          	bne	s2,a4,159d0 <emul+0x11c>
   159e4:	08c12083          	lw	ra,140(sp)
   159e8:	08812403          	lw	s0,136(sp)
   159ec:	08412483          	lw	s1,132(sp)
   159f0:	08012903          	lw	s2,128(sp)
   159f4:	07c12983          	lw	s3,124(sp)
   159f8:	07812a03          	lw	s4,120(sp)
   159fc:	07412a83          	lw	s5,116(sp)
   15a00:	07012b03          	lw	s6,112(sp)
   15a04:	06c12b83          	lw	s7,108(sp)
   15a08:	06812c03          	lw	s8,104(sp)
   15a0c:	06412c83          	lw	s9,100(sp)
   15a10:	09010113          	addi	sp,sp,144
   15a14:	00008067          	ret
   15a18:	00090713          	mv	a4,s2
   15a1c:	00090b13          	mv	s6,s2
   15a20:	02c10793          	addi	a5,sp,44
   15a24:	04010693          	addi	a3,sp,64
   15a28:	02071263          	bnez	a4,15a4c <emul+0x198>
   15a2c:	22f68c63          	beq	a3,a5,15c64 <emul+0x3b0>
   15a30:	00278793          	addi	a5,a5,2
   15a34:	ffe7d703          	lhu	a4,-2(a5)
   15a38:	fe070ae3          	beqz	a4,15a2c <emul+0x178>
   15a3c:	02810513          	addi	a0,sp,40
   15a40:	edcff0ef          	jal	ra,1511c <enormlz>
   15a44:	02a15703          	lhu	a4,42(sp)
   15a48:	40a90b33          	sub	s6,s2,a0
   15a4c:	02815783          	lhu	a5,40(sp)
   15a50:	03898a93          	addi	s5,s3,56
   15a54:	02e99b23          	sh	a4,54(s3)
   15a58:	02f99a23          	sh	a5,52(s3)
   15a5c:	04e98713          	addi	a4,s3,78
   15a60:	000a8793          	mv	a5,s5
   15a64:	00079023          	sh	zero,0(a5)
   15a68:	00278793          	addi	a5,a5,2
   15a6c:	fef71ce3          	bne	a4,a5,15a64 <emul+0x1b0>
   15a70:	04c98b93          	addi	s7,s3,76
   15a74:	00000a13          	li	s4,0
   15a78:	02410913          	addi	s2,sp,36
   15a7c:	01010c93          	addi	s9,sp,16
   15a80:	04610c13          	addi	s8,sp,70
   15a84:	00095503          	lhu	a0,0(s2)
   15a88:	ffe90913          	addi	s2,s2,-2
   15a8c:	14051263          	bnez	a0,15bd0 <emul+0x31c>
   15a90:	04c9d703          	lhu	a4,76(s3)
   15a94:	000b8793          	mv	a5,s7
   15a98:	00ea6a33          	or	s4,s4,a4
   15a9c:	ffe78793          	addi	a5,a5,-2
   15aa0:	0007d703          	lhu	a4,0(a5)
   15aa4:	00e79123          	sh	a4,2(a5)
   15aa8:	ff579ae3          	bne	a5,s5,15a9c <emul+0x1e8>
   15aac:	02099c23          	sh	zero,56(s3)
   15ab0:	fd991ae3          	bne	s2,s9,15a84 <emul+0x1d0>
   15ab4:	03498713          	addi	a4,s3,52
   15ab8:	02810793          	addi	a5,sp,40
   15abc:	04210693          	addi	a3,sp,66
   15ac0:	00075603          	lhu	a2,0(a4)
   15ac4:	00278793          	addi	a5,a5,2
   15ac8:	00270713          	addi	a4,a4,2
   15acc:	fec79f23          	sh	a2,-2(a5)
   15ad0:	fef698e3          	bne	a3,a5,15ac0 <emul+0x20c>
   15ad4:	ffffc6b7          	lui	a3,0xffffc
   15ad8:	016484b3          	add	s1,s1,s6
   15adc:	00268693          	addi	a3,a3,2 # ffffc002 <__BSS_END__+0xfffd551a>
   15ae0:	000a0593          	mv	a1,s4
   15ae4:	02810513          	addi	a0,sp,40
   15ae8:	00098793          	mv	a5,s3
   15aec:	04000713          	li	a4,64
   15af0:	00d486b3          	add	a3,s1,a3
   15af4:	00000613          	li	a2,0
   15af8:	fa0ff0ef          	jal	ra,15298 <emdnorm>
   15afc:	02815703          	lhu	a4,40(sp)
   15b00:	00c15783          	lhu	a5,12(sp)
   15b04:	00040593          	mv	a1,s0
   15b08:	02810513          	addi	a0,sp,40
   15b0c:	40e787b3          	sub	a5,a5,a4
   15b10:	00f037b3          	snez	a5,a5
   15b14:	40f007b3          	neg	a5,a5
   15b18:	02f11423          	sh	a5,40(sp)
   15b1c:	ce9ff0ef          	jal	ra,15804 <emovo.isra.6>
   15b20:	ec5ff06f          	j	159e4 <emul+0x130>
   15b24:	01448713          	addi	a4,s1,20
   15b28:	00248493          	addi	s1,s1,2
   15b2c:	ffe4d783          	lhu	a5,-2(s1)
   15b30:	00240413          	addi	s0,s0,2
   15b34:	fef41f23          	sh	a5,-2(s0)
   15b38:	fee498e3          	bne	s1,a4,15b28 <emul+0x274>
   15b3c:	ea9ff06f          	j	159e4 <emul+0x130>
   15b40:	00048513          	mv	a0,s1
   15b44:	c10ff0ef          	jal	ra,14f54 <eisinf.part.1>
   15b48:	0c050863          	beqz	a0,15c18 <emul+0x364>
   15b4c:	0000f597          	auipc	a1,0xf
   15b50:	74c58593          	addi	a1,a1,1868 # 25298 <ezero>
   15b54:	00090513          	mv	a0,s2
   15b58:	ae0ff0ef          	jal	ra,14e38 <ecmp>
   15b5c:	14050063          	beqz	a0,15c9c <emul+0x3e8>
   15b60:	01295a03          	lhu	s4,18(s2)
   15b64:	dd1ff06f          	j	15934 <emul+0x80>
   15b68:	00048513          	mv	a0,s1
   15b6c:	be8ff0ef          	jal	ra,14f54 <eisinf.part.1>
   15b70:	00051863          	bnez	a0,15b80 <emul+0x2cc>
   15b74:	00090513          	mv	a0,s2
   15b78:	bdcff0ef          	jal	ra,14f54 <eisinf.part.1>
   15b7c:	de0504e3          	beqz	a0,15964 <emul+0xb0>
   15b80:	00048513          	mv	a0,s1
   15b84:	98cff0ef          	jal	ra,14d10 <eisneg>
   15b88:	00050493          	mv	s1,a0
   15b8c:	00090513          	mv	a0,s2
   15b90:	980ff0ef          	jal	ra,14d10 <eisneg>
   15b94:	40a48533          	sub	a0,s1,a0
   15b98:	00a03533          	snez	a0,a0
   15b9c:	00f51513          	slli	a0,a0,0xf
   15ba0:	00a41923          	sh	a0,18(s0)
   15ba4:	01240713          	addi	a4,s0,18
   15ba8:	00040793          	mv	a5,s0
   15bac:	00278793          	addi	a5,a5,2
   15bb0:	fe079f23          	sh	zero,-2(a5)
   15bb4:	fee79ce3          	bne	a5,a4,15bac <emul+0x2f8>
   15bb8:	01245783          	lhu	a5,18(s0)
   15bbc:	00008737          	lui	a4,0x8
   15bc0:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x8075>
   15bc4:	00e7e7b3          	or	a5,a5,a4
   15bc8:	00f41923          	sh	a5,18(s0)
   15bcc:	e19ff06f          	j	159e4 <emul+0x130>
   15bd0:	04410613          	addi	a2,sp,68
   15bd4:	02810593          	addi	a1,sp,40
   15bd8:	fe9fe0ef          	jal	ra,14bc0 <m16m>
   15bdc:	000b8613          	mv	a2,s7
   15be0:	00000593          	li	a1,0
   15be4:	05c10713          	addi	a4,sp,92
   15be8:	00065503          	lhu	a0,0(a2)
   15bec:	00075783          	lhu	a5,0(a4)
   15bf0:	ffe60613          	addi	a2,a2,-2
   15bf4:	ffe70713          	addi	a4,a4,-2
   15bf8:	00a787b3          	add	a5,a5,a0
   15bfc:	00b787b3          	add	a5,a5,a1
   15c00:	00f61123          	sh	a5,2(a2)
   15c04:	0107d793          	srli	a5,a5,0x10
   15c08:	0017f593          	andi	a1,a5,1
   15c0c:	fd871ee3          	bne	a4,s8,15be8 <emul+0x334>
   15c10:	e81ff06f          	j	15a90 <emul+0x1dc>
   15c14:	0124da83          	lhu	s5,18(s1)
   15c18:	000087b7          	lui	a5,0x8
   15c1c:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   15c20:	0157fab3          	and	s5,a5,s5
   15c24:	010a9a93          	slli	s5,s5,0x10
   15c28:	010ada93          	srli	s5,s5,0x10
   15c2c:	d2fa9ce3          	bne	s5,a5,15964 <emul+0xb0>
   15c30:	00048513          	mv	a0,s1
   15c34:	b20ff0ef          	jal	ra,14f54 <eisinf.part.1>
   15c38:	f40514e3          	bnez	a0,15b80 <emul+0x2cc>
   15c3c:	01295783          	lhu	a5,18(s2)
   15c40:	fff7c793          	not	a5,a5
   15c44:	01179713          	slli	a4,a5,0x11
   15c48:	d0071ee3          	bnez	a4,15964 <emul+0xb0>
   15c4c:	f29ff06f          	j	15b74 <emul+0x2c0>
   15c50:	01440793          	addi	a5,s0,20
   15c54:	00240413          	addi	s0,s0,2
   15c58:	fe041f23          	sh	zero,-2(s0)
   15c5c:	fe879ce3          	bne	a5,s0,15c54 <emul+0x3a0>
   15c60:	d85ff06f          	j	159e4 <emul+0x130>
   15c64:	01440793          	addi	a5,s0,20
   15c68:	00240413          	addi	s0,s0,2
   15c6c:	fe041f23          	sh	zero,-2(s0)
   15c70:	fef41ce3          	bne	s0,a5,15c68 <emul+0x3b4>
   15c74:	d71ff06f          	j	159e4 <emul+0x130>
   15c78:	0000f597          	auipc	a1,0xf
   15c7c:	62058593          	addi	a1,a1,1568 # 25298 <ezero>
   15c80:	00048513          	mv	a0,s1
   15c84:	9b4ff0ef          	jal	ra,14e38 <ecmp>
   15c88:	00050a63          	beqz	a0,15c9c <emul+0x3e8>
   15c8c:	0124d783          	lhu	a5,18(s1)
   15c90:	00fa77b3          	and	a5,s4,a5
   15c94:	f9478ee3          	beq	a5,s4,15c30 <emul+0x37c>
   15c98:	fa5ff06f          	j	15c3c <emul+0x388>
   15c9c:	01040713          	addi	a4,s0,16
   15ca0:	00040793          	mv	a5,s0
   15ca4:	00278793          	addi	a5,a5,2
   15ca8:	fe079f23          	sh	zero,-2(a5)
   15cac:	fee79ce3          	bne	a5,a4,15ca4 <emul+0x3f0>
   15cb0:	7fffc7b7          	lui	a5,0x7fffc
   15cb4:	00f42823          	sw	a5,16(s0)
   15cb8:	d2dff06f          	j	159e4 <emul+0x130>

00015cbc <ediv>:
   15cbc:	01255783          	lhu	a5,18(a0)
   15cc0:	f5010113          	addi	sp,sp,-176
   15cc4:	0a812423          	sw	s0,168(sp)
   15cc8:	fff7c793          	not	a5,a5
   15ccc:	0a912223          	sw	s1,164(sp)
   15cd0:	0b212023          	sw	s2,160(sp)
   15cd4:	09812423          	sw	s8,136(sp)
   15cd8:	0a112623          	sw	ra,172(sp)
   15cdc:	09312e23          	sw	s3,156(sp)
   15ce0:	09412c23          	sw	s4,152(sp)
   15ce4:	09512a23          	sw	s5,148(sp)
   15ce8:	09612823          	sw	s6,144(sp)
   15cec:	09712623          	sw	s7,140(sp)
   15cf0:	09912223          	sw	s9,132(sp)
   15cf4:	09a12023          	sw	s10,128(sp)
   15cf8:	07b12e23          	sw	s11,124(sp)
   15cfc:	01179713          	slli	a4,a5,0x11
   15d00:	00050493          	mv	s1,a0
   15d04:	00058913          	mv	s2,a1
   15d08:	00060413          	mv	s0,a2
   15d0c:	00068c13          	mv	s8,a3
   15d10:	00071663          	bnez	a4,15d1c <ediv+0x60>
   15d14:	f8dfe0ef          	jal	ra,14ca0 <eisnan.part.0>
   15d18:	38051263          	bnez	a0,1609c <ediv+0x3e0>
   15d1c:	01295783          	lhu	a5,18(s2)
   15d20:	fff7c793          	not	a5,a5
   15d24:	01179713          	slli	a4,a5,0x11
   15d28:	08070e63          	beqz	a4,15dc4 <ediv+0x108>
   15d2c:	0000f597          	auipc	a1,0xf
   15d30:	56c58593          	addi	a1,a1,1388 # 25298 <ezero>
   15d34:	00048513          	mv	a0,s1
   15d38:	900ff0ef          	jal	ra,14e38 <ecmp>
   15d3c:	10050463          	beqz	a0,15e44 <ediv+0x188>
   15d40:	0124d983          	lhu	s3,18(s1)
   15d44:	01295703          	lhu	a4,18(s2)
   15d48:	000087b7          	lui	a5,0x8
   15d4c:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   15d50:	0137f9b3          	and	s3,a5,s3
   15d54:	00e7fa33          	and	s4,a5,a4
   15d58:	08f99a63          	bne	s3,a5,15dec <ediv+0x130>
   15d5c:	00048513          	mv	a0,s1
   15d60:	9f4ff0ef          	jal	ra,14f54 <eisinf.part.1>
   15d64:	10050a63          	beqz	a0,15e78 <ediv+0x1bc>
   15d68:	013a1863          	bne	s4,s3,15d78 <ediv+0xbc>
   15d6c:	00090513          	mv	a0,s2
   15d70:	9e4ff0ef          	jal	ra,14f54 <eisinf.part.1>
   15d74:	0e051263          	bnez	a0,15e58 <ediv+0x19c>
   15d78:	01440793          	addi	a5,s0,20
   15d7c:	00240413          	addi	s0,s0,2
   15d80:	fe041f23          	sh	zero,-2(s0)
   15d84:	fef41ce3          	bne	s0,a5,15d7c <ediv+0xc0>
   15d88:	0ac12083          	lw	ra,172(sp)
   15d8c:	0a812403          	lw	s0,168(sp)
   15d90:	0a412483          	lw	s1,164(sp)
   15d94:	0a012903          	lw	s2,160(sp)
   15d98:	09c12983          	lw	s3,156(sp)
   15d9c:	09812a03          	lw	s4,152(sp)
   15da0:	09412a83          	lw	s5,148(sp)
   15da4:	09012b03          	lw	s6,144(sp)
   15da8:	08c12b83          	lw	s7,140(sp)
   15dac:	08812c03          	lw	s8,136(sp)
   15db0:	08412c83          	lw	s9,132(sp)
   15db4:	08012d03          	lw	s10,128(sp)
   15db8:	07c12d83          	lw	s11,124(sp)
   15dbc:	0b010113          	addi	sp,sp,176
   15dc0:	00008067          	ret
   15dc4:	00090513          	mv	a0,s2
   15dc8:	ed9fe0ef          	jal	ra,14ca0 <eisnan.part.0>
   15dcc:	f60500e3          	beqz	a0,15d2c <ediv+0x70>
   15dd0:	01490713          	addi	a4,s2,20
   15dd4:	00290913          	addi	s2,s2,2
   15dd8:	ffe95783          	lhu	a5,-2(s2)
   15ddc:	00240413          	addi	s0,s0,2
   15de0:	fef41f23          	sh	a5,-2(s0)
   15de4:	fee918e3          	bne	s2,a4,15dd4 <ediv+0x118>
   15de8:	fa1ff06f          	j	15d88 <ediv+0xcc>
   15dec:	08fa0863          	beq	s4,a5,15e7c <ediv+0x1c0>
   15df0:	01c10593          	addi	a1,sp,28
   15df4:	00048513          	mv	a0,s1
   15df8:	f59fe0ef          	jal	ra,14d50 <emovi>
   15dfc:	00090513          	mv	a0,s2
   15e00:	03810593          	addi	a1,sp,56
   15e04:	f4dfe0ef          	jal	ra,14d50 <emovi>
   15e08:	03a15c83          	lhu	s9,58(sp)
   15e0c:	01e15903          	lhu	s2,30(sp)
   15e10:	0c0c9463          	bnez	s9,15ed8 <ediv+0x21c>
   15e14:	03c10793          	addi	a5,sp,60
   15e18:	05010493          	addi	s1,sp,80
   15e1c:	34f48863          	beq	s1,a5,1616c <ediv+0x4b0>
   15e20:	00278793          	addi	a5,a5,2
   15e24:	ffe7d703          	lhu	a4,-2(a5)
   15e28:	fe070ae3          	beqz	a4,15e1c <ediv+0x160>
   15e2c:	03810513          	addi	a0,sp,56
   15e30:	aecff0ef          	jal	ra,1511c <enormlz>
   15e34:	40a007b3          	neg	a5,a0
   15e38:	00f12623          	sw	a5,12(sp)
   15e3c:	01e15603          	lhu	a2,30(sp)
   15e40:	0a00006f          	j	15ee0 <ediv+0x224>
   15e44:	0000f597          	auipc	a1,0xf
   15e48:	45458593          	addi	a1,a1,1108 # 25298 <ezero>
   15e4c:	00090513          	mv	a0,s2
   15e50:	fe9fe0ef          	jal	ra,14e38 <ecmp>
   15e54:	ee0516e3          	bnez	a0,15d40 <ediv+0x84>
   15e58:	01040713          	addi	a4,s0,16
   15e5c:	00040793          	mv	a5,s0
   15e60:	00278793          	addi	a5,a5,2
   15e64:	fe079f23          	sh	zero,-2(a5)
   15e68:	fee79ce3          	bne	a5,a4,15e60 <ediv+0x1a4>
   15e6c:	7fffc7b7          	lui	a5,0x7fffc
   15e70:	00f42823          	sw	a5,16(s0)
   15e74:	f15ff06f          	j	15d88 <ediv+0xcc>
   15e78:	f73a1ce3          	bne	s4,s3,15df0 <ediv+0x134>
   15e7c:	00090513          	mv	a0,s2
   15e80:	8d4ff0ef          	jal	ra,14f54 <eisinf.part.1>
   15e84:	f60506e3          	beqz	a0,15df0 <ediv+0x134>
   15e88:	00048513          	mv	a0,s1
   15e8c:	e85fe0ef          	jal	ra,14d10 <eisneg>
   15e90:	00050493          	mv	s1,a0
   15e94:	00090513          	mv	a0,s2
   15e98:	e79fe0ef          	jal	ra,14d10 <eisneg>
   15e9c:	40a487b3          	sub	a5,s1,a0
   15ea0:	00f037b3          	snez	a5,a5
   15ea4:	00f79793          	slli	a5,a5,0xf
   15ea8:	00f41923          	sh	a5,18(s0)
   15eac:	01240713          	addi	a4,s0,18
   15eb0:	00040793          	mv	a5,s0
   15eb4:	00278793          	addi	a5,a5,2 # 7fffc002 <__BSS_END__+0x7ffd551a>
   15eb8:	fe079f23          	sh	zero,-2(a5)
   15ebc:	fee79ce3          	bne	a5,a4,15eb4 <ediv+0x1f8>
   15ec0:	01245783          	lhu	a5,18(s0)
   15ec4:	00008737          	lui	a4,0x8
   15ec8:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x8075>
   15ecc:	00e7e7b3          	or	a5,a5,a4
   15ed0:	00f41923          	sh	a5,18(s0)
   15ed4:	eb5ff06f          	j	15d88 <ediv+0xcc>
   15ed8:	01912623          	sw	s9,12(sp)
   15edc:	00090613          	mv	a2,s2
   15ee0:	01212423          	sw	s2,8(sp)
   15ee4:	02010793          	addi	a5,sp,32
   15ee8:	03410693          	addi	a3,sp,52
   15eec:	02061263          	bnez	a2,15f10 <ediv+0x254>
   15ef0:	28f68863          	beq	a3,a5,16180 <ediv+0x4c4>
   15ef4:	00278793          	addi	a5,a5,2
   15ef8:	ffe7d703          	lhu	a4,-2(a5)
   15efc:	fe070ae3          	beqz	a4,15ef0 <ediv+0x234>
   15f00:	01c10513          	addi	a0,sp,28
   15f04:	a18ff0ef          	jal	ra,1511c <enormlz>
   15f08:	40a907b3          	sub	a5,s2,a0
   15f0c:	00f12423          	sw	a5,8(sp)
   15f10:	03812703          	lw	a4,56(sp)
   15f14:	038c0d93          	addi	s11,s8,56
   15f18:	000d8793          	mv	a5,s11
   15f1c:	02ec2a23          	sw	a4,52(s8)
   15f20:	04ec0993          	addi	s3,s8,78
   15f24:	00278793          	addi	a5,a5,2
   15f28:	fe079f23          	sh	zero,-2(a5)
   15f2c:	fef99ce3          	bne	s3,a5,15f24 <ediv+0x268>
   15f30:	03810513          	addi	a0,sp,56
   15f34:	bb5fe0ef          	jal	ra,14ae8 <eshdn1>
   15f38:	02215d03          	lhu	s10,34(sp)
   15f3c:	00010ab7          	lui	s5,0x10
   15f40:	05010493          	addi	s1,sp,80
   15f44:	010d1b13          	slli	s6,s10,0x10
   15f48:	41ab0b33          	sub	s6,s6,s10
   15f4c:	03a10b93          	addi	s7,sp,58
   15f50:	fffa8a93          	addi	s5,s5,-1 # ffff <register_fini-0x75>
   15f54:	06e10913          	addi	s2,sp,110
   15f58:	05610a13          	addi	s4,sp,86
   15f5c:	03c15503          	lhu	a0,60(sp)
   15f60:	03e15783          	lhu	a5,62(sp)
   15f64:	000a8c93          	mv	s9,s5
   15f68:	01051513          	slli	a0,a0,0x10
   15f6c:	00f50533          	add	a0,a0,a5
   15f70:	00ab6a63          	bltu	s6,a0,15f84 <ediv+0x2c8>
   15f74:	000d0593          	mv	a1,s10
   15f78:	f1cfa0ef          	jal	ra,10694 <__udivsi3>
   15f7c:	01051c93          	slli	s9,a0,0x10
   15f80:	010cdc93          	srli	s9,s9,0x10
   15f84:	05410613          	addi	a2,sp,84
   15f88:	01c10593          	addi	a1,sp,28
   15f8c:	000c8513          	mv	a0,s9
   15f90:	c31fe0ef          	jal	ra,14bc0 <m16m>
   15f94:	03c10613          	addi	a2,sp,60
   15f98:	05810793          	addi	a5,sp,88
   15f9c:	00278793          	addi	a5,a5,2
   15fa0:	00260613          	addi	a2,a2,2
   15fa4:	ffe7d503          	lhu	a0,-2(a5)
   15fa8:	ffe65583          	lhu	a1,-2(a2)
   15fac:	10b51663          	bne	a0,a1,160b8 <ediv+0x3fc>
   15fb0:	ff2796e3          	bne	a5,s2,15f9c <ediv+0x2e0>
   15fb4:	00000513          	li	a0,0
   15fb8:	06c10593          	addi	a1,sp,108
   15fbc:	00048613          	mv	a2,s1
   15fc0:	00065783          	lhu	a5,0(a2)
   15fc4:	0005d803          	lhu	a6,0(a1)
   15fc8:	ffe60613          	addi	a2,a2,-2
   15fcc:	40a787b3          	sub	a5,a5,a0
   15fd0:	410787b3          	sub	a5,a5,a6
   15fd4:	00f61123          	sh	a5,2(a2)
   15fd8:	0107d793          	srli	a5,a5,0x10
   15fdc:	ffe58593          	addi	a1,a1,-2
   15fe0:	0017f513          	andi	a0,a5,1
   15fe4:	fd761ee3          	bne	a2,s7,15fc0 <ediv+0x304>
   15fe8:	019d9023          	sh	s9,0(s11)
   15fec:	03c10793          	addi	a5,sp,60
   15ff0:	00278793          	addi	a5,a5,2
   15ff4:	0007d683          	lhu	a3,0(a5)
   15ff8:	fed79f23          	sh	a3,-2(a5)
   15ffc:	fe979ae3          	bne	a5,s1,15ff0 <ediv+0x334>
   16000:	04011823          	sh	zero,80(sp)
   16004:	002d8d93          	addi	s11,s11,2
   16008:	f5b99ae3          	bne	s3,s11,15f5c <ediv+0x2a0>
   1600c:	00000593          	li	a1,0
   16010:	03c10793          	addi	a5,sp,60
   16014:	05210693          	addi	a3,sp,82
   16018:	00278793          	addi	a5,a5,2
   1601c:	ffe7d703          	lhu	a4,-2(a5)
   16020:	00e5e5b3          	or	a1,a1,a4
   16024:	fed79ae3          	bne	a5,a3,16018 <ediv+0x35c>
   16028:	00b035b3          	snez	a1,a1
   1602c:	034c0713          	addi	a4,s8,52
   16030:	03810793          	addi	a5,sp,56
   16034:	00075603          	lhu	a2,0(a4)
   16038:	00278793          	addi	a5,a5,2
   1603c:	00270713          	addi	a4,a4,2
   16040:	fec79f23          	sh	a2,-2(a5)
   16044:	fef698e3          	bne	a3,a5,16034 <ediv+0x378>
   16048:	00c12783          	lw	a5,12(sp)
   1604c:	00812703          	lw	a4,8(sp)
   16050:	000046b7          	lui	a3,0x4
   16054:	fff68693          	addi	a3,a3,-1 # 3fff <register_fini-0xc075>
   16058:	40e78cb3          	sub	s9,a5,a4
   1605c:	03810513          	addi	a0,sp,56
   16060:	000c0793          	mv	a5,s8
   16064:	04000713          	li	a4,64
   16068:	00dc86b3          	add	a3,s9,a3
   1606c:	00000613          	li	a2,0
   16070:	a28ff0ef          	jal	ra,15298 <emdnorm>
   16074:	03815703          	lhu	a4,56(sp)
   16078:	01c15783          	lhu	a5,28(sp)
   1607c:	00040593          	mv	a1,s0
   16080:	03810513          	addi	a0,sp,56
   16084:	40e787b3          	sub	a5,a5,a4
   16088:	00f037b3          	snez	a5,a5
   1608c:	40f007b3          	neg	a5,a5
   16090:	02f11c23          	sh	a5,56(sp)
   16094:	f70ff0ef          	jal	ra,15804 <emovo.isra.6>
   16098:	cf1ff06f          	j	15d88 <ediv+0xcc>
   1609c:	01448713          	addi	a4,s1,20
   160a0:	00248493          	addi	s1,s1,2
   160a4:	ffe4d783          	lhu	a5,-2(s1)
   160a8:	00240413          	addi	s0,s0,2
   160ac:	fef41f23          	sh	a5,-2(s0)
   160b0:	fee498e3          	bne	s1,a4,160a0 <ediv+0x3e4>
   160b4:	cd5ff06f          	j	15d88 <ediv+0xcc>
   160b8:	eea5fee3          	bgeu	a1,a0,15fb4 <ediv+0x2f8>
   160bc:	fffc8793          	addi	a5,s9,-1
   160c0:	01079893          	slli	a7,a5,0x10
   160c4:	0108d893          	srli	a7,a7,0x10
   160c8:	00000513          	li	a0,0
   160cc:	03410593          	addi	a1,sp,52
   160d0:	06c10613          	addi	a2,sp,108
   160d4:	00065783          	lhu	a5,0(a2)
   160d8:	0005d803          	lhu	a6,0(a1)
   160dc:	ffe60613          	addi	a2,a2,-2
   160e0:	40a787b3          	sub	a5,a5,a0
   160e4:	410787b3          	sub	a5,a5,a6
   160e8:	00f61123          	sh	a5,2(a2)
   160ec:	0107d793          	srli	a5,a5,0x10
   160f0:	ffe58593          	addi	a1,a1,-2
   160f4:	0017f513          	andi	a0,a5,1
   160f8:	fd461ee3          	bne	a2,s4,160d4 <ediv+0x418>
   160fc:	03c10613          	addi	a2,sp,60
   16100:	05810793          	addi	a5,sp,88
   16104:	00278793          	addi	a5,a5,2
   16108:	00260613          	addi	a2,a2,2
   1610c:	ffe7d503          	lhu	a0,-2(a5)
   16110:	ffe65583          	lhu	a1,-2(a2)
   16114:	00b51863          	bne	a0,a1,16124 <ediv+0x468>
   16118:	ff2796e3          	bne	a5,s2,16104 <ediv+0x448>
   1611c:	00088c93          	mv	s9,a7
   16120:	e95ff06f          	j	15fb4 <ediv+0x2f8>
   16124:	fea5fce3          	bgeu	a1,a0,1611c <ediv+0x460>
   16128:	ffec8693          	addi	a3,s9,-2
   1612c:	01069c93          	slli	s9,a3,0x10
   16130:	010cdc93          	srli	s9,s9,0x10
   16134:	00000513          	li	a0,0
   16138:	03410593          	addi	a1,sp,52
   1613c:	06c10613          	addi	a2,sp,108
   16140:	00065783          	lhu	a5,0(a2)
   16144:	0005d803          	lhu	a6,0(a1)
   16148:	ffe60613          	addi	a2,a2,-2
   1614c:	40a787b3          	sub	a5,a5,a0
   16150:	410787b3          	sub	a5,a5,a6
   16154:	00f61123          	sh	a5,2(a2)
   16158:	0107d793          	srli	a5,a5,0x10
   1615c:	ffe58593          	addi	a1,a1,-2
   16160:	0017f513          	andi	a0,a5,1
   16164:	fd461ee3          	bne	a2,s4,16140 <ediv+0x484>
   16168:	e4dff06f          	j	15fb4 <ediv+0x2f8>
   1616c:	01440793          	addi	a5,s0,20
   16170:	00240413          	addi	s0,s0,2
   16174:	fe041f23          	sh	zero,-2(s0)
   16178:	fe879ce3          	bne	a5,s0,16170 <ediv+0x4b4>
   1617c:	c0dff06f          	j	15d88 <ediv+0xcc>
   16180:	01c15703          	lhu	a4,28(sp)
   16184:	03815783          	lhu	a5,56(sp)
   16188:	00f70463          	beq	a4,a5,16190 <ediv+0x4d4>
   1618c:	00008637          	lui	a2,0x8
   16190:	00c41923          	sh	a2,18(s0)
   16194:	01240713          	addi	a4,s0,18
   16198:	00040793          	mv	a5,s0
   1619c:	00278793          	addi	a5,a5,2
   161a0:	fe079f23          	sh	zero,-2(a5)
   161a4:	fef71ce3          	bne	a4,a5,1619c <ediv+0x4e0>
   161a8:	01245783          	lhu	a5,18(s0)
   161ac:	00008737          	lui	a4,0x8
   161b0:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x8075>
   161b4:	00e7e7b3          	or	a5,a5,a4
   161b8:	00f41923          	sh	a5,18(s0)
   161bc:	bcdff06f          	j	15d88 <ediv+0xcc>

000161c0 <e113toe.isra.8>:
   161c0:	fd010113          	addi	sp,sp,-48
   161c4:	02812423          	sw	s0,40(sp)
   161c8:	02112623          	sw	ra,44(sp)
   161cc:	00058413          	mv	s0,a1
   161d0:	00410793          	addi	a5,sp,4
   161d4:	01e10713          	addi	a4,sp,30
   161d8:	00278793          	addi	a5,a5,2
   161dc:	fe079f23          	sh	zero,-2(a5)
   161e0:	fee79ce3          	bne	a5,a4,161d8 <e113toe.isra.8+0x18>
   161e4:	00e55603          	lhu	a2,14(a0)
   161e8:	01061793          	slli	a5,a2,0x10
   161ec:	4107d793          	srai	a5,a5,0x10
   161f0:	0607ca63          	bltz	a5,16264 <e113toe.isra.8+0xa4>
   161f4:	000087b7          	lui	a5,0x8
   161f8:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   161fc:	00011223          	sh	zero,4(sp)
   16200:	00f67633          	and	a2,a2,a5
   16204:	06f60c63          	beq	a2,a5,1627c <e113toe.isra.8+0xbc>
   16208:	00e50793          	addi	a5,a0,14
   1620c:	00c11323          	sh	a2,6(sp)
   16210:	00a10713          	addi	a4,sp,10
   16214:	ffe78793          	addi	a5,a5,-2
   16218:	0007d683          	lhu	a3,0(a5)
   1621c:	00270713          	addi	a4,a4,2
   16220:	fed71f23          	sh	a3,-2(a4)
   16224:	fef518e3          	bne	a0,a5,16214 <e113toe.isra.8+0x54>
   16228:	02061263          	bnez	a2,1624c <e113toe.isra.8+0x8c>
   1622c:	00011423          	sh	zero,8(sp)
   16230:	00040593          	mv	a1,s0
   16234:	00410513          	addi	a0,sp,4
   16238:	dccff0ef          	jal	ra,15804 <emovo.isra.6>
   1623c:	02c12083          	lw	ra,44(sp)
   16240:	02812403          	lw	s0,40(sp)
   16244:	03010113          	addi	sp,sp,48
   16248:	00008067          	ret
   1624c:	00100793          	li	a5,1
   16250:	fff00593          	li	a1,-1
   16254:	00410513          	addi	a0,sp,4
   16258:	00f11423          	sh	a5,8(sp)
   1625c:	d15fe0ef          	jal	ra,14f70 <eshift.part.3>
   16260:	fd1ff06f          	j	16230 <e113toe.isra.8+0x70>
   16264:	fff00793          	li	a5,-1
   16268:	00f11223          	sh	a5,4(sp)
   1626c:	000087b7          	lui	a5,0x8
   16270:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   16274:	00f67633          	and	a2,a2,a5
   16278:	f8f618e3          	bne	a2,a5,16208 <e113toe.isra.8+0x48>
   1627c:	00050793          	mv	a5,a0
   16280:	00e50693          	addi	a3,a0,14
   16284:	0007d703          	lhu	a4,0(a5)
   16288:	00278793          	addi	a5,a5,2
   1628c:	04071c63          	bnez	a4,162e4 <e113toe.isra.8+0x124>
   16290:	fef69ae3          	bne	a3,a5,16284 <e113toe.isra.8+0xc4>
   16294:	01440713          	addi	a4,s0,20
   16298:	00040793          	mv	a5,s0
   1629c:	00278793          	addi	a5,a5,2
   162a0:	fe079f23          	sh	zero,-2(a5)
   162a4:	fee79ce3          	bne	a5,a4,1629c <e113toe.isra.8+0xdc>
   162a8:	01240713          	addi	a4,s0,18
   162ac:	00040793          	mv	a5,s0
   162b0:	00278793          	addi	a5,a5,2
   162b4:	fe079f23          	sh	zero,-2(a5)
   162b8:	fee79ce3          	bne	a5,a4,162b0 <e113toe.isra.8+0xf0>
   162bc:	01245783          	lhu	a5,18(s0)
   162c0:	00008737          	lui	a4,0x8
   162c4:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x8075>
   162c8:	00e7e7b3          	or	a5,a5,a4
   162cc:	00f41923          	sh	a5,18(s0)
   162d0:	00e51783          	lh	a5,14(a0)
   162d4:	f607d4e3          	bgez	a5,1623c <e113toe.isra.8+0x7c>
   162d8:	00040513          	mv	a0,s0
   162dc:	9e9fe0ef          	jal	ra,14cc4 <eneg>
   162e0:	f5dff06f          	j	1623c <e113toe.isra.8+0x7c>
   162e4:	01040713          	addi	a4,s0,16
   162e8:	00040793          	mv	a5,s0
   162ec:	00278793          	addi	a5,a5,2
   162f0:	fe079f23          	sh	zero,-2(a5)
   162f4:	fee79ce3          	bne	a5,a4,162ec <e113toe.isra.8+0x12c>
   162f8:	7fffc7b7          	lui	a5,0x7fffc
   162fc:	00f42823          	sw	a5,16(s0)
   16300:	f3dff06f          	j	1623c <e113toe.isra.8+0x7c>

00016304 <_ldtoa_r>:
   16304:	0005ae83          	lw	t4,0(a1)
   16308:	0045ae03          	lw	t3,4(a1)
   1630c:	0085a303          	lw	t1,8(a1)
   16310:	00c5a583          	lw	a1,12(a1)
   16314:	e1010113          	addi	sp,sp,-496
   16318:	04052883          	lw	a7,64(a0)
   1631c:	02b12e23          	sw	a1,60(sp)
   16320:	fff00593          	li	a1,-1
   16324:	16b12023          	sw	a1,352(sp)
   16328:	09000593          	li	a1,144
   1632c:	1e812423          	sw	s0,488(sp)
   16330:	1d612823          	sw	s6,464(sp)
   16334:	1e112623          	sw	ra,492(sp)
   16338:	1e912223          	sw	s1,484(sp)
   1633c:	1f212023          	sw	s2,480(sp)
   16340:	1d312e23          	sw	s3,476(sp)
   16344:	1d412c23          	sw	s4,472(sp)
   16348:	1d512a23          	sw	s5,468(sp)
   1634c:	1d712623          	sw	s7,460(sp)
   16350:	1d812423          	sw	s8,456(sp)
   16354:	1d912223          	sw	s9,452(sp)
   16358:	1da12023          	sw	s10,448(sp)
   1635c:	1bb12e23          	sw	s11,444(sp)
   16360:	03d12823          	sw	t4,48(sp)
   16364:	03c12a23          	sw	t3,52(sp)
   16368:	02612c23          	sw	t1,56(sp)
   1636c:	16b12223          	sw	a1,356(sp)
   16370:	00c12423          	sw	a2,8(sp)
   16374:	00d12823          	sw	a3,16(sp)
   16378:	00e12a23          	sw	a4,20(sp)
   1637c:	03012023          	sw	a6,32(sp)
   16380:	00050b13          	mv	s6,a0
   16384:	00078413          	mv	s0,a5
   16388:	02088263          	beqz	a7,163ac <_ldtoa_r+0xa8>
   1638c:	04452703          	lw	a4,68(a0)
   16390:	00100793          	li	a5,1
   16394:	00088593          	mv	a1,a7
   16398:	00e797b3          	sll	a5,a5,a4
   1639c:	00e8a223          	sw	a4,4(a7)
   163a0:	00f8a423          	sw	a5,8(a7)
   163a4:	160020ef          	jal	ra,18504 <_Bfree>
   163a8:	040b2023          	sw	zero,64(s6)
   163ac:	06010a13          	addi	s4,sp,96
   163b0:	000a0593          	mv	a1,s4
   163b4:	03010513          	addi	a0,sp,48
   163b8:	e09ff0ef          	jal	ra,161c0 <e113toe.isra.8>
   163bc:	000a0513          	mv	a0,s4
   163c0:	951fe0ef          	jal	ra,14d10 <eisneg>
   163c4:	00812703          	lw	a4,8(sp)
   163c8:	00a03533          	snez	a0,a0
   163cc:	00a42023          	sw	a0,0(s0)
   163d0:	00300793          	li	a5,3
   163d4:	1af704e3          	beq	a4,a5,16d7c <_ldtoa_r+0xa78>
   163d8:	01400793          	li	a5,20
   163dc:	00f12623          	sw	a5,12(sp)
   163e0:	600710e3          	bnez	a4,171e0 <_ldtoa_r+0xedc>
   163e4:	07215783          	lhu	a5,114(sp)
   163e8:	16412703          	lw	a4,356(sp)
   163ec:	fff7c793          	not	a5,a5
   163f0:	00e12e23          	sw	a4,28(sp)
   163f4:	01179713          	slli	a4,a5,0x11
   163f8:	00071863          	bnez	a4,16408 <_ldtoa_r+0x104>
   163fc:	000a0513          	mv	a0,s4
   16400:	8a1fe0ef          	jal	ra,14ca0 <eisnan.part.0>
   16404:	420514e3          	bnez	a0,1702c <_ldtoa_r+0xd28>
   16408:	09000793          	li	a5,144
   1640c:	16f12223          	sw	a5,356(sp)
   16410:	07c10713          	addi	a4,sp,124
   16414:	000a0793          	mv	a5,s4
   16418:	07410613          	addi	a2,sp,116
   1641c:	00278793          	addi	a5,a5,2 # 7fffc002 <__BSS_END__+0x7ffd551a>
   16420:	ffe7d683          	lhu	a3,-2(a5)
   16424:	00270713          	addi	a4,a4,2
   16428:	fed71f23          	sh	a3,-2(a4)
   1642c:	fec798e3          	bne	a5,a2,1641c <_ldtoa_r+0x118>
   16430:	08e15603          	lhu	a2,142(sp)
   16434:	00012c23          	sw	zero,24(sp)
   16438:	01061793          	slli	a5,a2,0x10
   1643c:	4107d793          	srai	a5,a5,0x10
   16440:	0007de63          	bgez	a5,1645c <_ldtoa_r+0x158>
   16444:	01161613          	slli	a2,a2,0x11
   16448:	000107b7          	lui	a5,0x10
   1644c:	01165613          	srli	a2,a2,0x11
   16450:	fff78793          	addi	a5,a5,-1 # ffff <register_fini-0x75>
   16454:	08c11723          	sh	a2,142(sp)
   16458:	00f12c23          	sw	a5,24(sp)
   1645c:	00000693          	li	a3,0
   16460:	09810793          	addi	a5,sp,152
   16464:	0000f717          	auipc	a4,0xf
   16468:	e4870713          	addi	a4,a4,-440 # 252ac <eone>
   1646c:	0ac10d93          	addi	s11,sp,172
   16470:	0080006f          	j	16478 <_ldtoa_r+0x174>
   16474:	00075683          	lhu	a3,0(a4)
   16478:	00278793          	addi	a5,a5,2
   1647c:	fed79f23          	sh	a3,-2(a5)
   16480:	00270713          	addi	a4,a4,2
   16484:	ffb798e3          	bne	a5,s11,16474 <_ldtoa_r+0x170>
   16488:	16060663          	beqz	a2,165f4 <_ldtoa_r+0x2f0>
   1648c:	000087b7          	lui	a5,0x8
   16490:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   16494:	58f602e3          	beq	a2,a5,17218 <_ldtoa_r+0xf14>
   16498:	08c11783          	lh	a5,140(sp)
   1649c:	6007d4e3          	bgez	a5,172a4 <_ldtoa_r+0xfa0>
   164a0:	07c10593          	addi	a1,sp,124
   164a4:	0000f517          	auipc	a0,0xf
   164a8:	e0850513          	addi	a0,a0,-504 # 252ac <eone>
   164ac:	98dfe0ef          	jal	ra,14e38 <ecmp>
   164b0:	14050e63          	beqz	a0,1660c <_ldtoa_r+0x308>
   164b4:	0e054ae3          	bltz	a0,16da8 <_ldtoa_r+0xaa4>
   164b8:	08e15783          	lhu	a5,142(sp)
   164bc:	680790e3          	bnez	a5,1733c <_ldtoa_r+0x1038>
   164c0:	08c11783          	lh	a5,140(sp)
   164c4:	00000493          	li	s1,0
   164c8:	16010993          	addi	s3,sp,352
   164cc:	0207c663          	bltz	a5,164f8 <_ldtoa_r+0x1f4>
   164d0:	0000f417          	auipc	s0,0xf
   164d4:	ee040413          	addi	s0,s0,-288 # 253b0 <etens+0xf0>
   164d8:	07c10613          	addi	a2,sp,124
   164dc:	00098693          	mv	a3,s3
   164e0:	00060593          	mv	a1,a2
   164e4:	00040513          	mv	a0,s0
   164e8:	bccff0ef          	jal	ra,158b4 <emul>
   164ec:	08c11783          	lh	a5,140(sp)
   164f0:	fff48493          	addi	s1,s1,-1
   164f4:	fe07d2e3          	bgez	a5,164d8 <_ldtoa_r+0x1d4>
   164f8:	0d010413          	addi	s0,sp,208
   164fc:	0e810b93          	addi	s7,sp,232
   16500:	00040713          	mv	a4,s0
   16504:	07c10793          	addi	a5,sp,124
   16508:	09010613          	addi	a2,sp,144
   1650c:	00278793          	addi	a5,a5,2
   16510:	ffe7d683          	lhu	a3,-2(a5)
   16514:	00270713          	addi	a4,a4,2
   16518:	fed71f23          	sh	a3,-2(a4)
   1651c:	fec798e3          	bne	a5,a2,1650c <_ldtoa_r+0x208>
   16520:	00000693          	li	a3,0
   16524:	09810793          	addi	a5,sp,152
   16528:	0000f717          	auipc	a4,0xf
   1652c:	d8470713          	addi	a4,a4,-636 # 252ac <eone>
   16530:	0080006f          	j	16538 <_ldtoa_r+0x234>
   16534:	00075683          	lhu	a3,0(a4)
   16538:	00278793          	addi	a5,a5,2
   1653c:	fed79f23          	sh	a3,-2(a5)
   16540:	00270713          	addi	a4,a4,2
   16544:	ffb798e3          	bne	a5,s11,16534 <_ldtoa_r+0x230>
   16548:	fffff937          	lui	s2,0xfffff
   1654c:	0000fa97          	auipc	s5,0xf
   16550:	d74a8a93          	addi	s5,s5,-652 # 252c0 <etens>
   16554:	0000fc97          	auipc	s9,0xf
   16558:	e70c8c93          	addi	s9,s9,-400 # 253c4 <emtens>
   1655c:	0000fd17          	auipc	s10,0xf
   16560:	d50d0d13          	addi	s10,s10,-688 # 252ac <eone>
   16564:	0000fd97          	auipc	s11,0xf
   16568:	e4cd8d93          	addi	s11,s11,-436 # 253b0 <etens+0xf0>
   1656c:	00c0006f          	j	16578 <_ldtoa_r+0x274>
   16570:	014c8c93          	addi	s9,s9,20
   16574:	014a8a93          	addi	s5,s5,20
   16578:	00040593          	mv	a1,s0
   1657c:	000d0513          	mv	a0,s10
   16580:	8b9fe0ef          	jal	ra,14e38 <ecmp>
   16584:	00040593          	mv	a1,s0
   16588:	04a05663          	blez	a0,165d4 <_ldtoa_r+0x2d0>
   1658c:	000c8513          	mv	a0,s9
   16590:	8a9fe0ef          	jal	ra,14e38 <ecmp>
   16594:	00098693          	mv	a3,s3
   16598:	00040613          	mv	a2,s0
   1659c:	00040593          	mv	a1,s0
   165a0:	02054263          	bltz	a0,165c4 <_ldtoa_r+0x2c0>
   165a4:	000a8513          	mv	a0,s5
   165a8:	b0cff0ef          	jal	ra,158b4 <emul>
   165ac:	09810613          	addi	a2,sp,152
   165b0:	00098693          	mv	a3,s3
   165b4:	00060593          	mv	a1,a2
   165b8:	000a8513          	mv	a0,s5
   165bc:	af8ff0ef          	jal	ra,158b4 <emul>
   165c0:	012484b3          	add	s1,s1,s2
   165c4:	01f95793          	srli	a5,s2,0x1f
   165c8:	01278933          	add	s2,a5,s2
   165cc:	40195913          	srai	s2,s2,0x1
   165d0:	fbba90e3          	bne	s5,s11,16570 <_ldtoa_r+0x26c>
   165d4:	09810613          	addi	a2,sp,152
   165d8:	00098693          	mv	a3,s3
   165dc:	0000f597          	auipc	a1,0xf
   165e0:	cd058593          	addi	a1,a1,-816 # 252ac <eone>
   165e4:	00060513          	mv	a0,a2
   165e8:	ed4ff0ef          	jal	ra,15cbc <ediv>
   165ec:	12410913          	addi	s2,sp,292
   165f0:	0300006f          	j	16620 <_ldtoa_r+0x31c>
   165f4:	07c10793          	addi	a5,sp,124
   165f8:	08e10693          	addi	a3,sp,142
   165fc:	0007d703          	lhu	a4,0(a5)
   16600:	00278793          	addi	a5,a5,2
   16604:	e8071ee3          	bnez	a4,164a0 <_ldtoa_r+0x19c>
   16608:	fef69ae3          	bne	a3,a5,165fc <_ldtoa_r+0x2f8>
   1660c:	00000493          	li	s1,0
   16610:	12410913          	addi	s2,sp,292
   16614:	16010993          	addi	s3,sp,352
   16618:	0d010413          	addi	s0,sp,208
   1661c:	0e810b93          	addi	s7,sp,232
   16620:	00040593          	mv	a1,s0
   16624:	09810513          	addi	a0,sp,152
   16628:	f28fe0ef          	jal	ra,14d50 <emovi>
   1662c:	09810713          	addi	a4,sp,152
   16630:	00040793          	mv	a5,s0
   16634:	00278793          	addi	a5,a5,2
   16638:	ffe7d683          	lhu	a3,-2(a5)
   1663c:	00270713          	addi	a4,a4,2
   16640:	fed71f23          	sh	a3,-2(a4)
   16644:	ff7798e3          	bne	a5,s7,16634 <_ldtoa_r+0x330>
   16648:	00040593          	mv	a1,s0
   1664c:	07c10513          	addi	a0,sp,124
   16650:	0a011823          	sh	zero,176(sp)
   16654:	efcfe0ef          	jal	ra,14d50 <emovi>
   16658:	07c10793          	addi	a5,sp,124
   1665c:	00240413          	addi	s0,s0,2
   16660:	ffe45703          	lhu	a4,-2(s0)
   16664:	00278793          	addi	a5,a5,2
   16668:	fee79f23          	sh	a4,-2(a5)
   1666c:	ff7418e3          	bne	s0,s7,1665c <_ldtoa_r+0x358>
   16670:	09810513          	addi	a0,sp,152
   16674:	00098613          	mv	a2,s3
   16678:	07c10593          	addi	a1,sp,124
   1667c:	08011a23          	sh	zero,148(sp)
   16680:	820ff0ef          	jal	ra,156a0 <eiremain>
   16684:	1ac15503          	lhu	a0,428(sp)
   16688:	1c051863          	bnez	a0,16858 <_ldtoa_r+0x554>
   1668c:	0000fa97          	auipc	s5,0xf
   16690:	c0ca8a93          	addi	s5,s5,-1012 # 25298 <ezero>
   16694:	09410d13          	addi	s10,sp,148
   16698:	07e10413          	addi	s0,sp,126
   1669c:	0b610c93          	addi	s9,sp,182
   166a0:	000a8593          	mv	a1,s5
   166a4:	07c10513          	addi	a0,sp,124
   166a8:	f90fe0ef          	jal	ra,14e38 <ecmp>
   166ac:	1a050663          	beqz	a0,16858 <_ldtoa_r+0x554>
   166b0:	00000713          	li	a4,0
   166b4:	000d0693          	mv	a3,s10
   166b8:	01c0006f          	j	166d4 <_ldtoa_r+0x3d0>
   166bc:	00171713          	slli	a4,a4,0x1
   166c0:	00f69023          	sh	a5,0(a3)
   166c4:	01071713          	slli	a4,a4,0x10
   166c8:	ffe68693          	addi	a3,a3,-2
   166cc:	01075713          	srli	a4,a4,0x10
   166d0:	04868463          	beq	a3,s0,16718 <_ldtoa_r+0x414>
   166d4:	0006d783          	lhu	a5,0(a3)
   166d8:	01079613          	slli	a2,a5,0x10
   166dc:	41065613          	srai	a2,a2,0x10
   166e0:	00179793          	slli	a5,a5,0x1
   166e4:	00065463          	bgez	a2,166ec <_ldtoa_r+0x3e8>
   166e8:	00176713          	ori	a4,a4,1
   166ec:	01079793          	slli	a5,a5,0x10
   166f0:	0107d793          	srli	a5,a5,0x10
   166f4:	00277613          	andi	a2,a4,2
   166f8:	0017e593          	ori	a1,a5,1
   166fc:	fc0600e3          	beqz	a2,166bc <_ldtoa_r+0x3b8>
   16700:	00171713          	slli	a4,a4,0x1
   16704:	00b69023          	sh	a1,0(a3)
   16708:	01071713          	slli	a4,a4,0x10
   1670c:	ffe68693          	addi	a3,a3,-2
   16710:	01075713          	srli	a4,a4,0x10
   16714:	fc8690e3          	bne	a3,s0,166d4 <_ldtoa_r+0x3d0>
   16718:	0b410713          	addi	a4,sp,180
   1671c:	07c10793          	addi	a5,sp,124
   16720:	00278793          	addi	a5,a5,2
   16724:	ffe7d683          	lhu	a3,-2(a5)
   16728:	00270713          	addi	a4,a4,2
   1672c:	fed71f23          	sh	a3,-2(a4)
   16730:	ffa798e3          	bne	a5,s10,16720 <_ldtoa_r+0x41c>
   16734:	0c011623          	sh	zero,204(sp)
   16738:	00000713          	li	a4,0
   1673c:	0cc10693          	addi	a3,sp,204
   16740:	01c0006f          	j	1675c <_ldtoa_r+0x458>
   16744:	00171713          	slli	a4,a4,0x1
   16748:	00f69023          	sh	a5,0(a3)
   1674c:	01071713          	slli	a4,a4,0x10
   16750:	ffe68693          	addi	a3,a3,-2
   16754:	01075713          	srli	a4,a4,0x10
   16758:	05968463          	beq	a3,s9,167a0 <_ldtoa_r+0x49c>
   1675c:	0006d783          	lhu	a5,0(a3)
   16760:	01079613          	slli	a2,a5,0x10
   16764:	41065613          	srai	a2,a2,0x10
   16768:	00179793          	slli	a5,a5,0x1
   1676c:	00065463          	bgez	a2,16774 <_ldtoa_r+0x470>
   16770:	00176713          	ori	a4,a4,1
   16774:	01079793          	slli	a5,a5,0x10
   16778:	0107d793          	srli	a5,a5,0x10
   1677c:	00277613          	andi	a2,a4,2
   16780:	0017e593          	ori	a1,a5,1
   16784:	fc0600e3          	beqz	a2,16744 <_ldtoa_r+0x440>
   16788:	00171713          	slli	a4,a4,0x1
   1678c:	00b69023          	sh	a1,0(a3)
   16790:	01071713          	slli	a4,a4,0x10
   16794:	ffe68693          	addi	a3,a3,-2
   16798:	01075713          	srli	a4,a4,0x10
   1679c:	fd9690e3          	bne	a3,s9,1675c <_ldtoa_r+0x458>
   167a0:	00000713          	li	a4,0
   167a4:	0cc10693          	addi	a3,sp,204
   167a8:	01c0006f          	j	167c4 <_ldtoa_r+0x4c0>
   167ac:	00171713          	slli	a4,a4,0x1
   167b0:	00f69023          	sh	a5,0(a3)
   167b4:	01071713          	slli	a4,a4,0x10
   167b8:	ffe68693          	addi	a3,a3,-2
   167bc:	01075713          	srli	a4,a4,0x10
   167c0:	05968463          	beq	a3,s9,16808 <_ldtoa_r+0x504>
   167c4:	0006d783          	lhu	a5,0(a3)
   167c8:	01079613          	slli	a2,a5,0x10
   167cc:	41065613          	srai	a2,a2,0x10
   167d0:	00179793          	slli	a5,a5,0x1
   167d4:	00065463          	bgez	a2,167dc <_ldtoa_r+0x4d8>
   167d8:	00176713          	ori	a4,a4,1
   167dc:	01079793          	slli	a5,a5,0x10
   167e0:	0107d793          	srli	a5,a5,0x10
   167e4:	00277613          	andi	a2,a4,2
   167e8:	0017e593          	ori	a1,a5,1
   167ec:	fc0600e3          	beqz	a2,167ac <_ldtoa_r+0x4a8>
   167f0:	00171713          	slli	a4,a4,0x1
   167f4:	00b69023          	sh	a1,0(a3)
   167f8:	01071713          	slli	a4,a4,0x10
   167fc:	ffe68693          	addi	a3,a3,-2
   16800:	01075713          	srli	a4,a4,0x10
   16804:	fd9690e3          	bne	a3,s9,167c4 <_ldtoa_r+0x4c0>
   16808:	00000613          	li	a2,0
   1680c:	000d0693          	mv	a3,s10
   16810:	0cc10713          	addi	a4,sp,204
   16814:	0006d583          	lhu	a1,0(a3)
   16818:	00075783          	lhu	a5,0(a4)
   1681c:	ffe68693          	addi	a3,a3,-2
   16820:	ffe70713          	addi	a4,a4,-2
   16824:	00b787b3          	add	a5,a5,a1
   16828:	00c787b3          	add	a5,a5,a2
   1682c:	00f69123          	sh	a5,2(a3)
   16830:	0107d793          	srli	a5,a5,0x10
   16834:	0017f613          	andi	a2,a5,1
   16838:	fd971ee3          	bne	a4,s9,16814 <_ldtoa_r+0x510>
   1683c:	09810513          	addi	a0,sp,152
   16840:	00098613          	mv	a2,s3
   16844:	07c10593          	addi	a1,sp,124
   16848:	e59fe0ef          	jal	ra,156a0 <eiremain>
   1684c:	1ac15503          	lhu	a0,428(sp)
   16850:	fff48493          	addi	s1,s1,-1
   16854:	e40506e3          	beqz	a0,166a0 <_ldtoa_r+0x39c>
   16858:	01812783          	lw	a5,24(sp)
   1685c:	00812703          	lw	a4,8(sp)
   16860:	00c12403          	lw	s0,12(sp)
   16864:	00f037b3          	snez	a5,a5
   16868:	40f007b3          	neg	a5,a5
   1686c:	00d7f793          	andi	a5,a5,13
   16870:	02078793          	addi	a5,a5,32
   16874:	12f10223          	sb	a5,292(sp)
   16878:	00300793          	li	a5,3
   1687c:	02f70463          	beq	a4,a5,168a4 <_ldtoa_r+0x5a0>
   16880:	00a00793          	li	a5,10
   16884:	1ef502e3          	beq	a0,a5,17268 <_ldtoa_r+0xf64>
   16888:	03050513          	addi	a0,a0,48
   1688c:	02e00793          	li	a5,46
   16890:	12a102a3          	sb	a0,293(sp)
   16894:	12f10323          	sb	a5,294(sp)
   16898:	78044263          	bltz	s0,1701c <_ldtoa_r+0xd18>
   1689c:	12710c93          	addi	s9,sp,295
   168a0:	0300006f          	j	168d0 <_ldtoa_r+0x5cc>
   168a4:	00940433          	add	s0,s0,s1
   168a8:	02a00793          	li	a5,42
   168ac:	fc87dae3          	bge	a5,s0,16880 <_ldtoa_r+0x57c>
   168b0:	00a00793          	li	a5,10
   168b4:	18f506e3          	beq	a0,a5,17240 <_ldtoa_r+0xf3c>
   168b8:	03050513          	addi	a0,a0,48
   168bc:	02e00793          	li	a5,46
   168c0:	12a102a3          	sb	a0,293(sp)
   168c4:	12f10323          	sb	a5,294(sp)
   168c8:	02a00413          	li	s0,42
   168cc:	12710c93          	addi	s9,sp,295
   168d0:	00000c13          	li	s8,0
   168d4:	0b410a93          	addi	s5,sp,180
   168d8:	09410d93          	addi	s11,sp,148
   168dc:	07e10b93          	addi	s7,sp,126
   168e0:	0b610d13          	addi	s10,sp,182
   168e4:	00000713          	li	a4,0
   168e8:	000d8693          	mv	a3,s11
   168ec:	01c0006f          	j	16908 <_ldtoa_r+0x604>
   168f0:	00171713          	slli	a4,a4,0x1
   168f4:	00f69023          	sh	a5,0(a3)
   168f8:	01071713          	slli	a4,a4,0x10
   168fc:	ffe68693          	addi	a3,a3,-2
   16900:	01075713          	srli	a4,a4,0x10
   16904:	05768463          	beq	a3,s7,1694c <_ldtoa_r+0x648>
   16908:	0006d783          	lhu	a5,0(a3)
   1690c:	01079613          	slli	a2,a5,0x10
   16910:	41065613          	srai	a2,a2,0x10
   16914:	00179793          	slli	a5,a5,0x1
   16918:	00065463          	bgez	a2,16920 <_ldtoa_r+0x61c>
   1691c:	00176713          	ori	a4,a4,1
   16920:	01079793          	slli	a5,a5,0x10
   16924:	0107d793          	srli	a5,a5,0x10
   16928:	00277613          	andi	a2,a4,2
   1692c:	0017e593          	ori	a1,a5,1
   16930:	fc0600e3          	beqz	a2,168f0 <_ldtoa_r+0x5ec>
   16934:	00171713          	slli	a4,a4,0x1
   16938:	00b69023          	sh	a1,0(a3)
   1693c:	01071713          	slli	a4,a4,0x10
   16940:	ffe68693          	addi	a3,a3,-2
   16944:	01075713          	srli	a4,a4,0x10
   16948:	fd7690e3          	bne	a3,s7,16908 <_ldtoa_r+0x604>
   1694c:	000a8713          	mv	a4,s5
   16950:	07c10793          	addi	a5,sp,124
   16954:	00278793          	addi	a5,a5,2
   16958:	ffe7d683          	lhu	a3,-2(a5)
   1695c:	00270713          	addi	a4,a4,2
   16960:	fed71f23          	sh	a3,-2(a4)
   16964:	ffb798e3          	bne	a5,s11,16954 <_ldtoa_r+0x650>
   16968:	0c011623          	sh	zero,204(sp)
   1696c:	00000713          	li	a4,0
   16970:	0cc10693          	addi	a3,sp,204
   16974:	01c0006f          	j	16990 <_ldtoa_r+0x68c>
   16978:	00171713          	slli	a4,a4,0x1
   1697c:	00f69023          	sh	a5,0(a3)
   16980:	01071713          	slli	a4,a4,0x10
   16984:	ffe68693          	addi	a3,a3,-2
   16988:	01075713          	srli	a4,a4,0x10
   1698c:	05a68463          	beq	a3,s10,169d4 <_ldtoa_r+0x6d0>
   16990:	0006d783          	lhu	a5,0(a3)
   16994:	01079613          	slli	a2,a5,0x10
   16998:	41065613          	srai	a2,a2,0x10
   1699c:	00179793          	slli	a5,a5,0x1
   169a0:	00065463          	bgez	a2,169a8 <_ldtoa_r+0x6a4>
   169a4:	00176713          	ori	a4,a4,1
   169a8:	01079793          	slli	a5,a5,0x10
   169ac:	0107d793          	srli	a5,a5,0x10
   169b0:	00277613          	andi	a2,a4,2
   169b4:	0017e593          	ori	a1,a5,1
   169b8:	fc0600e3          	beqz	a2,16978 <_ldtoa_r+0x674>
   169bc:	00171713          	slli	a4,a4,0x1
   169c0:	00b69023          	sh	a1,0(a3)
   169c4:	01071713          	slli	a4,a4,0x10
   169c8:	ffe68693          	addi	a3,a3,-2
   169cc:	01075713          	srli	a4,a4,0x10
   169d0:	fda690e3          	bne	a3,s10,16990 <_ldtoa_r+0x68c>
   169d4:	00000713          	li	a4,0
   169d8:	0cc10693          	addi	a3,sp,204
   169dc:	01c0006f          	j	169f8 <_ldtoa_r+0x6f4>
   169e0:	00171713          	slli	a4,a4,0x1
   169e4:	00f69023          	sh	a5,0(a3)
   169e8:	01071713          	slli	a4,a4,0x10
   169ec:	ffe68693          	addi	a3,a3,-2
   169f0:	01075713          	srli	a4,a4,0x10
   169f4:	05a68463          	beq	a3,s10,16a3c <_ldtoa_r+0x738>
   169f8:	0006d783          	lhu	a5,0(a3)
   169fc:	01079613          	slli	a2,a5,0x10
   16a00:	41065613          	srai	a2,a2,0x10
   16a04:	00179793          	slli	a5,a5,0x1
   16a08:	00065463          	bgez	a2,16a10 <_ldtoa_r+0x70c>
   16a0c:	00176713          	ori	a4,a4,1
   16a10:	01079793          	slli	a5,a5,0x10
   16a14:	0107d793          	srli	a5,a5,0x10
   16a18:	00277613          	andi	a2,a4,2
   16a1c:	0017e593          	ori	a1,a5,1
   16a20:	fc0600e3          	beqz	a2,169e0 <_ldtoa_r+0x6dc>
   16a24:	00171713          	slli	a4,a4,0x1
   16a28:	00b69023          	sh	a1,0(a3)
   16a2c:	01071713          	slli	a4,a4,0x10
   16a30:	ffe68693          	addi	a3,a3,-2
   16a34:	01075713          	srli	a4,a4,0x10
   16a38:	fda690e3          	bne	a3,s10,169f8 <_ldtoa_r+0x6f4>
   16a3c:	00000613          	li	a2,0
   16a40:	000d8693          	mv	a3,s11
   16a44:	0cc10713          	addi	a4,sp,204
   16a48:	0006d583          	lhu	a1,0(a3)
   16a4c:	00075783          	lhu	a5,0(a4)
   16a50:	ffe68693          	addi	a3,a3,-2
   16a54:	ffe70713          	addi	a4,a4,-2
   16a58:	00b787b3          	add	a5,a5,a1
   16a5c:	00c787b3          	add	a5,a5,a2
   16a60:	00f69123          	sh	a5,2(a3)
   16a64:	0107d793          	srli	a5,a5,0x10
   16a68:	0017f613          	andi	a2,a5,1
   16a6c:	fda71ee3          	bne	a4,s10,16a48 <_ldtoa_r+0x744>
   16a70:	00098613          	mv	a2,s3
   16a74:	07c10593          	addi	a1,sp,124
   16a78:	09810513          	addi	a0,sp,152
   16a7c:	c25fe0ef          	jal	ra,156a0 <eiremain>
   16a80:	1ac15783          	lhu	a5,428(sp)
   16a84:	018c8733          	add	a4,s9,s8
   16a88:	001c0c13          	addi	s8,s8,1
   16a8c:	03078693          	addi	a3,a5,48
   16a90:	00d70023          	sb	a3,0(a4)
   16a94:	e58458e3          	bge	s0,s8,168e4 <_ldtoa_r+0x5e0>
   16a98:	00140993          	addi	s3,s0,1
   16a9c:	013c89b3          	add	s3,s9,s3
   16aa0:	008c8cb3          	add	s9,s9,s0
   16aa4:	00400713          	li	a4,4
   16aa8:	06f75e63          	bge	a4,a5,16b24 <_ldtoa_r+0x820>
   16aac:	00500713          	li	a4,5
   16ab0:	00e78ae3          	beq	a5,a4,172c4 <_ldtoa_r+0xfc0>
   16ab4:	ffe9c783          	lbu	a5,-2(s3)
   16ab8:	ffe98713          	addi	a4,s3,-2
   16abc:	07f7f793          	andi	a5,a5,127
   16ac0:	7c044a63          	bltz	s0,17294 <_ldtoa_r+0xf90>
   16ac4:	02e00693          	li	a3,46
   16ac8:	04d78263          	beq	a5,a3,16b0c <_ldtoa_r+0x808>
   16acc:	00178693          	addi	a3,a5,1
   16ad0:	00d70023          	sb	a3,0(a4)
   16ad4:	03800693          	li	a3,56
   16ad8:	03000593          	li	a1,48
   16adc:	02e00613          	li	a2,46
   16ae0:	03800513          	li	a0,56
   16ae4:	00f6c863          	blt	a3,a5,16af4 <_ldtoa_r+0x7f0>
   16ae8:	03c0006f          	j	16b24 <_ldtoa_r+0x820>
   16aec:	00d70023          	sb	a3,0(a4)
   16af0:	02f57a63          	bgeu	a0,a5,16b24 <_ldtoa_r+0x820>
   16af4:	00b70023          	sb	a1,0(a4)
   16af8:	fff70713          	addi	a4,a4,-1
   16afc:	00074783          	lbu	a5,0(a4)
   16b00:	07f7f793          	andi	a5,a5,127
   16b04:	00178693          	addi	a3,a5,1
   16b08:	fec792e3          	bne	a5,a2,16aec <_ldtoa_r+0x7e8>
   16b0c:	fff74783          	lbu	a5,-1(a4)
   16b10:	03800693          	li	a3,56
   16b14:	00f6fee3          	bgeu	a3,a5,17330 <_ldtoa_r+0x102c>
   16b18:	03100793          	li	a5,49
   16b1c:	00148493          	addi	s1,s1,1
   16b20:	fef70fa3          	sb	a5,-1(a4)
   16b24:	00048613          	mv	a2,s1
   16b28:	0000f597          	auipc	a1,0xf
   16b2c:	9e858593          	addi	a1,a1,-1560 # 25510 <bmask+0x48>
   16b30:	000c8513          	mv	a0,s9
   16b34:	118030ef          	jal	ra,19c4c <sprintf>
   16b38:	07215783          	lhu	a5,114(sp)
   16b3c:	01c12703          	lw	a4,28(sp)
   16b40:	16912823          	sw	s1,368(sp)
   16b44:	fff7c793          	not	a5,a5
   16b48:	16e12223          	sw	a4,356(sp)
   16b4c:	01179713          	slli	a4,a5,0x11
   16b50:	00071e63          	bnez	a4,16b6c <_ldtoa_r+0x868>
   16b54:	000a0513          	mv	a0,s4
   16b58:	bfcfe0ef          	jal	ra,14f54 <eisinf.part.1>
   16b5c:	22051c63          	bnez	a0,16d94 <_ldtoa_r+0xa90>
   16b60:	000a0513          	mv	a0,s4
   16b64:	93cfe0ef          	jal	ra,14ca0 <eisnan.part.0>
   16b68:	22051663          	bnez	a0,16d94 <_ldtoa_r+0xa90>
   16b6c:	01412683          	lw	a3,20(sp)
   16b70:	12414783          	lbu	a5,292(sp)
   16b74:	00148713          	addi	a4,s1,1
   16b78:	00e6a023          	sw	a4,0(a3)
   16b7c:	0c078ce3          	beqz	a5,17454 <_ldtoa_r+0x1150>
   16b80:	02e00713          	li	a4,46
   16b84:	06e78063          	beq	a5,a4,16be4 <_ldtoa_r+0x8e0>
   16b88:	00090793          	mv	a5,s2
   16b8c:	02e00693          	li	a3,46
   16b90:	0080006f          	j	16b98 <_ldtoa_r+0x894>
   16b94:	04d70a63          	beq	a4,a3,16be8 <_ldtoa_r+0x8e4>
   16b98:	00178793          	addi	a5,a5,1
   16b9c:	0007c703          	lbu	a4,0(a5)
   16ba0:	fe071ae3          	bnez	a4,16b94 <_ldtoa_r+0x890>
   16ba4:	04500693          	li	a3,69
   16ba8:	00f96663          	bltu	s2,a5,16bb4 <_ldtoa_r+0x8b0>
   16bac:	0140006f          	j	16bc0 <_ldtoa_r+0x8bc>
   16bb0:	01278863          	beq	a5,s2,16bc0 <_ldtoa_r+0x8bc>
   16bb4:	fff78793          	addi	a5,a5,-1
   16bb8:	0007c703          	lbu	a4,0(a5)
   16bbc:	fed71ae3          	bne	a4,a3,16bb0 <_ldtoa_r+0x8ac>
   16bc0:	00078023          	sb	zero,0(a5)
   16bc4:	00090793          	mv	a5,s2
   16bc8:	02000693          	li	a3,32
   16bcc:	02d00613          	li	a2,45
   16bd0:	0007c703          	lbu	a4,0(a5)
   16bd4:	00d70463          	beq	a4,a3,16bdc <_ldtoa_r+0x8d8>
   16bd8:	02c71a63          	bne	a4,a2,16c0c <_ldtoa_r+0x908>
   16bdc:	00178793          	addi	a5,a5,1
   16be0:	ff1ff06f          	j	16bd0 <_ldtoa_r+0x8cc>
   16be4:	00090793          	mv	a5,s2
   16be8:	0017c703          	lbu	a4,1(a5)
   16bec:	00178793          	addi	a5,a5,1
   16bf0:	fee78fa3          	sb	a4,-1(a5)
   16bf4:	fa0708e3          	beqz	a4,16ba4 <_ldtoa_r+0x8a0>
   16bf8:	0017c703          	lbu	a4,1(a5)
   16bfc:	00178793          	addi	a5,a5,1
   16c00:	fee78fa3          	sb	a4,-1(a5)
   16c04:	fe0712e3          	bnez	a4,16be8 <_ldtoa_r+0x8e4>
   16c08:	f9dff06f          	j	16ba4 <_ldtoa_r+0x8a0>
   16c0c:	00090413          	mv	s0,s2
   16c10:	00c0006f          	j	16c1c <_ldtoa_r+0x918>
   16c14:	0007c703          	lbu	a4,0(a5)
   16c18:	00068413          	mv	s0,a3
   16c1c:	00e40023          	sb	a4,0(s0)
   16c20:	00140693          	addi	a3,s0,1
   16c24:	00178793          	addi	a5,a5,1
   16c28:	fe0716e3          	bnez	a4,16c14 <_ldtoa_r+0x910>
   16c2c:	00812683          	lw	a3,8(sp)
   16c30:	00200793          	li	a5,2
   16c34:	fff44703          	lbu	a4,-1(s0)
   16c38:	12f68663          	beq	a3,a5,16d64 <_ldtoa_r+0xa60>
   16c3c:	00c12783          	lw	a5,12(sp)
   16c40:	00078693          	mv	a3,a5
   16c44:	0097d463          	bge	a5,s1,16c4c <_ldtoa_r+0x948>
   16c48:	00048693          	mv	a3,s1
   16c4c:	03000793          	li	a5,48
   16c50:	02f71663          	bne	a4,a5,16c7c <_ldtoa_r+0x978>
   16c54:	412407b3          	sub	a5,s0,s2
   16c58:	02f6d263          	bge	a3,a5,16c7c <_ldtoa_r+0x978>
   16c5c:	03000613          	li	a2,48
   16c60:	0080006f          	j	16c68 <_ldtoa_r+0x964>
   16c64:	00e6dc63          	bge	a3,a4,16c7c <_ldtoa_r+0x978>
   16c68:	fff40413          	addi	s0,s0,-1
   16c6c:	fff44783          	lbu	a5,-1(s0)
   16c70:	00040023          	sb	zero,0(s0)
   16c74:	41240733          	sub	a4,s0,s2
   16c78:	fec786e3          	beq	a5,a2,16c64 <_ldtoa_r+0x960>
   16c7c:	00812703          	lw	a4,8(sp)
   16c80:	00300793          	li	a5,3
   16c84:	0af70263          	beq	a4,a5,16d28 <_ldtoa_r+0xa24>
   16c88:	01012783          	lw	a5,16(sp)
   16c8c:	040b2223          	sw	zero,68(s6)
   16c90:	00978613          	addi	a2,a5,9
   16c94:	01700793          	li	a5,23
   16c98:	0cc7f263          	bgeu	a5,a2,16d5c <_ldtoa_r+0xa58>
   16c9c:	00100713          	li	a4,1
   16ca0:	00400793          	li	a5,4
   16ca4:	00179793          	slli	a5,a5,0x1
   16ca8:	01478693          	addi	a3,a5,20
   16cac:	00070593          	mv	a1,a4
   16cb0:	00170713          	addi	a4,a4,1
   16cb4:	fed678e3          	bgeu	a2,a3,16ca4 <_ldtoa_r+0x9a0>
   16cb8:	04bb2223          	sw	a1,68(s6)
   16cbc:	000b0513          	mv	a0,s6
   16cc0:	79c010ef          	jal	ra,1845c <_Balloc>
   16cc4:	04ab2023          	sw	a0,64(s6)
   16cc8:	00090593          	mv	a1,s2
   16ccc:	00050493          	mv	s1,a0
   16cd0:	2d0030ef          	jal	ra,19fa0 <strcpy>
   16cd4:	02012783          	lw	a5,32(sp)
   16cd8:	00078863          	beqz	a5,16ce8 <_ldtoa_r+0x9e4>
   16cdc:	41240433          	sub	s0,s0,s2
   16ce0:	00848433          	add	s0,s1,s0
   16ce4:	0087a023          	sw	s0,0(a5)
   16ce8:	1ec12083          	lw	ra,492(sp)
   16cec:	1e812403          	lw	s0,488(sp)
   16cf0:	00048513          	mv	a0,s1
   16cf4:	1e012903          	lw	s2,480(sp)
   16cf8:	1e412483          	lw	s1,484(sp)
   16cfc:	1dc12983          	lw	s3,476(sp)
   16d00:	1d812a03          	lw	s4,472(sp)
   16d04:	1d412a83          	lw	s5,468(sp)
   16d08:	1d012b03          	lw	s6,464(sp)
   16d0c:	1cc12b83          	lw	s7,460(sp)
   16d10:	1c812c03          	lw	s8,456(sp)
   16d14:	1c412c83          	lw	s9,452(sp)
   16d18:	1c012d03          	lw	s10,448(sp)
   16d1c:	1bc12d83          	lw	s11,444(sp)
   16d20:	1f010113          	addi	sp,sp,496
   16d24:	00008067          	ret
   16d28:	00c12783          	lw	a5,12(sp)
   16d2c:	009784b3          	add	s1,a5,s1
   16d30:	4a04ce63          	bltz	s1,171ec <_ldtoa_r+0xee8>
   16d34:	01412783          	lw	a5,20(sp)
   16d38:	01012703          	lw	a4,16(sp)
   16d3c:	0007a783          	lw	a5,0(a5)
   16d40:	00f707b3          	add	a5,a4,a5
   16d44:	00f12823          	sw	a5,16(sp)
   16d48:	01012783          	lw	a5,16(sp)
   16d4c:	040b2223          	sw	zero,68(s6)
   16d50:	00378613          	addi	a2,a5,3
   16d54:	01700793          	li	a5,23
   16d58:	f4c7e2e3          	bltu	a5,a2,16c9c <_ldtoa_r+0x998>
   16d5c:	00000593          	li	a1,0
   16d60:	f5dff06f          	j	16cbc <_ldtoa_r+0x9b8>
   16d64:	03000793          	li	a5,48
   16d68:	f2f710e3          	bne	a4,a5,16c88 <_ldtoa_r+0x984>
   16d6c:	412407b3          	sub	a5,s0,s2
   16d70:	00100693          	li	a3,1
   16d74:	eef6c4e3          	blt	a3,a5,16c5c <_ldtoa_r+0x958>
   16d78:	f11ff06f          	j	16c88 <_ldtoa_r+0x984>
   16d7c:	01012b83          	lw	s7,16(sp)
   16d80:	01712623          	sw	s7,12(sp)
   16d84:	02a00793          	li	a5,42
   16d88:	e577de63          	bge	a5,s7,163e4 <_ldtoa_r+0xe0>
   16d8c:	00f12623          	sw	a5,12(sp)
   16d90:	e54ff06f          	j	163e4 <_ldtoa_r+0xe0>
   16d94:	01412703          	lw	a4,20(sp)
   16d98:	000027b7          	lui	a5,0x2
   16d9c:	70f78793          	addi	a5,a5,1807 # 270f <register_fini-0xd965>
   16da0:	00f72023          	sw	a5,0(a4)
   16da4:	e21ff06f          	j	16bc4 <_ldtoa_r+0x8c0>
   16da8:	0b410a93          	addi	s5,sp,180
   16dac:	000a8713          	mv	a4,s5
   16db0:	07c10793          	addi	a5,sp,124
   16db4:	09010613          	addi	a2,sp,144
   16db8:	00278793          	addi	a5,a5,2
   16dbc:	ffe7d683          	lhu	a3,-2(a5)
   16dc0:	00270713          	addi	a4,a4,2
   16dc4:	fed71f23          	sh	a3,-2(a4)
   16dc8:	fec798e3          	bne	a5,a2,16db8 <_ldtoa_r+0xab4>
   16dcc:	000047b7          	lui	a5,0x4
   16dd0:	08e78793          	addi	a5,a5,142 # 408e <register_fini-0xbfe6>
   16dd4:	0cf11323          	sh	a5,198(sp)
   16dd8:	000087b7          	lui	a5,0x8
   16ddc:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   16de0:	02f12223          	sw	a5,36(sp)
   16de4:	ffffc7b7          	lui	a5,0xffffc
   16de8:	00278793          	addi	a5,a5,2 # ffffc002 <__BSS_END__+0xfffd551a>
   16dec:	01000d13          	li	s10,16
   16df0:	00000493          	li	s1,0
   16df4:	0000ec17          	auipc	s8,0xe
   16df8:	56cc0c13          	addi	s8,s8,1388 # 25360 <etens+0xa0>
   16dfc:	12410913          	addi	s2,sp,292
   16e00:	16010993          	addi	s3,sp,352
   16e04:	0d010413          	addi	s0,sp,208
   16e08:	0aa10b93          	addi	s7,sp,170
   16e0c:	02f12423          	sw	a5,40(sp)
   16e10:	05e10c93          	addi	s9,sp,94
   16e14:	00098693          	mv	a3,s3
   16e18:	09810613          	addi	a2,sp,152
   16e1c:	000a8593          	mv	a1,s5
   16e20:	000c0513          	mv	a0,s8
   16e24:	e99fe0ef          	jal	ra,15cbc <ediv>
   16e28:	04c10713          	addi	a4,sp,76
   16e2c:	09810793          	addi	a5,sp,152
   16e30:	00278793          	addi	a5,a5,2
   16e34:	ffe7d683          	lhu	a3,-2(a5)
   16e38:	00270713          	addi	a4,a4,2
   16e3c:	fed71f23          	sh	a3,-2(a4)
   16e40:	ffb798e3          	bne	a5,s11,16e30 <_ldtoa_r+0xb2c>
   16e44:	02412783          	lw	a5,36(sp)
   16e48:	05e15503          	lhu	a0,94(sp)
   16e4c:	00f57633          	and	a2,a0,a5
   16e50:	02812783          	lw	a5,40(sp)
   16e54:	00f605b3          	add	a1,a2,a5
   16e58:	3ab05463          	blez	a1,17200 <_ldtoa_r+0xefc>
   16e5c:	09000613          	li	a2,144
   16e60:	40b60633          	sub	a2,a2,a1
   16e64:	00040713          	mv	a4,s0
   16e68:	04c10793          	addi	a5,sp,76
   16e6c:	00278793          	addi	a5,a5,2
   16e70:	ffe7d683          	lhu	a3,-2(a5)
   16e74:	00270713          	addi	a4,a4,2
   16e78:	fed71f23          	sh	a3,-2(a4)
   16e7c:	ff4798e3          	bne	a5,s4,16e6c <_ldtoa_r+0xb68>
   16e80:	06c05863          	blez	a2,16ef0 <_ldtoa_r+0xbec>
   16e84:	00f00793          	li	a5,15
   16e88:	00040713          	mv	a4,s0
   16e8c:	02c7dc63          	bge	a5,a2,16ec4 <_ldtoa_r+0xbc0>
   16e90:	ff060613          	addi	a2,a2,-16 # 7ff0 <register_fini-0x8084>
   16e94:	00465693          	srli	a3,a2,0x4
   16e98:	00168713          	addi	a4,a3,1
   16e9c:	00171713          	slli	a4,a4,0x1
   16ea0:	00e40733          	add	a4,s0,a4
   16ea4:	00040793          	mv	a5,s0
   16ea8:	00278793          	addi	a5,a5,2
   16eac:	fe079f23          	sh	zero,-2(a5)
   16eb0:	fee79ce3          	bne	a5,a4,16ea8 <_ldtoa_r+0xba4>
   16eb4:	08000613          	li	a2,128
   16eb8:	40b60633          	sub	a2,a2,a1
   16ebc:	00469693          	slli	a3,a3,0x4
   16ec0:	40d60633          	sub	a2,a2,a3
   16ec4:	0000e797          	auipc	a5,0xe
   16ec8:	3d478793          	addi	a5,a5,980 # 25298 <ezero>
   16ecc:	00161613          	slli	a2,a2,0x1
   16ed0:	00c78633          	add	a2,a5,a2
   16ed4:	23065683          	lhu	a3,560(a2)
   16ed8:	00075783          	lhu	a5,0(a4)
   16edc:	00d7f7b3          	and	a5,a5,a3
   16ee0:	00f71023          	sh	a5,0(a4)
   16ee4:	01051513          	slli	a0,a0,0x10
   16ee8:	41055513          	srai	a0,a0,0x10
   16eec:	16054063          	bltz	a0,1704c <_ldtoa_r+0xd48>
   16ef0:	09810793          	addi	a5,sp,152
   16ef4:	00040713          	mv	a4,s0
   16ef8:	0007d603          	lhu	a2,0(a5)
   16efc:	00075683          	lhu	a3,0(a4)
   16f00:	00278793          	addi	a5,a5,2
   16f04:	00270713          	addi	a4,a4,2
   16f08:	02d61463          	bne	a2,a3,16f30 <_ldtoa_r+0xc2c>
   16f0c:	fefb96e3          	bne	s7,a5,16ef8 <_ldtoa_r+0xbf4>
   16f10:	000a8713          	mv	a4,s5
   16f14:	09810793          	addi	a5,sp,152
   16f18:	00278793          	addi	a5,a5,2
   16f1c:	ffe7d683          	lhu	a3,-2(a5)
   16f20:	00270713          	addi	a4,a4,2
   16f24:	fed71f23          	sh	a3,-2(a4)
   16f28:	ffb798e3          	bne	a5,s11,16f18 <_ldtoa_r+0xc14>
   16f2c:	01a484b3          	add	s1,s1,s10
   16f30:	014c0c13          	addi	s8,s8,20
   16f34:	0000e797          	auipc	a5,0xe
   16f38:	49078793          	addi	a5,a5,1168 # 253c4 <emtens>
   16f3c:	001d5d13          	srli	s10,s10,0x1
   16f40:	ecfc1ae3          	bne	s8,a5,16e14 <_ldtoa_r+0xb10>
   16f44:	0c615783          	lhu	a5,198(sp)
   16f48:	08e15703          	lhu	a4,142(sp)
   16f4c:	0c810613          	addi	a2,sp,200
   16f50:	00e787b3          	add	a5,a5,a4
   16f54:	ffffc737          	lui	a4,0xffffc
   16f58:	f7270713          	addi	a4,a4,-142 # ffffbf72 <__BSS_END__+0xfffd548a>
   16f5c:	00e787b3          	add	a5,a5,a4
   16f60:	0cf11323          	sh	a5,198(sp)
   16f64:	07c10713          	addi	a4,sp,124
   16f68:	000a8793          	mv	a5,s5
   16f6c:	00278793          	addi	a5,a5,2
   16f70:	ffe7d683          	lhu	a3,-2(a5)
   16f74:	00270713          	addi	a4,a4,2
   16f78:	fed71f23          	sh	a3,-2(a4)
   16f7c:	fec798e3          	bne	a5,a2,16f6c <_ldtoa_r+0xc68>
   16f80:	00000693          	li	a3,0
   16f84:	09810793          	addi	a5,sp,152
   16f88:	0000e717          	auipc	a4,0xe
   16f8c:	32470713          	addi	a4,a4,804 # 252ac <eone>
   16f90:	0080006f          	j	16f98 <_ldtoa_r+0xc94>
   16f94:	00075683          	lhu	a3,0(a4)
   16f98:	00278793          	addi	a5,a5,2
   16f9c:	fed79f23          	sh	a3,-2(a5)
   16fa0:	00270713          	addi	a4,a4,2
   16fa4:	ffb798e3          	bne	a5,s11,16f94 <_ldtoa_r+0xc90>
   16fa8:	00001d37          	lui	s10,0x1
   16fac:	0000ec97          	auipc	s9,0xe
   16fb0:	314c8c93          	addi	s9,s9,788 # 252c0 <etens>
   16fb4:	0000ed97          	auipc	s11,0xe
   16fb8:	3fcd8d93          	addi	s11,s11,1020 # 253b0 <etens+0xf0>
   16fbc:	0100006f          	j	16fcc <_ldtoa_r+0xcc8>
   16fc0:	001d5d13          	srli	s10,s10,0x1
   16fc4:	2dbc8463          	beq	s9,s11,1728c <_ldtoa_r+0xf88>
   16fc8:	014c8c93          	addi	s9,s9,20
   16fcc:	000a8593          	mv	a1,s5
   16fd0:	000d8513          	mv	a0,s11
   16fd4:	e65fd0ef          	jal	ra,14e38 <ecmp>
   16fd8:	000a8593          	mv	a1,s5
   16fdc:	2aa04863          	bgtz	a0,1728c <_ldtoa_r+0xf88>
   16fe0:	000c8513          	mv	a0,s9
   16fe4:	e55fd0ef          	jal	ra,14e38 <ecmp>
   16fe8:	fca04ce3          	bgtz	a0,16fc0 <_ldtoa_r+0xcbc>
   16fec:	00098693          	mv	a3,s3
   16ff0:	000a8613          	mv	a2,s5
   16ff4:	000a8593          	mv	a1,s5
   16ff8:	000c8513          	mv	a0,s9
   16ffc:	cc1fe0ef          	jal	ra,15cbc <ediv>
   17000:	09810613          	addi	a2,sp,152
   17004:	00098693          	mv	a3,s3
   17008:	00060593          	mv	a1,a2
   1700c:	000c8513          	mv	a0,s9
   17010:	8a5fe0ef          	jal	ra,158b4 <emul>
   17014:	01a484b3          	add	s1,s1,s10
   17018:	fa9ff06f          	j	16fc0 <_ldtoa_r+0xcbc>
   1701c:	1ac15783          	lhu	a5,428(sp)
   17020:	12610c93          	addi	s9,sp,294
   17024:	12710993          	addi	s3,sp,295
   17028:	a7dff06f          	j	16aa4 <_ldtoa_r+0x7a0>
   1702c:	12410913          	addi	s2,sp,292
   17030:	0000e597          	auipc	a1,0xe
   17034:	4bc58593          	addi	a1,a1,1212 # 254ec <bmask+0x24>
   17038:	00090513          	mv	a0,s2
   1703c:	000024b7          	lui	s1,0x2
   17040:	40d020ef          	jal	ra,19c4c <sprintf>
   17044:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd965>
   17048:	af1ff06f          	j	16b38 <_ldtoa_r+0x834>
   1704c:	04c10793          	addi	a5,sp,76
   17050:	00040713          	mv	a4,s0
   17054:	0080006f          	j	1705c <_ldtoa_r+0xd58>
   17058:	e8fc8ce3          	beq	s9,a5,16ef0 <_ldtoa_r+0xbec>
   1705c:	0007d603          	lhu	a2,0(a5)
   17060:	00075683          	lhu	a3,0(a4)
   17064:	00278793          	addi	a5,a5,2
   17068:	00270713          	addi	a4,a4,2
   1706c:	fed606e3          	beq	a2,a3,17058 <_ldtoa_r+0xd54>
   17070:	0e215783          	lhu	a5,226(sp)
   17074:	02412703          	lw	a4,36(sp)
   17078:	00f777b3          	and	a5,a4,a5
   1707c:	00e79e63          	bne	a5,a4,17098 <_ldtoa_r+0xd94>
   17080:	00040513          	mv	a0,s0
   17084:	c1dfd0ef          	jal	ra,14ca0 <eisnan.part.0>
   17088:	e60514e3          	bnez	a0,16ef0 <_ldtoa_r+0xbec>
   1708c:	00040513          	mv	a0,s0
   17090:	ec5fd0ef          	jal	ra,14f54 <eisinf.part.1>
   17094:	e4051ee3          	bnez	a0,16ef0 <_ldtoa_r+0xbec>
   17098:	0ec10593          	addi	a1,sp,236
   1709c:	0000e517          	auipc	a0,0xe
   170a0:	21050513          	addi	a0,a0,528 # 252ac <eone>
   170a4:	cadfd0ef          	jal	ra,14d50 <emovi>
   170a8:	10810593          	addi	a1,sp,264
   170ac:	00040513          	mv	a0,s0
   170b0:	ca1fd0ef          	jal	ra,14d50 <emovi>
   170b4:	0ec15603          	lhu	a2,236(sp)
   170b8:	10a15503          	lhu	a0,266(sp)
   170bc:	0ee15803          	lhu	a6,238(sp)
   170c0:	fff64613          	not	a2,a2
   170c4:	01061613          	slli	a2,a2,0x10
   170c8:	01065613          	srli	a2,a2,0x10
   170cc:	0ec11623          	sh	a2,236(sp)
   170d0:	40a805b3          	sub	a1,a6,a0
   170d4:	00050693          	mv	a3,a0
   170d8:	06b05e63          	blez	a1,17154 <_ldtoa_r+0xe50>
   170dc:	00090693          	mv	a3,s2
   170e0:	10810713          	addi	a4,sp,264
   170e4:	12010793          	addi	a5,sp,288
   170e8:	00270713          	addi	a4,a4,2
   170ec:	ffe75583          	lhu	a1,-2(a4)
   170f0:	00268693          	addi	a3,a3,2
   170f4:	feb69f23          	sh	a1,-2(a3)
   170f8:	fef718e3          	bne	a4,a5,170e8 <_ldtoa_r+0xde4>
   170fc:	12011e23          	sh	zero,316(sp)
   17100:	10810713          	addi	a4,sp,264
   17104:	0ec10693          	addi	a3,sp,236
   17108:	0080006f          	j	17110 <_ldtoa_r+0xe0c>
   1710c:	0006d603          	lhu	a2,0(a3)
   17110:	00270713          	addi	a4,a4,2
   17114:	fec71f23          	sh	a2,-2(a4)
   17118:	00268693          	addi	a3,a3,2
   1711c:	fef718e3          	bne	a4,a5,1710c <_ldtoa_r+0xe08>
   17120:	12011023          	sh	zero,288(sp)
   17124:	0ec10713          	addi	a4,sp,236
   17128:	00090793          	mv	a5,s2
   1712c:	13c10613          	addi	a2,sp,316
   17130:	00278793          	addi	a5,a5,2
   17134:	ffe7d683          	lhu	a3,-2(a5)
   17138:	00270713          	addi	a4,a4,2
   1713c:	fed71f23          	sh	a3,-2(a4)
   17140:	fec798e3          	bne	a5,a2,17130 <_ldtoa_r+0xe2c>
   17144:	10a15683          	lhu	a3,266(sp)
   17148:	410505b3          	sub	a1,a0,a6
   1714c:	10011223          	sh	zero,260(sp)
   17150:	00068513          	mv	a0,a3
   17154:	30058863          	beqz	a1,17464 <_ldtoa_r+0x1160>
   17158:	02d12623          	sw	a3,44(sp)
   1715c:	f6f00793          	li	a5,-145
   17160:	06f5c863          	blt	a1,a5,171d0 <_ldtoa_r+0xecc>
   17164:	0ec10513          	addi	a0,sp,236
   17168:	e09fd0ef          	jal	ra,14f70 <eshift.part.3>
   1716c:	02c12683          	lw	a3,44(sp)
   17170:	00050593          	mv	a1,a0
   17174:	12010793          	addi	a5,sp,288
   17178:	10410813          	addi	a6,sp,260
   1717c:	0ec15603          	lhu	a2,236(sp)
   17180:	10815703          	lhu	a4,264(sp)
   17184:	32e60c63          	beq	a2,a4,174bc <_ldtoa_r+0x11b8>
   17188:	00000713          	li	a4,0
   1718c:	00070613          	mv	a2,a4
   17190:	0007d703          	lhu	a4,0(a5)
   17194:	00085503          	lhu	a0,0(a6) # ffff8000 <__BSS_END__+0xfffd1518>
   17198:	ffe78793          	addi	a5,a5,-2
   1719c:	40c70733          	sub	a4,a4,a2
   171a0:	40a70733          	sub	a4,a4,a0
   171a4:	00e79123          	sh	a4,2(a5)
   171a8:	01075713          	srli	a4,a4,0x10
   171ac:	00177613          	andi	a2,a4,1
   171b0:	10a10713          	addi	a4,sp,266
   171b4:	ffe80813          	addi	a6,a6,-2
   171b8:	fce79ce3          	bne	a5,a4,17190 <_ldtoa_r+0xe8c>
   171bc:	00100613          	li	a2,1
   171c0:	00098793          	mv	a5,s3
   171c4:	04000713          	li	a4,64
   171c8:	10810513          	addi	a0,sp,264
   171cc:	8ccfe0ef          	jal	ra,15298 <emdnorm>
   171d0:	00040593          	mv	a1,s0
   171d4:	10810513          	addi	a0,sp,264
   171d8:	e2cfe0ef          	jal	ra,15804 <emovo.isra.6>
   171dc:	d15ff06f          	j	16ef0 <_ldtoa_r+0xbec>
   171e0:	01012783          	lw	a5,16(sp)
   171e4:	fff78b93          	addi	s7,a5,-1
   171e8:	b99ff06f          	j	16d80 <_ldtoa_r+0xa7c>
   171ec:	01412783          	lw	a5,20(sp)
   171f0:	12010223          	sb	zero,292(sp)
   171f4:	00090413          	mv	s0,s2
   171f8:	0007a023          	sw	zero,0(a5)
   171fc:	b4dff06f          	j	16d48 <_ldtoa_r+0xa44>
   17200:	00040793          	mv	a5,s0
   17204:	0e410713          	addi	a4,sp,228
   17208:	00278793          	addi	a5,a5,2
   1720c:	fe079f23          	sh	zero,-2(a5)
   17210:	fee79ce3          	bne	a5,a4,17208 <_ldtoa_r+0xf04>
   17214:	cd1ff06f          	j	16ee4 <_ldtoa_r+0xbe0>
   17218:	01812783          	lw	a5,24(sp)
   1721c:	12410913          	addi	s2,sp,292
   17220:	0e078a63          	beqz	a5,17314 <_ldtoa_r+0x1010>
   17224:	0000e597          	auipc	a1,0xe
   17228:	2d058593          	addi	a1,a1,720 # 254f4 <bmask+0x2c>
   1722c:	00090513          	mv	a0,s2
   17230:	000024b7          	lui	s1,0x2
   17234:	219020ef          	jal	ra,19c4c <sprintf>
   17238:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd965>
   1723c:	8fdff06f          	j	16b38 <_ldtoa_r+0x834>
   17240:	03100793          	li	a5,49
   17244:	12f102a3          	sb	a5,293(sp)
   17248:	02e00793          	li	a5,46
   1724c:	12f10323          	sb	a5,294(sp)
   17250:	00148493          	addi	s1,s1,1
   17254:	02900413          	li	s0,41
   17258:	03000793          	li	a5,48
   1725c:	12f103a3          	sb	a5,295(sp)
   17260:	12810c93          	addi	s9,sp,296
   17264:	e6cff06f          	j	168d0 <_ldtoa_r+0x5cc>
   17268:	03100793          	li	a5,49
   1726c:	12f102a3          	sb	a5,293(sp)
   17270:	02e00793          	li	a5,46
   17274:	12f10323          	sb	a5,294(sp)
   17278:	00148493          	addi	s1,s1,1
   1727c:	1e804063          	bgtz	s0,1745c <_ldtoa_r+0x1158>
   17280:	12710c93          	addi	s9,sp,295
   17284:	8a0410e3          	bnez	s0,16b24 <_ldtoa_r+0x820>
   17288:	e48ff06f          	j	168d0 <_ldtoa_r+0x5cc>
   1728c:	0e810b93          	addi	s7,sp,232
   17290:	b90ff06f          	j	16620 <_ldtoa_r+0x31c>
   17294:	03100793          	li	a5,49
   17298:	fef98f23          	sb	a5,-2(s3)
   1729c:	00148493          	addi	s1,s1,1
   172a0:	885ff06f          	j	16b24 <_ldtoa_r+0x820>
   172a4:	12410913          	addi	s2,sp,292
   172a8:	0000e597          	auipc	a1,0xe
   172ac:	26458593          	addi	a1,a1,612 # 2550c <bmask+0x44>
   172b0:	00090513          	mv	a0,s2
   172b4:	000024b7          	lui	s1,0x2
   172b8:	195020ef          	jal	ra,19c4c <sprintf>
   172bc:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd965>
   172c0:	879ff06f          	j	16b38 <_ldtoa_r+0x834>
   172c4:	09810593          	addi	a1,sp,152
   172c8:	07c10513          	addi	a0,sp,124
   172cc:	d38fe0ef          	jal	ra,15804 <emovo.isra.6>
   172d0:	0000e597          	auipc	a1,0xe
   172d4:	fc858593          	addi	a1,a1,-56 # 25298 <ezero>
   172d8:	09810513          	addi	a0,sp,152
   172dc:	b5dfd0ef          	jal	ra,14e38 <ecmp>
   172e0:	fc051a63          	bnez	a0,16ab4 <_ldtoa_r+0x7b0>
   172e4:	840440e3          	bltz	s0,16b24 <_ldtoa_r+0x820>
   172e8:	ffe9c783          	lbu	a5,-2(s3)
   172ec:	fd278713          	addi	a4,a5,-46
   172f0:	00173713          	seqz	a4,a4
   172f4:	fff74713          	not	a4,a4
   172f8:	00ec8733          	add	a4,s9,a4
   172fc:	00074703          	lbu	a4,0(a4)
   17300:	00177713          	andi	a4,a4,1
   17304:	820700e3          	beqz	a4,16b24 <_ldtoa_r+0x820>
   17308:	ffe98713          	addi	a4,s3,-2
   1730c:	07f7f793          	andi	a5,a5,127
   17310:	fb4ff06f          	j	16ac4 <_ldtoa_r+0x7c0>
   17314:	0000e597          	auipc	a1,0xe
   17318:	1ec58593          	addi	a1,a1,492 # 25500 <bmask+0x38>
   1731c:	00090513          	mv	a0,s2
   17320:	000024b7          	lui	s1,0x2
   17324:	129020ef          	jal	ra,19c4c <sprintf>
   17328:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd965>
   1732c:	80dff06f          	j	16b38 <_ldtoa_r+0x834>
   17330:	00178793          	addi	a5,a5,1
   17334:	fef70fa3          	sb	a5,-1(a4)
   17338:	fecff06f          	j	16b24 <_ldtoa_r+0x820>
   1733c:	0d010413          	addi	s0,sp,208
   17340:	00040593          	mv	a1,s0
   17344:	07c10513          	addi	a0,sp,124
   17348:	00004ab7          	lui	s5,0x4
   1734c:	a05fd0ef          	jal	ra,14d50 <emovi>
   17350:	00000493          	li	s1,0
   17354:	0e810b93          	addi	s7,sp,232
   17358:	0cc10913          	addi	s2,sp,204
   1735c:	0d210993          	addi	s3,sp,210
   17360:	ffea8a93          	addi	s5,s5,-2 # 3ffe <register_fini-0xc076>
   17364:	fd500c93          	li	s9,-43
   17368:	0e815783          	lhu	a5,232(sp)
   1736c:	0077f793          	andi	a5,a5,7
   17370:	0c079863          	bnez	a5,17440 <_ldtoa_r+0x113c>
   17374:	0b410713          	addi	a4,sp,180
   17378:	00040793          	mv	a5,s0
   1737c:	00278793          	addi	a5,a5,2
   17380:	ffe7d683          	lhu	a3,-2(a5)
   17384:	00270713          	addi	a4,a4,2
   17388:	fed71f23          	sh	a3,-2(a4)
   1738c:	ff7798e3          	bne	a5,s7,1737c <_ldtoa_r+0x1078>
   17390:	0b410513          	addi	a0,sp,180
   17394:	0c011623          	sh	zero,204(sp)
   17398:	f50fd0ef          	jal	ra,14ae8 <eshdn1>
   1739c:	0b410513          	addi	a0,sp,180
   173a0:	f48fd0ef          	jal	ra,14ae8 <eshdn1>
   173a4:	00000613          	li	a2,0
   173a8:	00090693          	mv	a3,s2
   173ac:	000b8713          	mv	a4,s7
   173b0:	0006d583          	lhu	a1,0(a3)
   173b4:	00075783          	lhu	a5,0(a4)
   173b8:	ffe68693          	addi	a3,a3,-2
   173bc:	ffe70713          	addi	a4,a4,-2
   173c0:	00b787b3          	add	a5,a5,a1
   173c4:	00c787b3          	add	a5,a5,a2
   173c8:	00f69123          	sh	a5,2(a3)
   173cc:	0107d793          	srli	a5,a5,0x10
   173d0:	0017f613          	andi	a2,a5,1
   173d4:	fd371ee3          	bne	a4,s3,173b0 <_ldtoa_r+0x10ac>
   173d8:	0b615783          	lhu	a5,182(sp)
   173dc:	0b815703          	lhu	a4,184(sp)
   173e0:	00378793          	addi	a5,a5,3
   173e4:	0af11b23          	sh	a5,182(sp)
   173e8:	02070063          	beqz	a4,17408 <_ldtoa_r+0x1104>
   173ec:	0b410513          	addi	a0,sp,180
   173f0:	ef8fd0ef          	jal	ra,14ae8 <eshdn1>
   173f4:	0b615783          	lhu	a5,182(sp)
   173f8:	0b815703          	lhu	a4,184(sp)
   173fc:	00178793          	addi	a5,a5,1
   17400:	0af11b23          	sh	a5,182(sp)
   17404:	fe0714e3          	bnez	a4,173ec <_ldtoa_r+0x10e8>
   17408:	0cc15783          	lhu	a5,204(sp)
   1740c:	02079a63          	bnez	a5,17440 <_ldtoa_r+0x113c>
   17410:	0b615783          	lhu	a5,182(sp)
   17414:	02fae663          	bltu	s5,a5,17440 <_ldtoa_r+0x113c>
   17418:	00040713          	mv	a4,s0
   1741c:	0b410793          	addi	a5,sp,180
   17420:	00278793          	addi	a5,a5,2
   17424:	ffe7d683          	lhu	a3,-2(a5)
   17428:	00270713          	addi	a4,a4,2
   1742c:	fed71f23          	sh	a3,-2(a4)
   17430:	ff2798e3          	bne	a5,s2,17420 <_ldtoa_r+0x111c>
   17434:	0e011423          	sh	zero,232(sp)
   17438:	fff48493          	addi	s1,s1,-1
   1743c:	f39496e3          	bne	s1,s9,17368 <_ldtoa_r+0x1064>
   17440:	07c10593          	addi	a1,sp,124
   17444:	00040513          	mv	a0,s0
   17448:	bbcfe0ef          	jal	ra,15804 <emovo.isra.6>
   1744c:	16010993          	addi	s3,sp,352
   17450:	8b0ff06f          	j	16500 <_ldtoa_r+0x1fc>
   17454:	00090793          	mv	a5,s2
   17458:	f68ff06f          	j	16bc0 <_ldtoa_r+0x8bc>
   1745c:	fff40413          	addi	s0,s0,-1
   17460:	df9ff06f          	j	17258 <_ldtoa_r+0xf54>
   17464:	10c10713          	addi	a4,sp,268
   17468:	0f010793          	addi	a5,sp,240
   1746c:	00278793          	addi	a5,a5,2
   17470:	00270713          	addi	a4,a4,2
   17474:	ffe7d803          	lhu	a6,-2(a5)
   17478:	ffe75603          	lhu	a2,-2(a4)
   1747c:	02c81863          	bne	a6,a2,174ac <_ldtoa_r+0x11a8>
   17480:	10610613          	addi	a2,sp,262
   17484:	fec794e3          	bne	a5,a2,1746c <_ldtoa_r+0x1168>
   17488:	0ec15703          	lhu	a4,236(sp)
   1748c:	10815783          	lhu	a5,264(sp)
   17490:	06f70463          	beq	a4,a5,174f8 <_ldtoa_r+0x11f4>
   17494:	00040793          	mv	a5,s0
   17498:	0e410713          	addi	a4,sp,228
   1749c:	00278793          	addi	a5,a5,2
   174a0:	fe079f23          	sh	zero,-2(a5)
   174a4:	fee79ce3          	bne	a5,a4,1749c <_ldtoa_r+0x1198>
   174a8:	a49ff06f          	j	16ef0 <_ldtoa_r+0xbec>
   174ac:	0d066863          	bltu	a2,a6,1757c <_ldtoa_r+0x1278>
   174b0:	12010793          	addi	a5,sp,288
   174b4:	10410813          	addi	a6,sp,260
   174b8:	cc5ff06f          	j	1717c <_ldtoa_r+0xe78>
   174bc:	00000613          	li	a2,0
   174c0:	00080713          	mv	a4,a6
   174c4:	0ee10893          	addi	a7,sp,238
   174c8:	0007d803          	lhu	a6,0(a5)
   174cc:	00075503          	lhu	a0,0(a4)
   174d0:	ffe78793          	addi	a5,a5,-2
   174d4:	ffe70713          	addi	a4,a4,-2
   174d8:	01050533          	add	a0,a0,a6
   174dc:	00c50633          	add	a2,a0,a2
   174e0:	00c79123          	sh	a2,2(a5)
   174e4:	01065613          	srli	a2,a2,0x10
   174e8:	00167613          	andi	a2,a2,1
   174ec:	fd171ee3          	bne	a4,a7,174c8 <_ldtoa_r+0x11c4>
   174f0:	00000613          	li	a2,0
   174f4:	ccdff06f          	j	171c0 <_ldtoa_r+0xebc>
   174f8:	00068713          	mv	a4,a3
   174fc:	06069263          	bnez	a3,17560 <_ldtoa_r+0x125c>
   17500:	10e11783          	lh	a5,270(sp)
   17504:	0407ce63          	bltz	a5,17560 <_ldtoa_r+0x125c>
   17508:	12010693          	addi	a3,sp,288
   1750c:	0200006f          	j	1752c <_ldtoa_r+0x1228>
   17510:	00f69023          	sh	a5,0(a3)
   17514:	00171713          	slli	a4,a4,0x1
   17518:	01071713          	slli	a4,a4,0x10
   1751c:	ffe68693          	addi	a3,a3,-2
   17520:	10a10793          	addi	a5,sp,266
   17524:	01075713          	srli	a4,a4,0x10
   17528:	caf684e3          	beq	a3,a5,171d0 <_ldtoa_r+0xecc>
   1752c:	0006d783          	lhu	a5,0(a3)
   17530:	01079613          	slli	a2,a5,0x10
   17534:	41065613          	srai	a2,a2,0x10
   17538:	00179793          	slli	a5,a5,0x1
   1753c:	00065463          	bgez	a2,17544 <_ldtoa_r+0x1240>
   17540:	00176713          	ori	a4,a4,1
   17544:	01079793          	slli	a5,a5,0x10
   17548:	0107d793          	srli	a5,a5,0x10
   1754c:	00277613          	andi	a2,a4,2
   17550:	0017e593          	ori	a1,a5,1
   17554:	fa060ee3          	beqz	a2,17510 <_ldtoa_r+0x120c>
   17558:	00b69023          	sh	a1,0(a3)
   1755c:	fb9ff06f          	j	17514 <_ldtoa_r+0x1210>
   17560:	10c10613          	addi	a2,sp,268
   17564:	12010793          	addi	a5,sp,288
   17568:	08071263          	bnez	a4,175ec <_ldtoa_r+0x12e8>
   1756c:	08c78263          	beq	a5,a2,175f0 <_ldtoa_r+0x12ec>
   17570:	00065703          	lhu	a4,0(a2)
   17574:	00260613          	addi	a2,a2,2
   17578:	ff1ff06f          	j	17568 <_ldtoa_r+0x1264>
   1757c:	00090613          	mv	a2,s2
   17580:	10810713          	addi	a4,sp,264
   17584:	12010793          	addi	a5,sp,288
   17588:	00270713          	addi	a4,a4,2
   1758c:	ffe75503          	lhu	a0,-2(a4)
   17590:	00260613          	addi	a2,a2,2
   17594:	fea61f23          	sh	a0,-2(a2)
   17598:	fef718e3          	bne	a4,a5,17588 <_ldtoa_r+0x1284>
   1759c:	12011e23          	sh	zero,316(sp)
   175a0:	10810613          	addi	a2,sp,264
   175a4:	0ec10713          	addi	a4,sp,236
   175a8:	10410813          	addi	a6,sp,260
   175ac:	00270713          	addi	a4,a4,2
   175b0:	ffe75503          	lhu	a0,-2(a4)
   175b4:	00260613          	addi	a2,a2,2
   175b8:	fea61f23          	sh	a0,-2(a2)
   175bc:	ff0718e3          	bne	a4,a6,175ac <_ldtoa_r+0x12a8>
   175c0:	12011023          	sh	zero,288(sp)
   175c4:	0ec10513          	addi	a0,sp,236
   175c8:	00090713          	mv	a4,s2
   175cc:	13c10613          	addi	a2,sp,316
   175d0:	00270713          	addi	a4,a4,2
   175d4:	ffe75883          	lhu	a7,-2(a4)
   175d8:	00250513          	addi	a0,a0,2
   175dc:	ff151f23          	sh	a7,-2(a0)
   175e0:	fec718e3          	bne	a4,a2,175d0 <_ldtoa_r+0x12cc>
   175e4:	10011223          	sh	zero,260(sp)
   175e8:	b95ff06f          	j	1717c <_ldtoa_r+0xe78>
   175ec:	00168513          	addi	a0,a3,1
   175f0:	10a11523          	sh	a0,266(sp)
   175f4:	bddff06f          	j	171d0 <_ldtoa_r+0xecc>

000175f8 <_ldcheck>:
   175f8:	00852703          	lw	a4,8(a0)
   175fc:	00c52783          	lw	a5,12(a0)
   17600:	00052603          	lw	a2,0(a0)
   17604:	00452683          	lw	a3,4(a0)
   17608:	fc010113          	addi	sp,sp,-64
   1760c:	00010513          	mv	a0,sp
   17610:	01410593          	addi	a1,sp,20
   17614:	00e12423          	sw	a4,8(sp)
   17618:	00f12623          	sw	a5,12(sp)
   1761c:	02112e23          	sw	ra,60(sp)
   17620:	00c12023          	sw	a2,0(sp)
   17624:	00d12223          	sw	a3,4(sp)
   17628:	b99fe0ef          	jal	ra,161c0 <e113toe.isra.8>
   1762c:	02615783          	lhu	a5,38(sp)
   17630:	00000513          	li	a0,0
   17634:	fff7c793          	not	a5,a5
   17638:	01179713          	slli	a4,a5,0x11
   1763c:	00071a63          	bnez	a4,17650 <_ldcheck+0x58>
   17640:	01410513          	addi	a0,sp,20
   17644:	e5cfd0ef          	jal	ra,14ca0 <eisnan.part.0>
   17648:	00153513          	seqz	a0,a0
   1764c:	00150513          	addi	a0,a0,1
   17650:	03c12083          	lw	ra,60(sp)
   17654:	04010113          	addi	sp,sp,64
   17658:	00008067          	ret

0001765c <__localeconv_l>:
   1765c:	0f050513          	addi	a0,a0,240
   17660:	00008067          	ret

00017664 <_localeconv_r>:
   17664:	d1818513          	addi	a0,gp,-744 # 265d8 <__global_locale+0xf0>
   17668:	00008067          	ret

0001766c <localeconv>:
   1766c:	d1818513          	addi	a0,gp,-744 # 265d8 <__global_locale+0xf0>
   17670:	00008067          	ret

00017674 <_setlocale_r>:
   17674:	04060063          	beqz	a2,176b4 <_setlocale_r+0x40>
   17678:	ff010113          	addi	sp,sp,-16
   1767c:	0000e597          	auipc	a1,0xe
   17680:	e9c58593          	addi	a1,a1,-356 # 25518 <bmask+0x50>
   17684:	00060513          	mv	a0,a2
   17688:	00812423          	sw	s0,8(sp)
   1768c:	00112623          	sw	ra,12(sp)
   17690:	00060413          	mv	s0,a2
   17694:	790020ef          	jal	ra,19e24 <strcmp>
   17698:	02051463          	bnez	a0,176c0 <_setlocale_r+0x4c>
   1769c:	0000e517          	auipc	a0,0xe
   176a0:	e7850513          	addi	a0,a0,-392 # 25514 <bmask+0x4c>
   176a4:	00c12083          	lw	ra,12(sp)
   176a8:	00812403          	lw	s0,8(sp)
   176ac:	01010113          	addi	sp,sp,16
   176b0:	00008067          	ret
   176b4:	0000e517          	auipc	a0,0xe
   176b8:	e6050513          	addi	a0,a0,-416 # 25514 <bmask+0x4c>
   176bc:	00008067          	ret
   176c0:	0000e597          	auipc	a1,0xe
   176c4:	e5458593          	addi	a1,a1,-428 # 25514 <bmask+0x4c>
   176c8:	00040513          	mv	a0,s0
   176cc:	758020ef          	jal	ra,19e24 <strcmp>
   176d0:	fc0506e3          	beqz	a0,1769c <_setlocale_r+0x28>
   176d4:	0000e597          	auipc	a1,0xe
   176d8:	bb458593          	addi	a1,a1,-1100 # 25288 <zeroes.4505+0x44>
   176dc:	00040513          	mv	a0,s0
   176e0:	744020ef          	jal	ra,19e24 <strcmp>
   176e4:	fa050ce3          	beqz	a0,1769c <_setlocale_r+0x28>
   176e8:	00000513          	li	a0,0
   176ec:	fb9ff06f          	j	176a4 <_setlocale_r+0x30>

000176f0 <__locale_mb_cur_max>:
   176f0:	d501c503          	lbu	a0,-688(gp) # 26610 <__global_locale+0x128>
   176f4:	00008067          	ret

000176f8 <setlocale>:
   176f8:	1c018793          	addi	a5,gp,448 # 26a80 <_impure_ptr>
   176fc:	00058613          	mv	a2,a1
   17700:	00050593          	mv	a1,a0
   17704:	0007a503          	lw	a0,0(a5)
   17708:	f6dff06f          	j	17674 <_setlocale_r>

0001770c <__swhatbuf_r>:
   1770c:	f9010113          	addi	sp,sp,-112
   17710:	06812423          	sw	s0,104(sp)
   17714:	00058413          	mv	s0,a1
   17718:	00e59583          	lh	a1,14(a1)
   1771c:	06912223          	sw	s1,100(sp)
   17720:	07212023          	sw	s2,96(sp)
   17724:	06112623          	sw	ra,108(sp)
   17728:	00060493          	mv	s1,a2
   1772c:	00068913          	mv	s2,a3
   17730:	0405ca63          	bltz	a1,17784 <__swhatbuf_r+0x78>
   17734:	00810613          	addi	a2,sp,8
   17738:	5e1060ef          	jal	ra,1e518 <_fstat_r>
   1773c:	04054463          	bltz	a0,17784 <__swhatbuf_r+0x78>
   17740:	00c12703          	lw	a4,12(sp)
   17744:	0000f7b7          	lui	a5,0xf
   17748:	06c12083          	lw	ra,108(sp)
   1774c:	00e7f7b3          	and	a5,a5,a4
   17750:	ffffe737          	lui	a4,0xffffe
   17754:	00e787b3          	add	a5,a5,a4
   17758:	0017b793          	seqz	a5,a5
   1775c:	06812403          	lw	s0,104(sp)
   17760:	00f92023          	sw	a5,0(s2) # fffff000 <__BSS_END__+0xfffd8518>
   17764:	40000793          	li	a5,1024
   17768:	00f4a023          	sw	a5,0(s1)
   1776c:	00001537          	lui	a0,0x1
   17770:	06412483          	lw	s1,100(sp)
   17774:	06012903          	lw	s2,96(sp)
   17778:	80050513          	addi	a0,a0,-2048 # 800 <register_fini-0xf874>
   1777c:	07010113          	addi	sp,sp,112
   17780:	00008067          	ret
   17784:	00c45783          	lhu	a5,12(s0)
   17788:	00092023          	sw	zero,0(s2)
   1778c:	0807f793          	andi	a5,a5,128
   17790:	02078463          	beqz	a5,177b8 <__swhatbuf_r+0xac>
   17794:	06c12083          	lw	ra,108(sp)
   17798:	06812403          	lw	s0,104(sp)
   1779c:	04000793          	li	a5,64
   177a0:	00f4a023          	sw	a5,0(s1)
   177a4:	06012903          	lw	s2,96(sp)
   177a8:	06412483          	lw	s1,100(sp)
   177ac:	00000513          	li	a0,0
   177b0:	07010113          	addi	sp,sp,112
   177b4:	00008067          	ret
   177b8:	06c12083          	lw	ra,108(sp)
   177bc:	06812403          	lw	s0,104(sp)
   177c0:	40000793          	li	a5,1024
   177c4:	00f4a023          	sw	a5,0(s1)
   177c8:	06012903          	lw	s2,96(sp)
   177cc:	06412483          	lw	s1,100(sp)
   177d0:	00000513          	li	a0,0
   177d4:	07010113          	addi	sp,sp,112
   177d8:	00008067          	ret

000177dc <__smakebuf_r>:
   177dc:	00c5d703          	lhu	a4,12(a1)
   177e0:	fe010113          	addi	sp,sp,-32
   177e4:	00812c23          	sw	s0,24(sp)
   177e8:	00112e23          	sw	ra,28(sp)
   177ec:	00912a23          	sw	s1,20(sp)
   177f0:	01212823          	sw	s2,16(sp)
   177f4:	00277713          	andi	a4,a4,2
   177f8:	00058413          	mv	s0,a1
   177fc:	02070863          	beqz	a4,1782c <__smakebuf_r+0x50>
   17800:	04358713          	addi	a4,a1,67
   17804:	00e5a023          	sw	a4,0(a1)
   17808:	00e5a823          	sw	a4,16(a1)
   1780c:	00100713          	li	a4,1
   17810:	00e5aa23          	sw	a4,20(a1)
   17814:	01c12083          	lw	ra,28(sp)
   17818:	01812403          	lw	s0,24(sp)
   1781c:	01412483          	lw	s1,20(sp)
   17820:	01012903          	lw	s2,16(sp)
   17824:	02010113          	addi	sp,sp,32
   17828:	00008067          	ret
   1782c:	00c10693          	addi	a3,sp,12
   17830:	00810613          	addi	a2,sp,8
   17834:	00050493          	mv	s1,a0
   17838:	ed5ff0ef          	jal	ra,1770c <__swhatbuf_r>
   1783c:	00812583          	lw	a1,8(sp)
   17840:	00050913          	mv	s2,a0
   17844:	00048513          	mv	a0,s1
   17848:	0b4000ef          	jal	ra,178fc <_malloc_r>
   1784c:	00c41783          	lh	a5,12(s0)
   17850:	04050863          	beqz	a0,178a0 <__smakebuf_r+0xc4>
   17854:	ffffc697          	auipc	a3,0xffffc
   17858:	4d868693          	addi	a3,a3,1240 # 13d2c <_cleanup_r>
   1785c:	02d4ae23          	sw	a3,60(s1)
   17860:	00812683          	lw	a3,8(sp)
   17864:	00c12703          	lw	a4,12(sp)
   17868:	0807e793          	ori	a5,a5,128
   1786c:	00f41623          	sh	a5,12(s0)
   17870:	00a42023          	sw	a0,0(s0)
   17874:	00a42823          	sw	a0,16(s0)
   17878:	00d42a23          	sw	a3,20(s0)
   1787c:	04071863          	bnez	a4,178cc <__smakebuf_r+0xf0>
   17880:	0127e7b3          	or	a5,a5,s2
   17884:	00f41623          	sh	a5,12(s0)
   17888:	01c12083          	lw	ra,28(sp)
   1788c:	01812403          	lw	s0,24(sp)
   17890:	01412483          	lw	s1,20(sp)
   17894:	01012903          	lw	s2,16(sp)
   17898:	02010113          	addi	sp,sp,32
   1789c:	00008067          	ret
   178a0:	2007f713          	andi	a4,a5,512
   178a4:	f60718e3          	bnez	a4,17814 <__smakebuf_r+0x38>
   178a8:	ffc7f793          	andi	a5,a5,-4
   178ac:	0027e793          	ori	a5,a5,2
   178b0:	04340713          	addi	a4,s0,67
   178b4:	00f41623          	sh	a5,12(s0)
   178b8:	00100793          	li	a5,1
   178bc:	00e42023          	sw	a4,0(s0)
   178c0:	00e42823          	sw	a4,16(s0)
   178c4:	00f42a23          	sw	a5,20(s0)
   178c8:	f4dff06f          	j	17814 <__smakebuf_r+0x38>
   178cc:	00e41583          	lh	a1,14(s0)
   178d0:	00048513          	mv	a0,s1
   178d4:	4a1060ef          	jal	ra,1e574 <_isatty_r>
   178d8:	00051663          	bnez	a0,178e4 <__smakebuf_r+0x108>
   178dc:	00c41783          	lh	a5,12(s0)
   178e0:	fa1ff06f          	j	17880 <__smakebuf_r+0xa4>
   178e4:	00c45783          	lhu	a5,12(s0)
   178e8:	ffc7f793          	andi	a5,a5,-4
   178ec:	0017e793          	ori	a5,a5,1
   178f0:	01079793          	slli	a5,a5,0x10
   178f4:	4107d793          	srai	a5,a5,0x10
   178f8:	f89ff06f          	j	17880 <__smakebuf_r+0xa4>

000178fc <_malloc_r>:
   178fc:	fd010113          	addi	sp,sp,-48
   17900:	02912223          	sw	s1,36(sp)
   17904:	03212023          	sw	s2,32(sp)
   17908:	02112623          	sw	ra,44(sp)
   1790c:	02812423          	sw	s0,40(sp)
   17910:	01312e23          	sw	s3,28(sp)
   17914:	01412c23          	sw	s4,24(sp)
   17918:	01512a23          	sw	s5,20(sp)
   1791c:	01612823          	sw	s6,16(sp)
   17920:	01712623          	sw	s7,12(sp)
   17924:	01812423          	sw	s8,8(sp)
   17928:	01912223          	sw	s9,4(sp)
   1792c:	00b58493          	addi	s1,a1,11
   17930:	01600793          	li	a5,22
   17934:	00050913          	mv	s2,a0
   17938:	0697e463          	bltu	a5,s1,179a0 <_malloc_r+0xa4>
   1793c:	01000793          	li	a5,16
   17940:	20b7ec63          	bltu	a5,a1,17b58 <_malloc_r+0x25c>
   17944:	311000ef          	jal	ra,18454 <__malloc_lock>
   17948:	01000493          	li	s1,16
   1794c:	01800793          	li	a5,24
   17950:	00200613          	li	a2,2
   17954:	d9418993          	addi	s3,gp,-620 # 26654 <__malloc_av_>
   17958:	00f987b3          	add	a5,s3,a5
   1795c:	0047a403          	lw	s0,4(a5) # f004 <register_fini-0x1070>
   17960:	ff878713          	addi	a4,a5,-8
   17964:	24e40263          	beq	s0,a4,17ba8 <_malloc_r+0x2ac>
   17968:	00442783          	lw	a5,4(s0)
   1796c:	00c42683          	lw	a3,12(s0)
   17970:	00842603          	lw	a2,8(s0)
   17974:	ffc7f793          	andi	a5,a5,-4
   17978:	00f407b3          	add	a5,s0,a5
   1797c:	0047a703          	lw	a4,4(a5)
   17980:	00d62623          	sw	a3,12(a2)
   17984:	00c6a423          	sw	a2,8(a3)
   17988:	00176713          	ori	a4,a4,1
   1798c:	00090513          	mv	a0,s2
   17990:	00e7a223          	sw	a4,4(a5)
   17994:	2c5000ef          	jal	ra,18458 <__malloc_unlock>
   17998:	00840513          	addi	a0,s0,8
   1799c:	1c80006f          	j	17b64 <_malloc_r+0x268>
   179a0:	ff84f493          	andi	s1,s1,-8
   179a4:	1a04ca63          	bltz	s1,17b58 <_malloc_r+0x25c>
   179a8:	1ab4e863          	bltu	s1,a1,17b58 <_malloc_r+0x25c>
   179ac:	2a9000ef          	jal	ra,18454 <__malloc_lock>
   179b0:	1f700793          	li	a5,503
   179b4:	4897f063          	bgeu	a5,s1,17e34 <_malloc_r+0x538>
   179b8:	0094d793          	srli	a5,s1,0x9
   179bc:	1c078e63          	beqz	a5,17b98 <_malloc_r+0x29c>
   179c0:	00400713          	li	a4,4
   179c4:	40f76463          	bltu	a4,a5,17dcc <_malloc_r+0x4d0>
   179c8:	0064d793          	srli	a5,s1,0x6
   179cc:	03978613          	addi	a2,a5,57
   179d0:	03878513          	addi	a0,a5,56
   179d4:	00361693          	slli	a3,a2,0x3
   179d8:	d9418993          	addi	s3,gp,-620 # 26654 <__malloc_av_>
   179dc:	00d986b3          	add	a3,s3,a3
   179e0:	0046a403          	lw	s0,4(a3)
   179e4:	ff868693          	addi	a3,a3,-8
   179e8:	02868c63          	beq	a3,s0,17a20 <_malloc_r+0x124>
   179ec:	00442783          	lw	a5,4(s0)
   179f0:	00f00593          	li	a1,15
   179f4:	ffc7f793          	andi	a5,a5,-4
   179f8:	40978733          	sub	a4,a5,s1
   179fc:	02e5c063          	blt	a1,a4,17a1c <_malloc_r+0x120>
   17a00:	36075063          	bgez	a4,17d60 <_malloc_r+0x464>
   17a04:	00c42403          	lw	s0,12(s0)
   17a08:	00868c63          	beq	a3,s0,17a20 <_malloc_r+0x124>
   17a0c:	00442783          	lw	a5,4(s0)
   17a10:	ffc7f793          	andi	a5,a5,-4
   17a14:	40978733          	sub	a4,a5,s1
   17a18:	fee5d4e3          	bge	a1,a4,17a00 <_malloc_r+0x104>
   17a1c:	00050613          	mv	a2,a0
   17a20:	0109a403          	lw	s0,16(s3)
   17a24:	d9c18813          	addi	a6,gp,-612 # 2665c <__malloc_av_+0x8>
   17a28:	19040c63          	beq	s0,a6,17bc0 <_malloc_r+0x2c4>
   17a2c:	00442583          	lw	a1,4(s0)
   17a30:	00f00713          	li	a4,15
   17a34:	ffc5f593          	andi	a1,a1,-4
   17a38:	409587b3          	sub	a5,a1,s1
   17a3c:	42f74263          	blt	a4,a5,17e60 <_malloc_r+0x564>
   17a40:	db01a423          	sw	a6,-600(gp) # 26668 <__malloc_av_+0x14>
   17a44:	db01a223          	sw	a6,-604(gp) # 26664 <__malloc_av_+0x10>
   17a48:	3e07dc63          	bgez	a5,17e40 <_malloc_r+0x544>
   17a4c:	1ff00793          	li	a5,511
   17a50:	30b7ee63          	bltu	a5,a1,17d6c <_malloc_r+0x470>
   17a54:	0035d593          	srli	a1,a1,0x3
   17a58:	00158793          	addi	a5,a1,1
   17a5c:	00379793          	slli	a5,a5,0x3
   17a60:	0049a503          	lw	a0,4(s3)
   17a64:	00f987b3          	add	a5,s3,a5
   17a68:	0007a683          	lw	a3,0(a5)
   17a6c:	4025d593          	srai	a1,a1,0x2
   17a70:	00100713          	li	a4,1
   17a74:	00b71733          	sll	a4,a4,a1
   17a78:	00a76733          	or	a4,a4,a0
   17a7c:	ff878593          	addi	a1,a5,-8
   17a80:	00b42623          	sw	a1,12(s0)
   17a84:	00d42423          	sw	a3,8(s0)
   17a88:	d8e1ac23          	sw	a4,-616(gp) # 26658 <__malloc_av_+0x4>
   17a8c:	0087a023          	sw	s0,0(a5)
   17a90:	0086a623          	sw	s0,12(a3)
   17a94:	40265793          	srai	a5,a2,0x2
   17a98:	00100693          	li	a3,1
   17a9c:	00f696b3          	sll	a3,a3,a5
   17aa0:	12d76a63          	bltu	a4,a3,17bd4 <_malloc_r+0x2d8>
   17aa4:	00e6f7b3          	and	a5,a3,a4
   17aa8:	02079463          	bnez	a5,17ad0 <_malloc_r+0x1d4>
   17aac:	00169693          	slli	a3,a3,0x1
   17ab0:	ffc67613          	andi	a2,a2,-4
   17ab4:	00e6f7b3          	and	a5,a3,a4
   17ab8:	00460613          	addi	a2,a2,4
   17abc:	00079a63          	bnez	a5,17ad0 <_malloc_r+0x1d4>
   17ac0:	00169693          	slli	a3,a3,0x1
   17ac4:	00e6f7b3          	and	a5,a3,a4
   17ac8:	00460613          	addi	a2,a2,4
   17acc:	fe078ae3          	beqz	a5,17ac0 <_malloc_r+0x1c4>
   17ad0:	00f00513          	li	a0,15
   17ad4:	00361893          	slli	a7,a2,0x3
   17ad8:	011988b3          	add	a7,s3,a7
   17adc:	00088593          	mv	a1,a7
   17ae0:	00060313          	mv	t1,a2
   17ae4:	00c5a403          	lw	s0,12(a1)
   17ae8:	00859a63          	bne	a1,s0,17afc <_malloc_r+0x200>
   17aec:	3040006f          	j	17df0 <_malloc_r+0x4f4>
   17af0:	30075a63          	bgez	a4,17e04 <_malloc_r+0x508>
   17af4:	00c42403          	lw	s0,12(s0)
   17af8:	2e858c63          	beq	a1,s0,17df0 <_malloc_r+0x4f4>
   17afc:	00442783          	lw	a5,4(s0)
   17b00:	ffc7f793          	andi	a5,a5,-4
   17b04:	40978733          	sub	a4,a5,s1
   17b08:	fee554e3          	bge	a0,a4,17af0 <_malloc_r+0x1f4>
   17b0c:	00c42683          	lw	a3,12(s0)
   17b10:	00842603          	lw	a2,8(s0)
   17b14:	0014e593          	ori	a1,s1,1
   17b18:	00b42223          	sw	a1,4(s0)
   17b1c:	00d62623          	sw	a3,12(a2)
   17b20:	00c6a423          	sw	a2,8(a3)
   17b24:	009404b3          	add	s1,s0,s1
   17b28:	da91a423          	sw	s1,-600(gp) # 26668 <__malloc_av_+0x14>
   17b2c:	da91a223          	sw	s1,-604(gp) # 26664 <__malloc_av_+0x10>
   17b30:	00176693          	ori	a3,a4,1
   17b34:	0104a623          	sw	a6,12(s1)
   17b38:	0104a423          	sw	a6,8(s1)
   17b3c:	00d4a223          	sw	a3,4(s1)
   17b40:	00f407b3          	add	a5,s0,a5
   17b44:	00090513          	mv	a0,s2
   17b48:	00e7a023          	sw	a4,0(a5)
   17b4c:	10d000ef          	jal	ra,18458 <__malloc_unlock>
   17b50:	00840513          	addi	a0,s0,8
   17b54:	0100006f          	j	17b64 <_malloc_r+0x268>
   17b58:	00c00793          	li	a5,12
   17b5c:	00f92023          	sw	a5,0(s2)
   17b60:	00000513          	li	a0,0
   17b64:	02c12083          	lw	ra,44(sp)
   17b68:	02812403          	lw	s0,40(sp)
   17b6c:	02412483          	lw	s1,36(sp)
   17b70:	02012903          	lw	s2,32(sp)
   17b74:	01c12983          	lw	s3,28(sp)
   17b78:	01812a03          	lw	s4,24(sp)
   17b7c:	01412a83          	lw	s5,20(sp)
   17b80:	01012b03          	lw	s6,16(sp)
   17b84:	00c12b83          	lw	s7,12(sp)
   17b88:	00812c03          	lw	s8,8(sp)
   17b8c:	00412c83          	lw	s9,4(sp)
   17b90:	03010113          	addi	sp,sp,48
   17b94:	00008067          	ret
   17b98:	20000693          	li	a3,512
   17b9c:	04000613          	li	a2,64
   17ba0:	03f00513          	li	a0,63
   17ba4:	e35ff06f          	j	179d8 <_malloc_r+0xdc>
   17ba8:	00c7a403          	lw	s0,12(a5)
   17bac:	00260613          	addi	a2,a2,2
   17bb0:	da879ce3          	bne	a5,s0,17968 <_malloc_r+0x6c>
   17bb4:	0109a403          	lw	s0,16(s3)
   17bb8:	d9c18813          	addi	a6,gp,-612 # 2665c <__malloc_av_+0x8>
   17bbc:	e70418e3          	bne	s0,a6,17a2c <_malloc_r+0x130>
   17bc0:	0049a703          	lw	a4,4(s3)
   17bc4:	40265793          	srai	a5,a2,0x2
   17bc8:	00100693          	li	a3,1
   17bcc:	00f696b3          	sll	a3,a3,a5
   17bd0:	ecd77ae3          	bgeu	a4,a3,17aa4 <_malloc_r+0x1a8>
   17bd4:	0089a403          	lw	s0,8(s3)
   17bd8:	00442a83          	lw	s5,4(s0)
   17bdc:	ffcafb93          	andi	s7,s5,-4
   17be0:	009be863          	bltu	s7,s1,17bf0 <_malloc_r+0x2f4>
   17be4:	409b87b3          	sub	a5,s7,s1
   17be8:	00f00713          	li	a4,15
   17bec:	14f74663          	blt	a4,a5,17d38 <_malloc_r+0x43c>
   17bf0:	1d818793          	addi	a5,gp,472 # 26a98 <__malloc_top_pad>
   17bf4:	1c418c13          	addi	s8,gp,452 # 26a84 <__malloc_sbrk_base>
   17bf8:	0007aa83          	lw	s5,0(a5)
   17bfc:	000c2703          	lw	a4,0(s8)
   17c00:	fff00793          	li	a5,-1
   17c04:	01740a33          	add	s4,s0,s7
   17c08:	01548ab3          	add	s5,s1,s5
   17c0c:	32f70c63          	beq	a4,a5,17f44 <_malloc_r+0x648>
   17c10:	000017b7          	lui	a5,0x1
   17c14:	00f78793          	addi	a5,a5,15 # 100f <register_fini-0xf065>
   17c18:	00fa8ab3          	add	s5,s5,a5
   17c1c:	fffff7b7          	lui	a5,0xfffff
   17c20:	00fafab3          	and	s5,s5,a5
   17c24:	000a8593          	mv	a1,s5
   17c28:	00090513          	mv	a0,s2
   17c2c:	6b1010ef          	jal	ra,19adc <_sbrk_r>
   17c30:	fff00793          	li	a5,-1
   17c34:	00050b13          	mv	s6,a0
   17c38:	26f50e63          	beq	a0,a5,17eb4 <_malloc_r+0x5b8>
   17c3c:	27456a63          	bltu	a0,s4,17eb0 <_malloc_r+0x5b4>
   17c40:	1fc18c93          	addi	s9,gp,508 # 26abc <__malloc_current_mallinfo>
   17c44:	000ca783          	lw	a5,0(s9)
   17c48:	00fa87b3          	add	a5,s5,a5
   17c4c:	1ef1ae23          	sw	a5,508(gp) # 26abc <__malloc_current_mallinfo>
   17c50:	00078713          	mv	a4,a5
   17c54:	38aa0a63          	beq	s4,a0,17fe8 <_malloc_r+0x6ec>
   17c58:	000c2683          	lw	a3,0(s8)
   17c5c:	fff00793          	li	a5,-1
   17c60:	3af68263          	beq	a3,a5,18004 <_malloc_r+0x708>
   17c64:	414b07b3          	sub	a5,s6,s4
   17c68:	00e787b3          	add	a5,a5,a4
   17c6c:	1ef1ae23          	sw	a5,508(gp) # 26abc <__malloc_current_mallinfo>
   17c70:	007b7c13          	andi	s8,s6,7
   17c74:	2e0c0a63          	beqz	s8,17f68 <_malloc_r+0x66c>
   17c78:	418b0b33          	sub	s6,s6,s8
   17c7c:	000017b7          	lui	a5,0x1
   17c80:	008b0b13          	addi	s6,s6,8
   17c84:	fff78a13          	addi	s4,a5,-1 # fff <register_fini-0xf075>
   17c88:	015b0ab3          	add	s5,s6,s5
   17c8c:	00878793          	addi	a5,a5,8
   17c90:	014af733          	and	a4,s5,s4
   17c94:	418787b3          	sub	a5,a5,s8
   17c98:	40e787b3          	sub	a5,a5,a4
   17c9c:	0147fa33          	and	s4,a5,s4
   17ca0:	000a0593          	mv	a1,s4
   17ca4:	00090513          	mv	a0,s2
   17ca8:	635010ef          	jal	ra,19adc <_sbrk_r>
   17cac:	fff00793          	li	a5,-1
   17cb0:	3af50463          	beq	a0,a5,18058 <_malloc_r+0x75c>
   17cb4:	41650533          	sub	a0,a0,s6
   17cb8:	01450ab3          	add	s5,a0,s4
   17cbc:	000ca783          	lw	a5,0(s9)
   17cc0:	d961ae23          	sw	s6,-612(gp) # 2665c <__malloc_av_+0x8>
   17cc4:	001aea93          	ori	s5,s5,1
   17cc8:	00fa07b3          	add	a5,s4,a5
   17ccc:	1ef1ae23          	sw	a5,508(gp) # 26abc <__malloc_current_mallinfo>
   17cd0:	015b2223          	sw	s5,4(s6)
   17cd4:	33340c63          	beq	s0,s3,1800c <_malloc_r+0x710>
   17cd8:	00f00613          	li	a2,15
   17cdc:	33767c63          	bgeu	a2,s7,18014 <_malloc_r+0x718>
   17ce0:	00442683          	lw	a3,4(s0)
   17ce4:	ff4b8713          	addi	a4,s7,-12
   17ce8:	ff877713          	andi	a4,a4,-8
   17cec:	0016f693          	andi	a3,a3,1
   17cf0:	00e6e6b3          	or	a3,a3,a4
   17cf4:	00d42223          	sw	a3,4(s0)
   17cf8:	00500593          	li	a1,5
   17cfc:	00e406b3          	add	a3,s0,a4
   17d00:	00b6a223          	sw	a1,4(a3)
   17d04:	00b6a423          	sw	a1,8(a3)
   17d08:	36e66263          	bltu	a2,a4,1806c <_malloc_r+0x770>
   17d0c:	004b2a83          	lw	s5,4(s6)
   17d10:	000b0413          	mv	s0,s6
   17d14:	1d418713          	addi	a4,gp,468 # 26a94 <__malloc_max_sbrked_mem>
   17d18:	00072703          	lw	a4,0(a4) # ffffe000 <__BSS_END__+0xfffd7518>
   17d1c:	00f77463          	bgeu	a4,a5,17d24 <_malloc_r+0x428>
   17d20:	1cf1aa23          	sw	a5,468(gp) # 26a94 <__malloc_max_sbrked_mem>
   17d24:	1d018713          	addi	a4,gp,464 # 26a90 <__malloc_max_total_mem>
   17d28:	00072703          	lw	a4,0(a4)
   17d2c:	18f77863          	bgeu	a4,a5,17ebc <_malloc_r+0x5c0>
   17d30:	1cf1a823          	sw	a5,464(gp) # 26a90 <__malloc_max_total_mem>
   17d34:	1880006f          	j	17ebc <_malloc_r+0x5c0>
   17d38:	0014e713          	ori	a4,s1,1
   17d3c:	00e42223          	sw	a4,4(s0)
   17d40:	009404b3          	add	s1,s0,s1
   17d44:	d891ae23          	sw	s1,-612(gp) # 2665c <__malloc_av_+0x8>
   17d48:	0017e793          	ori	a5,a5,1
   17d4c:	00090513          	mv	a0,s2
   17d50:	00f4a223          	sw	a5,4(s1)
   17d54:	704000ef          	jal	ra,18458 <__malloc_unlock>
   17d58:	00840513          	addi	a0,s0,8
   17d5c:	e09ff06f          	j	17b64 <_malloc_r+0x268>
   17d60:	00c42683          	lw	a3,12(s0)
   17d64:	00842603          	lw	a2,8(s0)
   17d68:	c11ff06f          	j	17978 <_malloc_r+0x7c>
   17d6c:	0095d793          	srli	a5,a1,0x9
   17d70:	00400713          	li	a4,4
   17d74:	12f77463          	bgeu	a4,a5,17e9c <_malloc_r+0x5a0>
   17d78:	01400713          	li	a4,20
   17d7c:	22f76063          	bltu	a4,a5,17f9c <_malloc_r+0x6a0>
   17d80:	05c78693          	addi	a3,a5,92
   17d84:	05b78713          	addi	a4,a5,91
   17d88:	00369693          	slli	a3,a3,0x3
   17d8c:	00d986b3          	add	a3,s3,a3
   17d90:	0006a783          	lw	a5,0(a3)
   17d94:	ff868693          	addi	a3,a3,-8
   17d98:	1af68a63          	beq	a3,a5,17f4c <_malloc_r+0x650>
   17d9c:	0047a703          	lw	a4,4(a5)
   17da0:	ffc77713          	andi	a4,a4,-4
   17da4:	00e5f663          	bgeu	a1,a4,17db0 <_malloc_r+0x4b4>
   17da8:	0087a783          	lw	a5,8(a5)
   17dac:	fef698e3          	bne	a3,a5,17d9c <_malloc_r+0x4a0>
   17db0:	00c7a683          	lw	a3,12(a5)
   17db4:	0049a703          	lw	a4,4(s3)
   17db8:	00d42623          	sw	a3,12(s0)
   17dbc:	00f42423          	sw	a5,8(s0)
   17dc0:	0086a423          	sw	s0,8(a3)
   17dc4:	0087a623          	sw	s0,12(a5)
   17dc8:	ccdff06f          	j	17a94 <_malloc_r+0x198>
   17dcc:	01400713          	li	a4,20
   17dd0:	10f77863          	bgeu	a4,a5,17ee0 <_malloc_r+0x5e4>
   17dd4:	05400713          	li	a4,84
   17dd8:	1ef76063          	bltu	a4,a5,17fb8 <_malloc_r+0x6bc>
   17ddc:	00c4d793          	srli	a5,s1,0xc
   17de0:	06f78613          	addi	a2,a5,111
   17de4:	06e78513          	addi	a0,a5,110
   17de8:	00361693          	slli	a3,a2,0x3
   17dec:	bedff06f          	j	179d8 <_malloc_r+0xdc>
   17df0:	00130313          	addi	t1,t1,1
   17df4:	00337793          	andi	a5,t1,3
   17df8:	00858593          	addi	a1,a1,8
   17dfc:	ce0794e3          	bnez	a5,17ae4 <_malloc_r+0x1e8>
   17e00:	0fc0006f          	j	17efc <_malloc_r+0x600>
   17e04:	00f407b3          	add	a5,s0,a5
   17e08:	0047a703          	lw	a4,4(a5)
   17e0c:	00c42683          	lw	a3,12(s0)
   17e10:	00842603          	lw	a2,8(s0)
   17e14:	00176713          	ori	a4,a4,1
   17e18:	00e7a223          	sw	a4,4(a5)
   17e1c:	00d62623          	sw	a3,12(a2)
   17e20:	00090513          	mv	a0,s2
   17e24:	00c6a423          	sw	a2,8(a3)
   17e28:	630000ef          	jal	ra,18458 <__malloc_unlock>
   17e2c:	00840513          	addi	a0,s0,8
   17e30:	d35ff06f          	j	17b64 <_malloc_r+0x268>
   17e34:	0034d613          	srli	a2,s1,0x3
   17e38:	00848793          	addi	a5,s1,8
   17e3c:	b19ff06f          	j	17954 <_malloc_r+0x58>
   17e40:	00b405b3          	add	a1,s0,a1
   17e44:	0045a783          	lw	a5,4(a1)
   17e48:	00090513          	mv	a0,s2
   17e4c:	0017e793          	ori	a5,a5,1
   17e50:	00f5a223          	sw	a5,4(a1)
   17e54:	604000ef          	jal	ra,18458 <__malloc_unlock>
   17e58:	00840513          	addi	a0,s0,8
   17e5c:	d09ff06f          	j	17b64 <_malloc_r+0x268>
   17e60:	0014e713          	ori	a4,s1,1
   17e64:	00e42223          	sw	a4,4(s0)
   17e68:	009404b3          	add	s1,s0,s1
   17e6c:	da91a423          	sw	s1,-600(gp) # 26668 <__malloc_av_+0x14>
   17e70:	da91a223          	sw	s1,-604(gp) # 26664 <__malloc_av_+0x10>
   17e74:	0017e713          	ori	a4,a5,1
   17e78:	0104a623          	sw	a6,12(s1)
   17e7c:	0104a423          	sw	a6,8(s1)
   17e80:	00e4a223          	sw	a4,4(s1)
   17e84:	00b405b3          	add	a1,s0,a1
   17e88:	00090513          	mv	a0,s2
   17e8c:	00f5a023          	sw	a5,0(a1)
   17e90:	5c8000ef          	jal	ra,18458 <__malloc_unlock>
   17e94:	00840513          	addi	a0,s0,8
   17e98:	ccdff06f          	j	17b64 <_malloc_r+0x268>
   17e9c:	0065d793          	srli	a5,a1,0x6
   17ea0:	03978693          	addi	a3,a5,57
   17ea4:	03878713          	addi	a4,a5,56
   17ea8:	00369693          	slli	a3,a3,0x3
   17eac:	ee1ff06f          	j	17d8c <_malloc_r+0x490>
   17eb0:	13340263          	beq	s0,s3,17fd4 <_malloc_r+0x6d8>
   17eb4:	0089a403          	lw	s0,8(s3)
   17eb8:	00442a83          	lw	s5,4(s0)
   17ebc:	ffcafa93          	andi	s5,s5,-4
   17ec0:	409a87b3          	sub	a5,s5,s1
   17ec4:	009ae663          	bltu	s5,s1,17ed0 <_malloc_r+0x5d4>
   17ec8:	00f00713          	li	a4,15
   17ecc:	e6f746e3          	blt	a4,a5,17d38 <_malloc_r+0x43c>
   17ed0:	00090513          	mv	a0,s2
   17ed4:	584000ef          	jal	ra,18458 <__malloc_unlock>
   17ed8:	00000513          	li	a0,0
   17edc:	c89ff06f          	j	17b64 <_malloc_r+0x268>
   17ee0:	05c78613          	addi	a2,a5,92
   17ee4:	05b78513          	addi	a0,a5,91
   17ee8:	00361693          	slli	a3,a2,0x3
   17eec:	aedff06f          	j	179d8 <_malloc_r+0xdc>
   17ef0:	0088a783          	lw	a5,8(a7)
   17ef4:	fff60613          	addi	a2,a2,-1
   17ef8:	1d179463          	bne	a5,a7,180c0 <_malloc_r+0x7c4>
   17efc:	00367793          	andi	a5,a2,3
   17f00:	ff888893          	addi	a7,a7,-8
   17f04:	fe0796e3          	bnez	a5,17ef0 <_malloc_r+0x5f4>
   17f08:	0049a703          	lw	a4,4(s3)
   17f0c:	fff6c793          	not	a5,a3
   17f10:	00e7f7b3          	and	a5,a5,a4
   17f14:	d8f1ac23          	sw	a5,-616(gp) # 26658 <__malloc_av_+0x4>
   17f18:	00169693          	slli	a3,a3,0x1
   17f1c:	cad7ece3          	bltu	a5,a3,17bd4 <_malloc_r+0x2d8>
   17f20:	ca068ae3          	beqz	a3,17bd4 <_malloc_r+0x2d8>
   17f24:	00f6f733          	and	a4,a3,a5
   17f28:	00071a63          	bnez	a4,17f3c <_malloc_r+0x640>
   17f2c:	00169693          	slli	a3,a3,0x1
   17f30:	00f6f733          	and	a4,a3,a5
   17f34:	00430313          	addi	t1,t1,4
   17f38:	fe070ae3          	beqz	a4,17f2c <_malloc_r+0x630>
   17f3c:	00030613          	mv	a2,t1
   17f40:	b95ff06f          	j	17ad4 <_malloc_r+0x1d8>
   17f44:	010a8a93          	addi	s5,s5,16
   17f48:	cddff06f          	j	17c24 <_malloc_r+0x328>
   17f4c:	0049a503          	lw	a0,4(s3)
   17f50:	40275593          	srai	a1,a4,0x2
   17f54:	00100713          	li	a4,1
   17f58:	00b71733          	sll	a4,a4,a1
   17f5c:	00a76733          	or	a4,a4,a0
   17f60:	d8e1ac23          	sw	a4,-616(gp) # 26658 <__malloc_av_+0x4>
   17f64:	e55ff06f          	j	17db8 <_malloc_r+0x4bc>
   17f68:	000017b7          	lui	a5,0x1
   17f6c:	fff78713          	addi	a4,a5,-1 # fff <register_fini-0xf075>
   17f70:	015b0a33          	add	s4,s6,s5
   17f74:	00ea7a33          	and	s4,s4,a4
   17f78:	414787b3          	sub	a5,a5,s4
   17f7c:	00e7fa33          	and	s4,a5,a4
   17f80:	000a0593          	mv	a1,s4
   17f84:	00090513          	mv	a0,s2
   17f88:	355010ef          	jal	ra,19adc <_sbrk_r>
   17f8c:	fff00793          	li	a5,-1
   17f90:	d2f512e3          	bne	a0,a5,17cb4 <_malloc_r+0x3b8>
   17f94:	00000a13          	li	s4,0
   17f98:	d25ff06f          	j	17cbc <_malloc_r+0x3c0>
   17f9c:	05400713          	li	a4,84
   17fa0:	08f76063          	bltu	a4,a5,18020 <_malloc_r+0x724>
   17fa4:	00c5d793          	srli	a5,a1,0xc
   17fa8:	06f78693          	addi	a3,a5,111
   17fac:	06e78713          	addi	a4,a5,110
   17fb0:	00369693          	slli	a3,a3,0x3
   17fb4:	dd9ff06f          	j	17d8c <_malloc_r+0x490>
   17fb8:	15400713          	li	a4,340
   17fbc:	08f76063          	bltu	a4,a5,1803c <_malloc_r+0x740>
   17fc0:	00f4d793          	srli	a5,s1,0xf
   17fc4:	07878613          	addi	a2,a5,120
   17fc8:	07778513          	addi	a0,a5,119
   17fcc:	00361693          	slli	a3,a2,0x3
   17fd0:	a09ff06f          	j	179d8 <_malloc_r+0xdc>
   17fd4:	1fc18c93          	addi	s9,gp,508 # 26abc <__malloc_current_mallinfo>
   17fd8:	000ca783          	lw	a5,0(s9)
   17fdc:	00fa8733          	add	a4,s5,a5
   17fe0:	1ee1ae23          	sw	a4,508(gp) # 26abc <__malloc_current_mallinfo>
   17fe4:	c75ff06f          	j	17c58 <_malloc_r+0x35c>
   17fe8:	014a1693          	slli	a3,s4,0x14
   17fec:	c60696e3          	bnez	a3,17c58 <_malloc_r+0x35c>
   17ff0:	0089a403          	lw	s0,8(s3)
   17ff4:	015b8ab3          	add	s5,s7,s5
   17ff8:	001aea93          	ori	s5,s5,1
   17ffc:	01542223          	sw	s5,4(s0)
   18000:	d15ff06f          	j	17d14 <_malloc_r+0x418>
   18004:	1d61a223          	sw	s6,452(gp) # 26a84 <__malloc_sbrk_base>
   18008:	c69ff06f          	j	17c70 <_malloc_r+0x374>
   1800c:	000b0413          	mv	s0,s6
   18010:	d05ff06f          	j	17d14 <_malloc_r+0x418>
   18014:	00100793          	li	a5,1
   18018:	00fb2223          	sw	a5,4(s6)
   1801c:	eb5ff06f          	j	17ed0 <_malloc_r+0x5d4>
   18020:	15400713          	li	a4,340
   18024:	06f76263          	bltu	a4,a5,18088 <_malloc_r+0x78c>
   18028:	00f5d793          	srli	a5,a1,0xf
   1802c:	07878693          	addi	a3,a5,120
   18030:	07778713          	addi	a4,a5,119
   18034:	00369693          	slli	a3,a3,0x3
   18038:	d55ff06f          	j	17d8c <_malloc_r+0x490>
   1803c:	55400713          	li	a4,1364
   18040:	06f76263          	bltu	a4,a5,180a4 <_malloc_r+0x7a8>
   18044:	0124d793          	srli	a5,s1,0x12
   18048:	07d78613          	addi	a2,a5,125
   1804c:	07c78513          	addi	a0,a5,124
   18050:	00361693          	slli	a3,a2,0x3
   18054:	985ff06f          	j	179d8 <_malloc_r+0xdc>
   18058:	ff8c0c13          	addi	s8,s8,-8
   1805c:	018a8ab3          	add	s5,s5,s8
   18060:	416a8ab3          	sub	s5,s5,s6
   18064:	00000a13          	li	s4,0
   18068:	c55ff06f          	j	17cbc <_malloc_r+0x3c0>
   1806c:	00840593          	addi	a1,s0,8
   18070:	00090513          	mv	a0,s2
   18074:	950fc0ef          	jal	ra,141c4 <_free_r>
   18078:	0089a403          	lw	s0,8(s3)
   1807c:	000ca783          	lw	a5,0(s9)
   18080:	00442a83          	lw	s5,4(s0)
   18084:	c91ff06f          	j	17d14 <_malloc_r+0x418>
   18088:	55400713          	li	a4,1364
   1808c:	02f76463          	bltu	a4,a5,180b4 <_malloc_r+0x7b8>
   18090:	0125d793          	srli	a5,a1,0x12
   18094:	07d78693          	addi	a3,a5,125
   18098:	07c78713          	addi	a4,a5,124
   1809c:	00369693          	slli	a3,a3,0x3
   180a0:	cedff06f          	j	17d8c <_malloc_r+0x490>
   180a4:	3f800693          	li	a3,1016
   180a8:	07f00613          	li	a2,127
   180ac:	07e00513          	li	a0,126
   180b0:	929ff06f          	j	179d8 <_malloc_r+0xdc>
   180b4:	3f800693          	li	a3,1016
   180b8:	07e00713          	li	a4,126
   180bc:	cd1ff06f          	j	17d8c <_malloc_r+0x490>
   180c0:	0049a783          	lw	a5,4(s3)
   180c4:	e55ff06f          	j	17f18 <_malloc_r+0x61c>

000180c8 <_mbtowc_r>:
   180c8:	c2818793          	addi	a5,gp,-984 # 264e8 <__global_locale>
   180cc:	0e47a303          	lw	t1,228(a5)
   180d0:	00030067          	jr	t1

000180d4 <__ascii_mbtowc>:
   180d4:	02058063          	beqz	a1,180f4 <__ascii_mbtowc+0x20>
   180d8:	04060263          	beqz	a2,1811c <__ascii_mbtowc+0x48>
   180dc:	04068863          	beqz	a3,1812c <__ascii_mbtowc+0x58>
   180e0:	00064783          	lbu	a5,0(a2)
   180e4:	00f5a023          	sw	a5,0(a1)
   180e8:	00064503          	lbu	a0,0(a2)
   180ec:	00a03533          	snez	a0,a0
   180f0:	00008067          	ret
   180f4:	ff010113          	addi	sp,sp,-16
   180f8:	00c10593          	addi	a1,sp,12
   180fc:	02060463          	beqz	a2,18124 <__ascii_mbtowc+0x50>
   18100:	02068a63          	beqz	a3,18134 <__ascii_mbtowc+0x60>
   18104:	00064783          	lbu	a5,0(a2)
   18108:	00f5a023          	sw	a5,0(a1)
   1810c:	00064503          	lbu	a0,0(a2)
   18110:	00a03533          	snez	a0,a0
   18114:	01010113          	addi	sp,sp,16
   18118:	00008067          	ret
   1811c:	00000513          	li	a0,0
   18120:	00008067          	ret
   18124:	00000513          	li	a0,0
   18128:	fedff06f          	j	18114 <__ascii_mbtowc+0x40>
   1812c:	ffe00513          	li	a0,-2
   18130:	00008067          	ret
   18134:	ffe00513          	li	a0,-2
   18138:	fddff06f          	j	18114 <__ascii_mbtowc+0x40>

0001813c <memchr>:
   1813c:	00357793          	andi	a5,a0,3
   18140:	0ff5f813          	andi	a6,a1,255
   18144:	0c078663          	beqz	a5,18210 <memchr+0xd4>
   18148:	fff60793          	addi	a5,a2,-1
   1814c:	04060e63          	beqz	a2,181a8 <memchr+0x6c>
   18150:	00054703          	lbu	a4,0(a0)
   18154:	05070c63          	beq	a4,a6,181ac <memchr+0x70>
   18158:	fff00693          	li	a3,-1
   1815c:	0140006f          	j	18170 <memchr+0x34>
   18160:	fff78793          	addi	a5,a5,-1
   18164:	04d78263          	beq	a5,a3,181a8 <memchr+0x6c>
   18168:	00054703          	lbu	a4,0(a0)
   1816c:	05070063          	beq	a4,a6,181ac <memchr+0x70>
   18170:	00150513          	addi	a0,a0,1
   18174:	00357713          	andi	a4,a0,3
   18178:	fe0714e3          	bnez	a4,18160 <memchr+0x24>
   1817c:	00300713          	li	a4,3
   18180:	02f76863          	bltu	a4,a5,181b0 <memchr+0x74>
   18184:	02078263          	beqz	a5,181a8 <memchr+0x6c>
   18188:	00054703          	lbu	a4,0(a0)
   1818c:	03070063          	beq	a4,a6,181ac <memchr+0x70>
   18190:	00f507b3          	add	a5,a0,a5
   18194:	00c0006f          	j	181a0 <memchr+0x64>
   18198:	00054703          	lbu	a4,0(a0)
   1819c:	01070863          	beq	a4,a6,181ac <memchr+0x70>
   181a0:	00150513          	addi	a0,a0,1
   181a4:	fea79ae3          	bne	a5,a0,18198 <memchr+0x5c>
   181a8:	00000513          	li	a0,0
   181ac:	00008067          	ret
   181b0:	00010737          	lui	a4,0x10
   181b4:	00859893          	slli	a7,a1,0x8
   181b8:	fff70713          	addi	a4,a4,-1 # ffff <register_fini-0x75>
   181bc:	00e8f8b3          	and	a7,a7,a4
   181c0:	0ff5f593          	andi	a1,a1,255
   181c4:	00b8e5b3          	or	a1,a7,a1
   181c8:	01059893          	slli	a7,a1,0x10
   181cc:	00b8e8b3          	or	a7,a7,a1
   181d0:	80808637          	lui	a2,0x80808
   181d4:	feff05b7          	lui	a1,0xfeff0
   181d8:	eff58593          	addi	a1,a1,-257 # fefefeff <__BSS_END__+0xfefc9417>
   181dc:	08060613          	addi	a2,a2,128 # 80808080 <__BSS_END__+0x807e1598>
   181e0:	00300313          	li	t1,3
   181e4:	00052703          	lw	a4,0(a0)
   181e8:	00e8c733          	xor	a4,a7,a4
   181ec:	00b706b3          	add	a3,a4,a1
   181f0:	fff74713          	not	a4,a4
   181f4:	00e6f733          	and	a4,a3,a4
   181f8:	00c77733          	and	a4,a4,a2
   181fc:	f80716e3          	bnez	a4,18188 <memchr+0x4c>
   18200:	ffc78793          	addi	a5,a5,-4
   18204:	00450513          	addi	a0,a0,4
   18208:	fcf36ee3          	bltu	t1,a5,181e4 <memchr+0xa8>
   1820c:	f79ff06f          	j	18184 <memchr+0x48>
   18210:	00060793          	mv	a5,a2
   18214:	f69ff06f          	j	1817c <memchr+0x40>

00018218 <memcpy>:
   18218:	00a5c7b3          	xor	a5,a1,a0
   1821c:	0037f793          	andi	a5,a5,3
   18220:	00c508b3          	add	a7,a0,a2
   18224:	06079263          	bnez	a5,18288 <memcpy+0x70>
   18228:	00300793          	li	a5,3
   1822c:	04c7fe63          	bgeu	a5,a2,18288 <memcpy+0x70>
   18230:	00357793          	andi	a5,a0,3
   18234:	00050713          	mv	a4,a0
   18238:	06079863          	bnez	a5,182a8 <memcpy+0x90>
   1823c:	ffc8f613          	andi	a2,a7,-4
   18240:	fe060793          	addi	a5,a2,-32
   18244:	08f76c63          	bltu	a4,a5,182dc <memcpy+0xc4>
   18248:	02c77c63          	bgeu	a4,a2,18280 <memcpy+0x68>
   1824c:	00058693          	mv	a3,a1
   18250:	00070793          	mv	a5,a4
   18254:	0006a803          	lw	a6,0(a3)
   18258:	00478793          	addi	a5,a5,4
   1825c:	00468693          	addi	a3,a3,4
   18260:	ff07ae23          	sw	a6,-4(a5)
   18264:	fec7e8e3          	bltu	a5,a2,18254 <memcpy+0x3c>
   18268:	fff60793          	addi	a5,a2,-1
   1826c:	40e787b3          	sub	a5,a5,a4
   18270:	ffc7f793          	andi	a5,a5,-4
   18274:	00478793          	addi	a5,a5,4
   18278:	00f70733          	add	a4,a4,a5
   1827c:	00f585b3          	add	a1,a1,a5
   18280:	01176863          	bltu	a4,a7,18290 <memcpy+0x78>
   18284:	00008067          	ret
   18288:	00050713          	mv	a4,a0
   1828c:	ff157ce3          	bgeu	a0,a7,18284 <memcpy+0x6c>
   18290:	0005c783          	lbu	a5,0(a1)
   18294:	00170713          	addi	a4,a4,1
   18298:	00158593          	addi	a1,a1,1
   1829c:	fef70fa3          	sb	a5,-1(a4)
   182a0:	ff1768e3          	bltu	a4,a7,18290 <memcpy+0x78>
   182a4:	00008067          	ret
   182a8:	0005c683          	lbu	a3,0(a1)
   182ac:	00170713          	addi	a4,a4,1
   182b0:	00377793          	andi	a5,a4,3
   182b4:	fed70fa3          	sb	a3,-1(a4)
   182b8:	00158593          	addi	a1,a1,1
   182bc:	f80780e3          	beqz	a5,1823c <memcpy+0x24>
   182c0:	0005c683          	lbu	a3,0(a1)
   182c4:	00170713          	addi	a4,a4,1
   182c8:	00377793          	andi	a5,a4,3
   182cc:	fed70fa3          	sb	a3,-1(a4)
   182d0:	00158593          	addi	a1,a1,1
   182d4:	fc079ae3          	bnez	a5,182a8 <memcpy+0x90>
   182d8:	f65ff06f          	j	1823c <memcpy+0x24>
   182dc:	0005a683          	lw	a3,0(a1)
   182e0:	0045a283          	lw	t0,4(a1)
   182e4:	0085af83          	lw	t6,8(a1)
   182e8:	00c5af03          	lw	t5,12(a1)
   182ec:	0105ae83          	lw	t4,16(a1)
   182f0:	0145ae03          	lw	t3,20(a1)
   182f4:	0185a303          	lw	t1,24(a1)
   182f8:	01c5a803          	lw	a6,28(a1)
   182fc:	02458593          	addi	a1,a1,36
   18300:	00d72023          	sw	a3,0(a4)
   18304:	ffc5a683          	lw	a3,-4(a1)
   18308:	00572223          	sw	t0,4(a4)
   1830c:	01f72423          	sw	t6,8(a4)
   18310:	01e72623          	sw	t5,12(a4)
   18314:	01d72823          	sw	t4,16(a4)
   18318:	01c72a23          	sw	t3,20(a4)
   1831c:	00672c23          	sw	t1,24(a4)
   18320:	01072e23          	sw	a6,28(a4)
   18324:	02470713          	addi	a4,a4,36
   18328:	fed72e23          	sw	a3,-4(a4)
   1832c:	faf768e3          	bltu	a4,a5,182dc <memcpy+0xc4>
   18330:	f19ff06f          	j	18248 <memcpy+0x30>

00018334 <memmove>:
   18334:	02a5f663          	bgeu	a1,a0,18360 <memmove+0x2c>
   18338:	00c587b3          	add	a5,a1,a2
   1833c:	02f57263          	bgeu	a0,a5,18360 <memmove+0x2c>
   18340:	00c50733          	add	a4,a0,a2
   18344:	0e060a63          	beqz	a2,18438 <memmove+0x104>
   18348:	fff78793          	addi	a5,a5,-1
   1834c:	0007c683          	lbu	a3,0(a5)
   18350:	fff70713          	addi	a4,a4,-1
   18354:	00d70023          	sb	a3,0(a4)
   18358:	fef598e3          	bne	a1,a5,18348 <memmove+0x14>
   1835c:	00008067          	ret
   18360:	00f00793          	li	a5,15
   18364:	02c7e863          	bltu	a5,a2,18394 <memmove+0x60>
   18368:	00050793          	mv	a5,a0
   1836c:	fff60693          	addi	a3,a2,-1
   18370:	0c060c63          	beqz	a2,18448 <memmove+0x114>
   18374:	00168693          	addi	a3,a3,1
   18378:	00d786b3          	add	a3,a5,a3
   1837c:	00158593          	addi	a1,a1,1
   18380:	fff5c703          	lbu	a4,-1(a1)
   18384:	00178793          	addi	a5,a5,1
   18388:	fee78fa3          	sb	a4,-1(a5)
   1838c:	fed798e3          	bne	a5,a3,1837c <memmove+0x48>
   18390:	00008067          	ret
   18394:	00a5e7b3          	or	a5,a1,a0
   18398:	0037f793          	andi	a5,a5,3
   1839c:	0a079063          	bnez	a5,1843c <memmove+0x108>
   183a0:	ff060893          	addi	a7,a2,-16
   183a4:	ff08f893          	andi	a7,a7,-16
   183a8:	01088893          	addi	a7,a7,16
   183ac:	01150833          	add	a6,a0,a7
   183b0:	00058713          	mv	a4,a1
   183b4:	00050793          	mv	a5,a0
   183b8:	00072683          	lw	a3,0(a4)
   183bc:	01078793          	addi	a5,a5,16
   183c0:	01070713          	addi	a4,a4,16
   183c4:	fed7a823          	sw	a3,-16(a5)
   183c8:	ff472683          	lw	a3,-12(a4)
   183cc:	fed7aa23          	sw	a3,-12(a5)
   183d0:	ff872683          	lw	a3,-8(a4)
   183d4:	fed7ac23          	sw	a3,-8(a5)
   183d8:	ffc72683          	lw	a3,-4(a4)
   183dc:	fed7ae23          	sw	a3,-4(a5)
   183e0:	fcf81ce3          	bne	a6,a5,183b8 <memmove+0x84>
   183e4:	00c67713          	andi	a4,a2,12
   183e8:	011585b3          	add	a1,a1,a7
   183ec:	00f67813          	andi	a6,a2,15
   183f0:	04070e63          	beqz	a4,1844c <memmove+0x118>
   183f4:	00058713          	mv	a4,a1
   183f8:	00078893          	mv	a7,a5
   183fc:	00300e13          	li	t3,3
   18400:	00470713          	addi	a4,a4,4
   18404:	ffc72303          	lw	t1,-4(a4)
   18408:	00488893          	addi	a7,a7,4
   1840c:	40e806b3          	sub	a3,a6,a4
   18410:	fe68ae23          	sw	t1,-4(a7)
   18414:	00d586b3          	add	a3,a1,a3
   18418:	fede64e3          	bltu	t3,a3,18400 <memmove+0xcc>
   1841c:	ffc80713          	addi	a4,a6,-4
   18420:	ffc77713          	andi	a4,a4,-4
   18424:	00470713          	addi	a4,a4,4
   18428:	00367613          	andi	a2,a2,3
   1842c:	00e787b3          	add	a5,a5,a4
   18430:	00e585b3          	add	a1,a1,a4
   18434:	f39ff06f          	j	1836c <memmove+0x38>
   18438:	00008067          	ret
   1843c:	fff60693          	addi	a3,a2,-1
   18440:	00050793          	mv	a5,a0
   18444:	f31ff06f          	j	18374 <memmove+0x40>
   18448:	00008067          	ret
   1844c:	00080613          	mv	a2,a6
   18450:	f1dff06f          	j	1836c <memmove+0x38>

00018454 <__malloc_lock>:
   18454:	00008067          	ret

00018458 <__malloc_unlock>:
   18458:	00008067          	ret

0001845c <_Balloc>:
   1845c:	04c52783          	lw	a5,76(a0)
   18460:	ff010113          	addi	sp,sp,-16
   18464:	00812423          	sw	s0,8(sp)
   18468:	00912223          	sw	s1,4(sp)
   1846c:	00112623          	sw	ra,12(sp)
   18470:	01212023          	sw	s2,0(sp)
   18474:	00050413          	mv	s0,a0
   18478:	00058493          	mv	s1,a1
   1847c:	02078e63          	beqz	a5,184b8 <_Balloc+0x5c>
   18480:	00249713          	slli	a4,s1,0x2
   18484:	00e787b3          	add	a5,a5,a4
   18488:	0007a503          	lw	a0,0(a5)
   1848c:	04050663          	beqz	a0,184d8 <_Balloc+0x7c>
   18490:	00052703          	lw	a4,0(a0)
   18494:	00e7a023          	sw	a4,0(a5)
   18498:	00052823          	sw	zero,16(a0)
   1849c:	00052623          	sw	zero,12(a0)
   184a0:	00c12083          	lw	ra,12(sp)
   184a4:	00812403          	lw	s0,8(sp)
   184a8:	00412483          	lw	s1,4(sp)
   184ac:	00012903          	lw	s2,0(sp)
   184b0:	01010113          	addi	sp,sp,16
   184b4:	00008067          	ret
   184b8:	02100613          	li	a2,33
   184bc:	00400593          	li	a1,4
   184c0:	441050ef          	jal	ra,1e100 <_calloc_r>
   184c4:	04a42623          	sw	a0,76(s0)
   184c8:	00050793          	mv	a5,a0
   184cc:	fa051ae3          	bnez	a0,18480 <_Balloc+0x24>
   184d0:	00000513          	li	a0,0
   184d4:	fcdff06f          	j	184a0 <_Balloc+0x44>
   184d8:	00100913          	li	s2,1
   184dc:	00991933          	sll	s2,s2,s1
   184e0:	00590613          	addi	a2,s2,5
   184e4:	00261613          	slli	a2,a2,0x2
   184e8:	00100593          	li	a1,1
   184ec:	00040513          	mv	a0,s0
   184f0:	411050ef          	jal	ra,1e100 <_calloc_r>
   184f4:	fc050ee3          	beqz	a0,184d0 <_Balloc+0x74>
   184f8:	00952223          	sw	s1,4(a0)
   184fc:	01252423          	sw	s2,8(a0)
   18500:	f99ff06f          	j	18498 <_Balloc+0x3c>

00018504 <_Bfree>:
   18504:	02058063          	beqz	a1,18524 <_Bfree+0x20>
   18508:	0045a703          	lw	a4,4(a1)
   1850c:	04c52783          	lw	a5,76(a0)
   18510:	00271713          	slli	a4,a4,0x2
   18514:	00e787b3          	add	a5,a5,a4
   18518:	0007a703          	lw	a4,0(a5)
   1851c:	00e5a023          	sw	a4,0(a1)
   18520:	00b7a023          	sw	a1,0(a5)
   18524:	00008067          	ret

00018528 <__multadd>:
   18528:	fd010113          	addi	sp,sp,-48
   1852c:	01312e23          	sw	s3,28(sp)
   18530:	0105a983          	lw	s3,16(a1)
   18534:	01812423          	sw	s8,8(sp)
   18538:	00010c37          	lui	s8,0x10
   1853c:	02812423          	sw	s0,40(sp)
   18540:	02912223          	sw	s1,36(sp)
   18544:	03212023          	sw	s2,32(sp)
   18548:	01412c23          	sw	s4,24(sp)
   1854c:	01512a23          	sw	s5,20(sp)
   18550:	01612823          	sw	s6,16(sp)
   18554:	02112623          	sw	ra,44(sp)
   18558:	01712623          	sw	s7,12(sp)
   1855c:	00058a13          	mv	s4,a1
   18560:	00050a93          	mv	s5,a0
   18564:	00060913          	mv	s2,a2
   18568:	00068413          	mv	s0,a3
   1856c:	01458493          	addi	s1,a1,20
   18570:	00000b13          	li	s6,0
   18574:	fffc0c13          	addi	s8,s8,-1 # ffff <register_fini-0x75>
   18578:	0004ab83          	lw	s7,0(s1)
   1857c:	00090593          	mv	a1,s2
   18580:	00448493          	addi	s1,s1,4
   18584:	018bf533          	and	a0,s7,s8
   18588:	0910c0ef          	jal	ra,24e18 <__mulsi3>
   1858c:	00850433          	add	s0,a0,s0
   18590:	00090593          	mv	a1,s2
   18594:	010bd513          	srli	a0,s7,0x10
   18598:	0810c0ef          	jal	ra,24e18 <__mulsi3>
   1859c:	01045693          	srli	a3,s0,0x10
   185a0:	00d50533          	add	a0,a0,a3
   185a4:	01051693          	slli	a3,a0,0x10
   185a8:	01847433          	and	s0,s0,s8
   185ac:	00868433          	add	s0,a3,s0
   185b0:	fe84ae23          	sw	s0,-4(s1)
   185b4:	001b0b13          	addi	s6,s6,1
   185b8:	01055413          	srli	s0,a0,0x10
   185bc:	fb3b4ee3          	blt	s6,s3,18578 <__multadd+0x50>
   185c0:	02040263          	beqz	s0,185e4 <__multadd+0xbc>
   185c4:	008a2783          	lw	a5,8(s4)
   185c8:	04f9d863          	bge	s3,a5,18618 <__multadd+0xf0>
   185cc:	00498793          	addi	a5,s3,4
   185d0:	00279793          	slli	a5,a5,0x2
   185d4:	00fa07b3          	add	a5,s4,a5
   185d8:	0087a223          	sw	s0,4(a5)
   185dc:	00198993          	addi	s3,s3,1
   185e0:	013a2823          	sw	s3,16(s4)
   185e4:	02c12083          	lw	ra,44(sp)
   185e8:	02812403          	lw	s0,40(sp)
   185ec:	000a0513          	mv	a0,s4
   185f0:	02412483          	lw	s1,36(sp)
   185f4:	02012903          	lw	s2,32(sp)
   185f8:	01c12983          	lw	s3,28(sp)
   185fc:	01812a03          	lw	s4,24(sp)
   18600:	01412a83          	lw	s5,20(sp)
   18604:	01012b03          	lw	s6,16(sp)
   18608:	00c12b83          	lw	s7,12(sp)
   1860c:	00812c03          	lw	s8,8(sp)
   18610:	03010113          	addi	sp,sp,48
   18614:	00008067          	ret
   18618:	004a2583          	lw	a1,4(s4)
   1861c:	000a8513          	mv	a0,s5
   18620:	00158593          	addi	a1,a1,1
   18624:	e39ff0ef          	jal	ra,1845c <_Balloc>
   18628:	010a2603          	lw	a2,16(s4)
   1862c:	00050493          	mv	s1,a0
   18630:	00ca0593          	addi	a1,s4,12
   18634:	00260613          	addi	a2,a2,2
   18638:	00c50513          	addi	a0,a0,12
   1863c:	00261613          	slli	a2,a2,0x2
   18640:	bd9ff0ef          	jal	ra,18218 <memcpy>
   18644:	004a2703          	lw	a4,4(s4)
   18648:	04caa783          	lw	a5,76(s5)
   1864c:	00271713          	slli	a4,a4,0x2
   18650:	00e787b3          	add	a5,a5,a4
   18654:	0007a703          	lw	a4,0(a5)
   18658:	00ea2023          	sw	a4,0(s4)
   1865c:	0147a023          	sw	s4,0(a5)
   18660:	00498793          	addi	a5,s3,4
   18664:	00048a13          	mv	s4,s1
   18668:	00279793          	slli	a5,a5,0x2
   1866c:	00fa07b3          	add	a5,s4,a5
   18670:	0087a223          	sw	s0,4(a5)
   18674:	00198993          	addi	s3,s3,1
   18678:	013a2823          	sw	s3,16(s4)
   1867c:	f69ff06f          	j	185e4 <__multadd+0xbc>

00018680 <__s2b>:
   18680:	fe010113          	addi	sp,sp,-32
   18684:	00812c23          	sw	s0,24(sp)
   18688:	01212823          	sw	s2,16(sp)
   1868c:	00058413          	mv	s0,a1
   18690:	00050913          	mv	s2,a0
   18694:	00900593          	li	a1,9
   18698:	00868513          	addi	a0,a3,8
   1869c:	00912a23          	sw	s1,20(sp)
   186a0:	01312623          	sw	s3,12(sp)
   186a4:	01412423          	sw	s4,8(sp)
   186a8:	00112e23          	sw	ra,28(sp)
   186ac:	01512223          	sw	s5,4(sp)
   186b0:	00068493          	mv	s1,a3
   186b4:	00060a13          	mv	s4,a2
   186b8:	00070993          	mv	s3,a4
   186bc:	fd1f70ef          	jal	ra,1068c <__divsi3>
   186c0:	00900793          	li	a5,9
   186c4:	0c97d263          	bge	a5,s1,18788 <__s2b+0x108>
   186c8:	00100793          	li	a5,1
   186cc:	00000593          	li	a1,0
   186d0:	00179793          	slli	a5,a5,0x1
   186d4:	00158593          	addi	a1,a1,1
   186d8:	fea7cce3          	blt	a5,a0,186d0 <__s2b+0x50>
   186dc:	00090513          	mv	a0,s2
   186e0:	d7dff0ef          	jal	ra,1845c <_Balloc>
   186e4:	00100793          	li	a5,1
   186e8:	00f52823          	sw	a5,16(a0)
   186ec:	01352a23          	sw	s3,20(a0)
   186f0:	00900793          	li	a5,9
   186f4:	0947d463          	bge	a5,s4,1877c <__s2b+0xfc>
   186f8:	00940a93          	addi	s5,s0,9
   186fc:	014409b3          	add	s3,s0,s4
   18700:	000a8413          	mv	s0,s5
   18704:	00140413          	addi	s0,s0,1
   18708:	fff44683          	lbu	a3,-1(s0)
   1870c:	00050593          	mv	a1,a0
   18710:	00a00613          	li	a2,10
   18714:	fd068693          	addi	a3,a3,-48
   18718:	00090513          	mv	a0,s2
   1871c:	e0dff0ef          	jal	ra,18528 <__multadd>
   18720:	fe8992e3          	bne	s3,s0,18704 <__s2b+0x84>
   18724:	ff8a0413          	addi	s0,s4,-8
   18728:	008a8433          	add	s0,s5,s0
   1872c:	029a5663          	bge	s4,s1,18758 <__s2b+0xd8>
   18730:	414484b3          	sub	s1,s1,s4
   18734:	009404b3          	add	s1,s0,s1
   18738:	00140413          	addi	s0,s0,1
   1873c:	fff44683          	lbu	a3,-1(s0)
   18740:	00050593          	mv	a1,a0
   18744:	00a00613          	li	a2,10
   18748:	fd068693          	addi	a3,a3,-48
   1874c:	00090513          	mv	a0,s2
   18750:	dd9ff0ef          	jal	ra,18528 <__multadd>
   18754:	fe8492e3          	bne	s1,s0,18738 <__s2b+0xb8>
   18758:	01c12083          	lw	ra,28(sp)
   1875c:	01812403          	lw	s0,24(sp)
   18760:	01412483          	lw	s1,20(sp)
   18764:	01012903          	lw	s2,16(sp)
   18768:	00c12983          	lw	s3,12(sp)
   1876c:	00812a03          	lw	s4,8(sp)
   18770:	00412a83          	lw	s5,4(sp)
   18774:	02010113          	addi	sp,sp,32
   18778:	00008067          	ret
   1877c:	00a40413          	addi	s0,s0,10
   18780:	00900a13          	li	s4,9
   18784:	fa9ff06f          	j	1872c <__s2b+0xac>
   18788:	00000593          	li	a1,0
   1878c:	f51ff06f          	j	186dc <__s2b+0x5c>

00018790 <__hi0bits>:
   18790:	ffff0737          	lui	a4,0xffff0
   18794:	00e57733          	and	a4,a0,a4
   18798:	00050793          	mv	a5,a0
   1879c:	00000513          	li	a0,0
   187a0:	00071663          	bnez	a4,187ac <__hi0bits+0x1c>
   187a4:	01079793          	slli	a5,a5,0x10
   187a8:	01000513          	li	a0,16
   187ac:	ff000737          	lui	a4,0xff000
   187b0:	00e7f733          	and	a4,a5,a4
   187b4:	00071663          	bnez	a4,187c0 <__hi0bits+0x30>
   187b8:	00850513          	addi	a0,a0,8
   187bc:	00879793          	slli	a5,a5,0x8
   187c0:	f0000737          	lui	a4,0xf0000
   187c4:	00e7f733          	and	a4,a5,a4
   187c8:	00071663          	bnez	a4,187d4 <__hi0bits+0x44>
   187cc:	00450513          	addi	a0,a0,4
   187d0:	00479793          	slli	a5,a5,0x4
   187d4:	c0000737          	lui	a4,0xc0000
   187d8:	00e7f733          	and	a4,a5,a4
   187dc:	00071663          	bnez	a4,187e8 <__hi0bits+0x58>
   187e0:	00250513          	addi	a0,a0,2
   187e4:	00279793          	slli	a5,a5,0x2
   187e8:	0007c863          	bltz	a5,187f8 <__hi0bits+0x68>
   187ec:	00179713          	slli	a4,a5,0x1
   187f0:	00150513          	addi	a0,a0,1
   187f4:	00075463          	bgez	a4,187fc <__hi0bits+0x6c>
   187f8:	00008067          	ret
   187fc:	02000513          	li	a0,32
   18800:	00008067          	ret

00018804 <__lo0bits>:
   18804:	00052783          	lw	a5,0(a0)
   18808:	0077f713          	andi	a4,a5,7
   1880c:	02070663          	beqz	a4,18838 <__lo0bits+0x34>
   18810:	0017f693          	andi	a3,a5,1
   18814:	00000713          	li	a4,0
   18818:	00069c63          	bnez	a3,18830 <__lo0bits+0x2c>
   1881c:	0027f713          	andi	a4,a5,2
   18820:	08070463          	beqz	a4,188a8 <__lo0bits+0xa4>
   18824:	0017d793          	srli	a5,a5,0x1
   18828:	00f52023          	sw	a5,0(a0)
   1882c:	00100713          	li	a4,1
   18830:	00070513          	mv	a0,a4
   18834:	00008067          	ret
   18838:	01079693          	slli	a3,a5,0x10
   1883c:	0106d693          	srli	a3,a3,0x10
   18840:	00000713          	li	a4,0
   18844:	00069663          	bnez	a3,18850 <__lo0bits+0x4c>
   18848:	0107d793          	srli	a5,a5,0x10
   1884c:	01000713          	li	a4,16
   18850:	0ff7f693          	andi	a3,a5,255
   18854:	00069663          	bnez	a3,18860 <__lo0bits+0x5c>
   18858:	00870713          	addi	a4,a4,8 # c0000008 <__BSS_END__+0xbffd9520>
   1885c:	0087d793          	srli	a5,a5,0x8
   18860:	00f7f693          	andi	a3,a5,15
   18864:	00069663          	bnez	a3,18870 <__lo0bits+0x6c>
   18868:	00470713          	addi	a4,a4,4
   1886c:	0047d793          	srli	a5,a5,0x4
   18870:	0037f693          	andi	a3,a5,3
   18874:	00069663          	bnez	a3,18880 <__lo0bits+0x7c>
   18878:	00270713          	addi	a4,a4,2
   1887c:	0027d793          	srli	a5,a5,0x2
   18880:	0017f693          	andi	a3,a5,1
   18884:	00069863          	bnez	a3,18894 <__lo0bits+0x90>
   18888:	0017d793          	srli	a5,a5,0x1
   1888c:	00170713          	addi	a4,a4,1
   18890:	00078863          	beqz	a5,188a0 <__lo0bits+0x9c>
   18894:	00f52023          	sw	a5,0(a0)
   18898:	00070513          	mv	a0,a4
   1889c:	00008067          	ret
   188a0:	02000713          	li	a4,32
   188a4:	f8dff06f          	j	18830 <__lo0bits+0x2c>
   188a8:	0027d793          	srli	a5,a5,0x2
   188ac:	00200713          	li	a4,2
   188b0:	00f52023          	sw	a5,0(a0)
   188b4:	00070513          	mv	a0,a4
   188b8:	00008067          	ret

000188bc <__i2b>:
   188bc:	ff010113          	addi	sp,sp,-16
   188c0:	00812423          	sw	s0,8(sp)
   188c4:	00058413          	mv	s0,a1
   188c8:	00100593          	li	a1,1
   188cc:	00112623          	sw	ra,12(sp)
   188d0:	b8dff0ef          	jal	ra,1845c <_Balloc>
   188d4:	00852a23          	sw	s0,20(a0)
   188d8:	00c12083          	lw	ra,12(sp)
   188dc:	00812403          	lw	s0,8(sp)
   188e0:	00100713          	li	a4,1
   188e4:	00e52823          	sw	a4,16(a0)
   188e8:	01010113          	addi	sp,sp,16
   188ec:	00008067          	ret

000188f0 <__multiply>:
   188f0:	fb010113          	addi	sp,sp,-80
   188f4:	03312e23          	sw	s3,60(sp)
   188f8:	03812423          	sw	s8,40(sp)
   188fc:	01062983          	lw	s3,16(a2)
   18900:	0105ac03          	lw	s8,16(a1)
   18904:	03412c23          	sw	s4,56(sp)
   18908:	03912223          	sw	s9,36(sp)
   1890c:	04112623          	sw	ra,76(sp)
   18910:	04812423          	sw	s0,72(sp)
   18914:	04912223          	sw	s1,68(sp)
   18918:	05212023          	sw	s2,64(sp)
   1891c:	03512a23          	sw	s5,52(sp)
   18920:	03612823          	sw	s6,48(sp)
   18924:	03712623          	sw	s7,44(sp)
   18928:	03a12023          	sw	s10,32(sp)
   1892c:	01b12e23          	sw	s11,28(sp)
   18930:	00058a13          	mv	s4,a1
   18934:	00060c93          	mv	s9,a2
   18938:	013c4c63          	blt	s8,s3,18950 <__multiply+0x60>
   1893c:	00098713          	mv	a4,s3
   18940:	00058c93          	mv	s9,a1
   18944:	000c0993          	mv	s3,s8
   18948:	00060a13          	mv	s4,a2
   1894c:	00070c13          	mv	s8,a4
   18950:	008ca783          	lw	a5,8(s9)
   18954:	004ca583          	lw	a1,4(s9)
   18958:	01898b33          	add	s6,s3,s8
   1895c:	0167a7b3          	slt	a5,a5,s6
   18960:	00f585b3          	add	a1,a1,a5
   18964:	af9ff0ef          	jal	ra,1845c <_Balloc>
   18968:	01450b93          	addi	s7,a0,20
   1896c:	002b1a93          	slli	s5,s6,0x2
   18970:	015b87b3          	add	a5,s7,s5
   18974:	00078713          	mv	a4,a5
   18978:	00f12023          	sw	a5,0(sp)
   1897c:	00a12623          	sw	a0,12(sp)
   18980:	000b8793          	mv	a5,s7
   18984:	00ebfa63          	bgeu	s7,a4,18998 <__multiply+0xa8>
   18988:	00012703          	lw	a4,0(sp)
   1898c:	0007a023          	sw	zero,0(a5)
   18990:	00478793          	addi	a5,a5,4
   18994:	fee7eae3          	bltu	a5,a4,18988 <__multiply+0x98>
   18998:	014a0a13          	addi	s4,s4,20
   1899c:	002c1c13          	slli	s8,s8,0x2
   189a0:	014c8793          	addi	a5,s9,20
   189a4:	018a0733          	add	a4,s4,s8
   189a8:	00299993          	slli	s3,s3,0x2
   189ac:	000104b7          	lui	s1,0x10
   189b0:	00f12423          	sw	a5,8(sp)
   189b4:	00e12223          	sw	a4,4(sp)
   189b8:	013789b3          	add	s3,a5,s3
   189bc:	fff48493          	addi	s1,s1,-1 # ffff <register_fini-0x75>
   189c0:	02ea6063          	bltu	s4,a4,189e0 <__multiply+0xf0>
   189c4:	1240006f          	j	18ae8 <__multiply+0x1f8>
   189c8:	0107d913          	srli	s2,a5,0x10
   189cc:	08091c63          	bnez	s2,18a64 <__multiply+0x174>
   189d0:	00412783          	lw	a5,4(sp)
   189d4:	004a0a13          	addi	s4,s4,4
   189d8:	004b8b93          	addi	s7,s7,4
   189dc:	10fa7663          	bgeu	s4,a5,18ae8 <__multiply+0x1f8>
   189e0:	000a2783          	lw	a5,0(s4)
   189e4:	0097f933          	and	s2,a5,s1
   189e8:	fe0900e3          	beqz	s2,189c8 <__multiply+0xd8>
   189ec:	00812d03          	lw	s10,8(sp)
   189f0:	000b8c13          	mv	s8,s7
   189f4:	00000c93          	li	s9,0
   189f8:	000d2a83          	lw	s5,0(s10) # 1000 <register_fini-0xf074>
   189fc:	000c2403          	lw	s0,0(s8)
   18a00:	00090593          	mv	a1,s2
   18a04:	009af533          	and	a0,s5,s1
   18a08:	4100c0ef          	jal	ra,24e18 <__mulsi3>
   18a0c:	00947db3          	and	s11,s0,s1
   18a10:	01b50db3          	add	s11,a0,s11
   18a14:	00090593          	mv	a1,s2
   18a18:	010ad513          	srli	a0,s5,0x10
   18a1c:	019d8db3          	add	s11,s11,s9
   18a20:	3f80c0ef          	jal	ra,24e18 <__mulsi3>
   18a24:	01045413          	srli	s0,s0,0x10
   18a28:	00850533          	add	a0,a0,s0
   18a2c:	010dd413          	srli	s0,s11,0x10
   18a30:	00850533          	add	a0,a0,s0
   18a34:	01051693          	slli	a3,a0,0x10
   18a38:	009dfdb3          	and	s11,s11,s1
   18a3c:	004c0c13          	addi	s8,s8,4
   18a40:	01b6edb3          	or	s11,a3,s11
   18a44:	004d0d13          	addi	s10,s10,4
   18a48:	ffbc2e23          	sw	s11,-4(s8)
   18a4c:	01055c93          	srli	s9,a0,0x10
   18a50:	fb3d64e3          	bltu	s10,s3,189f8 <__multiply+0x108>
   18a54:	019c2023          	sw	s9,0(s8)
   18a58:	000a2783          	lw	a5,0(s4)
   18a5c:	0107d913          	srli	s2,a5,0x10
   18a60:	f60908e3          	beqz	s2,189d0 <__multiply+0xe0>
   18a64:	000ba403          	lw	s0,0(s7)
   18a68:	00812c03          	lw	s8,8(sp)
   18a6c:	000b8d13          	mv	s10,s7
   18a70:	00040d93          	mv	s11,s0
   18a74:	00000c93          	li	s9,0
   18a78:	000c2503          	lw	a0,0(s8)
   18a7c:	00090593          	mv	a1,s2
   18a80:	010ddd93          	srli	s11,s11,0x10
   18a84:	00957533          	and	a0,a0,s1
   18a88:	3900c0ef          	jal	ra,24e18 <__mulsi3>
   18a8c:	01b50db3          	add	s11,a0,s11
   18a90:	019d8cb3          	add	s9,s11,s9
   18a94:	010c9513          	slli	a0,s9,0x10
   18a98:	00947433          	and	s0,s0,s1
   18a9c:	00856433          	or	s0,a0,s0
   18aa0:	004d0d13          	addi	s10,s10,4
   18aa4:	fe8d2e23          	sw	s0,-4(s10)
   18aa8:	004c0c13          	addi	s8,s8,4
   18aac:	000d2d83          	lw	s11,0(s10)
   18ab0:	ffec5503          	lhu	a0,-2(s8)
   18ab4:	00090593          	mv	a1,s2
   18ab8:	009df433          	and	s0,s11,s1
   18abc:	35c0c0ef          	jal	ra,24e18 <__mulsi3>
   18ac0:	010cd793          	srli	a5,s9,0x10
   18ac4:	00850433          	add	s0,a0,s0
   18ac8:	00f40433          	add	s0,s0,a5
   18acc:	01045c93          	srli	s9,s0,0x10
   18ad0:	fb3c64e3          	bltu	s8,s3,18a78 <__multiply+0x188>
   18ad4:	00412783          	lw	a5,4(sp)
   18ad8:	008d2023          	sw	s0,0(s10)
   18adc:	004a0a13          	addi	s4,s4,4
   18ae0:	004b8b93          	addi	s7,s7,4
   18ae4:	eefa6ee3          	bltu	s4,a5,189e0 <__multiply+0xf0>
   18ae8:	03605663          	blez	s6,18b14 <__multiply+0x224>
   18aec:	00012703          	lw	a4,0(sp)
   18af0:	ffc72783          	lw	a5,-4(a4)
   18af4:	ffc70a93          	addi	s5,a4,-4
   18af8:	00078863          	beqz	a5,18b08 <__multiply+0x218>
   18afc:	0180006f          	j	18b14 <__multiply+0x224>
   18b00:	000aa783          	lw	a5,0(s5)
   18b04:	00079863          	bnez	a5,18b14 <__multiply+0x224>
   18b08:	fffb0b13          	addi	s6,s6,-1
   18b0c:	ffca8a93          	addi	s5,s5,-4
   18b10:	fe0b18e3          	bnez	s6,18b00 <__multiply+0x210>
   18b14:	00c12783          	lw	a5,12(sp)
   18b18:	04c12083          	lw	ra,76(sp)
   18b1c:	04812403          	lw	s0,72(sp)
   18b20:	0167a823          	sw	s6,16(a5)
   18b24:	04412483          	lw	s1,68(sp)
   18b28:	04012903          	lw	s2,64(sp)
   18b2c:	03c12983          	lw	s3,60(sp)
   18b30:	03812a03          	lw	s4,56(sp)
   18b34:	03412a83          	lw	s5,52(sp)
   18b38:	03012b03          	lw	s6,48(sp)
   18b3c:	02c12b83          	lw	s7,44(sp)
   18b40:	02812c03          	lw	s8,40(sp)
   18b44:	02412c83          	lw	s9,36(sp)
   18b48:	02012d03          	lw	s10,32(sp)
   18b4c:	01c12d83          	lw	s11,28(sp)
   18b50:	00078513          	mv	a0,a5
   18b54:	05010113          	addi	sp,sp,80
   18b58:	00008067          	ret

00018b5c <__pow5mult>:
   18b5c:	fe010113          	addi	sp,sp,-32
   18b60:	00812c23          	sw	s0,24(sp)
   18b64:	01312623          	sw	s3,12(sp)
   18b68:	01412423          	sw	s4,8(sp)
   18b6c:	00112e23          	sw	ra,28(sp)
   18b70:	00912a23          	sw	s1,20(sp)
   18b74:	01212823          	sw	s2,16(sp)
   18b78:	00367793          	andi	a5,a2,3
   18b7c:	00060413          	mv	s0,a2
   18b80:	00050993          	mv	s3,a0
   18b84:	00058a13          	mv	s4,a1
   18b88:	0c079463          	bnez	a5,18c50 <__pow5mult+0xf4>
   18b8c:	40245413          	srai	s0,s0,0x2
   18b90:	000a0913          	mv	s2,s4
   18b94:	06040863          	beqz	s0,18c04 <__pow5mult+0xa8>
   18b98:	0489a483          	lw	s1,72(s3)
   18b9c:	0c048e63          	beqz	s1,18c78 <__pow5mult+0x11c>
   18ba0:	00147793          	andi	a5,s0,1
   18ba4:	000a0913          	mv	s2,s4
   18ba8:	02079063          	bnez	a5,18bc8 <__pow5mult+0x6c>
   18bac:	40145413          	srai	s0,s0,0x1
   18bb0:	04040a63          	beqz	s0,18c04 <__pow5mult+0xa8>
   18bb4:	0004a503          	lw	a0,0(s1)
   18bb8:	06050863          	beqz	a0,18c28 <__pow5mult+0xcc>
   18bbc:	00050493          	mv	s1,a0
   18bc0:	00147793          	andi	a5,s0,1
   18bc4:	fe0784e3          	beqz	a5,18bac <__pow5mult+0x50>
   18bc8:	00048613          	mv	a2,s1
   18bcc:	00090593          	mv	a1,s2
   18bd0:	00098513          	mv	a0,s3
   18bd4:	d1dff0ef          	jal	ra,188f0 <__multiply>
   18bd8:	06090863          	beqz	s2,18c48 <__pow5mult+0xec>
   18bdc:	00492703          	lw	a4,4(s2)
   18be0:	04c9a783          	lw	a5,76(s3)
   18be4:	40145413          	srai	s0,s0,0x1
   18be8:	00271713          	slli	a4,a4,0x2
   18bec:	00e787b3          	add	a5,a5,a4
   18bf0:	0007a703          	lw	a4,0(a5)
   18bf4:	00e92023          	sw	a4,0(s2)
   18bf8:	0127a023          	sw	s2,0(a5)
   18bfc:	00050913          	mv	s2,a0
   18c00:	fa041ae3          	bnez	s0,18bb4 <__pow5mult+0x58>
   18c04:	01c12083          	lw	ra,28(sp)
   18c08:	01812403          	lw	s0,24(sp)
   18c0c:	00090513          	mv	a0,s2
   18c10:	01412483          	lw	s1,20(sp)
   18c14:	01012903          	lw	s2,16(sp)
   18c18:	00c12983          	lw	s3,12(sp)
   18c1c:	00812a03          	lw	s4,8(sp)
   18c20:	02010113          	addi	sp,sp,32
   18c24:	00008067          	ret
   18c28:	00048613          	mv	a2,s1
   18c2c:	00048593          	mv	a1,s1
   18c30:	00098513          	mv	a0,s3
   18c34:	cbdff0ef          	jal	ra,188f0 <__multiply>
   18c38:	00a4a023          	sw	a0,0(s1)
   18c3c:	00052023          	sw	zero,0(a0)
   18c40:	00050493          	mv	s1,a0
   18c44:	f7dff06f          	j	18bc0 <__pow5mult+0x64>
   18c48:	00050913          	mv	s2,a0
   18c4c:	f61ff06f          	j	18bac <__pow5mult+0x50>
   18c50:	fff78793          	addi	a5,a5,-1
   18c54:	0000d717          	auipc	a4,0xd
   18c58:	8d470713          	addi	a4,a4,-1836 # 25528 <p05.3298>
   18c5c:	00279793          	slli	a5,a5,0x2
   18c60:	00f707b3          	add	a5,a4,a5
   18c64:	0007a603          	lw	a2,0(a5)
   18c68:	00000693          	li	a3,0
   18c6c:	8bdff0ef          	jal	ra,18528 <__multadd>
   18c70:	00050a13          	mv	s4,a0
   18c74:	f19ff06f          	j	18b8c <__pow5mult+0x30>
   18c78:	00100593          	li	a1,1
   18c7c:	00098513          	mv	a0,s3
   18c80:	fdcff0ef          	jal	ra,1845c <_Balloc>
   18c84:	27100793          	li	a5,625
   18c88:	00f52a23          	sw	a5,20(a0)
   18c8c:	00100793          	li	a5,1
   18c90:	00f52823          	sw	a5,16(a0)
   18c94:	04a9a423          	sw	a0,72(s3)
   18c98:	00050493          	mv	s1,a0
   18c9c:	00052023          	sw	zero,0(a0)
   18ca0:	f01ff06f          	j	18ba0 <__pow5mult+0x44>

00018ca4 <__lshift>:
   18ca4:	fe010113          	addi	sp,sp,-32
   18ca8:	01412423          	sw	s4,8(sp)
   18cac:	0105aa03          	lw	s4,16(a1)
   18cb0:	00912a23          	sw	s1,20(sp)
   18cb4:	0085a783          	lw	a5,8(a1)
   18cb8:	40565493          	srai	s1,a2,0x5
   18cbc:	01448a33          	add	s4,s1,s4
   18cc0:	00812c23          	sw	s0,24(sp)
   18cc4:	01212823          	sw	s2,16(sp)
   18cc8:	01312623          	sw	s3,12(sp)
   18ccc:	01512223          	sw	s5,4(sp)
   18cd0:	00112e23          	sw	ra,28(sp)
   18cd4:	001a0413          	addi	s0,s4,1
   18cd8:	00058993          	mv	s3,a1
   18cdc:	00060913          	mv	s2,a2
   18ce0:	00050a93          	mv	s5,a0
   18ce4:	0045a583          	lw	a1,4(a1)
   18ce8:	0087d863          	bge	a5,s0,18cf8 <__lshift+0x54>
   18cec:	00179793          	slli	a5,a5,0x1
   18cf0:	00158593          	addi	a1,a1,1
   18cf4:	fe87cce3          	blt	a5,s0,18cec <__lshift+0x48>
   18cf8:	000a8513          	mv	a0,s5
   18cfc:	f60ff0ef          	jal	ra,1845c <_Balloc>
   18d00:	01450713          	addi	a4,a0,20
   18d04:	02905463          	blez	s1,18d2c <__lshift+0x88>
   18d08:	00548493          	addi	s1,s1,5
   18d0c:	00249493          	slli	s1,s1,0x2
   18d10:	009506b3          	add	a3,a0,s1
   18d14:	00070793          	mv	a5,a4
   18d18:	00478793          	addi	a5,a5,4
   18d1c:	fe07ae23          	sw	zero,-4(a5)
   18d20:	fef69ce3          	bne	a3,a5,18d18 <__lshift+0x74>
   18d24:	fec48493          	addi	s1,s1,-20
   18d28:	00970733          	add	a4,a4,s1
   18d2c:	0109a803          	lw	a6,16(s3)
   18d30:	01498793          	addi	a5,s3,20
   18d34:	01f97613          	andi	a2,s2,31
   18d38:	00281813          	slli	a6,a6,0x2
   18d3c:	01078833          	add	a6,a5,a6
   18d40:	08060263          	beqz	a2,18dc4 <__lshift+0x120>
   18d44:	02000893          	li	a7,32
   18d48:	40c888b3          	sub	a7,a7,a2
   18d4c:	00000593          	li	a1,0
   18d50:	0007a683          	lw	a3,0(a5)
   18d54:	00470713          	addi	a4,a4,4
   18d58:	00478793          	addi	a5,a5,4
   18d5c:	00c696b3          	sll	a3,a3,a2
   18d60:	00b6e6b3          	or	a3,a3,a1
   18d64:	fed72e23          	sw	a3,-4(a4)
   18d68:	ffc7a683          	lw	a3,-4(a5)
   18d6c:	0116d5b3          	srl	a1,a3,a7
   18d70:	ff07e0e3          	bltu	a5,a6,18d50 <__lshift+0xac>
   18d74:	00b72023          	sw	a1,0(a4)
   18d78:	00058463          	beqz	a1,18d80 <__lshift+0xdc>
   18d7c:	00040a13          	mv	s4,s0
   18d80:	0049a703          	lw	a4,4(s3)
   18d84:	04caa783          	lw	a5,76(s5)
   18d88:	01c12083          	lw	ra,28(sp)
   18d8c:	00271713          	slli	a4,a4,0x2
   18d90:	00e787b3          	add	a5,a5,a4
   18d94:	0007a703          	lw	a4,0(a5)
   18d98:	01452823          	sw	s4,16(a0)
   18d9c:	01812403          	lw	s0,24(sp)
   18da0:	00e9a023          	sw	a4,0(s3)
   18da4:	0137a023          	sw	s3,0(a5)
   18da8:	01412483          	lw	s1,20(sp)
   18dac:	01012903          	lw	s2,16(sp)
   18db0:	00c12983          	lw	s3,12(sp)
   18db4:	00812a03          	lw	s4,8(sp)
   18db8:	00412a83          	lw	s5,4(sp)
   18dbc:	02010113          	addi	sp,sp,32
   18dc0:	00008067          	ret
   18dc4:	00478793          	addi	a5,a5,4
   18dc8:	ffc7a683          	lw	a3,-4(a5)
   18dcc:	00470713          	addi	a4,a4,4
   18dd0:	fed72e23          	sw	a3,-4(a4)
   18dd4:	fb07f6e3          	bgeu	a5,a6,18d80 <__lshift+0xdc>
   18dd8:	00478793          	addi	a5,a5,4
   18ddc:	ffc7a683          	lw	a3,-4(a5)
   18de0:	00470713          	addi	a4,a4,4
   18de4:	fed72e23          	sw	a3,-4(a4)
   18de8:	fd07eee3          	bltu	a5,a6,18dc4 <__lshift+0x120>
   18dec:	f95ff06f          	j	18d80 <__lshift+0xdc>

00018df0 <__mcmp>:
   18df0:	00050613          	mv	a2,a0
   18df4:	0105a783          	lw	a5,16(a1)
   18df8:	01052503          	lw	a0,16(a0)
   18dfc:	40f50533          	sub	a0,a0,a5
   18e00:	04051463          	bnez	a0,18e48 <__mcmp+0x58>
   18e04:	00279713          	slli	a4,a5,0x2
   18e08:	01460613          	addi	a2,a2,20
   18e0c:	01458593          	addi	a1,a1,20
   18e10:	00e607b3          	add	a5,a2,a4
   18e14:	00e585b3          	add	a1,a1,a4
   18e18:	0080006f          	j	18e20 <__mcmp+0x30>
   18e1c:	02f67663          	bgeu	a2,a5,18e48 <__mcmp+0x58>
   18e20:	ffc78793          	addi	a5,a5,-4
   18e24:	ffc58593          	addi	a1,a1,-4
   18e28:	0007a703          	lw	a4,0(a5)
   18e2c:	0005a683          	lw	a3,0(a1)
   18e30:	fed706e3          	beq	a4,a3,18e1c <__mcmp+0x2c>
   18e34:	00d73733          	sltu	a4,a4,a3
   18e38:	40e00533          	neg	a0,a4
   18e3c:	ffe57513          	andi	a0,a0,-2
   18e40:	00150513          	addi	a0,a0,1
   18e44:	00008067          	ret
   18e48:	00008067          	ret

00018e4c <__mdiff>:
   18e4c:	fe010113          	addi	sp,sp,-32
   18e50:	01212823          	sw	s2,16(sp)
   18e54:	01062703          	lw	a4,16(a2)
   18e58:	0105a903          	lw	s2,16(a1)
   18e5c:	00812c23          	sw	s0,24(sp)
   18e60:	00912a23          	sw	s1,20(sp)
   18e64:	01312623          	sw	s3,12(sp)
   18e68:	01412423          	sw	s4,8(sp)
   18e6c:	00112e23          	sw	ra,28(sp)
   18e70:	40e90933          	sub	s2,s2,a4
   18e74:	00058993          	mv	s3,a1
   18e78:	00060a13          	mv	s4,a2
   18e7c:	01458413          	addi	s0,a1,20
   18e80:	01460493          	addi	s1,a2,20
   18e84:	04091863          	bnez	s2,18ed4 <__mdiff+0x88>
   18e88:	00271713          	slli	a4,a4,0x2
   18e8c:	00e407b3          	add	a5,s0,a4
   18e90:	00e48733          	add	a4,s1,a4
   18e94:	0080006f          	j	18e9c <__mdiff+0x50>
   18e98:	16f47263          	bgeu	s0,a5,18ffc <__mdiff+0x1b0>
   18e9c:	ffc78793          	addi	a5,a5,-4
   18ea0:	ffc70713          	addi	a4,a4,-4
   18ea4:	0007a583          	lw	a1,0(a5)
   18ea8:	00072683          	lw	a3,0(a4)
   18eac:	fed586e3          	beq	a1,a3,18e98 <__mdiff+0x4c>
   18eb0:	02d5f663          	bgeu	a1,a3,18edc <__mdiff+0x90>
   18eb4:	00040713          	mv	a4,s0
   18eb8:	00098793          	mv	a5,s3
   18ebc:	00048413          	mv	s0,s1
   18ec0:	000a0993          	mv	s3,s4
   18ec4:	00070493          	mv	s1,a4
   18ec8:	00078a13          	mv	s4,a5
   18ecc:	00100913          	li	s2,1
   18ed0:	00c0006f          	j	18edc <__mdiff+0x90>
   18ed4:	fe0940e3          	bltz	s2,18eb4 <__mdiff+0x68>
   18ed8:	00000913          	li	s2,0
   18edc:	0049a583          	lw	a1,4(s3)
   18ee0:	d7cff0ef          	jal	ra,1845c <_Balloc>
   18ee4:	0109a303          	lw	t1,16(s3)
   18ee8:	010a2e83          	lw	t4,16(s4)
   18eec:	00010637          	lui	a2,0x10
   18ef0:	00231e13          	slli	t3,t1,0x2
   18ef4:	002e9e93          	slli	t4,t4,0x2
   18ef8:	01252623          	sw	s2,12(a0)
   18efc:	01c40e33          	add	t3,s0,t3
   18f00:	01d48eb3          	add	t4,s1,t4
   18f04:	01450813          	addi	a6,a0,20
   18f08:	00000793          	li	a5,0
   18f0c:	fff60613          	addi	a2,a2,-1 # ffff <register_fini-0x75>
   18f10:	0080006f          	j	18f18 <__mdiff+0xcc>
   18f14:	00088813          	mv	a6,a7
   18f18:	00042703          	lw	a4,0(s0)
   18f1c:	0004a583          	lw	a1,0(s1)
   18f20:	00480893          	addi	a7,a6,4
   18f24:	00c776b3          	and	a3,a4,a2
   18f28:	00f686b3          	add	a3,a3,a5
   18f2c:	00c5f7b3          	and	a5,a1,a2
   18f30:	40f686b3          	sub	a3,a3,a5
   18f34:	0105d593          	srli	a1,a1,0x10
   18f38:	01075793          	srli	a5,a4,0x10
   18f3c:	40b787b3          	sub	a5,a5,a1
   18f40:	4106d713          	srai	a4,a3,0x10
   18f44:	00e787b3          	add	a5,a5,a4
   18f48:	01079713          	slli	a4,a5,0x10
   18f4c:	00c6f6b3          	and	a3,a3,a2
   18f50:	00d766b3          	or	a3,a4,a3
   18f54:	00448493          	addi	s1,s1,4
   18f58:	fed8ae23          	sw	a3,-4(a7)
   18f5c:	00440413          	addi	s0,s0,4
   18f60:	4107d793          	srai	a5,a5,0x10
   18f64:	fbd4e8e3          	bltu	s1,t4,18f14 <__mdiff+0xc8>
   18f68:	05c47e63          	bgeu	s0,t3,18fc4 <__mdiff+0x178>
   18f6c:	00010eb7          	lui	t4,0x10
   18f70:	00088813          	mv	a6,a7
   18f74:	00040593          	mv	a1,s0
   18f78:	fffe8e93          	addi	t4,t4,-1 # ffff <register_fini-0x75>
   18f7c:	0005a703          	lw	a4,0(a1)
   18f80:	00480813          	addi	a6,a6,4
   18f84:	00458593          	addi	a1,a1,4
   18f88:	01d77633          	and	a2,a4,t4
   18f8c:	00f60633          	add	a2,a2,a5
   18f90:	41065693          	srai	a3,a2,0x10
   18f94:	01075793          	srli	a5,a4,0x10
   18f98:	00d787b3          	add	a5,a5,a3
   18f9c:	01079693          	slli	a3,a5,0x10
   18fa0:	01d67633          	and	a2,a2,t4
   18fa4:	00c6e6b3          	or	a3,a3,a2
   18fa8:	fed82e23          	sw	a3,-4(a6)
   18fac:	4107d793          	srai	a5,a5,0x10
   18fb0:	fdc5e6e3          	bltu	a1,t3,18f7c <__mdiff+0x130>
   18fb4:	fffe0813          	addi	a6,t3,-1
   18fb8:	40880833          	sub	a6,a6,s0
   18fbc:	ffc87813          	andi	a6,a6,-4
   18fc0:	01088833          	add	a6,a7,a6
   18fc4:	00069a63          	bnez	a3,18fd8 <__mdiff+0x18c>
   18fc8:	ffc80813          	addi	a6,a6,-4
   18fcc:	00082783          	lw	a5,0(a6)
   18fd0:	fff30313          	addi	t1,t1,-1
   18fd4:	fe078ae3          	beqz	a5,18fc8 <__mdiff+0x17c>
   18fd8:	01c12083          	lw	ra,28(sp)
   18fdc:	01812403          	lw	s0,24(sp)
   18fe0:	00652823          	sw	t1,16(a0)
   18fe4:	01412483          	lw	s1,20(sp)
   18fe8:	01012903          	lw	s2,16(sp)
   18fec:	00c12983          	lw	s3,12(sp)
   18ff0:	00812a03          	lw	s4,8(sp)
   18ff4:	02010113          	addi	sp,sp,32
   18ff8:	00008067          	ret
   18ffc:	00000593          	li	a1,0
   19000:	c5cff0ef          	jal	ra,1845c <_Balloc>
   19004:	01c12083          	lw	ra,28(sp)
   19008:	01812403          	lw	s0,24(sp)
   1900c:	00100793          	li	a5,1
   19010:	00f52823          	sw	a5,16(a0)
   19014:	00052a23          	sw	zero,20(a0)
   19018:	01412483          	lw	s1,20(sp)
   1901c:	01012903          	lw	s2,16(sp)
   19020:	00c12983          	lw	s3,12(sp)
   19024:	00812a03          	lw	s4,8(sp)
   19028:	02010113          	addi	sp,sp,32
   1902c:	00008067          	ret

00019030 <__ulp>:
   19030:	7ff007b7          	lui	a5,0x7ff00
   19034:	00b7f5b3          	and	a1,a5,a1
   19038:	fcc007b7          	lui	a5,0xfcc00
   1903c:	00f585b3          	add	a1,a1,a5
   19040:	00b05863          	blez	a1,19050 <__ulp+0x20>
   19044:	00000793          	li	a5,0
   19048:	00078513          	mv	a0,a5
   1904c:	00008067          	ret
   19050:	40b005b3          	neg	a1,a1
   19054:	4145d593          	srai	a1,a1,0x14
   19058:	01300793          	li	a5,19
   1905c:	00b7c863          	blt	a5,a1,1906c <__ulp+0x3c>
   19060:	000807b7          	lui	a5,0x80
   19064:	40b7d5b3          	sra	a1,a5,a1
   19068:	fddff06f          	j	19044 <__ulp+0x14>
   1906c:	fec58713          	addi	a4,a1,-20
   19070:	01e00693          	li	a3,30
   19074:	00000593          	li	a1,0
   19078:	00100793          	li	a5,1
   1907c:	fce6c6e3          	blt	a3,a4,19048 <__ulp+0x18>
   19080:	800007b7          	lui	a5,0x80000
   19084:	00e7d7b3          	srl	a5,a5,a4
   19088:	00078513          	mv	a0,a5
   1908c:	00008067          	ret

00019090 <__b2d>:
   19090:	fe010113          	addi	sp,sp,-32
   19094:	00812c23          	sw	s0,24(sp)
   19098:	01052403          	lw	s0,16(a0)
   1909c:	00912a23          	sw	s1,20(sp)
   190a0:	01450493          	addi	s1,a0,20
   190a4:	00241413          	slli	s0,s0,0x2
   190a8:	00848433          	add	s0,s1,s0
   190ac:	01212823          	sw	s2,16(sp)
   190b0:	ffc42903          	lw	s2,-4(s0)
   190b4:	01312623          	sw	s3,12(sp)
   190b8:	01412423          	sw	s4,8(sp)
   190bc:	00090513          	mv	a0,s2
   190c0:	00058a13          	mv	s4,a1
   190c4:	00112e23          	sw	ra,28(sp)
   190c8:	ec8ff0ef          	jal	ra,18790 <__hi0bits>
   190cc:	02000713          	li	a4,32
   190d0:	40a707b3          	sub	a5,a4,a0
   190d4:	00fa2023          	sw	a5,0(s4)
   190d8:	00a00793          	li	a5,10
   190dc:	ffc40993          	addi	s3,s0,-4
   190e0:	08a7d063          	bge	a5,a0,19160 <__b2d+0xd0>
   190e4:	ff550513          	addi	a0,a0,-11
   190e8:	0534f063          	bgeu	s1,s3,19128 <__b2d+0x98>
   190ec:	ff842783          	lw	a5,-8(s0)
   190f0:	04050063          	beqz	a0,19130 <__b2d+0xa0>
   190f4:	40a70633          	sub	a2,a4,a0
   190f8:	00c7d733          	srl	a4,a5,a2
   190fc:	00a916b3          	sll	a3,s2,a0
   19100:	00e6e6b3          	or	a3,a3,a4
   19104:	ff840593          	addi	a1,s0,-8
   19108:	3ff00737          	lui	a4,0x3ff00
   1910c:	00e6e6b3          	or	a3,a3,a4
   19110:	00a797b3          	sll	a5,a5,a0
   19114:	02b4f263          	bgeu	s1,a1,19138 <__b2d+0xa8>
   19118:	ff442703          	lw	a4,-12(s0)
   1911c:	00c75733          	srl	a4,a4,a2
   19120:	00e7e7b3          	or	a5,a5,a4
   19124:	0140006f          	j	19138 <__b2d+0xa8>
   19128:	00000793          	li	a5,0
   1912c:	06051463          	bnez	a0,19194 <__b2d+0x104>
   19130:	3ff00737          	lui	a4,0x3ff00
   19134:	00e966b3          	or	a3,s2,a4
   19138:	01c12083          	lw	ra,28(sp)
   1913c:	01812403          	lw	s0,24(sp)
   19140:	01412483          	lw	s1,20(sp)
   19144:	01012903          	lw	s2,16(sp)
   19148:	00c12983          	lw	s3,12(sp)
   1914c:	00812a03          	lw	s4,8(sp)
   19150:	00078513          	mv	a0,a5
   19154:	00068593          	mv	a1,a3
   19158:	02010113          	addi	sp,sp,32
   1915c:	00008067          	ret
   19160:	00b00613          	li	a2,11
   19164:	40a60633          	sub	a2,a2,a0
   19168:	00c95733          	srl	a4,s2,a2
   1916c:	3ff006b7          	lui	a3,0x3ff00
   19170:	00d766b3          	or	a3,a4,a3
   19174:	00000713          	li	a4,0
   19178:	0134f663          	bgeu	s1,s3,19184 <__b2d+0xf4>
   1917c:	ff842703          	lw	a4,-8(s0)
   19180:	00c75733          	srl	a4,a4,a2
   19184:	01550513          	addi	a0,a0,21
   19188:	00a91533          	sll	a0,s2,a0
   1918c:	00e567b3          	or	a5,a0,a4
   19190:	fa9ff06f          	j	19138 <__b2d+0xa8>
   19194:	00a91533          	sll	a0,s2,a0
   19198:	3ff00737          	lui	a4,0x3ff00
   1919c:	00e566b3          	or	a3,a0,a4
   191a0:	00000793          	li	a5,0
   191a4:	f95ff06f          	j	19138 <__b2d+0xa8>

000191a8 <__d2b>:
   191a8:	fd010113          	addi	sp,sp,-48
   191ac:	01512a23          	sw	s5,20(sp)
   191b0:	00058a93          	mv	s5,a1
   191b4:	00100593          	li	a1,1
   191b8:	02812423          	sw	s0,40(sp)
   191bc:	02912223          	sw	s1,36(sp)
   191c0:	03212023          	sw	s2,32(sp)
   191c4:	00060493          	mv	s1,a2
   191c8:	01312e23          	sw	s3,28(sp)
   191cc:	01412c23          	sw	s4,24(sp)
   191d0:	02112623          	sw	ra,44(sp)
   191d4:	00068a13          	mv	s4,a3
   191d8:	00070993          	mv	s3,a4
   191dc:	a80ff0ef          	jal	ra,1845c <_Balloc>
   191e0:	00100637          	lui	a2,0x100
   191e4:	0144d413          	srli	s0,s1,0x14
   191e8:	fff60793          	addi	a5,a2,-1 # fffff <__BSS_END__+0xd9517>
   191ec:	7ff47413          	andi	s0,s0,2047
   191f0:	00050913          	mv	s2,a0
   191f4:	0097f7b3          	and	a5,a5,s1
   191f8:	00040463          	beqz	s0,19200 <__d2b+0x58>
   191fc:	00c7e7b3          	or	a5,a5,a2
   19200:	00f12623          	sw	a5,12(sp)
   19204:	080a8e63          	beqz	s5,192a0 <__d2b+0xf8>
   19208:	00810513          	addi	a0,sp,8
   1920c:	01512423          	sw	s5,8(sp)
   19210:	df4ff0ef          	jal	ra,18804 <__lo0bits>
   19214:	00050793          	mv	a5,a0
   19218:	00c12703          	lw	a4,12(sp)
   1921c:	06051063          	bnez	a0,1927c <__d2b+0xd4>
   19220:	00812683          	lw	a3,8(sp)
   19224:	00d92a23          	sw	a3,20(s2)
   19228:	00e034b3          	snez	s1,a4
   1922c:	00148493          	addi	s1,s1,1
   19230:	00e92c23          	sw	a4,24(s2)
   19234:	00992823          	sw	s1,16(s2)
   19238:	08040663          	beqz	s0,192c4 <__d2b+0x11c>
   1923c:	bcd40413          	addi	s0,s0,-1075
   19240:	00f40433          	add	s0,s0,a5
   19244:	03500713          	li	a4,53
   19248:	008a2023          	sw	s0,0(s4)
   1924c:	40f707b3          	sub	a5,a4,a5
   19250:	00f9a023          	sw	a5,0(s3)
   19254:	02c12083          	lw	ra,44(sp)
   19258:	02812403          	lw	s0,40(sp)
   1925c:	00090513          	mv	a0,s2
   19260:	02412483          	lw	s1,36(sp)
   19264:	02012903          	lw	s2,32(sp)
   19268:	01c12983          	lw	s3,28(sp)
   1926c:	01812a03          	lw	s4,24(sp)
   19270:	01412a83          	lw	s5,20(sp)
   19274:	03010113          	addi	sp,sp,48
   19278:	00008067          	ret
   1927c:	02000693          	li	a3,32
   19280:	00812603          	lw	a2,8(sp)
   19284:	40a686b3          	sub	a3,a3,a0
   19288:	00d716b3          	sll	a3,a4,a3
   1928c:	00c6e6b3          	or	a3,a3,a2
   19290:	00a75733          	srl	a4,a4,a0
   19294:	00d92a23          	sw	a3,20(s2)
   19298:	00e12623          	sw	a4,12(sp)
   1929c:	f8dff06f          	j	19228 <__d2b+0x80>
   192a0:	00c10513          	addi	a0,sp,12
   192a4:	d60ff0ef          	jal	ra,18804 <__lo0bits>
   192a8:	00100793          	li	a5,1
   192ac:	00f92823          	sw	a5,16(s2)
   192b0:	00c12783          	lw	a5,12(sp)
   192b4:	00100493          	li	s1,1
   192b8:	00f92a23          	sw	a5,20(s2)
   192bc:	02050793          	addi	a5,a0,32
   192c0:	f6041ee3          	bnez	s0,1923c <__d2b+0x94>
   192c4:	00249713          	slli	a4,s1,0x2
   192c8:	00e90733          	add	a4,s2,a4
   192cc:	01072503          	lw	a0,16(a4) # 3ff00010 <__BSS_END__+0x3fed9528>
   192d0:	bce78793          	addi	a5,a5,-1074 # 7ffffbce <__BSS_END__+0x7ffd90e6>
   192d4:	00fa2023          	sw	a5,0(s4)
   192d8:	cb8ff0ef          	jal	ra,18790 <__hi0bits>
   192dc:	00549493          	slli	s1,s1,0x5
   192e0:	40a484b3          	sub	s1,s1,a0
   192e4:	0099a023          	sw	s1,0(s3)
   192e8:	f6dff06f          	j	19254 <__d2b+0xac>

000192ec <__ratio>:
   192ec:	fd010113          	addi	sp,sp,-48
   192f0:	03212023          	sw	s2,32(sp)
   192f4:	00058913          	mv	s2,a1
   192f8:	00810593          	addi	a1,sp,8
   192fc:	02112623          	sw	ra,44(sp)
   19300:	02812423          	sw	s0,40(sp)
   19304:	02912223          	sw	s1,36(sp)
   19308:	01312e23          	sw	s3,28(sp)
   1930c:	00050993          	mv	s3,a0
   19310:	d81ff0ef          	jal	ra,19090 <__b2d>
   19314:	00050493          	mv	s1,a0
   19318:	00058413          	mv	s0,a1
   1931c:	00090513          	mv	a0,s2
   19320:	00c10593          	addi	a1,sp,12
   19324:	d6dff0ef          	jal	ra,19090 <__b2d>
   19328:	01092783          	lw	a5,16(s2)
   1932c:	0109a703          	lw	a4,16(s3)
   19330:	00812683          	lw	a3,8(sp)
   19334:	40f70733          	sub	a4,a4,a5
   19338:	00c12783          	lw	a5,12(sp)
   1933c:	00571713          	slli	a4,a4,0x5
   19340:	40f686b3          	sub	a3,a3,a5
   19344:	00d707b3          	add	a5,a4,a3
   19348:	02f05e63          	blez	a5,19384 <__ratio+0x98>
   1934c:	01479793          	slli	a5,a5,0x14
   19350:	00878433          	add	s0,a5,s0
   19354:	00050613          	mv	a2,a0
   19358:	00058693          	mv	a3,a1
   1935c:	00048513          	mv	a0,s1
   19360:	00040593          	mv	a1,s0
   19364:	001070ef          	jal	ra,20b64 <__divdf3>
   19368:	02c12083          	lw	ra,44(sp)
   1936c:	02812403          	lw	s0,40(sp)
   19370:	02412483          	lw	s1,36(sp)
   19374:	02012903          	lw	s2,32(sp)
   19378:	01c12983          	lw	s3,28(sp)
   1937c:	03010113          	addi	sp,sp,48
   19380:	00008067          	ret
   19384:	01479713          	slli	a4,a5,0x14
   19388:	40e585b3          	sub	a1,a1,a4
   1938c:	fc9ff06f          	j	19354 <__ratio+0x68>

00019390 <_mprec_log10>:
   19390:	ff010113          	addi	sp,sp,-16
   19394:	00812423          	sw	s0,8(sp)
   19398:	00112623          	sw	ra,12(sp)
   1939c:	01212223          	sw	s2,4(sp)
   193a0:	01312023          	sw	s3,0(sp)
   193a4:	01700793          	li	a5,23
   193a8:	00050413          	mv	s0,a0
   193ac:	04a7d863          	bge	a5,a0,193fc <_mprec_log10+0x6c>
   193b0:	0000d797          	auipc	a5,0xd
   193b4:	6b078793          	addi	a5,a5,1712 # 26a60 <__SDATA_BEGIN__>
   193b8:	0007a503          	lw	a0,0(a5)
   193bc:	0047a583          	lw	a1,4(a5)
   193c0:	0000d797          	auipc	a5,0xd
   193c4:	6a878793          	addi	a5,a5,1704 # 26a68 <__SDATA_BEGIN__+0x8>
   193c8:	0007a903          	lw	s2,0(a5)
   193cc:	0047a983          	lw	s3,4(a5)
   193d0:	fff40413          	addi	s0,s0,-1
   193d4:	00090613          	mv	a2,s2
   193d8:	00098693          	mv	a3,s3
   193dc:	759070ef          	jal	ra,21334 <__muldf3>
   193e0:	fe0418e3          	bnez	s0,193d0 <_mprec_log10+0x40>
   193e4:	00c12083          	lw	ra,12(sp)
   193e8:	00812403          	lw	s0,8(sp)
   193ec:	00412903          	lw	s2,4(sp)
   193f0:	00012983          	lw	s3,0(sp)
   193f4:	01010113          	addi	sp,sp,16
   193f8:	00008067          	ret
   193fc:	00351413          	slli	s0,a0,0x3
   19400:	0000c797          	auipc	a5,0xc
   19404:	12878793          	addi	a5,a5,296 # 25528 <p05.3298>
   19408:	00878433          	add	s0,a5,s0
   1940c:	01042503          	lw	a0,16(s0)
   19410:	01442583          	lw	a1,20(s0)
   19414:	00c12083          	lw	ra,12(sp)
   19418:	00812403          	lw	s0,8(sp)
   1941c:	00412903          	lw	s2,4(sp)
   19420:	00012983          	lw	s3,0(sp)
   19424:	01010113          	addi	sp,sp,16
   19428:	00008067          	ret

0001942c <__copybits>:
   1942c:	01062683          	lw	a3,16(a2)
   19430:	fff58593          	addi	a1,a1,-1
   19434:	4055d593          	srai	a1,a1,0x5
   19438:	00158593          	addi	a1,a1,1
   1943c:	01460793          	addi	a5,a2,20
   19440:	00269693          	slli	a3,a3,0x2
   19444:	00259593          	slli	a1,a1,0x2
   19448:	00d786b3          	add	a3,a5,a3
   1944c:	00b505b3          	add	a1,a0,a1
   19450:	02d7f863          	bgeu	a5,a3,19480 <__copybits+0x54>
   19454:	00050713          	mv	a4,a0
   19458:	00478793          	addi	a5,a5,4
   1945c:	ffc7a803          	lw	a6,-4(a5)
   19460:	00470713          	addi	a4,a4,4
   19464:	ff072e23          	sw	a6,-4(a4)
   19468:	fed7e8e3          	bltu	a5,a3,19458 <__copybits+0x2c>
   1946c:	40c687b3          	sub	a5,a3,a2
   19470:	feb78793          	addi	a5,a5,-21
   19474:	ffc7f793          	andi	a5,a5,-4
   19478:	00478793          	addi	a5,a5,4
   1947c:	00f50533          	add	a0,a0,a5
   19480:	00b57863          	bgeu	a0,a1,19490 <__copybits+0x64>
   19484:	00450513          	addi	a0,a0,4
   19488:	fe052e23          	sw	zero,-4(a0)
   1948c:	feb56ce3          	bltu	a0,a1,19484 <__copybits+0x58>
   19490:	00008067          	ret

00019494 <__any_on>:
   19494:	01052703          	lw	a4,16(a0)
   19498:	4055d613          	srai	a2,a1,0x5
   1949c:	01450693          	addi	a3,a0,20
   194a0:	02c75a63          	bge	a4,a2,194d4 <__any_on+0x40>
   194a4:	00271793          	slli	a5,a4,0x2
   194a8:	00f687b3          	add	a5,a3,a5
   194ac:	04f6fc63          	bgeu	a3,a5,19504 <__any_on+0x70>
   194b0:	ffc7a503          	lw	a0,-4(a5)
   194b4:	ffc78793          	addi	a5,a5,-4
   194b8:	00051a63          	bnez	a0,194cc <__any_on+0x38>
   194bc:	04f6f263          	bgeu	a3,a5,19500 <__any_on+0x6c>
   194c0:	ffc78793          	addi	a5,a5,-4
   194c4:	0007a703          	lw	a4,0(a5)
   194c8:	fe070ae3          	beqz	a4,194bc <__any_on+0x28>
   194cc:	00100513          	li	a0,1
   194d0:	00008067          	ret
   194d4:	00261793          	slli	a5,a2,0x2
   194d8:	00f687b3          	add	a5,a3,a5
   194dc:	fce658e3          	bge	a2,a4,194ac <__any_on+0x18>
   194e0:	01f5f593          	andi	a1,a1,31
   194e4:	fc0584e3          	beqz	a1,194ac <__any_on+0x18>
   194e8:	0007a603          	lw	a2,0(a5)
   194ec:	00100513          	li	a0,1
   194f0:	00b65733          	srl	a4,a2,a1
   194f4:	00b715b3          	sll	a1,a4,a1
   194f8:	fab60ae3          	beq	a2,a1,194ac <__any_on+0x18>
   194fc:	00008067          	ret
   19500:	00008067          	ret
   19504:	00000513          	li	a0,0
   19508:	00008067          	ret

0001950c <_realloc_r>:
   1950c:	fd010113          	addi	sp,sp,-48
   19510:	01312e23          	sw	s3,28(sp)
   19514:	02112623          	sw	ra,44(sp)
   19518:	02812423          	sw	s0,40(sp)
   1951c:	02912223          	sw	s1,36(sp)
   19520:	03212023          	sw	s2,32(sp)
   19524:	01412c23          	sw	s4,24(sp)
   19528:	01512a23          	sw	s5,20(sp)
   1952c:	01612823          	sw	s6,16(sp)
   19530:	01712623          	sw	s7,12(sp)
   19534:	01812423          	sw	s8,8(sp)
   19538:	00060993          	mv	s3,a2
   1953c:	22058a63          	beqz	a1,19770 <_realloc_r+0x264>
   19540:	00058b13          	mv	s6,a1
   19544:	00050a93          	mv	s5,a0
   19548:	f0dfe0ef          	jal	ra,18454 <__malloc_lock>
   1954c:	00b98413          	addi	s0,s3,11
   19550:	01600793          	li	a5,22
   19554:	0e87fc63          	bgeu	a5,s0,1964c <_realloc_r+0x140>
   19558:	ff847413          	andi	s0,s0,-8
   1955c:	00040713          	mv	a4,s0
   19560:	0e044c63          	bltz	s0,19658 <_realloc_r+0x14c>
   19564:	0f346a63          	bltu	s0,s3,19658 <_realloc_r+0x14c>
   19568:	ffcb2783          	lw	a5,-4(s6)
   1956c:	ff8b0913          	addi	s2,s6,-8
   19570:	ffc7f493          	andi	s1,a5,-4
   19574:	00990a33          	add	s4,s2,s1
   19578:	1ae4d263          	bge	s1,a4,1971c <_realloc_r+0x210>
   1957c:	d9418693          	addi	a3,gp,-620 # 26654 <__malloc_av_>
   19580:	0086a603          	lw	a2,8(a3) # 3ff00008 <__BSS_END__+0x3fed9520>
   19584:	004a2683          	lw	a3,4(s4)
   19588:	25460663          	beq	a2,s4,197d4 <_realloc_r+0x2c8>
   1958c:	ffe6f613          	andi	a2,a3,-2
   19590:	00ca0633          	add	a2,s4,a2
   19594:	00462603          	lw	a2,4(a2)
   19598:	00167613          	andi	a2,a2,1
   1959c:	1a061c63          	bnez	a2,19754 <_realloc_r+0x248>
   195a0:	ffc6f693          	andi	a3,a3,-4
   195a4:	00d48633          	add	a2,s1,a3
   195a8:	34e65663          	bge	a2,a4,198f4 <_realloc_r+0x3e8>
   195ac:	0017f793          	andi	a5,a5,1
   195b0:	02079463          	bnez	a5,195d8 <_realloc_r+0xcc>
   195b4:	ff8b2c03          	lw	s8,-8(s6)
   195b8:	41890c33          	sub	s8,s2,s8
   195bc:	004c2783          	lw	a5,4(s8)
   195c0:	ffc7f793          	andi	a5,a5,-4
   195c4:	00d786b3          	add	a3,a5,a3
   195c8:	00968bb3          	add	s7,a3,s1
   195cc:	0cebd663          	bge	s7,a4,19698 <_realloc_r+0x18c>
   195d0:	00f48bb3          	add	s7,s1,a5
   195d4:	34ebd863          	bge	s7,a4,19924 <_realloc_r+0x418>
   195d8:	00098593          	mv	a1,s3
   195dc:	000a8513          	mv	a0,s5
   195e0:	b1cfe0ef          	jal	ra,178fc <_malloc_r>
   195e4:	00050993          	mv	s3,a0
   195e8:	04050c63          	beqz	a0,19640 <_realloc_r+0x134>
   195ec:	ffcb2783          	lw	a5,-4(s6)
   195f0:	ff850713          	addi	a4,a0,-8
   195f4:	ffe7f793          	andi	a5,a5,-2
   195f8:	00f907b3          	add	a5,s2,a5
   195fc:	30e78a63          	beq	a5,a4,19910 <_realloc_r+0x404>
   19600:	ffc48613          	addi	a2,s1,-4
   19604:	02400793          	li	a5,36
   19608:	38c7ea63          	bltu	a5,a2,1999c <_realloc_r+0x490>
   1960c:	01300713          	li	a4,19
   19610:	000b2683          	lw	a3,0(s6)
   19614:	28c76463          	bltu	a4,a2,1989c <_realloc_r+0x390>
   19618:	00050793          	mv	a5,a0
   1961c:	000b0713          	mv	a4,s6
   19620:	00d7a023          	sw	a3,0(a5)
   19624:	00472683          	lw	a3,4(a4)
   19628:	00d7a223          	sw	a3,4(a5)
   1962c:	00872703          	lw	a4,8(a4)
   19630:	00e7a423          	sw	a4,8(a5)
   19634:	000b0593          	mv	a1,s6
   19638:	000a8513          	mv	a0,s5
   1963c:	b89fa0ef          	jal	ra,141c4 <_free_r>
   19640:	000a8513          	mv	a0,s5
   19644:	e15fe0ef          	jal	ra,18458 <__malloc_unlock>
   19648:	01c0006f          	j	19664 <_realloc_r+0x158>
   1964c:	01000413          	li	s0,16
   19650:	01000713          	li	a4,16
   19654:	f1347ae3          	bgeu	s0,s3,19568 <_realloc_r+0x5c>
   19658:	00c00793          	li	a5,12
   1965c:	00faa023          	sw	a5,0(s5)
   19660:	00000993          	li	s3,0
   19664:	02c12083          	lw	ra,44(sp)
   19668:	02812403          	lw	s0,40(sp)
   1966c:	00098513          	mv	a0,s3
   19670:	02412483          	lw	s1,36(sp)
   19674:	02012903          	lw	s2,32(sp)
   19678:	01c12983          	lw	s3,28(sp)
   1967c:	01812a03          	lw	s4,24(sp)
   19680:	01412a83          	lw	s5,20(sp)
   19684:	01012b03          	lw	s6,16(sp)
   19688:	00c12b83          	lw	s7,12(sp)
   1968c:	00812c03          	lw	s8,8(sp)
   19690:	03010113          	addi	sp,sp,48
   19694:	00008067          	ret
   19698:	00ca2783          	lw	a5,12(s4)
   1969c:	008a2703          	lw	a4,8(s4)
   196a0:	ffc48613          	addi	a2,s1,-4
   196a4:	02400693          	li	a3,36
   196a8:	00f72623          	sw	a5,12(a4)
   196ac:	00e7a423          	sw	a4,8(a5)
   196b0:	008c2703          	lw	a4,8(s8)
   196b4:	00cc2783          	lw	a5,12(s8)
   196b8:	008c0993          	addi	s3,s8,8
   196bc:	017c0a33          	add	s4,s8,s7
   196c0:	00f72623          	sw	a5,12(a4)
   196c4:	00e7a423          	sw	a4,8(a5)
   196c8:	2ec6e063          	bltu	a3,a2,199a8 <_realloc_r+0x49c>
   196cc:	01300693          	li	a3,19
   196d0:	000b2703          	lw	a4,0(s6)
   196d4:	00098793          	mv	a5,s3
   196d8:	02c6f263          	bgeu	a3,a2,196fc <_realloc_r+0x1f0>
   196dc:	00ec2423          	sw	a4,8(s8)
   196e0:	004b2703          	lw	a4,4(s6)
   196e4:	01b00793          	li	a5,27
   196e8:	00ec2623          	sw	a4,12(s8)
   196ec:	008b2703          	lw	a4,8(s6)
   196f0:	32c7ee63          	bltu	a5,a2,19a2c <_realloc_r+0x520>
   196f4:	010c0793          	addi	a5,s8,16
   196f8:	008b0b13          	addi	s6,s6,8
   196fc:	00e7a023          	sw	a4,0(a5)
   19700:	004b2703          	lw	a4,4(s6)
   19704:	000b8493          	mv	s1,s7
   19708:	000c0913          	mv	s2,s8
   1970c:	00e7a223          	sw	a4,4(a5)
   19710:	008b2703          	lw	a4,8(s6)
   19714:	00098b13          	mv	s6,s3
   19718:	00e7a423          	sw	a4,8(a5)
   1971c:	00492603          	lw	a2,4(s2)
   19720:	408487b3          	sub	a5,s1,s0
   19724:	00f00713          	li	a4,15
   19728:	00167613          	andi	a2,a2,1
   1972c:	06f76c63          	bltu	a4,a5,197a4 <_realloc_r+0x298>
   19730:	00c4e633          	or	a2,s1,a2
   19734:	00c92223          	sw	a2,4(s2)
   19738:	004a2783          	lw	a5,4(s4)
   1973c:	0017e793          	ori	a5,a5,1
   19740:	00fa2223          	sw	a5,4(s4)
   19744:	000a8513          	mv	a0,s5
   19748:	d11fe0ef          	jal	ra,18458 <__malloc_unlock>
   1974c:	000b0993          	mv	s3,s6
   19750:	f15ff06f          	j	19664 <_realloc_r+0x158>
   19754:	0017f793          	andi	a5,a5,1
   19758:	e80790e3          	bnez	a5,195d8 <_realloc_r+0xcc>
   1975c:	ff8b2c03          	lw	s8,-8(s6)
   19760:	41890c33          	sub	s8,s2,s8
   19764:	004c2783          	lw	a5,4(s8)
   19768:	ffc7f793          	andi	a5,a5,-4
   1976c:	e65ff06f          	j	195d0 <_realloc_r+0xc4>
   19770:	02812403          	lw	s0,40(sp)
   19774:	02c12083          	lw	ra,44(sp)
   19778:	02412483          	lw	s1,36(sp)
   1977c:	02012903          	lw	s2,32(sp)
   19780:	01c12983          	lw	s3,28(sp)
   19784:	01812a03          	lw	s4,24(sp)
   19788:	01412a83          	lw	s5,20(sp)
   1978c:	01012b03          	lw	s6,16(sp)
   19790:	00c12b83          	lw	s7,12(sp)
   19794:	00812c03          	lw	s8,8(sp)
   19798:	00060593          	mv	a1,a2
   1979c:	03010113          	addi	sp,sp,48
   197a0:	95cfe06f          	j	178fc <_malloc_r>
   197a4:	00866633          	or	a2,a2,s0
   197a8:	00c92223          	sw	a2,4(s2)
   197ac:	008905b3          	add	a1,s2,s0
   197b0:	0017e793          	ori	a5,a5,1
   197b4:	00f5a223          	sw	a5,4(a1)
   197b8:	004a2783          	lw	a5,4(s4)
   197bc:	00858593          	addi	a1,a1,8
   197c0:	000a8513          	mv	a0,s5
   197c4:	0017e793          	ori	a5,a5,1
   197c8:	00fa2223          	sw	a5,4(s4)
   197cc:	9f9fa0ef          	jal	ra,141c4 <_free_r>
   197d0:	f75ff06f          	j	19744 <_realloc_r+0x238>
   197d4:	ffc6f693          	andi	a3,a3,-4
   197d8:	00d48633          	add	a2,s1,a3
   197dc:	01040593          	addi	a1,s0,16
   197e0:	0eb65063          	bge	a2,a1,198c0 <_realloc_r+0x3b4>
   197e4:	0017f793          	andi	a5,a5,1
   197e8:	de0798e3          	bnez	a5,195d8 <_realloc_r+0xcc>
   197ec:	ff8b2c03          	lw	s8,-8(s6)
   197f0:	41890c33          	sub	s8,s2,s8
   197f4:	004c2783          	lw	a5,4(s8)
   197f8:	ffc7f793          	andi	a5,a5,-4
   197fc:	00d786b3          	add	a3,a5,a3
   19800:	00968a33          	add	s4,a3,s1
   19804:	dcba46e3          	blt	s4,a1,195d0 <_realloc_r+0xc4>
   19808:	00cc2783          	lw	a5,12(s8)
   1980c:	008c2703          	lw	a4,8(s8)
   19810:	ffc48613          	addi	a2,s1,-4
   19814:	02400693          	li	a3,36
   19818:	00f72623          	sw	a5,12(a4)
   1981c:	00e7a423          	sw	a4,8(a5)
   19820:	008c0993          	addi	s3,s8,8
   19824:	22c6e663          	bltu	a3,a2,19a50 <_realloc_r+0x544>
   19828:	01300593          	li	a1,19
   1982c:	000b2703          	lw	a4,0(s6)
   19830:	00098793          	mv	a5,s3
   19834:	02c5f263          	bgeu	a1,a2,19858 <_realloc_r+0x34c>
   19838:	00ec2423          	sw	a4,8(s8)
   1983c:	004b2703          	lw	a4,4(s6)
   19840:	01b00793          	li	a5,27
   19844:	00ec2623          	sw	a4,12(s8)
   19848:	24c7ea63          	bltu	a5,a2,19a9c <_realloc_r+0x590>
   1984c:	008b2703          	lw	a4,8(s6)
   19850:	010c0793          	addi	a5,s8,16
   19854:	008b0b13          	addi	s6,s6,8
   19858:	00e7a023          	sw	a4,0(a5)
   1985c:	004b2703          	lw	a4,4(s6)
   19860:	00e7a223          	sw	a4,4(a5)
   19864:	008b2703          	lw	a4,8(s6)
   19868:	00e7a423          	sw	a4,8(a5)
   1986c:	008c0733          	add	a4,s8,s0
   19870:	408a07b3          	sub	a5,s4,s0
   19874:	d8e1ae23          	sw	a4,-612(gp) # 2665c <__malloc_av_+0x8>
   19878:	0017e793          	ori	a5,a5,1
   1987c:	00f72223          	sw	a5,4(a4)
   19880:	004c2783          	lw	a5,4(s8)
   19884:	000a8513          	mv	a0,s5
   19888:	0017f793          	andi	a5,a5,1
   1988c:	0087e433          	or	s0,a5,s0
   19890:	008c2223          	sw	s0,4(s8)
   19894:	bc5fe0ef          	jal	ra,18458 <__malloc_unlock>
   19898:	dcdff06f          	j	19664 <_realloc_r+0x158>
   1989c:	00d52023          	sw	a3,0(a0)
   198a0:	004b2683          	lw	a3,4(s6)
   198a4:	01b00713          	li	a4,27
   198a8:	00d52223          	sw	a3,4(a0)
   198ac:	10c76c63          	bltu	a4,a2,199c4 <_realloc_r+0x4b8>
   198b0:	008b0713          	addi	a4,s6,8
   198b4:	00850793          	addi	a5,a0,8
   198b8:	008b2683          	lw	a3,8(s6)
   198bc:	d65ff06f          	j	19620 <_realloc_r+0x114>
   198c0:	00890933          	add	s2,s2,s0
   198c4:	408607b3          	sub	a5,a2,s0
   198c8:	d921ae23          	sw	s2,-612(gp) # 2665c <__malloc_av_+0x8>
   198cc:	0017e793          	ori	a5,a5,1
   198d0:	00f92223          	sw	a5,4(s2)
   198d4:	ffcb2783          	lw	a5,-4(s6)
   198d8:	000a8513          	mv	a0,s5
   198dc:	000b0993          	mv	s3,s6
   198e0:	0017f793          	andi	a5,a5,1
   198e4:	0087e433          	or	s0,a5,s0
   198e8:	fe8b2e23          	sw	s0,-4(s6)
   198ec:	b6dfe0ef          	jal	ra,18458 <__malloc_unlock>
   198f0:	d75ff06f          	j	19664 <_realloc_r+0x158>
   198f4:	00ca2783          	lw	a5,12(s4)
   198f8:	008a2703          	lw	a4,8(s4)
   198fc:	00060493          	mv	s1,a2
   19900:	00c90a33          	add	s4,s2,a2
   19904:	00f72623          	sw	a5,12(a4)
   19908:	00e7a423          	sw	a4,8(a5)
   1990c:	e11ff06f          	j	1971c <_realloc_r+0x210>
   19910:	ffc52783          	lw	a5,-4(a0)
   19914:	ffc7f793          	andi	a5,a5,-4
   19918:	00f484b3          	add	s1,s1,a5
   1991c:	00990a33          	add	s4,s2,s1
   19920:	dfdff06f          	j	1971c <_realloc_r+0x210>
   19924:	00cc2703          	lw	a4,12(s8)
   19928:	008c2683          	lw	a3,8(s8)
   1992c:	ffc48613          	addi	a2,s1,-4
   19930:	02400593          	li	a1,36
   19934:	00e6a623          	sw	a4,12(a3)
   19938:	00d72423          	sw	a3,8(a4)
   1993c:	008c0993          	addi	s3,s8,8
   19940:	017c0a33          	add	s4,s8,s7
   19944:	06c5e263          	bltu	a1,a2,199a8 <_realloc_r+0x49c>
   19948:	01300513          	li	a0,19
   1994c:	000b2683          	lw	a3,0(s6)
   19950:	00098713          	mv	a4,s3
   19954:	02c57263          	bgeu	a0,a2,19978 <_realloc_r+0x46c>
   19958:	00dc2423          	sw	a3,8(s8)
   1995c:	004b2703          	lw	a4,4(s6)
   19960:	01b00793          	li	a5,27
   19964:	00ec2623          	sw	a4,12(s8)
   19968:	0ac7e063          	bltu	a5,a2,19a08 <_realloc_r+0x4fc>
   1996c:	008b2683          	lw	a3,8(s6)
   19970:	010c0713          	addi	a4,s8,16
   19974:	008b0b13          	addi	s6,s6,8
   19978:	00d72023          	sw	a3,0(a4)
   1997c:	004b2683          	lw	a3,4(s6)
   19980:	000b8493          	mv	s1,s7
   19984:	000c0913          	mv	s2,s8
   19988:	00d72223          	sw	a3,4(a4)
   1998c:	008b2783          	lw	a5,8(s6)
   19990:	00098b13          	mv	s6,s3
   19994:	00f72423          	sw	a5,8(a4)
   19998:	d85ff06f          	j	1971c <_realloc_r+0x210>
   1999c:	000b0593          	mv	a1,s6
   199a0:	995fe0ef          	jal	ra,18334 <memmove>
   199a4:	c91ff06f          	j	19634 <_realloc_r+0x128>
   199a8:	000b0593          	mv	a1,s6
   199ac:	00098513          	mv	a0,s3
   199b0:	985fe0ef          	jal	ra,18334 <memmove>
   199b4:	00098b13          	mv	s6,s3
   199b8:	000b8493          	mv	s1,s7
   199bc:	000c0913          	mv	s2,s8
   199c0:	d5dff06f          	j	1971c <_realloc_r+0x210>
   199c4:	008b2703          	lw	a4,8(s6)
   199c8:	00e52423          	sw	a4,8(a0)
   199cc:	00cb2703          	lw	a4,12(s6)
   199d0:	00e52623          	sw	a4,12(a0)
   199d4:	00f60a63          	beq	a2,a5,199e8 <_realloc_r+0x4dc>
   199d8:	010b0713          	addi	a4,s6,16
   199dc:	01050793          	addi	a5,a0,16
   199e0:	010b2683          	lw	a3,16(s6)
   199e4:	c3dff06f          	j	19620 <_realloc_r+0x114>
   199e8:	010b2683          	lw	a3,16(s6)
   199ec:	018b0713          	addi	a4,s6,24
   199f0:	01850793          	addi	a5,a0,24
   199f4:	00d52823          	sw	a3,16(a0)
   199f8:	014b2683          	lw	a3,20(s6)
   199fc:	00d52a23          	sw	a3,20(a0)
   19a00:	018b2683          	lw	a3,24(s6)
   19a04:	c1dff06f          	j	19620 <_realloc_r+0x114>
   19a08:	008b2783          	lw	a5,8(s6)
   19a0c:	00fc2823          	sw	a5,16(s8)
   19a10:	00cb2783          	lw	a5,12(s6)
   19a14:	00fc2a23          	sw	a5,20(s8)
   19a18:	04b60463          	beq	a2,a1,19a60 <_realloc_r+0x554>
   19a1c:	010b2683          	lw	a3,16(s6)
   19a20:	018c0713          	addi	a4,s8,24
   19a24:	010b0b13          	addi	s6,s6,16
   19a28:	f51ff06f          	j	19978 <_realloc_r+0x46c>
   19a2c:	00ec2823          	sw	a4,16(s8)
   19a30:	00cb2703          	lw	a4,12(s6)
   19a34:	02400793          	li	a5,36
   19a38:	00ec2a23          	sw	a4,20(s8)
   19a3c:	010b2703          	lw	a4,16(s6)
   19a40:	04f60063          	beq	a2,a5,19a80 <_realloc_r+0x574>
   19a44:	018c0793          	addi	a5,s8,24
   19a48:	010b0b13          	addi	s6,s6,16
   19a4c:	cb1ff06f          	j	196fc <_realloc_r+0x1f0>
   19a50:	000b0593          	mv	a1,s6
   19a54:	00098513          	mv	a0,s3
   19a58:	8ddfe0ef          	jal	ra,18334 <memmove>
   19a5c:	e11ff06f          	j	1986c <_realloc_r+0x360>
   19a60:	010b2783          	lw	a5,16(s6)
   19a64:	020c0713          	addi	a4,s8,32
   19a68:	018b0b13          	addi	s6,s6,24
   19a6c:	00fc2c23          	sw	a5,24(s8)
   19a70:	ffcb2783          	lw	a5,-4(s6)
   19a74:	00fc2e23          	sw	a5,28(s8)
   19a78:	000b2683          	lw	a3,0(s6)
   19a7c:	efdff06f          	j	19978 <_realloc_r+0x46c>
   19a80:	00ec2c23          	sw	a4,24(s8)
   19a84:	014b2703          	lw	a4,20(s6)
   19a88:	020c0793          	addi	a5,s8,32
   19a8c:	018b0b13          	addi	s6,s6,24
   19a90:	00ec2e23          	sw	a4,28(s8)
   19a94:	000b2703          	lw	a4,0(s6)
   19a98:	c65ff06f          	j	196fc <_realloc_r+0x1f0>
   19a9c:	008b2783          	lw	a5,8(s6)
   19aa0:	00fc2823          	sw	a5,16(s8)
   19aa4:	00cb2783          	lw	a5,12(s6)
   19aa8:	00fc2a23          	sw	a5,20(s8)
   19aac:	010b2703          	lw	a4,16(s6)
   19ab0:	00d60863          	beq	a2,a3,19ac0 <_realloc_r+0x5b4>
   19ab4:	018c0793          	addi	a5,s8,24
   19ab8:	010b0b13          	addi	s6,s6,16
   19abc:	d9dff06f          	j	19858 <_realloc_r+0x34c>
   19ac0:	00ec2c23          	sw	a4,24(s8)
   19ac4:	014b2703          	lw	a4,20(s6)
   19ac8:	020c0793          	addi	a5,s8,32
   19acc:	018b0b13          	addi	s6,s6,24
   19ad0:	00ec2e23          	sw	a4,28(s8)
   19ad4:	000b2703          	lw	a4,0(s6)
   19ad8:	d81ff06f          	j	19858 <_realloc_r+0x34c>

00019adc <_sbrk_r>:
   19adc:	ff010113          	addi	sp,sp,-16
   19ae0:	00812423          	sw	s0,8(sp)
   19ae4:	00050413          	mv	s0,a0
   19ae8:	00058513          	mv	a0,a1
   19aec:	2201a223          	sw	zero,548(gp) # 26ae4 <errno>
   19af0:	00112623          	sw	ra,12(sp)
   19af4:	40c060ef          	jal	ra,1ff00 <_sbrk>
   19af8:	fff00793          	li	a5,-1
   19afc:	00f50a63          	beq	a0,a5,19b10 <_sbrk_r+0x34>
   19b00:	00c12083          	lw	ra,12(sp)
   19b04:	00812403          	lw	s0,8(sp)
   19b08:	01010113          	addi	sp,sp,16
   19b0c:	00008067          	ret
   19b10:	22418793          	addi	a5,gp,548 # 26ae4 <errno>
   19b14:	0007a783          	lw	a5,0(a5)
   19b18:	fe0784e3          	beqz	a5,19b00 <_sbrk_r+0x24>
   19b1c:	00f42023          	sw	a5,0(s0)
   19b20:	00c12083          	lw	ra,12(sp)
   19b24:	00812403          	lw	s0,8(sp)
   19b28:	01010113          	addi	sp,sp,16
   19b2c:	00008067          	ret

00019b30 <frexp>:
   19b30:	ff010113          	addi	sp,sp,-16
   19b34:	00812423          	sw	s0,8(sp)
   19b38:	80000437          	lui	s0,0x80000
   19b3c:	00912223          	sw	s1,4(sp)
   19b40:	00112623          	sw	ra,12(sp)
   19b44:	fff44413          	not	s0,s0
   19b48:	00060493          	mv	s1,a2
   19b4c:	00062023          	sw	zero,0(a2)
   19b50:	00b47733          	and	a4,s0,a1
   19b54:	7ff00637          	lui	a2,0x7ff00
   19b58:	00058793          	mv	a5,a1
   19b5c:	00050693          	mv	a3,a0
   19b60:	06c75263          	bge	a4,a2,19bc4 <frexp+0x94>
   19b64:	00a768b3          	or	a7,a4,a0
   19b68:	04088e63          	beqz	a7,19bc4 <frexp+0x94>
   19b6c:	00c5f633          	and	a2,a1,a2
   19b70:	00058813          	mv	a6,a1
   19b74:	00000893          	li	a7,0
   19b78:	02061463          	bnez	a2,19ba0 <frexp+0x70>
   19b7c:	0000d797          	auipc	a5,0xd
   19b80:	ef478793          	addi	a5,a5,-268 # 26a70 <__SDATA_BEGIN__+0x10>
   19b84:	0047a683          	lw	a3,4(a5)
   19b88:	0007a603          	lw	a2,0(a5)
   19b8c:	7a8070ef          	jal	ra,21334 <__muldf3>
   19b90:	00050693          	mv	a3,a0
   19b94:	00058813          	mv	a6,a1
   19b98:	00b47733          	and	a4,s0,a1
   19b9c:	fca00893          	li	a7,-54
   19ba0:	41475713          	srai	a4,a4,0x14
   19ba4:	801007b7          	lui	a5,0x80100
   19ba8:	fff78793          	addi	a5,a5,-1 # 800fffff <__BSS_END__+0x800d9517>
   19bac:	c0270713          	addi	a4,a4,-1022
   19bb0:	00f87833          	and	a6,a6,a5
   19bb4:	01170733          	add	a4,a4,a7
   19bb8:	3fe007b7          	lui	a5,0x3fe00
   19bbc:	00f867b3          	or	a5,a6,a5
   19bc0:	00e4a023          	sw	a4,0(s1)
   19bc4:	00c12083          	lw	ra,12(sp)
   19bc8:	00812403          	lw	s0,8(sp)
   19bcc:	00412483          	lw	s1,4(sp)
   19bd0:	00068513          	mv	a0,a3
   19bd4:	00078593          	mv	a1,a5
   19bd8:	01010113          	addi	sp,sp,16
   19bdc:	00008067          	ret

00019be0 <_sprintf_r>:
   19be0:	f6010113          	addi	sp,sp,-160
   19be4:	08c10e13          	addi	t3,sp,140
   19be8:	08f12a23          	sw	a5,148(sp)
   19bec:	80000337          	lui	t1,0x80000
   19bf0:	ffff07b7          	lui	a5,0xffff0
   19bf4:	00058e93          	mv	t4,a1
   19bf8:	fff34313          	not	t1,t1
   19bfc:	08d12623          	sw	a3,140(sp)
   19c00:	20878793          	addi	a5,a5,520 # ffff0208 <__BSS_END__+0xfffc9720>
   19c04:	00810593          	addi	a1,sp,8
   19c08:	000e0693          	mv	a3,t3
   19c0c:	06112e23          	sw	ra,124(sp)
   19c10:	00f12a23          	sw	a5,20(sp)
   19c14:	08e12823          	sw	a4,144(sp)
   19c18:	09012c23          	sw	a6,152(sp)
   19c1c:	09112e23          	sw	a7,156(sp)
   19c20:	01d12423          	sw	t4,8(sp)
   19c24:	01d12c23          	sw	t4,24(sp)
   19c28:	00612e23          	sw	t1,28(sp)
   19c2c:	00612823          	sw	t1,16(sp)
   19c30:	01c12223          	sw	t3,4(sp)
   19c34:	4e8000ef          	jal	ra,1a11c <_svfprintf_r>
   19c38:	00812783          	lw	a5,8(sp)
   19c3c:	00078023          	sb	zero,0(a5)
   19c40:	07c12083          	lw	ra,124(sp)
   19c44:	0a010113          	addi	sp,sp,160
   19c48:	00008067          	ret

00019c4c <sprintf>:
   19c4c:	00050e93          	mv	t4,a0
   19c50:	1c018513          	addi	a0,gp,448 # 26a80 <_impure_ptr>
   19c54:	f6010113          	addi	sp,sp,-160
   19c58:	00052503          	lw	a0,0(a0)
   19c5c:	08810e13          	addi	t3,sp,136
   19c60:	08f12a23          	sw	a5,148(sp)
   19c64:	80000337          	lui	t1,0x80000
   19c68:	ffff07b7          	lui	a5,0xffff0
   19c6c:	fff34313          	not	t1,t1
   19c70:	08c12423          	sw	a2,136(sp)
   19c74:	08d12623          	sw	a3,140(sp)
   19c78:	20878793          	addi	a5,a5,520 # ffff0208 <__BSS_END__+0xfffc9720>
   19c7c:	00058613          	mv	a2,a1
   19c80:	000e0693          	mv	a3,t3
   19c84:	00810593          	addi	a1,sp,8
   19c88:	06112e23          	sw	ra,124(sp)
   19c8c:	00f12a23          	sw	a5,20(sp)
   19c90:	08e12823          	sw	a4,144(sp)
   19c94:	09012c23          	sw	a6,152(sp)
   19c98:	09112e23          	sw	a7,156(sp)
   19c9c:	01d12423          	sw	t4,8(sp)
   19ca0:	01d12c23          	sw	t4,24(sp)
   19ca4:	00612e23          	sw	t1,28(sp)
   19ca8:	00612823          	sw	t1,16(sp)
   19cac:	01c12223          	sw	t3,4(sp)
   19cb0:	46c000ef          	jal	ra,1a11c <_svfprintf_r>
   19cb4:	00812783          	lw	a5,8(sp)
   19cb8:	00078023          	sb	zero,0(a5)
   19cbc:	07c12083          	lw	ra,124(sp)
   19cc0:	0a010113          	addi	sp,sp,160
   19cc4:	00008067          	ret

00019cc8 <__sread>:
   19cc8:	ff010113          	addi	sp,sp,-16
   19ccc:	00812423          	sw	s0,8(sp)
   19cd0:	00058413          	mv	s0,a1
   19cd4:	00e59583          	lh	a1,14(a1)
   19cd8:	00112623          	sw	ra,12(sp)
   19cdc:	14d040ef          	jal	ra,1e628 <_read_r>
   19ce0:	02054063          	bltz	a0,19d00 <__sread+0x38>
   19ce4:	05042783          	lw	a5,80(s0) # 80000050 <__BSS_END__+0x7ffd9568>
   19ce8:	00c12083          	lw	ra,12(sp)
   19cec:	00a787b3          	add	a5,a5,a0
   19cf0:	04f42823          	sw	a5,80(s0)
   19cf4:	00812403          	lw	s0,8(sp)
   19cf8:	01010113          	addi	sp,sp,16
   19cfc:	00008067          	ret
   19d00:	00c45783          	lhu	a5,12(s0)
   19d04:	fffff737          	lui	a4,0xfffff
   19d08:	fff70713          	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffd8517>
   19d0c:	00e7f7b3          	and	a5,a5,a4
   19d10:	00f41623          	sh	a5,12(s0)
   19d14:	00c12083          	lw	ra,12(sp)
   19d18:	00812403          	lw	s0,8(sp)
   19d1c:	01010113          	addi	sp,sp,16
   19d20:	00008067          	ret

00019d24 <__seofread>:
   19d24:	00000513          	li	a0,0
   19d28:	00008067          	ret

00019d2c <__swrite>:
   19d2c:	00c59783          	lh	a5,12(a1)
   19d30:	fe010113          	addi	sp,sp,-32
   19d34:	00812c23          	sw	s0,24(sp)
   19d38:	00912a23          	sw	s1,20(sp)
   19d3c:	01212823          	sw	s2,16(sp)
   19d40:	01312623          	sw	s3,12(sp)
   19d44:	00112e23          	sw	ra,28(sp)
   19d48:	1007f713          	andi	a4,a5,256
   19d4c:	00058413          	mv	s0,a1
   19d50:	00050493          	mv	s1,a0
   19d54:	00060913          	mv	s2,a2
   19d58:	00068993          	mv	s3,a3
   19d5c:	00e59583          	lh	a1,14(a1)
   19d60:	02071e63          	bnez	a4,19d9c <__swrite+0x70>
   19d64:	fffff737          	lui	a4,0xfffff
   19d68:	fff70713          	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffd8517>
   19d6c:	00e7f7b3          	and	a5,a5,a4
   19d70:	00f41623          	sh	a5,12(s0)
   19d74:	01812403          	lw	s0,24(sp)
   19d78:	01c12083          	lw	ra,28(sp)
   19d7c:	00098693          	mv	a3,s3
   19d80:	00090613          	mv	a2,s2
   19d84:	00c12983          	lw	s3,12(sp)
   19d88:	01012903          	lw	s2,16(sp)
   19d8c:	00048513          	mv	a0,s1
   19d90:	01412483          	lw	s1,20(sp)
   19d94:	02010113          	addi	sp,sp,32
   19d98:	3080406f          	j	1e0a0 <_write_r>
   19d9c:	00200693          	li	a3,2
   19da0:	00000613          	li	a2,0
   19da4:	025040ef          	jal	ra,1e5c8 <_lseek_r>
   19da8:	00c41783          	lh	a5,12(s0)
   19dac:	00e41583          	lh	a1,14(s0)
   19db0:	fb5ff06f          	j	19d64 <__swrite+0x38>

00019db4 <__sseek>:
   19db4:	ff010113          	addi	sp,sp,-16
   19db8:	00812423          	sw	s0,8(sp)
   19dbc:	00058413          	mv	s0,a1
   19dc0:	00e59583          	lh	a1,14(a1)
   19dc4:	00112623          	sw	ra,12(sp)
   19dc8:	001040ef          	jal	ra,1e5c8 <_lseek_r>
   19dcc:	fff00793          	li	a5,-1
   19dd0:	02f50463          	beq	a0,a5,19df8 <__sseek+0x44>
   19dd4:	00c45783          	lhu	a5,12(s0)
   19dd8:	00001737          	lui	a4,0x1
   19ddc:	04a42823          	sw	a0,80(s0)
   19de0:	00e7e7b3          	or	a5,a5,a4
   19de4:	00f41623          	sh	a5,12(s0)
   19de8:	00c12083          	lw	ra,12(sp)
   19dec:	00812403          	lw	s0,8(sp)
   19df0:	01010113          	addi	sp,sp,16
   19df4:	00008067          	ret
   19df8:	00c45783          	lhu	a5,12(s0)
   19dfc:	fffff737          	lui	a4,0xfffff
   19e00:	fff70713          	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffd8517>
   19e04:	00e7f7b3          	and	a5,a5,a4
   19e08:	00f41623          	sh	a5,12(s0)
   19e0c:	00c12083          	lw	ra,12(sp)
   19e10:	00812403          	lw	s0,8(sp)
   19e14:	01010113          	addi	sp,sp,16
   19e18:	00008067          	ret

00019e1c <__sclose>:
   19e1c:	00e59583          	lh	a1,14(a1)
   19e20:	3a80406f          	j	1e1c8 <_close_r>

00019e24 <strcmp>:
   19e24:	00b56733          	or	a4,a0,a1
   19e28:	fff00393          	li	t2,-1
   19e2c:	00377713          	andi	a4,a4,3
   19e30:	10071063          	bnez	a4,19f30 <strcmp+0x10c>
   19e34:	7f7f87b7          	lui	a5,0x7f7f8
   19e38:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <__BSS_END__+0x7f7d1497>
   19e3c:	00052603          	lw	a2,0(a0)
   19e40:	0005a683          	lw	a3,0(a1)
   19e44:	00f672b3          	and	t0,a2,a5
   19e48:	00f66333          	or	t1,a2,a5
   19e4c:	00f282b3          	add	t0,t0,a5
   19e50:	0062e2b3          	or	t0,t0,t1
   19e54:	10729263          	bne	t0,t2,19f58 <strcmp+0x134>
   19e58:	08d61663          	bne	a2,a3,19ee4 <strcmp+0xc0>
   19e5c:	00452603          	lw	a2,4(a0)
   19e60:	0045a683          	lw	a3,4(a1)
   19e64:	00f672b3          	and	t0,a2,a5
   19e68:	00f66333          	or	t1,a2,a5
   19e6c:	00f282b3          	add	t0,t0,a5
   19e70:	0062e2b3          	or	t0,t0,t1
   19e74:	0c729e63          	bne	t0,t2,19f50 <strcmp+0x12c>
   19e78:	06d61663          	bne	a2,a3,19ee4 <strcmp+0xc0>
   19e7c:	00852603          	lw	a2,8(a0)
   19e80:	0085a683          	lw	a3,8(a1)
   19e84:	00f672b3          	and	t0,a2,a5
   19e88:	00f66333          	or	t1,a2,a5
   19e8c:	00f282b3          	add	t0,t0,a5
   19e90:	0062e2b3          	or	t0,t0,t1
   19e94:	0c729863          	bne	t0,t2,19f64 <strcmp+0x140>
   19e98:	04d61663          	bne	a2,a3,19ee4 <strcmp+0xc0>
   19e9c:	00c52603          	lw	a2,12(a0)
   19ea0:	00c5a683          	lw	a3,12(a1)
   19ea4:	00f672b3          	and	t0,a2,a5
   19ea8:	00f66333          	or	t1,a2,a5
   19eac:	00f282b3          	add	t0,t0,a5
   19eb0:	0062e2b3          	or	t0,t0,t1
   19eb4:	0c729263          	bne	t0,t2,19f78 <strcmp+0x154>
   19eb8:	02d61663          	bne	a2,a3,19ee4 <strcmp+0xc0>
   19ebc:	01052603          	lw	a2,16(a0)
   19ec0:	0105a683          	lw	a3,16(a1)
   19ec4:	00f672b3          	and	t0,a2,a5
   19ec8:	00f66333          	or	t1,a2,a5
   19ecc:	00f282b3          	add	t0,t0,a5
   19ed0:	0062e2b3          	or	t0,t0,t1
   19ed4:	0a729c63          	bne	t0,t2,19f8c <strcmp+0x168>
   19ed8:	01450513          	addi	a0,a0,20
   19edc:	01458593          	addi	a1,a1,20
   19ee0:	f4d60ee3          	beq	a2,a3,19e3c <strcmp+0x18>
   19ee4:	01061713          	slli	a4,a2,0x10
   19ee8:	01069793          	slli	a5,a3,0x10
   19eec:	00f71e63          	bne	a4,a5,19f08 <strcmp+0xe4>
   19ef0:	01065713          	srli	a4,a2,0x10
   19ef4:	0106d793          	srli	a5,a3,0x10
   19ef8:	40f70533          	sub	a0,a4,a5
   19efc:	0ff57593          	andi	a1,a0,255
   19f00:	02059063          	bnez	a1,19f20 <strcmp+0xfc>
   19f04:	00008067          	ret
   19f08:	01075713          	srli	a4,a4,0x10
   19f0c:	0107d793          	srli	a5,a5,0x10
   19f10:	40f70533          	sub	a0,a4,a5
   19f14:	0ff57593          	andi	a1,a0,255
   19f18:	00059463          	bnez	a1,19f20 <strcmp+0xfc>
   19f1c:	00008067          	ret
   19f20:	0ff77713          	andi	a4,a4,255
   19f24:	0ff7f793          	andi	a5,a5,255
   19f28:	40f70533          	sub	a0,a4,a5
   19f2c:	00008067          	ret
   19f30:	00054603          	lbu	a2,0(a0)
   19f34:	0005c683          	lbu	a3,0(a1)
   19f38:	00150513          	addi	a0,a0,1
   19f3c:	00158593          	addi	a1,a1,1
   19f40:	00d61463          	bne	a2,a3,19f48 <strcmp+0x124>
   19f44:	fe0616e3          	bnez	a2,19f30 <strcmp+0x10c>
   19f48:	40d60533          	sub	a0,a2,a3
   19f4c:	00008067          	ret
   19f50:	00450513          	addi	a0,a0,4
   19f54:	00458593          	addi	a1,a1,4
   19f58:	fcd61ce3          	bne	a2,a3,19f30 <strcmp+0x10c>
   19f5c:	00000513          	li	a0,0
   19f60:	00008067          	ret
   19f64:	00850513          	addi	a0,a0,8
   19f68:	00858593          	addi	a1,a1,8
   19f6c:	fcd612e3          	bne	a2,a3,19f30 <strcmp+0x10c>
   19f70:	00000513          	li	a0,0
   19f74:	00008067          	ret
   19f78:	00c50513          	addi	a0,a0,12
   19f7c:	00c58593          	addi	a1,a1,12
   19f80:	fad618e3          	bne	a2,a3,19f30 <strcmp+0x10c>
   19f84:	00000513          	li	a0,0
   19f88:	00008067          	ret
   19f8c:	01050513          	addi	a0,a0,16
   19f90:	01058593          	addi	a1,a1,16
   19f94:	f8d61ee3          	bne	a2,a3,19f30 <strcmp+0x10c>
   19f98:	00000513          	li	a0,0
   19f9c:	00008067          	ret

00019fa0 <strcpy>:
   19fa0:	00b567b3          	or	a5,a0,a1
   19fa4:	0037f793          	andi	a5,a5,3
   19fa8:	08079263          	bnez	a5,1a02c <strcpy+0x8c>
   19fac:	0005a703          	lw	a4,0(a1)
   19fb0:	7f7f86b7          	lui	a3,0x7f7f8
   19fb4:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <__BSS_END__+0x7f7d1497>
   19fb8:	00d777b3          	and	a5,a4,a3
   19fbc:	00d787b3          	add	a5,a5,a3
   19fc0:	00e7e7b3          	or	a5,a5,a4
   19fc4:	00d7e7b3          	or	a5,a5,a3
   19fc8:	fff00613          	li	a2,-1
   19fcc:	06c79e63          	bne	a5,a2,1a048 <strcpy+0xa8>
   19fd0:	00050613          	mv	a2,a0
   19fd4:	fff00813          	li	a6,-1
   19fd8:	00460613          	addi	a2,a2,4 # 7ff00004 <__BSS_END__+0x7fed951c>
   19fdc:	00458593          	addi	a1,a1,4
   19fe0:	fee62e23          	sw	a4,-4(a2)
   19fe4:	0005a703          	lw	a4,0(a1)
   19fe8:	00d777b3          	and	a5,a4,a3
   19fec:	00d787b3          	add	a5,a5,a3
   19ff0:	00e7e7b3          	or	a5,a5,a4
   19ff4:	00d7e7b3          	or	a5,a5,a3
   19ff8:	ff0780e3          	beq	a5,a6,19fd8 <strcpy+0x38>
   19ffc:	0005c783          	lbu	a5,0(a1)
   1a000:	0015c703          	lbu	a4,1(a1)
   1a004:	0025c683          	lbu	a3,2(a1)
   1a008:	00f60023          	sb	a5,0(a2)
   1a00c:	00078a63          	beqz	a5,1a020 <strcpy+0x80>
   1a010:	00e600a3          	sb	a4,1(a2)
   1a014:	00070663          	beqz	a4,1a020 <strcpy+0x80>
   1a018:	00d60123          	sb	a3,2(a2)
   1a01c:	00069463          	bnez	a3,1a024 <strcpy+0x84>
   1a020:	00008067          	ret
   1a024:	000601a3          	sb	zero,3(a2)
   1a028:	00008067          	ret
   1a02c:	00050793          	mv	a5,a0
   1a030:	0005c703          	lbu	a4,0(a1)
   1a034:	00178793          	addi	a5,a5,1
   1a038:	00158593          	addi	a1,a1,1
   1a03c:	fee78fa3          	sb	a4,-1(a5)
   1a040:	fe0718e3          	bnez	a4,1a030 <strcpy+0x90>
   1a044:	00008067          	ret
   1a048:	00050613          	mv	a2,a0
   1a04c:	fb1ff06f          	j	19ffc <strcpy+0x5c>

0001a050 <strncpy>:
   1a050:	00a5e7b3          	or	a5,a1,a0
   1a054:	0037f793          	andi	a5,a5,3
   1a058:	06079a63          	bnez	a5,1a0cc <strncpy+0x7c>
   1a05c:	00300793          	li	a5,3
   1a060:	00050713          	mv	a4,a0
   1a064:	06c7e863          	bltu	a5,a2,1a0d4 <strncpy+0x84>
   1a068:	06060063          	beqz	a2,1a0c8 <strncpy+0x78>
   1a06c:	0005c803          	lbu	a6,0(a1)
   1a070:	fff60693          	addi	a3,a2,-1
   1a074:	00158593          	addi	a1,a1,1
   1a078:	01070023          	sb	a6,0(a4)
   1a07c:	00170793          	addi	a5,a4,1
   1a080:	02080863          	beqz	a6,1a0b0 <strncpy+0x60>
   1a084:	00c70633          	add	a2,a4,a2
   1a088:	00d706b3          	add	a3,a4,a3
   1a08c:	0140006f          	j	1a0a0 <strncpy+0x50>
   1a090:	fff5c703          	lbu	a4,-1(a1)
   1a094:	00178793          	addi	a5,a5,1
   1a098:	fee78fa3          	sb	a4,-1(a5)
   1a09c:	00070c63          	beqz	a4,1a0b4 <strncpy+0x64>
   1a0a0:	00158593          	addi	a1,a1,1
   1a0a4:	40f68833          	sub	a6,a3,a5
   1a0a8:	fec794e3          	bne	a5,a2,1a090 <strncpy+0x40>
   1a0ac:	00008067          	ret
   1a0b0:	00068813          	mv	a6,a3
   1a0b4:	01078733          	add	a4,a5,a6
   1a0b8:	06080063          	beqz	a6,1a118 <strncpy+0xc8>
   1a0bc:	00178793          	addi	a5,a5,1
   1a0c0:	fe078fa3          	sb	zero,-1(a5)
   1a0c4:	fee79ce3          	bne	a5,a4,1a0bc <strncpy+0x6c>
   1a0c8:	00008067          	ret
   1a0cc:	00050713          	mv	a4,a0
   1a0d0:	f99ff06f          	j	1a068 <strncpy+0x18>
   1a0d4:	feff0337          	lui	t1,0xfeff0
   1a0d8:	808088b7          	lui	a7,0x80808
   1a0dc:	eff30313          	addi	t1,t1,-257 # fefefeff <__BSS_END__+0xfefc9417>
   1a0e0:	08088893          	addi	a7,a7,128 # 80808080 <__BSS_END__+0x807e1598>
   1a0e4:	00300e13          	li	t3,3
   1a0e8:	0005a683          	lw	a3,0(a1)
   1a0ec:	006687b3          	add	a5,a3,t1
   1a0f0:	fff6c813          	not	a6,a3
   1a0f4:	0107f7b3          	and	a5,a5,a6
   1a0f8:	0117f7b3          	and	a5,a5,a7
   1a0fc:	f60798e3          	bnez	a5,1a06c <strncpy+0x1c>
   1a100:	00470713          	addi	a4,a4,4
   1a104:	ffc60613          	addi	a2,a2,-4
   1a108:	fed72e23          	sw	a3,-4(a4)
   1a10c:	00458593          	addi	a1,a1,4
   1a110:	fcce6ce3          	bltu	t3,a2,1a0e8 <strncpy+0x98>
   1a114:	f55ff06f          	j	1a068 <strncpy+0x18>
   1a118:	00008067          	ret

0001a11c <_svfprintf_r>:
   1a11c:	e1010113          	addi	sp,sp,-496
   1a120:	1e112623          	sw	ra,492(sp)
   1a124:	1e812423          	sw	s0,488(sp)
   1a128:	1d912223          	sw	s9,452(sp)
   1a12c:	00058413          	mv	s0,a1
   1a130:	00b12423          	sw	a1,8(sp)
   1a134:	00060c93          	mv	s9,a2
   1a138:	00d12823          	sw	a3,16(sp)
   1a13c:	1e912223          	sw	s1,484(sp)
   1a140:	1f212023          	sw	s2,480(sp)
   1a144:	1d312e23          	sw	s3,476(sp)
   1a148:	1d412c23          	sw	s4,472(sp)
   1a14c:	1d512a23          	sw	s5,468(sp)
   1a150:	1d612823          	sw	s6,464(sp)
   1a154:	1d712623          	sw	s7,460(sp)
   1a158:	1d812423          	sw	s8,456(sp)
   1a15c:	1da12023          	sw	s10,448(sp)
   1a160:	1bb12e23          	sw	s11,444(sp)
   1a164:	02a12223          	sw	a0,36(sp)
   1a168:	cfcfd0ef          	jal	ra,17664 <_localeconv_r>
   1a16c:	00052783          	lw	a5,0(a0)
   1a170:	00078513          	mv	a0,a5
   1a174:	02f12823          	sw	a5,48(sp)
   1a178:	959f60ef          	jal	ra,10ad0 <strlen>
   1a17c:	00c45783          	lhu	a5,12(s0)
   1a180:	02a12423          	sw	a0,40(sp)
   1a184:	0e012823          	sw	zero,240(sp)
   1a188:	0e012a23          	sw	zero,244(sp)
   1a18c:	0e012c23          	sw	zero,248(sp)
   1a190:	0e012e23          	sw	zero,252(sp)
   1a194:	0807f793          	andi	a5,a5,128
   1a198:	00078863          	beqz	a5,1a1a8 <_svfprintf_r+0x8c>
   1a19c:	01042783          	lw	a5,16(s0)
   1a1a0:	00079463          	bnez	a5,1a1a8 <_svfprintf_r+0x8c>
   1a1a4:	6a40106f          	j	1b848 <_svfprintf_r+0x172c>
   1a1a8:	10c10793          	addi	a5,sp,268
   1a1ac:	000c8d13          	mv	s10,s9
   1a1b0:	0ef12223          	sw	a5,228(sp)
   1a1b4:	00078d93          	mv	s11,a5
   1a1b8:	000d4783          	lbu	a5,0(s10)
   1a1bc:	0e012623          	sw	zero,236(sp)
   1a1c0:	0e012423          	sw	zero,232(sp)
   1a1c4:	00012c23          	sw	zero,24(sp)
   1a1c8:	02012623          	sw	zero,44(sp)
   1a1cc:	02012c23          	sw	zero,56(sp)
   1a1d0:	02012e23          	sw	zero,60(sp)
   1a1d4:	04012023          	sw	zero,64(sp)
   1a1d8:	04012223          	sw	zero,68(sp)
   1a1dc:	00012223          	sw	zero,4(sp)
   1a1e0:	01000c13          	li	s8,16
   1a1e4:	02412a83          	lw	s5,36(sp)
   1a1e8:	38078863          	beqz	a5,1a578 <_svfprintf_r+0x45c>
   1a1ec:	02500713          	li	a4,37
   1a1f0:	00e79463          	bne	a5,a4,1a1f8 <_svfprintf_r+0xdc>
   1a1f4:	4f80106f          	j	1b6ec <_svfprintf_r+0x15d0>
   1a1f8:	000d0413          	mv	s0,s10
   1a1fc:	00c0006f          	j	1a208 <_svfprintf_r+0xec>
   1a200:	0ee78a63          	beq	a5,a4,1a2f4 <_svfprintf_r+0x1d8>
   1a204:	00048413          	mv	s0,s1
   1a208:	00144783          	lbu	a5,1(s0)
   1a20c:	00140493          	addi	s1,s0,1
   1a210:	fe0798e3          	bnez	a5,1a200 <_svfprintf_r+0xe4>
   1a214:	41a48933          	sub	s2,s1,s10
   1a218:	36090063          	beqz	s2,1a578 <_svfprintf_r+0x45c>
   1a21c:	0ec12703          	lw	a4,236(sp)
   1a220:	0e812783          	lw	a5,232(sp)
   1a224:	01ada023          	sw	s10,0(s11)
   1a228:	01270733          	add	a4,a4,s2
   1a22c:	00178793          	addi	a5,a5,1
   1a230:	012da223          	sw	s2,4(s11)
   1a234:	0ee12623          	sw	a4,236(sp)
   1a238:	0ef12423          	sw	a5,232(sp)
   1a23c:	00700713          	li	a4,7
   1a240:	008d8d93          	addi	s11,s11,8
   1a244:	0af74e63          	blt	a4,a5,1a300 <_svfprintf_r+0x1e4>
   1a248:	00412703          	lw	a4,4(sp)
   1a24c:	00144783          	lbu	a5,1(s0)
   1a250:	01270733          	add	a4,a4,s2
   1a254:	00e12223          	sw	a4,4(sp)
   1a258:	32078063          	beqz	a5,1a578 <_svfprintf_r+0x45c>
   1a25c:	00148913          	addi	s2,s1,1
   1a260:	0014c403          	lbu	s0,1(s1)
   1a264:	0c0103a3          	sb	zero,199(sp)
   1a268:	fff00b13          	li	s6,-1
   1a26c:	00000493          	li	s1,0
   1a270:	00000993          	li	s3,0
   1a274:	00900a13          	li	s4,9
   1a278:	02a00b93          	li	s7,42
   1a27c:	00190913          	addi	s2,s2,1
   1a280:	05a00713          	li	a4,90
   1a284:	fe040793          	addi	a5,s0,-32
   1a288:	1ef76463          	bltu	a4,a5,1a470 <_svfprintf_r+0x354>
   1a28c:	0000b697          	auipc	a3,0xb
   1a290:	3c468693          	addi	a3,a3,964 # 25650 <__mprec_bigtens+0x28>
   1a294:	00279793          	slli	a5,a5,0x2
   1a298:	00d787b3          	add	a5,a5,a3
   1a29c:	0007a783          	lw	a5,0(a5)
   1a2a0:	00d787b3          	add	a5,a5,a3
   1a2a4:	00078067          	jr	a5
   1a2a8:	000a8513          	mv	a0,s5
   1a2ac:	bb8fd0ef          	jal	ra,17664 <_localeconv_r>
   1a2b0:	00452783          	lw	a5,4(a0)
   1a2b4:	00078513          	mv	a0,a5
   1a2b8:	04f12223          	sw	a5,68(sp)
   1a2bc:	815f60ef          	jal	ra,10ad0 <strlen>
   1a2c0:	04a12023          	sw	a0,64(sp)
   1a2c4:	00050413          	mv	s0,a0
   1a2c8:	000a8513          	mv	a0,s5
   1a2cc:	b98fd0ef          	jal	ra,17664 <_localeconv_r>
   1a2d0:	00852783          	lw	a5,8(a0)
   1a2d4:	02f12e23          	sw	a5,60(sp)
   1a2d8:	00040463          	beqz	s0,1a2e0 <_svfprintf_r+0x1c4>
   1a2dc:	4c40106f          	j	1b7a0 <_svfprintf_r+0x1684>
   1a2e0:	00094403          	lbu	s0,0(s2)
   1a2e4:	f99ff06f          	j	1a27c <_svfprintf_r+0x160>
   1a2e8:	0209e993          	ori	s3,s3,32
   1a2ec:	00094403          	lbu	s0,0(s2)
   1a2f0:	f8dff06f          	j	1a27c <_svfprintf_r+0x160>
   1a2f4:	41a48933          	sub	s2,s1,s10
   1a2f8:	f60902e3          	beqz	s2,1a25c <_svfprintf_r+0x140>
   1a2fc:	f21ff06f          	j	1a21c <_svfprintf_r+0x100>
   1a300:	00812583          	lw	a1,8(sp)
   1a304:	0e410613          	addi	a2,sp,228
   1a308:	000a8513          	mv	a0,s5
   1a30c:	4cc040ef          	jal	ra,1e7d8 <__ssprint_r>
   1a310:	02051a63          	bnez	a0,1a344 <_svfprintf_r+0x228>
   1a314:	10c10d93          	addi	s11,sp,268
   1a318:	f31ff06f          	j	1a248 <_svfprintf_r+0x12c>
   1a31c:	00812583          	lw	a1,8(sp)
   1a320:	0e410613          	addi	a2,sp,228
   1a324:	000a8513          	mv	a0,s5
   1a328:	4b0040ef          	jal	ra,1e7d8 <__ssprint_r>
   1a32c:	020500e3          	beqz	a0,1ab4c <_svfprintf_r+0xa30>
   1a330:	00c12783          	lw	a5,12(sp)
   1a334:	00078863          	beqz	a5,1a344 <_svfprintf_r+0x228>
   1a338:	00c12583          	lw	a1,12(sp)
   1a33c:	02412503          	lw	a0,36(sp)
   1a340:	e85f90ef          	jal	ra,141c4 <_free_r>
   1a344:	00812783          	lw	a5,8(sp)
   1a348:	00c7d783          	lhu	a5,12(a5)
   1a34c:	0407f793          	andi	a5,a5,64
   1a350:	00078463          	beqz	a5,1a358 <_svfprintf_r+0x23c>
   1a354:	5400206f          	j	1c894 <_svfprintf_r+0x2778>
   1a358:	1ec12083          	lw	ra,492(sp)
   1a35c:	1e812403          	lw	s0,488(sp)
   1a360:	00412503          	lw	a0,4(sp)
   1a364:	1e412483          	lw	s1,484(sp)
   1a368:	1e012903          	lw	s2,480(sp)
   1a36c:	1dc12983          	lw	s3,476(sp)
   1a370:	1d812a03          	lw	s4,472(sp)
   1a374:	1d412a83          	lw	s5,468(sp)
   1a378:	1d012b03          	lw	s6,464(sp)
   1a37c:	1cc12b83          	lw	s7,460(sp)
   1a380:	1c812c03          	lw	s8,456(sp)
   1a384:	1c412c83          	lw	s9,452(sp)
   1a388:	1c012d03          	lw	s10,448(sp)
   1a38c:	1bc12d83          	lw	s11,444(sp)
   1a390:	1f010113          	addi	sp,sp,496
   1a394:	00008067          	ret
   1a398:	0000b797          	auipc	a5,0xb
   1a39c:	ecc78793          	addi	a5,a5,-308 # 25264 <zeroes.4505+0x20>
   1a3a0:	02f12623          	sw	a5,44(sp)
   1a3a4:	0209f793          	andi	a5,s3,32
   1a3a8:	0e078c63          	beqz	a5,1a4a0 <_svfprintf_r+0x384>
   1a3ac:	01012783          	lw	a5,16(sp)
   1a3b0:	00778793          	addi	a5,a5,7
   1a3b4:	ff87f793          	andi	a5,a5,-8
   1a3b8:	0007ac83          	lw	s9,0(a5)
   1a3bc:	0047ab83          	lw	s7,4(a5)
   1a3c0:	00878713          	addi	a4,a5,8
   1a3c4:	00e12823          	sw	a4,16(sp)
   1a3c8:	0019f713          	andi	a4,s3,1
   1a3cc:	00070863          	beqz	a4,1a3dc <_svfprintf_r+0x2c0>
   1a3d0:	017ce733          	or	a4,s9,s7
   1a3d4:	00070463          	beqz	a4,1a3dc <_svfprintf_r+0x2c0>
   1a3d8:	3ac0106f          	j	1b784 <_svfprintf_r+0x1668>
   1a3dc:	bff9fa13          	andi	s4,s3,-1025
   1a3e0:	00200713          	li	a4,2
   1a3e4:	0c0103a3          	sb	zero,199(sp)
   1a3e8:	fff00693          	li	a3,-1
   1a3ec:	20db00e3          	beq	s6,a3,1adec <_svfprintf_r+0xcd0>
   1a3f0:	017ce6b3          	or	a3,s9,s7
   1a3f4:	f7fa7993          	andi	s3,s4,-129
   1a3f8:	76069ae3          	bnez	a3,1b36c <_svfprintf_r+0x1250>
   1a3fc:	3e0b16e3          	bnez	s6,1afe8 <_svfprintf_r+0xecc>
   1a400:	60071863          	bnez	a4,1aa10 <_svfprintf_r+0x8f4>
   1a404:	001a7b93          	andi	s7,s4,1
   1a408:	1b010d13          	addi	s10,sp,432
   1a40c:	000b8463          	beqz	s7,1a414 <_svfprintf_r+0x2f8>
   1a410:	3340106f          	j	1b744 <_svfprintf_r+0x1628>
   1a414:	000b8a13          	mv	s4,s7
   1a418:	016bd463          	bge	s7,s6,1a420 <_svfprintf_r+0x304>
   1a41c:	000b0a13          	mv	s4,s6
   1a420:	0c714783          	lbu	a5,199(sp)
   1a424:	00012623          	sw	zero,12(sp)
   1a428:	02012023          	sw	zero,32(sp)
   1a42c:	00012e23          	sw	zero,28(sp)
   1a430:	00012a23          	sw	zero,20(sp)
   1a434:	62078263          	beqz	a5,1aa58 <_svfprintf_r+0x93c>
   1a438:	001a0a13          	addi	s4,s4,1
   1a43c:	61c0006f          	j	1aa58 <_svfprintf_r+0x93c>
   1a440:	00000493          	li	s1,0
   1a444:	fd040693          	addi	a3,s0,-48
   1a448:	00190913          	addi	s2,s2,1
   1a44c:	00249793          	slli	a5,s1,0x2
   1a450:	fff94403          	lbu	s0,-1(s2)
   1a454:	009787b3          	add	a5,a5,s1
   1a458:	00179793          	slli	a5,a5,0x1
   1a45c:	00f684b3          	add	s1,a3,a5
   1a460:	fd040693          	addi	a3,s0,-48
   1a464:	feda72e3          	bgeu	s4,a3,1a448 <_svfprintf_r+0x32c>
   1a468:	fe040793          	addi	a5,s0,-32
   1a46c:	e2f770e3          	bgeu	a4,a5,1a28c <_svfprintf_r+0x170>
   1a470:	10040463          	beqz	s0,1a578 <_svfprintf_r+0x45c>
   1a474:	14810623          	sb	s0,332(sp)
   1a478:	0c0103a3          	sb	zero,199(sp)
   1a47c:	00100a13          	li	s4,1
   1a480:	00100b93          	li	s7,1
   1a484:	14c10d13          	addi	s10,sp,332
   1a488:	5bc0006f          	j	1aa44 <_svfprintf_r+0x928>
   1a48c:	0000b797          	auipc	a5,0xb
   1a490:	dec78793          	addi	a5,a5,-532 # 25278 <zeroes.4505+0x34>
   1a494:	02f12623          	sw	a5,44(sp)
   1a498:	0209f793          	andi	a5,s3,32
   1a49c:	f00798e3          	bnez	a5,1a3ac <_svfprintf_r+0x290>
   1a4a0:	01012703          	lw	a4,16(sp)
   1a4a4:	0109f793          	andi	a5,s3,16
   1a4a8:	00072c83          	lw	s9,0(a4)
   1a4ac:	00470713          	addi	a4,a4,4
   1a4b0:	00e12823          	sw	a4,16(sp)
   1a4b4:	00078463          	beqz	a5,1a4bc <_svfprintf_r+0x3a0>
   1a4b8:	2a40106f          	j	1b75c <_svfprintf_r+0x1640>
   1a4bc:	0409f793          	andi	a5,s3,64
   1a4c0:	00079463          	bnez	a5,1a4c8 <_svfprintf_r+0x3ac>
   1a4c4:	2900106f          	j	1b754 <_svfprintf_r+0x1638>
   1a4c8:	010c9c93          	slli	s9,s9,0x10
   1a4cc:	010cdc93          	srli	s9,s9,0x10
   1a4d0:	00000b93          	li	s7,0
   1a4d4:	ef5ff06f          	j	1a3c8 <_svfprintf_r+0x2ac>
   1a4d8:	00094403          	lbu	s0,0(s2)
   1a4dc:	0049e993          	ori	s3,s3,4
   1a4e0:	d9dff06f          	j	1a27c <_svfprintf_r+0x160>
   1a4e4:	0209f793          	andi	a5,s3,32
   1a4e8:	260790e3          	bnez	a5,1af48 <_svfprintf_r+0xe2c>
   1a4ec:	01012683          	lw	a3,16(sp)
   1a4f0:	0109f793          	andi	a5,s3,16
   1a4f4:	00468713          	addi	a4,a3,4
   1a4f8:	0006ac83          	lw	s9,0(a3)
   1a4fc:	4a079663          	bnez	a5,1a9a8 <_svfprintf_r+0x88c>
   1a500:	0409f793          	andi	a5,s3,64
   1a504:	00079463          	bnez	a5,1a50c <_svfprintf_r+0x3f0>
   1a508:	1950106f          	j	1be9c <_svfprintf_r+0x1d80>
   1a50c:	010c9c93          	slli	s9,s9,0x10
   1a510:	010cdc93          	srli	s9,s9,0x10
   1a514:	00000b93          	li	s7,0
   1a518:	00e12823          	sw	a4,16(sp)
   1a51c:	2490006f          	j	1af64 <_svfprintf_r+0xe48>
   1a520:	01012683          	lw	a3,16(sp)
   1a524:	0209f793          	andi	a5,s3,32
   1a528:	00468713          	addi	a4,a3,4
   1a52c:	00078463          	beqz	a5,1a534 <_svfprintf_r+0x418>
   1a530:	2340106f          	j	1b764 <_svfprintf_r+0x1648>
   1a534:	0109f793          	andi	a5,s3,16
   1a538:	00078463          	beqz	a5,1a540 <_svfprintf_r+0x424>
   1a53c:	0310106f          	j	1bd6c <_svfprintf_r+0x1c50>
   1a540:	0409f793          	andi	a5,s3,64
   1a544:	00078463          	beqz	a5,1a54c <_svfprintf_r+0x430>
   1a548:	25d0106f          	j	1bfa4 <_svfprintf_r+0x1e88>
   1a54c:	2009f993          	andi	s3,s3,512
   1a550:	00099463          	bnez	s3,1a558 <_svfprintf_r+0x43c>
   1a554:	0190106f          	j	1bd6c <_svfprintf_r+0x1c50>
   1a558:	01012783          	lw	a5,16(sp)
   1a55c:	00e12823          	sw	a4,16(sp)
   1a560:	00412703          	lw	a4,4(sp)
   1a564:	0007a783          	lw	a5,0(a5)
   1a568:	00090d13          	mv	s10,s2
   1a56c:	00e78023          	sb	a4,0(a5)
   1a570:	000d4783          	lbu	a5,0(s10)
   1a574:	c6079ce3          	bnez	a5,1a1ec <_svfprintf_r+0xd0>
   1a578:	0ec12783          	lw	a5,236(sp)
   1a57c:	dc0784e3          	beqz	a5,1a344 <_svfprintf_r+0x228>
   1a580:	00812403          	lw	s0,8(sp)
   1a584:	02412503          	lw	a0,36(sp)
   1a588:	0e410613          	addi	a2,sp,228
   1a58c:	00040593          	mv	a1,s0
   1a590:	248040ef          	jal	ra,1e7d8 <__ssprint_r>
   1a594:	00c45783          	lhu	a5,12(s0)
   1a598:	db5ff06f          	j	1a34c <_svfprintf_r+0x230>
   1a59c:	00094403          	lbu	s0,0(s2)
   1a5a0:	06c00793          	li	a5,108
   1a5a4:	00f41463          	bne	s0,a5,1a5ac <_svfprintf_r+0x490>
   1a5a8:	2900106f          	j	1b838 <_svfprintf_r+0x171c>
   1a5ac:	0109e993          	ori	s3,s3,16
   1a5b0:	ccdff06f          	j	1a27c <_svfprintf_r+0x160>
   1a5b4:	00094403          	lbu	s0,0(s2)
   1a5b8:	06800793          	li	a5,104
   1a5bc:	00f41463          	bne	s0,a5,1a5c4 <_svfprintf_r+0x4a8>
   1a5c0:	2680106f          	j	1b828 <_svfprintf_r+0x170c>
   1a5c4:	0409e993          	ori	s3,s3,64
   1a5c8:	cb5ff06f          	j	1a27c <_svfprintf_r+0x160>
   1a5cc:	01012783          	lw	a5,16(sp)
   1a5d0:	ffff8737          	lui	a4,0xffff8
   1a5d4:	83074713          	xori	a4,a4,-2000
   1a5d8:	0007ac83          	lw	s9,0(a5)
   1a5dc:	00478793          	addi	a5,a5,4
   1a5e0:	00f12823          	sw	a5,16(sp)
   1a5e4:	0000b797          	auipc	a5,0xb
   1a5e8:	c8078793          	addi	a5,a5,-896 # 25264 <zeroes.4505+0x20>
   1a5ec:	0ce11423          	sh	a4,200(sp)
   1a5f0:	00000b93          	li	s7,0
   1a5f4:	0029ea13          	ori	s4,s3,2
   1a5f8:	02f12623          	sw	a5,44(sp)
   1a5fc:	00200713          	li	a4,2
   1a600:	07800413          	li	s0,120
   1a604:	de1ff06f          	j	1a3e4 <_svfprintf_r+0x2c8>
   1a608:	0089f793          	andi	a5,s3,8
   1a60c:	00078463          	beqz	a5,1a614 <_svfprintf_r+0x4f8>
   1a610:	1b40106f          	j	1b7c4 <_svfprintf_r+0x16a8>
   1a614:	01012783          	lw	a5,16(sp)
   1a618:	0b010513          	addi	a0,sp,176
   1a61c:	00778793          	addi	a5,a5,7
   1a620:	ff87f793          	andi	a5,a5,-8
   1a624:	0007a583          	lw	a1,0(a5)
   1a628:	0047a603          	lw	a2,4(a5)
   1a62c:	00878793          	addi	a5,a5,8
   1a630:	00f12823          	sw	a5,16(sp)
   1a634:	2a80a0ef          	jal	ra,248dc <__extenddftf2>
   1a638:	0b012783          	lw	a5,176(sp)
   1a63c:	0ef12823          	sw	a5,240(sp)
   1a640:	0b412783          	lw	a5,180(sp)
   1a644:	0ef12a23          	sw	a5,244(sp)
   1a648:	0b812783          	lw	a5,184(sp)
   1a64c:	0ef12c23          	sw	a5,248(sp)
   1a650:	0bc12783          	lw	a5,188(sp)
   1a654:	0ef12e23          	sw	a5,252(sp)
   1a658:	0f010513          	addi	a0,sp,240
   1a65c:	f9dfc0ef          	jal	ra,175f8 <_ldcheck>
   1a660:	0ca12623          	sw	a0,204(sp)
   1a664:	00200793          	li	a5,2
   1a668:	00f51463          	bne	a0,a5,1a670 <_svfprintf_r+0x554>
   1a66c:	6800106f          	j	1bcec <_svfprintf_r+0x1bd0>
   1a670:	00100793          	li	a5,1
   1a674:	00f51463          	bne	a0,a5,1a67c <_svfprintf_r+0x560>
   1a678:	0610106f          	j	1bed8 <_svfprintf_r+0x1dbc>
   1a67c:	06100793          	li	a5,97
   1a680:	00f41463          	bne	s0,a5,1a688 <_svfprintf_r+0x56c>
   1a684:	1200206f          	j	1c7a4 <_svfprintf_r+0x2688>
   1a688:	04100793          	li	a5,65
   1a68c:	00f41463          	bne	s0,a5,1a694 <_svfprintf_r+0x578>
   1a690:	4b50106f          	j	1c344 <_svfprintf_r+0x2228>
   1a694:	fdf47713          	andi	a4,s0,-33
   1a698:	fff00793          	li	a5,-1
   1a69c:	04e12423          	sw	a4,72(sp)
   1a6a0:	00fb1463          	bne	s6,a5,1a6a8 <_svfprintf_r+0x58c>
   1a6a4:	1a10106f          	j	1c044 <_svfprintf_r+0x1f28>
   1a6a8:	04700793          	li	a5,71
   1a6ac:	00f71463          	bne	a4,a5,1a6b4 <_svfprintf_r+0x598>
   1a6b0:	1d40206f          	j	1c884 <_svfprintf_r+0x2768>
   1a6b4:	0fc12e03          	lw	t3,252(sp)
   1a6b8:	05312a23          	sw	s3,84(sp)
   1a6bc:	1009e793          	ori	a5,s3,256
   1a6c0:	0f012e83          	lw	t4,240(sp)
   1a6c4:	0f412f03          	lw	t5,244(sp)
   1a6c8:	0f812f83          	lw	t6,248(sp)
   1a6cc:	000e5463          	bgez	t3,1a6d4 <_svfprintf_r+0x5b8>
   1a6d0:	03c0206f          	j	1c70c <_svfprintf_r+0x25f0>
   1a6d4:	04012e23          	sw	zero,92(sp)
   1a6d8:	00078993          	mv	s3,a5
   1a6dc:	00012623          	sw	zero,12(sp)
   1a6e0:	04812703          	lw	a4,72(sp)
   1a6e4:	04600793          	li	a5,70
   1a6e8:	00f71463          	bne	a4,a5,1a6f0 <_svfprintf_r+0x5d4>
   1a6ec:	2a50106f          	j	1c190 <_svfprintf_r+0x2074>
   1a6f0:	04500793          	li	a5,69
   1a6f4:	00f71463          	bne	a4,a5,1a6fc <_svfprintf_r+0x5e0>
   1a6f8:	0bc0206f          	j	1c7b4 <_svfprintf_r+0x2698>
   1a6fc:	0b010b93          	addi	s7,sp,176
   1a700:	0d010793          	addi	a5,sp,208
   1a704:	0cc10713          	addi	a4,sp,204
   1a708:	0dc10813          	addi	a6,sp,220
   1a70c:	000b0693          	mv	a3,s6
   1a710:	00200613          	li	a2,2
   1a714:	000b8593          	mv	a1,s7
   1a718:	000a8513          	mv	a0,s5
   1a71c:	0bd12823          	sw	t4,176(sp)
   1a720:	03d12023          	sw	t4,32(sp)
   1a724:	0be12a23          	sw	t5,180(sp)
   1a728:	01e12e23          	sw	t5,28(sp)
   1a72c:	0bf12c23          	sw	t6,184(sp)
   1a730:	01f12c23          	sw	t6,24(sp)
   1a734:	0bc12e23          	sw	t3,188(sp)
   1a738:	01c12a23          	sw	t3,20(sp)
   1a73c:	bc9fb0ef          	jal	ra,16304 <_ldtoa_r>
   1a740:	04812703          	lw	a4,72(sp)
   1a744:	04700793          	li	a5,71
   1a748:	00050d13          	mv	s10,a0
   1a74c:	01412e03          	lw	t3,20(sp)
   1a750:	01812f83          	lw	t6,24(sp)
   1a754:	01c12f03          	lw	t5,28(sp)
   1a758:	02012e83          	lw	t4,32(sp)
   1a75c:	00f70463          	beq	a4,a5,1a764 <_svfprintf_r+0x648>
   1a760:	4080206f          	j	1cb68 <_svfprintf_r+0x2a4c>
   1a764:	05412783          	lw	a5,84(sp)
   1a768:	0017f793          	andi	a5,a5,1
   1a76c:	00078463          	beqz	a5,1a774 <_svfprintf_r+0x658>
   1a770:	1040206f          	j	1c874 <_svfprintf_r+0x2758>
   1a774:	0dc12783          	lw	a5,220(sp)
   1a778:	41a787b3          	sub	a5,a5,s10
   1a77c:	00f12c23          	sw	a5,24(sp)
   1a780:	0cc12703          	lw	a4,204(sp)
   1a784:	04700793          	li	a5,71
   1a788:	00e12a23          	sw	a4,20(sp)
   1a78c:	04812703          	lw	a4,72(sp)
   1a790:	00f71463          	bne	a4,a5,1a798 <_svfprintf_r+0x67c>
   1a794:	0f10106f          	j	1c084 <_svfprintf_r+0x1f68>
   1a798:	04812703          	lw	a4,72(sp)
   1a79c:	04600793          	li	a5,70
   1a7a0:	00f71463          	bne	a4,a5,1a7a8 <_svfprintf_r+0x68c>
   1a7a4:	37d0106f          	j	1c320 <_svfprintf_r+0x2204>
   1a7a8:	01412783          	lw	a5,20(sp)
   1a7ac:	04812603          	lw	a2,72(sp)
   1a7b0:	04100693          	li	a3,65
   1a7b4:	fff78a13          	addi	s4,a5,-1
   1a7b8:	0d412623          	sw	s4,204(sp)
   1a7bc:	0ff47793          	andi	a5,s0,255
   1a7c0:	00000713          	li	a4,0
   1a7c4:	00d61863          	bne	a2,a3,1a7d4 <_svfprintf_r+0x6b8>
   1a7c8:	00f78793          	addi	a5,a5,15
   1a7cc:	0ff7f793          	andi	a5,a5,255
   1a7d0:	00100713          	li	a4,1
   1a7d4:	0cf10a23          	sb	a5,212(sp)
   1a7d8:	02b00793          	li	a5,43
   1a7dc:	000a5a63          	bgez	s4,1a7f0 <_svfprintf_r+0x6d4>
   1a7e0:	01412783          	lw	a5,20(sp)
   1a7e4:	00100a13          	li	s4,1
   1a7e8:	40fa0a33          	sub	s4,s4,a5
   1a7ec:	02d00793          	li	a5,45
   1a7f0:	0cf10aa3          	sb	a5,213(sp)
   1a7f4:	00900793          	li	a5,9
   1a7f8:	0147c463          	blt	a5,s4,1a800 <_svfprintf_r+0x6e4>
   1a7fc:	2300206f          	j	1ca2c <_svfprintf_r+0x2910>
   1a800:	0e310b13          	addi	s6,sp,227
   1a804:	000b0b93          	mv	s7,s6
   1a808:	06300993          	li	s3,99
   1a80c:	00c0006f          	j	1a818 <_svfprintf_r+0x6fc>
   1a810:	00068b93          	mv	s7,a3
   1a814:	00050a13          	mv	s4,a0
   1a818:	00a00593          	li	a1,10
   1a81c:	000a0513          	mv	a0,s4
   1a820:	ef1f50ef          	jal	ra,10710 <__modsi3>
   1a824:	03050513          	addi	a0,a0,48
   1a828:	feab8fa3          	sb	a0,-1(s7)
   1a82c:	00a00593          	li	a1,10
   1a830:	000a0513          	mv	a0,s4
   1a834:	e59f50ef          	jal	ra,1068c <__divsi3>
   1a838:	fffb8693          	addi	a3,s7,-1
   1a83c:	fd49cae3          	blt	s3,s4,1a810 <_svfprintf_r+0x6f4>
   1a840:	03050793          	addi	a5,a0,48
   1a844:	0ff7f793          	andi	a5,a5,255
   1a848:	ffeb8713          	addi	a4,s7,-2
   1a84c:	fef68fa3          	sb	a5,-1(a3)
   1a850:	01676463          	bltu	a4,s6,1a858 <_svfprintf_r+0x73c>
   1a854:	31c0206f          	j	1cb70 <_svfprintf_r+0x2a54>
   1a858:	0d610693          	addi	a3,sp,214
   1a85c:	0080006f          	j	1a864 <_svfprintf_r+0x748>
   1a860:	00074783          	lbu	a5,0(a4) # ffff8000 <__BSS_END__+0xfffd1518>
   1a864:	00168693          	addi	a3,a3,1
   1a868:	00170713          	addi	a4,a4,1
   1a86c:	fef68fa3          	sb	a5,-1(a3)
   1a870:	ff6718e3          	bne	a4,s6,1a860 <_svfprintf_r+0x744>
   1a874:	0e510793          	addi	a5,sp,229
   1a878:	0d610713          	addi	a4,sp,214
   1a87c:	417787b3          	sub	a5,a5,s7
   1a880:	00f707b3          	add	a5,a4,a5
   1a884:	0d410713          	addi	a4,sp,212
   1a888:	40e787b3          	sub	a5,a5,a4
   1a88c:	02f12c23          	sw	a5,56(sp)
   1a890:	01812703          	lw	a4,24(sp)
   1a894:	03812683          	lw	a3,56(sp)
   1a898:	00100793          	li	a5,1
   1a89c:	00d70bb3          	add	s7,a4,a3
   1a8a0:	00e7c463          	blt	a5,a4,1a8a8 <_svfprintf_r+0x78c>
   1a8a4:	2480206f          	j	1caec <_svfprintf_r+0x29d0>
   1a8a8:	02812783          	lw	a5,40(sp)
   1a8ac:	00fb8bb3          	add	s7,s7,a5
   1a8b0:	05412783          	lw	a5,84(sp)
   1a8b4:	fffbca13          	not	s4,s7
   1a8b8:	41fa5a13          	srai	s4,s4,0x1f
   1a8bc:	bff7f993          	andi	s3,a5,-1025
   1a8c0:	1009e993          	ori	s3,s3,256
   1a8c4:	014bfa33          	and	s4,s7,s4
   1a8c8:	02012023          	sw	zero,32(sp)
   1a8cc:	00012e23          	sw	zero,28(sp)
   1a8d0:	00012a23          	sw	zero,20(sp)
   1a8d4:	05c12783          	lw	a5,92(sp)
   1a8d8:	00079463          	bnez	a5,1a8e0 <_svfprintf_r+0x7c4>
   1a8dc:	01d0106f          	j	1c0f8 <_svfprintf_r+0x1fdc>
   1a8e0:	02d00793          	li	a5,45
   1a8e4:	0cf103a3          	sb	a5,199(sp)
   1a8e8:	00000b13          	li	s6,0
   1a8ec:	001a0a13          	addi	s4,s4,1
   1a8f0:	1680006f          	j	1aa58 <_svfprintf_r+0x93c>
   1a8f4:	0209f793          	andi	a5,s3,32
   1a8f8:	0109ea13          	ori	s4,s3,16
   1a8fc:	66079c63          	bnez	a5,1af74 <_svfprintf_r+0xe58>
   1a900:	01012783          	lw	a5,16(sp)
   1a904:	00478713          	addi	a4,a5,4
   1a908:	01012783          	lw	a5,16(sp)
   1a90c:	00000b93          	li	s7,0
   1a910:	00e12823          	sw	a4,16(sp)
   1a914:	0007ac83          	lw	s9,0(a5)
   1a918:	00100713          	li	a4,1
   1a91c:	ac9ff06f          	j	1a3e4 <_svfprintf_r+0x2c8>
   1a920:	01012783          	lw	a5,16(sp)
   1a924:	0c0103a3          	sb	zero,199(sp)
   1a928:	0007ad03          	lw	s10,0(a5)
   1a92c:	00478c93          	addi	s9,a5,4
   1a930:	740d04e3          	beqz	s10,1b878 <_svfprintf_r+0x175c>
   1a934:	fff00793          	li	a5,-1
   1a938:	00fb1463          	bne	s6,a5,1a940 <_svfprintf_r+0x824>
   1a93c:	44c0106f          	j	1bd88 <_svfprintf_r+0x1c6c>
   1a940:	000b0613          	mv	a2,s6
   1a944:	00000593          	li	a1,0
   1a948:	000d0513          	mv	a0,s10
   1a94c:	ff0fd0ef          	jal	ra,1813c <memchr>
   1a950:	00a12623          	sw	a0,12(sp)
   1a954:	00051463          	bnez	a0,1a95c <_svfprintf_r+0x840>
   1a958:	1390106f          	j	1c290 <_svfprintf_r+0x2174>
   1a95c:	00c12783          	lw	a5,12(sp)
   1a960:	41a78bb3          	sub	s7,a5,s10
   1a964:	0c714783          	lbu	a5,199(sp)
   1a968:	fffbca13          	not	s4,s7
   1a96c:	41fa5a13          	srai	s4,s4,0x1f
   1a970:	01912823          	sw	s9,16(sp)
   1a974:	00012623          	sw	zero,12(sp)
   1a978:	02012023          	sw	zero,32(sp)
   1a97c:	00012e23          	sw	zero,28(sp)
   1a980:	00012a23          	sw	zero,20(sp)
   1a984:	014bfa33          	and	s4,s7,s4
   1a988:	00000b13          	li	s6,0
   1a98c:	aa0796e3          	bnez	a5,1a438 <_svfprintf_r+0x31c>
   1a990:	0c80006f          	j	1aa58 <_svfprintf_r+0x93c>
   1a994:	0209f793          	andi	a5,s3,32
   1a998:	0109e993          	ori	s3,s3,16
   1a99c:	5a079663          	bnez	a5,1af48 <_svfprintf_r+0xe2c>
   1a9a0:	01012783          	lw	a5,16(sp)
   1a9a4:	00478713          	addi	a4,a5,4
   1a9a8:	01012783          	lw	a5,16(sp)
   1a9ac:	00000b93          	li	s7,0
   1a9b0:	00e12823          	sw	a4,16(sp)
   1a9b4:	0007ac83          	lw	s9,0(a5)
   1a9b8:	5ac0006f          	j	1af64 <_svfprintf_r+0xe48>
   1a9bc:	0089e993          	ori	s3,s3,8
   1a9c0:	00094403          	lbu	s0,0(s2)
   1a9c4:	8b9ff06f          	j	1a27c <_svfprintf_r+0x160>
   1a9c8:	0209f793          	andi	a5,s3,32
   1a9cc:	0109ea13          	ori	s4,s3,16
   1a9d0:	5c079663          	bnez	a5,1af9c <_svfprintf_r+0xe80>
   1a9d4:	01012783          	lw	a5,16(sp)
   1a9d8:	00478713          	addi	a4,a5,4
   1a9dc:	01012783          	lw	a5,16(sp)
   1a9e0:	00e12823          	sw	a4,16(sp)
   1a9e4:	0007ac83          	lw	s9,0(a5)
   1a9e8:	41fcdb93          	srai	s7,s9,0x1f
   1a9ec:	000b8713          	mv	a4,s7
   1a9f0:	3c074c63          	bltz	a4,1adc8 <_svfprintf_r+0xcac>
   1a9f4:	fff00713          	li	a4,-1
   1a9f8:	5ceb0663          	beq	s6,a4,1afc4 <_svfprintf_r+0xea8>
   1a9fc:	017ce733          	or	a4,s9,s7
   1aa00:	f7fa7993          	andi	s3,s4,-129
   1aa04:	5a071e63          	bnez	a4,1afc0 <_svfprintf_r+0xea4>
   1aa08:	000b0463          	beqz	s6,1aa10 <_svfprintf_r+0x8f4>
   1aa0c:	6400106f          	j	1c04c <_svfprintf_r+0x1f30>
   1aa10:	00000b13          	li	s6,0
   1aa14:	00000b93          	li	s7,0
   1aa18:	1b010d13          	addi	s10,sp,432
   1aa1c:	9f9ff06f          	j	1a414 <_svfprintf_r+0x2f8>
   1aa20:	01012703          	lw	a4,16(sp)
   1aa24:	0c0103a3          	sb	zero,199(sp)
   1aa28:	00100a13          	li	s4,1
   1aa2c:	00072783          	lw	a5,0(a4)
   1aa30:	00470713          	addi	a4,a4,4
   1aa34:	00e12823          	sw	a4,16(sp)
   1aa38:	14f10623          	sb	a5,332(sp)
   1aa3c:	00100b93          	li	s7,1
   1aa40:	14c10d13          	addi	s10,sp,332
   1aa44:	00012623          	sw	zero,12(sp)
   1aa48:	00000b13          	li	s6,0
   1aa4c:	02012023          	sw	zero,32(sp)
   1aa50:	00012e23          	sw	zero,28(sp)
   1aa54:	00012a23          	sw	zero,20(sp)
   1aa58:	0029ff13          	andi	t5,s3,2
   1aa5c:	000f0463          	beqz	t5,1aa64 <_svfprintf_r+0x948>
   1aa60:	002a0a13          	addi	s4,s4,2
   1aa64:	0849fe93          	andi	t4,s3,132
   1aa68:	0ec12783          	lw	a5,236(sp)
   1aa6c:	000e9663          	bnez	t4,1aa78 <_svfprintf_r+0x95c>
   1aa70:	414486b3          	sub	a3,s1,s4
   1aa74:	10d040e3          	bgtz	a3,1b374 <_svfprintf_r+0x1258>
   1aa78:	0c714703          	lbu	a4,199(sp)
   1aa7c:	02070a63          	beqz	a4,1aab0 <_svfprintf_r+0x994>
   1aa80:	0e812703          	lw	a4,232(sp)
   1aa84:	0c710693          	addi	a3,sp,199
   1aa88:	00dda023          	sw	a3,0(s11)
   1aa8c:	00178793          	addi	a5,a5,1
   1aa90:	00100693          	li	a3,1
   1aa94:	00170713          	addi	a4,a4,1
   1aa98:	00dda223          	sw	a3,4(s11)
   1aa9c:	0ef12623          	sw	a5,236(sp)
   1aaa0:	0ee12423          	sw	a4,232(sp)
   1aaa4:	00700693          	li	a3,7
   1aaa8:	008d8d93          	addi	s11,s11,8
   1aaac:	0ce6c263          	blt	a3,a4,1ab70 <_svfprintf_r+0xa54>
   1aab0:	020f0a63          	beqz	t5,1aae4 <_svfprintf_r+0x9c8>
   1aab4:	0e812703          	lw	a4,232(sp)
   1aab8:	0c810693          	addi	a3,sp,200
   1aabc:	00dda023          	sw	a3,0(s11)
   1aac0:	00278793          	addi	a5,a5,2
   1aac4:	00200693          	li	a3,2
   1aac8:	00170713          	addi	a4,a4,1
   1aacc:	00dda223          	sw	a3,4(s11)
   1aad0:	0ef12623          	sw	a5,236(sp)
   1aad4:	0ee12423          	sw	a4,232(sp)
   1aad8:	00700693          	li	a3,7
   1aadc:	008d8d93          	addi	s11,s11,8
   1aae0:	1ce6c4e3          	blt	a3,a4,1b4a8 <_svfprintf_r+0x138c>
   1aae4:	08000713          	li	a4,128
   1aae8:	6aee8263          	beq	t4,a4,1b18c <_svfprintf_r+0x1070>
   1aaec:	417b0b33          	sub	s6,s6,s7
   1aaf0:	79604a63          	bgtz	s6,1b284 <_svfprintf_r+0x1168>
   1aaf4:	1009f713          	andi	a4,s3,256
   1aaf8:	54071663          	bnez	a4,1b044 <_svfprintf_r+0xf28>
   1aafc:	0e812703          	lw	a4,232(sp)
   1ab00:	017787b3          	add	a5,a5,s7
   1ab04:	01ada023          	sw	s10,0(s11)
   1ab08:	00170713          	addi	a4,a4,1
   1ab0c:	017da223          	sw	s7,4(s11)
   1ab10:	0ef12623          	sw	a5,236(sp)
   1ab14:	0ee12423          	sw	a4,232(sp)
   1ab18:	00700693          	li	a3,7
   1ab1c:	1ae6c063          	blt	a3,a4,1acbc <_svfprintf_r+0xba0>
   1ab20:	008d8d93          	addi	s11,s11,8
   1ab24:	0049f993          	andi	s3,s3,4
   1ab28:	00098663          	beqz	s3,1ab34 <_svfprintf_r+0xa18>
   1ab2c:	41448433          	sub	s0,s1,s4
   1ab30:	1a804663          	bgtz	s0,1acdc <_svfprintf_r+0xbc0>
   1ab34:	0144d463          	bge	s1,s4,1ab3c <_svfprintf_r+0xa20>
   1ab38:	000a0493          	mv	s1,s4
   1ab3c:	00412703          	lw	a4,4(sp)
   1ab40:	00970733          	add	a4,a4,s1
   1ab44:	00e12223          	sw	a4,4(sp)
   1ab48:	fc079a63          	bnez	a5,1a31c <_svfprintf_r+0x200>
   1ab4c:	00c12783          	lw	a5,12(sp)
   1ab50:	0e012423          	sw	zero,232(sp)
   1ab54:	00078863          	beqz	a5,1ab64 <_svfprintf_r+0xa48>
   1ab58:	00c12583          	lw	a1,12(sp)
   1ab5c:	000a8513          	mv	a0,s5
   1ab60:	e64f90ef          	jal	ra,141c4 <_free_r>
   1ab64:	10c10d93          	addi	s11,sp,268
   1ab68:	00090d13          	mv	s10,s2
   1ab6c:	a05ff06f          	j	1a570 <_svfprintf_r+0x454>
   1ab70:	00812583          	lw	a1,8(sp)
   1ab74:	0e410613          	addi	a2,sp,228
   1ab78:	000a8513          	mv	a0,s5
   1ab7c:	05d12423          	sw	t4,72(sp)
   1ab80:	03e12a23          	sw	t5,52(sp)
   1ab84:	455030ef          	jal	ra,1e7d8 <__ssprint_r>
   1ab88:	fa051463          	bnez	a0,1a330 <_svfprintf_r+0x214>
   1ab8c:	0ec12783          	lw	a5,236(sp)
   1ab90:	10c10d93          	addi	s11,sp,268
   1ab94:	04812e83          	lw	t4,72(sp)
   1ab98:	03412f03          	lw	t5,52(sp)
   1ab9c:	f15ff06f          	j	1aab0 <_svfprintf_r+0x994>
   1aba0:	0e812683          	lw	a3,232(sp)
   1aba4:	00178c93          	addi	s9,a5,1
   1aba8:	01812783          	lw	a5,24(sp)
   1abac:	00100713          	li	a4,1
   1abb0:	01ada023          	sw	s10,0(s11)
   1abb4:	00168413          	addi	s0,a3,1
   1abb8:	008d8b93          	addi	s7,s11,8
   1abbc:	28f758e3          	bge	a4,a5,1b64c <_svfprintf_r+0x1530>
   1abc0:	00100713          	li	a4,1
   1abc4:	00eda223          	sw	a4,4(s11)
   1abc8:	0f912623          	sw	s9,236(sp)
   1abcc:	0e812423          	sw	s0,232(sp)
   1abd0:	00700713          	li	a4,7
   1abd4:	328740e3          	blt	a4,s0,1b6f4 <_svfprintf_r+0x15d8>
   1abd8:	02812783          	lw	a5,40(sp)
   1abdc:	03012703          	lw	a4,48(sp)
   1abe0:	00140413          	addi	s0,s0,1
   1abe4:	00fc8cb3          	add	s9,s9,a5
   1abe8:	00eba023          	sw	a4,0(s7)
   1abec:	00fba223          	sw	a5,4(s7)
   1abf0:	0f912623          	sw	s9,236(sp)
   1abf4:	0e812423          	sw	s0,232(sp)
   1abf8:	00700713          	li	a4,7
   1abfc:	008b8b93          	addi	s7,s7,8
   1ac00:	30874ee3          	blt	a4,s0,1b71c <_svfprintf_r+0x1600>
   1ac04:	0f012703          	lw	a4,240(sp)
   1ac08:	01812783          	lw	a5,24(sp)
   1ac0c:	00140613          	addi	a2,s0,1
   1ac10:	0ae12823          	sw	a4,176(sp)
   1ac14:	0f412703          	lw	a4,244(sp)
   1ac18:	0a010593          	addi	a1,sp,160
   1ac1c:	0b010513          	addi	a0,sp,176
   1ac20:	0ae12a23          	sw	a4,180(sp)
   1ac24:	0f812703          	lw	a4,248(sp)
   1ac28:	00060b13          	mv	s6,a2
   1ac2c:	00c12e23          	sw	a2,28(sp)
   1ac30:	0ae12c23          	sw	a4,184(sp)
   1ac34:	0fc12703          	lw	a4,252(sp)
   1ac38:	0a012023          	sw	zero,160(sp)
   1ac3c:	0a012223          	sw	zero,164(sp)
   1ac40:	0ae12e23          	sw	a4,188(sp)
   1ac44:	fff78713          	addi	a4,a5,-1
   1ac48:	00e12a23          	sw	a4,20(sp)
   1ac4c:	0a012423          	sw	zero,168(sp)
   1ac50:	0a012623          	sw	zero,172(sp)
   1ac54:	551060ef          	jal	ra,219a4 <__eqtf2>
   1ac58:	008b8d93          	addi	s11,s7,8
   1ac5c:	01412703          	lw	a4,20(sp)
   1ac60:	01c12603          	lw	a2,28(sp)
   1ac64:	200508e3          	beqz	a0,1b674 <_svfprintf_r+0x1558>
   1ac68:	00ec8cb3          	add	s9,s9,a4
   1ac6c:	001d0813          	addi	a6,s10,1
   1ac70:	00eba223          	sw	a4,4(s7)
   1ac74:	010ba023          	sw	a6,0(s7)
   1ac78:	0f912623          	sw	s9,236(sp)
   1ac7c:	0f612423          	sw	s6,232(sp)
   1ac80:	00700713          	li	a4,7
   1ac84:	5f674ce3          	blt	a4,s6,1ba7c <_svfprintf_r+0x1960>
   1ac88:	010b8713          	addi	a4,s7,16
   1ac8c:	00240b13          	addi	s6,s0,2
   1ac90:	000d8b93          	mv	s7,s11
   1ac94:	00070d93          	mv	s11,a4
   1ac98:	03812683          	lw	a3,56(sp)
   1ac9c:	0d410713          	addi	a4,sp,212
   1aca0:	00eba023          	sw	a4,0(s7)
   1aca4:	019687b3          	add	a5,a3,s9
   1aca8:	00dba223          	sw	a3,4(s7)
   1acac:	0ef12623          	sw	a5,236(sp)
   1acb0:	0f612423          	sw	s6,232(sp)
   1acb4:	00700713          	li	a4,7
   1acb8:	e76756e3          	bge	a4,s6,1ab24 <_svfprintf_r+0xa08>
   1acbc:	00812583          	lw	a1,8(sp)
   1acc0:	0e410613          	addi	a2,sp,228
   1acc4:	000a8513          	mv	a0,s5
   1acc8:	311030ef          	jal	ra,1e7d8 <__ssprint_r>
   1accc:	e6051263          	bnez	a0,1a330 <_svfprintf_r+0x214>
   1acd0:	0ec12783          	lw	a5,236(sp)
   1acd4:	10c10d93          	addi	s11,sp,268
   1acd8:	e4dff06f          	j	1ab24 <_svfprintf_r+0xa08>
   1acdc:	0e812703          	lw	a4,232(sp)
   1ace0:	0000bc97          	auipc	s9,0xb
   1ace4:	adcc8c93          	addi	s9,s9,-1316 # 257bc <blanks.4489>
   1ace8:	068c5063          	bge	s8,s0,1ad48 <_svfprintf_r+0xc2c>
   1acec:	00700993          	li	s3,7
   1acf0:	00812b03          	lw	s6,8(sp)
   1acf4:	00c0006f          	j	1ad00 <_svfprintf_r+0xbe4>
   1acf8:	ff040413          	addi	s0,s0,-16
   1acfc:	048c5663          	bge	s8,s0,1ad48 <_svfprintf_r+0xc2c>
   1ad00:	01078793          	addi	a5,a5,16
   1ad04:	00170713          	addi	a4,a4,1
   1ad08:	019da023          	sw	s9,0(s11)
   1ad0c:	018da223          	sw	s8,4(s11)
   1ad10:	0ef12623          	sw	a5,236(sp)
   1ad14:	0ee12423          	sw	a4,232(sp)
   1ad18:	008d8d93          	addi	s11,s11,8
   1ad1c:	fce9dee3          	bge	s3,a4,1acf8 <_svfprintf_r+0xbdc>
   1ad20:	0e410613          	addi	a2,sp,228
   1ad24:	000b0593          	mv	a1,s6
   1ad28:	000a8513          	mv	a0,s5
   1ad2c:	2ad030ef          	jal	ra,1e7d8 <__ssprint_r>
   1ad30:	e0051063          	bnez	a0,1a330 <_svfprintf_r+0x214>
   1ad34:	ff040413          	addi	s0,s0,-16
   1ad38:	0ec12783          	lw	a5,236(sp)
   1ad3c:	0e812703          	lw	a4,232(sp)
   1ad40:	10c10d93          	addi	s11,sp,268
   1ad44:	fa8c4ee3          	blt	s8,s0,1ad00 <_svfprintf_r+0xbe4>
   1ad48:	008787b3          	add	a5,a5,s0
   1ad4c:	00170713          	addi	a4,a4,1
   1ad50:	019da023          	sw	s9,0(s11)
   1ad54:	008da223          	sw	s0,4(s11)
   1ad58:	0ef12623          	sw	a5,236(sp)
   1ad5c:	0ee12423          	sw	a4,232(sp)
   1ad60:	00700693          	li	a3,7
   1ad64:	dce6d8e3          	bge	a3,a4,1ab34 <_svfprintf_r+0xa18>
   1ad68:	00812583          	lw	a1,8(sp)
   1ad6c:	0e410613          	addi	a2,sp,228
   1ad70:	000a8513          	mv	a0,s5
   1ad74:	265030ef          	jal	ra,1e7d8 <__ssprint_r>
   1ad78:	da051c63          	bnez	a0,1a330 <_svfprintf_r+0x214>
   1ad7c:	0ec12783          	lw	a5,236(sp)
   1ad80:	db5ff06f          	j	1ab34 <_svfprintf_r+0xa18>
   1ad84:	0209f793          	andi	a5,s3,32
   1ad88:	20079863          	bnez	a5,1af98 <_svfprintf_r+0xe7c>
   1ad8c:	01012703          	lw	a4,16(sp)
   1ad90:	0109f793          	andi	a5,s3,16
   1ad94:	00470713          	addi	a4,a4,4
   1ad98:	00078463          	beqz	a5,1ada0 <_svfprintf_r+0xc84>
   1ad9c:	5c50106f          	j	1cb60 <_svfprintf_r+0x2a44>
   1ada0:	0409f793          	andi	a5,s3,64
   1ada4:	00079463          	bnez	a5,1adac <_svfprintf_r+0xc90>
   1ada8:	10c0106f          	j	1beb4 <_svfprintf_r+0x1d98>
   1adac:	01012783          	lw	a5,16(sp)
   1adb0:	00e12823          	sw	a4,16(sp)
   1adb4:	00098a13          	mv	s4,s3
   1adb8:	00079c83          	lh	s9,0(a5)
   1adbc:	41fcdb93          	srai	s7,s9,0x1f
   1adc0:	000b8713          	mv	a4,s7
   1adc4:	c20758e3          	bgez	a4,1a9f4 <_svfprintf_r+0x8d8>
   1adc8:	41900cb3          	neg	s9,s9
   1adcc:	01903733          	snez	a4,s9
   1add0:	417007b3          	neg	a5,s7
   1add4:	40e78bb3          	sub	s7,a5,a4
   1add8:	02d00713          	li	a4,45
   1addc:	0ce103a3          	sb	a4,199(sp)
   1ade0:	fff00693          	li	a3,-1
   1ade4:	00100713          	li	a4,1
   1ade8:	e0db1463          	bne	s6,a3,1a3f0 <_svfprintf_r+0x2d4>
   1adec:	00100693          	li	a3,1
   1adf0:	1cd70a63          	beq	a4,a3,1afc4 <_svfprintf_r+0xea8>
   1adf4:	00200693          	li	a3,2
   1adf8:	20d70463          	beq	a4,a3,1b000 <_svfprintf_r+0xee4>
   1adfc:	1b010693          	addi	a3,sp,432
   1ae00:	0080006f          	j	1ae08 <_svfprintf_r+0xcec>
   1ae04:	000d0693          	mv	a3,s10
   1ae08:	01db9793          	slli	a5,s7,0x1d
   1ae0c:	007cf713          	andi	a4,s9,7
   1ae10:	003cdc93          	srli	s9,s9,0x3
   1ae14:	03070713          	addi	a4,a4,48
   1ae18:	0197ecb3          	or	s9,a5,s9
   1ae1c:	003bdb93          	srli	s7,s7,0x3
   1ae20:	fee68fa3          	sb	a4,-1(a3)
   1ae24:	017ce7b3          	or	a5,s9,s7
   1ae28:	fff68d13          	addi	s10,a3,-1
   1ae2c:	fc079ce3          	bnez	a5,1ae04 <_svfprintf_r+0xce8>
   1ae30:	001a7793          	andi	a5,s4,1
   1ae34:	20078063          	beqz	a5,1b034 <_svfprintf_r+0xf18>
   1ae38:	03000793          	li	a5,48
   1ae3c:	1ef70c63          	beq	a4,a5,1b034 <_svfprintf_r+0xf18>
   1ae40:	ffe68693          	addi	a3,a3,-2
   1ae44:	fefd0fa3          	sb	a5,-1(s10)
   1ae48:	1b010793          	addi	a5,sp,432
   1ae4c:	40d78bb3          	sub	s7,a5,a3
   1ae50:	000a0993          	mv	s3,s4
   1ae54:	00068d13          	mv	s10,a3
   1ae58:	dbcff06f          	j	1a414 <_svfprintf_r+0x2f8>
   1ae5c:	02b00793          	li	a5,43
   1ae60:	0cf103a3          	sb	a5,199(sp)
   1ae64:	00094403          	lbu	s0,0(s2)
   1ae68:	c14ff06f          	j	1a27c <_svfprintf_r+0x160>
   1ae6c:	01012783          	lw	a5,16(sp)
   1ae70:	00094403          	lbu	s0,0(s2)
   1ae74:	0007a483          	lw	s1,0(a5)
   1ae78:	00478793          	addi	a5,a5,4
   1ae7c:	00f12823          	sw	a5,16(sp)
   1ae80:	be04de63          	bgez	s1,1a27c <_svfprintf_r+0x160>
   1ae84:	409004b3          	neg	s1,s1
   1ae88:	0049e993          	ori	s3,s3,4
   1ae8c:	bf0ff06f          	j	1a27c <_svfprintf_r+0x160>
   1ae90:	0809e993          	ori	s3,s3,128
   1ae94:	00094403          	lbu	s0,0(s2)
   1ae98:	be4ff06f          	j	1a27c <_svfprintf_r+0x160>
   1ae9c:	00094403          	lbu	s0,0(s2)
   1aea0:	00190793          	addi	a5,s2,1
   1aea4:	01741463          	bne	s0,s7,1aeac <_svfprintf_r+0xd90>
   1aea8:	4950106f          	j	1cb3c <_svfprintf_r+0x2a20>
   1aeac:	fd040693          	addi	a3,s0,-48
   1aeb0:	00078913          	mv	s2,a5
   1aeb4:	00000b13          	li	s6,0
   1aeb8:	bcda6663          	bltu	s4,a3,1a284 <_svfprintf_r+0x168>
   1aebc:	00190913          	addi	s2,s2,1
   1aec0:	002b1793          	slli	a5,s6,0x2
   1aec4:	fff94403          	lbu	s0,-1(s2)
   1aec8:	016787b3          	add	a5,a5,s6
   1aecc:	00179793          	slli	a5,a5,0x1
   1aed0:	00d78b33          	add	s6,a5,a3
   1aed4:	fd040693          	addi	a3,s0,-48
   1aed8:	feda72e3          	bgeu	s4,a3,1aebc <_svfprintf_r+0xda0>
   1aedc:	ba8ff06f          	j	1a284 <_svfprintf_r+0x168>
   1aee0:	0019e993          	ori	s3,s3,1
   1aee4:	00094403          	lbu	s0,0(s2)
   1aee8:	b94ff06f          	j	1a27c <_svfprintf_r+0x160>
   1aeec:	0c714783          	lbu	a5,199(sp)
   1aef0:	00094403          	lbu	s0,0(s2)
   1aef4:	b8079463          	bnez	a5,1a27c <_svfprintf_r+0x160>
   1aef8:	02000793          	li	a5,32
   1aefc:	0cf103a3          	sb	a5,199(sp)
   1af00:	b7cff06f          	j	1a27c <_svfprintf_r+0x160>
   1af04:	0209f793          	andi	a5,s3,32
   1af08:	06079463          	bnez	a5,1af70 <_svfprintf_r+0xe54>
   1af0c:	01012683          	lw	a3,16(sp)
   1af10:	0109f793          	andi	a5,s3,16
   1af14:	00468713          	addi	a4,a3,4
   1af18:	0006ac83          	lw	s9,0(a3)
   1af1c:	00078463          	beqz	a5,1af24 <_svfprintf_r+0xe08>
   1af20:	4750106f          	j	1cb94 <_svfprintf_r+0x2a78>
   1af24:	0409f793          	andi	a5,s3,64
   1af28:	74078ae3          	beqz	a5,1be7c <_svfprintf_r+0x1d60>
   1af2c:	010c9c93          	slli	s9,s9,0x10
   1af30:	00e12823          	sw	a4,16(sp)
   1af34:	010cdc93          	srli	s9,s9,0x10
   1af38:	00000b93          	li	s7,0
   1af3c:	00098a13          	mv	s4,s3
   1af40:	00100713          	li	a4,1
   1af44:	ca0ff06f          	j	1a3e4 <_svfprintf_r+0x2c8>
   1af48:	01012783          	lw	a5,16(sp)
   1af4c:	00778793          	addi	a5,a5,7
   1af50:	ff87f793          	andi	a5,a5,-8
   1af54:	0007ac83          	lw	s9,0(a5)
   1af58:	0047ab83          	lw	s7,4(a5)
   1af5c:	00878713          	addi	a4,a5,8
   1af60:	00e12823          	sw	a4,16(sp)
   1af64:	bff9fa13          	andi	s4,s3,-1025
   1af68:	00000713          	li	a4,0
   1af6c:	c78ff06f          	j	1a3e4 <_svfprintf_r+0x2c8>
   1af70:	00098a13          	mv	s4,s3
   1af74:	01012783          	lw	a5,16(sp)
   1af78:	00778793          	addi	a5,a5,7
   1af7c:	ff87f793          	andi	a5,a5,-8
   1af80:	00878713          	addi	a4,a5,8
   1af84:	00e12823          	sw	a4,16(sp)
   1af88:	0007ac83          	lw	s9,0(a5)
   1af8c:	0047ab83          	lw	s7,4(a5)
   1af90:	00100713          	li	a4,1
   1af94:	c50ff06f          	j	1a3e4 <_svfprintf_r+0x2c8>
   1af98:	00098a13          	mv	s4,s3
   1af9c:	01012783          	lw	a5,16(sp)
   1afa0:	00778793          	addi	a5,a5,7
   1afa4:	ff87f793          	andi	a5,a5,-8
   1afa8:	0047a703          	lw	a4,4(a5)
   1afac:	00878693          	addi	a3,a5,8
   1afb0:	00d12823          	sw	a3,16(sp)
   1afb4:	0007ac83          	lw	s9,0(a5)
   1afb8:	00070b93          	mv	s7,a4
   1afbc:	a35ff06f          	j	1a9f0 <_svfprintf_r+0x8d4>
   1afc0:	00098a13          	mv	s4,s3
   1afc4:	400b90e3          	bnez	s7,1bbc4 <_svfprintf_r+0x1aa8>
   1afc8:	00900713          	li	a4,9
   1afcc:	3f976ce3          	bltu	a4,s9,1bbc4 <_svfprintf_r+0x1aa8>
   1afd0:	030c8c93          	addi	s9,s9,48
   1afd4:	1b9107a3          	sb	s9,431(sp)
   1afd8:	000a0993          	mv	s3,s4
   1afdc:	00100b93          	li	s7,1
   1afe0:	1af10d13          	addi	s10,sp,431
   1afe4:	c30ff06f          	j	1a414 <_svfprintf_r+0x2f8>
   1afe8:	00100693          	li	a3,1
   1afec:	00d71463          	bne	a4,a3,1aff4 <_svfprintf_r+0xed8>
   1aff0:	05c0106f          	j	1c04c <_svfprintf_r+0x1f30>
   1aff4:	00200693          	li	a3,2
   1aff8:	00098a13          	mv	s4,s3
   1affc:	e0d710e3          	bne	a4,a3,1adfc <_svfprintf_r+0xce0>
   1b000:	02c12683          	lw	a3,44(sp)
   1b004:	1b010d13          	addi	s10,sp,432
   1b008:	00fcf793          	andi	a5,s9,15
   1b00c:	00f687b3          	add	a5,a3,a5
   1b010:	0007c783          	lbu	a5,0(a5)
   1b014:	01cb9713          	slli	a4,s7,0x1c
   1b018:	004cdc93          	srli	s9,s9,0x4
   1b01c:	fffd0d13          	addi	s10,s10,-1
   1b020:	01976cb3          	or	s9,a4,s9
   1b024:	004bdb93          	srli	s7,s7,0x4
   1b028:	00fd0023          	sb	a5,0(s10)
   1b02c:	017ce7b3          	or	a5,s9,s7
   1b030:	fc079ce3          	bnez	a5,1b008 <_svfprintf_r+0xeec>
   1b034:	1b010793          	addi	a5,sp,432
   1b038:	41a78bb3          	sub	s7,a5,s10
   1b03c:	000a0993          	mv	s3,s4
   1b040:	bd4ff06f          	j	1a414 <_svfprintf_r+0x2f8>
   1b044:	06500713          	li	a4,101
   1b048:	b4875ce3          	bge	a4,s0,1aba0 <_svfprintf_r+0xa84>
   1b04c:	0f012703          	lw	a4,240(sp)
   1b050:	0a010593          	addi	a1,sp,160
   1b054:	0b010513          	addi	a0,sp,176
   1b058:	0ae12823          	sw	a4,176(sp)
   1b05c:	0f412703          	lw	a4,244(sp)
   1b060:	02f12a23          	sw	a5,52(sp)
   1b064:	0a012023          	sw	zero,160(sp)
   1b068:	0ae12a23          	sw	a4,180(sp)
   1b06c:	0f812703          	lw	a4,248(sp)
   1b070:	0a012223          	sw	zero,164(sp)
   1b074:	0a012423          	sw	zero,168(sp)
   1b078:	0ae12c23          	sw	a4,184(sp)
   1b07c:	0fc12703          	lw	a4,252(sp)
   1b080:	0a012623          	sw	zero,172(sp)
   1b084:	0ae12e23          	sw	a4,188(sp)
   1b088:	11d060ef          	jal	ra,219a4 <__eqtf2>
   1b08c:	03412783          	lw	a5,52(sp)
   1b090:	44051263          	bnez	a0,1b4d4 <_svfprintf_r+0x13b8>
   1b094:	0e812703          	lw	a4,232(sp)
   1b098:	0000a697          	auipc	a3,0xa
   1b09c:	1fc68693          	addi	a3,a3,508 # 25294 <zeroes.4505+0x50>
   1b0a0:	00178793          	addi	a5,a5,1
   1b0a4:	00dda023          	sw	a3,0(s11)
   1b0a8:	00170713          	addi	a4,a4,1
   1b0ac:	00100693          	li	a3,1
   1b0b0:	00dda223          	sw	a3,4(s11)
   1b0b4:	0ef12623          	sw	a5,236(sp)
   1b0b8:	0ee12423          	sw	a4,232(sp)
   1b0bc:	00700793          	li	a5,7
   1b0c0:	008d8d93          	addi	s11,s11,8
   1b0c4:	2ee7c0e3          	blt	a5,a4,1bba4 <_svfprintf_r+0x1a88>
   1b0c8:	0cc12783          	lw	a5,204(sp)
   1b0cc:	01812703          	lw	a4,24(sp)
   1b0d0:	00e7ca63          	blt	a5,a4,1b0e4 <_svfprintf_r+0xfc8>
   1b0d4:	0019f793          	andi	a5,s3,1
   1b0d8:	00079663          	bnez	a5,1b0e4 <_svfprintf_r+0xfc8>
   1b0dc:	0ec12783          	lw	a5,236(sp)
   1b0e0:	a45ff06f          	j	1ab24 <_svfprintf_r+0xa08>
   1b0e4:	03012783          	lw	a5,48(sp)
   1b0e8:	02812683          	lw	a3,40(sp)
   1b0ec:	0e812703          	lw	a4,232(sp)
   1b0f0:	00fda023          	sw	a5,0(s11)
   1b0f4:	0ec12783          	lw	a5,236(sp)
   1b0f8:	00170713          	addi	a4,a4,1
   1b0fc:	00dda223          	sw	a3,4(s11)
   1b100:	00f687b3          	add	a5,a3,a5
   1b104:	0ef12623          	sw	a5,236(sp)
   1b108:	0ee12423          	sw	a4,232(sp)
   1b10c:	00700693          	li	a3,7
   1b110:	008d8d93          	addi	s11,s11,8
   1b114:	6ee6c863          	blt	a3,a4,1b804 <_svfprintf_r+0x16e8>
   1b118:	01812703          	lw	a4,24(sp)
   1b11c:	fff70413          	addi	s0,a4,-1
   1b120:	a08052e3          	blez	s0,1ab24 <_svfprintf_r+0xa08>
   1b124:	0e812703          	lw	a4,232(sp)
   1b128:	368c56e3          	bge	s8,s0,1bc94 <_svfprintf_r+0x1b78>
   1b12c:	00700b93          	li	s7,7
   1b130:	00812b03          	lw	s6,8(sp)
   1b134:	00c0006f          	j	1b140 <_svfprintf_r+0x1024>
   1b138:	ff040413          	addi	s0,s0,-16
   1b13c:	348c5ce3          	bge	s8,s0,1bc94 <_svfprintf_r+0x1b78>
   1b140:	01078793          	addi	a5,a5,16
   1b144:	00170713          	addi	a4,a4,1
   1b148:	0000a697          	auipc	a3,0xa
   1b14c:	68468693          	addi	a3,a3,1668 # 257cc <zeroes.4490>
   1b150:	00dda023          	sw	a3,0(s11)
   1b154:	018da223          	sw	s8,4(s11)
   1b158:	0ef12623          	sw	a5,236(sp)
   1b15c:	0ee12423          	sw	a4,232(sp)
   1b160:	008d8d93          	addi	s11,s11,8
   1b164:	fcebdae3          	bge	s7,a4,1b138 <_svfprintf_r+0x101c>
   1b168:	0e410613          	addi	a2,sp,228
   1b16c:	000b0593          	mv	a1,s6
   1b170:	000a8513          	mv	a0,s5
   1b174:	664030ef          	jal	ra,1e7d8 <__ssprint_r>
   1b178:	9a051c63          	bnez	a0,1a330 <_svfprintf_r+0x214>
   1b17c:	0ec12783          	lw	a5,236(sp)
   1b180:	0e812703          	lw	a4,232(sp)
   1b184:	10c10d93          	addi	s11,sp,268
   1b188:	fb1ff06f          	j	1b138 <_svfprintf_r+0x101c>
   1b18c:	41448cb3          	sub	s9,s1,s4
   1b190:	95905ee3          	blez	s9,1aaec <_svfprintf_r+0x9d0>
   1b194:	0e812703          	lw	a4,232(sp)
   1b198:	099c5e63          	bge	s8,s9,1b234 <_svfprintf_r+0x1118>
   1b19c:	000c8693          	mv	a3,s9
   1b1a0:	02812a23          	sw	s0,52(sp)
   1b1a4:	000b8c93          	mv	s9,s7
   1b1a8:	00700e13          	li	t3,7
   1b1ac:	000a0b93          	mv	s7,s4
   1b1b0:	00812403          	lw	s0,8(sp)
   1b1b4:	00048a13          	mv	s4,s1
   1b1b8:	00068493          	mv	s1,a3
   1b1bc:	00c0006f          	j	1b1c8 <_svfprintf_r+0x10ac>
   1b1c0:	ff048493          	addi	s1,s1,-16
   1b1c4:	049c5c63          	bge	s8,s1,1b21c <_svfprintf_r+0x1100>
   1b1c8:	01078793          	addi	a5,a5,16
   1b1cc:	00170713          	addi	a4,a4,1
   1b1d0:	0000a697          	auipc	a3,0xa
   1b1d4:	5fc68693          	addi	a3,a3,1532 # 257cc <zeroes.4490>
   1b1d8:	00dda023          	sw	a3,0(s11)
   1b1dc:	018da223          	sw	s8,4(s11)
   1b1e0:	0ef12623          	sw	a5,236(sp)
   1b1e4:	0ee12423          	sw	a4,232(sp)
   1b1e8:	008d8d93          	addi	s11,s11,8
   1b1ec:	fcee5ae3          	bge	t3,a4,1b1c0 <_svfprintf_r+0x10a4>
   1b1f0:	0e410613          	addi	a2,sp,228
   1b1f4:	00040593          	mv	a1,s0
   1b1f8:	000a8513          	mv	a0,s5
   1b1fc:	5dc030ef          	jal	ra,1e7d8 <__ssprint_r>
   1b200:	92051863          	bnez	a0,1a330 <_svfprintf_r+0x214>
   1b204:	ff048493          	addi	s1,s1,-16
   1b208:	0ec12783          	lw	a5,236(sp)
   1b20c:	0e812703          	lw	a4,232(sp)
   1b210:	10c10d93          	addi	s11,sp,268
   1b214:	00700e13          	li	t3,7
   1b218:	fa9c48e3          	blt	s8,s1,1b1c8 <_svfprintf_r+0x10ac>
   1b21c:	03412403          	lw	s0,52(sp)
   1b220:	00048693          	mv	a3,s1
   1b224:	000a0493          	mv	s1,s4
   1b228:	000b8a13          	mv	s4,s7
   1b22c:	000c8b93          	mv	s7,s9
   1b230:	00068c93          	mv	s9,a3
   1b234:	0000a697          	auipc	a3,0xa
   1b238:	59868693          	addi	a3,a3,1432 # 257cc <zeroes.4490>
   1b23c:	019787b3          	add	a5,a5,s9
   1b240:	00170713          	addi	a4,a4,1
   1b244:	00dda023          	sw	a3,0(s11)
   1b248:	019da223          	sw	s9,4(s11)
   1b24c:	0ef12623          	sw	a5,236(sp)
   1b250:	0ee12423          	sw	a4,232(sp)
   1b254:	00700693          	li	a3,7
   1b258:	008d8d93          	addi	s11,s11,8
   1b25c:	88e6d8e3          	bge	a3,a4,1aaec <_svfprintf_r+0x9d0>
   1b260:	00812583          	lw	a1,8(sp)
   1b264:	0e410613          	addi	a2,sp,228
   1b268:	000a8513          	mv	a0,s5
   1b26c:	56c030ef          	jal	ra,1e7d8 <__ssprint_r>
   1b270:	8c051063          	bnez	a0,1a330 <_svfprintf_r+0x214>
   1b274:	417b0b33          	sub	s6,s6,s7
   1b278:	0ec12783          	lw	a5,236(sp)
   1b27c:	10c10d93          	addi	s11,sp,268
   1b280:	87605ae3          	blez	s6,1aaf4 <_svfprintf_r+0x9d8>
   1b284:	0e812703          	lw	a4,232(sp)
   1b288:	096c5a63          	bge	s8,s6,1b31c <_svfprintf_r+0x1200>
   1b28c:	000a0693          	mv	a3,s4
   1b290:	02812a23          	sw	s0,52(sp)
   1b294:	00048a13          	mv	s4,s1
   1b298:	00700c93          	li	s9,7
   1b29c:	000b0493          	mv	s1,s6
   1b2a0:	00812403          	lw	s0,8(sp)
   1b2a4:	00068b13          	mv	s6,a3
   1b2a8:	00c0006f          	j	1b2b4 <_svfprintf_r+0x1198>
   1b2ac:	ff048493          	addi	s1,s1,-16
   1b2b0:	049c5c63          	bge	s8,s1,1b308 <_svfprintf_r+0x11ec>
   1b2b4:	01078793          	addi	a5,a5,16
   1b2b8:	00170713          	addi	a4,a4,1
   1b2bc:	0000a697          	auipc	a3,0xa
   1b2c0:	51068693          	addi	a3,a3,1296 # 257cc <zeroes.4490>
   1b2c4:	00dda023          	sw	a3,0(s11)
   1b2c8:	018da223          	sw	s8,4(s11)
   1b2cc:	0ef12623          	sw	a5,236(sp)
   1b2d0:	0ee12423          	sw	a4,232(sp)
   1b2d4:	008d8d93          	addi	s11,s11,8
   1b2d8:	fcecdae3          	bge	s9,a4,1b2ac <_svfprintf_r+0x1190>
   1b2dc:	0e410613          	addi	a2,sp,228
   1b2e0:	00040593          	mv	a1,s0
   1b2e4:	000a8513          	mv	a0,s5
   1b2e8:	4f0030ef          	jal	ra,1e7d8 <__ssprint_r>
   1b2ec:	00050463          	beqz	a0,1b2f4 <_svfprintf_r+0x11d8>
   1b2f0:	840ff06f          	j	1a330 <_svfprintf_r+0x214>
   1b2f4:	ff048493          	addi	s1,s1,-16
   1b2f8:	0ec12783          	lw	a5,236(sp)
   1b2fc:	0e812703          	lw	a4,232(sp)
   1b300:	10c10d93          	addi	s11,sp,268
   1b304:	fa9c48e3          	blt	s8,s1,1b2b4 <_svfprintf_r+0x1198>
   1b308:	03412403          	lw	s0,52(sp)
   1b30c:	000b0693          	mv	a3,s6
   1b310:	00048b13          	mv	s6,s1
   1b314:	000a0493          	mv	s1,s4
   1b318:	00068a13          	mv	s4,a3
   1b31c:	0000a697          	auipc	a3,0xa
   1b320:	4b068693          	addi	a3,a3,1200 # 257cc <zeroes.4490>
   1b324:	016787b3          	add	a5,a5,s6
   1b328:	00170713          	addi	a4,a4,1
   1b32c:	00dda023          	sw	a3,0(s11)
   1b330:	016da223          	sw	s6,4(s11)
   1b334:	0ef12623          	sw	a5,236(sp)
   1b338:	0ee12423          	sw	a4,232(sp)
   1b33c:	00700693          	li	a3,7
   1b340:	008d8d93          	addi	s11,s11,8
   1b344:	fae6d863          	bge	a3,a4,1aaf4 <_svfprintf_r+0x9d8>
   1b348:	00812583          	lw	a1,8(sp)
   1b34c:	0e410613          	addi	a2,sp,228
   1b350:	000a8513          	mv	a0,s5
   1b354:	484030ef          	jal	ra,1e7d8 <__ssprint_r>
   1b358:	00050463          	beqz	a0,1b360 <_svfprintf_r+0x1244>
   1b35c:	fd5fe06f          	j	1a330 <_svfprintf_r+0x214>
   1b360:	0ec12783          	lw	a5,236(sp)
   1b364:	10c10d93          	addi	s11,sp,268
   1b368:	f8cff06f          	j	1aaf4 <_svfprintf_r+0x9d8>
   1b36c:	00098a13          	mv	s4,s3
   1b370:	a7dff06f          	j	1adec <_svfprintf_r+0xcd0>
   1b374:	0e812703          	lw	a4,232(sp)
   1b378:	0000ac97          	auipc	s9,0xa
   1b37c:	444c8c93          	addi	s9,s9,1092 # 257bc <blanks.4489>
   1b380:	0cdc5863          	bge	s8,a3,1b450 <_svfprintf_r+0x1334>
   1b384:	05212623          	sw	s2,76(sp)
   1b388:	000d8613          	mv	a2,s11
   1b38c:	000c8913          	mv	s2,s9
   1b390:	000d0d93          	mv	s11,s10
   1b394:	000a0c93          	mv	s9,s4
   1b398:	000b8d13          	mv	s10,s7
   1b39c:	00098a13          	mv	s4,s3
   1b3a0:	000b0b93          	mv	s7,s6
   1b3a4:	00040993          	mv	s3,s0
   1b3a8:	00048b13          	mv	s6,s1
   1b3ac:	00700f93          	li	t6,7
   1b3b0:	03e12a23          	sw	t5,52(sp)
   1b3b4:	05d12423          	sw	t4,72(sp)
   1b3b8:	00812483          	lw	s1,8(sp)
   1b3bc:	00068413          	mv	s0,a3
   1b3c0:	00c0006f          	j	1b3cc <_svfprintf_r+0x12b0>
   1b3c4:	ff040413          	addi	s0,s0,-16
   1b3c8:	048c5a63          	bge	s8,s0,1b41c <_svfprintf_r+0x1300>
   1b3cc:	01078793          	addi	a5,a5,16
   1b3d0:	00170713          	addi	a4,a4,1
   1b3d4:	01262023          	sw	s2,0(a2)
   1b3d8:	01862223          	sw	s8,4(a2)
   1b3dc:	0ef12623          	sw	a5,236(sp)
   1b3e0:	0ee12423          	sw	a4,232(sp)
   1b3e4:	00860613          	addi	a2,a2,8
   1b3e8:	fcefdee3          	bge	t6,a4,1b3c4 <_svfprintf_r+0x12a8>
   1b3ec:	0e410613          	addi	a2,sp,228
   1b3f0:	00048593          	mv	a1,s1
   1b3f4:	000a8513          	mv	a0,s5
   1b3f8:	3e0030ef          	jal	ra,1e7d8 <__ssprint_r>
   1b3fc:	00050463          	beqz	a0,1b404 <_svfprintf_r+0x12e8>
   1b400:	f31fe06f          	j	1a330 <_svfprintf_r+0x214>
   1b404:	ff040413          	addi	s0,s0,-16
   1b408:	0ec12783          	lw	a5,236(sp)
   1b40c:	0e812703          	lw	a4,232(sp)
   1b410:	10c10613          	addi	a2,sp,268
   1b414:	00700f93          	li	t6,7
   1b418:	fa8c4ae3          	blt	s8,s0,1b3cc <_svfprintf_r+0x12b0>
   1b41c:	00040693          	mv	a3,s0
   1b420:	03412f03          	lw	t5,52(sp)
   1b424:	00098413          	mv	s0,s3
   1b428:	04812e83          	lw	t4,72(sp)
   1b42c:	000a0993          	mv	s3,s4
   1b430:	000c8a13          	mv	s4,s9
   1b434:	00090c93          	mv	s9,s2
   1b438:	04c12903          	lw	s2,76(sp)
   1b43c:	000b0493          	mv	s1,s6
   1b440:	000b8b13          	mv	s6,s7
   1b444:	000d0b93          	mv	s7,s10
   1b448:	000d8d13          	mv	s10,s11
   1b44c:	00060d93          	mv	s11,a2
   1b450:	00d787b3          	add	a5,a5,a3
   1b454:	00170713          	addi	a4,a4,1
   1b458:	00dda223          	sw	a3,4(s11)
   1b45c:	019da023          	sw	s9,0(s11)
   1b460:	0ef12623          	sw	a5,236(sp)
   1b464:	0ee12423          	sw	a4,232(sp)
   1b468:	00700693          	li	a3,7
   1b46c:	008d8d93          	addi	s11,s11,8
   1b470:	e0e6d463          	bge	a3,a4,1aa78 <_svfprintf_r+0x95c>
   1b474:	00812583          	lw	a1,8(sp)
   1b478:	0e410613          	addi	a2,sp,228
   1b47c:	000a8513          	mv	a0,s5
   1b480:	05d12423          	sw	t4,72(sp)
   1b484:	03e12a23          	sw	t5,52(sp)
   1b488:	350030ef          	jal	ra,1e7d8 <__ssprint_r>
   1b48c:	00050463          	beqz	a0,1b494 <_svfprintf_r+0x1378>
   1b490:	ea1fe06f          	j	1a330 <_svfprintf_r+0x214>
   1b494:	0ec12783          	lw	a5,236(sp)
   1b498:	10c10d93          	addi	s11,sp,268
   1b49c:	04812e83          	lw	t4,72(sp)
   1b4a0:	03412f03          	lw	t5,52(sp)
   1b4a4:	dd4ff06f          	j	1aa78 <_svfprintf_r+0x95c>
   1b4a8:	00812583          	lw	a1,8(sp)
   1b4ac:	0e410613          	addi	a2,sp,228
   1b4b0:	000a8513          	mv	a0,s5
   1b4b4:	03d12a23          	sw	t4,52(sp)
   1b4b8:	320030ef          	jal	ra,1e7d8 <__ssprint_r>
   1b4bc:	00050463          	beqz	a0,1b4c4 <_svfprintf_r+0x13a8>
   1b4c0:	e71fe06f          	j	1a330 <_svfprintf_r+0x214>
   1b4c4:	0ec12783          	lw	a5,236(sp)
   1b4c8:	10c10d93          	addi	s11,sp,268
   1b4cc:	03412e83          	lw	t4,52(sp)
   1b4d0:	e14ff06f          	j	1aae4 <_svfprintf_r+0x9c8>
   1b4d4:	0cc12683          	lw	a3,204(sp)
   1b4d8:	5ed05c63          	blez	a3,1bad0 <_svfprintf_r+0x19b4>
   1b4dc:	01812703          	lw	a4,24(sp)
   1b4e0:	01412683          	lw	a3,20(sp)
   1b4e4:	00070413          	mv	s0,a4
   1b4e8:	30e6c863          	blt	a3,a4,1b7f8 <_svfprintf_r+0x16dc>
   1b4ec:	02805663          	blez	s0,1b518 <_svfprintf_r+0x13fc>
   1b4f0:	0e812703          	lw	a4,232(sp)
   1b4f4:	008787b3          	add	a5,a5,s0
   1b4f8:	01ada023          	sw	s10,0(s11)
   1b4fc:	00170713          	addi	a4,a4,1
   1b500:	008da223          	sw	s0,4(s11)
   1b504:	0ef12623          	sw	a5,236(sp)
   1b508:	0ee12423          	sw	a4,232(sp)
   1b50c:	00700693          	li	a3,7
   1b510:	008d8d93          	addi	s11,s11,8
   1b514:	24e6c4e3          	blt	a3,a4,1bf5c <_svfprintf_r+0x1e40>
   1b518:	fff44713          	not	a4,s0
   1b51c:	41f75713          	srai	a4,a4,0x1f
   1b520:	00e47433          	and	s0,s0,a4
   1b524:	01412703          	lw	a4,20(sp)
   1b528:	40870433          	sub	s0,a4,s0
   1b52c:	36804663          	bgtz	s0,1b898 <_svfprintf_r+0x177c>
   1b530:	01412683          	lw	a3,20(sp)
   1b534:	4009f713          	andi	a4,s3,1024
   1b538:	00dd0b33          	add	s6,s10,a3
   1b53c:	3c071463          	bnez	a4,1b904 <_svfprintf_r+0x17e8>
   1b540:	0cc12403          	lw	s0,204(sp)
   1b544:	01812703          	lw	a4,24(sp)
   1b548:	00e44663          	blt	s0,a4,1b554 <_svfprintf_r+0x1438>
   1b54c:	0019f713          	andi	a4,s3,1
   1b550:	22070ce3          	beqz	a4,1bf88 <_svfprintf_r+0x1e6c>
   1b554:	03012703          	lw	a4,48(sp)
   1b558:	02812683          	lw	a3,40(sp)
   1b55c:	008d8d93          	addi	s11,s11,8
   1b560:	feedac23          	sw	a4,-8(s11)
   1b564:	0e812703          	lw	a4,232(sp)
   1b568:	00d787b3          	add	a5,a5,a3
   1b56c:	feddae23          	sw	a3,-4(s11)
   1b570:	00170713          	addi	a4,a4,1
   1b574:	0ef12623          	sw	a5,236(sp)
   1b578:	0ee12423          	sw	a4,232(sp)
   1b57c:	00700693          	li	a3,7
   1b580:	4ee6c4e3          	blt	a3,a4,1c268 <_svfprintf_r+0x214c>
   1b584:	01812683          	lw	a3,24(sp)
   1b588:	00dd0733          	add	a4,s10,a3
   1b58c:	40868433          	sub	s0,a3,s0
   1b590:	41670733          	sub	a4,a4,s6
   1b594:	00040b93          	mv	s7,s0
   1b598:	00875463          	bge	a4,s0,1b5a0 <_svfprintf_r+0x1484>
   1b59c:	00070b93          	mv	s7,a4
   1b5a0:	03705663          	blez	s7,1b5cc <_svfprintf_r+0x14b0>
   1b5a4:	0e812703          	lw	a4,232(sp)
   1b5a8:	017787b3          	add	a5,a5,s7
   1b5ac:	016da023          	sw	s6,0(s11)
   1b5b0:	00170713          	addi	a4,a4,1
   1b5b4:	017da223          	sw	s7,4(s11)
   1b5b8:	0ef12623          	sw	a5,236(sp)
   1b5bc:	0ee12423          	sw	a4,232(sp)
   1b5c0:	00700693          	li	a3,7
   1b5c4:	008d8d93          	addi	s11,s11,8
   1b5c8:	4ee6cae3          	blt	a3,a4,1c2bc <_svfprintf_r+0x21a0>
   1b5cc:	fffbc713          	not	a4,s7
   1b5d0:	41f75713          	srai	a4,a4,0x1f
   1b5d4:	00ebfbb3          	and	s7,s7,a4
   1b5d8:	41740433          	sub	s0,s0,s7
   1b5dc:	d4805463          	blez	s0,1ab24 <_svfprintf_r+0xa08>
   1b5e0:	0e812703          	lw	a4,232(sp)
   1b5e4:	6a8c5863          	bge	s8,s0,1bc94 <_svfprintf_r+0x1b78>
   1b5e8:	00700b93          	li	s7,7
   1b5ec:	00812b03          	lw	s6,8(sp)
   1b5f0:	00c0006f          	j	1b5fc <_svfprintf_r+0x14e0>
   1b5f4:	ff040413          	addi	s0,s0,-16
   1b5f8:	688c5e63          	bge	s8,s0,1bc94 <_svfprintf_r+0x1b78>
   1b5fc:	01078793          	addi	a5,a5,16
   1b600:	00170713          	addi	a4,a4,1
   1b604:	0000a697          	auipc	a3,0xa
   1b608:	1c868693          	addi	a3,a3,456 # 257cc <zeroes.4490>
   1b60c:	00dda023          	sw	a3,0(s11)
   1b610:	018da223          	sw	s8,4(s11)
   1b614:	0ef12623          	sw	a5,236(sp)
   1b618:	0ee12423          	sw	a4,232(sp)
   1b61c:	008d8d93          	addi	s11,s11,8
   1b620:	fcebdae3          	bge	s7,a4,1b5f4 <_svfprintf_r+0x14d8>
   1b624:	0e410613          	addi	a2,sp,228
   1b628:	000b0593          	mv	a1,s6
   1b62c:	000a8513          	mv	a0,s5
   1b630:	1a8030ef          	jal	ra,1e7d8 <__ssprint_r>
   1b634:	00050463          	beqz	a0,1b63c <_svfprintf_r+0x1520>
   1b638:	cf9fe06f          	j	1a330 <_svfprintf_r+0x214>
   1b63c:	0ec12783          	lw	a5,236(sp)
   1b640:	0e812703          	lw	a4,232(sp)
   1b644:	10c10d93          	addi	s11,sp,268
   1b648:	fadff06f          	j	1b5f4 <_svfprintf_r+0x14d8>
   1b64c:	0019f613          	andi	a2,s3,1
   1b650:	d6061863          	bnez	a2,1abc0 <_svfprintf_r+0xaa4>
   1b654:	00eda223          	sw	a4,4(s11)
   1b658:	0f912623          	sw	s9,236(sp)
   1b65c:	0e812423          	sw	s0,232(sp)
   1b660:	00700713          	li	a4,7
   1b664:	40874c63          	blt	a4,s0,1ba7c <_svfprintf_r+0x1960>
   1b668:	00268b13          	addi	s6,a3,2
   1b66c:	010d8d93          	addi	s11,s11,16
   1b670:	e28ff06f          	j	1ac98 <_svfprintf_r+0xb7c>
   1b674:	e2e05263          	blez	a4,1ac98 <_svfprintf_r+0xb7c>
   1b678:	00ec4463          	blt	s8,a4,1b680 <_svfprintf_r+0x1564>
   1b67c:	4840106f          	j	1cb00 <_svfprintf_r+0x29e4>
   1b680:	00700b13          	li	s6,7
   1b684:	00070d93          	mv	s11,a4
   1b688:	00812d03          	lw	s10,8(sp)
   1b68c:	00060413          	mv	s0,a2
   1b690:	0100006f          	j	1b6a0 <_svfprintf_r+0x1584>
   1b694:	ff0d8d93          	addi	s11,s11,-16
   1b698:	7bbc5263          	bge	s8,s11,1be3c <_svfprintf_r+0x1d20>
   1b69c:	00140413          	addi	s0,s0,1
   1b6a0:	010c8c93          	addi	s9,s9,16
   1b6a4:	0000a797          	auipc	a5,0xa
   1b6a8:	12878793          	addi	a5,a5,296 # 257cc <zeroes.4490>
   1b6ac:	00fba023          	sw	a5,0(s7)
   1b6b0:	018ba223          	sw	s8,4(s7)
   1b6b4:	0f912623          	sw	s9,236(sp)
   1b6b8:	0e812423          	sw	s0,232(sp)
   1b6bc:	008b8b93          	addi	s7,s7,8
   1b6c0:	fc8b5ae3          	bge	s6,s0,1b694 <_svfprintf_r+0x1578>
   1b6c4:	0e410613          	addi	a2,sp,228
   1b6c8:	000d0593          	mv	a1,s10
   1b6cc:	000a8513          	mv	a0,s5
   1b6d0:	108030ef          	jal	ra,1e7d8 <__ssprint_r>
   1b6d4:	00050463          	beqz	a0,1b6dc <_svfprintf_r+0x15c0>
   1b6d8:	c59fe06f          	j	1a330 <_svfprintf_r+0x214>
   1b6dc:	0ec12c83          	lw	s9,236(sp)
   1b6e0:	0e812403          	lw	s0,232(sp)
   1b6e4:	10c10b93          	addi	s7,sp,268
   1b6e8:	fadff06f          	j	1b694 <_svfprintf_r+0x1578>
   1b6ec:	000d0493          	mv	s1,s10
   1b6f0:	b6dfe06f          	j	1a25c <_svfprintf_r+0x140>
   1b6f4:	00812583          	lw	a1,8(sp)
   1b6f8:	0e410613          	addi	a2,sp,228
   1b6fc:	000a8513          	mv	a0,s5
   1b700:	0d8030ef          	jal	ra,1e7d8 <__ssprint_r>
   1b704:	00050463          	beqz	a0,1b70c <_svfprintf_r+0x15f0>
   1b708:	c29fe06f          	j	1a330 <_svfprintf_r+0x214>
   1b70c:	0ec12c83          	lw	s9,236(sp)
   1b710:	0e812403          	lw	s0,232(sp)
   1b714:	10c10b93          	addi	s7,sp,268
   1b718:	cc0ff06f          	j	1abd8 <_svfprintf_r+0xabc>
   1b71c:	00812583          	lw	a1,8(sp)
   1b720:	0e410613          	addi	a2,sp,228
   1b724:	000a8513          	mv	a0,s5
   1b728:	0b0030ef          	jal	ra,1e7d8 <__ssprint_r>
   1b72c:	00050463          	beqz	a0,1b734 <_svfprintf_r+0x1618>
   1b730:	c01fe06f          	j	1a330 <_svfprintf_r+0x214>
   1b734:	0ec12c83          	lw	s9,236(sp)
   1b738:	0e812403          	lw	s0,232(sp)
   1b73c:	10c10b93          	addi	s7,sp,268
   1b740:	cc4ff06f          	j	1ac04 <_svfprintf_r+0xae8>
   1b744:	03000793          	li	a5,48
   1b748:	1af107a3          	sb	a5,431(sp)
   1b74c:	1af10d13          	addi	s10,sp,431
   1b750:	cc5fe06f          	j	1a414 <_svfprintf_r+0x2f8>
   1b754:	2009f793          	andi	a5,s3,512
   1b758:	0a0792e3          	bnez	a5,1bffc <_svfprintf_r+0x1ee0>
   1b75c:	00000b93          	li	s7,0
   1b760:	c69fe06f          	j	1a3c8 <_svfprintf_r+0x2ac>
   1b764:	00412603          	lw	a2,4(sp)
   1b768:	0006a783          	lw	a5,0(a3)
   1b76c:	00e12823          	sw	a4,16(sp)
   1b770:	41f65693          	srai	a3,a2,0x1f
   1b774:	00c7a023          	sw	a2,0(a5)
   1b778:	00d7a223          	sw	a3,4(a5)
   1b77c:	00090d13          	mv	s10,s2
   1b780:	df1fe06f          	j	1a570 <_svfprintf_r+0x454>
   1b784:	03000713          	li	a4,48
   1b788:	0029e993          	ori	s3,s3,2
   1b78c:	0ce10423          	sb	a4,200(sp)
   1b790:	0c8104a3          	sb	s0,201(sp)
   1b794:	bff9fa13          	andi	s4,s3,-1025
   1b798:	00200713          	li	a4,2
   1b79c:	c49fe06f          	j	1a3e4 <_svfprintf_r+0x2c8>
   1b7a0:	03c12783          	lw	a5,60(sp)
   1b7a4:	00094403          	lbu	s0,0(s2)
   1b7a8:	00079463          	bnez	a5,1b7b0 <_svfprintf_r+0x1694>
   1b7ac:	ad1fe06f          	j	1a27c <_svfprintf_r+0x160>
   1b7b0:	0007c783          	lbu	a5,0(a5)
   1b7b4:	00079463          	bnez	a5,1b7bc <_svfprintf_r+0x16a0>
   1b7b8:	ac5fe06f          	j	1a27c <_svfprintf_r+0x160>
   1b7bc:	4009e993          	ori	s3,s3,1024
   1b7c0:	abdfe06f          	j	1a27c <_svfprintf_r+0x160>
   1b7c4:	01012703          	lw	a4,16(sp)
   1b7c8:	00072783          	lw	a5,0(a4)
   1b7cc:	00470713          	addi	a4,a4,4
   1b7d0:	00e12823          	sw	a4,16(sp)
   1b7d4:	0007a603          	lw	a2,0(a5)
   1b7d8:	0047a683          	lw	a3,4(a5)
   1b7dc:	0087a703          	lw	a4,8(a5)
   1b7e0:	00c7a783          	lw	a5,12(a5)
   1b7e4:	0ec12823          	sw	a2,240(sp)
   1b7e8:	0ed12a23          	sw	a3,244(sp)
   1b7ec:	0ee12c23          	sw	a4,248(sp)
   1b7f0:	0ef12e23          	sw	a5,252(sp)
   1b7f4:	e65fe06f          	j	1a658 <_svfprintf_r+0x53c>
   1b7f8:	00068413          	mv	s0,a3
   1b7fc:	ce804ae3          	bgtz	s0,1b4f0 <_svfprintf_r+0x13d4>
   1b800:	d19ff06f          	j	1b518 <_svfprintf_r+0x13fc>
   1b804:	00812583          	lw	a1,8(sp)
   1b808:	0e410613          	addi	a2,sp,228
   1b80c:	000a8513          	mv	a0,s5
   1b810:	7c9020ef          	jal	ra,1e7d8 <__ssprint_r>
   1b814:	00050463          	beqz	a0,1b81c <_svfprintf_r+0x1700>
   1b818:	b19fe06f          	j	1a330 <_svfprintf_r+0x214>
   1b81c:	0ec12783          	lw	a5,236(sp)
   1b820:	10c10d93          	addi	s11,sp,268
   1b824:	8f5ff06f          	j	1b118 <_svfprintf_r+0xffc>
   1b828:	00194403          	lbu	s0,1(s2)
   1b82c:	2009e993          	ori	s3,s3,512
   1b830:	00190913          	addi	s2,s2,1
   1b834:	a49fe06f          	j	1a27c <_svfprintf_r+0x160>
   1b838:	00194403          	lbu	s0,1(s2)
   1b83c:	0209e993          	ori	s3,s3,32
   1b840:	00190913          	addi	s2,s2,1
   1b844:	a39fe06f          	j	1a27c <_svfprintf_r+0x160>
   1b848:	02412503          	lw	a0,36(sp)
   1b84c:	04000593          	li	a1,64
   1b850:	8acfc0ef          	jal	ra,178fc <_malloc_r>
   1b854:	00812783          	lw	a5,8(sp)
   1b858:	00a7a023          	sw	a0,0(a5)
   1b85c:	00a7a823          	sw	a0,16(a5)
   1b860:	00051463          	bnez	a0,1b868 <_svfprintf_r+0x174c>
   1b864:	3180106f          	j	1cb7c <_svfprintf_r+0x2a60>
   1b868:	00812703          	lw	a4,8(sp)
   1b86c:	04000793          	li	a5,64
   1b870:	00f72a23          	sw	a5,20(a4)
   1b874:	935fe06f          	j	1a1a8 <_svfprintf_r+0x8c>
   1b878:	00600793          	li	a5,6
   1b87c:	000b0b93          	mv	s7,s6
   1b880:	7167e063          	bltu	a5,s6,1bf80 <_svfprintf_r+0x1e64>
   1b884:	000b8a13          	mv	s4,s7
   1b888:	01912823          	sw	s9,16(sp)
   1b88c:	0000ad17          	auipc	s10,0xa
   1b890:	a00d0d13          	addi	s10,s10,-1536 # 2528c <zeroes.4505+0x48>
   1b894:	9b0ff06f          	j	1aa44 <_svfprintf_r+0x928>
   1b898:	0e812703          	lw	a4,232(sp)
   1b89c:	668c5263          	bge	s8,s0,1bf00 <_svfprintf_r+0x1de4>
   1b8a0:	00700b93          	li	s7,7
   1b8a4:	00812b03          	lw	s6,8(sp)
   1b8a8:	00c0006f          	j	1b8b4 <_svfprintf_r+0x1798>
   1b8ac:	ff040413          	addi	s0,s0,-16
   1b8b0:	648c5863          	bge	s8,s0,1bf00 <_svfprintf_r+0x1de4>
   1b8b4:	01078793          	addi	a5,a5,16
   1b8b8:	00170713          	addi	a4,a4,1
   1b8bc:	0000a697          	auipc	a3,0xa
   1b8c0:	f1068693          	addi	a3,a3,-240 # 257cc <zeroes.4490>
   1b8c4:	00dda023          	sw	a3,0(s11)
   1b8c8:	018da223          	sw	s8,4(s11)
   1b8cc:	0ef12623          	sw	a5,236(sp)
   1b8d0:	0ee12423          	sw	a4,232(sp)
   1b8d4:	008d8d93          	addi	s11,s11,8
   1b8d8:	fcebdae3          	bge	s7,a4,1b8ac <_svfprintf_r+0x1790>
   1b8dc:	0e410613          	addi	a2,sp,228
   1b8e0:	000b0593          	mv	a1,s6
   1b8e4:	000a8513          	mv	a0,s5
   1b8e8:	6f1020ef          	jal	ra,1e7d8 <__ssprint_r>
   1b8ec:	00050463          	beqz	a0,1b8f4 <_svfprintf_r+0x17d8>
   1b8f0:	a41fe06f          	j	1a330 <_svfprintf_r+0x214>
   1b8f4:	0ec12783          	lw	a5,236(sp)
   1b8f8:	0e812703          	lw	a4,232(sp)
   1b8fc:	10c10d93          	addi	s11,sp,268
   1b900:	fadff06f          	j	1b8ac <_svfprintf_r+0x1790>
   1b904:	01812703          	lw	a4,24(sp)
   1b908:	01c12b83          	lw	s7,28(sp)
   1b90c:	01212a23          	sw	s2,20(sp)
   1b910:	00ed0433          	add	s0,s10,a4
   1b914:	03312a23          	sw	s3,52(sp)
   1b918:	04912423          	sw	s1,72(sp)
   1b91c:	02012903          	lw	s2,32(sp)
   1b920:	01412e23          	sw	s4,28(sp)
   1b924:	03a12023          	sw	s10,32(sp)
   1b928:	00700c93          	li	s9,7
   1b92c:	00040d13          	mv	s10,s0
   1b930:	04012983          	lw	s3,64(sp)
   1b934:	03c12483          	lw	s1,60(sp)
   1b938:	000d8693          	mv	a3,s11
   1b93c:	00812a03          	lw	s4,8(sp)
   1b940:	04412403          	lw	s0,68(sp)
   1b944:	080b8863          	beqz	s7,1b9d4 <_svfprintf_r+0x18b8>
   1b948:	08091863          	bnez	s2,1b9d8 <_svfprintf_r+0x18bc>
   1b94c:	fff48493          	addi	s1,s1,-1
   1b950:	fffb8b93          	addi	s7,s7,-1
   1b954:	0e812703          	lw	a4,232(sp)
   1b958:	013787b3          	add	a5,a5,s3
   1b95c:	0086a023          	sw	s0,0(a3)
   1b960:	00170713          	addi	a4,a4,1
   1b964:	0136a223          	sw	s3,4(a3)
   1b968:	0ef12623          	sw	a5,236(sp)
   1b96c:	0ee12423          	sw	a4,232(sp)
   1b970:	00868693          	addi	a3,a3,8
   1b974:	12eccc63          	blt	s9,a4,1baac <_svfprintf_r+0x1990>
   1b978:	0004c603          	lbu	a2,0(s1)
   1b97c:	416d05b3          	sub	a1,s10,s6
   1b980:	00060d93          	mv	s11,a2
   1b984:	00c5d463          	bge	a1,a2,1b98c <_svfprintf_r+0x1870>
   1b988:	00058d93          	mv	s11,a1
   1b98c:	03b05663          	blez	s11,1b9b8 <_svfprintf_r+0x189c>
   1b990:	0e812603          	lw	a2,232(sp)
   1b994:	01b787b3          	add	a5,a5,s11
   1b998:	0166a023          	sw	s6,0(a3)
   1b99c:	00160613          	addi	a2,a2,1
   1b9a0:	01b6a223          	sw	s11,4(a3)
   1b9a4:	0ef12623          	sw	a5,236(sp)
   1b9a8:	0ec12423          	sw	a2,232(sp)
   1b9ac:	30cccc63          	blt	s9,a2,1bcc4 <_svfprintf_r+0x1ba8>
   1b9b0:	0004c603          	lbu	a2,0(s1)
   1b9b4:	00868693          	addi	a3,a3,8
   1b9b8:	fffdc593          	not	a1,s11
   1b9bc:	41f5d593          	srai	a1,a1,0x1f
   1b9c0:	00bdf733          	and	a4,s11,a1
   1b9c4:	40e60db3          	sub	s11,a2,a4
   1b9c8:	01b04c63          	bgtz	s11,1b9e0 <_svfprintf_r+0x18c4>
   1b9cc:	00cb0b33          	add	s6,s6,a2
   1b9d0:	f60b9ce3          	bnez	s7,1b948 <_svfprintf_r+0x182c>
   1b9d4:	68090063          	beqz	s2,1c054 <_svfprintf_r+0x1f38>
   1b9d8:	fff90913          	addi	s2,s2,-1
   1b9dc:	f79ff06f          	j	1b954 <_svfprintf_r+0x1838>
   1b9e0:	0e812603          	lw	a2,232(sp)
   1b9e4:	01bc4863          	blt	s8,s11,1b9f4 <_svfprintf_r+0x18d8>
   1b9e8:	0600006f          	j	1ba48 <_svfprintf_r+0x192c>
   1b9ec:	ff0d8d93          	addi	s11,s11,-16
   1b9f0:	05bc5c63          	bge	s8,s11,1ba48 <_svfprintf_r+0x192c>
   1b9f4:	01078793          	addi	a5,a5,16
   1b9f8:	00160613          	addi	a2,a2,1
   1b9fc:	0000a717          	auipc	a4,0xa
   1ba00:	dd070713          	addi	a4,a4,-560 # 257cc <zeroes.4490>
   1ba04:	00e6a023          	sw	a4,0(a3)
   1ba08:	0186a223          	sw	s8,4(a3)
   1ba0c:	0ef12623          	sw	a5,236(sp)
   1ba10:	0ec12423          	sw	a2,232(sp)
   1ba14:	00868693          	addi	a3,a3,8
   1ba18:	fcccdae3          	bge	s9,a2,1b9ec <_svfprintf_r+0x18d0>
   1ba1c:	0e410613          	addi	a2,sp,228
   1ba20:	000a0593          	mv	a1,s4
   1ba24:	000a8513          	mv	a0,s5
   1ba28:	5b1020ef          	jal	ra,1e7d8 <__ssprint_r>
   1ba2c:	00050463          	beqz	a0,1ba34 <_svfprintf_r+0x1918>
   1ba30:	901fe06f          	j	1a330 <_svfprintf_r+0x214>
   1ba34:	ff0d8d93          	addi	s11,s11,-16
   1ba38:	0ec12783          	lw	a5,236(sp)
   1ba3c:	0e812603          	lw	a2,232(sp)
   1ba40:	10c10693          	addi	a3,sp,268
   1ba44:	fbbc48e3          	blt	s8,s11,1b9f4 <_svfprintf_r+0x18d8>
   1ba48:	01b787b3          	add	a5,a5,s11
   1ba4c:	00160613          	addi	a2,a2,1
   1ba50:	0000a717          	auipc	a4,0xa
   1ba54:	d7c70713          	addi	a4,a4,-644 # 257cc <zeroes.4490>
   1ba58:	00e6a023          	sw	a4,0(a3)
   1ba5c:	01b6a223          	sw	s11,4(a3)
   1ba60:	0ef12623          	sw	a5,236(sp)
   1ba64:	0ec12423          	sw	a2,232(sp)
   1ba68:	6accc263          	blt	s9,a2,1c10c <_svfprintf_r+0x1ff0>
   1ba6c:	0004c603          	lbu	a2,0(s1)
   1ba70:	00868693          	addi	a3,a3,8
   1ba74:	00cb0b33          	add	s6,s6,a2
   1ba78:	f59ff06f          	j	1b9d0 <_svfprintf_r+0x18b4>
   1ba7c:	00812583          	lw	a1,8(sp)
   1ba80:	0e410613          	addi	a2,sp,228
   1ba84:	000a8513          	mv	a0,s5
   1ba88:	551020ef          	jal	ra,1e7d8 <__ssprint_r>
   1ba8c:	00050463          	beqz	a0,1ba94 <_svfprintf_r+0x1978>
   1ba90:	8a1fe06f          	j	1a330 <_svfprintf_r+0x214>
   1ba94:	0e812683          	lw	a3,232(sp)
   1ba98:	0ec12c83          	lw	s9,236(sp)
   1ba9c:	11410d93          	addi	s11,sp,276
   1baa0:	00168b13          	addi	s6,a3,1
   1baa4:	10c10b93          	addi	s7,sp,268
   1baa8:	9f0ff06f          	j	1ac98 <_svfprintf_r+0xb7c>
   1baac:	0e410613          	addi	a2,sp,228
   1bab0:	000a0593          	mv	a1,s4
   1bab4:	000a8513          	mv	a0,s5
   1bab8:	521020ef          	jal	ra,1e7d8 <__ssprint_r>
   1babc:	00050463          	beqz	a0,1bac4 <_svfprintf_r+0x19a8>
   1bac0:	871fe06f          	j	1a330 <_svfprintf_r+0x214>
   1bac4:	0ec12783          	lw	a5,236(sp)
   1bac8:	10c10693          	addi	a3,sp,268
   1bacc:	eadff06f          	j	1b978 <_svfprintf_r+0x185c>
   1bad0:	0e812703          	lw	a4,232(sp)
   1bad4:	00009617          	auipc	a2,0x9
   1bad8:	7c060613          	addi	a2,a2,1984 # 25294 <zeroes.4505+0x50>
   1badc:	00cda023          	sw	a2,0(s11)
   1bae0:	00178793          	addi	a5,a5,1
   1bae4:	00100613          	li	a2,1
   1bae8:	00170713          	addi	a4,a4,1
   1baec:	00cda223          	sw	a2,4(s11)
   1baf0:	0ef12623          	sw	a5,236(sp)
   1baf4:	0ee12423          	sw	a4,232(sp)
   1baf8:	00700613          	li	a2,7
   1bafc:	008d8d93          	addi	s11,s11,8
   1bb00:	06e64e63          	blt	a2,a4,1bb7c <_svfprintf_r+0x1a60>
   1bb04:	28069a63          	bnez	a3,1bd98 <_svfprintf_r+0x1c7c>
   1bb08:	01812683          	lw	a3,24(sp)
   1bb0c:	0019f713          	andi	a4,s3,1
   1bb10:	00d76733          	or	a4,a4,a3
   1bb14:	00071463          	bnez	a4,1bb1c <_svfprintf_r+0x1a00>
   1bb18:	80cff06f          	j	1ab24 <_svfprintf_r+0xa08>
   1bb1c:	03012703          	lw	a4,48(sp)
   1bb20:	02812683          	lw	a3,40(sp)
   1bb24:	008d8893          	addi	a7,s11,8
   1bb28:	00eda023          	sw	a4,0(s11)
   1bb2c:	0e812703          	lw	a4,232(sp)
   1bb30:	00f687b3          	add	a5,a3,a5
   1bb34:	00dda223          	sw	a3,4(s11)
   1bb38:	00170713          	addi	a4,a4,1
   1bb3c:	0ef12623          	sw	a5,236(sp)
   1bb40:	0ee12423          	sw	a4,232(sp)
   1bb44:	00700693          	li	a3,7
   1bb48:	4ce6c663          	blt	a3,a4,1c014 <_svfprintf_r+0x1ef8>
   1bb4c:	01812683          	lw	a3,24(sp)
   1bb50:	00170713          	addi	a4,a4,1
   1bb54:	01a8a023          	sw	s10,0(a7)
   1bb58:	00f687b3          	add	a5,a3,a5
   1bb5c:	00d8a223          	sw	a3,4(a7)
   1bb60:	0ef12623          	sw	a5,236(sp)
   1bb64:	0ee12423          	sw	a4,232(sp)
   1bb68:	00700693          	li	a3,7
   1bb6c:	00888d93          	addi	s11,a7,8
   1bb70:	00e6c463          	blt	a3,a4,1bb78 <_svfprintf_r+0x1a5c>
   1bb74:	fb1fe06f          	j	1ab24 <_svfprintf_r+0xa08>
   1bb78:	944ff06f          	j	1acbc <_svfprintf_r+0xba0>
   1bb7c:	00812583          	lw	a1,8(sp)
   1bb80:	0e410613          	addi	a2,sp,228
   1bb84:	000a8513          	mv	a0,s5
   1bb88:	451020ef          	jal	ra,1e7d8 <__ssprint_r>
   1bb8c:	00050463          	beqz	a0,1bb94 <_svfprintf_r+0x1a78>
   1bb90:	fa0fe06f          	j	1a330 <_svfprintf_r+0x214>
   1bb94:	0cc12683          	lw	a3,204(sp)
   1bb98:	0ec12783          	lw	a5,236(sp)
   1bb9c:	10c10d93          	addi	s11,sp,268
   1bba0:	f65ff06f          	j	1bb04 <_svfprintf_r+0x19e8>
   1bba4:	00812583          	lw	a1,8(sp)
   1bba8:	0e410613          	addi	a2,sp,228
   1bbac:	000a8513          	mv	a0,s5
   1bbb0:	429020ef          	jal	ra,1e7d8 <__ssprint_r>
   1bbb4:	00050463          	beqz	a0,1bbbc <_svfprintf_r+0x1aa0>
   1bbb8:	f78fe06f          	j	1a330 <_svfprintf_r+0x214>
   1bbbc:	10c10d93          	addi	s11,sp,268
   1bbc0:	d08ff06f          	j	1b0c8 <_svfprintf_r+0xfac>
   1bbc4:	1b010d13          	addi	s10,sp,432
   1bbc8:	00000793          	li	a5,0
   1bbcc:	400a7993          	andi	s3,s4,1024
   1bbd0:	01212623          	sw	s2,12(sp)
   1bbd4:	00812a23          	sw	s0,20(sp)
   1bbd8:	000d0913          	mv	s2,s10
   1bbdc:	00078413          	mv	s0,a5
   1bbe0:	000a8d13          	mv	s10,s5
   1bbe4:	000a0a93          	mv	s5,s4
   1bbe8:	000b8a13          	mv	s4,s7
   1bbec:	000b0b93          	mv	s7,s6
   1bbf0:	00048b13          	mv	s6,s1
   1bbf4:	03c12483          	lw	s1,60(sp)
   1bbf8:	0240006f          	j	1bc1c <_svfprintf_r+0x1b00>
   1bbfc:	00a00613          	li	a2,10
   1bc00:	00000693          	li	a3,0
   1bc04:	000c8513          	mv	a0,s9
   1bc08:	000a0593          	mv	a1,s4
   1bc0c:	494040ef          	jal	ra,200a0 <__udivdi3>
   1bc10:	520a0463          	beqz	s4,1c138 <_svfprintf_r+0x201c>
   1bc14:	00050c93          	mv	s9,a0
   1bc18:	00058a13          	mv	s4,a1
   1bc1c:	00a00613          	li	a2,10
   1bc20:	00000693          	li	a3,0
   1bc24:	000c8513          	mv	a0,s9
   1bc28:	000a0593          	mv	a1,s4
   1bc2c:	249040ef          	jal	ra,20674 <__umoddi3>
   1bc30:	03050513          	addi	a0,a0,48
   1bc34:	fea90fa3          	sb	a0,-1(s2)
   1bc38:	00140413          	addi	s0,s0,1
   1bc3c:	fff90913          	addi	s2,s2,-1
   1bc40:	fa098ee3          	beqz	s3,1bbfc <_svfprintf_r+0x1ae0>
   1bc44:	0004c683          	lbu	a3,0(s1)
   1bc48:	fad41ae3          	bne	s0,a3,1bbfc <_svfprintf_r+0x1ae0>
   1bc4c:	0ff00793          	li	a5,255
   1bc50:	faf406e3          	beq	s0,a5,1bbfc <_svfprintf_r+0x1ae0>
   1bc54:	4e0a1863          	bnez	s4,1c144 <_svfprintf_r+0x2028>
   1bc58:	00900793          	li	a5,9
   1bc5c:	4f97e463          	bltu	a5,s9,1c144 <_svfprintf_r+0x2028>
   1bc60:	000a8a13          	mv	s4,s5
   1bc64:	1b010793          	addi	a5,sp,432
   1bc68:	000d0a93          	mv	s5,s10
   1bc6c:	00090d13          	mv	s10,s2
   1bc70:	00812c23          	sw	s0,24(sp)
   1bc74:	02912e23          	sw	s1,60(sp)
   1bc78:	01412403          	lw	s0,20(sp)
   1bc7c:	000b0493          	mv	s1,s6
   1bc80:	00c12903          	lw	s2,12(sp)
   1bc84:	000b8b13          	mv	s6,s7
   1bc88:	000a0993          	mv	s3,s4
   1bc8c:	41a78bb3          	sub	s7,a5,s10
   1bc90:	f84fe06f          	j	1a414 <_svfprintf_r+0x2f8>
   1bc94:	0000a697          	auipc	a3,0xa
   1bc98:	b3868693          	addi	a3,a3,-1224 # 257cc <zeroes.4490>
   1bc9c:	00dda023          	sw	a3,0(s11)
   1bca0:	008da223          	sw	s0,4(s11)
   1bca4:	008787b3          	add	a5,a5,s0
   1bca8:	00170713          	addi	a4,a4,1
   1bcac:	0ef12623          	sw	a5,236(sp)
   1bcb0:	0ee12423          	sw	a4,232(sp)
   1bcb4:	00700693          	li	a3,7
   1bcb8:	00e6c463          	blt	a3,a4,1bcc0 <_svfprintf_r+0x1ba4>
   1bcbc:	e65fe06f          	j	1ab20 <_svfprintf_r+0xa04>
   1bcc0:	ffdfe06f          	j	1acbc <_svfprintf_r+0xba0>
   1bcc4:	0e410613          	addi	a2,sp,228
   1bcc8:	000a0593          	mv	a1,s4
   1bccc:	000a8513          	mv	a0,s5
   1bcd0:	309020ef          	jal	ra,1e7d8 <__ssprint_r>
   1bcd4:	00050463          	beqz	a0,1bcdc <_svfprintf_r+0x1bc0>
   1bcd8:	e58fe06f          	j	1a330 <_svfprintf_r+0x214>
   1bcdc:	0004c603          	lbu	a2,0(s1)
   1bce0:	0ec12783          	lw	a5,236(sp)
   1bce4:	10c10693          	addi	a3,sp,268
   1bce8:	cd1ff06f          	j	1b9b8 <_svfprintf_r+0x189c>
   1bcec:	0f012783          	lw	a5,240(sp)
   1bcf0:	0a010593          	addi	a1,sp,160
   1bcf4:	0b010513          	addi	a0,sp,176
   1bcf8:	0af12823          	sw	a5,176(sp)
   1bcfc:	0f412783          	lw	a5,244(sp)
   1bd00:	0a012023          	sw	zero,160(sp)
   1bd04:	0a012223          	sw	zero,164(sp)
   1bd08:	0af12a23          	sw	a5,180(sp)
   1bd0c:	0f812783          	lw	a5,248(sp)
   1bd10:	0a012423          	sw	zero,168(sp)
   1bd14:	0a012623          	sw	zero,172(sp)
   1bd18:	0af12c23          	sw	a5,184(sp)
   1bd1c:	0fc12783          	lw	a5,252(sp)
   1bd20:	0af12e23          	sw	a5,188(sp)
   1bd24:	691050ef          	jal	ra,21bb4 <__letf2>
   1bd28:	44054e63          	bltz	a0,1c184 <_svfprintf_r+0x2068>
   1bd2c:	0c714783          	lbu	a5,199(sp)
   1bd30:	04700713          	li	a4,71
   1bd34:	00009d17          	auipc	s10,0x9
   1bd38:	520d0d13          	addi	s10,s10,1312 # 25254 <zeroes.4505+0x10>
   1bd3c:	20874a63          	blt	a4,s0,1bf50 <_svfprintf_r+0x1e34>
   1bd40:	00012623          	sw	zero,12(sp)
   1bd44:	02012023          	sw	zero,32(sp)
   1bd48:	00012e23          	sw	zero,28(sp)
   1bd4c:	00012a23          	sw	zero,20(sp)
   1bd50:	f7f9f993          	andi	s3,s3,-129
   1bd54:	00300a13          	li	s4,3
   1bd58:	00300b93          	li	s7,3
   1bd5c:	00000b13          	li	s6,0
   1bd60:	00078463          	beqz	a5,1bd68 <_svfprintf_r+0x1c4c>
   1bd64:	ed4fe06f          	j	1a438 <_svfprintf_r+0x31c>
   1bd68:	cf1fe06f          	j	1aa58 <_svfprintf_r+0x93c>
   1bd6c:	01012783          	lw	a5,16(sp)
   1bd70:	00090d13          	mv	s10,s2
   1bd74:	0007a783          	lw	a5,0(a5)
   1bd78:	00e12823          	sw	a4,16(sp)
   1bd7c:	00412703          	lw	a4,4(sp)
   1bd80:	00e7a023          	sw	a4,0(a5)
   1bd84:	fecfe06f          	j	1a570 <_svfprintf_r+0x454>
   1bd88:	000d0513          	mv	a0,s10
   1bd8c:	d45f40ef          	jal	ra,10ad0 <strlen>
   1bd90:	00050b93          	mv	s7,a0
   1bd94:	bd1fe06f          	j	1a964 <_svfprintf_r+0x848>
   1bd98:	03012703          	lw	a4,48(sp)
   1bd9c:	02812603          	lw	a2,40(sp)
   1bda0:	008d8893          	addi	a7,s11,8
   1bda4:	00eda023          	sw	a4,0(s11)
   1bda8:	0e812703          	lw	a4,232(sp)
   1bdac:	00f607b3          	add	a5,a2,a5
   1bdb0:	00cda223          	sw	a2,4(s11)
   1bdb4:	00170713          	addi	a4,a4,1
   1bdb8:	0ef12623          	sw	a5,236(sp)
   1bdbc:	0ee12423          	sw	a4,232(sp)
   1bdc0:	00700613          	li	a2,7
   1bdc4:	24e64863          	blt	a2,a4,1c014 <_svfprintf_r+0x1ef8>
   1bdc8:	d806d2e3          	bgez	a3,1bb4c <_svfprintf_r+0x1a30>
   1bdcc:	ff000613          	li	a2,-16
   1bdd0:	40d00433          	neg	s0,a3
   1bdd4:	24c6d6e3          	bge	a3,a2,1c820 <_svfprintf_r+0x2704>
   1bdd8:	00700b93          	li	s7,7
   1bddc:	00812b03          	lw	s6,8(sp)
   1bde0:	00c0006f          	j	1bdec <_svfprintf_r+0x1cd0>
   1bde4:	ff040413          	addi	s0,s0,-16
   1bde8:	228c5ce3          	bge	s8,s0,1c820 <_svfprintf_r+0x2704>
   1bdec:	01078793          	addi	a5,a5,16
   1bdf0:	00170713          	addi	a4,a4,1
   1bdf4:	0000a697          	auipc	a3,0xa
   1bdf8:	9d868693          	addi	a3,a3,-1576 # 257cc <zeroes.4490>
   1bdfc:	00d8a023          	sw	a3,0(a7)
   1be00:	0188a223          	sw	s8,4(a7)
   1be04:	0ef12623          	sw	a5,236(sp)
   1be08:	0ee12423          	sw	a4,232(sp)
   1be0c:	00888893          	addi	a7,a7,8
   1be10:	fcebdae3          	bge	s7,a4,1bde4 <_svfprintf_r+0x1cc8>
   1be14:	0e410613          	addi	a2,sp,228
   1be18:	000b0593          	mv	a1,s6
   1be1c:	000a8513          	mv	a0,s5
   1be20:	1b9020ef          	jal	ra,1e7d8 <__ssprint_r>
   1be24:	00050463          	beqz	a0,1be2c <_svfprintf_r+0x1d10>
   1be28:	d08fe06f          	j	1a330 <_svfprintf_r+0x214>
   1be2c:	0ec12783          	lw	a5,236(sp)
   1be30:	0e812703          	lw	a4,232(sp)
   1be34:	10c10893          	addi	a7,sp,268
   1be38:	fadff06f          	j	1bde4 <_svfprintf_r+0x1cc8>
   1be3c:	000d8713          	mv	a4,s11
   1be40:	00140b13          	addi	s6,s0,1
   1be44:	008b8613          	addi	a2,s7,8
   1be48:	00ec8cb3          	add	s9,s9,a4
   1be4c:	0000a797          	auipc	a5,0xa
   1be50:	98078793          	addi	a5,a5,-1664 # 257cc <zeroes.4490>
   1be54:	00eba223          	sw	a4,4(s7)
   1be58:	00fba023          	sw	a5,0(s7)
   1be5c:	0f912623          	sw	s9,236(sp)
   1be60:	0f612423          	sw	s6,232(sp)
   1be64:	00700713          	li	a4,7
   1be68:	c1674ae3          	blt	a4,s6,1ba7c <_svfprintf_r+0x1960>
   1be6c:	001b0b13          	addi	s6,s6,1
   1be70:	00860d93          	addi	s11,a2,8
   1be74:	00060b93          	mv	s7,a2
   1be78:	e21fe06f          	j	1ac98 <_svfprintf_r+0xb7c>
   1be7c:	2009f793          	andi	a5,s3,512
   1be80:	16078463          	beqz	a5,1bfe8 <_svfprintf_r+0x1ecc>
   1be84:	00e12823          	sw	a4,16(sp)
   1be88:	0ffcfc93          	andi	s9,s9,255
   1be8c:	00000b93          	li	s7,0
   1be90:	00098a13          	mv	s4,s3
   1be94:	00100713          	li	a4,1
   1be98:	d4cfe06f          	j	1a3e4 <_svfprintf_r+0x2c8>
   1be9c:	2009f793          	andi	a5,s3,512
   1bea0:	12078e63          	beqz	a5,1bfdc <_svfprintf_r+0x1ec0>
   1bea4:	0ffcfc93          	andi	s9,s9,255
   1bea8:	00000b93          	li	s7,0
   1beac:	00e12823          	sw	a4,16(sp)
   1beb0:	8b4ff06f          	j	1af64 <_svfprintf_r+0xe48>
   1beb4:	2009f793          	andi	a5,s3,512
   1beb8:	10078463          	beqz	a5,1bfc0 <_svfprintf_r+0x1ea4>
   1bebc:	01012783          	lw	a5,16(sp)
   1bec0:	00098a13          	mv	s4,s3
   1bec4:	00e12823          	sw	a4,16(sp)
   1bec8:	00078c83          	lb	s9,0(a5)
   1becc:	41fcdb93          	srai	s7,s9,0x1f
   1bed0:	000b8713          	mv	a4,s7
   1bed4:	b1dfe06f          	j	1a9f0 <_svfprintf_r+0x8d4>
   1bed8:	0fc12783          	lw	a5,252(sp)
   1bedc:	1207c663          	bltz	a5,1c008 <_svfprintf_r+0x1eec>
   1bee0:	0c714783          	lbu	a5,199(sp)
   1bee4:	04700713          	li	a4,71
   1bee8:	00009d17          	auipc	s10,0x9
   1beec:	374d0d13          	addi	s10,s10,884 # 2525c <zeroes.4505+0x18>
   1bef0:	e48758e3          	bge	a4,s0,1bd40 <_svfprintf_r+0x1c24>
   1bef4:	00009d17          	auipc	s10,0x9
   1bef8:	36cd0d13          	addi	s10,s10,876 # 25260 <zeroes.4505+0x1c>
   1befc:	e45ff06f          	j	1bd40 <_svfprintf_r+0x1c24>
   1bf00:	0000a697          	auipc	a3,0xa
   1bf04:	8cc68693          	addi	a3,a3,-1844 # 257cc <zeroes.4490>
   1bf08:	008787b3          	add	a5,a5,s0
   1bf0c:	00170713          	addi	a4,a4,1
   1bf10:	00dda023          	sw	a3,0(s11)
   1bf14:	008da223          	sw	s0,4(s11)
   1bf18:	0ef12623          	sw	a5,236(sp)
   1bf1c:	0ee12423          	sw	a4,232(sp)
   1bf20:	00700693          	li	a3,7
   1bf24:	008d8d93          	addi	s11,s11,8
   1bf28:	e0e6d463          	bge	a3,a4,1b530 <_svfprintf_r+0x1414>
   1bf2c:	00812583          	lw	a1,8(sp)
   1bf30:	0e410613          	addi	a2,sp,228
   1bf34:	000a8513          	mv	a0,s5
   1bf38:	0a1020ef          	jal	ra,1e7d8 <__ssprint_r>
   1bf3c:	00050463          	beqz	a0,1bf44 <_svfprintf_r+0x1e28>
   1bf40:	bf0fe06f          	j	1a330 <_svfprintf_r+0x214>
   1bf44:	0ec12783          	lw	a5,236(sp)
   1bf48:	10c10d93          	addi	s11,sp,268
   1bf4c:	de4ff06f          	j	1b530 <_svfprintf_r+0x1414>
   1bf50:	00009d17          	auipc	s10,0x9
   1bf54:	308d0d13          	addi	s10,s10,776 # 25258 <zeroes.4505+0x14>
   1bf58:	de9ff06f          	j	1bd40 <_svfprintf_r+0x1c24>
   1bf5c:	00812583          	lw	a1,8(sp)
   1bf60:	0e410613          	addi	a2,sp,228
   1bf64:	000a8513          	mv	a0,s5
   1bf68:	071020ef          	jal	ra,1e7d8 <__ssprint_r>
   1bf6c:	00050463          	beqz	a0,1bf74 <_svfprintf_r+0x1e58>
   1bf70:	bc0fe06f          	j	1a330 <_svfprintf_r+0x214>
   1bf74:	0ec12783          	lw	a5,236(sp)
   1bf78:	10c10d93          	addi	s11,sp,268
   1bf7c:	d9cff06f          	j	1b518 <_svfprintf_r+0x13fc>
   1bf80:	00600b93          	li	s7,6
   1bf84:	901ff06f          	j	1b884 <_svfprintf_r+0x1768>
   1bf88:	01812703          	lw	a4,24(sp)
   1bf8c:	00ed0833          	add	a6,s10,a4
   1bf90:	40870433          	sub	s0,a4,s0
   1bf94:	41680bb3          	sub	s7,a6,s6
   1bf98:	e3745a63          	bge	s0,s7,1b5cc <_svfprintf_r+0x14b0>
   1bf9c:	00040b93          	mv	s7,s0
   1bfa0:	e2cff06f          	j	1b5cc <_svfprintf_r+0x14b0>
   1bfa4:	01012783          	lw	a5,16(sp)
   1bfa8:	00e12823          	sw	a4,16(sp)
   1bfac:	00412703          	lw	a4,4(sp)
   1bfb0:	0007a783          	lw	a5,0(a5)
   1bfb4:	00090d13          	mv	s10,s2
   1bfb8:	00e79023          	sh	a4,0(a5)
   1bfbc:	db4fe06f          	j	1a570 <_svfprintf_r+0x454>
   1bfc0:	01012783          	lw	a5,16(sp)
   1bfc4:	00098a13          	mv	s4,s3
   1bfc8:	00e12823          	sw	a4,16(sp)
   1bfcc:	0007ac83          	lw	s9,0(a5)
   1bfd0:	41fcdb93          	srai	s7,s9,0x1f
   1bfd4:	000b8713          	mv	a4,s7
   1bfd8:	a19fe06f          	j	1a9f0 <_svfprintf_r+0x8d4>
   1bfdc:	00000b93          	li	s7,0
   1bfe0:	00e12823          	sw	a4,16(sp)
   1bfe4:	f81fe06f          	j	1af64 <_svfprintf_r+0xe48>
   1bfe8:	00e12823          	sw	a4,16(sp)
   1bfec:	00000b93          	li	s7,0
   1bff0:	00098a13          	mv	s4,s3
   1bff4:	00100713          	li	a4,1
   1bff8:	becfe06f          	j	1a3e4 <_svfprintf_r+0x2c8>
   1bffc:	0ffcfc93          	andi	s9,s9,255
   1c000:	00000b93          	li	s7,0
   1c004:	bc4fe06f          	j	1a3c8 <_svfprintf_r+0x2ac>
   1c008:	02d00793          	li	a5,45
   1c00c:	0cf103a3          	sb	a5,199(sp)
   1c010:	ed5ff06f          	j	1bee4 <_svfprintf_r+0x1dc8>
   1c014:	00812583          	lw	a1,8(sp)
   1c018:	0e410613          	addi	a2,sp,228
   1c01c:	000a8513          	mv	a0,s5
   1c020:	7b8020ef          	jal	ra,1e7d8 <__ssprint_r>
   1c024:	00050463          	beqz	a0,1c02c <_svfprintf_r+0x1f10>
   1c028:	b08fe06f          	j	1a330 <_svfprintf_r+0x214>
   1c02c:	0cc12683          	lw	a3,204(sp)
   1c030:	0ec12783          	lw	a5,236(sp)
   1c034:	0e812703          	lw	a4,232(sp)
   1c038:	10c10893          	addi	a7,sp,268
   1c03c:	b006d8e3          	bgez	a3,1bb4c <_svfprintf_r+0x1a30>
   1c040:	d8dff06f          	j	1bdcc <_svfprintf_r+0x1cb0>
   1c044:	00600b13          	li	s6,6
   1c048:	e6cfe06f          	j	1a6b4 <_svfprintf_r+0x598>
   1c04c:	00098a13          	mv	s4,s3
   1c050:	f81fe06f          	j	1afd0 <_svfprintf_r+0xeb4>
   1c054:	02012d03          	lw	s10,32(sp)
   1c058:	01812703          	lw	a4,24(sp)
   1c05c:	02912e23          	sw	s1,60(sp)
   1c060:	01412903          	lw	s2,20(sp)
   1c064:	00ed0733          	add	a4,s10,a4
   1c068:	03412983          	lw	s3,52(sp)
   1c06c:	04812483          	lw	s1,72(sp)
   1c070:	01c12a03          	lw	s4,28(sp)
   1c074:	00068d93          	mv	s11,a3
   1c078:	cd677463          	bgeu	a4,s6,1b540 <_svfprintf_r+0x1424>
   1c07c:	00070b13          	mv	s6,a4
   1c080:	cc0ff06f          	j	1b540 <_svfprintf_r+0x1424>
   1c084:	01412703          	lw	a4,20(sp)
   1c088:	ffd00793          	li	a5,-3
   1c08c:	00f74463          	blt	a4,a5,1c094 <_svfprintf_r+0x1f78>
   1c090:	00eb5a63          	bge	s6,a4,1c0a4 <_svfprintf_r+0x1f88>
   1c094:	ffe40413          	addi	s0,s0,-2
   1c098:	fdf47793          	andi	a5,s0,-33
   1c09c:	04f12423          	sw	a5,72(sp)
   1c0a0:	f08fe06f          	j	1a7a8 <_svfprintf_r+0x68c>
   1c0a4:	01812783          	lw	a5,24(sp)
   1c0a8:	01412703          	lw	a4,20(sp)
   1c0ac:	24f74063          	blt	a4,a5,1c2ec <_svfprintf_r+0x21d0>
   1c0b0:	05412783          	lw	a5,84(sp)
   1c0b4:	00070b93          	mv	s7,a4
   1c0b8:	0017f793          	andi	a5,a5,1
   1c0bc:	00078663          	beqz	a5,1c0c8 <_svfprintf_r+0x1fac>
   1c0c0:	02812783          	lw	a5,40(sp)
   1c0c4:	00f70bb3          	add	s7,a4,a5
   1c0c8:	05412783          	lw	a5,84(sp)
   1c0cc:	4007f793          	andi	a5,a5,1024
   1c0d0:	00078663          	beqz	a5,1c0dc <_svfprintf_r+0x1fc0>
   1c0d4:	01412783          	lw	a5,20(sp)
   1c0d8:	7cf04463          	bgtz	a5,1c8a0 <_svfprintf_r+0x2784>
   1c0dc:	fffbca13          	not	s4,s7
   1c0e0:	41fa5a13          	srai	s4,s4,0x1f
   1c0e4:	014bfa33          	and	s4,s7,s4
   1c0e8:	06700413          	li	s0,103
   1c0ec:	02012023          	sw	zero,32(sp)
   1c0f0:	00012e23          	sw	zero,28(sp)
   1c0f4:	fe0fe06f          	j	1a8d4 <_svfprintf_r+0x7b8>
   1c0f8:	0c714783          	lbu	a5,199(sp)
   1c0fc:	00000b13          	li	s6,0
   1c100:	00078463          	beqz	a5,1c108 <_svfprintf_r+0x1fec>
   1c104:	b34fe06f          	j	1a438 <_svfprintf_r+0x31c>
   1c108:	951fe06f          	j	1aa58 <_svfprintf_r+0x93c>
   1c10c:	0e410613          	addi	a2,sp,228
   1c110:	000a0593          	mv	a1,s4
   1c114:	000a8513          	mv	a0,s5
   1c118:	6c0020ef          	jal	ra,1e7d8 <__ssprint_r>
   1c11c:	00050463          	beqz	a0,1c124 <_svfprintf_r+0x2008>
   1c120:	a10fe06f          	j	1a330 <_svfprintf_r+0x214>
   1c124:	0004c603          	lbu	a2,0(s1)
   1c128:	0ec12783          	lw	a5,236(sp)
   1c12c:	10c10693          	addi	a3,sp,268
   1c130:	00cb0b33          	add	s6,s6,a2
   1c134:	89dff06f          	j	1b9d0 <_svfprintf_r+0x18b4>
   1c138:	00900793          	li	a5,9
   1c13c:	ad97ece3          	bltu	a5,s9,1bc14 <_svfprintf_r+0x1af8>
   1c140:	b21ff06f          	j	1bc60 <_svfprintf_r+0x1b44>
   1c144:	04012783          	lw	a5,64(sp)
   1c148:	04412583          	lw	a1,68(sp)
   1c14c:	00000413          	li	s0,0
   1c150:	40f90933          	sub	s2,s2,a5
   1c154:	00078613          	mv	a2,a5
   1c158:	00090513          	mv	a0,s2
   1c15c:	ef5fd0ef          	jal	ra,1a050 <strncpy>
   1c160:	0014c803          	lbu	a6,1(s1)
   1c164:	00a00613          	li	a2,10
   1c168:	00000693          	li	a3,0
   1c16c:	01003833          	snez	a6,a6
   1c170:	000c8513          	mv	a0,s9
   1c174:	000a0593          	mv	a1,s4
   1c178:	010484b3          	add	s1,s1,a6
   1c17c:	725030ef          	jal	ra,200a0 <__udivdi3>
   1c180:	a95ff06f          	j	1bc14 <_svfprintf_r+0x1af8>
   1c184:	02d00793          	li	a5,45
   1c188:	0cf103a3          	sb	a5,199(sp)
   1c18c:	ba5ff06f          	j	1bd30 <_svfprintf_r+0x1c14>
   1c190:	0b010b93          	addi	s7,sp,176
   1c194:	0d010793          	addi	a5,sp,208
   1c198:	0cc10713          	addi	a4,sp,204
   1c19c:	0dc10813          	addi	a6,sp,220
   1c1a0:	000b0693          	mv	a3,s6
   1c1a4:	00300613          	li	a2,3
   1c1a8:	000b8593          	mv	a1,s7
   1c1ac:	000a8513          	mv	a0,s5
   1c1b0:	0bd12823          	sw	t4,176(sp)
   1c1b4:	03d12023          	sw	t4,32(sp)
   1c1b8:	0be12a23          	sw	t5,180(sp)
   1c1bc:	01e12e23          	sw	t5,28(sp)
   1c1c0:	0bf12c23          	sw	t6,184(sp)
   1c1c4:	01f12c23          	sw	t6,24(sp)
   1c1c8:	0bc12e23          	sw	t3,188(sp)
   1c1cc:	01c12a23          	sw	t3,20(sp)
   1c1d0:	934fa0ef          	jal	ra,16304 <_ldtoa_r>
   1c1d4:	00054703          	lbu	a4,0(a0)
   1c1d8:	03000793          	li	a5,48
   1c1dc:	00050d13          	mv	s10,a0
   1c1e0:	01412e03          	lw	t3,20(sp)
   1c1e4:	01812f83          	lw	t6,24(sp)
   1c1e8:	01c12f03          	lw	t5,28(sp)
   1c1ec:	02012e83          	lw	t4,32(sp)
   1c1f0:	08f70ce3          	beq	a4,a5,1ca88 <_svfprintf_r+0x296c>
   1c1f4:	0a010793          	addi	a5,sp,160
   1c1f8:	04f12c23          	sw	a5,88(sp)
   1c1fc:	0cc12783          	lw	a5,204(sp)
   1c200:	016787b3          	add	a5,a5,s6
   1c204:	00fd0a33          	add	s4,s10,a5
   1c208:	05812583          	lw	a1,88(sp)
   1c20c:	000b8513          	mv	a0,s7
   1c210:	0bd12823          	sw	t4,176(sp)
   1c214:	0be12a23          	sw	t5,180(sp)
   1c218:	0bf12c23          	sw	t6,184(sp)
   1c21c:	0bc12e23          	sw	t3,188(sp)
   1c220:	0a012023          	sw	zero,160(sp)
   1c224:	0a012223          	sw	zero,164(sp)
   1c228:	0a012423          	sw	zero,168(sp)
   1c22c:	0a012623          	sw	zero,172(sp)
   1c230:	774050ef          	jal	ra,219a4 <__eqtf2>
   1c234:	000a0793          	mv	a5,s4
   1c238:	00051463          	bnez	a0,1c240 <_svfprintf_r+0x2124>
   1c23c:	d3cfe06f          	j	1a778 <_svfprintf_r+0x65c>
   1c240:	0dc12783          	lw	a5,220(sp)
   1c244:	03000693          	li	a3,48
   1c248:	0147e463          	bltu	a5,s4,1c250 <_svfprintf_r+0x2134>
   1c24c:	d2cfe06f          	j	1a778 <_svfprintf_r+0x65c>
   1c250:	00178713          	addi	a4,a5,1
   1c254:	0ce12e23          	sw	a4,220(sp)
   1c258:	00d78023          	sb	a3,0(a5)
   1c25c:	0dc12783          	lw	a5,220(sp)
   1c260:	ff47e8e3          	bltu	a5,s4,1c250 <_svfprintf_r+0x2134>
   1c264:	d14fe06f          	j	1a778 <_svfprintf_r+0x65c>
   1c268:	00812583          	lw	a1,8(sp)
   1c26c:	0e410613          	addi	a2,sp,228
   1c270:	000a8513          	mv	a0,s5
   1c274:	564020ef          	jal	ra,1e7d8 <__ssprint_r>
   1c278:	00050463          	beqz	a0,1c280 <_svfprintf_r+0x2164>
   1c27c:	8b4fe06f          	j	1a330 <_svfprintf_r+0x214>
   1c280:	0cc12403          	lw	s0,204(sp)
   1c284:	0ec12783          	lw	a5,236(sp)
   1c288:	10c10d93          	addi	s11,sp,268
   1c28c:	af8ff06f          	j	1b584 <_svfprintf_r+0x1468>
   1c290:	0c714783          	lbu	a5,199(sp)
   1c294:	01912823          	sw	s9,16(sp)
   1c298:	02012023          	sw	zero,32(sp)
   1c29c:	00012e23          	sw	zero,28(sp)
   1c2a0:	00012a23          	sw	zero,20(sp)
   1c2a4:	000b0a13          	mv	s4,s6
   1c2a8:	000b0b93          	mv	s7,s6
   1c2ac:	00000b13          	li	s6,0
   1c2b0:	00078463          	beqz	a5,1c2b8 <_svfprintf_r+0x219c>
   1c2b4:	984fe06f          	j	1a438 <_svfprintf_r+0x31c>
   1c2b8:	fa0fe06f          	j	1aa58 <_svfprintf_r+0x93c>
   1c2bc:	00812583          	lw	a1,8(sp)
   1c2c0:	0e410613          	addi	a2,sp,228
   1c2c4:	000a8513          	mv	a0,s5
   1c2c8:	510020ef          	jal	ra,1e7d8 <__ssprint_r>
   1c2cc:	00050463          	beqz	a0,1c2d4 <_svfprintf_r+0x21b8>
   1c2d0:	860fe06f          	j	1a330 <_svfprintf_r+0x214>
   1c2d4:	0cc12403          	lw	s0,204(sp)
   1c2d8:	01812703          	lw	a4,24(sp)
   1c2dc:	0ec12783          	lw	a5,236(sp)
   1c2e0:	10c10d93          	addi	s11,sp,268
   1c2e4:	40870433          	sub	s0,a4,s0
   1c2e8:	ae4ff06f          	j	1b5cc <_svfprintf_r+0x14b0>
   1c2ec:	01812783          	lw	a5,24(sp)
   1c2f0:	02812703          	lw	a4,40(sp)
   1c2f4:	06700413          	li	s0,103
   1c2f8:	00e78bb3          	add	s7,a5,a4
   1c2fc:	01412783          	lw	a5,20(sp)
   1c300:	76f05863          	blez	a5,1ca70 <_svfprintf_r+0x2954>
   1c304:	05412783          	lw	a5,84(sp)
   1c308:	4007f793          	andi	a5,a5,1024
   1c30c:	58079c63          	bnez	a5,1c8a4 <_svfprintf_r+0x2788>
   1c310:	fffbca13          	not	s4,s7
   1c314:	41fa5a13          	srai	s4,s4,0x1f
   1c318:	014bfa33          	and	s4,s7,s4
   1c31c:	dd1ff06f          	j	1c0ec <_svfprintf_r+0x1fd0>
   1c320:	05412783          	lw	a5,84(sp)
   1c324:	01412703          	lw	a4,20(sp)
   1c328:	0017f793          	andi	a5,a5,1
   1c32c:	0167e7b3          	or	a5,a5,s6
   1c330:	7ce05c63          	blez	a4,1cb08 <_svfprintf_r+0x29ec>
   1c334:	72079463          	bnez	a5,1ca5c <_svfprintf_r+0x2940>
   1c338:	01412b83          	lw	s7,20(sp)
   1c33c:	06600413          	li	s0,102
   1c340:	fc5ff06f          	j	1c304 <_svfprintf_r+0x21e8>
   1c344:	03000793          	li	a5,48
   1c348:	0cf10423          	sb	a5,200(sp)
   1c34c:	05800793          	li	a5,88
   1c350:	0029e713          	ori	a4,s3,2
   1c354:	0cf104a3          	sb	a5,201(sp)
   1c358:	04e12a23          	sw	a4,84(sp)
   1c35c:	06300793          	li	a5,99
   1c360:	00012623          	sw	zero,12(sp)
   1c364:	14c10d13          	addi	s10,sp,332
   1c368:	3d67c063          	blt	a5,s6,1c728 <_svfprintf_r+0x260c>
   1c36c:	0fc12e03          	lw	t3,252(sp)
   1c370:	fdf47793          	andi	a5,s0,-33
   1c374:	04f12423          	sw	a5,72(sp)
   1c378:	04012e23          	sw	zero,92(sp)
   1c37c:	1029e993          	ori	s3,s3,258
   1c380:	0f012e83          	lw	t4,240(sp)
   1c384:	0f412f03          	lw	t5,244(sp)
   1c388:	0f812f83          	lw	t6,248(sp)
   1c38c:	380e4463          	bltz	t3,1c714 <_svfprintf_r+0x25f8>
   1c390:	06100793          	li	a5,97
   1c394:	58f40a63          	beq	s0,a5,1c928 <_svfprintf_r+0x280c>
   1c398:	04100793          	li	a5,65
   1c39c:	00f40463          	beq	s0,a5,1c3a4 <_svfprintf_r+0x2288>
   1c3a0:	b40fe06f          	j	1a6e0 <_svfprintf_r+0x5c4>
   1c3a4:	0b010b93          	addi	s7,sp,176
   1c3a8:	000b8513          	mv	a0,s7
   1c3ac:	0bd12823          	sw	t4,176(sp)
   1c3b0:	0be12a23          	sw	t5,180(sp)
   1c3b4:	0bf12c23          	sw	t6,184(sp)
   1c3b8:	0bc12e23          	sw	t3,188(sp)
   1c3bc:	728080ef          	jal	ra,24ae4 <__trunctfdf2>
   1c3c0:	0cc10613          	addi	a2,sp,204
   1c3c4:	f6cfd0ef          	jal	ra,19b30 <frexp>
   1c3c8:	00058613          	mv	a2,a1
   1c3cc:	00050593          	mv	a1,a0
   1c3d0:	000b8513          	mv	a0,s7
   1c3d4:	508080ef          	jal	ra,248dc <__extenddftf2>
   1c3d8:	09010793          	addi	a5,sp,144
   1c3dc:	00078593          	mv	a1,a5
   1c3e0:	00f12c23          	sw	a5,24(sp)
   1c3e4:	0b012783          	lw	a5,176(sp)
   1c3e8:	0a010a13          	addi	s4,sp,160
   1c3ec:	08010613          	addi	a2,sp,128
   1c3f0:	08f12823          	sw	a5,144(sp)
   1c3f4:	0b412783          	lw	a5,180(sp)
   1c3f8:	000a0513          	mv	a0,s4
   1c3fc:	04c12623          	sw	a2,76(sp)
   1c400:	08f12a23          	sw	a5,148(sp)
   1c404:	0b812783          	lw	a5,184(sp)
   1c408:	05412c23          	sw	s4,88(sp)
   1c40c:	08012023          	sw	zero,128(sp)
   1c410:	08f12c23          	sw	a5,152(sp)
   1c414:	0bc12783          	lw	a5,188(sp)
   1c418:	08012223          	sw	zero,132(sp)
   1c41c:	08012423          	sw	zero,136(sp)
   1c420:	08f12e23          	sw	a5,156(sp)
   1c424:	3ffc07b7          	lui	a5,0x3ffc0
   1c428:	08f12623          	sw	a5,140(sp)
   1c42c:	0cd050ef          	jal	ra,21cf8 <__multf3>
   1c430:	0a012683          	lw	a3,160(sp)
   1c434:	0a412e03          	lw	t3,164(sp)
   1c438:	0a812e83          	lw	t4,168(sp)
   1c43c:	0ac12f03          	lw	t5,172(sp)
   1c440:	000a0593          	mv	a1,s4
   1c444:	000b8513          	mv	a0,s7
   1c448:	0ad12823          	sw	a3,176(sp)
   1c44c:	02d12a23          	sw	a3,52(sp)
   1c450:	0bc12a23          	sw	t3,180(sp)
   1c454:	03c12023          	sw	t3,32(sp)
   1c458:	0bd12c23          	sw	t4,184(sp)
   1c45c:	01d12e23          	sw	t4,28(sp)
   1c460:	0be12e23          	sw	t5,188(sp)
   1c464:	01e12a23          	sw	t5,20(sp)
   1c468:	0a012023          	sw	zero,160(sp)
   1c46c:	0a012223          	sw	zero,164(sp)
   1c470:	0a012423          	sw	zero,168(sp)
   1c474:	0a012623          	sw	zero,172(sp)
   1c478:	52c050ef          	jal	ra,219a4 <__eqtf2>
   1c47c:	01412f03          	lw	t5,20(sp)
   1c480:	01c12e83          	lw	t4,28(sp)
   1c484:	02012e03          	lw	t3,32(sp)
   1c488:	03412683          	lw	a3,52(sp)
   1c48c:	00051663          	bnez	a0,1c498 <_svfprintf_r+0x237c>
   1c490:	00100793          	li	a5,1
   1c494:	0cf12623          	sw	a5,204(sp)
   1c498:	00009797          	auipc	a5,0x9
   1c49c:	de078793          	addi	a5,a5,-544 # 25278 <zeroes.4505+0x34>
   1c4a0:	02f12a23          	sw	a5,52(sp)
   1c4a4:	fffb0a13          	addi	s4,s6,-1
   1c4a8:	01a12a23          	sw	s10,20(sp)
   1c4ac:	07212023          	sw	s2,96(sp)
   1c4b0:	06912623          	sw	s1,108(sp)
   1c4b4:	07b12a23          	sw	s11,116(sp)
   1c4b8:	000a0c93          	mv	s9,s4
   1c4bc:	07512c23          	sw	s5,120(sp)
   1c4c0:	07a12e23          	sw	s10,124(sp)
   1c4c4:	06812223          	sw	s0,100(sp)
   1c4c8:	07312423          	sw	s3,104(sp)
   1c4cc:	07612823          	sw	s6,112(sp)
   1c4d0:	00068d13          	mv	s10,a3
   1c4d4:	000e0d93          	mv	s11,t3
   1c4d8:	000e8a13          	mv	s4,t4
   1c4dc:	000f0a93          	mv	s5,t5
   1c4e0:	01812903          	lw	s2,24(sp)
   1c4e4:	05812483          	lw	s1,88(sp)
   1c4e8:	0540006f          	j	1c53c <_svfprintf_r+0x2420>
   1c4ec:	00048593          	mv	a1,s1
   1c4f0:	000b8513          	mv	a0,s7
   1c4f4:	02c12023          	sw	a2,32(sp)
   1c4f8:	01f12e23          	sw	t6,28(sp)
   1c4fc:	00512c23          	sw	t0,24(sp)
   1c500:	0a512a23          	sw	t0,180(sp)
   1c504:	0bf12c23          	sw	t6,184(sp)
   1c508:	0ac12e23          	sw	a2,188(sp)
   1c50c:	0b312823          	sw	s3,176(sp)
   1c510:	0a012023          	sw	zero,160(sp)
   1c514:	0a012223          	sw	zero,164(sp)
   1c518:	0a012423          	sw	zero,168(sp)
   1c51c:	0a012623          	sw	zero,172(sp)
   1c520:	484050ef          	jal	ra,219a4 <__eqtf2>
   1c524:	fffc8c93          	addi	s9,s9,-1
   1c528:	01812283          	lw	t0,24(sp)
   1c52c:	01c12f83          	lw	t6,28(sp)
   1c530:	02012603          	lw	a2,32(sp)
   1c534:	0e050463          	beqz	a0,1c61c <_svfprintf_r+0x2500>
   1c538:	01612a23          	sw	s6,20(sp)
   1c53c:	400307b7          	lui	a5,0x40030
   1c540:	00090613          	mv	a2,s2
   1c544:	00048593          	mv	a1,s1
   1c548:	000b8513          	mv	a0,s7
   1c54c:	08f12e23          	sw	a5,156(sp)
   1c550:	0ba12023          	sw	s10,160(sp)
   1c554:	0bb12223          	sw	s11,164(sp)
   1c558:	0b412423          	sw	s4,168(sp)
   1c55c:	0b512623          	sw	s5,172(sp)
   1c560:	08012823          	sw	zero,144(sp)
   1c564:	08012a23          	sw	zero,148(sp)
   1c568:	08012c23          	sw	zero,152(sp)
   1c56c:	78c050ef          	jal	ra,21cf8 <__multf3>
   1c570:	000b8513          	mv	a0,s7
   1c574:	090080ef          	jal	ra,24604 <__fixtfsi>
   1c578:	00050593          	mv	a1,a0
   1c57c:	00050413          	mv	s0,a0
   1c580:	000b8513          	mv	a0,s7
   1c584:	0b012b03          	lw	s6,176(sp)
   1c588:	0b412a03          	lw	s4,180(sp)
   1c58c:	0b812983          	lw	s3,184(sp)
   1c590:	0bc12a83          	lw	s5,188(sp)
   1c594:	1c0080ef          	jal	ra,24754 <__floatsitf>
   1c598:	0b012703          	lw	a4,176(sp)
   1c59c:	04c12603          	lw	a2,76(sp)
   1c5a0:	00090593          	mv	a1,s2
   1c5a4:	08e12023          	sw	a4,128(sp)
   1c5a8:	0b412703          	lw	a4,180(sp)
   1c5ac:	00048513          	mv	a0,s1
   1c5b0:	09612823          	sw	s6,144(sp)
   1c5b4:	08e12223          	sw	a4,132(sp)
   1c5b8:	0b812703          	lw	a4,184(sp)
   1c5bc:	09412a23          	sw	s4,148(sp)
   1c5c0:	09312c23          	sw	s3,152(sp)
   1c5c4:	08e12423          	sw	a4,136(sp)
   1c5c8:	0bc12703          	lw	a4,188(sp)
   1c5cc:	09512e23          	sw	s5,156(sp)
   1c5d0:	08e12623          	sw	a4,140(sp)
   1c5d4:	291060ef          	jal	ra,23064 <__subtf3>
   1c5d8:	03412783          	lw	a5,52(sp)
   1c5dc:	0a012983          	lw	s3,160(sp)
   1c5e0:	0a412283          	lw	t0,164(sp)
   1c5e4:	00878733          	add	a4,a5,s0
   1c5e8:	01412783          	lw	a5,20(sp)
   1c5ec:	00074683          	lbu	a3,0(a4)
   1c5f0:	0a812f83          	lw	t6,168(sp)
   1c5f4:	0ac12603          	lw	a2,172(sp)
   1c5f8:	00178b13          	addi	s6,a5,1 # 40030001 <__BSS_END__+0x40009519>
   1c5fc:	fedb0fa3          	sb	a3,-1(s6)
   1c600:	05912823          	sw	s9,80(sp)
   1c604:	fff00793          	li	a5,-1
   1c608:	00098d13          	mv	s10,s3
   1c60c:	00028d93          	mv	s11,t0
   1c610:	000f8a13          	mv	s4,t6
   1c614:	00060a93          	mv	s5,a2
   1c618:	ecfc9ae3          	bne	s9,a5,1c4ec <_svfprintf_r+0x23d0>
   1c61c:	05812a03          	lw	s4,88(sp)
   1c620:	00098393          	mv	t2,s3
   1c624:	3ffe0737          	lui	a4,0x3ffe0
   1c628:	000a0593          	mv	a1,s4
   1c62c:	000b8513          	mv	a0,s7
   1c630:	06012903          	lw	s2,96(sp)
   1c634:	00812c23          	sw	s0,24(sp)
   1c638:	000b0c93          	mv	s9,s6
   1c63c:	06c12483          	lw	s1,108(sp)
   1c640:	07412d83          	lw	s11,116(sp)
   1c644:	06412403          	lw	s0,100(sp)
   1c648:	07012b03          	lw	s6,112(sp)
   1c64c:	07812a83          	lw	s5,120(sp)
   1c650:	07c12d03          	lw	s10,124(sp)
   1c654:	06812983          	lw	s3,104(sp)
   1c658:	0a712823          	sw	t2,176(sp)
   1c65c:	06712023          	sw	t2,96(sp)
   1c660:	0a512a23          	sw	t0,180(sp)
   1c664:	04512623          	sw	t0,76(sp)
   1c668:	0bf12c23          	sw	t6,184(sp)
   1c66c:	03f12023          	sw	t6,32(sp)
   1c670:	0ac12e23          	sw	a2,188(sp)
   1c674:	00c12e23          	sw	a2,28(sp)
   1c678:	0a012023          	sw	zero,160(sp)
   1c67c:	0a012223          	sw	zero,164(sp)
   1c680:	0a012423          	sw	zero,168(sp)
   1c684:	0ae12623          	sw	a4,172(sp)
   1c688:	3e8050ef          	jal	ra,21a70 <__getf2>
   1c68c:	0aa04c63          	bgtz	a0,1c744 <_svfprintf_r+0x2628>
   1c690:	06012383          	lw	t2,96(sp)
   1c694:	04c12283          	lw	t0,76(sp)
   1c698:	02012f83          	lw	t6,32(sp)
   1c69c:	01c12603          	lw	a2,28(sp)
   1c6a0:	3ffe0737          	lui	a4,0x3ffe0
   1c6a4:	000a0593          	mv	a1,s4
   1c6a8:	000b8513          	mv	a0,s7
   1c6ac:	0a712823          	sw	t2,176(sp)
   1c6b0:	0a512a23          	sw	t0,180(sp)
   1c6b4:	0bf12c23          	sw	t6,184(sp)
   1c6b8:	0ac12e23          	sw	a2,188(sp)
   1c6bc:	0a012023          	sw	zero,160(sp)
   1c6c0:	0a012223          	sw	zero,164(sp)
   1c6c4:	0a012423          	sw	zero,168(sp)
   1c6c8:	0ae12623          	sw	a4,172(sp)
   1c6cc:	2d8050ef          	jal	ra,219a4 <__eqtf2>
   1c6d0:	00051863          	bnez	a0,1c6e0 <_svfprintf_r+0x25c4>
   1c6d4:	01812783          	lw	a5,24(sp)
   1c6d8:	0017fa13          	andi	s4,a5,1
   1c6dc:	060a1463          	bnez	s4,1c744 <_svfprintf_r+0x2628>
   1c6e0:	05012783          	lw	a5,80(sp)
   1c6e4:	03000693          	li	a3,48
   1c6e8:	00178713          	addi	a4,a5,1
   1c6ec:	00ec8733          	add	a4,s9,a4
   1c6f0:	0007c863          	bltz	a5,1c700 <_svfprintf_r+0x25e4>
   1c6f4:	001c8c93          	addi	s9,s9,1
   1c6f8:	fedc8fa3          	sb	a3,-1(s9)
   1c6fc:	ff971ce3          	bne	a4,s9,1c6f4 <_svfprintf_r+0x25d8>
   1c700:	41ac87b3          	sub	a5,s9,s10
   1c704:	00f12c23          	sw	a5,24(sp)
   1c708:	878fe06f          	j	1a780 <_svfprintf_r+0x664>
   1c70c:	00012623          	sw	zero,12(sp)
   1c710:	00078993          	mv	s3,a5
   1c714:	800007b7          	lui	a5,0x80000
   1c718:	01c7ce33          	xor	t3,a5,t3
   1c71c:	02d00793          	li	a5,45
   1c720:	04f12e23          	sw	a5,92(sp)
   1c724:	c6dff06f          	j	1c390 <_svfprintf_r+0x2274>
   1c728:	001b0593          	addi	a1,s6,1
   1c72c:	000a8513          	mv	a0,s5
   1c730:	9ccfb0ef          	jal	ra,178fc <_malloc_r>
   1c734:	00050d13          	mv	s10,a0
   1c738:	46050263          	beqz	a0,1cb9c <_svfprintf_r+0x2a80>
   1c73c:	00a12623          	sw	a0,12(sp)
   1c740:	c2dff06f          	j	1c36c <_svfprintf_r+0x2250>
   1c744:	01412783          	lw	a5,20(sp)
   1c748:	000c8713          	mv	a4,s9
   1c74c:	0cf12e23          	sw	a5,220(sp)
   1c750:	03412783          	lw	a5,52(sp)
   1c754:	fffcc683          	lbu	a3,-1(s9)
   1c758:	00f7c603          	lbu	a2,15(a5) # 8000000f <__BSS_END__+0x7ffd9527>
   1c75c:	02d61063          	bne	a2,a3,1c77c <_svfprintf_r+0x2660>
   1c760:	03000593          	li	a1,48
   1c764:	feb70fa3          	sb	a1,-1(a4) # 3ffdffff <__BSS_END__+0x3ffb9517>
   1c768:	0dc12703          	lw	a4,220(sp)
   1c76c:	fff70793          	addi	a5,a4,-1
   1c770:	0cf12e23          	sw	a5,220(sp)
   1c774:	fff74683          	lbu	a3,-1(a4)
   1c778:	fed606e3          	beq	a2,a3,1c764 <_svfprintf_r+0x2648>
   1c77c:	00168613          	addi	a2,a3,1
   1c780:	03900593          	li	a1,57
   1c784:	0ff67613          	andi	a2,a2,255
   1c788:	00b68663          	beq	a3,a1,1c794 <_svfprintf_r+0x2678>
   1c78c:	fec70fa3          	sb	a2,-1(a4)
   1c790:	f71ff06f          	j	1c700 <_svfprintf_r+0x25e4>
   1c794:	03412783          	lw	a5,52(sp)
   1c798:	00a7c603          	lbu	a2,10(a5)
   1c79c:	fec70fa3          	sb	a2,-1(a4)
   1c7a0:	f61ff06f          	j	1c700 <_svfprintf_r+0x25e4>
   1c7a4:	03000793          	li	a5,48
   1c7a8:	0cf10423          	sb	a5,200(sp)
   1c7ac:	07800793          	li	a5,120
   1c7b0:	ba1ff06f          	j	1c350 <_svfprintf_r+0x2234>
   1c7b4:	001b0a13          	addi	s4,s6,1
   1c7b8:	0b010b93          	addi	s7,sp,176
   1c7bc:	0dc10813          	addi	a6,sp,220
   1c7c0:	0d010793          	addi	a5,sp,208
   1c7c4:	0cc10713          	addi	a4,sp,204
   1c7c8:	000a0693          	mv	a3,s4
   1c7cc:	00200613          	li	a2,2
   1c7d0:	000b8593          	mv	a1,s7
   1c7d4:	000a8513          	mv	a0,s5
   1c7d8:	0bd12823          	sw	t4,176(sp)
   1c7dc:	03d12023          	sw	t4,32(sp)
   1c7e0:	0be12a23          	sw	t5,180(sp)
   1c7e4:	01e12e23          	sw	t5,28(sp)
   1c7e8:	0bf12c23          	sw	t6,184(sp)
   1c7ec:	01f12c23          	sw	t6,24(sp)
   1c7f0:	0bc12e23          	sw	t3,188(sp)
   1c7f4:	01c12a23          	sw	t3,20(sp)
   1c7f8:	b0df90ef          	jal	ra,16304 <_ldtoa_r>
   1c7fc:	01412e03          	lw	t3,20(sp)
   1c800:	01812f83          	lw	t6,24(sp)
   1c804:	01c12f03          	lw	t5,28(sp)
   1c808:	02012e83          	lw	t4,32(sp)
   1c80c:	00050d13          	mv	s10,a0
   1c810:	0a010793          	addi	a5,sp,160
   1c814:	014d0a33          	add	s4,s10,s4
   1c818:	04f12c23          	sw	a5,88(sp)
   1c81c:	9edff06f          	j	1c208 <_svfprintf_r+0x20ec>
   1c820:	00009697          	auipc	a3,0x9
   1c824:	fac68693          	addi	a3,a3,-84 # 257cc <zeroes.4490>
   1c828:	008787b3          	add	a5,a5,s0
   1c82c:	00170713          	addi	a4,a4,1
   1c830:	00d8a023          	sw	a3,0(a7)
   1c834:	0088a223          	sw	s0,4(a7)
   1c838:	0ef12623          	sw	a5,236(sp)
   1c83c:	0ee12423          	sw	a4,232(sp)
   1c840:	00700693          	li	a3,7
   1c844:	00888893          	addi	a7,a7,8
   1c848:	b0e6d263          	bge	a3,a4,1bb4c <_svfprintf_r+0x1a30>
   1c84c:	00812583          	lw	a1,8(sp)
   1c850:	0e410613          	addi	a2,sp,228
   1c854:	000a8513          	mv	a0,s5
   1c858:	781010ef          	jal	ra,1e7d8 <__ssprint_r>
   1c85c:	00050463          	beqz	a0,1c864 <_svfprintf_r+0x2748>
   1c860:	ad1fd06f          	j	1a330 <_svfprintf_r+0x214>
   1c864:	0ec12783          	lw	a5,236(sp)
   1c868:	0e812703          	lw	a4,232(sp)
   1c86c:	10c10893          	addi	a7,sp,268
   1c870:	adcff06f          	j	1bb4c <_svfprintf_r+0x1a30>
   1c874:	0a010793          	addi	a5,sp,160
   1c878:	016d0a33          	add	s4,s10,s6
   1c87c:	04f12c23          	sw	a5,88(sp)
   1c880:	989ff06f          	j	1c208 <_svfprintf_r+0x20ec>
   1c884:	000b0463          	beqz	s6,1c88c <_svfprintf_r+0x2770>
   1c888:	e2dfd06f          	j	1a6b4 <_svfprintf_r+0x598>
   1c88c:	00100b13          	li	s6,1
   1c890:	e25fd06f          	j	1a6b4 <_svfprintf_r+0x598>
   1c894:	fff00793          	li	a5,-1
   1c898:	00f12223          	sw	a5,4(sp)
   1c89c:	abdfd06f          	j	1a358 <_svfprintf_r+0x23c>
   1c8a0:	06700413          	li	s0,103
   1c8a4:	03c12583          	lw	a1,60(sp)
   1c8a8:	01412703          	lw	a4,20(sp)
   1c8ac:	02012023          	sw	zero,32(sp)
   1c8b0:	0005c783          	lbu	a5,0(a1)
   1c8b4:	00012e23          	sw	zero,28(sp)
   1c8b8:	0ff00693          	li	a3,255
   1c8bc:	02d78e63          	beq	a5,a3,1c8f8 <_svfprintf_r+0x27dc>
   1c8c0:	02e7dc63          	bge	a5,a4,1c8f8 <_svfprintf_r+0x27dc>
   1c8c4:	0015c603          	lbu	a2,1(a1)
   1c8c8:	40f70733          	sub	a4,a4,a5
   1c8cc:	00060e63          	beqz	a2,1c8e8 <_svfprintf_r+0x27cc>
   1c8d0:	01c12783          	lw	a5,28(sp)
   1c8d4:	00158593          	addi	a1,a1,1
   1c8d8:	00178793          	addi	a5,a5,1
   1c8dc:	00f12e23          	sw	a5,28(sp)
   1c8e0:	00060793          	mv	a5,a2
   1c8e4:	fd9ff06f          	j	1c8bc <_svfprintf_r+0x27a0>
   1c8e8:	02012603          	lw	a2,32(sp)
   1c8ec:	00160613          	addi	a2,a2,1
   1c8f0:	02c12023          	sw	a2,32(sp)
   1c8f4:	fc9ff06f          	j	1c8bc <_svfprintf_r+0x27a0>
   1c8f8:	00e12a23          	sw	a4,20(sp)
   1c8fc:	01c12783          	lw	a5,28(sp)
   1c900:	02012703          	lw	a4,32(sp)
   1c904:	02b12e23          	sw	a1,60(sp)
   1c908:	04012583          	lw	a1,64(sp)
   1c90c:	00e78533          	add	a0,a5,a4
   1c910:	508080ef          	jal	ra,24e18 <__mulsi3>
   1c914:	01750bb3          	add	s7,a0,s7
   1c918:	fffbca13          	not	s4,s7
   1c91c:	41fa5a13          	srai	s4,s4,0x1f
   1c920:	014bfa33          	and	s4,s7,s4
   1c924:	fb1fd06f          	j	1a8d4 <_svfprintf_r+0x7b8>
   1c928:	0b010b93          	addi	s7,sp,176
   1c92c:	000b8513          	mv	a0,s7
   1c930:	0bd12823          	sw	t4,176(sp)
   1c934:	0be12a23          	sw	t5,180(sp)
   1c938:	0bf12c23          	sw	t6,184(sp)
   1c93c:	0bc12e23          	sw	t3,188(sp)
   1c940:	1a4080ef          	jal	ra,24ae4 <__trunctfdf2>
   1c944:	0cc10613          	addi	a2,sp,204
   1c948:	9e8fd0ef          	jal	ra,19b30 <frexp>
   1c94c:	00058613          	mv	a2,a1
   1c950:	00050593          	mv	a1,a0
   1c954:	000b8513          	mv	a0,s7
   1c958:	785070ef          	jal	ra,248dc <__extenddftf2>
   1c95c:	09010793          	addi	a5,sp,144
   1c960:	00078593          	mv	a1,a5
   1c964:	00f12c23          	sw	a5,24(sp)
   1c968:	0b012783          	lw	a5,176(sp)
   1c96c:	0a010a13          	addi	s4,sp,160
   1c970:	08010613          	addi	a2,sp,128
   1c974:	08f12823          	sw	a5,144(sp)
   1c978:	0b412783          	lw	a5,180(sp)
   1c97c:	000a0513          	mv	a0,s4
   1c980:	04c12623          	sw	a2,76(sp)
   1c984:	08f12a23          	sw	a5,148(sp)
   1c988:	0b812783          	lw	a5,184(sp)
   1c98c:	05412c23          	sw	s4,88(sp)
   1c990:	08012023          	sw	zero,128(sp)
   1c994:	08f12c23          	sw	a5,152(sp)
   1c998:	0bc12783          	lw	a5,188(sp)
   1c99c:	08012223          	sw	zero,132(sp)
   1c9a0:	08012423          	sw	zero,136(sp)
   1c9a4:	08f12e23          	sw	a5,156(sp)
   1c9a8:	3ffc07b7          	lui	a5,0x3ffc0
   1c9ac:	08f12623          	sw	a5,140(sp)
   1c9b0:	348050ef          	jal	ra,21cf8 <__multf3>
   1c9b4:	0a012683          	lw	a3,160(sp)
   1c9b8:	0a412e03          	lw	t3,164(sp)
   1c9bc:	0a812e83          	lw	t4,168(sp)
   1c9c0:	0ac12f03          	lw	t5,172(sp)
   1c9c4:	000a0593          	mv	a1,s4
   1c9c8:	000b8513          	mv	a0,s7
   1c9cc:	0ad12823          	sw	a3,176(sp)
   1c9d0:	02d12a23          	sw	a3,52(sp)
   1c9d4:	0bc12a23          	sw	t3,180(sp)
   1c9d8:	03c12023          	sw	t3,32(sp)
   1c9dc:	0bd12c23          	sw	t4,184(sp)
   1c9e0:	01d12e23          	sw	t4,28(sp)
   1c9e4:	0be12e23          	sw	t5,188(sp)
   1c9e8:	01e12a23          	sw	t5,20(sp)
   1c9ec:	0a012023          	sw	zero,160(sp)
   1c9f0:	0a012223          	sw	zero,164(sp)
   1c9f4:	0a012423          	sw	zero,168(sp)
   1c9f8:	0a012623          	sw	zero,172(sp)
   1c9fc:	7a9040ef          	jal	ra,219a4 <__eqtf2>
   1ca00:	01412f03          	lw	t5,20(sp)
   1ca04:	01c12e83          	lw	t4,28(sp)
   1ca08:	02012e03          	lw	t3,32(sp)
   1ca0c:	03412683          	lw	a3,52(sp)
   1ca10:	00051663          	bnez	a0,1ca1c <_svfprintf_r+0x2900>
   1ca14:	00100793          	li	a5,1
   1ca18:	0cf12623          	sw	a5,204(sp)
   1ca1c:	00009797          	auipc	a5,0x9
   1ca20:	84878793          	addi	a5,a5,-1976 # 25264 <zeroes.4505+0x20>
   1ca24:	02f12a23          	sw	a5,52(sp)
   1ca28:	a7dff06f          	j	1c4a4 <_svfprintf_r+0x2388>
   1ca2c:	0d610793          	addi	a5,sp,214
   1ca30:	00071863          	bnez	a4,1ca40 <_svfprintf_r+0x2924>
   1ca34:	03000793          	li	a5,48
   1ca38:	0cf10b23          	sb	a5,214(sp)
   1ca3c:	0d710793          	addi	a5,sp,215
   1ca40:	1b010713          	addi	a4,sp,432
   1ca44:	030a0a13          	addi	s4,s4,48
   1ca48:	40e78733          	sub	a4,a5,a4
   1ca4c:	01478023          	sb	s4,0(a5)
   1ca50:	0dd70793          	addi	a5,a4,221
   1ca54:	02f12c23          	sw	a5,56(sp)
   1ca58:	e39fd06f          	j	1a890 <_svfprintf_r+0x774>
   1ca5c:	02812783          	lw	a5,40(sp)
   1ca60:	06600413          	li	s0,102
   1ca64:	00f70bb3          	add	s7,a4,a5
   1ca68:	016b8bb3          	add	s7,s7,s6
   1ca6c:	899ff06f          	j	1c304 <_svfprintf_r+0x21e8>
   1ca70:	40fb8bb3          	sub	s7,s7,a5
   1ca74:	001b8b93          	addi	s7,s7,1
   1ca78:	fffbca13          	not	s4,s7
   1ca7c:	41fa5a13          	srai	s4,s4,0x1f
   1ca80:	014bfa33          	and	s4,s7,s4
   1ca84:	e68ff06f          	j	1c0ec <_svfprintf_r+0x1fd0>
   1ca88:	0a010593          	addi	a1,sp,160
   1ca8c:	000b8513          	mv	a0,s7
   1ca90:	0bd12823          	sw	t4,176(sp)
   1ca94:	03d12023          	sw	t4,32(sp)
   1ca98:	0be12a23          	sw	t5,180(sp)
   1ca9c:	01e12e23          	sw	t5,28(sp)
   1caa0:	0bf12c23          	sw	t6,184(sp)
   1caa4:	01f12c23          	sw	t6,24(sp)
   1caa8:	0bc12e23          	sw	t3,188(sp)
   1caac:	01c12a23          	sw	t3,20(sp)
   1cab0:	04b12c23          	sw	a1,88(sp)
   1cab4:	0a012023          	sw	zero,160(sp)
   1cab8:	0a012223          	sw	zero,164(sp)
   1cabc:	0a012423          	sw	zero,168(sp)
   1cac0:	0a012623          	sw	zero,172(sp)
   1cac4:	6e1040ef          	jal	ra,219a4 <__eqtf2>
   1cac8:	01412e03          	lw	t3,20(sp)
   1cacc:	01812f83          	lw	t6,24(sp)
   1cad0:	01c12f03          	lw	t5,28(sp)
   1cad4:	02012e83          	lw	t4,32(sp)
   1cad8:	f2050263          	beqz	a0,1c1fc <_svfprintf_r+0x20e0>
   1cadc:	00100793          	li	a5,1
   1cae0:	416787b3          	sub	a5,a5,s6
   1cae4:	0cf12623          	sw	a5,204(sp)
   1cae8:	f18ff06f          	j	1c200 <_svfprintf_r+0x20e4>
   1caec:	05412783          	lw	a5,84(sp)
   1caf0:	0017f793          	andi	a5,a5,1
   1caf4:	00079463          	bnez	a5,1cafc <_svfprintf_r+0x29e0>
   1caf8:	db9fd06f          	j	1a8b0 <_svfprintf_r+0x794>
   1cafc:	dadfd06f          	j	1a8a8 <_svfprintf_r+0x78c>
   1cb00:	000d8613          	mv	a2,s11
   1cb04:	b44ff06f          	j	1be48 <_svfprintf_r+0x1d2c>
   1cb08:	00079a63          	bnez	a5,1cb1c <_svfprintf_r+0x2a00>
   1cb0c:	00100a13          	li	s4,1
   1cb10:	06600413          	li	s0,102
   1cb14:	00100b93          	li	s7,1
   1cb18:	dd4ff06f          	j	1c0ec <_svfprintf_r+0x1fd0>
   1cb1c:	02812783          	lw	a5,40(sp)
   1cb20:	06600413          	li	s0,102
   1cb24:	00178b93          	addi	s7,a5,1
   1cb28:	016b8bb3          	add	s7,s7,s6
   1cb2c:	fffbca13          	not	s4,s7
   1cb30:	41fa5a13          	srai	s4,s4,0x1f
   1cb34:	014bfa33          	and	s4,s7,s4
   1cb38:	db4ff06f          	j	1c0ec <_svfprintf_r+0x1fd0>
   1cb3c:	01012703          	lw	a4,16(sp)
   1cb40:	00072b03          	lw	s6,0(a4)
   1cb44:	00470713          	addi	a4,a4,4
   1cb48:	000b5463          	bgez	s6,1cb50 <_svfprintf_r+0x2a34>
   1cb4c:	fff00b13          	li	s6,-1
   1cb50:	00194403          	lbu	s0,1(s2)
   1cb54:	00e12823          	sw	a4,16(sp)
   1cb58:	00078913          	mv	s2,a5
   1cb5c:	f20fd06f          	j	1a27c <_svfprintf_r+0x160>
   1cb60:	00098a13          	mv	s4,s3
   1cb64:	e79fd06f          	j	1a9dc <_svfprintf_r+0x8c0>
   1cb68:	000b0a13          	mv	s4,s6
   1cb6c:	ca5ff06f          	j	1c810 <_svfprintf_r+0x26f4>
   1cb70:	00200793          	li	a5,2
   1cb74:	02f12c23          	sw	a5,56(sp)
   1cb78:	d19fd06f          	j	1a890 <_svfprintf_r+0x774>
   1cb7c:	02412703          	lw	a4,36(sp)
   1cb80:	00c00793          	li	a5,12
   1cb84:	00f72023          	sw	a5,0(a4)
   1cb88:	fff00793          	li	a5,-1
   1cb8c:	00f12223          	sw	a5,4(sp)
   1cb90:	fc8fd06f          	j	1a358 <_svfprintf_r+0x23c>
   1cb94:	00098a13          	mv	s4,s3
   1cb98:	d71fd06f          	j	1a908 <_svfprintf_r+0x7ec>
   1cb9c:	00812683          	lw	a3,8(sp)
   1cba0:	00c6d783          	lhu	a5,12(a3)
   1cba4:	0407e713          	ori	a4,a5,64
   1cba8:	00070793          	mv	a5,a4
   1cbac:	00e69623          	sh	a4,12(a3)
   1cbb0:	f9cfd06f          	j	1a34c <_svfprintf_r+0x230>

0001cbb4 <__sprint_r.part.0>:
   1cbb4:	0645a783          	lw	a5,100(a1)
   1cbb8:	fd010113          	addi	sp,sp,-48
   1cbbc:	01612823          	sw	s6,16(sp)
   1cbc0:	02112623          	sw	ra,44(sp)
   1cbc4:	02812423          	sw	s0,40(sp)
   1cbc8:	02912223          	sw	s1,36(sp)
   1cbcc:	03212023          	sw	s2,32(sp)
   1cbd0:	01312e23          	sw	s3,28(sp)
   1cbd4:	01412c23          	sw	s4,24(sp)
   1cbd8:	01512a23          	sw	s5,20(sp)
   1cbdc:	01712623          	sw	s7,12(sp)
   1cbe0:	01812423          	sw	s8,8(sp)
   1cbe4:	01279713          	slli	a4,a5,0x12
   1cbe8:	00060b13          	mv	s6,a2
   1cbec:	0a075863          	bgez	a4,1cc9c <__sprint_r.part.0+0xe8>
   1cbf0:	00862783          	lw	a5,8(a2)
   1cbf4:	00058913          	mv	s2,a1
   1cbf8:	00050a13          	mv	s4,a0
   1cbfc:	00062b83          	lw	s7,0(a2)
   1cc00:	fff00a93          	li	s5,-1
   1cc04:	08078863          	beqz	a5,1cc94 <__sprint_r.part.0+0xe0>
   1cc08:	004bac03          	lw	s8,4(s7)
   1cc0c:	000ba403          	lw	s0,0(s7)
   1cc10:	002c5993          	srli	s3,s8,0x2
   1cc14:	06098663          	beqz	s3,1cc80 <__sprint_r.part.0+0xcc>
   1cc18:	00000493          	li	s1,0
   1cc1c:	00c0006f          	j	1cc28 <__sprint_r.part.0+0x74>
   1cc20:	00440413          	addi	s0,s0,4
   1cc24:	04998c63          	beq	s3,s1,1cc7c <__sprint_r.part.0+0xc8>
   1cc28:	00042583          	lw	a1,0(s0)
   1cc2c:	00090613          	mv	a2,s2
   1cc30:	000a0513          	mv	a0,s4
   1cc34:	035010ef          	jal	ra,1e468 <_fputwc_r>
   1cc38:	00148493          	addi	s1,s1,1
   1cc3c:	ff5512e3          	bne	a0,s5,1cc20 <__sprint_r.part.0+0x6c>
   1cc40:	fff00513          	li	a0,-1
   1cc44:	02c12083          	lw	ra,44(sp)
   1cc48:	02812403          	lw	s0,40(sp)
   1cc4c:	000b2423          	sw	zero,8(s6)
   1cc50:	000b2223          	sw	zero,4(s6)
   1cc54:	02412483          	lw	s1,36(sp)
   1cc58:	02012903          	lw	s2,32(sp)
   1cc5c:	01c12983          	lw	s3,28(sp)
   1cc60:	01812a03          	lw	s4,24(sp)
   1cc64:	01412a83          	lw	s5,20(sp)
   1cc68:	01012b03          	lw	s6,16(sp)
   1cc6c:	00c12b83          	lw	s7,12(sp)
   1cc70:	00812c03          	lw	s8,8(sp)
   1cc74:	03010113          	addi	sp,sp,48
   1cc78:	00008067          	ret
   1cc7c:	008b2783          	lw	a5,8(s6)
   1cc80:	ffcc7c13          	andi	s8,s8,-4
   1cc84:	418787b3          	sub	a5,a5,s8
   1cc88:	00fb2423          	sw	a5,8(s6)
   1cc8c:	008b8b93          	addi	s7,s7,8
   1cc90:	f6079ce3          	bnez	a5,1cc08 <__sprint_r.part.0+0x54>
   1cc94:	00000513          	li	a0,0
   1cc98:	fadff06f          	j	1cc44 <__sprint_r.part.0+0x90>
   1cc9c:	821f70ef          	jal	ra,144bc <__sfvwrite_r>
   1cca0:	fa5ff06f          	j	1cc44 <__sprint_r.part.0+0x90>

0001cca4 <__sprint_r>:
   1cca4:	00862703          	lw	a4,8(a2)
   1cca8:	00070463          	beqz	a4,1ccb0 <__sprint_r+0xc>
   1ccac:	f09ff06f          	j	1cbb4 <__sprint_r.part.0>
   1ccb0:	00062223          	sw	zero,4(a2)
   1ccb4:	00000513          	li	a0,0
   1ccb8:	00008067          	ret

0001ccbc <_vfiprintf_r>:
   1ccbc:	ed010113          	addi	sp,sp,-304
   1ccc0:	13212023          	sw	s2,288(sp)
   1ccc4:	11312e23          	sw	s3,284(sp)
   1ccc8:	11812423          	sw	s8,264(sp)
   1cccc:	12112623          	sw	ra,300(sp)
   1ccd0:	12812423          	sw	s0,296(sp)
   1ccd4:	12912223          	sw	s1,292(sp)
   1ccd8:	11412c23          	sw	s4,280(sp)
   1ccdc:	11512a23          	sw	s5,276(sp)
   1cce0:	11612823          	sw	s6,272(sp)
   1cce4:	11712623          	sw	s7,268(sp)
   1cce8:	11912223          	sw	s9,260(sp)
   1ccec:	11a12023          	sw	s10,256(sp)
   1ccf0:	0fb12e23          	sw	s11,252(sp)
   1ccf4:	00d12623          	sw	a3,12(sp)
   1ccf8:	00050993          	mv	s3,a0
   1ccfc:	00058913          	mv	s2,a1
   1cd00:	00060c13          	mv	s8,a2
   1cd04:	00050663          	beqz	a0,1cd10 <_vfiprintf_r+0x54>
   1cd08:	03852783          	lw	a5,56(a0)
   1cd0c:	180782e3          	beqz	a5,1d690 <_vfiprintf_r+0x9d4>
   1cd10:	00c91703          	lh	a4,12(s2)
   1cd14:	01071793          	slli	a5,a4,0x10
   1cd18:	0107d793          	srli	a5,a5,0x10
   1cd1c:	01279693          	slli	a3,a5,0x12
   1cd20:	0206c663          	bltz	a3,1cd4c <_vfiprintf_r+0x90>
   1cd24:	06492683          	lw	a3,100(s2)
   1cd28:	000027b7          	lui	a5,0x2
   1cd2c:	00f767b3          	or	a5,a4,a5
   1cd30:	ffffe737          	lui	a4,0xffffe
   1cd34:	fff70713          	addi	a4,a4,-1 # ffffdfff <__BSS_END__+0xfffd7517>
   1cd38:	00e6f733          	and	a4,a3,a4
   1cd3c:	00f91623          	sh	a5,12(s2)
   1cd40:	01079793          	slli	a5,a5,0x10
   1cd44:	06e92223          	sw	a4,100(s2)
   1cd48:	0107d793          	srli	a5,a5,0x10
   1cd4c:	0087f713          	andi	a4,a5,8
   1cd50:	16070863          	beqz	a4,1cec0 <_vfiprintf_r+0x204>
   1cd54:	01092703          	lw	a4,16(s2)
   1cd58:	16070463          	beqz	a4,1cec0 <_vfiprintf_r+0x204>
   1cd5c:	01a7f793          	andi	a5,a5,26
   1cd60:	00a00713          	li	a4,10
   1cd64:	18e78063          	beq	a5,a4,1cee4 <_vfiprintf_r+0x228>
   1cd68:	ffff87b7          	lui	a5,0xffff8
   1cd6c:	04c10493          	addi	s1,sp,76
   1cd70:	8307c793          	xori	a5,a5,-2000
   1cd74:	04912023          	sw	s1,64(sp)
   1cd78:	04012423          	sw	zero,72(sp)
   1cd7c:	04012223          	sw	zero,68(sp)
   1cd80:	00012823          	sw	zero,16(sp)
   1cd84:	00012c23          	sw	zero,24(sp)
   1cd88:	02012023          	sw	zero,32(sp)
   1cd8c:	00012e23          	sw	zero,28(sp)
   1cd90:	00012423          	sw	zero,8(sp)
   1cd94:	00009a97          	auipc	s5,0x9
   1cd98:	a48a8a93          	addi	s5,s5,-1464 # 257dc <zeroes.4490+0x10>
   1cd9c:	02f12223          	sw	a5,36(sp)
   1cda0:	00048413          	mv	s0,s1
   1cda4:	000c0c93          	mv	s9,s8
   1cda8:	000cc783          	lbu	a5,0(s9)
   1cdac:	16078463          	beqz	a5,1cf14 <_vfiprintf_r+0x258>
   1cdb0:	02500713          	li	a4,37
   1cdb4:	5ce784e3          	beq	a5,a4,1db7c <_vfiprintf_r+0xec0>
   1cdb8:	000c8a13          	mv	s4,s9
   1cdbc:	00c0006f          	j	1cdc8 <_vfiprintf_r+0x10c>
   1cdc0:	14e78463          	beq	a5,a4,1cf08 <_vfiprintf_r+0x24c>
   1cdc4:	000d0a13          	mv	s4,s10
   1cdc8:	001a4783          	lbu	a5,1(s4)
   1cdcc:	001a0d13          	addi	s10,s4,1
   1cdd0:	fe0798e3          	bnez	a5,1cdc0 <_vfiprintf_r+0x104>
   1cdd4:	419d0c33          	sub	s8,s10,s9
   1cdd8:	120c0e63          	beqz	s8,1cf14 <_vfiprintf_r+0x258>
   1cddc:	04812703          	lw	a4,72(sp)
   1cde0:	04412783          	lw	a5,68(sp)
   1cde4:	01942023          	sw	s9,0(s0)
   1cde8:	00ec0733          	add	a4,s8,a4
   1cdec:	00178793          	addi	a5,a5,1 # ffff8001 <__BSS_END__+0xfffd1519>
   1cdf0:	01842223          	sw	s8,4(s0)
   1cdf4:	04e12423          	sw	a4,72(sp)
   1cdf8:	04f12223          	sw	a5,68(sp)
   1cdfc:	00700693          	li	a3,7
   1ce00:	00840413          	addi	s0,s0,8
   1ce04:	02f6d063          	bge	a3,a5,1ce24 <_vfiprintf_r+0x168>
   1ce08:	520706e3          	beqz	a4,1db34 <_vfiprintf_r+0xe78>
   1ce0c:	04010613          	addi	a2,sp,64
   1ce10:	00090593          	mv	a1,s2
   1ce14:	00098513          	mv	a0,s3
   1ce18:	d9dff0ef          	jal	ra,1cbb4 <__sprint_r.part.0>
   1ce1c:	10051863          	bnez	a0,1cf2c <_vfiprintf_r+0x270>
   1ce20:	00048413          	mv	s0,s1
   1ce24:	00812703          	lw	a4,8(sp)
   1ce28:	001a4783          	lbu	a5,1(s4)
   1ce2c:	01870733          	add	a4,a4,s8
   1ce30:	00e12423          	sw	a4,8(sp)
   1ce34:	0e078063          	beqz	a5,1cf14 <_vfiprintf_r+0x258>
   1ce38:	001d0c93          	addi	s9,s10,1
   1ce3c:	001d4703          	lbu	a4,1(s10)
   1ce40:	02010da3          	sb	zero,59(sp)
   1ce44:	fff00c13          	li	s8,-1
   1ce48:	00000a13          	li	s4,0
   1ce4c:	00000b93          	li	s7,0
   1ce50:	02a00d13          	li	s10,42
   1ce54:	001c8c93          	addi	s9,s9,1
   1ce58:	05a00693          	li	a3,90
   1ce5c:	fe070793          	addi	a5,a4,-32
   1ce60:	1ef6e063          	bltu	a3,a5,1d040 <_vfiprintf_r+0x384>
   1ce64:	00279793          	slli	a5,a5,0x2
   1ce68:	015787b3          	add	a5,a5,s5
   1ce6c:	0007a783          	lw	a5,0(a5)
   1ce70:	015787b3          	add	a5,a5,s5
   1ce74:	00078067          	jr	a5
   1ce78:	00098513          	mv	a0,s3
   1ce7c:	fe8fa0ef          	jal	ra,17664 <_localeconv_r>
   1ce80:	00452783          	lw	a5,4(a0)
   1ce84:	00078513          	mv	a0,a5
   1ce88:	00f12e23          	sw	a5,28(sp)
   1ce8c:	c45f30ef          	jal	ra,10ad0 <strlen>
   1ce90:	02a12023          	sw	a0,32(sp)
   1ce94:	00050b13          	mv	s6,a0
   1ce98:	00098513          	mv	a0,s3
   1ce9c:	fc8fa0ef          	jal	ra,17664 <_localeconv_r>
   1cea0:	00852783          	lw	a5,8(a0)
   1cea4:	00f12c23          	sw	a5,24(sp)
   1cea8:	560b14e3          	bnez	s6,1dc10 <_vfiprintf_r+0xf54>
   1ceac:	000cc703          	lbu	a4,0(s9)
   1ceb0:	fa5ff06f          	j	1ce54 <_vfiprintf_r+0x198>
   1ceb4:	020beb93          	ori	s7,s7,32
   1ceb8:	000cc703          	lbu	a4,0(s9)
   1cebc:	f99ff06f          	j	1ce54 <_vfiprintf_r+0x198>
   1cec0:	00090593          	mv	a1,s2
   1cec4:	00098513          	mv	a0,s3
   1cec8:	859f60ef          	jal	ra,13720 <__swsetup_r>
   1cecc:	00050463          	beqz	a0,1ced4 <_vfiprintf_r+0x218>
   1ced0:	0600106f          	j	1df30 <_vfiprintf_r+0x1274>
   1ced4:	00c95783          	lhu	a5,12(s2)
   1ced8:	00a00713          	li	a4,10
   1cedc:	01a7f793          	andi	a5,a5,26
   1cee0:	e8e794e3          	bne	a5,a4,1cd68 <_vfiprintf_r+0xac>
   1cee4:	00e91783          	lh	a5,14(s2)
   1cee8:	e807c0e3          	bltz	a5,1cd68 <_vfiprintf_r+0xac>
   1ceec:	00c12683          	lw	a3,12(sp)
   1cef0:	000c0613          	mv	a2,s8
   1cef4:	00090593          	mv	a1,s2
   1cef8:	00098513          	mv	a0,s3
   1cefc:	0a8010ef          	jal	ra,1dfa4 <__sbprintf>
   1cf00:	00a12423          	sw	a0,8(sp)
   1cf04:	0380006f          	j	1cf3c <_vfiprintf_r+0x280>
   1cf08:	419d0c33          	sub	s8,s10,s9
   1cf0c:	f20c06e3          	beqz	s8,1ce38 <_vfiprintf_r+0x17c>
   1cf10:	ecdff06f          	j	1cddc <_vfiprintf_r+0x120>
   1cf14:	04812783          	lw	a5,72(sp)
   1cf18:	00078a63          	beqz	a5,1cf2c <_vfiprintf_r+0x270>
   1cf1c:	04010613          	addi	a2,sp,64
   1cf20:	00090593          	mv	a1,s2
   1cf24:	00098513          	mv	a0,s3
   1cf28:	c8dff0ef          	jal	ra,1cbb4 <__sprint_r.part.0>
   1cf2c:	00c95783          	lhu	a5,12(s2)
   1cf30:	0407f793          	andi	a5,a5,64
   1cf34:	00078463          	beqz	a5,1cf3c <_vfiprintf_r+0x280>
   1cf38:	7f90006f          	j	1df30 <_vfiprintf_r+0x1274>
   1cf3c:	12c12083          	lw	ra,300(sp)
   1cf40:	12812403          	lw	s0,296(sp)
   1cf44:	00812503          	lw	a0,8(sp)
   1cf48:	12412483          	lw	s1,292(sp)
   1cf4c:	12012903          	lw	s2,288(sp)
   1cf50:	11c12983          	lw	s3,284(sp)
   1cf54:	11812a03          	lw	s4,280(sp)
   1cf58:	11412a83          	lw	s5,276(sp)
   1cf5c:	11012b03          	lw	s6,272(sp)
   1cf60:	10c12b83          	lw	s7,268(sp)
   1cf64:	10812c03          	lw	s8,264(sp)
   1cf68:	10412c83          	lw	s9,260(sp)
   1cf6c:	10012d03          	lw	s10,256(sp)
   1cf70:	0fc12d83          	lw	s11,252(sp)
   1cf74:	13010113          	addi	sp,sp,304
   1cf78:	00008067          	ret
   1cf7c:	00008797          	auipc	a5,0x8
   1cf80:	2fc78793          	addi	a5,a5,764 # 25278 <zeroes.4505+0x34>
   1cf84:	00f12823          	sw	a5,16(sp)
   1cf88:	020bf793          	andi	a5,s7,32
   1cf8c:	52078463          	beqz	a5,1d4b4 <_vfiprintf_r+0x7f8>
   1cf90:	00c12783          	lw	a5,12(sp)
   1cf94:	00778693          	addi	a3,a5,7
   1cf98:	ff86f693          	andi	a3,a3,-8
   1cf9c:	0006ad83          	lw	s11,0(a3)
   1cfa0:	0046ae03          	lw	t3,4(a3)
   1cfa4:	00868793          	addi	a5,a3,8
   1cfa8:	00f12623          	sw	a5,12(sp)
   1cfac:	001bf693          	andi	a3,s7,1
   1cfb0:	00068663          	beqz	a3,1cfbc <_vfiprintf_r+0x300>
   1cfb4:	01cde6b3          	or	a3,s11,t3
   1cfb8:	42069ee3          	bnez	a3,1dbf4 <_vfiprintf_r+0xf38>
   1cfbc:	bffbfd13          	andi	s10,s7,-1025
   1cfc0:	00200713          	li	a4,2
   1cfc4:	02010da3          	sb	zero,59(sp)
   1cfc8:	fff00693          	li	a3,-1
   1cfcc:	64dc0a63          	beq	s8,a3,1d620 <_vfiprintf_r+0x964>
   1cfd0:	01cde6b3          	or	a3,s11,t3
   1cfd4:	f7fd7b93          	andi	s7,s10,-129
   1cfd8:	20069ee3          	bnez	a3,1d9f4 <_vfiprintf_r+0xd38>
   1cfdc:	720c1c63          	bnez	s8,1d714 <_vfiprintf_r+0xa58>
   1cfe0:	360712e3          	bnez	a4,1db44 <_vfiprintf_r+0xe88>
   1cfe4:	001d7d93          	andi	s11,s10,1
   1cfe8:	0f010b13          	addi	s6,sp,240
   1cfec:	3a0d96e3          	bnez	s11,1db98 <_vfiprintf_r+0xedc>
   1cff0:	000c0d13          	mv	s10,s8
   1cff4:	01bc5463          	bge	s8,s11,1cffc <_vfiprintf_r+0x340>
   1cff8:	000d8d13          	mv	s10,s11
   1cffc:	03b14783          	lbu	a5,59(sp)
   1d000:	00f037b3          	snez	a5,a5
   1d004:	00fd0d33          	add	s10,s10,a5
   1d008:	0540006f          	j	1d05c <_vfiprintf_r+0x3a0>
   1d00c:	00000a13          	li	s4,0
   1d010:	fd070613          	addi	a2,a4,-48
   1d014:	001c8c93          	addi	s9,s9,1
   1d018:	002a1793          	slli	a5,s4,0x2
   1d01c:	fffcc703          	lbu	a4,-1(s9)
   1d020:	01478a33          	add	s4,a5,s4
   1d024:	001a1a13          	slli	s4,s4,0x1
   1d028:	01460a33          	add	s4,a2,s4
   1d02c:	00900793          	li	a5,9
   1d030:	fd070613          	addi	a2,a4,-48
   1d034:	fec7f0e3          	bgeu	a5,a2,1d014 <_vfiprintf_r+0x358>
   1d038:	fe070793          	addi	a5,a4,-32
   1d03c:	e2f6f4e3          	bgeu	a3,a5,1ce64 <_vfiprintf_r+0x1a8>
   1d040:	ec070ae3          	beqz	a4,1cf14 <_vfiprintf_r+0x258>
   1d044:	08e10623          	sb	a4,140(sp)
   1d048:	02010da3          	sb	zero,59(sp)
   1d04c:	00100d13          	li	s10,1
   1d050:	00100d93          	li	s11,1
   1d054:	08c10b13          	addi	s6,sp,140
   1d058:	00000c13          	li	s8,0
   1d05c:	002bff93          	andi	t6,s7,2
   1d060:	000f8463          	beqz	t6,1d068 <_vfiprintf_r+0x3ac>
   1d064:	002d0d13          	addi	s10,s10,2
   1d068:	04412703          	lw	a4,68(sp)
   1d06c:	084bf813          	andi	a6,s7,132
   1d070:	04812783          	lw	a5,72(sp)
   1d074:	00170693          	addi	a3,a4,1
   1d078:	00068613          	mv	a2,a3
   1d07c:	00081663          	bnez	a6,1d088 <_vfiprintf_r+0x3cc>
   1d080:	41aa0e33          	sub	t3,s4,s10
   1d084:	17c04ce3          	bgtz	t3,1d9fc <_vfiprintf_r+0xd40>
   1d088:	03b14583          	lbu	a1,59(sp)
   1d08c:	00840693          	addi	a3,s0,8
   1d090:	02058c63          	beqz	a1,1d0c8 <_vfiprintf_r+0x40c>
   1d094:	03b10713          	addi	a4,sp,59
   1d098:	00178793          	addi	a5,a5,1
   1d09c:	00e42023          	sw	a4,0(s0)
   1d0a0:	00100713          	li	a4,1
   1d0a4:	00e42223          	sw	a4,4(s0)
   1d0a8:	04f12423          	sw	a5,72(sp)
   1d0ac:	04c12223          	sw	a2,68(sp)
   1d0b0:	00700713          	li	a4,7
   1d0b4:	10c740e3          	blt	a4,a2,1d9b4 <_vfiprintf_r+0xcf8>
   1d0b8:	00060713          	mv	a4,a2
   1d0bc:	00068413          	mv	s0,a3
   1d0c0:	00160613          	addi	a2,a2,1
   1d0c4:	00868693          	addi	a3,a3,8
   1d0c8:	040f8e63          	beqz	t6,1d124 <_vfiprintf_r+0x468>
   1d0cc:	03c10713          	addi	a4,sp,60
   1d0d0:	00278793          	addi	a5,a5,2
   1d0d4:	00e42023          	sw	a4,0(s0)
   1d0d8:	00200713          	li	a4,2
   1d0dc:	00e42223          	sw	a4,4(s0)
   1d0e0:	04f12423          	sw	a5,72(sp)
   1d0e4:	04c12223          	sw	a2,68(sp)
   1d0e8:	00700713          	li	a4,7
   1d0ec:	0ac75ae3          	bge	a4,a2,1d9a0 <_vfiprintf_r+0xce4>
   1d0f0:	26078ce3          	beqz	a5,1db68 <_vfiprintf_r+0xeac>
   1d0f4:	04010613          	addi	a2,sp,64
   1d0f8:	00090593          	mv	a1,s2
   1d0fc:	00098513          	mv	a0,s3
   1d100:	01012a23          	sw	a6,20(sp)
   1d104:	ab1ff0ef          	jal	ra,1cbb4 <__sprint_r.part.0>
   1d108:	e20512e3          	bnez	a0,1cf2c <_vfiprintf_r+0x270>
   1d10c:	04412703          	lw	a4,68(sp)
   1d110:	04812783          	lw	a5,72(sp)
   1d114:	01412803          	lw	a6,20(sp)
   1d118:	05410693          	addi	a3,sp,84
   1d11c:	00170613          	addi	a2,a4,1
   1d120:	00048413          	mv	s0,s1
   1d124:	08000593          	li	a1,128
   1d128:	64b80a63          	beq	a6,a1,1d77c <_vfiprintf_r+0xac0>
   1d12c:	41bc0c33          	sub	s8,s8,s11
   1d130:	75804663          	bgtz	s8,1d87c <_vfiprintf_r+0xbc0>
   1d134:	00fd87b3          	add	a5,s11,a5
   1d138:	01642023          	sw	s6,0(s0)
   1d13c:	01b42223          	sw	s11,4(s0)
   1d140:	04f12423          	sw	a5,72(sp)
   1d144:	04c12223          	sw	a2,68(sp)
   1d148:	00700713          	li	a4,7
   1d14c:	02c75263          	bge	a4,a2,1d170 <_vfiprintf_r+0x4b4>
   1d150:	18078463          	beqz	a5,1d2d8 <_vfiprintf_r+0x61c>
   1d154:	04010613          	addi	a2,sp,64
   1d158:	00090593          	mv	a1,s2
   1d15c:	00098513          	mv	a0,s3
   1d160:	a55ff0ef          	jal	ra,1cbb4 <__sprint_r.part.0>
   1d164:	dc0514e3          	bnez	a0,1cf2c <_vfiprintf_r+0x270>
   1d168:	04812783          	lw	a5,72(sp)
   1d16c:	00048693          	mv	a3,s1
   1d170:	004bf893          	andi	a7,s7,4
   1d174:	00088663          	beqz	a7,1d180 <_vfiprintf_r+0x4c4>
   1d178:	41aa0433          	sub	s0,s4,s10
   1d17c:	16804a63          	bgtz	s0,1d2f0 <_vfiprintf_r+0x634>
   1d180:	01aa5463          	bge	s4,s10,1d188 <_vfiprintf_r+0x4cc>
   1d184:	000d0a13          	mv	s4,s10
   1d188:	00812703          	lw	a4,8(sp)
   1d18c:	01470733          	add	a4,a4,s4
   1d190:	00e12423          	sw	a4,8(sp)
   1d194:	7a079e63          	bnez	a5,1d950 <_vfiprintf_r+0xc94>
   1d198:	04012223          	sw	zero,68(sp)
   1d19c:	00048413          	mv	s0,s1
   1d1a0:	c09ff06f          	j	1cda8 <_vfiprintf_r+0xec>
   1d1a4:	020bf793          	andi	a5,s7,32
   1d1a8:	010bed13          	ori	s10,s7,16
   1d1ac:	54079263          	bnez	a5,1d6f0 <_vfiprintf_r+0xa34>
   1d1b0:	00c12783          	lw	a5,12(sp)
   1d1b4:	00478713          	addi	a4,a5,4
   1d1b8:	00c12783          	lw	a5,12(sp)
   1d1bc:	00000e13          	li	t3,0
   1d1c0:	00e12623          	sw	a4,12(sp)
   1d1c4:	0007ad83          	lw	s11,0(a5)
   1d1c8:	00100713          	li	a4,1
   1d1cc:	df9ff06f          	j	1cfc4 <_vfiprintf_r+0x308>
   1d1d0:	080beb93          	ori	s7,s7,128
   1d1d4:	000cc703          	lbu	a4,0(s9)
   1d1d8:	c7dff06f          	j	1ce54 <_vfiprintf_r+0x198>
   1d1dc:	00c12783          	lw	a5,12(sp)
   1d1e0:	02010da3          	sb	zero,59(sp)
   1d1e4:	0007ab03          	lw	s6,0(a5)
   1d1e8:	00478713          	addi	a4,a5,4
   1d1ec:	380b06e3          	beqz	s6,1dd78 <_vfiprintf_r+0x10bc>
   1d1f0:	fff00793          	li	a5,-1
   1d1f4:	00e12623          	sw	a4,12(sp)
   1d1f8:	24fc08e3          	beq	s8,a5,1dc48 <_vfiprintf_r+0xf8c>
   1d1fc:	000c0613          	mv	a2,s8
   1d200:	00000593          	li	a1,0
   1d204:	000b0513          	mv	a0,s6
   1d208:	f35fa0ef          	jal	ra,1813c <memchr>
   1d20c:	00c12703          	lw	a4,12(sp)
   1d210:	4e0508e3          	beqz	a0,1df00 <_vfiprintf_r+0x1244>
   1d214:	41650db3          	sub	s11,a0,s6
   1d218:	00000c13          	li	s8,0
   1d21c:	dd5ff06f          	j	1cff0 <_vfiprintf_r+0x334>
   1d220:	020bf793          	andi	a5,s7,32
   1d224:	010be893          	ori	a7,s7,16
   1d228:	46079a63          	bnez	a5,1d69c <_vfiprintf_r+0x9e0>
   1d22c:	00c12783          	lw	a5,12(sp)
   1d230:	00478713          	addi	a4,a5,4
   1d234:	00c12783          	lw	a5,12(sp)
   1d238:	00000e13          	li	t3,0
   1d23c:	00e12623          	sw	a4,12(sp)
   1d240:	0007ad83          	lw	s11,0(a5)
   1d244:	4740006f          	j	1d6b8 <_vfiprintf_r+0x9fc>
   1d248:	020bf793          	andi	a5,s7,32
   1d24c:	010bed13          	ori	s10,s7,16
   1d250:	46079c63          	bnez	a5,1d6c8 <_vfiprintf_r+0xa0c>
   1d254:	00c12783          	lw	a5,12(sp)
   1d258:	00478713          	addi	a4,a5,4
   1d25c:	00c12783          	lw	a5,12(sp)
   1d260:	00e12623          	sw	a4,12(sp)
   1d264:	0007ad83          	lw	s11,0(a5)
   1d268:	41fdde13          	srai	t3,s11,0x1f
   1d26c:	000e0713          	mv	a4,t3
   1d270:	38074463          	bltz	a4,1d5f8 <_vfiprintf_r+0x93c>
   1d274:	fff00713          	li	a4,-1
   1d278:	00ec0a63          	beq	s8,a4,1d28c <_vfiprintf_r+0x5d0>
   1d27c:	01cde733          	or	a4,s11,t3
   1d280:	f7fd7b93          	andi	s7,s10,-129
   1d284:	0a070ee3          	beqz	a4,1db40 <_vfiprintf_r+0xe84>
   1d288:	000b8d13          	mv	s10,s7
   1d28c:	1e0e18e3          	bnez	t3,1dc7c <_vfiprintf_r+0xfc0>
   1d290:	00900793          	li	a5,9
   1d294:	1fb7e4e3          	bltu	a5,s11,1dc7c <_vfiprintf_r+0xfc0>
   1d298:	030d8793          	addi	a5,s11,48
   1d29c:	0ef107a3          	sb	a5,239(sp)
   1d2a0:	000d0b93          	mv	s7,s10
   1d2a4:	00100d93          	li	s11,1
   1d2a8:	0ef10b13          	addi	s6,sp,239
   1d2ac:	d45ff06f          	j	1cff0 <_vfiprintf_r+0x334>
   1d2b0:	00c12703          	lw	a4,12(sp)
   1d2b4:	02010da3          	sb	zero,59(sp)
   1d2b8:	00100d13          	li	s10,1
   1d2bc:	00072783          	lw	a5,0(a4)
   1d2c0:	00470713          	addi	a4,a4,4
   1d2c4:	00e12623          	sw	a4,12(sp)
   1d2c8:	08f10623          	sb	a5,140(sp)
   1d2cc:	00100d93          	li	s11,1
   1d2d0:	08c10b13          	addi	s6,sp,140
   1d2d4:	d85ff06f          	j	1d058 <_vfiprintf_r+0x39c>
   1d2d8:	04012223          	sw	zero,68(sp)
   1d2dc:	004bf893          	andi	a7,s7,4
   1d2e0:	000886e3          	beqz	a7,1daec <_vfiprintf_r+0xe30>
   1d2e4:	41aa0433          	sub	s0,s4,s10
   1d2e8:	008052e3          	blez	s0,1daec <_vfiprintf_r+0xe30>
   1d2ec:	00048693          	mv	a3,s1
   1d2f0:	01000713          	li	a4,16
   1d2f4:	04412603          	lw	a2,68(sp)
   1d2f8:	428754e3          	bge	a4,s0,1df20 <_vfiprintf_r+0x1264>
   1d2fc:	00008e97          	auipc	t4,0x8
   1d300:	64ce8e93          	addi	t4,t4,1612 # 25948 <blanks.4480>
   1d304:	01000c13          	li	s8,16
   1d308:	00700d93          	li	s11,7
   1d30c:	000e8b13          	mv	s6,t4
   1d310:	0180006f          	j	1d328 <_vfiprintf_r+0x66c>
   1d314:	00260593          	addi	a1,a2,2
   1d318:	00868693          	addi	a3,a3,8
   1d31c:	00070613          	mv	a2,a4
   1d320:	ff040413          	addi	s0,s0,-16
   1d324:	048c5863          	bge	s8,s0,1d374 <_vfiprintf_r+0x6b8>
   1d328:	01078793          	addi	a5,a5,16
   1d32c:	00160713          	addi	a4,a2,1
   1d330:	0166a023          	sw	s6,0(a3)
   1d334:	0186a223          	sw	s8,4(a3)
   1d338:	04f12423          	sw	a5,72(sp)
   1d33c:	04e12223          	sw	a4,68(sp)
   1d340:	fceddae3          	bge	s11,a4,1d314 <_vfiprintf_r+0x658>
   1d344:	42078463          	beqz	a5,1d76c <_vfiprintf_r+0xab0>
   1d348:	04010613          	addi	a2,sp,64
   1d34c:	00090593          	mv	a1,s2
   1d350:	00098513          	mv	a0,s3
   1d354:	861ff0ef          	jal	ra,1cbb4 <__sprint_r.part.0>
   1d358:	bc051ae3          	bnez	a0,1cf2c <_vfiprintf_r+0x270>
   1d35c:	04412603          	lw	a2,68(sp)
   1d360:	ff040413          	addi	s0,s0,-16
   1d364:	04812783          	lw	a5,72(sp)
   1d368:	00048693          	mv	a3,s1
   1d36c:	00160593          	addi	a1,a2,1
   1d370:	fa8c4ce3          	blt	s8,s0,1d328 <_vfiprintf_r+0x66c>
   1d374:	000b0e93          	mv	t4,s6
   1d378:	008787b3          	add	a5,a5,s0
   1d37c:	01d6a023          	sw	t4,0(a3)
   1d380:	0086a223          	sw	s0,4(a3)
   1d384:	04f12423          	sw	a5,72(sp)
   1d388:	04b12223          	sw	a1,68(sp)
   1d38c:	00700713          	li	a4,7
   1d390:	deb758e3          	bge	a4,a1,1d180 <_vfiprintf_r+0x4c4>
   1d394:	74078c63          	beqz	a5,1daec <_vfiprintf_r+0xe30>
   1d398:	04010613          	addi	a2,sp,64
   1d39c:	00090593          	mv	a1,s2
   1d3a0:	00098513          	mv	a0,s3
   1d3a4:	811ff0ef          	jal	ra,1cbb4 <__sprint_r.part.0>
   1d3a8:	b80512e3          	bnez	a0,1cf2c <_vfiprintf_r+0x270>
   1d3ac:	04812783          	lw	a5,72(sp)
   1d3b0:	dd1ff06f          	j	1d180 <_vfiprintf_r+0x4c4>
   1d3b4:	03b14783          	lbu	a5,59(sp)
   1d3b8:	000cc703          	lbu	a4,0(s9)
   1d3bc:	a8079ce3          	bnez	a5,1ce54 <_vfiprintf_r+0x198>
   1d3c0:	02000793          	li	a5,32
   1d3c4:	02f10da3          	sb	a5,59(sp)
   1d3c8:	a8dff06f          	j	1ce54 <_vfiprintf_r+0x198>
   1d3cc:	02b00793          	li	a5,43
   1d3d0:	02f10da3          	sb	a5,59(sp)
   1d3d4:	000cc703          	lbu	a4,0(s9)
   1d3d8:	a7dff06f          	j	1ce54 <_vfiprintf_r+0x198>
   1d3dc:	00c12783          	lw	a5,12(sp)
   1d3e0:	000cc703          	lbu	a4,0(s9)
   1d3e4:	0007aa03          	lw	s4,0(a5)
   1d3e8:	00478793          	addi	a5,a5,4
   1d3ec:	00f12623          	sw	a5,12(sp)
   1d3f0:	a60a52e3          	bgez	s4,1ce54 <_vfiprintf_r+0x198>
   1d3f4:	41400a33          	neg	s4,s4
   1d3f8:	004beb93          	ori	s7,s7,4
   1d3fc:	a59ff06f          	j	1ce54 <_vfiprintf_r+0x198>
   1d400:	001beb93          	ori	s7,s7,1
   1d404:	000cc703          	lbu	a4,0(s9)
   1d408:	a4dff06f          	j	1ce54 <_vfiprintf_r+0x198>
   1d40c:	000cc703          	lbu	a4,0(s9)
   1d410:	001c8793          	addi	a5,s9,1
   1d414:	33a70ee3          	beq	a4,s10,1df50 <_vfiprintf_r+0x1294>
   1d418:	00078c93          	mv	s9,a5
   1d41c:	fd070613          	addi	a2,a4,-48
   1d420:	00900793          	li	a5,9
   1d424:	00000c13          	li	s8,0
   1d428:	a2c7eae3          	bltu	a5,a2,1ce5c <_vfiprintf_r+0x1a0>
   1d42c:	001c8c93          	addi	s9,s9,1
   1d430:	002c1793          	slli	a5,s8,0x2
   1d434:	fffcc703          	lbu	a4,-1(s9)
   1d438:	01878c33          	add	s8,a5,s8
   1d43c:	001c1c13          	slli	s8,s8,0x1
   1d440:	00cc0c33          	add	s8,s8,a2
   1d444:	00900793          	li	a5,9
   1d448:	fd070613          	addi	a2,a4,-48
   1d44c:	fec7f0e3          	bgeu	a5,a2,1d42c <_vfiprintf_r+0x770>
   1d450:	a0dff06f          	j	1ce5c <_vfiprintf_r+0x1a0>
   1d454:	000cc703          	lbu	a4,0(s9)
   1d458:	004beb93          	ori	s7,s7,4
   1d45c:	9f9ff06f          	j	1ce54 <_vfiprintf_r+0x198>
   1d460:	020bf793          	andi	a5,s7,32
   1d464:	28079463          	bnez	a5,1d6ec <_vfiprintf_r+0xa30>
   1d468:	00c12783          	lw	a5,12(sp)
   1d46c:	010bf693          	andi	a3,s7,16
   1d470:	00478713          	addi	a4,a5,4
   1d474:	0007a783          	lw	a5,0(a5)
   1d478:	2e069ee3          	bnez	a3,1df74 <_vfiprintf_r+0x12b8>
   1d47c:	040bf693          	andi	a3,s7,64
   1d480:	10068ce3          	beqz	a3,1dd98 <_vfiprintf_r+0x10dc>
   1d484:	01079d93          	slli	s11,a5,0x10
   1d488:	00e12623          	sw	a4,12(sp)
   1d48c:	010ddd93          	srli	s11,s11,0x10
   1d490:	00000e13          	li	t3,0
   1d494:	000b8d13          	mv	s10,s7
   1d498:	00100713          	li	a4,1
   1d49c:	b29ff06f          	j	1cfc4 <_vfiprintf_r+0x308>
   1d4a0:	00008797          	auipc	a5,0x8
   1d4a4:	dc478793          	addi	a5,a5,-572 # 25264 <zeroes.4505+0x20>
   1d4a8:	00f12823          	sw	a5,16(sp)
   1d4ac:	020bf793          	andi	a5,s7,32
   1d4b0:	ae0790e3          	bnez	a5,1cf90 <_vfiprintf_r+0x2d4>
   1d4b4:	00c12603          	lw	a2,12(sp)
   1d4b8:	010bf693          	andi	a3,s7,16
   1d4bc:	00062783          	lw	a5,0(a2)
   1d4c0:	00460613          	addi	a2,a2,4
   1d4c4:	00c12623          	sw	a2,12(sp)
   1d4c8:	68069a63          	bnez	a3,1db5c <_vfiprintf_r+0xea0>
   1d4cc:	040bf693          	andi	a3,s7,64
   1d4d0:	68068263          	beqz	a3,1db54 <_vfiprintf_r+0xe98>
   1d4d4:	01079d93          	slli	s11,a5,0x10
   1d4d8:	010ddd93          	srli	s11,s11,0x10
   1d4dc:	00000e13          	li	t3,0
   1d4e0:	acdff06f          	j	1cfac <_vfiprintf_r+0x2f0>
   1d4e4:	00c12783          	lw	a5,12(sp)
   1d4e8:	02412703          	lw	a4,36(sp)
   1d4ec:	00000e13          	li	t3,0
   1d4f0:	0007ad83          	lw	s11,0(a5)
   1d4f4:	00478793          	addi	a5,a5,4
   1d4f8:	00f12623          	sw	a5,12(sp)
   1d4fc:	00008797          	auipc	a5,0x8
   1d500:	d6878793          	addi	a5,a5,-664 # 25264 <zeroes.4505+0x20>
   1d504:	02e11e23          	sh	a4,60(sp)
   1d508:	002bed13          	ori	s10,s7,2
   1d50c:	00f12823          	sw	a5,16(sp)
   1d510:	00200713          	li	a4,2
   1d514:	ab1ff06f          	j	1cfc4 <_vfiprintf_r+0x308>
   1d518:	020bf793          	andi	a5,s7,32
   1d51c:	16079e63          	bnez	a5,1d698 <_vfiprintf_r+0x9dc>
   1d520:	00c12783          	lw	a5,12(sp)
   1d524:	010bf693          	andi	a3,s7,16
   1d528:	00478713          	addi	a4,a5,4
   1d52c:	0007a783          	lw	a5,0(a5)
   1d530:	240696e3          	bnez	a3,1df7c <_vfiprintf_r+0x12c0>
   1d534:	040bf693          	andi	a3,s7,64
   1d538:	080680e3          	beqz	a3,1ddb8 <_vfiprintf_r+0x10fc>
   1d53c:	01079d93          	slli	s11,a5,0x10
   1d540:	010ddd93          	srli	s11,s11,0x10
   1d544:	00000e13          	li	t3,0
   1d548:	000b8893          	mv	a7,s7
   1d54c:	00e12623          	sw	a4,12(sp)
   1d550:	1680006f          	j	1d6b8 <_vfiprintf_r+0x9fc>
   1d554:	00c12683          	lw	a3,12(sp)
   1d558:	020bf793          	andi	a5,s7,32
   1d55c:	00468713          	addi	a4,a3,4
   1d560:	6c079663          	bnez	a5,1dc2c <_vfiprintf_r+0xf70>
   1d564:	010bf793          	andi	a5,s7,16
   1d568:	7e079c63          	bnez	a5,1dd60 <_vfiprintf_r+0x10a4>
   1d56c:	040bf793          	andi	a5,s7,64
   1d570:	100798e3          	bnez	a5,1de80 <_vfiprintf_r+0x11c4>
   1d574:	200bf893          	andi	a7,s7,512
   1d578:	7e088463          	beqz	a7,1dd60 <_vfiprintf_r+0x10a4>
   1d57c:	00c12783          	lw	a5,12(sp)
   1d580:	00e12623          	sw	a4,12(sp)
   1d584:	00812703          	lw	a4,8(sp)
   1d588:	0007a783          	lw	a5,0(a5)
   1d58c:	00e78023          	sb	a4,0(a5)
   1d590:	819ff06f          	j	1cda8 <_vfiprintf_r+0xec>
   1d594:	000cc703          	lbu	a4,0(s9)
   1d598:	06c00793          	li	a5,108
   1d59c:	7af70a63          	beq	a4,a5,1dd50 <_vfiprintf_r+0x1094>
   1d5a0:	010beb93          	ori	s7,s7,16
   1d5a4:	8b1ff06f          	j	1ce54 <_vfiprintf_r+0x198>
   1d5a8:	000cc703          	lbu	a4,0(s9)
   1d5ac:	06800793          	li	a5,104
   1d5b0:	78f70863          	beq	a4,a5,1dd40 <_vfiprintf_r+0x1084>
   1d5b4:	040beb93          	ori	s7,s7,64
   1d5b8:	89dff06f          	j	1ce54 <_vfiprintf_r+0x198>
   1d5bc:	020bf793          	andi	a5,s7,32
   1d5c0:	10079263          	bnez	a5,1d6c4 <_vfiprintf_r+0xa08>
   1d5c4:	00c12703          	lw	a4,12(sp)
   1d5c8:	010bf793          	andi	a5,s7,16
   1d5cc:	00470713          	addi	a4,a4,4
   1d5d0:	1a079ae3          	bnez	a5,1df84 <_vfiprintf_r+0x12c8>
   1d5d4:	040bf793          	andi	a5,s7,64
   1d5d8:	7e078e63          	beqz	a5,1ddd4 <_vfiprintf_r+0x1118>
   1d5dc:	00c12783          	lw	a5,12(sp)
   1d5e0:	00e12623          	sw	a4,12(sp)
   1d5e4:	000b8d13          	mv	s10,s7
   1d5e8:	00079d83          	lh	s11,0(a5)
   1d5ec:	41fdde13          	srai	t3,s11,0x1f
   1d5f0:	000e0713          	mv	a4,t3
   1d5f4:	c80750e3          	bgez	a4,1d274 <_vfiprintf_r+0x5b8>
   1d5f8:	41b007b3          	neg	a5,s11
   1d5fc:	00f03733          	snez	a4,a5
   1d600:	41c00e33          	neg	t3,t3
   1d604:	40ee0e33          	sub	t3,t3,a4
   1d608:	02d00713          	li	a4,45
   1d60c:	02e10da3          	sb	a4,59(sp)
   1d610:	fff00693          	li	a3,-1
   1d614:	00078d93          	mv	s11,a5
   1d618:	00100713          	li	a4,1
   1d61c:	9adc1ae3          	bne	s8,a3,1cfd0 <_vfiprintf_r+0x314>
   1d620:	00100693          	li	a3,1
   1d624:	c6d704e3          	beq	a4,a3,1d28c <_vfiprintf_r+0x5d0>
   1d628:	00200693          	li	a3,2
   1d62c:	0ed70e63          	beq	a4,a3,1d728 <_vfiprintf_r+0xa6c>
   1d630:	0f010693          	addi	a3,sp,240
   1d634:	0080006f          	j	1d63c <_vfiprintf_r+0x980>
   1d638:	000b0693          	mv	a3,s6
   1d63c:	01de1793          	slli	a5,t3,0x1d
   1d640:	007df713          	andi	a4,s11,7
   1d644:	003ddd93          	srli	s11,s11,0x3
   1d648:	03070713          	addi	a4,a4,48
   1d64c:	01b7edb3          	or	s11,a5,s11
   1d650:	003e5e13          	srli	t3,t3,0x3
   1d654:	fee68fa3          	sb	a4,-1(a3)
   1d658:	01cde7b3          	or	a5,s11,t3
   1d65c:	fff68b13          	addi	s6,a3,-1
   1d660:	fc079ce3          	bnez	a5,1d638 <_vfiprintf_r+0x97c>
   1d664:	001d7793          	andi	a5,s10,1
   1d668:	0e078a63          	beqz	a5,1d75c <_vfiprintf_r+0xaa0>
   1d66c:	03000793          	li	a5,48
   1d670:	0ef70663          	beq	a4,a5,1d75c <_vfiprintf_r+0xaa0>
   1d674:	ffe68693          	addi	a3,a3,-2
   1d678:	fefb0fa3          	sb	a5,-1(s6)
   1d67c:	0f010793          	addi	a5,sp,240
   1d680:	40d78db3          	sub	s11,a5,a3
   1d684:	000d0b93          	mv	s7,s10
   1d688:	00068b13          	mv	s6,a3
   1d68c:	965ff06f          	j	1cff0 <_vfiprintf_r+0x334>
   1d690:	9c5f60ef          	jal	ra,14054 <__sinit>
   1d694:	e7cff06f          	j	1cd10 <_vfiprintf_r+0x54>
   1d698:	000b8893          	mv	a7,s7
   1d69c:	00c12783          	lw	a5,12(sp)
   1d6a0:	00778713          	addi	a4,a5,7
   1d6a4:	ff877713          	andi	a4,a4,-8
   1d6a8:	00072d83          	lw	s11,0(a4)
   1d6ac:	00472e03          	lw	t3,4(a4)
   1d6b0:	00870793          	addi	a5,a4,8
   1d6b4:	00f12623          	sw	a5,12(sp)
   1d6b8:	bff8fd13          	andi	s10,a7,-1025
   1d6bc:	00000713          	li	a4,0
   1d6c0:	905ff06f          	j	1cfc4 <_vfiprintf_r+0x308>
   1d6c4:	000b8d13          	mv	s10,s7
   1d6c8:	00c12783          	lw	a5,12(sp)
   1d6cc:	00778793          	addi	a5,a5,7
   1d6d0:	ff87f793          	andi	a5,a5,-8
   1d6d4:	0047a703          	lw	a4,4(a5)
   1d6d8:	00878693          	addi	a3,a5,8
   1d6dc:	00d12623          	sw	a3,12(sp)
   1d6e0:	0007ad83          	lw	s11,0(a5)
   1d6e4:	00070e13          	mv	t3,a4
   1d6e8:	b89ff06f          	j	1d270 <_vfiprintf_r+0x5b4>
   1d6ec:	000b8d13          	mv	s10,s7
   1d6f0:	00c12783          	lw	a5,12(sp)
   1d6f4:	00778713          	addi	a4,a5,7
   1d6f8:	ff877713          	andi	a4,a4,-8
   1d6fc:	00870793          	addi	a5,a4,8
   1d700:	00072d83          	lw	s11,0(a4)
   1d704:	00472e03          	lw	t3,4(a4)
   1d708:	00f12623          	sw	a5,12(sp)
   1d70c:	00100713          	li	a4,1
   1d710:	8b5ff06f          	j	1cfc4 <_vfiprintf_r+0x308>
   1d714:	00100693          	li	a3,1
   1d718:	7cd70a63          	beq	a4,a3,1deec <_vfiprintf_r+0x1230>
   1d71c:	00200693          	li	a3,2
   1d720:	000b8d13          	mv	s10,s7
   1d724:	f0d716e3          	bne	a4,a3,1d630 <_vfiprintf_r+0x974>
   1d728:	01012683          	lw	a3,16(sp)
   1d72c:	0f010b13          	addi	s6,sp,240
   1d730:	00fdf793          	andi	a5,s11,15
   1d734:	00f687b3          	add	a5,a3,a5
   1d738:	0007c783          	lbu	a5,0(a5)
   1d73c:	01ce1713          	slli	a4,t3,0x1c
   1d740:	004ddd93          	srli	s11,s11,0x4
   1d744:	fffb0b13          	addi	s6,s6,-1
   1d748:	01b76db3          	or	s11,a4,s11
   1d74c:	004e5e13          	srli	t3,t3,0x4
   1d750:	00fb0023          	sb	a5,0(s6)
   1d754:	01cde7b3          	or	a5,s11,t3
   1d758:	fc079ce3          	bnez	a5,1d730 <_vfiprintf_r+0xa74>
   1d75c:	0f010793          	addi	a5,sp,240
   1d760:	41678db3          	sub	s11,a5,s6
   1d764:	000d0b93          	mv	s7,s10
   1d768:	889ff06f          	j	1cff0 <_vfiprintf_r+0x334>
   1d76c:	00100593          	li	a1,1
   1d770:	00000613          	li	a2,0
   1d774:	00048693          	mv	a3,s1
   1d778:	ba9ff06f          	j	1d320 <_vfiprintf_r+0x664>
   1d77c:	41aa0e33          	sub	t3,s4,s10
   1d780:	9bc056e3          	blez	t3,1d12c <_vfiprintf_r+0x470>
   1d784:	01000593          	li	a1,16
   1d788:	7bc5da63          	bge	a1,t3,1df3c <_vfiprintf_r+0x1280>
   1d78c:	00008e97          	auipc	t4,0x8
   1d790:	1cce8e93          	addi	t4,t4,460 # 25958 <zeroes.4481>
   1d794:	01612a23          	sw	s6,20(sp)
   1d798:	03412423          	sw	s4,40(sp)
   1d79c:	01000f13          	li	t5,16
   1d7a0:	00700f93          	li	t6,7
   1d7a4:	000e0a13          	mv	s4,t3
   1d7a8:	000e8b13          	mv	s6,t4
   1d7ac:	0180006f          	j	1d7c4 <_vfiprintf_r+0xb08>
   1d7b0:	00270593          	addi	a1,a4,2
   1d7b4:	00840413          	addi	s0,s0,8
   1d7b8:	00068713          	mv	a4,a3
   1d7bc:	ff0a0a13          	addi	s4,s4,-16
   1d7c0:	054f5c63          	bge	t5,s4,1d818 <_vfiprintf_r+0xb5c>
   1d7c4:	01078793          	addi	a5,a5,16
   1d7c8:	00170693          	addi	a3,a4,1
   1d7cc:	01642023          	sw	s6,0(s0)
   1d7d0:	01e42223          	sw	t5,4(s0)
   1d7d4:	04f12423          	sw	a5,72(sp)
   1d7d8:	04d12223          	sw	a3,68(sp)
   1d7dc:	fcdfdae3          	bge	t6,a3,1d7b0 <_vfiprintf_r+0xaf4>
   1d7e0:	18078463          	beqz	a5,1d968 <_vfiprintf_r+0xcac>
   1d7e4:	04010613          	addi	a2,sp,64
   1d7e8:	00090593          	mv	a1,s2
   1d7ec:	00098513          	mv	a0,s3
   1d7f0:	bc4ff0ef          	jal	ra,1cbb4 <__sprint_r.part.0>
   1d7f4:	f2051c63          	bnez	a0,1cf2c <_vfiprintf_r+0x270>
   1d7f8:	04412703          	lw	a4,68(sp)
   1d7fc:	01000f13          	li	t5,16
   1d800:	ff0a0a13          	addi	s4,s4,-16
   1d804:	04812783          	lw	a5,72(sp)
   1d808:	00048413          	mv	s0,s1
   1d80c:	00170593          	addi	a1,a4,1
   1d810:	00700f93          	li	t6,7
   1d814:	fb4f48e3          	blt	t5,s4,1d7c4 <_vfiprintf_r+0xb08>
   1d818:	000a0e13          	mv	t3,s4
   1d81c:	000b0e93          	mv	t4,s6
   1d820:	02812a03          	lw	s4,40(sp)
   1d824:	01412b03          	lw	s6,20(sp)
   1d828:	00840513          	addi	a0,s0,8
   1d82c:	01c787b3          	add	a5,a5,t3
   1d830:	01d42023          	sw	t4,0(s0)
   1d834:	01c42223          	sw	t3,4(s0)
   1d838:	04f12423          	sw	a5,72(sp)
   1d83c:	04b12223          	sw	a1,68(sp)
   1d840:	00700713          	li	a4,7
   1d844:	38b75e63          	bge	a4,a1,1dbe0 <_vfiprintf_r+0xf24>
   1d848:	5c078063          	beqz	a5,1de08 <_vfiprintf_r+0x114c>
   1d84c:	04010613          	addi	a2,sp,64
   1d850:	00090593          	mv	a1,s2
   1d854:	00098513          	mv	a0,s3
   1d858:	b5cff0ef          	jal	ra,1cbb4 <__sprint_r.part.0>
   1d85c:	ec051863          	bnez	a0,1cf2c <_vfiprintf_r+0x270>
   1d860:	04412703          	lw	a4,68(sp)
   1d864:	41bc0c33          	sub	s8,s8,s11
   1d868:	04812783          	lw	a5,72(sp)
   1d86c:	05410693          	addi	a3,sp,84
   1d870:	00170613          	addi	a2,a4,1
   1d874:	00048413          	mv	s0,s1
   1d878:	8b805ee3          	blez	s8,1d134 <_vfiprintf_r+0x478>
   1d87c:	01000593          	li	a1,16
   1d880:	5785dc63          	bge	a1,s8,1ddf8 <_vfiprintf_r+0x113c>
   1d884:	00008e97          	auipc	t4,0x8
   1d888:	0d4e8e93          	addi	t4,t4,212 # 25958 <zeroes.4481>
   1d88c:	01412a23          	sw	s4,20(sp)
   1d890:	01000e13          	li	t3,16
   1d894:	00700f13          	li	t5,7
   1d898:	000e8a13          	mv	s4,t4
   1d89c:	0180006f          	j	1d8b4 <_vfiprintf_r+0xbf8>
   1d8a0:	00270613          	addi	a2,a4,2
   1d8a4:	00840413          	addi	s0,s0,8
   1d8a8:	00068713          	mv	a4,a3
   1d8ac:	ff0c0c13          	addi	s8,s8,-16
   1d8b0:	058e5c63          	bge	t3,s8,1d908 <_vfiprintf_r+0xc4c>
   1d8b4:	01078793          	addi	a5,a5,16
   1d8b8:	00170693          	addi	a3,a4,1
   1d8bc:	01442023          	sw	s4,0(s0)
   1d8c0:	01c42223          	sw	t3,4(s0)
   1d8c4:	04f12423          	sw	a5,72(sp)
   1d8c8:	04d12223          	sw	a3,68(sp)
   1d8cc:	fcdf5ae3          	bge	t5,a3,1d8a0 <_vfiprintf_r+0xbe4>
   1d8d0:	06078863          	beqz	a5,1d940 <_vfiprintf_r+0xc84>
   1d8d4:	04010613          	addi	a2,sp,64
   1d8d8:	00090593          	mv	a1,s2
   1d8dc:	00098513          	mv	a0,s3
   1d8e0:	ad4ff0ef          	jal	ra,1cbb4 <__sprint_r.part.0>
   1d8e4:	e4051463          	bnez	a0,1cf2c <_vfiprintf_r+0x270>
   1d8e8:	04412703          	lw	a4,68(sp)
   1d8ec:	01000e13          	li	t3,16
   1d8f0:	ff0c0c13          	addi	s8,s8,-16
   1d8f4:	04812783          	lw	a5,72(sp)
   1d8f8:	00048413          	mv	s0,s1
   1d8fc:	00170613          	addi	a2,a4,1
   1d900:	00700f13          	li	t5,7
   1d904:	fb8e48e3          	blt	t3,s8,1d8b4 <_vfiprintf_r+0xbf8>
   1d908:	000a0e93          	mv	t4,s4
   1d90c:	01412a03          	lw	s4,20(sp)
   1d910:	00840593          	addi	a1,s0,8
   1d914:	018787b3          	add	a5,a5,s8
   1d918:	01d42023          	sw	t4,0(s0)
   1d91c:	01842223          	sw	s8,4(s0)
   1d920:	04f12423          	sw	a5,72(sp)
   1d924:	04c12223          	sw	a2,68(sp)
   1d928:	00700713          	li	a4,7
   1d92c:	1cc74c63          	blt	a4,a2,1db04 <_vfiprintf_r+0xe48>
   1d930:	00160613          	addi	a2,a2,1
   1d934:	00858693          	addi	a3,a1,8
   1d938:	00058413          	mv	s0,a1
   1d93c:	ff8ff06f          	j	1d134 <_vfiprintf_r+0x478>
   1d940:	00100613          	li	a2,1
   1d944:	00000713          	li	a4,0
   1d948:	00048413          	mv	s0,s1
   1d94c:	f61ff06f          	j	1d8ac <_vfiprintf_r+0xbf0>
   1d950:	04010613          	addi	a2,sp,64
   1d954:	00090593          	mv	a1,s2
   1d958:	00098513          	mv	a0,s3
   1d95c:	a58ff0ef          	jal	ra,1cbb4 <__sprint_r.part.0>
   1d960:	82050ce3          	beqz	a0,1d198 <_vfiprintf_r+0x4dc>
   1d964:	dc8ff06f          	j	1cf2c <_vfiprintf_r+0x270>
   1d968:	00100593          	li	a1,1
   1d96c:	00000713          	li	a4,0
   1d970:	00048413          	mv	s0,s1
   1d974:	e49ff06f          	j	1d7bc <_vfiprintf_r+0xb00>
   1d978:	22079863          	bnez	a5,1dba8 <_vfiprintf_r+0xeec>
   1d97c:	03b14703          	lbu	a4,59(sp)
   1d980:	4e071263          	bnez	a4,1de64 <_vfiprintf_r+0x11a8>
   1d984:	200f8063          	beqz	t6,1db84 <_vfiprintf_r+0xec8>
   1d988:	03c10793          	addi	a5,sp,60
   1d98c:	04f12623          	sw	a5,76(sp)
   1d990:	00200793          	li	a5,2
   1d994:	04f12823          	sw	a5,80(sp)
   1d998:	00100613          	li	a2,1
   1d99c:	05410693          	addi	a3,sp,84
   1d9a0:	00060713          	mv	a4,a2
   1d9a4:	00068413          	mv	s0,a3
   1d9a8:	00160613          	addi	a2,a2,1
   1d9ac:	00868693          	addi	a3,a3,8
   1d9b0:	f74ff06f          	j	1d124 <_vfiprintf_r+0x468>
   1d9b4:	fc0788e3          	beqz	a5,1d984 <_vfiprintf_r+0xcc8>
   1d9b8:	04010613          	addi	a2,sp,64
   1d9bc:	00090593          	mv	a1,s2
   1d9c0:	00098513          	mv	a0,s3
   1d9c4:	03012423          	sw	a6,40(sp)
   1d9c8:	01f12a23          	sw	t6,20(sp)
   1d9cc:	9e8ff0ef          	jal	ra,1cbb4 <__sprint_r.part.0>
   1d9d0:	d4051e63          	bnez	a0,1cf2c <_vfiprintf_r+0x270>
   1d9d4:	04412703          	lw	a4,68(sp)
   1d9d8:	04812783          	lw	a5,72(sp)
   1d9dc:	05410693          	addi	a3,sp,84
   1d9e0:	00170613          	addi	a2,a4,1
   1d9e4:	00048413          	mv	s0,s1
   1d9e8:	02812803          	lw	a6,40(sp)
   1d9ec:	01412f83          	lw	t6,20(sp)
   1d9f0:	ed8ff06f          	j	1d0c8 <_vfiprintf_r+0x40c>
   1d9f4:	000b8d13          	mv	s10,s7
   1d9f8:	c29ff06f          	j	1d620 <_vfiprintf_r+0x964>
   1d9fc:	01000613          	li	a2,16
   1da00:	51c65863          	bge	a2,t3,1df10 <_vfiprintf_r+0x1254>
   1da04:	00008e97          	auipc	t4,0x8
   1da08:	f44e8e93          	addi	t4,t4,-188 # 25948 <blanks.4480>
   1da0c:	00040613          	mv	a2,s0
   1da10:	03412623          	sw	s4,44(sp)
   1da14:	01000293          	li	t0,16
   1da18:	00700393          	li	t2,7
   1da1c:	01f12a23          	sw	t6,20(sp)
   1da20:	03012423          	sw	a6,40(sp)
   1da24:	000e0413          	mv	s0,t3
   1da28:	000e8a13          	mv	s4,t4
   1da2c:	01c0006f          	j	1da48 <_vfiprintf_r+0xd8c>
   1da30:	00270593          	addi	a1,a4,2
   1da34:	00860613          	addi	a2,a2,8
   1da38:	00068713          	mv	a4,a3
   1da3c:	ff040413          	addi	s0,s0,-16
   1da40:	0482dc63          	bge	t0,s0,1da98 <_vfiprintf_r+0xddc>
   1da44:	00170693          	addi	a3,a4,1
   1da48:	01078793          	addi	a5,a5,16
   1da4c:	01462023          	sw	s4,0(a2)
   1da50:	00562223          	sw	t0,4(a2)
   1da54:	04f12423          	sw	a5,72(sp)
   1da58:	04d12223          	sw	a3,68(sp)
   1da5c:	fcd3dae3          	bge	t2,a3,1da30 <_vfiprintf_r+0xd74>
   1da60:	06078e63          	beqz	a5,1dadc <_vfiprintf_r+0xe20>
   1da64:	04010613          	addi	a2,sp,64
   1da68:	00090593          	mv	a1,s2
   1da6c:	00098513          	mv	a0,s3
   1da70:	944ff0ef          	jal	ra,1cbb4 <__sprint_r.part.0>
   1da74:	ca051c63          	bnez	a0,1cf2c <_vfiprintf_r+0x270>
   1da78:	04412703          	lw	a4,68(sp)
   1da7c:	01000293          	li	t0,16
   1da80:	ff040413          	addi	s0,s0,-16
   1da84:	04812783          	lw	a5,72(sp)
   1da88:	00048613          	mv	a2,s1
   1da8c:	00170593          	addi	a1,a4,1
   1da90:	00700393          	li	t2,7
   1da94:	fa82c8e3          	blt	t0,s0,1da44 <_vfiprintf_r+0xd88>
   1da98:	000a0e93          	mv	t4,s4
   1da9c:	01412f83          	lw	t6,20(sp)
   1daa0:	02812803          	lw	a6,40(sp)
   1daa4:	02c12a03          	lw	s4,44(sp)
   1daa8:	00040e13          	mv	t3,s0
   1daac:	00060413          	mv	s0,a2
   1dab0:	01c787b3          	add	a5,a5,t3
   1dab4:	01d42023          	sw	t4,0(s0)
   1dab8:	01c42223          	sw	t3,4(s0)
   1dabc:	04f12423          	sw	a5,72(sp)
   1dac0:	04b12223          	sw	a1,68(sp)
   1dac4:	00700713          	li	a4,7
   1dac8:	eab748e3          	blt	a4,a1,1d978 <_vfiprintf_r+0xcbc>
   1dacc:	00840413          	addi	s0,s0,8
   1dad0:	00158613          	addi	a2,a1,1
   1dad4:	00058713          	mv	a4,a1
   1dad8:	db0ff06f          	j	1d088 <_vfiprintf_r+0x3cc>
   1dadc:	00000713          	li	a4,0
   1dae0:	00100593          	li	a1,1
   1dae4:	00048613          	mv	a2,s1
   1dae8:	f55ff06f          	j	1da3c <_vfiprintf_r+0xd80>
   1daec:	01aa5463          	bge	s4,s10,1daf4 <_vfiprintf_r+0xe38>
   1daf0:	000d0a13          	mv	s4,s10
   1daf4:	00812783          	lw	a5,8(sp)
   1daf8:	014787b3          	add	a5,a5,s4
   1dafc:	00f12423          	sw	a5,8(sp)
   1db00:	e98ff06f          	j	1d198 <_vfiprintf_r+0x4dc>
   1db04:	14078c63          	beqz	a5,1dc5c <_vfiprintf_r+0xfa0>
   1db08:	04010613          	addi	a2,sp,64
   1db0c:	00090593          	mv	a1,s2
   1db10:	00098513          	mv	a0,s3
   1db14:	8a0ff0ef          	jal	ra,1cbb4 <__sprint_r.part.0>
   1db18:	c0051a63          	bnez	a0,1cf2c <_vfiprintf_r+0x270>
   1db1c:	04412603          	lw	a2,68(sp)
   1db20:	04812783          	lw	a5,72(sp)
   1db24:	05410693          	addi	a3,sp,84
   1db28:	00160613          	addi	a2,a2,1
   1db2c:	00048413          	mv	s0,s1
   1db30:	e04ff06f          	j	1d134 <_vfiprintf_r+0x478>
   1db34:	04012223          	sw	zero,68(sp)
   1db38:	00048413          	mv	s0,s1
   1db3c:	ae8ff06f          	j	1ce24 <_vfiprintf_r+0x168>
   1db40:	3a0c1663          	bnez	s8,1deec <_vfiprintf_r+0x1230>
   1db44:	00000c13          	li	s8,0
   1db48:	00000d93          	li	s11,0
   1db4c:	0f010b13          	addi	s6,sp,240
   1db50:	ca0ff06f          	j	1cff0 <_vfiprintf_r+0x334>
   1db54:	200bf693          	andi	a3,s7,512
   1db58:	38069463          	bnez	a3,1dee0 <_vfiprintf_r+0x1224>
   1db5c:	00078d93          	mv	s11,a5
   1db60:	00000e13          	li	t3,0
   1db64:	c48ff06f          	j	1cfac <_vfiprintf_r+0x2f0>
   1db68:	05410693          	addi	a3,sp,84
   1db6c:	00100613          	li	a2,1
   1db70:	00000713          	li	a4,0
   1db74:	00048413          	mv	s0,s1
   1db78:	dacff06f          	j	1d124 <_vfiprintf_r+0x468>
   1db7c:	000c8d13          	mv	s10,s9
   1db80:	ab8ff06f          	j	1ce38 <_vfiprintf_r+0x17c>
   1db84:	00000713          	li	a4,0
   1db88:	05410693          	addi	a3,sp,84
   1db8c:	00100613          	li	a2,1
   1db90:	00048413          	mv	s0,s1
   1db94:	d90ff06f          	j	1d124 <_vfiprintf_r+0x468>
   1db98:	03000793          	li	a5,48
   1db9c:	0ef107a3          	sb	a5,239(sp)
   1dba0:	0ef10b13          	addi	s6,sp,239
   1dba4:	c4cff06f          	j	1cff0 <_vfiprintf_r+0x334>
   1dba8:	04010613          	addi	a2,sp,64
   1dbac:	00090593          	mv	a1,s2
   1dbb0:	00098513          	mv	a0,s3
   1dbb4:	03012423          	sw	a6,40(sp)
   1dbb8:	01f12a23          	sw	t6,20(sp)
   1dbbc:	ff9fe0ef          	jal	ra,1cbb4 <__sprint_r.part.0>
   1dbc0:	b6051663          	bnez	a0,1cf2c <_vfiprintf_r+0x270>
   1dbc4:	04412703          	lw	a4,68(sp)
   1dbc8:	04812783          	lw	a5,72(sp)
   1dbcc:	00048413          	mv	s0,s1
   1dbd0:	00170613          	addi	a2,a4,1
   1dbd4:	02812803          	lw	a6,40(sp)
   1dbd8:	01412f83          	lw	t6,20(sp)
   1dbdc:	cacff06f          	j	1d088 <_vfiprintf_r+0x3cc>
   1dbe0:	00158613          	addi	a2,a1,1
   1dbe4:	00850693          	addi	a3,a0,8
   1dbe8:	00058713          	mv	a4,a1
   1dbec:	00050413          	mv	s0,a0
   1dbf0:	d3cff06f          	j	1d12c <_vfiprintf_r+0x470>
   1dbf4:	03000693          	li	a3,48
   1dbf8:	002beb93          	ori	s7,s7,2
   1dbfc:	02e10ea3          	sb	a4,61(sp)
   1dc00:	02d10e23          	sb	a3,60(sp)
   1dc04:	bffbfd13          	andi	s10,s7,-1025
   1dc08:	00200713          	li	a4,2
   1dc0c:	bb8ff06f          	j	1cfc4 <_vfiprintf_r+0x308>
   1dc10:	01812783          	lw	a5,24(sp)
   1dc14:	000cc703          	lbu	a4,0(s9)
   1dc18:	a2078e63          	beqz	a5,1ce54 <_vfiprintf_r+0x198>
   1dc1c:	0007c783          	lbu	a5,0(a5)
   1dc20:	a2078a63          	beqz	a5,1ce54 <_vfiprintf_r+0x198>
   1dc24:	400beb93          	ori	s7,s7,1024
   1dc28:	a2cff06f          	j	1ce54 <_vfiprintf_r+0x198>
   1dc2c:	00812603          	lw	a2,8(sp)
   1dc30:	0006a783          	lw	a5,0(a3)
   1dc34:	00e12623          	sw	a4,12(sp)
   1dc38:	41f65693          	srai	a3,a2,0x1f
   1dc3c:	00c7a023          	sw	a2,0(a5)
   1dc40:	00d7a223          	sw	a3,4(a5)
   1dc44:	964ff06f          	j	1cda8 <_vfiprintf_r+0xec>
   1dc48:	000b0513          	mv	a0,s6
   1dc4c:	e85f20ef          	jal	ra,10ad0 <strlen>
   1dc50:	00050d93          	mv	s11,a0
   1dc54:	00000c13          	li	s8,0
   1dc58:	b98ff06f          	j	1cff0 <_vfiprintf_r+0x334>
   1dc5c:	00100713          	li	a4,1
   1dc60:	000d8793          	mv	a5,s11
   1dc64:	05612623          	sw	s6,76(sp)
   1dc68:	05b12823          	sw	s11,80(sp)
   1dc6c:	05b12423          	sw	s11,72(sp)
   1dc70:	04e12223          	sw	a4,68(sp)
   1dc74:	05410693          	addi	a3,sp,84
   1dc78:	cf8ff06f          	j	1d170 <_vfiprintf_r+0x4b4>
   1dc7c:	0f010b13          	addi	s6,sp,240
   1dc80:	400d7793          	andi	a5,s10,1024
   1dc84:	00812a23          	sw	s0,20(sp)
   1dc88:	03412423          	sw	s4,40(sp)
   1dc8c:	03312623          	sw	s3,44(sp)
   1dc90:	00000b93          	li	s7,0
   1dc94:	000b0993          	mv	s3,s6
   1dc98:	00078413          	mv	s0,a5
   1dc9c:	000c8b13          	mv	s6,s9
   1dca0:	000e0a13          	mv	s4,t3
   1dca4:	00090c93          	mv	s9,s2
   1dca8:	01812903          	lw	s2,24(sp)
   1dcac:	0240006f          	j	1dcd0 <_vfiprintf_r+0x1014>
   1dcb0:	00a00613          	li	a2,10
   1dcb4:	00000693          	li	a3,0
   1dcb8:	000d8513          	mv	a0,s11
   1dcbc:	000a0593          	mv	a1,s4
   1dcc0:	3e0020ef          	jal	ra,200a0 <__udivdi3>
   1dcc4:	220a0863          	beqz	s4,1def4 <_vfiprintf_r+0x1238>
   1dcc8:	00050d93          	mv	s11,a0
   1dccc:	00058a13          	mv	s4,a1
   1dcd0:	00a00613          	li	a2,10
   1dcd4:	00000693          	li	a3,0
   1dcd8:	000d8513          	mv	a0,s11
   1dcdc:	000a0593          	mv	a1,s4
   1dce0:	195020ef          	jal	ra,20674 <__umoddi3>
   1dce4:	03050513          	addi	a0,a0,48
   1dce8:	fea98fa3          	sb	a0,-1(s3)
   1dcec:	001b8b93          	addi	s7,s7,1
   1dcf0:	fff98993          	addi	s3,s3,-1
   1dcf4:	fa040ee3          	beqz	s0,1dcb0 <_vfiprintf_r+0xff4>
   1dcf8:	00094703          	lbu	a4,0(s2)
   1dcfc:	fb771ae3          	bne	a4,s7,1dcb0 <_vfiprintf_r+0xff4>
   1dd00:	0ff00793          	li	a5,255
   1dd04:	fafb86e3          	beq	s7,a5,1dcb0 <_vfiprintf_r+0xff4>
   1dd08:	100a1a63          	bnez	s4,1de1c <_vfiprintf_r+0x1160>
   1dd0c:	00900793          	li	a5,9
   1dd10:	11b7e663          	bltu	a5,s11,1de1c <_vfiprintf_r+0x1160>
   1dd14:	01212c23          	sw	s2,24(sp)
   1dd18:	0f010793          	addi	a5,sp,240
   1dd1c:	000c8913          	mv	s2,s9
   1dd20:	000b0c93          	mv	s9,s6
   1dd24:	00098b13          	mv	s6,s3
   1dd28:	01412403          	lw	s0,20(sp)
   1dd2c:	02812a03          	lw	s4,40(sp)
   1dd30:	02c12983          	lw	s3,44(sp)
   1dd34:	41678db3          	sub	s11,a5,s6
   1dd38:	000d0b93          	mv	s7,s10
   1dd3c:	ab4ff06f          	j	1cff0 <_vfiprintf_r+0x334>
   1dd40:	001cc703          	lbu	a4,1(s9)
   1dd44:	200beb93          	ori	s7,s7,512
   1dd48:	001c8c93          	addi	s9,s9,1
   1dd4c:	908ff06f          	j	1ce54 <_vfiprintf_r+0x198>
   1dd50:	001cc703          	lbu	a4,1(s9)
   1dd54:	020beb93          	ori	s7,s7,32
   1dd58:	001c8c93          	addi	s9,s9,1
   1dd5c:	8f8ff06f          	j	1ce54 <_vfiprintf_r+0x198>
   1dd60:	00c12783          	lw	a5,12(sp)
   1dd64:	0007a783          	lw	a5,0(a5)
   1dd68:	00e12623          	sw	a4,12(sp)
   1dd6c:	00812703          	lw	a4,8(sp)
   1dd70:	00e7a023          	sw	a4,0(a5)
   1dd74:	834ff06f          	j	1cda8 <_vfiprintf_r+0xec>
   1dd78:	00600793          	li	a5,6
   1dd7c:	000c0d93          	mv	s11,s8
   1dd80:	0d87ee63          	bltu	a5,s8,1de5c <_vfiprintf_r+0x11a0>
   1dd84:	000d8d13          	mv	s10,s11
   1dd88:	00e12623          	sw	a4,12(sp)
   1dd8c:	00007b17          	auipc	s6,0x7
   1dd90:	500b0b13          	addi	s6,s6,1280 # 2528c <zeroes.4505+0x48>
   1dd94:	ac4ff06f          	j	1d058 <_vfiprintf_r+0x39c>
   1dd98:	200bf693          	andi	a3,s7,512
   1dd9c:	12068663          	beqz	a3,1dec8 <_vfiprintf_r+0x120c>
   1dda0:	00e12623          	sw	a4,12(sp)
   1dda4:	0ff7fd93          	andi	s11,a5,255
   1dda8:	00000e13          	li	t3,0
   1ddac:	000b8d13          	mv	s10,s7
   1ddb0:	00100713          	li	a4,1
   1ddb4:	a10ff06f          	j	1cfc4 <_vfiprintf_r+0x308>
   1ddb8:	200bf693          	andi	a3,s7,512
   1ddbc:	0e068c63          	beqz	a3,1deb4 <_vfiprintf_r+0x11f8>
   1ddc0:	0ff7fd93          	andi	s11,a5,255
   1ddc4:	00000e13          	li	t3,0
   1ddc8:	000b8893          	mv	a7,s7
   1ddcc:	00e12623          	sw	a4,12(sp)
   1ddd0:	8e9ff06f          	j	1d6b8 <_vfiprintf_r+0x9fc>
   1ddd4:	200bf793          	andi	a5,s7,512
   1ddd8:	0c078063          	beqz	a5,1de98 <_vfiprintf_r+0x11dc>
   1dddc:	00c12783          	lw	a5,12(sp)
   1dde0:	000b8d13          	mv	s10,s7
   1dde4:	00e12623          	sw	a4,12(sp)
   1dde8:	00078d83          	lb	s11,0(a5)
   1ddec:	41fdde13          	srai	t3,s11,0x1f
   1ddf0:	000e0713          	mv	a4,t3
   1ddf4:	c7cff06f          	j	1d270 <_vfiprintf_r+0x5b4>
   1ddf8:	00068593          	mv	a1,a3
   1ddfc:	00008e97          	auipc	t4,0x8
   1de00:	b5ce8e93          	addi	t4,t4,-1188 # 25958 <zeroes.4481>
   1de04:	b11ff06f          	j	1d914 <_vfiprintf_r+0xc58>
   1de08:	05410693          	addi	a3,sp,84
   1de0c:	00100613          	li	a2,1
   1de10:	00000713          	li	a4,0
   1de14:	00048413          	mv	s0,s1
   1de18:	b14ff06f          	j	1d12c <_vfiprintf_r+0x470>
   1de1c:	02012783          	lw	a5,32(sp)
   1de20:	01c12583          	lw	a1,28(sp)
   1de24:	00000b93          	li	s7,0
   1de28:	40f989b3          	sub	s3,s3,a5
   1de2c:	00078613          	mv	a2,a5
   1de30:	00098513          	mv	a0,s3
   1de34:	a1cfc0ef          	jal	ra,1a050 <strncpy>
   1de38:	00194703          	lbu	a4,1(s2)
   1de3c:	00a00613          	li	a2,10
   1de40:	00000693          	li	a3,0
   1de44:	00e03733          	snez	a4,a4
   1de48:	000d8513          	mv	a0,s11
   1de4c:	000a0593          	mv	a1,s4
   1de50:	00e90933          	add	s2,s2,a4
   1de54:	24c020ef          	jal	ra,200a0 <__udivdi3>
   1de58:	e71ff06f          	j	1dcc8 <_vfiprintf_r+0x100c>
   1de5c:	00600d93          	li	s11,6
   1de60:	f25ff06f          	j	1dd84 <_vfiprintf_r+0x10c8>
   1de64:	03b10793          	addi	a5,sp,59
   1de68:	04f12623          	sw	a5,76(sp)
   1de6c:	00100793          	li	a5,1
   1de70:	04f12823          	sw	a5,80(sp)
   1de74:	00100613          	li	a2,1
   1de78:	05410693          	addi	a3,sp,84
   1de7c:	a3cff06f          	j	1d0b8 <_vfiprintf_r+0x3fc>
   1de80:	00c12783          	lw	a5,12(sp)
   1de84:	00e12623          	sw	a4,12(sp)
   1de88:	00812703          	lw	a4,8(sp)
   1de8c:	0007a783          	lw	a5,0(a5)
   1de90:	00e79023          	sh	a4,0(a5)
   1de94:	f15fe06f          	j	1cda8 <_vfiprintf_r+0xec>
   1de98:	00c12783          	lw	a5,12(sp)
   1de9c:	000b8d13          	mv	s10,s7
   1dea0:	00e12623          	sw	a4,12(sp)
   1dea4:	0007ad83          	lw	s11,0(a5)
   1dea8:	41fdde13          	srai	t3,s11,0x1f
   1deac:	000e0713          	mv	a4,t3
   1deb0:	bc0ff06f          	j	1d270 <_vfiprintf_r+0x5b4>
   1deb4:	00078d93          	mv	s11,a5
   1deb8:	00000e13          	li	t3,0
   1debc:	000b8893          	mv	a7,s7
   1dec0:	00e12623          	sw	a4,12(sp)
   1dec4:	ff4ff06f          	j	1d6b8 <_vfiprintf_r+0x9fc>
   1dec8:	00e12623          	sw	a4,12(sp)
   1decc:	00078d93          	mv	s11,a5
   1ded0:	00000e13          	li	t3,0
   1ded4:	000b8d13          	mv	s10,s7
   1ded8:	00100713          	li	a4,1
   1dedc:	8e8ff06f          	j	1cfc4 <_vfiprintf_r+0x308>
   1dee0:	0ff7fd93          	andi	s11,a5,255
   1dee4:	00000e13          	li	t3,0
   1dee8:	8c4ff06f          	j	1cfac <_vfiprintf_r+0x2f0>
   1deec:	000b8d13          	mv	s10,s7
   1def0:	ba8ff06f          	j	1d298 <_vfiprintf_r+0x5dc>
   1def4:	00900793          	li	a5,9
   1def8:	ddb7e8e3          	bltu	a5,s11,1dcc8 <_vfiprintf_r+0x100c>
   1defc:	e19ff06f          	j	1dd14 <_vfiprintf_r+0x1058>
   1df00:	000c0d93          	mv	s11,s8
   1df04:	00e12623          	sw	a4,12(sp)
   1df08:	00000c13          	li	s8,0
   1df0c:	8e4ff06f          	j	1cff0 <_vfiprintf_r+0x334>
   1df10:	00068593          	mv	a1,a3
   1df14:	00008e97          	auipc	t4,0x8
   1df18:	a34e8e93          	addi	t4,t4,-1484 # 25948 <blanks.4480>
   1df1c:	b95ff06f          	j	1dab0 <_vfiprintf_r+0xdf4>
   1df20:	00160593          	addi	a1,a2,1
   1df24:	00008e97          	auipc	t4,0x8
   1df28:	a24e8e93          	addi	t4,t4,-1500 # 25948 <blanks.4480>
   1df2c:	c4cff06f          	j	1d378 <_vfiprintf_r+0x6bc>
   1df30:	fff00793          	li	a5,-1
   1df34:	00f12423          	sw	a5,8(sp)
   1df38:	804ff06f          	j	1cf3c <_vfiprintf_r+0x280>
   1df3c:	00068513          	mv	a0,a3
   1df40:	00060593          	mv	a1,a2
   1df44:	00008e97          	auipc	t4,0x8
   1df48:	a14e8e93          	addi	t4,t4,-1516 # 25958 <zeroes.4481>
   1df4c:	8e1ff06f          	j	1d82c <_vfiprintf_r+0xb70>
   1df50:	00c12703          	lw	a4,12(sp)
   1df54:	00072c03          	lw	s8,0(a4)
   1df58:	00470693          	addi	a3,a4,4
   1df5c:	000c5463          	bgez	s8,1df64 <_vfiprintf_r+0x12a8>
   1df60:	fff00c13          	li	s8,-1
   1df64:	001cc703          	lbu	a4,1(s9)
   1df68:	00d12623          	sw	a3,12(sp)
   1df6c:	00078c93          	mv	s9,a5
   1df70:	ee5fe06f          	j	1ce54 <_vfiprintf_r+0x198>
   1df74:	000b8d13          	mv	s10,s7
   1df78:	a40ff06f          	j	1d1b8 <_vfiprintf_r+0x4fc>
   1df7c:	000b8893          	mv	a7,s7
   1df80:	ab4ff06f          	j	1d234 <_vfiprintf_r+0x578>
   1df84:	000b8d13          	mv	s10,s7
   1df88:	ad4ff06f          	j	1d25c <_vfiprintf_r+0x5a0>

0001df8c <vfiprintf>:
   1df8c:	1c018793          	addi	a5,gp,448 # 26a80 <_impure_ptr>
   1df90:	00060693          	mv	a3,a2
   1df94:	00058613          	mv	a2,a1
   1df98:	00050593          	mv	a1,a0
   1df9c:	0007a503          	lw	a0,0(a5)
   1dfa0:	d1dfe06f          	j	1ccbc <_vfiprintf_r>

0001dfa4 <__sbprintf>:
   1dfa4:	00c5d783          	lhu	a5,12(a1)
   1dfa8:	0645ae03          	lw	t3,100(a1)
   1dfac:	00e5d303          	lhu	t1,14(a1)
   1dfb0:	01c5a883          	lw	a7,28(a1)
   1dfb4:	0245a803          	lw	a6,36(a1)
   1dfb8:	b8010113          	addi	sp,sp,-1152
   1dfbc:	ffd7f793          	andi	a5,a5,-3
   1dfc0:	40000713          	li	a4,1024
   1dfc4:	46812c23          	sw	s0,1144(sp)
   1dfc8:	00f11a23          	sh	a5,20(sp)
   1dfcc:	00058413          	mv	s0,a1
   1dfd0:	07010793          	addi	a5,sp,112
   1dfd4:	00810593          	addi	a1,sp,8
   1dfd8:	46912a23          	sw	s1,1140(sp)
   1dfdc:	47212823          	sw	s2,1136(sp)
   1dfe0:	46112e23          	sw	ra,1148(sp)
   1dfe4:	00050913          	mv	s2,a0
   1dfe8:	07c12623          	sw	t3,108(sp)
   1dfec:	00611b23          	sh	t1,22(sp)
   1dff0:	03112223          	sw	a7,36(sp)
   1dff4:	03012623          	sw	a6,44(sp)
   1dff8:	00f12423          	sw	a5,8(sp)
   1dffc:	00f12c23          	sw	a5,24(sp)
   1e000:	00e12823          	sw	a4,16(sp)
   1e004:	00e12e23          	sw	a4,28(sp)
   1e008:	02012023          	sw	zero,32(sp)
   1e00c:	cb1fe0ef          	jal	ra,1ccbc <_vfiprintf_r>
   1e010:	00050493          	mv	s1,a0
   1e014:	02055c63          	bgez	a0,1e04c <__sbprintf+0xa8>
   1e018:	01415783          	lhu	a5,20(sp)
   1e01c:	0407f793          	andi	a5,a5,64
   1e020:	00078863          	beqz	a5,1e030 <__sbprintf+0x8c>
   1e024:	00c45783          	lhu	a5,12(s0)
   1e028:	0407e793          	ori	a5,a5,64
   1e02c:	00f41623          	sh	a5,12(s0)
   1e030:	47c12083          	lw	ra,1148(sp)
   1e034:	47812403          	lw	s0,1144(sp)
   1e038:	00048513          	mv	a0,s1
   1e03c:	47012903          	lw	s2,1136(sp)
   1e040:	47412483          	lw	s1,1140(sp)
   1e044:	48010113          	addi	sp,sp,1152
   1e048:	00008067          	ret
   1e04c:	00810593          	addi	a1,sp,8
   1e050:	00090513          	mv	a0,s2
   1e054:	c49f50ef          	jal	ra,13c9c <_fflush_r>
   1e058:	fc0500e3          	beqz	a0,1e018 <__sbprintf+0x74>
   1e05c:	fff00493          	li	s1,-1
   1e060:	fb9ff06f          	j	1e018 <__sbprintf+0x74>

0001e064 <_wctomb_r>:
   1e064:	c2818793          	addi	a5,gp,-984 # 264e8 <__global_locale>
   1e068:	0e07a303          	lw	t1,224(a5)
   1e06c:	00030067          	jr	t1

0001e070 <__ascii_wctomb>:
   1e070:	02058463          	beqz	a1,1e098 <__ascii_wctomb+0x28>
   1e074:	0ff00793          	li	a5,255
   1e078:	00c7e863          	bltu	a5,a2,1e088 <__ascii_wctomb+0x18>
   1e07c:	00c58023          	sb	a2,0(a1)
   1e080:	00100513          	li	a0,1
   1e084:	00008067          	ret
   1e088:	08a00793          	li	a5,138
   1e08c:	00f52023          	sw	a5,0(a0)
   1e090:	fff00513          	li	a0,-1
   1e094:	00008067          	ret
   1e098:	00000513          	li	a0,0
   1e09c:	00008067          	ret

0001e0a0 <_write_r>:
   1e0a0:	00058793          	mv	a5,a1
   1e0a4:	ff010113          	addi	sp,sp,-16
   1e0a8:	00812423          	sw	s0,8(sp)
   1e0ac:	00060593          	mv	a1,a2
   1e0b0:	00050413          	mv	s0,a0
   1e0b4:	00068613          	mv	a2,a3
   1e0b8:	00078513          	mv	a0,a5
   1e0bc:	00112623          	sw	ra,12(sp)
   1e0c0:	2201a223          	sw	zero,548(gp) # 26ae4 <errno>
   1e0c4:	6dd010ef          	jal	ra,1ffa0 <_write>
   1e0c8:	fff00793          	li	a5,-1
   1e0cc:	00f50a63          	beq	a0,a5,1e0e0 <_write_r+0x40>
   1e0d0:	00c12083          	lw	ra,12(sp)
   1e0d4:	00812403          	lw	s0,8(sp)
   1e0d8:	01010113          	addi	sp,sp,16
   1e0dc:	00008067          	ret
   1e0e0:	22418793          	addi	a5,gp,548 # 26ae4 <errno>
   1e0e4:	0007a783          	lw	a5,0(a5)
   1e0e8:	fe0784e3          	beqz	a5,1e0d0 <_write_r+0x30>
   1e0ec:	00f42023          	sw	a5,0(s0)
   1e0f0:	00c12083          	lw	ra,12(sp)
   1e0f4:	00812403          	lw	s0,8(sp)
   1e0f8:	01010113          	addi	sp,sp,16
   1e0fc:	00008067          	ret

0001e100 <_calloc_r>:
   1e100:	ff010113          	addi	sp,sp,-16
   1e104:	00058793          	mv	a5,a1
   1e108:	00812423          	sw	s0,8(sp)
   1e10c:	00060593          	mv	a1,a2
   1e110:	00050413          	mv	s0,a0
   1e114:	00078513          	mv	a0,a5
   1e118:	00112623          	sw	ra,12(sp)
   1e11c:	4fd060ef          	jal	ra,24e18 <__mulsi3>
   1e120:	00050593          	mv	a1,a0
   1e124:	00040513          	mv	a0,s0
   1e128:	fd4f90ef          	jal	ra,178fc <_malloc_r>
   1e12c:	00050413          	mv	s0,a0
   1e130:	02050863          	beqz	a0,1e160 <_calloc_r+0x60>
   1e134:	ffc52603          	lw	a2,-4(a0)
   1e138:	02400713          	li	a4,36
   1e13c:	ffc67613          	andi	a2,a2,-4
   1e140:	ffc60613          	addi	a2,a2,-4
   1e144:	06c76063          	bltu	a4,a2,1e1a4 <_calloc_r+0xa4>
   1e148:	01300693          	li	a3,19
   1e14c:	00050793          	mv	a5,a0
   1e150:	02c6e263          	bltu	a3,a2,1e174 <_calloc_r+0x74>
   1e154:	0007a023          	sw	zero,0(a5)
   1e158:	0007a223          	sw	zero,4(a5)
   1e15c:	0007a423          	sw	zero,8(a5)
   1e160:	00040513          	mv	a0,s0
   1e164:	00c12083          	lw	ra,12(sp)
   1e168:	00812403          	lw	s0,8(sp)
   1e16c:	01010113          	addi	sp,sp,16
   1e170:	00008067          	ret
   1e174:	00052023          	sw	zero,0(a0)
   1e178:	00052223          	sw	zero,4(a0)
   1e17c:	01b00793          	li	a5,27
   1e180:	04c7f063          	bgeu	a5,a2,1e1c0 <_calloc_r+0xc0>
   1e184:	00052423          	sw	zero,8(a0)
   1e188:	00052623          	sw	zero,12(a0)
   1e18c:	01050793          	addi	a5,a0,16
   1e190:	fce612e3          	bne	a2,a4,1e154 <_calloc_r+0x54>
   1e194:	00052823          	sw	zero,16(a0)
   1e198:	01850793          	addi	a5,a0,24
   1e19c:	00052a23          	sw	zero,20(a0)
   1e1a0:	fb5ff06f          	j	1e154 <_calloc_r+0x54>
   1e1a4:	00000593          	li	a1,0
   1e1a8:	ed4f20ef          	jal	ra,1087c <memset>
   1e1ac:	00040513          	mv	a0,s0
   1e1b0:	00c12083          	lw	ra,12(sp)
   1e1b4:	00812403          	lw	s0,8(sp)
   1e1b8:	01010113          	addi	sp,sp,16
   1e1bc:	00008067          	ret
   1e1c0:	00850793          	addi	a5,a0,8
   1e1c4:	f91ff06f          	j	1e154 <_calloc_r+0x54>

0001e1c8 <_close_r>:
   1e1c8:	ff010113          	addi	sp,sp,-16
   1e1cc:	00812423          	sw	s0,8(sp)
   1e1d0:	00050413          	mv	s0,a0
   1e1d4:	00058513          	mv	a0,a1
   1e1d8:	2201a223          	sw	zero,548(gp) # 26ae4 <errno>
   1e1dc:	00112623          	sw	ra,12(sp)
   1e1e0:	335010ef          	jal	ra,1fd14 <_close>
   1e1e4:	fff00793          	li	a5,-1
   1e1e8:	00f50a63          	beq	a0,a5,1e1fc <_close_r+0x34>
   1e1ec:	00c12083          	lw	ra,12(sp)
   1e1f0:	00812403          	lw	s0,8(sp)
   1e1f4:	01010113          	addi	sp,sp,16
   1e1f8:	00008067          	ret
   1e1fc:	22418793          	addi	a5,gp,548 # 26ae4 <errno>
   1e200:	0007a783          	lw	a5,0(a5)
   1e204:	fe0784e3          	beqz	a5,1e1ec <_close_r+0x24>
   1e208:	00f42023          	sw	a5,0(s0)
   1e20c:	00c12083          	lw	ra,12(sp)
   1e210:	00812403          	lw	s0,8(sp)
   1e214:	01010113          	addi	sp,sp,16
   1e218:	00008067          	ret

0001e21c <_fclose_r>:
   1e21c:	ff010113          	addi	sp,sp,-16
   1e220:	00112623          	sw	ra,12(sp)
   1e224:	00812423          	sw	s0,8(sp)
   1e228:	00912223          	sw	s1,4(sp)
   1e22c:	01212023          	sw	s2,0(sp)
   1e230:	02058063          	beqz	a1,1e250 <_fclose_r+0x34>
   1e234:	00050493          	mv	s1,a0
   1e238:	00058413          	mv	s0,a1
   1e23c:	00050663          	beqz	a0,1e248 <_fclose_r+0x2c>
   1e240:	03852783          	lw	a5,56(a0)
   1e244:	0a078c63          	beqz	a5,1e2fc <_fclose_r+0xe0>
   1e248:	00c41783          	lh	a5,12(s0)
   1e24c:	02079263          	bnez	a5,1e270 <_fclose_r+0x54>
   1e250:	00c12083          	lw	ra,12(sp)
   1e254:	00812403          	lw	s0,8(sp)
   1e258:	00000913          	li	s2,0
   1e25c:	00090513          	mv	a0,s2
   1e260:	00412483          	lw	s1,4(sp)
   1e264:	00012903          	lw	s2,0(sp)
   1e268:	01010113          	addi	sp,sp,16
   1e26c:	00008067          	ret
   1e270:	00040593          	mv	a1,s0
   1e274:	00048513          	mv	a0,s1
   1e278:	fc8f50ef          	jal	ra,13a40 <__sflush_r>
   1e27c:	02c42783          	lw	a5,44(s0)
   1e280:	00050913          	mv	s2,a0
   1e284:	00078a63          	beqz	a5,1e298 <_fclose_r+0x7c>
   1e288:	01c42583          	lw	a1,28(s0)
   1e28c:	00048513          	mv	a0,s1
   1e290:	000780e7          	jalr	a5
   1e294:	06054c63          	bltz	a0,1e30c <_fclose_r+0xf0>
   1e298:	00c45783          	lhu	a5,12(s0)
   1e29c:	0807f793          	andi	a5,a5,128
   1e2a0:	06079e63          	bnez	a5,1e31c <_fclose_r+0x100>
   1e2a4:	03042583          	lw	a1,48(s0)
   1e2a8:	00058c63          	beqz	a1,1e2c0 <_fclose_r+0xa4>
   1e2ac:	04040793          	addi	a5,s0,64
   1e2b0:	00f58663          	beq	a1,a5,1e2bc <_fclose_r+0xa0>
   1e2b4:	00048513          	mv	a0,s1
   1e2b8:	f0df50ef          	jal	ra,141c4 <_free_r>
   1e2bc:	02042823          	sw	zero,48(s0)
   1e2c0:	04442583          	lw	a1,68(s0)
   1e2c4:	00058863          	beqz	a1,1e2d4 <_fclose_r+0xb8>
   1e2c8:	00048513          	mv	a0,s1
   1e2cc:	ef9f50ef          	jal	ra,141c4 <_free_r>
   1e2d0:	04042223          	sw	zero,68(s0)
   1e2d4:	d91f50ef          	jal	ra,14064 <__sfp_lock_acquire>
   1e2d8:	00041623          	sh	zero,12(s0)
   1e2dc:	d8df50ef          	jal	ra,14068 <__sfp_lock_release>
   1e2e0:	00c12083          	lw	ra,12(sp)
   1e2e4:	00812403          	lw	s0,8(sp)
   1e2e8:	00090513          	mv	a0,s2
   1e2ec:	00412483          	lw	s1,4(sp)
   1e2f0:	00012903          	lw	s2,0(sp)
   1e2f4:	01010113          	addi	sp,sp,16
   1e2f8:	00008067          	ret
   1e2fc:	d59f50ef          	jal	ra,14054 <__sinit>
   1e300:	00c41783          	lh	a5,12(s0)
   1e304:	f40786e3          	beqz	a5,1e250 <_fclose_r+0x34>
   1e308:	f69ff06f          	j	1e270 <_fclose_r+0x54>
   1e30c:	00c45783          	lhu	a5,12(s0)
   1e310:	fff00913          	li	s2,-1
   1e314:	0807f793          	andi	a5,a5,128
   1e318:	f80786e3          	beqz	a5,1e2a4 <_fclose_r+0x88>
   1e31c:	01042583          	lw	a1,16(s0)
   1e320:	00048513          	mv	a0,s1
   1e324:	ea1f50ef          	jal	ra,141c4 <_free_r>
   1e328:	f7dff06f          	j	1e2a4 <_fclose_r+0x88>

0001e32c <fclose>:
   1e32c:	1c018793          	addi	a5,gp,448 # 26a80 <_impure_ptr>
   1e330:	00050593          	mv	a1,a0
   1e334:	0007a503          	lw	a0,0(a5)
   1e338:	ee5ff06f          	j	1e21c <_fclose_r>

0001e33c <__fputwc>:
   1e33c:	fd010113          	addi	sp,sp,-48
   1e340:	02812423          	sw	s0,40(sp)
   1e344:	01312e23          	sw	s3,28(sp)
   1e348:	01512a23          	sw	s5,20(sp)
   1e34c:	02112623          	sw	ra,44(sp)
   1e350:	02912223          	sw	s1,36(sp)
   1e354:	03212023          	sw	s2,32(sp)
   1e358:	01412c23          	sw	s4,24(sp)
   1e35c:	01612823          	sw	s6,16(sp)
   1e360:	00050993          	mv	s3,a0
   1e364:	00058a93          	mv	s5,a1
   1e368:	00060413          	mv	s0,a2
   1e36c:	b84f90ef          	jal	ra,176f0 <__locale_mb_cur_max>
   1e370:	00100793          	li	a5,1
   1e374:	02f51063          	bne	a0,a5,1e394 <__fputwc+0x58>
   1e378:	fffa8793          	addi	a5,s5,-1
   1e37c:	0fe00713          	li	a4,254
   1e380:	00f76a63          	bltu	a4,a5,1e394 <__fputwc+0x58>
   1e384:	0ffaf713          	andi	a4,s5,255
   1e388:	00e10623          	sb	a4,12(sp)
   1e38c:	00100913          	li	s2,1
   1e390:	02c0006f          	j	1e3bc <__fputwc+0x80>
   1e394:	05c40693          	addi	a3,s0,92
   1e398:	000a8613          	mv	a2,s5
   1e39c:	00c10593          	addi	a1,sp,12
   1e3a0:	00098513          	mv	a0,s3
   1e3a4:	069010ef          	jal	ra,1fc0c <_wcrtomb_r>
   1e3a8:	fff00793          	li	a5,-1
   1e3ac:	00050913          	mv	s2,a0
   1e3b0:	0af50463          	beq	a0,a5,1e458 <__fputwc+0x11c>
   1e3b4:	08050e63          	beqz	a0,1e450 <__fputwc+0x114>
   1e3b8:	00c14703          	lbu	a4,12(sp)
   1e3bc:	00000493          	li	s1,0
   1e3c0:	fff00a13          	li	s4,-1
   1e3c4:	00a00b13          	li	s6,10
   1e3c8:	0280006f          	j	1e3f0 <__fputwc+0xb4>
   1e3cc:	00042783          	lw	a5,0(s0)
   1e3d0:	00178693          	addi	a3,a5,1
   1e3d4:	00d42023          	sw	a3,0(s0)
   1e3d8:	00e78023          	sb	a4,0(a5)
   1e3dc:	00148493          	addi	s1,s1,1
   1e3e0:	00c10793          	addi	a5,sp,12
   1e3e4:	009787b3          	add	a5,a5,s1
   1e3e8:	0724f463          	bgeu	s1,s2,1e450 <__fputwc+0x114>
   1e3ec:	0007c703          	lbu	a4,0(a5)
   1e3f0:	00842783          	lw	a5,8(s0)
   1e3f4:	fff78793          	addi	a5,a5,-1
   1e3f8:	00f42423          	sw	a5,8(s0)
   1e3fc:	fc07d8e3          	bgez	a5,1e3cc <__fputwc+0x90>
   1e400:	01842683          	lw	a3,24(s0)
   1e404:	00070593          	mv	a1,a4
   1e408:	00040613          	mv	a2,s0
   1e40c:	00098513          	mv	a0,s3
   1e410:	00d7c463          	blt	a5,a3,1e418 <__fputwc+0xdc>
   1e414:	fb671ce3          	bne	a4,s6,1e3cc <__fputwc+0x90>
   1e418:	65c010ef          	jal	ra,1fa74 <__swbuf_r>
   1e41c:	fd4510e3          	bne	a0,s4,1e3dc <__fputwc+0xa0>
   1e420:	fff00913          	li	s2,-1
   1e424:	02c12083          	lw	ra,44(sp)
   1e428:	02812403          	lw	s0,40(sp)
   1e42c:	00090513          	mv	a0,s2
   1e430:	02412483          	lw	s1,36(sp)
   1e434:	02012903          	lw	s2,32(sp)
   1e438:	01c12983          	lw	s3,28(sp)
   1e43c:	01812a03          	lw	s4,24(sp)
   1e440:	01412a83          	lw	s5,20(sp)
   1e444:	01012b03          	lw	s6,16(sp)
   1e448:	03010113          	addi	sp,sp,48
   1e44c:	00008067          	ret
   1e450:	000a8913          	mv	s2,s5
   1e454:	fd1ff06f          	j	1e424 <__fputwc+0xe8>
   1e458:	00c45783          	lhu	a5,12(s0)
   1e45c:	0407e793          	ori	a5,a5,64
   1e460:	00f41623          	sh	a5,12(s0)
   1e464:	fc1ff06f          	j	1e424 <__fputwc+0xe8>

0001e468 <_fputwc_r>:
   1e468:	00c61783          	lh	a5,12(a2)
   1e46c:	01279713          	slli	a4,a5,0x12
   1e470:	02074063          	bltz	a4,1e490 <_fputwc_r+0x28>
   1e474:	06462703          	lw	a4,100(a2)
   1e478:	000026b7          	lui	a3,0x2
   1e47c:	00d7e7b3          	or	a5,a5,a3
   1e480:	000026b7          	lui	a3,0x2
   1e484:	00d76733          	or	a4,a4,a3
   1e488:	00f61623          	sh	a5,12(a2)
   1e48c:	06e62223          	sw	a4,100(a2)
   1e490:	eadff06f          	j	1e33c <__fputwc>

0001e494 <fputwc>:
   1e494:	fe010113          	addi	sp,sp,-32
   1e498:	1c018793          	addi	a5,gp,448 # 26a80 <_impure_ptr>
   1e49c:	00812c23          	sw	s0,24(sp)
   1e4a0:	0007a403          	lw	s0,0(a5)
   1e4a4:	00912a23          	sw	s1,20(sp)
   1e4a8:	00112e23          	sw	ra,28(sp)
   1e4ac:	00050493          	mv	s1,a0
   1e4b0:	00058613          	mv	a2,a1
   1e4b4:	00040663          	beqz	s0,1e4c0 <fputwc+0x2c>
   1e4b8:	03842783          	lw	a5,56(s0)
   1e4bc:	04078463          	beqz	a5,1e504 <fputwc+0x70>
   1e4c0:	00c61783          	lh	a5,12(a2)
   1e4c4:	01279713          	slli	a4,a5,0x12
   1e4c8:	02074063          	bltz	a4,1e4e8 <fputwc+0x54>
   1e4cc:	06462703          	lw	a4,100(a2)
   1e4d0:	000026b7          	lui	a3,0x2
   1e4d4:	00d7e7b3          	or	a5,a5,a3
   1e4d8:	000026b7          	lui	a3,0x2
   1e4dc:	00d76733          	or	a4,a4,a3
   1e4e0:	00f61623          	sh	a5,12(a2)
   1e4e4:	06e62223          	sw	a4,100(a2)
   1e4e8:	00040513          	mv	a0,s0
   1e4ec:	01812403          	lw	s0,24(sp)
   1e4f0:	01c12083          	lw	ra,28(sp)
   1e4f4:	00048593          	mv	a1,s1
   1e4f8:	01412483          	lw	s1,20(sp)
   1e4fc:	02010113          	addi	sp,sp,32
   1e500:	e3dff06f          	j	1e33c <__fputwc>
   1e504:	00040513          	mv	a0,s0
   1e508:	00b12623          	sw	a1,12(sp)
   1e50c:	b49f50ef          	jal	ra,14054 <__sinit>
   1e510:	00c12603          	lw	a2,12(sp)
   1e514:	fadff06f          	j	1e4c0 <fputwc+0x2c>

0001e518 <_fstat_r>:
   1e518:	00058793          	mv	a5,a1
   1e51c:	ff010113          	addi	sp,sp,-16
   1e520:	00812423          	sw	s0,8(sp)
   1e524:	00060593          	mv	a1,a2
   1e528:	00050413          	mv	s0,a0
   1e52c:	00078513          	mv	a0,a5
   1e530:	00112623          	sw	ra,12(sp)
   1e534:	2201a223          	sw	zero,548(gp) # 26ae4 <errno>
   1e538:	079010ef          	jal	ra,1fdb0 <_fstat>
   1e53c:	fff00793          	li	a5,-1
   1e540:	00f50a63          	beq	a0,a5,1e554 <_fstat_r+0x3c>
   1e544:	00c12083          	lw	ra,12(sp)
   1e548:	00812403          	lw	s0,8(sp)
   1e54c:	01010113          	addi	sp,sp,16
   1e550:	00008067          	ret
   1e554:	22418793          	addi	a5,gp,548 # 26ae4 <errno>
   1e558:	0007a783          	lw	a5,0(a5)
   1e55c:	fe0784e3          	beqz	a5,1e544 <_fstat_r+0x2c>
   1e560:	00f42023          	sw	a5,0(s0)
   1e564:	00c12083          	lw	ra,12(sp)
   1e568:	00812403          	lw	s0,8(sp)
   1e56c:	01010113          	addi	sp,sp,16
   1e570:	00008067          	ret

0001e574 <_isatty_r>:
   1e574:	ff010113          	addi	sp,sp,-16
   1e578:	00812423          	sw	s0,8(sp)
   1e57c:	00050413          	mv	s0,a0
   1e580:	00058513          	mv	a0,a1
   1e584:	2201a223          	sw	zero,548(gp) # 26ae4 <errno>
   1e588:	00112623          	sw	ra,12(sp)
   1e58c:	095010ef          	jal	ra,1fe20 <_isatty>
   1e590:	fff00793          	li	a5,-1
   1e594:	00f50a63          	beq	a0,a5,1e5a8 <_isatty_r+0x34>
   1e598:	00c12083          	lw	ra,12(sp)
   1e59c:	00812403          	lw	s0,8(sp)
   1e5a0:	01010113          	addi	sp,sp,16
   1e5a4:	00008067          	ret
   1e5a8:	22418793          	addi	a5,gp,548 # 26ae4 <errno>
   1e5ac:	0007a783          	lw	a5,0(a5)
   1e5b0:	fe0784e3          	beqz	a5,1e598 <_isatty_r+0x24>
   1e5b4:	00f42023          	sw	a5,0(s0)
   1e5b8:	00c12083          	lw	ra,12(sp)
   1e5bc:	00812403          	lw	s0,8(sp)
   1e5c0:	01010113          	addi	sp,sp,16
   1e5c4:	00008067          	ret

0001e5c8 <_lseek_r>:
   1e5c8:	00058793          	mv	a5,a1
   1e5cc:	ff010113          	addi	sp,sp,-16
   1e5d0:	00812423          	sw	s0,8(sp)
   1e5d4:	00060593          	mv	a1,a2
   1e5d8:	00050413          	mv	s0,a0
   1e5dc:	00068613          	mv	a2,a3
   1e5e0:	00078513          	mv	a0,a5
   1e5e4:	00112623          	sw	ra,12(sp)
   1e5e8:	2201a223          	sw	zero,548(gp) # 26ae4 <errno>
   1e5ec:	075010ef          	jal	ra,1fe60 <_lseek>
   1e5f0:	fff00793          	li	a5,-1
   1e5f4:	00f50a63          	beq	a0,a5,1e608 <_lseek_r+0x40>
   1e5f8:	00c12083          	lw	ra,12(sp)
   1e5fc:	00812403          	lw	s0,8(sp)
   1e600:	01010113          	addi	sp,sp,16
   1e604:	00008067          	ret
   1e608:	22418793          	addi	a5,gp,548 # 26ae4 <errno>
   1e60c:	0007a783          	lw	a5,0(a5)
   1e610:	fe0784e3          	beqz	a5,1e5f8 <_lseek_r+0x30>
   1e614:	00f42023          	sw	a5,0(s0)
   1e618:	00c12083          	lw	ra,12(sp)
   1e61c:	00812403          	lw	s0,8(sp)
   1e620:	01010113          	addi	sp,sp,16
   1e624:	00008067          	ret

0001e628 <_read_r>:
   1e628:	00058793          	mv	a5,a1
   1e62c:	ff010113          	addi	sp,sp,-16
   1e630:	00812423          	sw	s0,8(sp)
   1e634:	00060593          	mv	a1,a2
   1e638:	00050413          	mv	s0,a0
   1e63c:	00068613          	mv	a2,a3
   1e640:	00078513          	mv	a0,a5
   1e644:	00112623          	sw	ra,12(sp)
   1e648:	2201a223          	sw	zero,548(gp) # 26ae4 <errno>
   1e64c:	065010ef          	jal	ra,1feb0 <_read>
   1e650:	fff00793          	li	a5,-1
   1e654:	00f50a63          	beq	a0,a5,1e668 <_read_r+0x40>
   1e658:	00c12083          	lw	ra,12(sp)
   1e65c:	00812403          	lw	s0,8(sp)
   1e660:	01010113          	addi	sp,sp,16
   1e664:	00008067          	ret
   1e668:	22418793          	addi	a5,gp,548 # 26ae4 <errno>
   1e66c:	0007a783          	lw	a5,0(a5)
   1e670:	fe0784e3          	beqz	a5,1e658 <_read_r+0x30>
   1e674:	00f42023          	sw	a5,0(s0)
   1e678:	00c12083          	lw	ra,12(sp)
   1e67c:	00812403          	lw	s0,8(sp)
   1e680:	01010113          	addi	sp,sp,16
   1e684:	00008067          	ret

0001e688 <cleanup_glue>:
   1e688:	ff010113          	addi	sp,sp,-16
   1e68c:	00812423          	sw	s0,8(sp)
   1e690:	00058413          	mv	s0,a1
   1e694:	0005a583          	lw	a1,0(a1)
   1e698:	00912223          	sw	s1,4(sp)
   1e69c:	00112623          	sw	ra,12(sp)
   1e6a0:	00050493          	mv	s1,a0
   1e6a4:	00058463          	beqz	a1,1e6ac <cleanup_glue+0x24>
   1e6a8:	fe1ff0ef          	jal	ra,1e688 <cleanup_glue>
   1e6ac:	00040593          	mv	a1,s0
   1e6b0:	00812403          	lw	s0,8(sp)
   1e6b4:	00c12083          	lw	ra,12(sp)
   1e6b8:	00048513          	mv	a0,s1
   1e6bc:	00412483          	lw	s1,4(sp)
   1e6c0:	01010113          	addi	sp,sp,16
   1e6c4:	b01f506f          	j	141c4 <_free_r>

0001e6c8 <_reclaim_reent>:
   1e6c8:	1c018793          	addi	a5,gp,448 # 26a80 <_impure_ptr>
   1e6cc:	0007a783          	lw	a5,0(a5)
   1e6d0:	10a78263          	beq	a5,a0,1e7d4 <_reclaim_reent+0x10c>
   1e6d4:	04c52703          	lw	a4,76(a0)
   1e6d8:	fe010113          	addi	sp,sp,-32
   1e6dc:	00912a23          	sw	s1,20(sp)
   1e6e0:	00112e23          	sw	ra,28(sp)
   1e6e4:	00812c23          	sw	s0,24(sp)
   1e6e8:	01212823          	sw	s2,16(sp)
   1e6ec:	01312623          	sw	s3,12(sp)
   1e6f0:	00050493          	mv	s1,a0
   1e6f4:	04070263          	beqz	a4,1e738 <_reclaim_reent+0x70>
   1e6f8:	00000913          	li	s2,0
   1e6fc:	08000993          	li	s3,128
   1e700:	012707b3          	add	a5,a4,s2
   1e704:	0007a583          	lw	a1,0(a5)
   1e708:	00058e63          	beqz	a1,1e724 <_reclaim_reent+0x5c>
   1e70c:	0005a403          	lw	s0,0(a1)
   1e710:	00048513          	mv	a0,s1
   1e714:	ab1f50ef          	jal	ra,141c4 <_free_r>
   1e718:	00040593          	mv	a1,s0
   1e71c:	fe0418e3          	bnez	s0,1e70c <_reclaim_reent+0x44>
   1e720:	04c4a703          	lw	a4,76(s1)
   1e724:	00490913          	addi	s2,s2,4
   1e728:	fd391ce3          	bne	s2,s3,1e700 <_reclaim_reent+0x38>
   1e72c:	00070593          	mv	a1,a4
   1e730:	00048513          	mv	a0,s1
   1e734:	a91f50ef          	jal	ra,141c4 <_free_r>
   1e738:	0404a583          	lw	a1,64(s1)
   1e73c:	00058663          	beqz	a1,1e748 <_reclaim_reent+0x80>
   1e740:	00048513          	mv	a0,s1
   1e744:	a81f50ef          	jal	ra,141c4 <_free_r>
   1e748:	1484a583          	lw	a1,328(s1)
   1e74c:	02058063          	beqz	a1,1e76c <_reclaim_reent+0xa4>
   1e750:	14c48913          	addi	s2,s1,332
   1e754:	01258c63          	beq	a1,s2,1e76c <_reclaim_reent+0xa4>
   1e758:	0005a403          	lw	s0,0(a1)
   1e75c:	00048513          	mv	a0,s1
   1e760:	a65f50ef          	jal	ra,141c4 <_free_r>
   1e764:	00040593          	mv	a1,s0
   1e768:	fe8918e3          	bne	s2,s0,1e758 <_reclaim_reent+0x90>
   1e76c:	0544a583          	lw	a1,84(s1)
   1e770:	00058663          	beqz	a1,1e77c <_reclaim_reent+0xb4>
   1e774:	00048513          	mv	a0,s1
   1e778:	a4df50ef          	jal	ra,141c4 <_free_r>
   1e77c:	0384a783          	lw	a5,56(s1)
   1e780:	02078c63          	beqz	a5,1e7b8 <_reclaim_reent+0xf0>
   1e784:	03c4a783          	lw	a5,60(s1)
   1e788:	00048513          	mv	a0,s1
   1e78c:	000780e7          	jalr	a5
   1e790:	2e04a583          	lw	a1,736(s1)
   1e794:	02058263          	beqz	a1,1e7b8 <_reclaim_reent+0xf0>
   1e798:	01812403          	lw	s0,24(sp)
   1e79c:	01c12083          	lw	ra,28(sp)
   1e7a0:	01012903          	lw	s2,16(sp)
   1e7a4:	00c12983          	lw	s3,12(sp)
   1e7a8:	00048513          	mv	a0,s1
   1e7ac:	01412483          	lw	s1,20(sp)
   1e7b0:	02010113          	addi	sp,sp,32
   1e7b4:	ed5ff06f          	j	1e688 <cleanup_glue>
   1e7b8:	01c12083          	lw	ra,28(sp)
   1e7bc:	01812403          	lw	s0,24(sp)
   1e7c0:	01412483          	lw	s1,20(sp)
   1e7c4:	01012903          	lw	s2,16(sp)
   1e7c8:	00c12983          	lw	s3,12(sp)
   1e7cc:	02010113          	addi	sp,sp,32
   1e7d0:	00008067          	ret
   1e7d4:	00008067          	ret

0001e7d8 <__ssprint_r>:
   1e7d8:	00862783          	lw	a5,8(a2)
   1e7dc:	fd010113          	addi	sp,sp,-48
   1e7e0:	01512a23          	sw	s5,20(sp)
   1e7e4:	02112623          	sw	ra,44(sp)
   1e7e8:	02812423          	sw	s0,40(sp)
   1e7ec:	02912223          	sw	s1,36(sp)
   1e7f0:	03212023          	sw	s2,32(sp)
   1e7f4:	01312e23          	sw	s3,28(sp)
   1e7f8:	01412c23          	sw	s4,24(sp)
   1e7fc:	01612823          	sw	s6,16(sp)
   1e800:	01712623          	sw	s7,12(sp)
   1e804:	01812423          	sw	s8,8(sp)
   1e808:	00060a93          	mv	s5,a2
   1e80c:	14078863          	beqz	a5,1e95c <__ssprint_r+0x184>
   1e810:	00050b13          	mv	s6,a0
   1e814:	00058413          	mv	s0,a1
   1e818:	00062983          	lw	s3,0(a2)
   1e81c:	0005a503          	lw	a0,0(a1)
   1e820:	0085a483          	lw	s1,8(a1)
   1e824:	0d40006f          	j	1e8f8 <__ssprint_r+0x120>
   1e828:	00c45783          	lhu	a5,12(s0)
   1e82c:	4807f713          	andi	a4,a5,1152
   1e830:	08070a63          	beqz	a4,1e8c4 <__ssprint_r+0xec>
   1e834:	01442683          	lw	a3,20(s0)
   1e838:	01042583          	lw	a1,16(s0)
   1e83c:	00190713          	addi	a4,s2,1
   1e840:	00169493          	slli	s1,a3,0x1
   1e844:	00d486b3          	add	a3,s1,a3
   1e848:	01f6d493          	srli	s1,a3,0x1f
   1e84c:	40b50a33          	sub	s4,a0,a1
   1e850:	00d484b3          	add	s1,s1,a3
   1e854:	4014d493          	srai	s1,s1,0x1
   1e858:	01470733          	add	a4,a4,s4
   1e85c:	00048613          	mv	a2,s1
   1e860:	00e4f663          	bgeu	s1,a4,1e86c <__ssprint_r+0x94>
   1e864:	00070493          	mv	s1,a4
   1e868:	00070613          	mv	a2,a4
   1e86c:	4007f793          	andi	a5,a5,1024
   1e870:	0a078663          	beqz	a5,1e91c <__ssprint_r+0x144>
   1e874:	00060593          	mv	a1,a2
   1e878:	000b0513          	mv	a0,s6
   1e87c:	880f90ef          	jal	ra,178fc <_malloc_r>
   1e880:	00050c13          	mv	s8,a0
   1e884:	0a050a63          	beqz	a0,1e938 <__ssprint_r+0x160>
   1e888:	01042583          	lw	a1,16(s0)
   1e88c:	000a0613          	mv	a2,s4
   1e890:	989f90ef          	jal	ra,18218 <memcpy>
   1e894:	00c45783          	lhu	a5,12(s0)
   1e898:	b7f7f793          	andi	a5,a5,-1153
   1e89c:	0807e793          	ori	a5,a5,128
   1e8a0:	00f41623          	sh	a5,12(s0)
   1e8a4:	014c0533          	add	a0,s8,s4
   1e8a8:	41448a33          	sub	s4,s1,s4
   1e8ac:	00942a23          	sw	s1,20(s0)
   1e8b0:	01442423          	sw	s4,8(s0)
   1e8b4:	01842823          	sw	s8,16(s0)
   1e8b8:	00a42023          	sw	a0,0(s0)
   1e8bc:	00090493          	mv	s1,s2
   1e8c0:	00090a13          	mv	s4,s2
   1e8c4:	000a0613          	mv	a2,s4
   1e8c8:	000b8593          	mv	a1,s7
   1e8cc:	a69f90ef          	jal	ra,18334 <memmove>
   1e8d0:	00842703          	lw	a4,8(s0)
   1e8d4:	00042503          	lw	a0,0(s0)
   1e8d8:	008aa783          	lw	a5,8(s5)
   1e8dc:	409704b3          	sub	s1,a4,s1
   1e8e0:	01450533          	add	a0,a0,s4
   1e8e4:	00942423          	sw	s1,8(s0)
   1e8e8:	00a42023          	sw	a0,0(s0)
   1e8ec:	41278933          	sub	s2,a5,s2
   1e8f0:	012aa423          	sw	s2,8(s5)
   1e8f4:	06090463          	beqz	s2,1e95c <__ssprint_r+0x184>
   1e8f8:	0049a903          	lw	s2,4(s3)
   1e8fc:	0009ab83          	lw	s7,0(s3)
   1e900:	00048a13          	mv	s4,s1
   1e904:	00898993          	addi	s3,s3,8
   1e908:	fe0908e3          	beqz	s2,1e8f8 <__ssprint_r+0x120>
   1e90c:	f0997ee3          	bgeu	s2,s1,1e828 <__ssprint_r+0x50>
   1e910:	00090493          	mv	s1,s2
   1e914:	00090a13          	mv	s4,s2
   1e918:	fadff06f          	j	1e8c4 <__ssprint_r+0xec>
   1e91c:	000b0513          	mv	a0,s6
   1e920:	bedfa0ef          	jal	ra,1950c <_realloc_r>
   1e924:	00050c13          	mv	s8,a0
   1e928:	f6051ee3          	bnez	a0,1e8a4 <__ssprint_r+0xcc>
   1e92c:	01042583          	lw	a1,16(s0)
   1e930:	000b0513          	mv	a0,s6
   1e934:	891f50ef          	jal	ra,141c4 <_free_r>
   1e938:	00c00793          	li	a5,12
   1e93c:	00fb2023          	sw	a5,0(s6)
   1e940:	00c45783          	lhu	a5,12(s0)
   1e944:	fff00513          	li	a0,-1
   1e948:	0407e793          	ori	a5,a5,64
   1e94c:	00f41623          	sh	a5,12(s0)
   1e950:	000aa423          	sw	zero,8(s5)
   1e954:	000aa223          	sw	zero,4(s5)
   1e958:	00c0006f          	j	1e964 <__ssprint_r+0x18c>
   1e95c:	000aa223          	sw	zero,4(s5)
   1e960:	00000513          	li	a0,0
   1e964:	02c12083          	lw	ra,44(sp)
   1e968:	02812403          	lw	s0,40(sp)
   1e96c:	02412483          	lw	s1,36(sp)
   1e970:	02012903          	lw	s2,32(sp)
   1e974:	01c12983          	lw	s3,28(sp)
   1e978:	01812a03          	lw	s4,24(sp)
   1e97c:	01412a83          	lw	s5,20(sp)
   1e980:	01012b03          	lw	s6,16(sp)
   1e984:	00c12b83          	lw	s7,12(sp)
   1e988:	00812c03          	lw	s8,8(sp)
   1e98c:	03010113          	addi	sp,sp,48
   1e990:	00008067          	ret

0001e994 <_svfiprintf_r>:
   1e994:	00c5d783          	lhu	a5,12(a1)
   1e998:	ed010113          	addi	sp,sp,-304
   1e99c:	11312e23          	sw	s3,284(sp)
   1e9a0:	11412c23          	sw	s4,280(sp)
   1e9a4:	11812423          	sw	s8,264(sp)
   1e9a8:	12112623          	sw	ra,300(sp)
   1e9ac:	12812423          	sw	s0,296(sp)
   1e9b0:	12912223          	sw	s1,292(sp)
   1e9b4:	13212023          	sw	s2,288(sp)
   1e9b8:	11512a23          	sw	s5,276(sp)
   1e9bc:	11612823          	sw	s6,272(sp)
   1e9c0:	11712623          	sw	s7,268(sp)
   1e9c4:	11912223          	sw	s9,260(sp)
   1e9c8:	11a12023          	sw	s10,256(sp)
   1e9cc:	0fb12e23          	sw	s11,252(sp)
   1e9d0:	0807f793          	andi	a5,a5,128
   1e9d4:	00d12623          	sw	a3,12(sp)
   1e9d8:	00058993          	mv	s3,a1
   1e9dc:	00050a13          	mv	s4,a0
   1e9e0:	00060c13          	mv	s8,a2
   1e9e4:	00078663          	beqz	a5,1e9f0 <_svfiprintf_r+0x5c>
   1e9e8:	0105a783          	lw	a5,16(a1)
   1e9ec:	560786e3          	beqz	a5,1f758 <_svfiprintf_r+0xdc4>
   1e9f0:	ffff87b7          	lui	a5,0xffff8
   1e9f4:	04c10493          	addi	s1,sp,76
   1e9f8:	8307c793          	xori	a5,a5,-2000
   1e9fc:	04912023          	sw	s1,64(sp)
   1ea00:	04012423          	sw	zero,72(sp)
   1ea04:	04012223          	sw	zero,68(sp)
   1ea08:	00012823          	sw	zero,16(sp)
   1ea0c:	00012c23          	sw	zero,24(sp)
   1ea10:	02012023          	sw	zero,32(sp)
   1ea14:	00012e23          	sw	zero,28(sp)
   1ea18:	00012423          	sw	zero,8(sp)
   1ea1c:	00007a97          	auipc	s5,0x7
   1ea20:	050a8a93          	addi	s5,s5,80 # 25a6c <_ctype_+0x104>
   1ea24:	02f12223          	sw	a5,36(sp)
   1ea28:	00048413          	mv	s0,s1
   1ea2c:	000c0d13          	mv	s10,s8
   1ea30:	000d4783          	lbu	a5,0(s10)
   1ea34:	12078063          	beqz	a5,1eb54 <_svfiprintf_r+0x1c0>
   1ea38:	02500693          	li	a3,37
   1ea3c:	4ad786e3          	beq	a5,a3,1f6e8 <_svfiprintf_r+0xd54>
   1ea40:	000d0913          	mv	s2,s10
   1ea44:	00c0006f          	j	1ea50 <_svfiprintf_r+0xbc>
   1ea48:	0ed78263          	beq	a5,a3,1eb2c <_svfiprintf_r+0x198>
   1ea4c:	000b0913          	mv	s2,s6
   1ea50:	00194783          	lbu	a5,1(s2)
   1ea54:	00190b13          	addi	s6,s2,1
   1ea58:	fe0798e3          	bnez	a5,1ea48 <_svfiprintf_r+0xb4>
   1ea5c:	41ab0c33          	sub	s8,s6,s10
   1ea60:	0e0c0a63          	beqz	s8,1eb54 <_svfiprintf_r+0x1c0>
   1ea64:	04812703          	lw	a4,72(sp)
   1ea68:	04412783          	lw	a5,68(sp)
   1ea6c:	01a42023          	sw	s10,0(s0)
   1ea70:	01870733          	add	a4,a4,s8
   1ea74:	00178793          	addi	a5,a5,1 # ffff8001 <__BSS_END__+0xfffd1519>
   1ea78:	01842223          	sw	s8,4(s0)
   1ea7c:	04e12423          	sw	a4,72(sp)
   1ea80:	04f12223          	sw	a5,68(sp)
   1ea84:	00700713          	li	a4,7
   1ea88:	00840413          	addi	s0,s0,8
   1ea8c:	0af74663          	blt	a4,a5,1eb38 <_svfiprintf_r+0x1a4>
   1ea90:	00812703          	lw	a4,8(sp)
   1ea94:	00194783          	lbu	a5,1(s2)
   1ea98:	01870733          	add	a4,a4,s8
   1ea9c:	00e12423          	sw	a4,8(sp)
   1eaa0:	0a078a63          	beqz	a5,1eb54 <_svfiprintf_r+0x1c0>
   1eaa4:	001b0d13          	addi	s10,s6,1
   1eaa8:	001b4683          	lbu	a3,1(s6)
   1eaac:	02010da3          	sb	zero,59(sp)
   1eab0:	fff00c13          	li	s8,-1
   1eab4:	00000913          	li	s2,0
   1eab8:	00000c93          	li	s9,0
   1eabc:	02a00b13          	li	s6,42
   1eac0:	001d0d13          	addi	s10,s10,1
   1eac4:	05a00713          	li	a4,90
   1eac8:	fe068793          	addi	a5,a3,-32 # 1fe0 <register_fini-0xe094>
   1eacc:	1af76e63          	bltu	a4,a5,1ec88 <_svfiprintf_r+0x2f4>
   1ead0:	00279793          	slli	a5,a5,0x2
   1ead4:	015787b3          	add	a5,a5,s5
   1ead8:	0007a783          	lw	a5,0(a5)
   1eadc:	015787b3          	add	a5,a5,s5
   1eae0:	00078067          	jr	a5
   1eae4:	000a0513          	mv	a0,s4
   1eae8:	b7df80ef          	jal	ra,17664 <_localeconv_r>
   1eaec:	00452783          	lw	a5,4(a0)
   1eaf0:	00078513          	mv	a0,a5
   1eaf4:	00f12e23          	sw	a5,28(sp)
   1eaf8:	fd9f10ef          	jal	ra,10ad0 <strlen>
   1eafc:	02a12023          	sw	a0,32(sp)
   1eb00:	00050b93          	mv	s7,a0
   1eb04:	000a0513          	mv	a0,s4
   1eb08:	b5df80ef          	jal	ra,17664 <_localeconv_r>
   1eb0c:	00852783          	lw	a5,8(a0)
   1eb10:	00f12c23          	sw	a5,24(sp)
   1eb14:	3c0b9ee3          	bnez	s7,1f6f0 <_svfiprintf_r+0xd5c>
   1eb18:	000d4683          	lbu	a3,0(s10)
   1eb1c:	fa5ff06f          	j	1eac0 <_svfiprintf_r+0x12c>
   1eb20:	020cec93          	ori	s9,s9,32
   1eb24:	000d4683          	lbu	a3,0(s10)
   1eb28:	f99ff06f          	j	1eac0 <_svfiprintf_r+0x12c>
   1eb2c:	41ab0c33          	sub	s8,s6,s10
   1eb30:	f60c0ae3          	beqz	s8,1eaa4 <_svfiprintf_r+0x110>
   1eb34:	f31ff06f          	j	1ea64 <_svfiprintf_r+0xd0>
   1eb38:	04010613          	addi	a2,sp,64
   1eb3c:	00098593          	mv	a1,s3
   1eb40:	000a0513          	mv	a0,s4
   1eb44:	c95ff0ef          	jal	ra,1e7d8 <__ssprint_r>
   1eb48:	02051263          	bnez	a0,1eb6c <_svfiprintf_r+0x1d8>
   1eb4c:	00048413          	mv	s0,s1
   1eb50:	f41ff06f          	j	1ea90 <_svfiprintf_r+0xfc>
   1eb54:	04812783          	lw	a5,72(sp)
   1eb58:	00078a63          	beqz	a5,1eb6c <_svfiprintf_r+0x1d8>
   1eb5c:	04010613          	addi	a2,sp,64
   1eb60:	00098593          	mv	a1,s3
   1eb64:	000a0513          	mv	a0,s4
   1eb68:	c71ff0ef          	jal	ra,1e7d8 <__ssprint_r>
   1eb6c:	00c9d783          	lhu	a5,12(s3)
   1eb70:	0407f793          	andi	a5,a5,64
   1eb74:	6a0792e3          	bnez	a5,1fa18 <_svfiprintf_r+0x1084>
   1eb78:	12c12083          	lw	ra,300(sp)
   1eb7c:	12812403          	lw	s0,296(sp)
   1eb80:	00812503          	lw	a0,8(sp)
   1eb84:	12412483          	lw	s1,292(sp)
   1eb88:	12012903          	lw	s2,288(sp)
   1eb8c:	11c12983          	lw	s3,284(sp)
   1eb90:	11812a03          	lw	s4,280(sp)
   1eb94:	11412a83          	lw	s5,276(sp)
   1eb98:	11012b03          	lw	s6,272(sp)
   1eb9c:	10c12b83          	lw	s7,268(sp)
   1eba0:	10812c03          	lw	s8,264(sp)
   1eba4:	10412c83          	lw	s9,260(sp)
   1eba8:	10012d03          	lw	s10,256(sp)
   1ebac:	0fc12d83          	lw	s11,252(sp)
   1ebb0:	13010113          	addi	sp,sp,304
   1ebb4:	00008067          	ret
   1ebb8:	00006797          	auipc	a5,0x6
   1ebbc:	6c078793          	addi	a5,a5,1728 # 25278 <zeroes.4505+0x34>
   1ebc0:	00f12823          	sw	a5,16(sp)
   1ebc4:	020cf793          	andi	a5,s9,32
   1ebc8:	4c078663          	beqz	a5,1f094 <_svfiprintf_r+0x700>
   1ebcc:	00c12783          	lw	a5,12(sp)
   1ebd0:	00778613          	addi	a2,a5,7
   1ebd4:	ff867613          	andi	a2,a2,-8
   1ebd8:	00062d83          	lw	s11,0(a2)
   1ebdc:	00462303          	lw	t1,4(a2)
   1ebe0:	00860793          	addi	a5,a2,8
   1ebe4:	00f12623          	sw	a5,12(sp)
   1ebe8:	001cf613          	andi	a2,s9,1
   1ebec:	00060663          	beqz	a2,1ebf8 <_svfiprintf_r+0x264>
   1ebf0:	006de633          	or	a2,s11,t1
   1ebf4:	30061ce3          	bnez	a2,1f70c <_svfiprintf_r+0xd78>
   1ebf8:	bffcfb13          	andi	s6,s9,-1025
   1ebfc:	00200693          	li	a3,2
   1ec00:	02010da3          	sb	zero,59(sp)
   1ec04:	fff00613          	li	a2,-1
   1ec08:	5ecc0c63          	beq	s8,a2,1f200 <_svfiprintf_r+0x86c>
   1ec0c:	006de633          	or	a2,s11,t1
   1ec10:	f7fb7c93          	andi	s9,s6,-129
   1ec14:	100616e3          	bnez	a2,1f520 <_svfiprintf_r+0xb8c>
   1ec18:	6c0c1a63          	bnez	s8,1f2ec <_svfiprintf_r+0x958>
   1ec1c:	26069ee3          	bnez	a3,1f698 <_svfiprintf_r+0xd04>
   1ec20:	001b7d93          	andi	s11,s6,1
   1ec24:	0f010b93          	addi	s7,sp,240
   1ec28:	000d8863          	beqz	s11,1ec38 <_svfiprintf_r+0x2a4>
   1ec2c:	03000793          	li	a5,48
   1ec30:	0ef107a3          	sb	a5,239(sp)
   1ec34:	0ef10b93          	addi	s7,sp,239
   1ec38:	000c0b13          	mv	s6,s8
   1ec3c:	01bc5463          	bge	s8,s11,1ec44 <_svfiprintf_r+0x2b0>
   1ec40:	000d8b13          	mv	s6,s11
   1ec44:	03b14783          	lbu	a5,59(sp)
   1ec48:	00f037b3          	snez	a5,a5
   1ec4c:	00fb0b33          	add	s6,s6,a5
   1ec50:	0540006f          	j	1eca4 <_svfiprintf_r+0x310>
   1ec54:	00000913          	li	s2,0
   1ec58:	fd068613          	addi	a2,a3,-48
   1ec5c:	001d0d13          	addi	s10,s10,1
   1ec60:	00291793          	slli	a5,s2,0x2
   1ec64:	fffd4683          	lbu	a3,-1(s10)
   1ec68:	01278933          	add	s2,a5,s2
   1ec6c:	00191913          	slli	s2,s2,0x1
   1ec70:	01260933          	add	s2,a2,s2
   1ec74:	00900793          	li	a5,9
   1ec78:	fd068613          	addi	a2,a3,-48
   1ec7c:	fec7f0e3          	bgeu	a5,a2,1ec5c <_svfiprintf_r+0x2c8>
   1ec80:	fe068793          	addi	a5,a3,-32
   1ec84:	e4f776e3          	bgeu	a4,a5,1ead0 <_svfiprintf_r+0x13c>
   1ec88:	ec0686e3          	beqz	a3,1eb54 <_svfiprintf_r+0x1c0>
   1ec8c:	08d10623          	sb	a3,140(sp)
   1ec90:	02010da3          	sb	zero,59(sp)
   1ec94:	00100b13          	li	s6,1
   1ec98:	00100d93          	li	s11,1
   1ec9c:	08c10b93          	addi	s7,sp,140
   1eca0:	00000c13          	li	s8,0
   1eca4:	002cff13          	andi	t5,s9,2
   1eca8:	000f0463          	beqz	t5,1ecb0 <_svfiprintf_r+0x31c>
   1ecac:	002b0b13          	addi	s6,s6,2
   1ecb0:	084cfe93          	andi	t4,s9,132
   1ecb4:	04812783          	lw	a5,72(sp)
   1ecb8:	04412603          	lw	a2,68(sp)
   1ecbc:	000e9663          	bnez	t4,1ecc8 <_svfiprintf_r+0x334>
   1ecc0:	416906b3          	sub	a3,s2,s6
   1ecc4:	06d042e3          	bgtz	a3,1f528 <_svfiprintf_r+0xb94>
   1ecc8:	03b14503          	lbu	a0,59(sp)
   1eccc:	00160593          	addi	a1,a2,1
   1ecd0:	00840693          	addi	a3,s0,8
   1ecd4:	04050063          	beqz	a0,1ed14 <_svfiprintf_r+0x380>
   1ecd8:	03b10513          	addi	a0,sp,59
   1ecdc:	00178793          	addi	a5,a5,1
   1ece0:	00a42023          	sw	a0,0(s0)
   1ece4:	00100513          	li	a0,1
   1ece8:	00a42223          	sw	a0,4(s0)
   1ecec:	04f12423          	sw	a5,72(sp)
   1ecf0:	04b12223          	sw	a1,68(sp)
   1ecf4:	00700513          	li	a0,7
   1ecf8:	12b546e3          	blt	a0,a1,1f624 <_svfiprintf_r+0xc90>
   1ecfc:	00260313          	addi	t1,a2,2
   1ed00:	01040513          	addi	a0,s0,16
   1ed04:	00058613          	mv	a2,a1
   1ed08:	00068413          	mv	s0,a3
   1ed0c:	00030593          	mv	a1,t1
   1ed10:	00050693          	mv	a3,a0
   1ed14:	020f0c63          	beqz	t5,1ed4c <_svfiprintf_r+0x3b8>
   1ed18:	03c10613          	addi	a2,sp,60
   1ed1c:	00278793          	addi	a5,a5,2
   1ed20:	00c42023          	sw	a2,0(s0)
   1ed24:	00200613          	li	a2,2
   1ed28:	00c42223          	sw	a2,4(s0)
   1ed2c:	04f12423          	sw	a5,72(sp)
   1ed30:	04b12223          	sw	a1,68(sp)
   1ed34:	00700613          	li	a2,7
   1ed38:	12b644e3          	blt	a2,a1,1f660 <_svfiprintf_r+0xccc>
   1ed3c:	00058613          	mv	a2,a1
   1ed40:	00068413          	mv	s0,a3
   1ed44:	00158593          	addi	a1,a1,1
   1ed48:	00868693          	addi	a3,a3,8
   1ed4c:	08000513          	li	a0,128
   1ed50:	5eae8a63          	beq	t4,a0,1f344 <_svfiprintf_r+0x9b0>
   1ed54:	41bc0c33          	sub	s8,s8,s11
   1ed58:	6d804063          	bgtz	s8,1f418 <_svfiprintf_r+0xa84>
   1ed5c:	00fd87b3          	add	a5,s11,a5
   1ed60:	01742023          	sw	s7,0(s0)
   1ed64:	01b42223          	sw	s11,4(s0)
   1ed68:	04f12423          	sw	a5,72(sp)
   1ed6c:	04b12223          	sw	a1,68(sp)
   1ed70:	00700613          	li	a2,7
   1ed74:	76b64a63          	blt	a2,a1,1f4e8 <_svfiprintf_r+0xb54>
   1ed78:	004cf813          	andi	a6,s9,4
   1ed7c:	00080663          	beqz	a6,1ed88 <_svfiprintf_r+0x3f4>
   1ed80:	41690433          	sub	s0,s2,s6
   1ed84:	1e804263          	bgtz	s0,1ef68 <_svfiprintf_r+0x5d4>
   1ed88:	01695463          	bge	s2,s6,1ed90 <_svfiprintf_r+0x3fc>
   1ed8c:	000b0913          	mv	s2,s6
   1ed90:	00812703          	lw	a4,8(sp)
   1ed94:	01270733          	add	a4,a4,s2
   1ed98:	00e12423          	sw	a4,8(sp)
   1ed9c:	76079663          	bnez	a5,1f508 <_svfiprintf_r+0xb74>
   1eda0:	04012223          	sw	zero,68(sp)
   1eda4:	00048413          	mv	s0,s1
   1eda8:	c89ff06f          	j	1ea30 <_svfiprintf_r+0x9c>
   1edac:	00c12783          	lw	a5,12(sp)
   1edb0:	02010da3          	sb	zero,59(sp)
   1edb4:	0007ab83          	lw	s7,0(a5)
   1edb8:	00478713          	addi	a4,a5,4
   1edbc:	2e0b82e3          	beqz	s7,1f8a0 <_svfiprintf_r+0xf0c>
   1edc0:	fff00793          	li	a5,-1
   1edc4:	00e12623          	sw	a4,12(sp)
   1edc8:	16fc0ee3          	beq	s8,a5,1f744 <_svfiprintf_r+0xdb0>
   1edcc:	000c0613          	mv	a2,s8
   1edd0:	00000593          	li	a1,0
   1edd4:	000b8513          	mv	a0,s7
   1edd8:	b64f90ef          	jal	ra,1813c <memchr>
   1eddc:	00c12703          	lw	a4,12(sp)
   1ede0:	40050ae3          	beqz	a0,1f9f4 <_svfiprintf_r+0x1060>
   1ede4:	41750db3          	sub	s11,a0,s7
   1ede8:	00000c13          	li	s8,0
   1edec:	e4dff06f          	j	1ec38 <_svfiprintf_r+0x2a4>
   1edf0:	020cf793          	andi	a5,s9,32
   1edf4:	010ce813          	ori	a6,s9,16
   1edf8:	46079e63          	bnez	a5,1f274 <_svfiprintf_r+0x8e0>
   1edfc:	00c12783          	lw	a5,12(sp)
   1ee00:	00478693          	addi	a3,a5,4
   1ee04:	00c12783          	lw	a5,12(sp)
   1ee08:	00000313          	li	t1,0
   1ee0c:	00d12623          	sw	a3,12(sp)
   1ee10:	0007ad83          	lw	s11,0(a5)
   1ee14:	47c0006f          	j	1f290 <_svfiprintf_r+0x8fc>
   1ee18:	020cf793          	andi	a5,s9,32
   1ee1c:	010ceb13          	ori	s6,s9,16
   1ee20:	48079063          	bnez	a5,1f2a0 <_svfiprintf_r+0x90c>
   1ee24:	00c12783          	lw	a5,12(sp)
   1ee28:	00478693          	addi	a3,a5,4
   1ee2c:	00c12783          	lw	a5,12(sp)
   1ee30:	00000313          	li	t1,0
   1ee34:	00d12623          	sw	a3,12(sp)
   1ee38:	0007ad83          	lw	s11,0(a5)
   1ee3c:	00100693          	li	a3,1
   1ee40:	dc1ff06f          	j	1ec00 <_svfiprintf_r+0x26c>
   1ee44:	080cec93          	ori	s9,s9,128
   1ee48:	000d4683          	lbu	a3,0(s10)
   1ee4c:	c75ff06f          	j	1eac0 <_svfiprintf_r+0x12c>
   1ee50:	000d4683          	lbu	a3,0(s10)
   1ee54:	001d0793          	addi	a5,s10,1
   1ee58:	3d6686e3          	beq	a3,s6,1fa24 <_svfiprintf_r+0x1090>
   1ee5c:	00078d13          	mv	s10,a5
   1ee60:	fd068613          	addi	a2,a3,-48
   1ee64:	00900793          	li	a5,9
   1ee68:	00000c13          	li	s8,0
   1ee6c:	c4c7eee3          	bltu	a5,a2,1eac8 <_svfiprintf_r+0x134>
   1ee70:	001d0d13          	addi	s10,s10,1
   1ee74:	002c1793          	slli	a5,s8,0x2
   1ee78:	fffd4683          	lbu	a3,-1(s10)
   1ee7c:	01878c33          	add	s8,a5,s8
   1ee80:	001c1c13          	slli	s8,s8,0x1
   1ee84:	00cc0c33          	add	s8,s8,a2
   1ee88:	00900793          	li	a5,9
   1ee8c:	fd068613          	addi	a2,a3,-48
   1ee90:	fec7f0e3          	bgeu	a5,a2,1ee70 <_svfiprintf_r+0x4dc>
   1ee94:	c35ff06f          	j	1eac8 <_svfiprintf_r+0x134>
   1ee98:	000d4683          	lbu	a3,0(s10)
   1ee9c:	004cec93          	ori	s9,s9,4
   1eea0:	c21ff06f          	j	1eac0 <_svfiprintf_r+0x12c>
   1eea4:	02b00793          	li	a5,43
   1eea8:	02f10da3          	sb	a5,59(sp)
   1eeac:	000d4683          	lbu	a3,0(s10)
   1eeb0:	c11ff06f          	j	1eac0 <_svfiprintf_r+0x12c>
   1eeb4:	00c12783          	lw	a5,12(sp)
   1eeb8:	000d4683          	lbu	a3,0(s10)
   1eebc:	0007a903          	lw	s2,0(a5)
   1eec0:	00478793          	addi	a5,a5,4
   1eec4:	00f12623          	sw	a5,12(sp)
   1eec8:	be095ce3          	bgez	s2,1eac0 <_svfiprintf_r+0x12c>
   1eecc:	41200933          	neg	s2,s2
   1eed0:	004cec93          	ori	s9,s9,4
   1eed4:	bedff06f          	j	1eac0 <_svfiprintf_r+0x12c>
   1eed8:	020cf793          	andi	a5,s9,32
   1eedc:	010ceb13          	ori	s6,s9,16
   1eee0:	3e079463          	bnez	a5,1f2c8 <_svfiprintf_r+0x934>
   1eee4:	00c12783          	lw	a5,12(sp)
   1eee8:	00478693          	addi	a3,a5,4
   1eeec:	00c12783          	lw	a5,12(sp)
   1eef0:	00d12623          	sw	a3,12(sp)
   1eef4:	0007ad83          	lw	s11,0(a5)
   1eef8:	41fdd313          	srai	t1,s11,0x1f
   1eefc:	00030693          	mv	a3,t1
   1ef00:	2c06cc63          	bltz	a3,1f1d8 <_svfiprintf_r+0x844>
   1ef04:	fff00693          	li	a3,-1
   1ef08:	00dc0a63          	beq	s8,a3,1ef1c <_svfiprintf_r+0x588>
   1ef0c:	006de6b3          	or	a3,s11,t1
   1ef10:	f7fb7c93          	andi	s9,s6,-129
   1ef14:	78068063          	beqz	a3,1f694 <_svfiprintf_r+0xd00>
   1ef18:	000c8b13          	mv	s6,s9
   1ef1c:	04031ee3          	bnez	t1,1f778 <_svfiprintf_r+0xde4>
   1ef20:	00900793          	li	a5,9
   1ef24:	05b7eae3          	bltu	a5,s11,1f778 <_svfiprintf_r+0xde4>
   1ef28:	030d8793          	addi	a5,s11,48
   1ef2c:	0ef107a3          	sb	a5,239(sp)
   1ef30:	000b0c93          	mv	s9,s6
   1ef34:	00100d93          	li	s11,1
   1ef38:	0ef10b93          	addi	s7,sp,239
   1ef3c:	cfdff06f          	j	1ec38 <_svfiprintf_r+0x2a4>
   1ef40:	00c12703          	lw	a4,12(sp)
   1ef44:	02010da3          	sb	zero,59(sp)
   1ef48:	00100b13          	li	s6,1
   1ef4c:	00072783          	lw	a5,0(a4)
   1ef50:	00470713          	addi	a4,a4,4
   1ef54:	00e12623          	sw	a4,12(sp)
   1ef58:	08f10623          	sb	a5,140(sp)
   1ef5c:	00100d93          	li	s11,1
   1ef60:	08c10b93          	addi	s7,sp,140
   1ef64:	d3dff06f          	j	1eca0 <_svfiprintf_r+0x30c>
   1ef68:	00007317          	auipc	t1,0x7
   1ef6c:	c7030313          	addi	t1,t1,-912 # 25bd8 <blanks.4466>
   1ef70:	01000593          	li	a1,16
   1ef74:	04412603          	lw	a2,68(sp)
   1ef78:	01000c13          	li	s8,16
   1ef7c:	00700d93          	li	s11,7
   1ef80:	00030b93          	mv	s7,t1
   1ef84:	0085c863          	blt	a1,s0,1ef94 <_svfiprintf_r+0x600>
   1ef88:	0580006f          	j	1efe0 <_svfiprintf_r+0x64c>
   1ef8c:	ff040413          	addi	s0,s0,-16
   1ef90:	048c5663          	bge	s8,s0,1efdc <_svfiprintf_r+0x648>
   1ef94:	01078793          	addi	a5,a5,16
   1ef98:	00160613          	addi	a2,a2,1
   1ef9c:	0176a023          	sw	s7,0(a3)
   1efa0:	0186a223          	sw	s8,4(a3)
   1efa4:	04f12423          	sw	a5,72(sp)
   1efa8:	04c12223          	sw	a2,68(sp)
   1efac:	00868693          	addi	a3,a3,8
   1efb0:	fccddee3          	bge	s11,a2,1ef8c <_svfiprintf_r+0x5f8>
   1efb4:	04010613          	addi	a2,sp,64
   1efb8:	00098593          	mv	a1,s3
   1efbc:	000a0513          	mv	a0,s4
   1efc0:	819ff0ef          	jal	ra,1e7d8 <__ssprint_r>
   1efc4:	ba0514e3          	bnez	a0,1eb6c <_svfiprintf_r+0x1d8>
   1efc8:	ff040413          	addi	s0,s0,-16
   1efcc:	04812783          	lw	a5,72(sp)
   1efd0:	04412603          	lw	a2,68(sp)
   1efd4:	00048693          	mv	a3,s1
   1efd8:	fa8c4ee3          	blt	s8,s0,1ef94 <_svfiprintf_r+0x600>
   1efdc:	000b8313          	mv	t1,s7
   1efe0:	008787b3          	add	a5,a5,s0
   1efe4:	00160613          	addi	a2,a2,1
   1efe8:	0066a023          	sw	t1,0(a3)
   1efec:	0086a223          	sw	s0,4(a3)
   1eff0:	04f12423          	sw	a5,72(sp)
   1eff4:	04c12223          	sw	a2,68(sp)
   1eff8:	00700693          	li	a3,7
   1effc:	d8c6d6e3          	bge	a3,a2,1ed88 <_svfiprintf_r+0x3f4>
   1f000:	04010613          	addi	a2,sp,64
   1f004:	00098593          	mv	a1,s3
   1f008:	000a0513          	mv	a0,s4
   1f00c:	fccff0ef          	jal	ra,1e7d8 <__ssprint_r>
   1f010:	b4051ee3          	bnez	a0,1eb6c <_svfiprintf_r+0x1d8>
   1f014:	04812783          	lw	a5,72(sp)
   1f018:	d71ff06f          	j	1ed88 <_svfiprintf_r+0x3f4>
   1f01c:	001cec93          	ori	s9,s9,1
   1f020:	000d4683          	lbu	a3,0(s10)
   1f024:	a9dff06f          	j	1eac0 <_svfiprintf_r+0x12c>
   1f028:	03b14783          	lbu	a5,59(sp)
   1f02c:	000d4683          	lbu	a3,0(s10)
   1f030:	a80798e3          	bnez	a5,1eac0 <_svfiprintf_r+0x12c>
   1f034:	02000793          	li	a5,32
   1f038:	02f10da3          	sb	a5,59(sp)
   1f03c:	a85ff06f          	j	1eac0 <_svfiprintf_r+0x12c>
   1f040:	020cf793          	andi	a5,s9,32
   1f044:	24079c63          	bnez	a5,1f29c <_svfiprintf_r+0x908>
   1f048:	00c12783          	lw	a5,12(sp)
   1f04c:	010cf613          	andi	a2,s9,16
   1f050:	00478693          	addi	a3,a5,4
   1f054:	0007a783          	lw	a5,0(a5)
   1f058:	20061ae3          	bnez	a2,1fa6c <_svfiprintf_r+0x10d8>
   1f05c:	040cf613          	andi	a2,s9,64
   1f060:	060602e3          	beqz	a2,1f8c4 <_svfiprintf_r+0xf30>
   1f064:	01079d93          	slli	s11,a5,0x10
   1f068:	00d12623          	sw	a3,12(sp)
   1f06c:	010ddd93          	srli	s11,s11,0x10
   1f070:	00000313          	li	t1,0
   1f074:	000c8b13          	mv	s6,s9
   1f078:	00100693          	li	a3,1
   1f07c:	b85ff06f          	j	1ec00 <_svfiprintf_r+0x26c>
   1f080:	00006797          	auipc	a5,0x6
   1f084:	1e478793          	addi	a5,a5,484 # 25264 <zeroes.4505+0x20>
   1f088:	00f12823          	sw	a5,16(sp)
   1f08c:	020cf793          	andi	a5,s9,32
   1f090:	b2079ee3          	bnez	a5,1ebcc <_svfiprintf_r+0x238>
   1f094:	00c12703          	lw	a4,12(sp)
   1f098:	010cf613          	andi	a2,s9,16
   1f09c:	00072783          	lw	a5,0(a4)
   1f0a0:	00470713          	addi	a4,a4,4
   1f0a4:	00e12623          	sw	a4,12(sp)
   1f0a8:	60061463          	bnez	a2,1f6b0 <_svfiprintf_r+0xd1c>
   1f0ac:	040cf613          	andi	a2,s9,64
   1f0b0:	5e060c63          	beqz	a2,1f6a8 <_svfiprintf_r+0xd14>
   1f0b4:	01079d93          	slli	s11,a5,0x10
   1f0b8:	010ddd93          	srli	s11,s11,0x10
   1f0bc:	00000313          	li	t1,0
   1f0c0:	b29ff06f          	j	1ebe8 <_svfiprintf_r+0x254>
   1f0c4:	00c12783          	lw	a5,12(sp)
   1f0c8:	02412703          	lw	a4,36(sp)
   1f0cc:	00000313          	li	t1,0
   1f0d0:	0007ad83          	lw	s11,0(a5)
   1f0d4:	00478793          	addi	a5,a5,4
   1f0d8:	00f12623          	sw	a5,12(sp)
   1f0dc:	00006797          	auipc	a5,0x6
   1f0e0:	18878793          	addi	a5,a5,392 # 25264 <zeroes.4505+0x20>
   1f0e4:	002ceb13          	ori	s6,s9,2
   1f0e8:	02e11e23          	sh	a4,60(sp)
   1f0ec:	00f12823          	sw	a5,16(sp)
   1f0f0:	00200693          	li	a3,2
   1f0f4:	b0dff06f          	j	1ec00 <_svfiprintf_r+0x26c>
   1f0f8:	020cf793          	andi	a5,s9,32
   1f0fc:	16079a63          	bnez	a5,1f270 <_svfiprintf_r+0x8dc>
   1f100:	00c12783          	lw	a5,12(sp)
   1f104:	010cf613          	andi	a2,s9,16
   1f108:	00478693          	addi	a3,a5,4
   1f10c:	0007a783          	lw	a5,0(a5)
   1f110:	14061ae3          	bnez	a2,1fa64 <_svfiprintf_r+0x10d0>
   1f114:	040cf613          	andi	a2,s9,64
   1f118:	7e060863          	beqz	a2,1f908 <_svfiprintf_r+0xf74>
   1f11c:	01079d93          	slli	s11,a5,0x10
   1f120:	010ddd93          	srli	s11,s11,0x10
   1f124:	00000313          	li	t1,0
   1f128:	000c8813          	mv	a6,s9
   1f12c:	00d12623          	sw	a3,12(sp)
   1f130:	1600006f          	j	1f290 <_svfiprintf_r+0x8fc>
   1f134:	00c12703          	lw	a4,12(sp)
   1f138:	020cf793          	andi	a5,s9,32
   1f13c:	00470693          	addi	a3,a4,4
   1f140:	5e079463          	bnez	a5,1f728 <_svfiprintf_r+0xd94>
   1f144:	010cf793          	andi	a5,s9,16
   1f148:	74079063          	bnez	a5,1f888 <_svfiprintf_r+0xef4>
   1f14c:	040cf793          	andi	a5,s9,64
   1f150:	080792e3          	bnez	a5,1f9d4 <_svfiprintf_r+0x1040>
   1f154:	200cf813          	andi	a6,s9,512
   1f158:	72080863          	beqz	a6,1f888 <_svfiprintf_r+0xef4>
   1f15c:	00c12783          	lw	a5,12(sp)
   1f160:	00812703          	lw	a4,8(sp)
   1f164:	00d12623          	sw	a3,12(sp)
   1f168:	0007a783          	lw	a5,0(a5)
   1f16c:	00e78023          	sb	a4,0(a5)
   1f170:	8c1ff06f          	j	1ea30 <_svfiprintf_r+0x9c>
   1f174:	000d4683          	lbu	a3,0(s10)
   1f178:	06c00793          	li	a5,108
   1f17c:	6cf68863          	beq	a3,a5,1f84c <_svfiprintf_r+0xeb8>
   1f180:	010cec93          	ori	s9,s9,16
   1f184:	93dff06f          	j	1eac0 <_svfiprintf_r+0x12c>
   1f188:	000d4683          	lbu	a3,0(s10)
   1f18c:	06800793          	li	a5,104
   1f190:	6af68663          	beq	a3,a5,1f83c <_svfiprintf_r+0xea8>
   1f194:	040cec93          	ori	s9,s9,64
   1f198:	929ff06f          	j	1eac0 <_svfiprintf_r+0x12c>
   1f19c:	020cf793          	andi	a5,s9,32
   1f1a0:	12079263          	bnez	a5,1f2c4 <_svfiprintf_r+0x930>
   1f1a4:	00c12703          	lw	a4,12(sp)
   1f1a8:	010cf793          	andi	a5,s9,16
   1f1ac:	00470693          	addi	a3,a4,4
   1f1b0:	0a0796e3          	bnez	a5,1fa5c <_svfiprintf_r+0x10c8>
   1f1b4:	040cf793          	andi	a5,s9,64
   1f1b8:	72078663          	beqz	a5,1f8e4 <_svfiprintf_r+0xf50>
   1f1bc:	00c12783          	lw	a5,12(sp)
   1f1c0:	00d12623          	sw	a3,12(sp)
   1f1c4:	000c8b13          	mv	s6,s9
   1f1c8:	00079d83          	lh	s11,0(a5)
   1f1cc:	41fdd313          	srai	t1,s11,0x1f
   1f1d0:	00030693          	mv	a3,t1
   1f1d4:	d206d8e3          	bgez	a3,1ef04 <_svfiprintf_r+0x570>
   1f1d8:	41b007b3          	neg	a5,s11
   1f1dc:	00f036b3          	snez	a3,a5
   1f1e0:	40600333          	neg	t1,t1
   1f1e4:	40d30333          	sub	t1,t1,a3
   1f1e8:	02d00693          	li	a3,45
   1f1ec:	02d10da3          	sb	a3,59(sp)
   1f1f0:	fff00613          	li	a2,-1
   1f1f4:	00078d93          	mv	s11,a5
   1f1f8:	00100693          	li	a3,1
   1f1fc:	a0cc18e3          	bne	s8,a2,1ec0c <_svfiprintf_r+0x278>
   1f200:	00100613          	li	a2,1
   1f204:	d0c68ce3          	beq	a3,a2,1ef1c <_svfiprintf_r+0x588>
   1f208:	00200613          	li	a2,2
   1f20c:	0ec68a63          	beq	a3,a2,1f300 <_svfiprintf_r+0x96c>
   1f210:	0f010613          	addi	a2,sp,240
   1f214:	0080006f          	j	1f21c <_svfiprintf_r+0x888>
   1f218:	000b8613          	mv	a2,s7
   1f21c:	01d31793          	slli	a5,t1,0x1d
   1f220:	007df693          	andi	a3,s11,7
   1f224:	003ddd93          	srli	s11,s11,0x3
   1f228:	03068693          	addi	a3,a3,48
   1f22c:	01b7edb3          	or	s11,a5,s11
   1f230:	00335313          	srli	t1,t1,0x3
   1f234:	fed60fa3          	sb	a3,-1(a2)
   1f238:	006de7b3          	or	a5,s11,t1
   1f23c:	fff60b93          	addi	s7,a2,-1
   1f240:	fc079ce3          	bnez	a5,1f218 <_svfiprintf_r+0x884>
   1f244:	001b7793          	andi	a5,s6,1
   1f248:	0e078663          	beqz	a5,1f334 <_svfiprintf_r+0x9a0>
   1f24c:	03000793          	li	a5,48
   1f250:	0ef68263          	beq	a3,a5,1f334 <_svfiprintf_r+0x9a0>
   1f254:	ffe60613          	addi	a2,a2,-2
   1f258:	fefb8fa3          	sb	a5,-1(s7)
   1f25c:	0f010793          	addi	a5,sp,240
   1f260:	40c78db3          	sub	s11,a5,a2
   1f264:	000b0c93          	mv	s9,s6
   1f268:	00060b93          	mv	s7,a2
   1f26c:	9cdff06f          	j	1ec38 <_svfiprintf_r+0x2a4>
   1f270:	000c8813          	mv	a6,s9
   1f274:	00c12783          	lw	a5,12(sp)
   1f278:	00778693          	addi	a3,a5,7
   1f27c:	ff86f693          	andi	a3,a3,-8
   1f280:	0006ad83          	lw	s11,0(a3)
   1f284:	0046a303          	lw	t1,4(a3)
   1f288:	00868793          	addi	a5,a3,8
   1f28c:	00f12623          	sw	a5,12(sp)
   1f290:	bff87b13          	andi	s6,a6,-1025
   1f294:	00000693          	li	a3,0
   1f298:	969ff06f          	j	1ec00 <_svfiprintf_r+0x26c>
   1f29c:	000c8b13          	mv	s6,s9
   1f2a0:	00c12783          	lw	a5,12(sp)
   1f2a4:	00778693          	addi	a3,a5,7
   1f2a8:	ff86f693          	andi	a3,a3,-8
   1f2ac:	00868793          	addi	a5,a3,8
   1f2b0:	0006ad83          	lw	s11,0(a3)
   1f2b4:	0046a303          	lw	t1,4(a3)
   1f2b8:	00f12623          	sw	a5,12(sp)
   1f2bc:	00100693          	li	a3,1
   1f2c0:	941ff06f          	j	1ec00 <_svfiprintf_r+0x26c>
   1f2c4:	000c8b13          	mv	s6,s9
   1f2c8:	00c12783          	lw	a5,12(sp)
   1f2cc:	00778793          	addi	a5,a5,7
   1f2d0:	ff87f793          	andi	a5,a5,-8
   1f2d4:	0047a683          	lw	a3,4(a5)
   1f2d8:	00878713          	addi	a4,a5,8
   1f2dc:	00e12623          	sw	a4,12(sp)
   1f2e0:	0007ad83          	lw	s11,0(a5)
   1f2e4:	00068313          	mv	t1,a3
   1f2e8:	c19ff06f          	j	1ef00 <_svfiprintf_r+0x56c>
   1f2ec:	00100613          	li	a2,1
   1f2f0:	6ec68e63          	beq	a3,a2,1f9ec <_svfiprintf_r+0x1058>
   1f2f4:	00200613          	li	a2,2
   1f2f8:	000c8b13          	mv	s6,s9
   1f2fc:	f0c69ae3          	bne	a3,a2,1f210 <_svfiprintf_r+0x87c>
   1f300:	01012683          	lw	a3,16(sp)
   1f304:	0f010b93          	addi	s7,sp,240
   1f308:	00fdf793          	andi	a5,s11,15
   1f30c:	00f687b3          	add	a5,a3,a5
   1f310:	0007c783          	lbu	a5,0(a5)
   1f314:	01c31713          	slli	a4,t1,0x1c
   1f318:	004ddd93          	srli	s11,s11,0x4
   1f31c:	fffb8b93          	addi	s7,s7,-1
   1f320:	01b76db3          	or	s11,a4,s11
   1f324:	00435313          	srli	t1,t1,0x4
   1f328:	00fb8023          	sb	a5,0(s7)
   1f32c:	006de7b3          	or	a5,s11,t1
   1f330:	fc079ce3          	bnez	a5,1f308 <_svfiprintf_r+0x974>
   1f334:	0f010793          	addi	a5,sp,240
   1f338:	41778db3          	sub	s11,a5,s7
   1f33c:	000b0c93          	mv	s9,s6
   1f340:	8f9ff06f          	j	1ec38 <_svfiprintf_r+0x2a4>
   1f344:	41690e33          	sub	t3,s2,s6
   1f348:	a1c056e3          	blez	t3,1ed54 <_svfiprintf_r+0x3c0>
   1f34c:	01000513          	li	a0,16
   1f350:	6bc55a63          	bge	a0,t3,1fa04 <_svfiprintf_r+0x1070>
   1f354:	00007317          	auipc	t1,0x7
   1f358:	89430313          	addi	t1,t1,-1900 # 25be8 <zeroes.4467>
   1f35c:	01212a23          	sw	s2,20(sp)
   1f360:	03612423          	sw	s6,40(sp)
   1f364:	01000693          	li	a3,16
   1f368:	00700e93          	li	t4,7
   1f36c:	000e0913          	mv	s2,t3
   1f370:	00030b13          	mv	s6,t1
   1f374:	00c0006f          	j	1f380 <_svfiprintf_r+0x9ec>
   1f378:	ff090913          	addi	s2,s2,-16
   1f37c:	0526da63          	bge	a3,s2,1f3d0 <_svfiprintf_r+0xa3c>
   1f380:	01078793          	addi	a5,a5,16
   1f384:	00160613          	addi	a2,a2,1
   1f388:	01642023          	sw	s6,0(s0)
   1f38c:	00d42223          	sw	a3,4(s0)
   1f390:	04f12423          	sw	a5,72(sp)
   1f394:	04c12223          	sw	a2,68(sp)
   1f398:	00840413          	addi	s0,s0,8
   1f39c:	fccedee3          	bge	t4,a2,1f378 <_svfiprintf_r+0x9e4>
   1f3a0:	04010613          	addi	a2,sp,64
   1f3a4:	00098593          	mv	a1,s3
   1f3a8:	000a0513          	mv	a0,s4
   1f3ac:	c2cff0ef          	jal	ra,1e7d8 <__ssprint_r>
   1f3b0:	fa051e63          	bnez	a0,1eb6c <_svfiprintf_r+0x1d8>
   1f3b4:	01000693          	li	a3,16
   1f3b8:	ff090913          	addi	s2,s2,-16
   1f3bc:	04812783          	lw	a5,72(sp)
   1f3c0:	04412603          	lw	a2,68(sp)
   1f3c4:	00048413          	mv	s0,s1
   1f3c8:	00700e93          	li	t4,7
   1f3cc:	fb26cae3          	blt	a3,s2,1f380 <_svfiprintf_r+0x9ec>
   1f3d0:	00090e13          	mv	t3,s2
   1f3d4:	000b0313          	mv	t1,s6
   1f3d8:	01412903          	lw	s2,20(sp)
   1f3dc:	02812b03          	lw	s6,40(sp)
   1f3e0:	00160613          	addi	a2,a2,1
   1f3e4:	00840513          	addi	a0,s0,8
   1f3e8:	01c787b3          	add	a5,a5,t3
   1f3ec:	00642023          	sw	t1,0(s0)
   1f3f0:	01c42223          	sw	t3,4(s0)
   1f3f4:	04f12423          	sw	a5,72(sp)
   1f3f8:	04c12223          	sw	a2,68(sp)
   1f3fc:	00700693          	li	a3,7
   1f400:	44c6ce63          	blt	a3,a2,1f85c <_svfiprintf_r+0xec8>
   1f404:	41bc0c33          	sub	s8,s8,s11
   1f408:	00160593          	addi	a1,a2,1
   1f40c:	00850693          	addi	a3,a0,8
   1f410:	00050413          	mv	s0,a0
   1f414:	958054e3          	blez	s8,1ed5c <_svfiprintf_r+0x3c8>
   1f418:	01000513          	li	a0,16
   1f41c:	51855463          	bge	a0,s8,1f924 <_svfiprintf_r+0xf90>
   1f420:	00006317          	auipc	t1,0x6
   1f424:	7c830313          	addi	t1,t1,1992 # 25be8 <zeroes.4467>
   1f428:	01212a23          	sw	s2,20(sp)
   1f42c:	01000693          	li	a3,16
   1f430:	00700e13          	li	t3,7
   1f434:	00030913          	mv	s2,t1
   1f438:	00c0006f          	j	1f444 <_svfiprintf_r+0xab0>
   1f43c:	ff0c0c13          	addi	s8,s8,-16
   1f440:	0586da63          	bge	a3,s8,1f494 <_svfiprintf_r+0xb00>
   1f444:	01078793          	addi	a5,a5,16
   1f448:	00160613          	addi	a2,a2,1
   1f44c:	01242023          	sw	s2,0(s0)
   1f450:	00d42223          	sw	a3,4(s0)
   1f454:	04f12423          	sw	a5,72(sp)
   1f458:	04c12223          	sw	a2,68(sp)
   1f45c:	00840413          	addi	s0,s0,8
   1f460:	fcce5ee3          	bge	t3,a2,1f43c <_svfiprintf_r+0xaa8>
   1f464:	04010613          	addi	a2,sp,64
   1f468:	00098593          	mv	a1,s3
   1f46c:	000a0513          	mv	a0,s4
   1f470:	b68ff0ef          	jal	ra,1e7d8 <__ssprint_r>
   1f474:	ee051c63          	bnez	a0,1eb6c <_svfiprintf_r+0x1d8>
   1f478:	01000693          	li	a3,16
   1f47c:	ff0c0c13          	addi	s8,s8,-16
   1f480:	04812783          	lw	a5,72(sp)
   1f484:	04412603          	lw	a2,68(sp)
   1f488:	00048413          	mv	s0,s1
   1f48c:	00700e13          	li	t3,7
   1f490:	fb86cae3          	blt	a3,s8,1f444 <_svfiprintf_r+0xab0>
   1f494:	00090313          	mv	t1,s2
   1f498:	01412903          	lw	s2,20(sp)
   1f49c:	00160593          	addi	a1,a2,1
   1f4a0:	00840613          	addi	a2,s0,8
   1f4a4:	018787b3          	add	a5,a5,s8
   1f4a8:	00642023          	sw	t1,0(s0)
   1f4ac:	01842223          	sw	s8,4(s0)
   1f4b0:	04f12423          	sw	a5,72(sp)
   1f4b4:	04b12223          	sw	a1,68(sp)
   1f4b8:	00700693          	li	a3,7
   1f4bc:	20b6c063          	blt	a3,a1,1f6bc <_svfiprintf_r+0xd28>
   1f4c0:	00060413          	mv	s0,a2
   1f4c4:	00158593          	addi	a1,a1,1
   1f4c8:	00fd87b3          	add	a5,s11,a5
   1f4cc:	00860693          	addi	a3,a2,8
   1f4d0:	01742023          	sw	s7,0(s0)
   1f4d4:	01b42223          	sw	s11,4(s0)
   1f4d8:	04f12423          	sw	a5,72(sp)
   1f4dc:	04b12223          	sw	a1,68(sp)
   1f4e0:	00700613          	li	a2,7
   1f4e4:	88b65ae3          	bge	a2,a1,1ed78 <_svfiprintf_r+0x3e4>
   1f4e8:	04010613          	addi	a2,sp,64
   1f4ec:	00098593          	mv	a1,s3
   1f4f0:	000a0513          	mv	a0,s4
   1f4f4:	ae4ff0ef          	jal	ra,1e7d8 <__ssprint_r>
   1f4f8:	e6051a63          	bnez	a0,1eb6c <_svfiprintf_r+0x1d8>
   1f4fc:	04812783          	lw	a5,72(sp)
   1f500:	00048693          	mv	a3,s1
   1f504:	875ff06f          	j	1ed78 <_svfiprintf_r+0x3e4>
   1f508:	04010613          	addi	a2,sp,64
   1f50c:	00098593          	mv	a1,s3
   1f510:	000a0513          	mv	a0,s4
   1f514:	ac4ff0ef          	jal	ra,1e7d8 <__ssprint_r>
   1f518:	880504e3          	beqz	a0,1eda0 <_svfiprintf_r+0x40c>
   1f51c:	e50ff06f          	j	1eb6c <_svfiprintf_r+0x1d8>
   1f520:	000c8b13          	mv	s6,s9
   1f524:	cddff06f          	j	1f200 <_svfiprintf_r+0x86c>
   1f528:	01000593          	li	a1,16
   1f52c:	00006317          	auipc	t1,0x6
   1f530:	6ac30313          	addi	t1,t1,1708 # 25bd8 <blanks.4466>
   1f534:	08d5dc63          	bge	a1,a3,1f5cc <_svfiprintf_r+0xc38>
   1f538:	03212623          	sw	s2,44(sp)
   1f53c:	00040713          	mv	a4,s0
   1f540:	01000e13          	li	t3,16
   1f544:	00700f93          	li	t6,7
   1f548:	01e12a23          	sw	t5,20(sp)
   1f54c:	03d12423          	sw	t4,40(sp)
   1f550:	00068413          	mv	s0,a3
   1f554:	00030913          	mv	s2,t1
   1f558:	00c0006f          	j	1f564 <_svfiprintf_r+0xbd0>
   1f55c:	ff040413          	addi	s0,s0,-16
   1f560:	048e5a63          	bge	t3,s0,1f5b4 <_svfiprintf_r+0xc20>
   1f564:	01078793          	addi	a5,a5,16
   1f568:	00160613          	addi	a2,a2,1
   1f56c:	01272023          	sw	s2,0(a4)
   1f570:	01c72223          	sw	t3,4(a4)
   1f574:	04f12423          	sw	a5,72(sp)
   1f578:	04c12223          	sw	a2,68(sp)
   1f57c:	00870713          	addi	a4,a4,8
   1f580:	fccfdee3          	bge	t6,a2,1f55c <_svfiprintf_r+0xbc8>
   1f584:	04010613          	addi	a2,sp,64
   1f588:	00098593          	mv	a1,s3
   1f58c:	000a0513          	mv	a0,s4
   1f590:	a48ff0ef          	jal	ra,1e7d8 <__ssprint_r>
   1f594:	dc051c63          	bnez	a0,1eb6c <_svfiprintf_r+0x1d8>
   1f598:	01000e13          	li	t3,16
   1f59c:	ff040413          	addi	s0,s0,-16
   1f5a0:	04812783          	lw	a5,72(sp)
   1f5a4:	04412603          	lw	a2,68(sp)
   1f5a8:	00048713          	mv	a4,s1
   1f5ac:	00700f93          	li	t6,7
   1f5b0:	fa8e4ae3          	blt	t3,s0,1f564 <_svfiprintf_r+0xbd0>
   1f5b4:	00090313          	mv	t1,s2
   1f5b8:	01412f03          	lw	t5,20(sp)
   1f5bc:	02812e83          	lw	t4,40(sp)
   1f5c0:	02c12903          	lw	s2,44(sp)
   1f5c4:	00040693          	mv	a3,s0
   1f5c8:	00070413          	mv	s0,a4
   1f5cc:	00d787b3          	add	a5,a5,a3
   1f5d0:	00160613          	addi	a2,a2,1
   1f5d4:	00d42223          	sw	a3,4(s0)
   1f5d8:	00642023          	sw	t1,0(s0)
   1f5dc:	04f12423          	sw	a5,72(sp)
   1f5e0:	04c12223          	sw	a2,68(sp)
   1f5e4:	00700693          	li	a3,7
   1f5e8:	00840413          	addi	s0,s0,8
   1f5ec:	ecc6de63          	bge	a3,a2,1ecc8 <_svfiprintf_r+0x334>
   1f5f0:	04010613          	addi	a2,sp,64
   1f5f4:	00098593          	mv	a1,s3
   1f5f8:	000a0513          	mv	a0,s4
   1f5fc:	03d12423          	sw	t4,40(sp)
   1f600:	01e12a23          	sw	t5,20(sp)
   1f604:	9d4ff0ef          	jal	ra,1e7d8 <__ssprint_r>
   1f608:	d6051263          	bnez	a0,1eb6c <_svfiprintf_r+0x1d8>
   1f60c:	04812783          	lw	a5,72(sp)
   1f610:	04412603          	lw	a2,68(sp)
   1f614:	00048413          	mv	s0,s1
   1f618:	02812e83          	lw	t4,40(sp)
   1f61c:	01412f03          	lw	t5,20(sp)
   1f620:	ea8ff06f          	j	1ecc8 <_svfiprintf_r+0x334>
   1f624:	04010613          	addi	a2,sp,64
   1f628:	00098593          	mv	a1,s3
   1f62c:	000a0513          	mv	a0,s4
   1f630:	03d12423          	sw	t4,40(sp)
   1f634:	01e12a23          	sw	t5,20(sp)
   1f638:	9a0ff0ef          	jal	ra,1e7d8 <__ssprint_r>
   1f63c:	d2051863          	bnez	a0,1eb6c <_svfiprintf_r+0x1d8>
   1f640:	04412603          	lw	a2,68(sp)
   1f644:	04812783          	lw	a5,72(sp)
   1f648:	05410693          	addi	a3,sp,84
   1f64c:	00160593          	addi	a1,a2,1
   1f650:	00048413          	mv	s0,s1
   1f654:	02812e83          	lw	t4,40(sp)
   1f658:	01412f03          	lw	t5,20(sp)
   1f65c:	eb8ff06f          	j	1ed14 <_svfiprintf_r+0x380>
   1f660:	04010613          	addi	a2,sp,64
   1f664:	00098593          	mv	a1,s3
   1f668:	000a0513          	mv	a0,s4
   1f66c:	01d12a23          	sw	t4,20(sp)
   1f670:	968ff0ef          	jal	ra,1e7d8 <__ssprint_r>
   1f674:	ce051c63          	bnez	a0,1eb6c <_svfiprintf_r+0x1d8>
   1f678:	04412603          	lw	a2,68(sp)
   1f67c:	04812783          	lw	a5,72(sp)
   1f680:	05410693          	addi	a3,sp,84
   1f684:	00160593          	addi	a1,a2,1
   1f688:	00048413          	mv	s0,s1
   1f68c:	01412e83          	lw	t4,20(sp)
   1f690:	ebcff06f          	j	1ed4c <_svfiprintf_r+0x3b8>
   1f694:	340c1c63          	bnez	s8,1f9ec <_svfiprintf_r+0x1058>
   1f698:	00000c13          	li	s8,0
   1f69c:	00000d93          	li	s11,0
   1f6a0:	0f010b93          	addi	s7,sp,240
   1f6a4:	d94ff06f          	j	1ec38 <_svfiprintf_r+0x2a4>
   1f6a8:	200cf613          	andi	a2,s9,512
   1f6ac:	30061e63          	bnez	a2,1f9c8 <_svfiprintf_r+0x1034>
   1f6b0:	00078d93          	mv	s11,a5
   1f6b4:	00000313          	li	t1,0
   1f6b8:	d30ff06f          	j	1ebe8 <_svfiprintf_r+0x254>
   1f6bc:	04010613          	addi	a2,sp,64
   1f6c0:	00098593          	mv	a1,s3
   1f6c4:	000a0513          	mv	a0,s4
   1f6c8:	910ff0ef          	jal	ra,1e7d8 <__ssprint_r>
   1f6cc:	ca051063          	bnez	a0,1eb6c <_svfiprintf_r+0x1d8>
   1f6d0:	04412583          	lw	a1,68(sp)
   1f6d4:	04812783          	lw	a5,72(sp)
   1f6d8:	05410693          	addi	a3,sp,84
   1f6dc:	00158593          	addi	a1,a1,1
   1f6e0:	00048413          	mv	s0,s1
   1f6e4:	e78ff06f          	j	1ed5c <_svfiprintf_r+0x3c8>
   1f6e8:	000d0b13          	mv	s6,s10
   1f6ec:	bb8ff06f          	j	1eaa4 <_svfiprintf_r+0x110>
   1f6f0:	01812783          	lw	a5,24(sp)
   1f6f4:	000d4683          	lbu	a3,0(s10)
   1f6f8:	bc078463          	beqz	a5,1eac0 <_svfiprintf_r+0x12c>
   1f6fc:	0007c783          	lbu	a5,0(a5)
   1f700:	bc078063          	beqz	a5,1eac0 <_svfiprintf_r+0x12c>
   1f704:	400cec93          	ori	s9,s9,1024
   1f708:	bb8ff06f          	j	1eac0 <_svfiprintf_r+0x12c>
   1f70c:	03000613          	li	a2,48
   1f710:	002cec93          	ori	s9,s9,2
   1f714:	02d10ea3          	sb	a3,61(sp)
   1f718:	02c10e23          	sb	a2,60(sp)
   1f71c:	bffcfb13          	andi	s6,s9,-1025
   1f720:	00200693          	li	a3,2
   1f724:	cdcff06f          	j	1ec00 <_svfiprintf_r+0x26c>
   1f728:	00072783          	lw	a5,0(a4)
   1f72c:	00812703          	lw	a4,8(sp)
   1f730:	00d12623          	sw	a3,12(sp)
   1f734:	41f75613          	srai	a2,a4,0x1f
   1f738:	00e7a023          	sw	a4,0(a5)
   1f73c:	00c7a223          	sw	a2,4(a5)
   1f740:	af0ff06f          	j	1ea30 <_svfiprintf_r+0x9c>
   1f744:	000b8513          	mv	a0,s7
   1f748:	b88f10ef          	jal	ra,10ad0 <strlen>
   1f74c:	00050d93          	mv	s11,a0
   1f750:	00000c13          	li	s8,0
   1f754:	ce4ff06f          	j	1ec38 <_svfiprintf_r+0x2a4>
   1f758:	04000593          	li	a1,64
   1f75c:	9a0f80ef          	jal	ra,178fc <_malloc_r>
   1f760:	00a9a023          	sw	a0,0(s3)
   1f764:	00a9a823          	sw	a0,16(s3)
   1f768:	2e050063          	beqz	a0,1fa48 <_svfiprintf_r+0x10b4>
   1f76c:	04000793          	li	a5,64
   1f770:	00f9aa23          	sw	a5,20(s3)
   1f774:	a7cff06f          	j	1e9f0 <_svfiprintf_r+0x5c>
   1f778:	0f010b93          	addi	s7,sp,240
   1f77c:	400b7793          	andi	a5,s6,1024
   1f780:	01612a23          	sw	s6,20(sp)
   1f784:	03212423          	sw	s2,40(sp)
   1f788:	02812623          	sw	s0,44(sp)
   1f78c:	000b8913          	mv	s2,s7
   1f790:	00000c93          	li	s9,0
   1f794:	000d0b93          	mv	s7,s10
   1f798:	01812403          	lw	s0,24(sp)
   1f79c:	00098d13          	mv	s10,s3
   1f7a0:	00078b13          	mv	s6,a5
   1f7a4:	00030993          	mv	s3,t1
   1f7a8:	0240006f          	j	1f7cc <_svfiprintf_r+0xe38>
   1f7ac:	00a00613          	li	a2,10
   1f7b0:	00000693          	li	a3,0
   1f7b4:	000d8513          	mv	a0,s11
   1f7b8:	00098593          	mv	a1,s3
   1f7bc:	0e5000ef          	jal	ra,200a0 <__udivdi3>
   1f7c0:	16098a63          	beqz	s3,1f934 <_svfiprintf_r+0xfa0>
   1f7c4:	00050d93          	mv	s11,a0
   1f7c8:	00058993          	mv	s3,a1
   1f7cc:	00a00613          	li	a2,10
   1f7d0:	00000693          	li	a3,0
   1f7d4:	000d8513          	mv	a0,s11
   1f7d8:	00098593          	mv	a1,s3
   1f7dc:	699000ef          	jal	ra,20674 <__umoddi3>
   1f7e0:	03050513          	addi	a0,a0,48
   1f7e4:	fea90fa3          	sb	a0,-1(s2)
   1f7e8:	001c8c93          	addi	s9,s9,1
   1f7ec:	fff90913          	addi	s2,s2,-1
   1f7f0:	fa0b0ee3          	beqz	s6,1f7ac <_svfiprintf_r+0xe18>
   1f7f4:	00044703          	lbu	a4,0(s0)
   1f7f8:	fb971ae3          	bne	a4,s9,1f7ac <_svfiprintf_r+0xe18>
   1f7fc:	0ff00793          	li	a5,255
   1f800:	fafc86e3          	beq	s9,a5,1f7ac <_svfiprintf_r+0xe18>
   1f804:	12099e63          	bnez	s3,1f940 <_svfiprintf_r+0xfac>
   1f808:	00900793          	li	a5,9
   1f80c:	13b7ea63          	bltu	a5,s11,1f940 <_svfiprintf_r+0xfac>
   1f810:	01412b03          	lw	s6,20(sp)
   1f814:	000d0993          	mv	s3,s10
   1f818:	0f010793          	addi	a5,sp,240
   1f81c:	000b8d13          	mv	s10,s7
   1f820:	00090b93          	mv	s7,s2
   1f824:	00812c23          	sw	s0,24(sp)
   1f828:	02812903          	lw	s2,40(sp)
   1f82c:	02c12403          	lw	s0,44(sp)
   1f830:	41778db3          	sub	s11,a5,s7
   1f834:	000b0c93          	mv	s9,s6
   1f838:	c00ff06f          	j	1ec38 <_svfiprintf_r+0x2a4>
   1f83c:	001d4683          	lbu	a3,1(s10)
   1f840:	200cec93          	ori	s9,s9,512
   1f844:	001d0d13          	addi	s10,s10,1
   1f848:	a78ff06f          	j	1eac0 <_svfiprintf_r+0x12c>
   1f84c:	001d4683          	lbu	a3,1(s10)
   1f850:	020cec93          	ori	s9,s9,32
   1f854:	001d0d13          	addi	s10,s10,1
   1f858:	a68ff06f          	j	1eac0 <_svfiprintf_r+0x12c>
   1f85c:	04010613          	addi	a2,sp,64
   1f860:	00098593          	mv	a1,s3
   1f864:	000a0513          	mv	a0,s4
   1f868:	f71fe0ef          	jal	ra,1e7d8 <__ssprint_r>
   1f86c:	b0051063          	bnez	a0,1eb6c <_svfiprintf_r+0x1d8>
   1f870:	04412603          	lw	a2,68(sp)
   1f874:	04812783          	lw	a5,72(sp)
   1f878:	05410693          	addi	a3,sp,84
   1f87c:	00160593          	addi	a1,a2,1
   1f880:	00048413          	mv	s0,s1
   1f884:	cd0ff06f          	j	1ed54 <_svfiprintf_r+0x3c0>
   1f888:	00c12783          	lw	a5,12(sp)
   1f88c:	00812703          	lw	a4,8(sp)
   1f890:	0007a783          	lw	a5,0(a5)
   1f894:	00d12623          	sw	a3,12(sp)
   1f898:	00e7a023          	sw	a4,0(a5)
   1f89c:	994ff06f          	j	1ea30 <_svfiprintf_r+0x9c>
   1f8a0:	00600793          	li	a5,6
   1f8a4:	000c0d93          	mv	s11,s8
   1f8a8:	0187f463          	bgeu	a5,s8,1f8b0 <_svfiprintf_r+0xf1c>
   1f8ac:	00600d93          	li	s11,6
   1f8b0:	000d8b13          	mv	s6,s11
   1f8b4:	00e12623          	sw	a4,12(sp)
   1f8b8:	00006b97          	auipc	s7,0x6
   1f8bc:	9d4b8b93          	addi	s7,s7,-1580 # 2528c <zeroes.4505+0x48>
   1f8c0:	be0ff06f          	j	1eca0 <_svfiprintf_r+0x30c>
   1f8c4:	200cf613          	andi	a2,s9,512
   1f8c8:	0e060463          	beqz	a2,1f9b0 <_svfiprintf_r+0x101c>
   1f8cc:	00d12623          	sw	a3,12(sp)
   1f8d0:	0ff7fd93          	andi	s11,a5,255
   1f8d4:	00000313          	li	t1,0
   1f8d8:	000c8b13          	mv	s6,s9
   1f8dc:	00100693          	li	a3,1
   1f8e0:	b20ff06f          	j	1ec00 <_svfiprintf_r+0x26c>
   1f8e4:	200cf793          	andi	a5,s9,512
   1f8e8:	0a078663          	beqz	a5,1f994 <_svfiprintf_r+0x1000>
   1f8ec:	00c12783          	lw	a5,12(sp)
   1f8f0:	000c8b13          	mv	s6,s9
   1f8f4:	00d12623          	sw	a3,12(sp)
   1f8f8:	00078d83          	lb	s11,0(a5)
   1f8fc:	41fdd313          	srai	t1,s11,0x1f
   1f900:	00030693          	mv	a3,t1
   1f904:	dfcff06f          	j	1ef00 <_svfiprintf_r+0x56c>
   1f908:	200cf613          	andi	a2,s9,512
   1f90c:	06060a63          	beqz	a2,1f980 <_svfiprintf_r+0xfec>
   1f910:	0ff7fd93          	andi	s11,a5,255
   1f914:	00000313          	li	t1,0
   1f918:	000c8813          	mv	a6,s9
   1f91c:	00d12623          	sw	a3,12(sp)
   1f920:	971ff06f          	j	1f290 <_svfiprintf_r+0x8fc>
   1f924:	00068613          	mv	a2,a3
   1f928:	00006317          	auipc	t1,0x6
   1f92c:	2c030313          	addi	t1,t1,704 # 25be8 <zeroes.4467>
   1f930:	b75ff06f          	j	1f4a4 <_svfiprintf_r+0xb10>
   1f934:	00900793          	li	a5,9
   1f938:	e9b7e6e3          	bltu	a5,s11,1f7c4 <_svfiprintf_r+0xe30>
   1f93c:	ed5ff06f          	j	1f810 <_svfiprintf_r+0xe7c>
   1f940:	02012783          	lw	a5,32(sp)
   1f944:	01c12583          	lw	a1,28(sp)
   1f948:	00000c93          	li	s9,0
   1f94c:	40f90933          	sub	s2,s2,a5
   1f950:	00078613          	mv	a2,a5
   1f954:	00090513          	mv	a0,s2
   1f958:	ef8fa0ef          	jal	ra,1a050 <strncpy>
   1f95c:	00144703          	lbu	a4,1(s0)
   1f960:	00a00613          	li	a2,10
   1f964:	00000693          	li	a3,0
   1f968:	00e03733          	snez	a4,a4
   1f96c:	000d8513          	mv	a0,s11
   1f970:	00098593          	mv	a1,s3
   1f974:	00e40433          	add	s0,s0,a4
   1f978:	728000ef          	jal	ra,200a0 <__udivdi3>
   1f97c:	e49ff06f          	j	1f7c4 <_svfiprintf_r+0xe30>
   1f980:	00078d93          	mv	s11,a5
   1f984:	00000313          	li	t1,0
   1f988:	000c8813          	mv	a6,s9
   1f98c:	00d12623          	sw	a3,12(sp)
   1f990:	901ff06f          	j	1f290 <_svfiprintf_r+0x8fc>
   1f994:	00c12783          	lw	a5,12(sp)
   1f998:	000c8b13          	mv	s6,s9
   1f99c:	00d12623          	sw	a3,12(sp)
   1f9a0:	0007ad83          	lw	s11,0(a5)
   1f9a4:	41fdd313          	srai	t1,s11,0x1f
   1f9a8:	00030693          	mv	a3,t1
   1f9ac:	d54ff06f          	j	1ef00 <_svfiprintf_r+0x56c>
   1f9b0:	00d12623          	sw	a3,12(sp)
   1f9b4:	00078d93          	mv	s11,a5
   1f9b8:	00000313          	li	t1,0
   1f9bc:	000c8b13          	mv	s6,s9
   1f9c0:	00100693          	li	a3,1
   1f9c4:	a3cff06f          	j	1ec00 <_svfiprintf_r+0x26c>
   1f9c8:	0ff7fd93          	andi	s11,a5,255
   1f9cc:	00000313          	li	t1,0
   1f9d0:	a18ff06f          	j	1ebe8 <_svfiprintf_r+0x254>
   1f9d4:	00c12783          	lw	a5,12(sp)
   1f9d8:	00812703          	lw	a4,8(sp)
   1f9dc:	00d12623          	sw	a3,12(sp)
   1f9e0:	0007a783          	lw	a5,0(a5)
   1f9e4:	00e79023          	sh	a4,0(a5)
   1f9e8:	848ff06f          	j	1ea30 <_svfiprintf_r+0x9c>
   1f9ec:	000c8b13          	mv	s6,s9
   1f9f0:	d38ff06f          	j	1ef28 <_svfiprintf_r+0x594>
   1f9f4:	000c0d93          	mv	s11,s8
   1f9f8:	00e12623          	sw	a4,12(sp)
   1f9fc:	00000c13          	li	s8,0
   1fa00:	a38ff06f          	j	1ec38 <_svfiprintf_r+0x2a4>
   1fa04:	00068513          	mv	a0,a3
   1fa08:	00058613          	mv	a2,a1
   1fa0c:	00006317          	auipc	t1,0x6
   1fa10:	1dc30313          	addi	t1,t1,476 # 25be8 <zeroes.4467>
   1fa14:	9d5ff06f          	j	1f3e8 <_svfiprintf_r+0xa54>
   1fa18:	fff00793          	li	a5,-1
   1fa1c:	00f12423          	sw	a5,8(sp)
   1fa20:	958ff06f          	j	1eb78 <_svfiprintf_r+0x1e4>
   1fa24:	00c12703          	lw	a4,12(sp)
   1fa28:	00072c03          	lw	s8,0(a4)
   1fa2c:	00470713          	addi	a4,a4,4
   1fa30:	000c5463          	bgez	s8,1fa38 <_svfiprintf_r+0x10a4>
   1fa34:	fff00c13          	li	s8,-1
   1fa38:	001d4683          	lbu	a3,1(s10)
   1fa3c:	00e12623          	sw	a4,12(sp)
   1fa40:	00078d13          	mv	s10,a5
   1fa44:	87cff06f          	j	1eac0 <_svfiprintf_r+0x12c>
   1fa48:	00c00793          	li	a5,12
   1fa4c:	00fa2023          	sw	a5,0(s4)
   1fa50:	fff00793          	li	a5,-1
   1fa54:	00f12423          	sw	a5,8(sp)
   1fa58:	920ff06f          	j	1eb78 <_svfiprintf_r+0x1e4>
   1fa5c:	000c8b13          	mv	s6,s9
   1fa60:	c8cff06f          	j	1eeec <_svfiprintf_r+0x558>
   1fa64:	000c8813          	mv	a6,s9
   1fa68:	b9cff06f          	j	1ee04 <_svfiprintf_r+0x470>
   1fa6c:	000c8b13          	mv	s6,s9
   1fa70:	bbcff06f          	j	1ee2c <_svfiprintf_r+0x498>

0001fa74 <__swbuf_r>:
   1fa74:	fe010113          	addi	sp,sp,-32
   1fa78:	00812c23          	sw	s0,24(sp)
   1fa7c:	00912a23          	sw	s1,20(sp)
   1fa80:	01212823          	sw	s2,16(sp)
   1fa84:	00112e23          	sw	ra,28(sp)
   1fa88:	01312623          	sw	s3,12(sp)
   1fa8c:	00050913          	mv	s2,a0
   1fa90:	00058493          	mv	s1,a1
   1fa94:	00060413          	mv	s0,a2
   1fa98:	00050663          	beqz	a0,1faa4 <__swbuf_r+0x30>
   1fa9c:	03852783          	lw	a5,56(a0)
   1faa0:	14078863          	beqz	a5,1fbf0 <__swbuf_r+0x17c>
   1faa4:	00c41703          	lh	a4,12(s0)
   1faa8:	01842783          	lw	a5,24(s0)
   1faac:	01071693          	slli	a3,a4,0x10
   1fab0:	0106d693          	srli	a3,a3,0x10
   1fab4:	00f42423          	sw	a5,8(s0)
   1fab8:	0086f793          	andi	a5,a3,8
   1fabc:	08078263          	beqz	a5,1fb40 <__swbuf_r+0xcc>
   1fac0:	01042783          	lw	a5,16(s0)
   1fac4:	06078e63          	beqz	a5,1fb40 <__swbuf_r+0xcc>
   1fac8:	01269613          	slli	a2,a3,0x12
   1facc:	0ff4f993          	andi	s3,s1,255
   1fad0:	0ff4f493          	andi	s1,s1,255
   1fad4:	08065e63          	bgez	a2,1fb70 <__swbuf_r+0xfc>
   1fad8:	00042703          	lw	a4,0(s0)
   1fadc:	01442683          	lw	a3,20(s0)
   1fae0:	40f707b3          	sub	a5,a4,a5
   1fae4:	0ad7de63          	bge	a5,a3,1fba0 <__swbuf_r+0x12c>
   1fae8:	00842683          	lw	a3,8(s0)
   1faec:	00170613          	addi	a2,a4,1
   1faf0:	00c42023          	sw	a2,0(s0)
   1faf4:	fff68693          	addi	a3,a3,-1
   1faf8:	00d42423          	sw	a3,8(s0)
   1fafc:	01370023          	sb	s3,0(a4)
   1fb00:	01442703          	lw	a4,20(s0)
   1fb04:	00178793          	addi	a5,a5,1
   1fb08:	0cf70863          	beq	a4,a5,1fbd8 <__swbuf_r+0x164>
   1fb0c:	00c45783          	lhu	a5,12(s0)
   1fb10:	0017f793          	andi	a5,a5,1
   1fb14:	00078663          	beqz	a5,1fb20 <__swbuf_r+0xac>
   1fb18:	00a00793          	li	a5,10
   1fb1c:	0af48e63          	beq	s1,a5,1fbd8 <__swbuf_r+0x164>
   1fb20:	01c12083          	lw	ra,28(sp)
   1fb24:	01812403          	lw	s0,24(sp)
   1fb28:	00048513          	mv	a0,s1
   1fb2c:	01012903          	lw	s2,16(sp)
   1fb30:	01412483          	lw	s1,20(sp)
   1fb34:	00c12983          	lw	s3,12(sp)
   1fb38:	02010113          	addi	sp,sp,32
   1fb3c:	00008067          	ret
   1fb40:	00040593          	mv	a1,s0
   1fb44:	00090513          	mv	a0,s2
   1fb48:	bd9f30ef          	jal	ra,13720 <__swsetup_r>
   1fb4c:	08051e63          	bnez	a0,1fbe8 <__swbuf_r+0x174>
   1fb50:	00c41703          	lh	a4,12(s0)
   1fb54:	0ff4f993          	andi	s3,s1,255
   1fb58:	01042783          	lw	a5,16(s0)
   1fb5c:	01071693          	slli	a3,a4,0x10
   1fb60:	0106d693          	srli	a3,a3,0x10
   1fb64:	01269613          	slli	a2,a3,0x12
   1fb68:	0ff4f493          	andi	s1,s1,255
   1fb6c:	f60646e3          	bltz	a2,1fad8 <__swbuf_r+0x64>
   1fb70:	06442683          	lw	a3,100(s0)
   1fb74:	00002637          	lui	a2,0x2
   1fb78:	00c76733          	or	a4,a4,a2
   1fb7c:	ffffe637          	lui	a2,0xffffe
   1fb80:	fff60613          	addi	a2,a2,-1 # ffffdfff <__BSS_END__+0xfffd7517>
   1fb84:	00c6f6b3          	and	a3,a3,a2
   1fb88:	00e41623          	sh	a4,12(s0)
   1fb8c:	00042703          	lw	a4,0(s0)
   1fb90:	06d42223          	sw	a3,100(s0)
   1fb94:	01442683          	lw	a3,20(s0)
   1fb98:	40f707b3          	sub	a5,a4,a5
   1fb9c:	f4d7c6e3          	blt	a5,a3,1fae8 <__swbuf_r+0x74>
   1fba0:	00040593          	mv	a1,s0
   1fba4:	00090513          	mv	a0,s2
   1fba8:	8f4f40ef          	jal	ra,13c9c <_fflush_r>
   1fbac:	02051e63          	bnez	a0,1fbe8 <__swbuf_r+0x174>
   1fbb0:	00042703          	lw	a4,0(s0)
   1fbb4:	00842683          	lw	a3,8(s0)
   1fbb8:	00100793          	li	a5,1
   1fbbc:	00170613          	addi	a2,a4,1
   1fbc0:	fff68693          	addi	a3,a3,-1
   1fbc4:	00c42023          	sw	a2,0(s0)
   1fbc8:	00d42423          	sw	a3,8(s0)
   1fbcc:	01370023          	sb	s3,0(a4)
   1fbd0:	01442703          	lw	a4,20(s0)
   1fbd4:	f2f71ce3          	bne	a4,a5,1fb0c <__swbuf_r+0x98>
   1fbd8:	00040593          	mv	a1,s0
   1fbdc:	00090513          	mv	a0,s2
   1fbe0:	8bcf40ef          	jal	ra,13c9c <_fflush_r>
   1fbe4:	f2050ee3          	beqz	a0,1fb20 <__swbuf_r+0xac>
   1fbe8:	fff00493          	li	s1,-1
   1fbec:	f35ff06f          	j	1fb20 <__swbuf_r+0xac>
   1fbf0:	c64f40ef          	jal	ra,14054 <__sinit>
   1fbf4:	eb1ff06f          	j	1faa4 <__swbuf_r+0x30>

0001fbf8 <__swbuf>:
   1fbf8:	1c018793          	addi	a5,gp,448 # 26a80 <_impure_ptr>
   1fbfc:	00058613          	mv	a2,a1
   1fc00:	00050593          	mv	a1,a0
   1fc04:	0007a503          	lw	a0,0(a5)
   1fc08:	e6dff06f          	j	1fa74 <__swbuf_r>

0001fc0c <_wcrtomb_r>:
   1fc0c:	fe010113          	addi	sp,sp,-32
   1fc10:	00812c23          	sw	s0,24(sp)
   1fc14:	00912a23          	sw	s1,20(sp)
   1fc18:	c2818793          	addi	a5,gp,-984 # 264e8 <__global_locale>
   1fc1c:	00112e23          	sw	ra,28(sp)
   1fc20:	00050413          	mv	s0,a0
   1fc24:	00068493          	mv	s1,a3
   1fc28:	0e07a783          	lw	a5,224(a5)
   1fc2c:	02058263          	beqz	a1,1fc50 <_wcrtomb_r+0x44>
   1fc30:	000780e7          	jalr	a5
   1fc34:	fff00793          	li	a5,-1
   1fc38:	02f50663          	beq	a0,a5,1fc64 <_wcrtomb_r+0x58>
   1fc3c:	01c12083          	lw	ra,28(sp)
   1fc40:	01812403          	lw	s0,24(sp)
   1fc44:	01412483          	lw	s1,20(sp)
   1fc48:	02010113          	addi	sp,sp,32
   1fc4c:	00008067          	ret
   1fc50:	00000613          	li	a2,0
   1fc54:	00410593          	addi	a1,sp,4
   1fc58:	000780e7          	jalr	a5
   1fc5c:	fff00793          	li	a5,-1
   1fc60:	fcf51ee3          	bne	a0,a5,1fc3c <_wcrtomb_r+0x30>
   1fc64:	0004a023          	sw	zero,0(s1)
   1fc68:	08a00793          	li	a5,138
   1fc6c:	00f42023          	sw	a5,0(s0)
   1fc70:	01c12083          	lw	ra,28(sp)
   1fc74:	01812403          	lw	s0,24(sp)
   1fc78:	01412483          	lw	s1,20(sp)
   1fc7c:	02010113          	addi	sp,sp,32
   1fc80:	00008067          	ret

0001fc84 <wcrtomb>:
   1fc84:	fe010113          	addi	sp,sp,-32
   1fc88:	1c018793          	addi	a5,gp,448 # 26a80 <_impure_ptr>
   1fc8c:	00812c23          	sw	s0,24(sp)
   1fc90:	00912a23          	sw	s1,20(sp)
   1fc94:	0007a403          	lw	s0,0(a5)
   1fc98:	00112e23          	sw	ra,28(sp)
   1fc9c:	c2818793          	addi	a5,gp,-984 # 264e8 <__global_locale>
   1fca0:	00060493          	mv	s1,a2
   1fca4:	0e07a783          	lw	a5,224(a5)
   1fca8:	00060693          	mv	a3,a2
   1fcac:	02050863          	beqz	a0,1fcdc <wcrtomb+0x58>
   1fcb0:	00058613          	mv	a2,a1
   1fcb4:	00050593          	mv	a1,a0
   1fcb8:	00040513          	mv	a0,s0
   1fcbc:	000780e7          	jalr	a5
   1fcc0:	fff00793          	li	a5,-1
   1fcc4:	02f50863          	beq	a0,a5,1fcf4 <wcrtomb+0x70>
   1fcc8:	01c12083          	lw	ra,28(sp)
   1fccc:	01812403          	lw	s0,24(sp)
   1fcd0:	01412483          	lw	s1,20(sp)
   1fcd4:	02010113          	addi	sp,sp,32
   1fcd8:	00008067          	ret
   1fcdc:	00000613          	li	a2,0
   1fce0:	00410593          	addi	a1,sp,4
   1fce4:	00040513          	mv	a0,s0
   1fce8:	000780e7          	jalr	a5
   1fcec:	fff00793          	li	a5,-1
   1fcf0:	fcf51ce3          	bne	a0,a5,1fcc8 <wcrtomb+0x44>
   1fcf4:	0004a023          	sw	zero,0(s1)
   1fcf8:	08a00793          	li	a5,138
   1fcfc:	00f42023          	sw	a5,0(s0)
   1fd00:	01c12083          	lw	ra,28(sp)
   1fd04:	01812403          	lw	s0,24(sp)
   1fd08:	01412483          	lw	s1,20(sp)
   1fd0c:	02010113          	addi	sp,sp,32
   1fd10:	00008067          	ret

0001fd14 <_close>:
   1fd14:	ff010113          	addi	sp,sp,-16
   1fd18:	00112623          	sw	ra,12(sp)
   1fd1c:	00812423          	sw	s0,8(sp)
   1fd20:	00000593          	li	a1,0
   1fd24:	00000613          	li	a2,0
   1fd28:	00000693          	li	a3,0
   1fd2c:	00000713          	li	a4,0
   1fd30:	00000793          	li	a5,0
   1fd34:	03900893          	li	a7,57
   1fd38:	00000073          	ecall
   1fd3c:	00050413          	mv	s0,a0
   1fd40:	00054c63          	bltz	a0,1fd58 <_close+0x44>
   1fd44:	00040513          	mv	a0,s0
   1fd48:	00c12083          	lw	ra,12(sp)
   1fd4c:	00812403          	lw	s0,8(sp)
   1fd50:	01010113          	addi	sp,sp,16
   1fd54:	00008067          	ret
   1fd58:	40800433          	neg	s0,s0
   1fd5c:	338000ef          	jal	ra,20094 <__errno>
   1fd60:	00852023          	sw	s0,0(a0)
   1fd64:	fff00413          	li	s0,-1
   1fd68:	fddff06f          	j	1fd44 <_close+0x30>

0001fd6c <_exit>:
   1fd6c:	00000593          	li	a1,0
   1fd70:	00000613          	li	a2,0
   1fd74:	00000693          	li	a3,0
   1fd78:	00000713          	li	a4,0
   1fd7c:	00000793          	li	a5,0
   1fd80:	05d00893          	li	a7,93
   1fd84:	00000073          	ecall
   1fd88:	00054463          	bltz	a0,1fd90 <_exit+0x24>
   1fd8c:	0000006f          	j	1fd8c <_exit+0x20>
   1fd90:	ff010113          	addi	sp,sp,-16
   1fd94:	00812423          	sw	s0,8(sp)
   1fd98:	00050413          	mv	s0,a0
   1fd9c:	00112623          	sw	ra,12(sp)
   1fda0:	40800433          	neg	s0,s0
   1fda4:	2f0000ef          	jal	ra,20094 <__errno>
   1fda8:	00852023          	sw	s0,0(a0)
   1fdac:	0000006f          	j	1fdac <_exit+0x40>

0001fdb0 <_fstat>:
   1fdb0:	f7010113          	addi	sp,sp,-144
   1fdb4:	08912223          	sw	s1,132(sp)
   1fdb8:	08112623          	sw	ra,140(sp)
   1fdbc:	00058493          	mv	s1,a1
   1fdc0:	08812423          	sw	s0,136(sp)
   1fdc4:	00000613          	li	a2,0
   1fdc8:	00010593          	mv	a1,sp
   1fdcc:	00000693          	li	a3,0
   1fdd0:	00000713          	li	a4,0
   1fdd4:	00000793          	li	a5,0
   1fdd8:	05000893          	li	a7,80
   1fddc:	00000073          	ecall
   1fde0:	00050413          	mv	s0,a0
   1fde4:	02054463          	bltz	a0,1fe0c <_fstat+0x5c>
   1fde8:	00048513          	mv	a0,s1
   1fdec:	00010593          	mv	a1,sp
   1fdf0:	200000ef          	jal	ra,1fff0 <_conv_stat>
   1fdf4:	00040513          	mv	a0,s0
   1fdf8:	08c12083          	lw	ra,140(sp)
   1fdfc:	08812403          	lw	s0,136(sp)
   1fe00:	08412483          	lw	s1,132(sp)
   1fe04:	09010113          	addi	sp,sp,144
   1fe08:	00008067          	ret
   1fe0c:	40800433          	neg	s0,s0
   1fe10:	284000ef          	jal	ra,20094 <__errno>
   1fe14:	00852023          	sw	s0,0(a0)
   1fe18:	fff00413          	li	s0,-1
   1fe1c:	fcdff06f          	j	1fde8 <_fstat+0x38>

0001fe20 <_isatty>:
   1fe20:	f9010113          	addi	sp,sp,-112
   1fe24:	00810593          	addi	a1,sp,8
   1fe28:	06112623          	sw	ra,108(sp)
   1fe2c:	f85ff0ef          	jal	ra,1fdb0 <_fstat>
   1fe30:	fff00793          	li	a5,-1
   1fe34:	00f50e63          	beq	a0,a5,1fe50 <_isatty+0x30>
   1fe38:	00c12503          	lw	a0,12(sp)
   1fe3c:	06c12083          	lw	ra,108(sp)
   1fe40:	00d55513          	srli	a0,a0,0xd
   1fe44:	00157513          	andi	a0,a0,1
   1fe48:	07010113          	addi	sp,sp,112
   1fe4c:	00008067          	ret
   1fe50:	06c12083          	lw	ra,108(sp)
   1fe54:	00000513          	li	a0,0
   1fe58:	07010113          	addi	sp,sp,112
   1fe5c:	00008067          	ret

0001fe60 <_lseek>:
   1fe60:	ff010113          	addi	sp,sp,-16
   1fe64:	00112623          	sw	ra,12(sp)
   1fe68:	00812423          	sw	s0,8(sp)
   1fe6c:	00000693          	li	a3,0
   1fe70:	00000713          	li	a4,0
   1fe74:	00000793          	li	a5,0
   1fe78:	03e00893          	li	a7,62
   1fe7c:	00000073          	ecall
   1fe80:	00050413          	mv	s0,a0
   1fe84:	00054c63          	bltz	a0,1fe9c <_lseek+0x3c>
   1fe88:	00040513          	mv	a0,s0
   1fe8c:	00c12083          	lw	ra,12(sp)
   1fe90:	00812403          	lw	s0,8(sp)
   1fe94:	01010113          	addi	sp,sp,16
   1fe98:	00008067          	ret
   1fe9c:	40800433          	neg	s0,s0
   1fea0:	1f4000ef          	jal	ra,20094 <__errno>
   1fea4:	00852023          	sw	s0,0(a0)
   1fea8:	fff00413          	li	s0,-1
   1feac:	fddff06f          	j	1fe88 <_lseek+0x28>

0001feb0 <_read>:
   1feb0:	ff010113          	addi	sp,sp,-16
   1feb4:	00112623          	sw	ra,12(sp)
   1feb8:	00812423          	sw	s0,8(sp)
   1febc:	00000693          	li	a3,0
   1fec0:	00000713          	li	a4,0
   1fec4:	00000793          	li	a5,0
   1fec8:	03f00893          	li	a7,63
   1fecc:	00000073          	ecall
   1fed0:	00050413          	mv	s0,a0
   1fed4:	00054c63          	bltz	a0,1feec <_read+0x3c>
   1fed8:	00040513          	mv	a0,s0
   1fedc:	00c12083          	lw	ra,12(sp)
   1fee0:	00812403          	lw	s0,8(sp)
   1fee4:	01010113          	addi	sp,sp,16
   1fee8:	00008067          	ret
   1feec:	40800433          	neg	s0,s0
   1fef0:	1a4000ef          	jal	ra,20094 <__errno>
   1fef4:	00852023          	sw	s0,0(a0)
   1fef8:	fff00413          	li	s0,-1
   1fefc:	fddff06f          	j	1fed8 <_read+0x28>

0001ff00 <_sbrk>:
   1ff00:	1dc18313          	addi	t1,gp,476 # 26a9c <heap_end.1864>
   1ff04:	00032783          	lw	a5,0(t1)
   1ff08:	ff010113          	addi	sp,sp,-16
   1ff0c:	00112623          	sw	ra,12(sp)
   1ff10:	00050813          	mv	a6,a0
   1ff14:	02079863          	bnez	a5,1ff44 <_sbrk+0x44>
   1ff18:	00000513          	li	a0,0
   1ff1c:	00000593          	li	a1,0
   1ff20:	00000613          	li	a2,0
   1ff24:	00000693          	li	a3,0
   1ff28:	00000713          	li	a4,0
   1ff2c:	0d600893          	li	a7,214
   1ff30:	00000073          	ecall
   1ff34:	fff00793          	li	a5,-1
   1ff38:	04f50663          	beq	a0,a5,1ff84 <_sbrk+0x84>
   1ff3c:	00050793          	mv	a5,a0
   1ff40:	1ca1ae23          	sw	a0,476(gp) # 26a9c <heap_end.1864>
   1ff44:	00f80533          	add	a0,a6,a5
   1ff48:	00000593          	li	a1,0
   1ff4c:	00000613          	li	a2,0
   1ff50:	00000693          	li	a3,0
   1ff54:	00000713          	li	a4,0
   1ff58:	00000793          	li	a5,0
   1ff5c:	0d600893          	li	a7,214
   1ff60:	00000073          	ecall
   1ff64:	00032783          	lw	a5,0(t1)
   1ff68:	00f80833          	add	a6,a6,a5
   1ff6c:	01051c63          	bne	a0,a6,1ff84 <_sbrk+0x84>
   1ff70:	00c12083          	lw	ra,12(sp)
   1ff74:	1ca1ae23          	sw	a0,476(gp) # 26a9c <heap_end.1864>
   1ff78:	00078513          	mv	a0,a5
   1ff7c:	01010113          	addi	sp,sp,16
   1ff80:	00008067          	ret
   1ff84:	110000ef          	jal	ra,20094 <__errno>
   1ff88:	00c12083          	lw	ra,12(sp)
   1ff8c:	00c00793          	li	a5,12
   1ff90:	00f52023          	sw	a5,0(a0)
   1ff94:	fff00513          	li	a0,-1
   1ff98:	01010113          	addi	sp,sp,16
   1ff9c:	00008067          	ret

0001ffa0 <_write>:
   1ffa0:	ff010113          	addi	sp,sp,-16
   1ffa4:	00112623          	sw	ra,12(sp)
   1ffa8:	00812423          	sw	s0,8(sp)
   1ffac:	00000693          	li	a3,0
   1ffb0:	00000713          	li	a4,0
   1ffb4:	00000793          	li	a5,0
   1ffb8:	04000893          	li	a7,64
   1ffbc:	00000073          	ecall
   1ffc0:	00050413          	mv	s0,a0
   1ffc4:	00054c63          	bltz	a0,1ffdc <_write+0x3c>
   1ffc8:	00040513          	mv	a0,s0
   1ffcc:	00c12083          	lw	ra,12(sp)
   1ffd0:	00812403          	lw	s0,8(sp)
   1ffd4:	01010113          	addi	sp,sp,16
   1ffd8:	00008067          	ret
   1ffdc:	40800433          	neg	s0,s0
   1ffe0:	0b4000ef          	jal	ra,20094 <__errno>
   1ffe4:	00852023          	sw	s0,0(a0)
   1ffe8:	fff00413          	li	s0,-1
   1ffec:	fddff06f          	j	1ffc8 <_write+0x28>

0001fff0 <_conv_stat>:
   1fff0:	ff010113          	addi	sp,sp,-16
   1fff4:	0145a383          	lw	t2,20(a1)
   1fff8:	0185a283          	lw	t0,24(a1)
   1fffc:	01c5af83          	lw	t6,28(a1)
   20000:	0205af03          	lw	t5,32(a1)
   20004:	0305ae83          	lw	t4,48(a1)
   20008:	0405ae03          	lw	t3,64(a1)
   2000c:	0385a303          	lw	t1,56(a1)
   20010:	0485a803          	lw	a6,72(a1)
   20014:	04c5a883          	lw	a7,76(a1)
   20018:	0585a603          	lw	a2,88(a1)
   2001c:	00812623          	sw	s0,12(sp)
   20020:	00912423          	sw	s1,8(sp)
   20024:	0105a403          	lw	s0,16(a1)
   20028:	0085a483          	lw	s1,8(a1)
   2002c:	01212223          	sw	s2,4(sp)
   20030:	0005a903          	lw	s2,0(a1)
   20034:	05c5a683          	lw	a3,92(a1)
   20038:	0685a703          	lw	a4,104(a1)
   2003c:	06c5a783          	lw	a5,108(a1)
   20040:	01251023          	sh	s2,0(a0)
   20044:	00951123          	sh	s1,2(a0)
   20048:	00852223          	sw	s0,4(a0)
   2004c:	00751423          	sh	t2,8(a0)
   20050:	00551523          	sh	t0,10(a0)
   20054:	01f51623          	sh	t6,12(a0)
   20058:	01e51723          	sh	t5,14(a0)
   2005c:	01d52823          	sw	t4,16(a0)
   20060:	05c52423          	sw	t3,72(a0)
   20064:	04652223          	sw	t1,68(a0)
   20068:	01052c23          	sw	a6,24(a0)
   2006c:	01152e23          	sw	a7,28(a0)
   20070:	02c52423          	sw	a2,40(a0)
   20074:	02d52623          	sw	a3,44(a0)
   20078:	00c12403          	lw	s0,12(sp)
   2007c:	02e52c23          	sw	a4,56(a0)
   20080:	02f52e23          	sw	a5,60(a0)
   20084:	00812483          	lw	s1,8(sp)
   20088:	00412903          	lw	s2,4(sp)
   2008c:	01010113          	addi	sp,sp,16
   20090:	00008067          	ret

00020094 <__errno>:
   20094:	1c018793          	addi	a5,gp,448 # 26a80 <_impure_ptr>
   20098:	0007a503          	lw	a0,0(a5)
   2009c:	00008067          	ret

000200a0 <__udivdi3>:
   200a0:	fd010113          	addi	sp,sp,-48
   200a4:	02912223          	sw	s1,36(sp)
   200a8:	01612823          	sw	s6,16(sp)
   200ac:	02112623          	sw	ra,44(sp)
   200b0:	02812423          	sw	s0,40(sp)
   200b4:	03212023          	sw	s2,32(sp)
   200b8:	01312e23          	sw	s3,28(sp)
   200bc:	01412c23          	sw	s4,24(sp)
   200c0:	01512a23          	sw	s5,20(sp)
   200c4:	01712623          	sw	s7,12(sp)
   200c8:	01812423          	sw	s8,8(sp)
   200cc:	01912223          	sw	s9,4(sp)
   200d0:	00050b13          	mv	s6,a0
   200d4:	00058493          	mv	s1,a1
   200d8:	38069c63          	bnez	a3,20470 <__udivdi3+0x3d0>
   200dc:	00060413          	mv	s0,a2
   200e0:	00050993          	mv	s3,a0
   200e4:	00006917          	auipc	s2,0x6
   200e8:	bc890913          	addi	s2,s2,-1080 # 25cac <__clz_tab>
   200ec:	12c5f863          	bgeu	a1,a2,2021c <__udivdi3+0x17c>
   200f0:	000107b7          	lui	a5,0x10
   200f4:	00058a93          	mv	s5,a1
   200f8:	10f67863          	bgeu	a2,a5,20208 <__udivdi3+0x168>
   200fc:	0ff00693          	li	a3,255
   20100:	00c6b6b3          	sltu	a3,a3,a2
   20104:	00369693          	slli	a3,a3,0x3
   20108:	00d657b3          	srl	a5,a2,a3
   2010c:	00f90933          	add	s2,s2,a5
   20110:	00094703          	lbu	a4,0(s2)
   20114:	00d706b3          	add	a3,a4,a3
   20118:	02000713          	li	a4,32
   2011c:	40d70733          	sub	a4,a4,a3
   20120:	00070c63          	beqz	a4,20138 <__udivdi3+0x98>
   20124:	00e494b3          	sll	s1,s1,a4
   20128:	00db56b3          	srl	a3,s6,a3
   2012c:	00e61433          	sll	s0,a2,a4
   20130:	0096eab3          	or	s5,a3,s1
   20134:	00eb19b3          	sll	s3,s6,a4
   20138:	01045b13          	srli	s6,s0,0x10
   2013c:	000b0593          	mv	a1,s6
   20140:	000a8513          	mv	a0,s5
   20144:	d98f00ef          	jal	ra,106dc <__umodsi3>
   20148:	00050913          	mv	s2,a0
   2014c:	000b0593          	mv	a1,s6
   20150:	01041b93          	slli	s7,s0,0x10
   20154:	000a8513          	mv	a0,s5
   20158:	d3cf00ef          	jal	ra,10694 <__udivsi3>
   2015c:	010bdb93          	srli	s7,s7,0x10
   20160:	00050493          	mv	s1,a0
   20164:	00050593          	mv	a1,a0
   20168:	000b8513          	mv	a0,s7
   2016c:	4ad040ef          	jal	ra,24e18 <__mulsi3>
   20170:	01091913          	slli	s2,s2,0x10
   20174:	0109d713          	srli	a4,s3,0x10
   20178:	00e96733          	or	a4,s2,a4
   2017c:	00048a13          	mv	s4,s1
   20180:	00a77e63          	bgeu	a4,a0,2019c <__udivdi3+0xfc>
   20184:	00870733          	add	a4,a4,s0
   20188:	fff48a13          	addi	s4,s1,-1
   2018c:	00876863          	bltu	a4,s0,2019c <__udivdi3+0xfc>
   20190:	00a77663          	bgeu	a4,a0,2019c <__udivdi3+0xfc>
   20194:	ffe48a13          	addi	s4,s1,-2
   20198:	00870733          	add	a4,a4,s0
   2019c:	40a704b3          	sub	s1,a4,a0
   201a0:	000b0593          	mv	a1,s6
   201a4:	00048513          	mv	a0,s1
   201a8:	d34f00ef          	jal	ra,106dc <__umodsi3>
   201ac:	00050913          	mv	s2,a0
   201b0:	000b0593          	mv	a1,s6
   201b4:	00048513          	mv	a0,s1
   201b8:	cdcf00ef          	jal	ra,10694 <__udivsi3>
   201bc:	01099993          	slli	s3,s3,0x10
   201c0:	00050493          	mv	s1,a0
   201c4:	00050593          	mv	a1,a0
   201c8:	01091913          	slli	s2,s2,0x10
   201cc:	000b8513          	mv	a0,s7
   201d0:	0109d993          	srli	s3,s3,0x10
   201d4:	445040ef          	jal	ra,24e18 <__mulsi3>
   201d8:	013969b3          	or	s3,s2,s3
   201dc:	00048613          	mv	a2,s1
   201e0:	00a9fc63          	bgeu	s3,a0,201f8 <__udivdi3+0x158>
   201e4:	013409b3          	add	s3,s0,s3
   201e8:	fff48613          	addi	a2,s1,-1
   201ec:	0089e663          	bltu	s3,s0,201f8 <__udivdi3+0x158>
   201f0:	00a9f463          	bgeu	s3,a0,201f8 <__udivdi3+0x158>
   201f4:	ffe48613          	addi	a2,s1,-2
   201f8:	010a1793          	slli	a5,s4,0x10
   201fc:	00c7e7b3          	or	a5,a5,a2
   20200:	00000a13          	li	s4,0
   20204:	1300006f          	j	20334 <__udivdi3+0x294>
   20208:	010007b7          	lui	a5,0x1000
   2020c:	01000693          	li	a3,16
   20210:	eef66ce3          	bltu	a2,a5,20108 <__udivdi3+0x68>
   20214:	01800693          	li	a3,24
   20218:	ef1ff06f          	j	20108 <__udivdi3+0x68>
   2021c:	00068a13          	mv	s4,a3
   20220:	00061a63          	bnez	a2,20234 <__udivdi3+0x194>
   20224:	00000593          	li	a1,0
   20228:	00100513          	li	a0,1
   2022c:	c68f00ef          	jal	ra,10694 <__udivsi3>
   20230:	00050413          	mv	s0,a0
   20234:	000107b7          	lui	a5,0x10
   20238:	12f47c63          	bgeu	s0,a5,20370 <__udivdi3+0x2d0>
   2023c:	0ff00793          	li	a5,255
   20240:	0087f463          	bgeu	a5,s0,20248 <__udivdi3+0x1a8>
   20244:	00800a13          	li	s4,8
   20248:	014457b3          	srl	a5,s0,s4
   2024c:	00f90933          	add	s2,s2,a5
   20250:	00094683          	lbu	a3,0(s2)
   20254:	02000613          	li	a2,32
   20258:	014686b3          	add	a3,a3,s4
   2025c:	40d60633          	sub	a2,a2,a3
   20260:	12061263          	bnez	a2,20384 <__udivdi3+0x2e4>
   20264:	408484b3          	sub	s1,s1,s0
   20268:	00100a13          	li	s4,1
   2026c:	01045b13          	srli	s6,s0,0x10
   20270:	000b0593          	mv	a1,s6
   20274:	00048513          	mv	a0,s1
   20278:	c64f00ef          	jal	ra,106dc <__umodsi3>
   2027c:	00050913          	mv	s2,a0
   20280:	000b0593          	mv	a1,s6
   20284:	00048513          	mv	a0,s1
   20288:	01041b93          	slli	s7,s0,0x10
   2028c:	c08f00ef          	jal	ra,10694 <__udivsi3>
   20290:	010bdb93          	srli	s7,s7,0x10
   20294:	00050493          	mv	s1,a0
   20298:	00050593          	mv	a1,a0
   2029c:	000b8513          	mv	a0,s7
   202a0:	379040ef          	jal	ra,24e18 <__mulsi3>
   202a4:	01091913          	slli	s2,s2,0x10
   202a8:	0109d713          	srli	a4,s3,0x10
   202ac:	00e96733          	or	a4,s2,a4
   202b0:	00048a93          	mv	s5,s1
   202b4:	00a77e63          	bgeu	a4,a0,202d0 <__udivdi3+0x230>
   202b8:	00870733          	add	a4,a4,s0
   202bc:	fff48a93          	addi	s5,s1,-1
   202c0:	00876863          	bltu	a4,s0,202d0 <__udivdi3+0x230>
   202c4:	00a77663          	bgeu	a4,a0,202d0 <__udivdi3+0x230>
   202c8:	ffe48a93          	addi	s5,s1,-2
   202cc:	00870733          	add	a4,a4,s0
   202d0:	40a704b3          	sub	s1,a4,a0
   202d4:	000b0593          	mv	a1,s6
   202d8:	00048513          	mv	a0,s1
   202dc:	c00f00ef          	jal	ra,106dc <__umodsi3>
   202e0:	00050913          	mv	s2,a0
   202e4:	000b0593          	mv	a1,s6
   202e8:	00048513          	mv	a0,s1
   202ec:	ba8f00ef          	jal	ra,10694 <__udivsi3>
   202f0:	01099993          	slli	s3,s3,0x10
   202f4:	00050493          	mv	s1,a0
   202f8:	00050593          	mv	a1,a0
   202fc:	01091913          	slli	s2,s2,0x10
   20300:	000b8513          	mv	a0,s7
   20304:	0109d993          	srli	s3,s3,0x10
   20308:	311040ef          	jal	ra,24e18 <__mulsi3>
   2030c:	013969b3          	or	s3,s2,s3
   20310:	00048613          	mv	a2,s1
   20314:	00a9fc63          	bgeu	s3,a0,2032c <__udivdi3+0x28c>
   20318:	013409b3          	add	s3,s0,s3
   2031c:	fff48613          	addi	a2,s1,-1
   20320:	0089e663          	bltu	s3,s0,2032c <__udivdi3+0x28c>
   20324:	00a9f463          	bgeu	s3,a0,2032c <__udivdi3+0x28c>
   20328:	ffe48613          	addi	a2,s1,-2
   2032c:	010a9793          	slli	a5,s5,0x10
   20330:	00c7e7b3          	or	a5,a5,a2
   20334:	00078513          	mv	a0,a5
   20338:	000a0593          	mv	a1,s4
   2033c:	02c12083          	lw	ra,44(sp)
   20340:	02812403          	lw	s0,40(sp)
   20344:	02412483          	lw	s1,36(sp)
   20348:	02012903          	lw	s2,32(sp)
   2034c:	01c12983          	lw	s3,28(sp)
   20350:	01812a03          	lw	s4,24(sp)
   20354:	01412a83          	lw	s5,20(sp)
   20358:	01012b03          	lw	s6,16(sp)
   2035c:	00c12b83          	lw	s7,12(sp)
   20360:	00812c03          	lw	s8,8(sp)
   20364:	00412c83          	lw	s9,4(sp)
   20368:	03010113          	addi	sp,sp,48
   2036c:	00008067          	ret
   20370:	010007b7          	lui	a5,0x1000
   20374:	01000a13          	li	s4,16
   20378:	ecf468e3          	bltu	s0,a5,20248 <__udivdi3+0x1a8>
   2037c:	01800a13          	li	s4,24
   20380:	ec9ff06f          	j	20248 <__udivdi3+0x1a8>
   20384:	00c41433          	sll	s0,s0,a2
   20388:	00d4da33          	srl	s4,s1,a3
   2038c:	00cb19b3          	sll	s3,s6,a2
   20390:	00db56b3          	srl	a3,s6,a3
   20394:	01045b13          	srli	s6,s0,0x10
   20398:	00c494b3          	sll	s1,s1,a2
   2039c:	000b0593          	mv	a1,s6
   203a0:	000a0513          	mv	a0,s4
   203a4:	0096eab3          	or	s5,a3,s1
   203a8:	b34f00ef          	jal	ra,106dc <__umodsi3>
   203ac:	00050913          	mv	s2,a0
   203b0:	000b0593          	mv	a1,s6
   203b4:	000a0513          	mv	a0,s4
   203b8:	01041b93          	slli	s7,s0,0x10
   203bc:	ad8f00ef          	jal	ra,10694 <__udivsi3>
   203c0:	010bdb93          	srli	s7,s7,0x10
   203c4:	00050493          	mv	s1,a0
   203c8:	00050593          	mv	a1,a0
   203cc:	000b8513          	mv	a0,s7
   203d0:	249040ef          	jal	ra,24e18 <__mulsi3>
   203d4:	01091913          	slli	s2,s2,0x10
   203d8:	010ad713          	srli	a4,s5,0x10
   203dc:	00e96733          	or	a4,s2,a4
   203e0:	00048a13          	mv	s4,s1
   203e4:	00a77e63          	bgeu	a4,a0,20400 <__udivdi3+0x360>
   203e8:	00870733          	add	a4,a4,s0
   203ec:	fff48a13          	addi	s4,s1,-1
   203f0:	00876863          	bltu	a4,s0,20400 <__udivdi3+0x360>
   203f4:	00a77663          	bgeu	a4,a0,20400 <__udivdi3+0x360>
   203f8:	ffe48a13          	addi	s4,s1,-2
   203fc:	00870733          	add	a4,a4,s0
   20400:	40a704b3          	sub	s1,a4,a0
   20404:	000b0593          	mv	a1,s6
   20408:	00048513          	mv	a0,s1
   2040c:	ad0f00ef          	jal	ra,106dc <__umodsi3>
   20410:	00050913          	mv	s2,a0
   20414:	000b0593          	mv	a1,s6
   20418:	00048513          	mv	a0,s1
   2041c:	a78f00ef          	jal	ra,10694 <__udivsi3>
   20420:	00050493          	mv	s1,a0
   20424:	00050593          	mv	a1,a0
   20428:	000b8513          	mv	a0,s7
   2042c:	1ed040ef          	jal	ra,24e18 <__mulsi3>
   20430:	010a9693          	slli	a3,s5,0x10
   20434:	01091913          	slli	s2,s2,0x10
   20438:	0106d693          	srli	a3,a3,0x10
   2043c:	00d967b3          	or	a5,s2,a3
   20440:	00048713          	mv	a4,s1
   20444:	00a7fe63          	bgeu	a5,a0,20460 <__udivdi3+0x3c0>
   20448:	008787b3          	add	a5,a5,s0
   2044c:	fff48713          	addi	a4,s1,-1
   20450:	0087e863          	bltu	a5,s0,20460 <__udivdi3+0x3c0>
   20454:	00a7f663          	bgeu	a5,a0,20460 <__udivdi3+0x3c0>
   20458:	ffe48713          	addi	a4,s1,-2
   2045c:	008787b3          	add	a5,a5,s0
   20460:	010a1a13          	slli	s4,s4,0x10
   20464:	40a784b3          	sub	s1,a5,a0
   20468:	00ea6a33          	or	s4,s4,a4
   2046c:	e01ff06f          	j	2026c <__udivdi3+0x1cc>
   20470:	1ed5ec63          	bltu	a1,a3,20668 <__udivdi3+0x5c8>
   20474:	000107b7          	lui	a5,0x10
   20478:	04f6f463          	bgeu	a3,a5,204c0 <__udivdi3+0x420>
   2047c:	0ff00593          	li	a1,255
   20480:	00d5b533          	sltu	a0,a1,a3
   20484:	00351513          	slli	a0,a0,0x3
   20488:	00a6d733          	srl	a4,a3,a0
   2048c:	00006797          	auipc	a5,0x6
   20490:	82078793          	addi	a5,a5,-2016 # 25cac <__clz_tab>
   20494:	00e787b3          	add	a5,a5,a4
   20498:	0007c583          	lbu	a1,0(a5)
   2049c:	02000a13          	li	s4,32
   204a0:	00a585b3          	add	a1,a1,a0
   204a4:	40ba0a33          	sub	s4,s4,a1
   204a8:	020a1663          	bnez	s4,204d4 <__udivdi3+0x434>
   204ac:	00100793          	li	a5,1
   204b0:	e896e2e3          	bltu	a3,s1,20334 <__udivdi3+0x294>
   204b4:	00cb3633          	sltu	a2,s6,a2
   204b8:	00164793          	xori	a5,a2,1
   204bc:	e79ff06f          	j	20334 <__udivdi3+0x294>
   204c0:	010007b7          	lui	a5,0x1000
   204c4:	01000513          	li	a0,16
   204c8:	fcf6e0e3          	bltu	a3,a5,20488 <__udivdi3+0x3e8>
   204cc:	01800513          	li	a0,24
   204d0:	fb9ff06f          	j	20488 <__udivdi3+0x3e8>
   204d4:	00b65ab3          	srl	s5,a2,a1
   204d8:	014696b3          	sll	a3,a3,s4
   204dc:	00daeab3          	or	s5,s5,a3
   204e0:	00b4d933          	srl	s2,s1,a1
   204e4:	014497b3          	sll	a5,s1,s4
   204e8:	00bb55b3          	srl	a1,s6,a1
   204ec:	010adb93          	srli	s7,s5,0x10
   204f0:	00f5e4b3          	or	s1,a1,a5
   204f4:	00090513          	mv	a0,s2
   204f8:	000b8593          	mv	a1,s7
   204fc:	014619b3          	sll	s3,a2,s4
   20500:	9dcf00ef          	jal	ra,106dc <__umodsi3>
   20504:	00050413          	mv	s0,a0
   20508:	000b8593          	mv	a1,s7
   2050c:	00090513          	mv	a0,s2
   20510:	010a9c13          	slli	s8,s5,0x10
   20514:	980f00ef          	jal	ra,10694 <__udivsi3>
   20518:	010c5c13          	srli	s8,s8,0x10
   2051c:	00050913          	mv	s2,a0
   20520:	00050593          	mv	a1,a0
   20524:	000c0513          	mv	a0,s8
   20528:	0f1040ef          	jal	ra,24e18 <__mulsi3>
   2052c:	01041413          	slli	s0,s0,0x10
   20530:	0104d713          	srli	a4,s1,0x10
   20534:	00e46733          	or	a4,s0,a4
   20538:	00090c93          	mv	s9,s2
   2053c:	00a77e63          	bgeu	a4,a0,20558 <__udivdi3+0x4b8>
   20540:	01570733          	add	a4,a4,s5
   20544:	fff90c93          	addi	s9,s2,-1
   20548:	01576863          	bltu	a4,s5,20558 <__udivdi3+0x4b8>
   2054c:	00a77663          	bgeu	a4,a0,20558 <__udivdi3+0x4b8>
   20550:	ffe90c93          	addi	s9,s2,-2
   20554:	01570733          	add	a4,a4,s5
   20558:	40a70933          	sub	s2,a4,a0
   2055c:	000b8593          	mv	a1,s7
   20560:	00090513          	mv	a0,s2
   20564:	978f00ef          	jal	ra,106dc <__umodsi3>
   20568:	00050413          	mv	s0,a0
   2056c:	000b8593          	mv	a1,s7
   20570:	00090513          	mv	a0,s2
   20574:	920f00ef          	jal	ra,10694 <__udivsi3>
   20578:	00050913          	mv	s2,a0
   2057c:	00050593          	mv	a1,a0
   20580:	000c0513          	mv	a0,s8
   20584:	095040ef          	jal	ra,24e18 <__mulsi3>
   20588:	01049793          	slli	a5,s1,0x10
   2058c:	01041413          	slli	s0,s0,0x10
   20590:	0107d793          	srli	a5,a5,0x10
   20594:	00f46733          	or	a4,s0,a5
   20598:	00090613          	mv	a2,s2
   2059c:	00a77e63          	bgeu	a4,a0,205b8 <__udivdi3+0x518>
   205a0:	01570733          	add	a4,a4,s5
   205a4:	fff90613          	addi	a2,s2,-1
   205a8:	01576863          	bltu	a4,s5,205b8 <__udivdi3+0x518>
   205ac:	00a77663          	bgeu	a4,a0,205b8 <__udivdi3+0x518>
   205b0:	ffe90613          	addi	a2,s2,-2
   205b4:	01570733          	add	a4,a4,s5
   205b8:	010c9793          	slli	a5,s9,0x10
   205bc:	00010e37          	lui	t3,0x10
   205c0:	00c7e7b3          	or	a5,a5,a2
   205c4:	fffe0813          	addi	a6,t3,-1 # ffff <register_fini-0x75>
   205c8:	0107f333          	and	t1,a5,a6
   205cc:	0109f833          	and	a6,s3,a6
   205d0:	40a70733          	sub	a4,a4,a0
   205d4:	0107de93          	srli	t4,a5,0x10
   205d8:	0109d993          	srli	s3,s3,0x10
   205dc:	00030513          	mv	a0,t1
   205e0:	00080593          	mv	a1,a6
   205e4:	035040ef          	jal	ra,24e18 <__mulsi3>
   205e8:	00050893          	mv	a7,a0
   205ec:	00098593          	mv	a1,s3
   205f0:	00030513          	mv	a0,t1
   205f4:	025040ef          	jal	ra,24e18 <__mulsi3>
   205f8:	00050313          	mv	t1,a0
   205fc:	00080593          	mv	a1,a6
   20600:	000e8513          	mv	a0,t4
   20604:	015040ef          	jal	ra,24e18 <__mulsi3>
   20608:	00050813          	mv	a6,a0
   2060c:	00098593          	mv	a1,s3
   20610:	000e8513          	mv	a0,t4
   20614:	005040ef          	jal	ra,24e18 <__mulsi3>
   20618:	0108d693          	srli	a3,a7,0x10
   2061c:	01030333          	add	t1,t1,a6
   20620:	006686b3          	add	a3,a3,t1
   20624:	0106f463          	bgeu	a3,a6,2062c <__udivdi3+0x58c>
   20628:	01c50533          	add	a0,a0,t3
   2062c:	0106d613          	srli	a2,a3,0x10
   20630:	00a60533          	add	a0,a2,a0
   20634:	02a76663          	bltu	a4,a0,20660 <__udivdi3+0x5c0>
   20638:	bca714e3          	bne	a4,a0,20200 <__udivdi3+0x160>
   2063c:	00010737          	lui	a4,0x10
   20640:	fff70713          	addi	a4,a4,-1 # ffff <register_fini-0x75>
   20644:	00e6f6b3          	and	a3,a3,a4
   20648:	01069693          	slli	a3,a3,0x10
   2064c:	00e8f8b3          	and	a7,a7,a4
   20650:	014b1633          	sll	a2,s6,s4
   20654:	011686b3          	add	a3,a3,a7
   20658:	00000a13          	li	s4,0
   2065c:	ccd67ce3          	bgeu	a2,a3,20334 <__udivdi3+0x294>
   20660:	fff78793          	addi	a5,a5,-1 # ffffff <__BSS_END__+0xfd9517>
   20664:	b9dff06f          	j	20200 <__udivdi3+0x160>
   20668:	00000a13          	li	s4,0
   2066c:	00000793          	li	a5,0
   20670:	cc5ff06f          	j	20334 <__udivdi3+0x294>

00020674 <__umoddi3>:
   20674:	fd010113          	addi	sp,sp,-48
   20678:	02812423          	sw	s0,40(sp)
   2067c:	02912223          	sw	s1,36(sp)
   20680:	01312e23          	sw	s3,28(sp)
   20684:	01612823          	sw	s6,16(sp)
   20688:	02112623          	sw	ra,44(sp)
   2068c:	03212023          	sw	s2,32(sp)
   20690:	01412c23          	sw	s4,24(sp)
   20694:	01512a23          	sw	s5,20(sp)
   20698:	01712623          	sw	s7,12(sp)
   2069c:	01812423          	sw	s8,8(sp)
   206a0:	01912223          	sw	s9,4(sp)
   206a4:	01a12023          	sw	s10,0(sp)
   206a8:	00050b13          	mv	s6,a0
   206ac:	00058993          	mv	s3,a1
   206b0:	00050413          	mv	s0,a0
   206b4:	00058493          	mv	s1,a1
   206b8:	26069c63          	bnez	a3,20930 <__umoddi3+0x2bc>
   206bc:	00060913          	mv	s2,a2
   206c0:	00068a13          	mv	s4,a3
   206c4:	00005a97          	auipc	s5,0x5
   206c8:	5e8a8a93          	addi	s5,s5,1512 # 25cac <__clz_tab>
   206cc:	14c5f263          	bgeu	a1,a2,20810 <__umoddi3+0x19c>
   206d0:	000107b7          	lui	a5,0x10
   206d4:	12f67463          	bgeu	a2,a5,207fc <__umoddi3+0x188>
   206d8:	0ff00793          	li	a5,255
   206dc:	00c7f463          	bgeu	a5,a2,206e4 <__umoddi3+0x70>
   206e0:	00800a13          	li	s4,8
   206e4:	014657b3          	srl	a5,a2,s4
   206e8:	00fa8ab3          	add	s5,s5,a5
   206ec:	000ac703          	lbu	a4,0(s5)
   206f0:	02000513          	li	a0,32
   206f4:	01470733          	add	a4,a4,s4
   206f8:	40e50a33          	sub	s4,a0,a4
   206fc:	000a0c63          	beqz	s4,20714 <__umoddi3+0xa0>
   20700:	014995b3          	sll	a1,s3,s4
   20704:	00eb5733          	srl	a4,s6,a4
   20708:	01461933          	sll	s2,a2,s4
   2070c:	00b764b3          	or	s1,a4,a1
   20710:	014b1433          	sll	s0,s6,s4
   20714:	01095a93          	srli	s5,s2,0x10
   20718:	000a8593          	mv	a1,s5
   2071c:	00048513          	mv	a0,s1
   20720:	fbdef0ef          	jal	ra,106dc <__umodsi3>
   20724:	00050993          	mv	s3,a0
   20728:	000a8593          	mv	a1,s5
   2072c:	01091b13          	slli	s6,s2,0x10
   20730:	00048513          	mv	a0,s1
   20734:	f61ef0ef          	jal	ra,10694 <__udivsi3>
   20738:	010b5b13          	srli	s6,s6,0x10
   2073c:	00050593          	mv	a1,a0
   20740:	000b0513          	mv	a0,s6
   20744:	6d4040ef          	jal	ra,24e18 <__mulsi3>
   20748:	01099993          	slli	s3,s3,0x10
   2074c:	01045793          	srli	a5,s0,0x10
   20750:	00f9e7b3          	or	a5,s3,a5
   20754:	00a7fa63          	bgeu	a5,a0,20768 <__umoddi3+0xf4>
   20758:	012787b3          	add	a5,a5,s2
   2075c:	0127e663          	bltu	a5,s2,20768 <__umoddi3+0xf4>
   20760:	00a7f463          	bgeu	a5,a0,20768 <__umoddi3+0xf4>
   20764:	012787b3          	add	a5,a5,s2
   20768:	40a784b3          	sub	s1,a5,a0
   2076c:	000a8593          	mv	a1,s5
   20770:	00048513          	mv	a0,s1
   20774:	f69ef0ef          	jal	ra,106dc <__umodsi3>
   20778:	00050993          	mv	s3,a0
   2077c:	000a8593          	mv	a1,s5
   20780:	00048513          	mv	a0,s1
   20784:	f11ef0ef          	jal	ra,10694 <__udivsi3>
   20788:	01041413          	slli	s0,s0,0x10
   2078c:	00050593          	mv	a1,a0
   20790:	01099993          	slli	s3,s3,0x10
   20794:	000b0513          	mv	a0,s6
   20798:	01045413          	srli	s0,s0,0x10
   2079c:	67c040ef          	jal	ra,24e18 <__mulsi3>
   207a0:	0089e433          	or	s0,s3,s0
   207a4:	00a47a63          	bgeu	s0,a0,207b8 <__umoddi3+0x144>
   207a8:	01240433          	add	s0,s0,s2
   207ac:	01246663          	bltu	s0,s2,207b8 <__umoddi3+0x144>
   207b0:	00a47463          	bgeu	s0,a0,207b8 <__umoddi3+0x144>
   207b4:	01240433          	add	s0,s0,s2
   207b8:	40a40433          	sub	s0,s0,a0
   207bc:	01445533          	srl	a0,s0,s4
   207c0:	00000593          	li	a1,0
   207c4:	02c12083          	lw	ra,44(sp)
   207c8:	02812403          	lw	s0,40(sp)
   207cc:	02412483          	lw	s1,36(sp)
   207d0:	02012903          	lw	s2,32(sp)
   207d4:	01c12983          	lw	s3,28(sp)
   207d8:	01812a03          	lw	s4,24(sp)
   207dc:	01412a83          	lw	s5,20(sp)
   207e0:	01012b03          	lw	s6,16(sp)
   207e4:	00c12b83          	lw	s7,12(sp)
   207e8:	00812c03          	lw	s8,8(sp)
   207ec:	00412c83          	lw	s9,4(sp)
   207f0:	00012d03          	lw	s10,0(sp)
   207f4:	03010113          	addi	sp,sp,48
   207f8:	00008067          	ret
   207fc:	010007b7          	lui	a5,0x1000
   20800:	01000a13          	li	s4,16
   20804:	eef660e3          	bltu	a2,a5,206e4 <__umoddi3+0x70>
   20808:	01800a13          	li	s4,24
   2080c:	ed9ff06f          	j	206e4 <__umoddi3+0x70>
   20810:	00061a63          	bnez	a2,20824 <__umoddi3+0x1b0>
   20814:	00000593          	li	a1,0
   20818:	00100513          	li	a0,1
   2081c:	e79ef0ef          	jal	ra,10694 <__udivsi3>
   20820:	00050913          	mv	s2,a0
   20824:	000107b7          	lui	a5,0x10
   20828:	0ef97a63          	bgeu	s2,a5,2091c <__umoddi3+0x2a8>
   2082c:	0ff00793          	li	a5,255
   20830:	0127f463          	bgeu	a5,s2,20838 <__umoddi3+0x1c4>
   20834:	00800a13          	li	s4,8
   20838:	014957b3          	srl	a5,s2,s4
   2083c:	00fa8ab3          	add	s5,s5,a5
   20840:	000ac703          	lbu	a4,0(s5)
   20844:	02000513          	li	a0,32
   20848:	412984b3          	sub	s1,s3,s2
   2084c:	01470733          	add	a4,a4,s4
   20850:	40e50a33          	sub	s4,a0,a4
   20854:	ec0a00e3          	beqz	s4,20714 <__umoddi3+0xa0>
   20858:	01491933          	sll	s2,s2,s4
   2085c:	00e9dab3          	srl	s5,s3,a4
   20860:	014995b3          	sll	a1,s3,s4
   20864:	00eb5733          	srl	a4,s6,a4
   20868:	01095493          	srli	s1,s2,0x10
   2086c:	00b76bb3          	or	s7,a4,a1
   20870:	000a8513          	mv	a0,s5
   20874:	00048593          	mv	a1,s1
   20878:	e65ef0ef          	jal	ra,106dc <__umodsi3>
   2087c:	00050993          	mv	s3,a0
   20880:	00048593          	mv	a1,s1
   20884:	014b1433          	sll	s0,s6,s4
   20888:	000a8513          	mv	a0,s5
   2088c:	01091b13          	slli	s6,s2,0x10
   20890:	e05ef0ef          	jal	ra,10694 <__udivsi3>
   20894:	010b5b13          	srli	s6,s6,0x10
   20898:	00050593          	mv	a1,a0
   2089c:	000b0513          	mv	a0,s6
   208a0:	578040ef          	jal	ra,24e18 <__mulsi3>
   208a4:	01099993          	slli	s3,s3,0x10
   208a8:	010bd793          	srli	a5,s7,0x10
   208ac:	00f9e7b3          	or	a5,s3,a5
   208b0:	00a7fa63          	bgeu	a5,a0,208c4 <__umoddi3+0x250>
   208b4:	012787b3          	add	a5,a5,s2
   208b8:	0127e663          	bltu	a5,s2,208c4 <__umoddi3+0x250>
   208bc:	00a7f463          	bgeu	a5,a0,208c4 <__umoddi3+0x250>
   208c0:	012787b3          	add	a5,a5,s2
   208c4:	40a78ab3          	sub	s5,a5,a0
   208c8:	00048593          	mv	a1,s1
   208cc:	000a8513          	mv	a0,s5
   208d0:	e0def0ef          	jal	ra,106dc <__umodsi3>
   208d4:	00050993          	mv	s3,a0
   208d8:	00048593          	mv	a1,s1
   208dc:	000a8513          	mv	a0,s5
   208e0:	db5ef0ef          	jal	ra,10694 <__udivsi3>
   208e4:	00050593          	mv	a1,a0
   208e8:	000b0513          	mv	a0,s6
   208ec:	52c040ef          	jal	ra,24e18 <__mulsi3>
   208f0:	010b9593          	slli	a1,s7,0x10
   208f4:	01099993          	slli	s3,s3,0x10
   208f8:	0105d593          	srli	a1,a1,0x10
   208fc:	00b9e5b3          	or	a1,s3,a1
   20900:	00a5fa63          	bgeu	a1,a0,20914 <__umoddi3+0x2a0>
   20904:	012585b3          	add	a1,a1,s2
   20908:	0125e663          	bltu	a1,s2,20914 <__umoddi3+0x2a0>
   2090c:	00a5f463          	bgeu	a1,a0,20914 <__umoddi3+0x2a0>
   20910:	012585b3          	add	a1,a1,s2
   20914:	40a584b3          	sub	s1,a1,a0
   20918:	dfdff06f          	j	20714 <__umoddi3+0xa0>
   2091c:	010007b7          	lui	a5,0x1000
   20920:	01000a13          	li	s4,16
   20924:	f0f96ae3          	bltu	s2,a5,20838 <__umoddi3+0x1c4>
   20928:	01800a13          	li	s4,24
   2092c:	f0dff06f          	j	20838 <__umoddi3+0x1c4>
   20930:	e8d5eae3          	bltu	a1,a3,207c4 <__umoddi3+0x150>
   20934:	000107b7          	lui	a5,0x10
   20938:	04f6fc63          	bgeu	a3,a5,20990 <__umoddi3+0x31c>
   2093c:	0ff00a93          	li	s5,255
   20940:	00dab533          	sltu	a0,s5,a3
   20944:	00351513          	slli	a0,a0,0x3
   20948:	00a6d733          	srl	a4,a3,a0
   2094c:	00005797          	auipc	a5,0x5
   20950:	36078793          	addi	a5,a5,864 # 25cac <__clz_tab>
   20954:	00e787b3          	add	a5,a5,a4
   20958:	0007ca83          	lbu	s5,0(a5)
   2095c:	02000593          	li	a1,32
   20960:	00aa8ab3          	add	s5,s5,a0
   20964:	41558a33          	sub	s4,a1,s5
   20968:	020a1e63          	bnez	s4,209a4 <__umoddi3+0x330>
   2096c:	0136e463          	bltu	a3,s3,20974 <__umoddi3+0x300>
   20970:	00cb6a63          	bltu	s6,a2,20984 <__umoddi3+0x310>
   20974:	40cb0433          	sub	s0,s6,a2
   20978:	40d986b3          	sub	a3,s3,a3
   2097c:	008b3b33          	sltu	s6,s6,s0
   20980:	416684b3          	sub	s1,a3,s6
   20984:	00040513          	mv	a0,s0
   20988:	00048593          	mv	a1,s1
   2098c:	e39ff06f          	j	207c4 <__umoddi3+0x150>
   20990:	010007b7          	lui	a5,0x1000
   20994:	01000513          	li	a0,16
   20998:	faf6e8e3          	bltu	a3,a5,20948 <__umoddi3+0x2d4>
   2099c:	01800513          	li	a0,24
   209a0:	fa9ff06f          	j	20948 <__umoddi3+0x2d4>
   209a4:	014696b3          	sll	a3,a3,s4
   209a8:	015657b3          	srl	a5,a2,s5
   209ac:	00d7ebb3          	or	s7,a5,a3
   209b0:	0159d433          	srl	s0,s3,s5
   209b4:	014995b3          	sll	a1,s3,s4
   209b8:	015b54b3          	srl	s1,s6,s5
   209bc:	010bdc13          	srli	s8,s7,0x10
   209c0:	00b4e4b3          	or	s1,s1,a1
   209c4:	00040513          	mv	a0,s0
   209c8:	000c0593          	mv	a1,s8
   209cc:	01461d33          	sll	s10,a2,s4
   209d0:	d0def0ef          	jal	ra,106dc <__umodsi3>
   209d4:	00050993          	mv	s3,a0
   209d8:	000c0593          	mv	a1,s8
   209dc:	00040513          	mv	a0,s0
   209e0:	010b9c93          	slli	s9,s7,0x10
   209e4:	cb1ef0ef          	jal	ra,10694 <__udivsi3>
   209e8:	010cdc93          	srli	s9,s9,0x10
   209ec:	00050413          	mv	s0,a0
   209f0:	00050593          	mv	a1,a0
   209f4:	000c8513          	mv	a0,s9
   209f8:	420040ef          	jal	ra,24e18 <__mulsi3>
   209fc:	01099993          	slli	s3,s3,0x10
   20a00:	0104d713          	srli	a4,s1,0x10
   20a04:	00e9e733          	or	a4,s3,a4
   20a08:	014b1b33          	sll	s6,s6,s4
   20a0c:	00040993          	mv	s3,s0
   20a10:	00a77e63          	bgeu	a4,a0,20a2c <__umoddi3+0x3b8>
   20a14:	01770733          	add	a4,a4,s7
   20a18:	fff40993          	addi	s3,s0,-1
   20a1c:	01776863          	bltu	a4,s7,20a2c <__umoddi3+0x3b8>
   20a20:	00a77663          	bgeu	a4,a0,20a2c <__umoddi3+0x3b8>
   20a24:	ffe40993          	addi	s3,s0,-2
   20a28:	01770733          	add	a4,a4,s7
   20a2c:	40a70933          	sub	s2,a4,a0
   20a30:	000c0593          	mv	a1,s8
   20a34:	00090513          	mv	a0,s2
   20a38:	ca5ef0ef          	jal	ra,106dc <__umodsi3>
   20a3c:	00050413          	mv	s0,a0
   20a40:	000c0593          	mv	a1,s8
   20a44:	00090513          	mv	a0,s2
   20a48:	c4def0ef          	jal	ra,10694 <__udivsi3>
   20a4c:	00050593          	mv	a1,a0
   20a50:	00050913          	mv	s2,a0
   20a54:	000c8513          	mv	a0,s9
   20a58:	3c0040ef          	jal	ra,24e18 <__mulsi3>
   20a5c:	01049593          	slli	a1,s1,0x10
   20a60:	01041413          	slli	s0,s0,0x10
   20a64:	0105d593          	srli	a1,a1,0x10
   20a68:	00b465b3          	or	a1,s0,a1
   20a6c:	00090793          	mv	a5,s2
   20a70:	00a5fe63          	bgeu	a1,a0,20a8c <__umoddi3+0x418>
   20a74:	017585b3          	add	a1,a1,s7
   20a78:	fff90793          	addi	a5,s2,-1
   20a7c:	0175e863          	bltu	a1,s7,20a8c <__umoddi3+0x418>
   20a80:	00a5f663          	bgeu	a1,a0,20a8c <__umoddi3+0x418>
   20a84:	ffe90793          	addi	a5,s2,-2
   20a88:	017585b3          	add	a1,a1,s7
   20a8c:	00010e37          	lui	t3,0x10
   20a90:	01099993          	slli	s3,s3,0x10
   20a94:	00f9e9b3          	or	s3,s3,a5
   20a98:	fffe0813          	addi	a6,t3,-1 # ffff <register_fini-0x75>
   20a9c:	0109f733          	and	a4,s3,a6
   20aa0:	010d7833          	and	a6,s10,a6
   20aa4:	40a584b3          	sub	s1,a1,a0
   20aa8:	0109d993          	srli	s3,s3,0x10
   20aac:	010d5893          	srli	a7,s10,0x10
   20ab0:	00070513          	mv	a0,a4
   20ab4:	00080593          	mv	a1,a6
   20ab8:	360040ef          	jal	ra,24e18 <__mulsi3>
   20abc:	00050793          	mv	a5,a0
   20ac0:	00088593          	mv	a1,a7
   20ac4:	00070513          	mv	a0,a4
   20ac8:	350040ef          	jal	ra,24e18 <__mulsi3>
   20acc:	00050313          	mv	t1,a0
   20ad0:	00080593          	mv	a1,a6
   20ad4:	00098513          	mv	a0,s3
   20ad8:	340040ef          	jal	ra,24e18 <__mulsi3>
   20adc:	00050813          	mv	a6,a0
   20ae0:	00088593          	mv	a1,a7
   20ae4:	00098513          	mv	a0,s3
   20ae8:	330040ef          	jal	ra,24e18 <__mulsi3>
   20aec:	0107d713          	srli	a4,a5,0x10
   20af0:	01030333          	add	t1,t1,a6
   20af4:	00670733          	add	a4,a4,t1
   20af8:	01077463          	bgeu	a4,a6,20b00 <__umoddi3+0x48c>
   20afc:	01c50533          	add	a0,a0,t3
   20b00:	000106b7          	lui	a3,0x10
   20b04:	fff68693          	addi	a3,a3,-1 # ffff <register_fini-0x75>
   20b08:	01075593          	srli	a1,a4,0x10
   20b0c:	00d77733          	and	a4,a4,a3
   20b10:	01071713          	slli	a4,a4,0x10
   20b14:	00d7f7b3          	and	a5,a5,a3
   20b18:	00a585b3          	add	a1,a1,a0
   20b1c:	00f707b3          	add	a5,a4,a5
   20b20:	00b4e663          	bltu	s1,a1,20b2c <__umoddi3+0x4b8>
   20b24:	00b49e63          	bne	s1,a1,20b40 <__umoddi3+0x4cc>
   20b28:	00fb7c63          	bgeu	s6,a5,20b40 <__umoddi3+0x4cc>
   20b2c:	41a78633          	sub	a2,a5,s10
   20b30:	00c7b7b3          	sltu	a5,a5,a2
   20b34:	017787b3          	add	a5,a5,s7
   20b38:	40f585b3          	sub	a1,a1,a5
   20b3c:	00060793          	mv	a5,a2
   20b40:	40fb07b3          	sub	a5,s6,a5
   20b44:	00fb3b33          	sltu	s6,s6,a5
   20b48:	40b485b3          	sub	a1,s1,a1
   20b4c:	416585b3          	sub	a1,a1,s6
   20b50:	01559433          	sll	s0,a1,s5
   20b54:	0147d7b3          	srl	a5,a5,s4
   20b58:	00f46533          	or	a0,s0,a5
   20b5c:	0145d5b3          	srl	a1,a1,s4
   20b60:	c65ff06f          	j	207c4 <__umoddi3+0x150>

00020b64 <__divdf3>:
   20b64:	fb010113          	addi	sp,sp,-80
   20b68:	03312e23          	sw	s3,60(sp)
   20b6c:	0145d993          	srli	s3,a1,0x14
   20b70:	04912223          	sw	s1,68(sp)
   20b74:	05212023          	sw	s2,64(sp)
   20b78:	03512a23          	sw	s5,52(sp)
   20b7c:	03612823          	sw	s6,48(sp)
   20b80:	03712623          	sw	s7,44(sp)
   20b84:	00c59493          	slli	s1,a1,0xc
   20b88:	04112623          	sw	ra,76(sp)
   20b8c:	04812423          	sw	s0,72(sp)
   20b90:	03412c23          	sw	s4,56(sp)
   20b94:	03812423          	sw	s8,40(sp)
   20b98:	03912223          	sw	s9,36(sp)
   20b9c:	03a12023          	sw	s10,32(sp)
   20ba0:	01b12e23          	sw	s11,28(sp)
   20ba4:	7ff9f993          	andi	s3,s3,2047
   20ba8:	00050913          	mv	s2,a0
   20bac:	00060b93          	mv	s7,a2
   20bb0:	00068b13          	mv	s6,a3
   20bb4:	00c4d493          	srli	s1,s1,0xc
   20bb8:	01f5da93          	srli	s5,a1,0x1f
   20bbc:	0a098263          	beqz	s3,20c60 <__divdf3+0xfc>
   20bc0:	7ff00793          	li	a5,2047
   20bc4:	10f98063          	beq	s3,a5,20cc4 <__divdf3+0x160>
   20bc8:	01d55c93          	srli	s9,a0,0x1d
   20bcc:	00349493          	slli	s1,s1,0x3
   20bd0:	009ce4b3          	or	s1,s9,s1
   20bd4:	00800cb7          	lui	s9,0x800
   20bd8:	0194ecb3          	or	s9,s1,s9
   20bdc:	00351413          	slli	s0,a0,0x3
   20be0:	c0198a13          	addi	s4,s3,-1023
   20be4:	00000c13          	li	s8,0
   20be8:	014b5513          	srli	a0,s6,0x14
   20bec:	00cb1913          	slli	s2,s6,0xc
   20bf0:	7ff57993          	andi	s3,a0,2047
   20bf4:	00c95913          	srli	s2,s2,0xc
   20bf8:	01fb5b13          	srli	s6,s6,0x1f
   20bfc:	10098263          	beqz	s3,20d00 <__divdf3+0x19c>
   20c00:	7ff00793          	li	a5,2047
   20c04:	16f98263          	beq	s3,a5,20d68 <__divdf3+0x204>
   20c08:	00391513          	slli	a0,s2,0x3
   20c0c:	01dbd793          	srli	a5,s7,0x1d
   20c10:	00a7e533          	or	a0,a5,a0
   20c14:	00800937          	lui	s2,0x800
   20c18:	01256933          	or	s2,a0,s2
   20c1c:	003b9813          	slli	a6,s7,0x3
   20c20:	c0198513          	addi	a0,s3,-1023
   20c24:	00000793          	li	a5,0
   20c28:	002c1713          	slli	a4,s8,0x2
   20c2c:	00f76733          	or	a4,a4,a5
   20c30:	fff70713          	addi	a4,a4,-1
   20c34:	00e00693          	li	a3,14
   20c38:	016ac4b3          	xor	s1,s5,s6
   20c3c:	40aa09b3          	sub	s3,s4,a0
   20c40:	16e6e063          	bltu	a3,a4,20da0 <__divdf3+0x23c>
   20c44:	00005697          	auipc	a3,0x5
   20c48:	fb468693          	addi	a3,a3,-76 # 25bf8 <zeroes.4467+0x10>
   20c4c:	00271713          	slli	a4,a4,0x2
   20c50:	00d70733          	add	a4,a4,a3
   20c54:	00072703          	lw	a4,0(a4)
   20c58:	00d70733          	add	a4,a4,a3
   20c5c:	00070067          	jr	a4
   20c60:	00a4ecb3          	or	s9,s1,a0
   20c64:	060c8e63          	beqz	s9,20ce0 <__divdf3+0x17c>
   20c68:	04048063          	beqz	s1,20ca8 <__divdf3+0x144>
   20c6c:	00048513          	mv	a0,s1
   20c70:	1cc040ef          	jal	ra,24e3c <__clzsi2>
   20c74:	ff550793          	addi	a5,a0,-11
   20c78:	01c00713          	li	a4,28
   20c7c:	02f74c63          	blt	a4,a5,20cb4 <__divdf3+0x150>
   20c80:	01d00c93          	li	s9,29
   20c84:	ff850413          	addi	s0,a0,-8
   20c88:	40fc8cb3          	sub	s9,s9,a5
   20c8c:	008494b3          	sll	s1,s1,s0
   20c90:	01995cb3          	srl	s9,s2,s9
   20c94:	009cecb3          	or	s9,s9,s1
   20c98:	00891433          	sll	s0,s2,s0
   20c9c:	c0d00993          	li	s3,-1011
   20ca0:	40a98a33          	sub	s4,s3,a0
   20ca4:	f41ff06f          	j	20be4 <__divdf3+0x80>
   20ca8:	194040ef          	jal	ra,24e3c <__clzsi2>
   20cac:	02050513          	addi	a0,a0,32
   20cb0:	fc5ff06f          	j	20c74 <__divdf3+0x110>
   20cb4:	fd850493          	addi	s1,a0,-40
   20cb8:	00991cb3          	sll	s9,s2,s1
   20cbc:	00000413          	li	s0,0
   20cc0:	fddff06f          	j	20c9c <__divdf3+0x138>
   20cc4:	00a4ecb3          	or	s9,s1,a0
   20cc8:	020c8463          	beqz	s9,20cf0 <__divdf3+0x18c>
   20ccc:	00050413          	mv	s0,a0
   20cd0:	00048c93          	mv	s9,s1
   20cd4:	7ff00a13          	li	s4,2047
   20cd8:	00300c13          	li	s8,3
   20cdc:	f0dff06f          	j	20be8 <__divdf3+0x84>
   20ce0:	00000413          	li	s0,0
   20ce4:	00000a13          	li	s4,0
   20ce8:	00100c13          	li	s8,1
   20cec:	efdff06f          	j	20be8 <__divdf3+0x84>
   20cf0:	00000413          	li	s0,0
   20cf4:	7ff00a13          	li	s4,2047
   20cf8:	00200c13          	li	s8,2
   20cfc:	eedff06f          	j	20be8 <__divdf3+0x84>
   20d00:	01796833          	or	a6,s2,s7
   20d04:	06080e63          	beqz	a6,20d80 <__divdf3+0x21c>
   20d08:	04090063          	beqz	s2,20d48 <__divdf3+0x1e4>
   20d0c:	00090513          	mv	a0,s2
   20d10:	12c040ef          	jal	ra,24e3c <__clzsi2>
   20d14:	ff550793          	addi	a5,a0,-11
   20d18:	01c00713          	li	a4,28
   20d1c:	02f74e63          	blt	a4,a5,20d58 <__divdf3+0x1f4>
   20d20:	01d00713          	li	a4,29
   20d24:	ff850813          	addi	a6,a0,-8
   20d28:	40f70733          	sub	a4,a4,a5
   20d2c:	01091933          	sll	s2,s2,a6
   20d30:	00ebd733          	srl	a4,s7,a4
   20d34:	01276933          	or	s2,a4,s2
   20d38:	010b9833          	sll	a6,s7,a6
   20d3c:	c0d00713          	li	a4,-1011
   20d40:	40a70533          	sub	a0,a4,a0
   20d44:	ee1ff06f          	j	20c24 <__divdf3+0xc0>
   20d48:	000b8513          	mv	a0,s7
   20d4c:	0f0040ef          	jal	ra,24e3c <__clzsi2>
   20d50:	02050513          	addi	a0,a0,32
   20d54:	fc1ff06f          	j	20d14 <__divdf3+0x1b0>
   20d58:	fd850913          	addi	s2,a0,-40
   20d5c:	012b9933          	sll	s2,s7,s2
   20d60:	00000813          	li	a6,0
   20d64:	fd9ff06f          	j	20d3c <__divdf3+0x1d8>
   20d68:	01796833          	or	a6,s2,s7
   20d6c:	02080263          	beqz	a6,20d90 <__divdf3+0x22c>
   20d70:	000b8813          	mv	a6,s7
   20d74:	7ff00513          	li	a0,2047
   20d78:	00300793          	li	a5,3
   20d7c:	eadff06f          	j	20c28 <__divdf3+0xc4>
   20d80:	00000913          	li	s2,0
   20d84:	00000513          	li	a0,0
   20d88:	00100793          	li	a5,1
   20d8c:	e9dff06f          	j	20c28 <__divdf3+0xc4>
   20d90:	00000913          	li	s2,0
   20d94:	7ff00513          	li	a0,2047
   20d98:	00200793          	li	a5,2
   20d9c:	e8dff06f          	j	20c28 <__divdf3+0xc4>
   20da0:	01996663          	bltu	s2,s9,20dac <__divdf3+0x248>
   20da4:	452c9263          	bne	s9,s2,211e8 <__divdf3+0x684>
   20da8:	45046063          	bltu	s0,a6,211e8 <__divdf3+0x684>
   20dac:	01fc9713          	slli	a4,s9,0x1f
   20db0:	00145793          	srli	a5,s0,0x1
   20db4:	01f41d93          	slli	s11,s0,0x1f
   20db8:	001cdc93          	srli	s9,s9,0x1
   20dbc:	00f76433          	or	s0,a4,a5
   20dc0:	01885b93          	srli	s7,a6,0x18
   20dc4:	00891513          	slli	a0,s2,0x8
   20dc8:	00abebb3          	or	s7,s7,a0
   20dcc:	010bda93          	srli	s5,s7,0x10
   20dd0:	000a8593          	mv	a1,s5
   20dd4:	010b9b13          	slli	s6,s7,0x10
   20dd8:	000c8513          	mv	a0,s9
   20ddc:	00881c13          	slli	s8,a6,0x8
   20de0:	010b5b13          	srli	s6,s6,0x10
   20de4:	8b1ef0ef          	jal	ra,10694 <__udivsi3>
   20de8:	00050593          	mv	a1,a0
   20dec:	00050d13          	mv	s10,a0
   20df0:	000b0513          	mv	a0,s6
   20df4:	024040ef          	jal	ra,24e18 <__mulsi3>
   20df8:	00050913          	mv	s2,a0
   20dfc:	000a8593          	mv	a1,s5
   20e00:	000c8513          	mv	a0,s9
   20e04:	8d9ef0ef          	jal	ra,106dc <__umodsi3>
   20e08:	01051513          	slli	a0,a0,0x10
   20e0c:	01045793          	srli	a5,s0,0x10
   20e10:	00a7e533          	or	a0,a5,a0
   20e14:	000d0a13          	mv	s4,s10
   20e18:	01257e63          	bgeu	a0,s2,20e34 <__divdf3+0x2d0>
   20e1c:	01750533          	add	a0,a0,s7
   20e20:	fffd0a13          	addi	s4,s10,-1
   20e24:	01756863          	bltu	a0,s7,20e34 <__divdf3+0x2d0>
   20e28:	01257663          	bgeu	a0,s2,20e34 <__divdf3+0x2d0>
   20e2c:	ffed0a13          	addi	s4,s10,-2
   20e30:	01750533          	add	a0,a0,s7
   20e34:	41250933          	sub	s2,a0,s2
   20e38:	000a8593          	mv	a1,s5
   20e3c:	00090513          	mv	a0,s2
   20e40:	855ef0ef          	jal	ra,10694 <__udivsi3>
   20e44:	00050593          	mv	a1,a0
   20e48:	00050d13          	mv	s10,a0
   20e4c:	000b0513          	mv	a0,s6
   20e50:	7c9030ef          	jal	ra,24e18 <__mulsi3>
   20e54:	00050c93          	mv	s9,a0
   20e58:	000a8593          	mv	a1,s5
   20e5c:	00090513          	mv	a0,s2
   20e60:	87def0ef          	jal	ra,106dc <__umodsi3>
   20e64:	01041413          	slli	s0,s0,0x10
   20e68:	01051513          	slli	a0,a0,0x10
   20e6c:	01045413          	srli	s0,s0,0x10
   20e70:	00a46433          	or	s0,s0,a0
   20e74:	000d0713          	mv	a4,s10
   20e78:	01947e63          	bgeu	s0,s9,20e94 <__divdf3+0x330>
   20e7c:	01740433          	add	s0,s0,s7
   20e80:	fffd0713          	addi	a4,s10,-1
   20e84:	01746863          	bltu	s0,s7,20e94 <__divdf3+0x330>
   20e88:	01947663          	bgeu	s0,s9,20e94 <__divdf3+0x330>
   20e8c:	ffed0713          	addi	a4,s10,-2
   20e90:	01740433          	add	s0,s0,s7
   20e94:	010a1793          	slli	a5,s4,0x10
   20e98:	00010e37          	lui	t3,0x10
   20e9c:	00e7e7b3          	or	a5,a5,a4
   20ea0:	41940833          	sub	a6,s0,s9
   20ea4:	fffe0c93          	addi	s9,t3,-1 # ffff <register_fini-0x75>
   20ea8:	0197f333          	and	t1,a5,s9
   20eac:	019c7cb3          	and	s9,s8,s9
   20eb0:	0107d713          	srli	a4,a5,0x10
   20eb4:	010c5d13          	srli	s10,s8,0x10
   20eb8:	00030513          	mv	a0,t1
   20ebc:	000c8593          	mv	a1,s9
   20ec0:	759030ef          	jal	ra,24e18 <__mulsi3>
   20ec4:	00050893          	mv	a7,a0
   20ec8:	000d0593          	mv	a1,s10
   20ecc:	00030513          	mv	a0,t1
   20ed0:	749030ef          	jal	ra,24e18 <__mulsi3>
   20ed4:	00050313          	mv	t1,a0
   20ed8:	000c8593          	mv	a1,s9
   20edc:	00070513          	mv	a0,a4
   20ee0:	739030ef          	jal	ra,24e18 <__mulsi3>
   20ee4:	00050e93          	mv	t4,a0
   20ee8:	000d0593          	mv	a1,s10
   20eec:	00070513          	mv	a0,a4
   20ef0:	729030ef          	jal	ra,24e18 <__mulsi3>
   20ef4:	0108d713          	srli	a4,a7,0x10
   20ef8:	01d30333          	add	t1,t1,t4
   20efc:	00670733          	add	a4,a4,t1
   20f00:	01d77463          	bgeu	a4,t4,20f08 <__divdf3+0x3a4>
   20f04:	01c50533          	add	a0,a0,t3
   20f08:	01075413          	srli	s0,a4,0x10
   20f0c:	00a40433          	add	s0,s0,a0
   20f10:	00010537          	lui	a0,0x10
   20f14:	fff50513          	addi	a0,a0,-1 # ffff <register_fini-0x75>
   20f18:	00a77a33          	and	s4,a4,a0
   20f1c:	010a1a13          	slli	s4,s4,0x10
   20f20:	00a8f8b3          	and	a7,a7,a0
   20f24:	011a0a33          	add	s4,s4,a7
   20f28:	00886863          	bltu	a6,s0,20f38 <__divdf3+0x3d4>
   20f2c:	00078913          	mv	s2,a5
   20f30:	04881463          	bne	a6,s0,20f78 <__divdf3+0x414>
   20f34:	054df263          	bgeu	s11,s4,20f78 <__divdf3+0x414>
   20f38:	018d8db3          	add	s11,s11,s8
   20f3c:	018db733          	sltu	a4,s11,s8
   20f40:	01770733          	add	a4,a4,s7
   20f44:	00e80833          	add	a6,a6,a4
   20f48:	fff78913          	addi	s2,a5,-1 # ffffff <__BSS_END__+0xfd9517>
   20f4c:	010be663          	bltu	s7,a6,20f58 <__divdf3+0x3f4>
   20f50:	030b9463          	bne	s7,a6,20f78 <__divdf3+0x414>
   20f54:	038de263          	bltu	s11,s8,20f78 <__divdf3+0x414>
   20f58:	00886663          	bltu	a6,s0,20f64 <__divdf3+0x400>
   20f5c:	01041e63          	bne	s0,a6,20f78 <__divdf3+0x414>
   20f60:	014dfc63          	bgeu	s11,s4,20f78 <__divdf3+0x414>
   20f64:	018d8db3          	add	s11,s11,s8
   20f68:	ffe78913          	addi	s2,a5,-2
   20f6c:	018db7b3          	sltu	a5,s11,s8
   20f70:	017787b3          	add	a5,a5,s7
   20f74:	00f80833          	add	a6,a6,a5
   20f78:	414d8a33          	sub	s4,s11,s4
   20f7c:	40880433          	sub	s0,a6,s0
   20f80:	014db7b3          	sltu	a5,s11,s4
   20f84:	40f40433          	sub	s0,s0,a5
   20f88:	fff00813          	li	a6,-1
   20f8c:	1a8b8063          	beq	s7,s0,2112c <__divdf3+0x5c8>
   20f90:	000a8593          	mv	a1,s5
   20f94:	00040513          	mv	a0,s0
   20f98:	efcef0ef          	jal	ra,10694 <__udivsi3>
   20f9c:	00050593          	mv	a1,a0
   20fa0:	00a12623          	sw	a0,12(sp)
   20fa4:	000b0513          	mv	a0,s6
   20fa8:	671030ef          	jal	ra,24e18 <__mulsi3>
   20fac:	00a12423          	sw	a0,8(sp)
   20fb0:	000a8593          	mv	a1,s5
   20fb4:	00040513          	mv	a0,s0
   20fb8:	f24ef0ef          	jal	ra,106dc <__umodsi3>
   20fbc:	00c12683          	lw	a3,12(sp)
   20fc0:	00812703          	lw	a4,8(sp)
   20fc4:	01051513          	slli	a0,a0,0x10
   20fc8:	010a5793          	srli	a5,s4,0x10
   20fcc:	00a7e533          	or	a0,a5,a0
   20fd0:	00068d93          	mv	s11,a3
   20fd4:	00e57e63          	bgeu	a0,a4,20ff0 <__divdf3+0x48c>
   20fd8:	01750533          	add	a0,a0,s7
   20fdc:	fff68d93          	addi	s11,a3,-1
   20fe0:	01756863          	bltu	a0,s7,20ff0 <__divdf3+0x48c>
   20fe4:	00e57663          	bgeu	a0,a4,20ff0 <__divdf3+0x48c>
   20fe8:	ffe68d93          	addi	s11,a3,-2
   20fec:	01750533          	add	a0,a0,s7
   20ff0:	40e50433          	sub	s0,a0,a4
   20ff4:	000a8593          	mv	a1,s5
   20ff8:	00040513          	mv	a0,s0
   20ffc:	e98ef0ef          	jal	ra,10694 <__udivsi3>
   21000:	00050593          	mv	a1,a0
   21004:	00a12423          	sw	a0,8(sp)
   21008:	000b0513          	mv	a0,s6
   2100c:	60d030ef          	jal	ra,24e18 <__mulsi3>
   21010:	00050b13          	mv	s6,a0
   21014:	000a8593          	mv	a1,s5
   21018:	00040513          	mv	a0,s0
   2101c:	ec0ef0ef          	jal	ra,106dc <__umodsi3>
   21020:	010a1a13          	slli	s4,s4,0x10
   21024:	00812703          	lw	a4,8(sp)
   21028:	01051513          	slli	a0,a0,0x10
   2102c:	010a5a13          	srli	s4,s4,0x10
   21030:	00aa6533          	or	a0,s4,a0
   21034:	00070793          	mv	a5,a4
   21038:	01657e63          	bgeu	a0,s6,21054 <__divdf3+0x4f0>
   2103c:	01750533          	add	a0,a0,s7
   21040:	fff70793          	addi	a5,a4,-1
   21044:	01756863          	bltu	a0,s7,21054 <__divdf3+0x4f0>
   21048:	01657663          	bgeu	a0,s6,21054 <__divdf3+0x4f0>
   2104c:	ffe70793          	addi	a5,a4,-2
   21050:	01750533          	add	a0,a0,s7
   21054:	010d9893          	slli	a7,s11,0x10
   21058:	00f8e8b3          	or	a7,a7,a5
   2105c:	01089713          	slli	a4,a7,0x10
   21060:	01075713          	srli	a4,a4,0x10
   21064:	41650333          	sub	t1,a0,s6
   21068:	0108d793          	srli	a5,a7,0x10
   2106c:	00070513          	mv	a0,a4
   21070:	000c8593          	mv	a1,s9
   21074:	5a5030ef          	jal	ra,24e18 <__mulsi3>
   21078:	00050813          	mv	a6,a0
   2107c:	000d0593          	mv	a1,s10
   21080:	00070513          	mv	a0,a4
   21084:	595030ef          	jal	ra,24e18 <__mulsi3>
   21088:	00050713          	mv	a4,a0
   2108c:	000c8593          	mv	a1,s9
   21090:	00078513          	mv	a0,a5
   21094:	585030ef          	jal	ra,24e18 <__mulsi3>
   21098:	00050e13          	mv	t3,a0
   2109c:	000d0593          	mv	a1,s10
   210a0:	00078513          	mv	a0,a5
   210a4:	575030ef          	jal	ra,24e18 <__mulsi3>
   210a8:	01085793          	srli	a5,a6,0x10
   210ac:	01c70733          	add	a4,a4,t3
   210b0:	00e787b3          	add	a5,a5,a4
   210b4:	01c7f663          	bgeu	a5,t3,210c0 <__divdf3+0x55c>
   210b8:	00010737          	lui	a4,0x10
   210bc:	00e50533          	add	a0,a0,a4
   210c0:	00010637          	lui	a2,0x10
   210c4:	fff60613          	addi	a2,a2,-1 # ffff <register_fini-0x75>
   210c8:	0107d693          	srli	a3,a5,0x10
   210cc:	00c7f733          	and	a4,a5,a2
   210d0:	01071713          	slli	a4,a4,0x10
   210d4:	00c87833          	and	a6,a6,a2
   210d8:	00a686b3          	add	a3,a3,a0
   210dc:	01070733          	add	a4,a4,a6
   210e0:	00d36863          	bltu	t1,a3,210f0 <__divdf3+0x58c>
   210e4:	24d31463          	bne	t1,a3,2132c <__divdf3+0x7c8>
   210e8:	00088813          	mv	a6,a7
   210ec:	04070063          	beqz	a4,2112c <__divdf3+0x5c8>
   210f0:	006b8533          	add	a0,s7,t1
   210f4:	fff88813          	addi	a6,a7,-1
   210f8:	03756463          	bltu	a0,s7,21120 <__divdf3+0x5bc>
   210fc:	00d56663          	bltu	a0,a3,21108 <__divdf3+0x5a4>
   21100:	22d51463          	bne	a0,a3,21328 <__divdf3+0x7c4>
   21104:	02ec7063          	bgeu	s8,a4,21124 <__divdf3+0x5c0>
   21108:	001c1793          	slli	a5,s8,0x1
   2110c:	0187bc33          	sltu	s8,a5,s8
   21110:	017c0bb3          	add	s7,s8,s7
   21114:	ffe88813          	addi	a6,a7,-2
   21118:	01750533          	add	a0,a0,s7
   2111c:	00078c13          	mv	s8,a5
   21120:	00d51463          	bne	a0,a3,21128 <__divdf3+0x5c4>
   21124:	00ec0463          	beq	s8,a4,2112c <__divdf3+0x5c8>
   21128:	00186813          	ori	a6,a6,1
   2112c:	3ff98713          	addi	a4,s3,1023
   21130:	10e05a63          	blez	a4,21244 <__divdf3+0x6e0>
   21134:	00787793          	andi	a5,a6,7
   21138:	02078063          	beqz	a5,21158 <__divdf3+0x5f4>
   2113c:	00f87793          	andi	a5,a6,15
   21140:	00400693          	li	a3,4
   21144:	00d78a63          	beq	a5,a3,21158 <__divdf3+0x5f4>
   21148:	00480693          	addi	a3,a6,4
   2114c:	0106b833          	sltu	a6,a3,a6
   21150:	01090933          	add	s2,s2,a6
   21154:	00068813          	mv	a6,a3
   21158:	00791793          	slli	a5,s2,0x7
   2115c:	0007da63          	bgez	a5,21170 <__divdf3+0x60c>
   21160:	ff0007b7          	lui	a5,0xff000
   21164:	fff78793          	addi	a5,a5,-1 # feffffff <__BSS_END__+0xfefd9517>
   21168:	00f97933          	and	s2,s2,a5
   2116c:	40098713          	addi	a4,s3,1024
   21170:	7fe00793          	li	a5,2046
   21174:	18e7ca63          	blt	a5,a4,21308 <__divdf3+0x7a4>
   21178:	00385813          	srli	a6,a6,0x3
   2117c:	01d91793          	slli	a5,s2,0x1d
   21180:	0107e7b3          	or	a5,a5,a6
   21184:	00395513          	srli	a0,s2,0x3
   21188:	00c51513          	slli	a0,a0,0xc
   2118c:	7ff77713          	andi	a4,a4,2047
   21190:	01471713          	slli	a4,a4,0x14
   21194:	04c12083          	lw	ra,76(sp)
   21198:	04812403          	lw	s0,72(sp)
   2119c:	00c55513          	srli	a0,a0,0xc
   211a0:	01f49493          	slli	s1,s1,0x1f
   211a4:	00e56533          	or	a0,a0,a4
   211a8:	00956733          	or	a4,a0,s1
   211ac:	04012903          	lw	s2,64(sp)
   211b0:	04412483          	lw	s1,68(sp)
   211b4:	03c12983          	lw	s3,60(sp)
   211b8:	03812a03          	lw	s4,56(sp)
   211bc:	03412a83          	lw	s5,52(sp)
   211c0:	03012b03          	lw	s6,48(sp)
   211c4:	02c12b83          	lw	s7,44(sp)
   211c8:	02812c03          	lw	s8,40(sp)
   211cc:	02412c83          	lw	s9,36(sp)
   211d0:	02012d03          	lw	s10,32(sp)
   211d4:	01c12d83          	lw	s11,28(sp)
   211d8:	00078513          	mv	a0,a5
   211dc:	00070593          	mv	a1,a4
   211e0:	05010113          	addi	sp,sp,80
   211e4:	00008067          	ret
   211e8:	fff98993          	addi	s3,s3,-1
   211ec:	00000d93          	li	s11,0
   211f0:	bd1ff06f          	j	20dc0 <__divdf3+0x25c>
   211f4:	000a8493          	mv	s1,s5
   211f8:	000c8913          	mv	s2,s9
   211fc:	00040813          	mv	a6,s0
   21200:	000c0793          	mv	a5,s8
   21204:	00200713          	li	a4,2
   21208:	10e78063          	beq	a5,a4,21308 <__divdf3+0x7a4>
   2120c:	00300713          	li	a4,3
   21210:	0ee78263          	beq	a5,a4,212f4 <__divdf3+0x790>
   21214:	00100713          	li	a4,1
   21218:	f0e79ae3          	bne	a5,a4,2112c <__divdf3+0x5c8>
   2121c:	00000513          	li	a0,0
   21220:	00000793          	li	a5,0
   21224:	0940006f          	j	212b8 <__divdf3+0x754>
   21228:	000b0493          	mv	s1,s6
   2122c:	fd9ff06f          	j	21204 <__divdf3+0x6a0>
   21230:	00080937          	lui	s2,0x80
   21234:	00000813          	li	a6,0
   21238:	00000493          	li	s1,0
   2123c:	00300793          	li	a5,3
   21240:	fc5ff06f          	j	21204 <__divdf3+0x6a0>
   21244:	00100513          	li	a0,1
   21248:	40e50533          	sub	a0,a0,a4
   2124c:	03800793          	li	a5,56
   21250:	fca7c6e3          	blt	a5,a0,2121c <__divdf3+0x6b8>
   21254:	01f00793          	li	a5,31
   21258:	06a7c463          	blt	a5,a0,212c0 <__divdf3+0x75c>
   2125c:	41e98993          	addi	s3,s3,1054
   21260:	013917b3          	sll	a5,s2,s3
   21264:	00a85733          	srl	a4,a6,a0
   21268:	013819b3          	sll	s3,a6,s3
   2126c:	00e7e7b3          	or	a5,a5,a4
   21270:	013039b3          	snez	s3,s3
   21274:	0137e7b3          	or	a5,a5,s3
   21278:	00a95533          	srl	a0,s2,a0
   2127c:	0077f713          	andi	a4,a5,7
   21280:	02070063          	beqz	a4,212a0 <__divdf3+0x73c>
   21284:	00f7f713          	andi	a4,a5,15
   21288:	00400693          	li	a3,4
   2128c:	00d70a63          	beq	a4,a3,212a0 <__divdf3+0x73c>
   21290:	00478713          	addi	a4,a5,4
   21294:	00f737b3          	sltu	a5,a4,a5
   21298:	00f50533          	add	a0,a0,a5
   2129c:	00070793          	mv	a5,a4
   212a0:	00851713          	slli	a4,a0,0x8
   212a4:	06074a63          	bltz	a4,21318 <__divdf3+0x7b4>
   212a8:	01d51713          	slli	a4,a0,0x1d
   212ac:	0037d793          	srli	a5,a5,0x3
   212b0:	00f767b3          	or	a5,a4,a5
   212b4:	00355513          	srli	a0,a0,0x3
   212b8:	00000713          	li	a4,0
   212bc:	ecdff06f          	j	21188 <__divdf3+0x624>
   212c0:	fe100793          	li	a5,-31
   212c4:	40e787b3          	sub	a5,a5,a4
   212c8:	02000693          	li	a3,32
   212cc:	00f957b3          	srl	a5,s2,a5
   212d0:	00000713          	li	a4,0
   212d4:	00d50663          	beq	a0,a3,212e0 <__divdf3+0x77c>
   212d8:	43e98993          	addi	s3,s3,1086
   212dc:	01391733          	sll	a4,s2,s3
   212e0:	01076833          	or	a6,a4,a6
   212e4:	01003833          	snez	a6,a6
   212e8:	0107e7b3          	or	a5,a5,a6
   212ec:	00000513          	li	a0,0
   212f0:	f8dff06f          	j	2127c <__divdf3+0x718>
   212f4:	00080537          	lui	a0,0x80
   212f8:	00000793          	li	a5,0
   212fc:	7ff00713          	li	a4,2047
   21300:	00000493          	li	s1,0
   21304:	e85ff06f          	j	21188 <__divdf3+0x624>
   21308:	00000513          	li	a0,0
   2130c:	00000793          	li	a5,0
   21310:	7ff00713          	li	a4,2047
   21314:	e75ff06f          	j	21188 <__divdf3+0x624>
   21318:	00000513          	li	a0,0
   2131c:	00000793          	li	a5,0
   21320:	00100713          	li	a4,1
   21324:	e65ff06f          	j	21188 <__divdf3+0x624>
   21328:	00080893          	mv	a7,a6
   2132c:	00088813          	mv	a6,a7
   21330:	df9ff06f          	j	21128 <__divdf3+0x5c4>

00021334 <__muldf3>:
   21334:	fd010113          	addi	sp,sp,-48
   21338:	01312e23          	sw	s3,28(sp)
   2133c:	0145d993          	srli	s3,a1,0x14
   21340:	02812423          	sw	s0,40(sp)
   21344:	02912223          	sw	s1,36(sp)
   21348:	01412c23          	sw	s4,24(sp)
   2134c:	01512a23          	sw	s5,20(sp)
   21350:	01612823          	sw	s6,16(sp)
   21354:	00c59493          	slli	s1,a1,0xc
   21358:	02112623          	sw	ra,44(sp)
   2135c:	03212023          	sw	s2,32(sp)
   21360:	01712623          	sw	s7,12(sp)
   21364:	7ff9f993          	andi	s3,s3,2047
   21368:	00050413          	mv	s0,a0
   2136c:	00060b13          	mv	s6,a2
   21370:	00068a93          	mv	s5,a3
   21374:	00c4d493          	srli	s1,s1,0xc
   21378:	01f5da13          	srli	s4,a1,0x1f
   2137c:	0a098463          	beqz	s3,21424 <__muldf3+0xf0>
   21380:	7ff00793          	li	a5,2047
   21384:	10f98263          	beq	s3,a5,21488 <__muldf3+0x154>
   21388:	01d55793          	srli	a5,a0,0x1d
   2138c:	00349493          	slli	s1,s1,0x3
   21390:	0097e4b3          	or	s1,a5,s1
   21394:	008007b7          	lui	a5,0x800
   21398:	00f4e4b3          	or	s1,s1,a5
   2139c:	00351913          	slli	s2,a0,0x3
   213a0:	c0198993          	addi	s3,s3,-1023
   213a4:	00000b93          	li	s7,0
   213a8:	014ad513          	srli	a0,s5,0x14
   213ac:	00ca9413          	slli	s0,s5,0xc
   213b0:	7ff57513          	andi	a0,a0,2047
   213b4:	00c45413          	srli	s0,s0,0xc
   213b8:	01fada93          	srli	s5,s5,0x1f
   213bc:	10050263          	beqz	a0,214c0 <__muldf3+0x18c>
   213c0:	7ff00793          	li	a5,2047
   213c4:	16f50263          	beq	a0,a5,21528 <__muldf3+0x1f4>
   213c8:	01db5793          	srli	a5,s6,0x1d
   213cc:	00341413          	slli	s0,s0,0x3
   213d0:	0087e433          	or	s0,a5,s0
   213d4:	008007b7          	lui	a5,0x800
   213d8:	00f46433          	or	s0,s0,a5
   213dc:	c0150513          	addi	a0,a0,-1023 # 7fc01 <__BSS_END__+0x59119>
   213e0:	003b1793          	slli	a5,s6,0x3
   213e4:	00000713          	li	a4,0
   213e8:	002b9693          	slli	a3,s7,0x2
   213ec:	00e6e6b3          	or	a3,a3,a4
   213f0:	00a989b3          	add	s3,s3,a0
   213f4:	fff68693          	addi	a3,a3,-1
   213f8:	00e00613          	li	a2,14
   213fc:	015a4833          	xor	a6,s4,s5
   21400:	00198893          	addi	a7,s3,1
   21404:	14d66e63          	bltu	a2,a3,21560 <__muldf3+0x22c>
   21408:	00005617          	auipc	a2,0x5
   2140c:	82c60613          	addi	a2,a2,-2004 # 25c34 <zeroes.4467+0x4c>
   21410:	00269693          	slli	a3,a3,0x2
   21414:	00c686b3          	add	a3,a3,a2
   21418:	0006a683          	lw	a3,0(a3)
   2141c:	00c686b3          	add	a3,a3,a2
   21420:	00068067          	jr	a3
   21424:	00a4e933          	or	s2,s1,a0
   21428:	06090c63          	beqz	s2,214a0 <__muldf3+0x16c>
   2142c:	04048063          	beqz	s1,2146c <__muldf3+0x138>
   21430:	00048513          	mv	a0,s1
   21434:	209030ef          	jal	ra,24e3c <__clzsi2>
   21438:	ff550713          	addi	a4,a0,-11
   2143c:	01c00793          	li	a5,28
   21440:	02e7cc63          	blt	a5,a4,21478 <__muldf3+0x144>
   21444:	01d00793          	li	a5,29
   21448:	ff850913          	addi	s2,a0,-8
   2144c:	40e787b3          	sub	a5,a5,a4
   21450:	012494b3          	sll	s1,s1,s2
   21454:	00f457b3          	srl	a5,s0,a5
   21458:	0097e4b3          	or	s1,a5,s1
   2145c:	01241933          	sll	s2,s0,s2
   21460:	c0d00993          	li	s3,-1011
   21464:	40a989b3          	sub	s3,s3,a0
   21468:	f3dff06f          	j	213a4 <__muldf3+0x70>
   2146c:	1d1030ef          	jal	ra,24e3c <__clzsi2>
   21470:	02050513          	addi	a0,a0,32
   21474:	fc5ff06f          	j	21438 <__muldf3+0x104>
   21478:	fd850493          	addi	s1,a0,-40
   2147c:	009414b3          	sll	s1,s0,s1
   21480:	00000913          	li	s2,0
   21484:	fddff06f          	j	21460 <__muldf3+0x12c>
   21488:	00a4e933          	or	s2,s1,a0
   2148c:	02090263          	beqz	s2,214b0 <__muldf3+0x17c>
   21490:	00050913          	mv	s2,a0
   21494:	7ff00993          	li	s3,2047
   21498:	00300b93          	li	s7,3
   2149c:	f0dff06f          	j	213a8 <__muldf3+0x74>
   214a0:	00000493          	li	s1,0
   214a4:	00000993          	li	s3,0
   214a8:	00100b93          	li	s7,1
   214ac:	efdff06f          	j	213a8 <__muldf3+0x74>
   214b0:	00000493          	li	s1,0
   214b4:	7ff00993          	li	s3,2047
   214b8:	00200b93          	li	s7,2
   214bc:	eedff06f          	j	213a8 <__muldf3+0x74>
   214c0:	016467b3          	or	a5,s0,s6
   214c4:	06078e63          	beqz	a5,21540 <__muldf3+0x20c>
   214c8:	04040063          	beqz	s0,21508 <__muldf3+0x1d4>
   214cc:	00040513          	mv	a0,s0
   214d0:	16d030ef          	jal	ra,24e3c <__clzsi2>
   214d4:	ff550693          	addi	a3,a0,-11
   214d8:	01c00793          	li	a5,28
   214dc:	02d7ce63          	blt	a5,a3,21518 <__muldf3+0x1e4>
   214e0:	01d00713          	li	a4,29
   214e4:	ff850793          	addi	a5,a0,-8
   214e8:	40d70733          	sub	a4,a4,a3
   214ec:	00f41433          	sll	s0,s0,a5
   214f0:	00eb5733          	srl	a4,s6,a4
   214f4:	00876433          	or	s0,a4,s0
   214f8:	00fb17b3          	sll	a5,s6,a5
   214fc:	c0d00713          	li	a4,-1011
   21500:	40a70533          	sub	a0,a4,a0
   21504:	ee1ff06f          	j	213e4 <__muldf3+0xb0>
   21508:	000b0513          	mv	a0,s6
   2150c:	131030ef          	jal	ra,24e3c <__clzsi2>
   21510:	02050513          	addi	a0,a0,32
   21514:	fc1ff06f          	j	214d4 <__muldf3+0x1a0>
   21518:	fd850413          	addi	s0,a0,-40
   2151c:	008b1433          	sll	s0,s6,s0
   21520:	00000793          	li	a5,0
   21524:	fd9ff06f          	j	214fc <__muldf3+0x1c8>
   21528:	016467b3          	or	a5,s0,s6
   2152c:	02078263          	beqz	a5,21550 <__muldf3+0x21c>
   21530:	000b0793          	mv	a5,s6
   21534:	7ff00513          	li	a0,2047
   21538:	00300713          	li	a4,3
   2153c:	eadff06f          	j	213e8 <__muldf3+0xb4>
   21540:	00000413          	li	s0,0
   21544:	00000513          	li	a0,0
   21548:	00100713          	li	a4,1
   2154c:	e9dff06f          	j	213e8 <__muldf3+0xb4>
   21550:	00000413          	li	s0,0
   21554:	7ff00513          	li	a0,2047
   21558:	00200713          	li	a4,2
   2155c:	e8dff06f          	j	213e8 <__muldf3+0xb4>
   21560:	000102b7          	lui	t0,0x10
   21564:	fff28313          	addi	t1,t0,-1 # ffff <register_fini-0x75>
   21568:	01095f13          	srli	t5,s2,0x10
   2156c:	0107df93          	srli	t6,a5,0x10
   21570:	00697933          	and	s2,s2,t1
   21574:	0067f7b3          	and	a5,a5,t1
   21578:	00090513          	mv	a0,s2
   2157c:	00078593          	mv	a1,a5
   21580:	099030ef          	jal	ra,24e18 <__mulsi3>
   21584:	00050e93          	mv	t4,a0
   21588:	000f8593          	mv	a1,t6
   2158c:	00090513          	mv	a0,s2
   21590:	089030ef          	jal	ra,24e18 <__mulsi3>
   21594:	00050e13          	mv	t3,a0
   21598:	00078593          	mv	a1,a5
   2159c:	000f0513          	mv	a0,t5
   215a0:	079030ef          	jal	ra,24e18 <__mulsi3>
   215a4:	00050a13          	mv	s4,a0
   215a8:	000f8593          	mv	a1,t6
   215ac:	000f0513          	mv	a0,t5
   215b0:	069030ef          	jal	ra,24e18 <__mulsi3>
   215b4:	010ed713          	srli	a4,t4,0x10
   215b8:	014e0e33          	add	t3,t3,s4
   215bc:	01c70733          	add	a4,a4,t3
   215c0:	00050393          	mv	t2,a0
   215c4:	01477463          	bgeu	a4,s4,215cc <__muldf3+0x298>
   215c8:	005503b3          	add	t2,a0,t0
   215cc:	00677e33          	and	t3,a4,t1
   215d0:	006efeb3          	and	t4,t4,t1
   215d4:	01045a13          	srli	s4,s0,0x10
   215d8:	010e1e13          	slli	t3,t3,0x10
   215dc:	00647433          	and	s0,s0,t1
   215e0:	01075293          	srli	t0,a4,0x10
   215e4:	01de0e33          	add	t3,t3,t4
   215e8:	00090513          	mv	a0,s2
   215ec:	00040593          	mv	a1,s0
   215f0:	029030ef          	jal	ra,24e18 <__mulsi3>
   215f4:	00050e93          	mv	t4,a0
   215f8:	000a0593          	mv	a1,s4
   215fc:	00090513          	mv	a0,s2
   21600:	019030ef          	jal	ra,24e18 <__mulsi3>
   21604:	00050713          	mv	a4,a0
   21608:	00040593          	mv	a1,s0
   2160c:	000f0513          	mv	a0,t5
   21610:	009030ef          	jal	ra,24e18 <__mulsi3>
   21614:	00050313          	mv	t1,a0
   21618:	000a0593          	mv	a1,s4
   2161c:	000f0513          	mv	a0,t5
   21620:	7f8030ef          	jal	ra,24e18 <__mulsi3>
   21624:	010ed693          	srli	a3,t4,0x10
   21628:	00670733          	add	a4,a4,t1
   2162c:	00e686b3          	add	a3,a3,a4
   21630:	0066f663          	bgeu	a3,t1,2163c <__muldf3+0x308>
   21634:	00010737          	lui	a4,0x10
   21638:	00e50533          	add	a0,a0,a4
   2163c:	00010ab7          	lui	s5,0x10
   21640:	fffa8613          	addi	a2,s5,-1 # ffff <register_fini-0x75>
   21644:	0106d713          	srli	a4,a3,0x10
   21648:	00c6f6b3          	and	a3,a3,a2
   2164c:	01069693          	slli	a3,a3,0x10
   21650:	00cefeb3          	and	t4,t4,a2
   21654:	00a70f33          	add	t5,a4,a0
   21658:	01d68eb3          	add	t4,a3,t4
   2165c:	0104d713          	srli	a4,s1,0x10
   21660:	00c4f4b3          	and	s1,s1,a2
   21664:	01d282b3          	add	t0,t0,t4
   21668:	00048513          	mv	a0,s1
   2166c:	00078593          	mv	a1,a5
   21670:	7a8030ef          	jal	ra,24e18 <__mulsi3>
   21674:	00050913          	mv	s2,a0
   21678:	000f8593          	mv	a1,t6
   2167c:	00048513          	mv	a0,s1
   21680:	798030ef          	jal	ra,24e18 <__mulsi3>
   21684:	00050313          	mv	t1,a0
   21688:	00078593          	mv	a1,a5
   2168c:	00070513          	mv	a0,a4
   21690:	788030ef          	jal	ra,24e18 <__mulsi3>
   21694:	00050b13          	mv	s6,a0
   21698:	000f8593          	mv	a1,t6
   2169c:	00070513          	mv	a0,a4
   216a0:	778030ef          	jal	ra,24e18 <__mulsi3>
   216a4:	01095793          	srli	a5,s2,0x10
   216a8:	01630333          	add	t1,t1,s6
   216ac:	006787b3          	add	a5,a5,t1
   216b0:	0167f463          	bgeu	a5,s6,216b8 <__muldf3+0x384>
   216b4:	01550533          	add	a0,a0,s5
   216b8:	00010ab7          	lui	s5,0x10
   216bc:	fffa8693          	addi	a3,s5,-1 # ffff <register_fini-0x75>
   216c0:	00d7f333          	and	t1,a5,a3
   216c4:	0107d613          	srli	a2,a5,0x10
   216c8:	00d97933          	and	s2,s2,a3
   216cc:	01031313          	slli	t1,t1,0x10
   216d0:	00a60fb3          	add	t6,a2,a0
   216d4:	01230333          	add	t1,t1,s2
   216d8:	00048513          	mv	a0,s1
   216dc:	00040593          	mv	a1,s0
   216e0:	738030ef          	jal	ra,24e18 <__mulsi3>
   216e4:	00050793          	mv	a5,a0
   216e8:	000a0593          	mv	a1,s4
   216ec:	00048513          	mv	a0,s1
   216f0:	728030ef          	jal	ra,24e18 <__mulsi3>
   216f4:	00050493          	mv	s1,a0
   216f8:	00040593          	mv	a1,s0
   216fc:	00070513          	mv	a0,a4
   21700:	718030ef          	jal	ra,24e18 <__mulsi3>
   21704:	00050913          	mv	s2,a0
   21708:	000a0593          	mv	a1,s4
   2170c:	00070513          	mv	a0,a4
   21710:	708030ef          	jal	ra,24e18 <__mulsi3>
   21714:	0107d693          	srli	a3,a5,0x10
   21718:	012484b3          	add	s1,s1,s2
   2171c:	009686b3          	add	a3,a3,s1
   21720:	0126f463          	bgeu	a3,s2,21728 <__muldf3+0x3f4>
   21724:	01550533          	add	a0,a0,s5
   21728:	00010637          	lui	a2,0x10
   2172c:	fff60613          	addi	a2,a2,-1 # ffff <register_fini-0x75>
   21730:	00c6f733          	and	a4,a3,a2
   21734:	00c7f7b3          	and	a5,a5,a2
   21738:	01071713          	slli	a4,a4,0x10
   2173c:	007282b3          	add	t0,t0,t2
   21740:	00f70733          	add	a4,a4,a5
   21744:	01d2beb3          	sltu	t4,t0,t4
   21748:	01e70733          	add	a4,a4,t5
   2174c:	01d70433          	add	s0,a4,t4
   21750:	006282b3          	add	t0,t0,t1
   21754:	01f40633          	add	a2,s0,t6
   21758:	0062b333          	sltu	t1,t0,t1
   2175c:	006605b3          	add	a1,a2,t1
   21760:	01e73733          	sltu	a4,a4,t5
   21764:	01d43433          	sltu	s0,s0,t4
   21768:	00876433          	or	s0,a4,s0
   2176c:	0106d693          	srli	a3,a3,0x10
   21770:	01f63633          	sltu	a2,a2,t6
   21774:	0065b333          	sltu	t1,a1,t1
   21778:	00d40433          	add	s0,s0,a3
   2177c:	00666333          	or	t1,a2,t1
   21780:	00640433          	add	s0,s0,t1
   21784:	00929793          	slli	a5,t0,0x9
   21788:	00a40433          	add	s0,s0,a0
   2178c:	01c7e7b3          	or	a5,a5,t3
   21790:	00941413          	slli	s0,s0,0x9
   21794:	0175d513          	srli	a0,a1,0x17
   21798:	00f037b3          	snez	a5,a5
   2179c:	0172de13          	srli	t3,t0,0x17
   217a0:	00959713          	slli	a4,a1,0x9
   217a4:	00a46433          	or	s0,s0,a0
   217a8:	01c7e7b3          	or	a5,a5,t3
   217ac:	00e7e7b3          	or	a5,a5,a4
   217b0:	00741713          	slli	a4,s0,0x7
   217b4:	10075263          	bgez	a4,218b8 <__muldf3+0x584>
   217b8:	0017d713          	srli	a4,a5,0x1
   217bc:	0017f793          	andi	a5,a5,1
   217c0:	00f767b3          	or	a5,a4,a5
   217c4:	01f41713          	slli	a4,s0,0x1f
   217c8:	00e7e7b3          	or	a5,a5,a4
   217cc:	00145413          	srli	s0,s0,0x1
   217d0:	3ff88693          	addi	a3,a7,1023
   217d4:	0ed05663          	blez	a3,218c0 <__muldf3+0x58c>
   217d8:	0077f713          	andi	a4,a5,7
   217dc:	02070063          	beqz	a4,217fc <__muldf3+0x4c8>
   217e0:	00f7f713          	andi	a4,a5,15
   217e4:	00400613          	li	a2,4
   217e8:	00c70a63          	beq	a4,a2,217fc <__muldf3+0x4c8>
   217ec:	00478713          	addi	a4,a5,4 # 800004 <__BSS_END__+0x7d951c>
   217f0:	00f737b3          	sltu	a5,a4,a5
   217f4:	00f40433          	add	s0,s0,a5
   217f8:	00070793          	mv	a5,a4
   217fc:	00741713          	slli	a4,s0,0x7
   21800:	00075a63          	bgez	a4,21814 <__muldf3+0x4e0>
   21804:	ff000737          	lui	a4,0xff000
   21808:	fff70713          	addi	a4,a4,-1 # feffffff <__BSS_END__+0xfefd9517>
   2180c:	00e47433          	and	s0,s0,a4
   21810:	40088693          	addi	a3,a7,1024
   21814:	7fe00713          	li	a4,2046
   21818:	16d74663          	blt	a4,a3,21984 <__muldf3+0x650>
   2181c:	0037d713          	srli	a4,a5,0x3
   21820:	01d41793          	slli	a5,s0,0x1d
   21824:	00e7e7b3          	or	a5,a5,a4
   21828:	00345413          	srli	s0,s0,0x3
   2182c:	00c41413          	slli	s0,s0,0xc
   21830:	7ff6f713          	andi	a4,a3,2047
   21834:	01471713          	slli	a4,a4,0x14
   21838:	00c45413          	srli	s0,s0,0xc
   2183c:	00e46433          	or	s0,s0,a4
   21840:	01f81813          	slli	a6,a6,0x1f
   21844:	01046733          	or	a4,s0,a6
   21848:	02c12083          	lw	ra,44(sp)
   2184c:	02812403          	lw	s0,40(sp)
   21850:	02412483          	lw	s1,36(sp)
   21854:	02012903          	lw	s2,32(sp)
   21858:	01c12983          	lw	s3,28(sp)
   2185c:	01812a03          	lw	s4,24(sp)
   21860:	01412a83          	lw	s5,20(sp)
   21864:	01012b03          	lw	s6,16(sp)
   21868:	00c12b83          	lw	s7,12(sp)
   2186c:	00078513          	mv	a0,a5
   21870:	00070593          	mv	a1,a4
   21874:	03010113          	addi	sp,sp,48
   21878:	00008067          	ret
   2187c:	000a0813          	mv	a6,s4
   21880:	00048413          	mv	s0,s1
   21884:	00090793          	mv	a5,s2
   21888:	000b8713          	mv	a4,s7
   2188c:	00200693          	li	a3,2
   21890:	0ed70a63          	beq	a4,a3,21984 <__muldf3+0x650>
   21894:	00300693          	li	a3,3
   21898:	0cd70c63          	beq	a4,a3,21970 <__muldf3+0x63c>
   2189c:	00100693          	li	a3,1
   218a0:	f2d718e3          	bne	a4,a3,217d0 <__muldf3+0x49c>
   218a4:	00000413          	li	s0,0
   218a8:	00000793          	li	a5,0
   218ac:	0880006f          	j	21934 <__muldf3+0x600>
   218b0:	000a8813          	mv	a6,s5
   218b4:	fd9ff06f          	j	2188c <__muldf3+0x558>
   218b8:	00098893          	mv	a7,s3
   218bc:	f15ff06f          	j	217d0 <__muldf3+0x49c>
   218c0:	00100613          	li	a2,1
   218c4:	40d60633          	sub	a2,a2,a3
   218c8:	03800713          	li	a4,56
   218cc:	fcc74ce3          	blt	a4,a2,218a4 <__muldf3+0x570>
   218d0:	01f00713          	li	a4,31
   218d4:	06c74463          	blt	a4,a2,2193c <__muldf3+0x608>
   218d8:	41e88893          	addi	a7,a7,1054
   218dc:	01141733          	sll	a4,s0,a7
   218e0:	00c7d6b3          	srl	a3,a5,a2
   218e4:	011797b3          	sll	a5,a5,a7
   218e8:	00d76733          	or	a4,a4,a3
   218ec:	00f037b3          	snez	a5,a5
   218f0:	00f767b3          	or	a5,a4,a5
   218f4:	00c45433          	srl	s0,s0,a2
   218f8:	0077f713          	andi	a4,a5,7
   218fc:	02070063          	beqz	a4,2191c <__muldf3+0x5e8>
   21900:	00f7f713          	andi	a4,a5,15
   21904:	00400693          	li	a3,4
   21908:	00d70a63          	beq	a4,a3,2191c <__muldf3+0x5e8>
   2190c:	00478713          	addi	a4,a5,4
   21910:	00f737b3          	sltu	a5,a4,a5
   21914:	00f40433          	add	s0,s0,a5
   21918:	00070793          	mv	a5,a4
   2191c:	00841713          	slli	a4,s0,0x8
   21920:	06074a63          	bltz	a4,21994 <__muldf3+0x660>
   21924:	01d41713          	slli	a4,s0,0x1d
   21928:	0037d793          	srli	a5,a5,0x3
   2192c:	00f767b3          	or	a5,a4,a5
   21930:	00345413          	srli	s0,s0,0x3
   21934:	00000693          	li	a3,0
   21938:	ef5ff06f          	j	2182c <__muldf3+0x4f8>
   2193c:	fe100713          	li	a4,-31
   21940:	40d70733          	sub	a4,a4,a3
   21944:	02000593          	li	a1,32
   21948:	00e45733          	srl	a4,s0,a4
   2194c:	00000693          	li	a3,0
   21950:	00b60663          	beq	a2,a1,2195c <__muldf3+0x628>
   21954:	43e88893          	addi	a7,a7,1086
   21958:	011416b3          	sll	a3,s0,a7
   2195c:	00f6e7b3          	or	a5,a3,a5
   21960:	00f037b3          	snez	a5,a5
   21964:	00f767b3          	or	a5,a4,a5
   21968:	00000413          	li	s0,0
   2196c:	f8dff06f          	j	218f8 <__muldf3+0x5c4>
   21970:	00080437          	lui	s0,0x80
   21974:	00000793          	li	a5,0
   21978:	7ff00693          	li	a3,2047
   2197c:	00000813          	li	a6,0
   21980:	eadff06f          	j	2182c <__muldf3+0x4f8>
   21984:	00000413          	li	s0,0
   21988:	00000793          	li	a5,0
   2198c:	7ff00693          	li	a3,2047
   21990:	e9dff06f          	j	2182c <__muldf3+0x4f8>
   21994:	00000413          	li	s0,0
   21998:	00000793          	li	a5,0
   2199c:	00100693          	li	a3,1
   219a0:	e8dff06f          	j	2182c <__muldf3+0x4f8>

000219a4 <__eqtf2>:
   219a4:	00c52783          	lw	a5,12(a0)
   219a8:	0005af03          	lw	t5,0(a1)
   219ac:	0045af83          	lw	t6,4(a1)
   219b0:	0085a283          	lw	t0,8(a1)
   219b4:	00c5a583          	lw	a1,12(a1)
   219b8:	00008737          	lui	a4,0x8
   219bc:	0107d693          	srli	a3,a5,0x10
   219c0:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x8075>
   219c4:	01079813          	slli	a6,a5,0x10
   219c8:	01059e93          	slli	t4,a1,0x10
   219cc:	01f7d613          	srli	a2,a5,0x1f
   219d0:	00e6f6b3          	and	a3,a3,a4
   219d4:	0105d793          	srli	a5,a1,0x10
   219d8:	ff010113          	addi	sp,sp,-16
   219dc:	00052883          	lw	a7,0(a0)
   219e0:	00452303          	lw	t1,4(a0)
   219e4:	00852e03          	lw	t3,8(a0)
   219e8:	01085813          	srli	a6,a6,0x10
   219ec:	010ede93          	srli	t4,t4,0x10
   219f0:	00e7f7b3          	and	a5,a5,a4
   219f4:	01f5d593          	srli	a1,a1,0x1f
   219f8:	02e69063          	bne	a3,a4,21a18 <__eqtf2+0x74>
   219fc:	0068e733          	or	a4,a7,t1
   21a00:	01c76733          	or	a4,a4,t3
   21a04:	01076733          	or	a4,a4,a6
   21a08:	00100513          	li	a0,1
   21a0c:	04071a63          	bnez	a4,21a60 <__eqtf2+0xbc>
   21a10:	04d79863          	bne	a5,a3,21a60 <__eqtf2+0xbc>
   21a14:	0080006f          	j	21a1c <__eqtf2+0x78>
   21a18:	00e79c63          	bne	a5,a4,21a30 <__eqtf2+0x8c>
   21a1c:	01ff6733          	or	a4,t5,t6
   21a20:	00576733          	or	a4,a4,t0
   21a24:	01d76733          	or	a4,a4,t4
   21a28:	00100513          	li	a0,1
   21a2c:	02071a63          	bnez	a4,21a60 <__eqtf2+0xbc>
   21a30:	00100513          	li	a0,1
   21a34:	02d79663          	bne	a5,a3,21a60 <__eqtf2+0xbc>
   21a38:	03e89463          	bne	a7,t5,21a60 <__eqtf2+0xbc>
   21a3c:	03f31263          	bne	t1,t6,21a60 <__eqtf2+0xbc>
   21a40:	025e1063          	bne	t3,t0,21a60 <__eqtf2+0xbc>
   21a44:	01d81e63          	bne	a6,t4,21a60 <__eqtf2+0xbc>
   21a48:	02b60063          	beq	a2,a1,21a68 <__eqtf2+0xc4>
   21a4c:	00079a63          	bnez	a5,21a60 <__eqtf2+0xbc>
   21a50:	0068e533          	or	a0,a7,t1
   21a54:	01c56533          	or	a0,a0,t3
   21a58:	01056533          	or	a0,a0,a6
   21a5c:	00a03533          	snez	a0,a0
   21a60:	01010113          	addi	sp,sp,16
   21a64:	00008067          	ret
   21a68:	00000513          	li	a0,0
   21a6c:	ff5ff06f          	j	21a60 <__eqtf2+0xbc>

00021a70 <__getf2>:
   21a70:	00052f83          	lw	t6,0(a0)
   21a74:	00452803          	lw	a6,4(a0)
   21a78:	00852e03          	lw	t3,8(a0)
   21a7c:	00c52503          	lw	a0,12(a0)
   21a80:	00c5a603          	lw	a2,12(a1)
   21a84:	000087b7          	lui	a5,0x8
   21a88:	01055693          	srli	a3,a0,0x10
   21a8c:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   21a90:	01061313          	slli	t1,a2,0x10
   21a94:	01065713          	srli	a4,a2,0x10
   21a98:	0005a283          	lw	t0,0(a1)
   21a9c:	0045a883          	lw	a7,4(a1)
   21aa0:	0085ae83          	lw	t4,8(a1)
   21aa4:	00f6f6b3          	and	a3,a3,a5
   21aa8:	01051593          	slli	a1,a0,0x10
   21aac:	ff010113          	addi	sp,sp,-16
   21ab0:	0105d593          	srli	a1,a1,0x10
   21ab4:	01f55513          	srli	a0,a0,0x1f
   21ab8:	01035313          	srli	t1,t1,0x10
   21abc:	00f77733          	and	a4,a4,a5
   21ac0:	01f65613          	srli	a2,a2,0x1f
   21ac4:	00f69e63          	bne	a3,a5,21ae0 <__getf2+0x70>
   21ac8:	01f867b3          	or	a5,a6,t6
   21acc:	01c7e7b3          	or	a5,a5,t3
   21ad0:	00b7e7b3          	or	a5,a5,a1
   21ad4:	0c078863          	beqz	a5,21ba4 <__getf2+0x134>
   21ad8:	ffe00513          	li	a0,-2
   21adc:	0600006f          	j	21b3c <__getf2+0xcc>
   21ae0:	00f71a63          	bne	a4,a5,21af4 <__getf2+0x84>
   21ae4:	0058e7b3          	or	a5,a7,t0
   21ae8:	01d7e7b3          	or	a5,a5,t4
   21aec:	0067e7b3          	or	a5,a5,t1
   21af0:	fe0794e3          	bnez	a5,21ad8 <__getf2+0x68>
   21af4:	0a069a63          	bnez	a3,21ba8 <__getf2+0x138>
   21af8:	01f867b3          	or	a5,a6,t6
   21afc:	01c7e7b3          	or	a5,a5,t3
   21b00:	00b7e7b3          	or	a5,a5,a1
   21b04:	0017b793          	seqz	a5,a5
   21b08:	00071a63          	bnez	a4,21b1c <__getf2+0xac>
   21b0c:	0058ef33          	or	t5,a7,t0
   21b10:	01df6f33          	or	t5,t5,t4
   21b14:	006f6f33          	or	t5,t5,t1
   21b18:	060f0a63          	beqz	t5,21b8c <__getf2+0x11c>
   21b1c:	00079a63          	bnez	a5,21b30 <__getf2+0xc0>
   21b20:	02c50263          	beq	a0,a2,21b44 <__getf2+0xd4>
   21b24:	06050063          	beqz	a0,21b84 <__getf2+0x114>
   21b28:	fff00513          	li	a0,-1
   21b2c:	0100006f          	j	21b3c <__getf2+0xcc>
   21b30:	fff00513          	li	a0,-1
   21b34:	00060463          	beqz	a2,21b3c <__getf2+0xcc>
   21b38:	00060513          	mv	a0,a2
   21b3c:	01010113          	addi	sp,sp,16
   21b40:	00008067          	ret
   21b44:	fed740e3          	blt	a4,a3,21b24 <__getf2+0xb4>
   21b48:	00e6d663          	bge	a3,a4,21b54 <__getf2+0xe4>
   21b4c:	fe0518e3          	bnez	a0,21b3c <__getf2+0xcc>
   21b50:	fd9ff06f          	j	21b28 <__getf2+0xb8>
   21b54:	fcb368e3          	bltu	t1,a1,21b24 <__getf2+0xb4>
   21b58:	02659e63          	bne	a1,t1,21b94 <__getf2+0x124>
   21b5c:	fdcee4e3          	bltu	t4,t3,21b24 <__getf2+0xb4>
   21b60:	03ce9e63          	bne	t4,t3,21b9c <__getf2+0x12c>
   21b64:	fd08e0e3          	bltu	a7,a6,21b24 <__getf2+0xb4>
   21b68:	01089463          	bne	a7,a6,21b70 <__getf2+0x100>
   21b6c:	fbf2ece3          	bltu	t0,t6,21b24 <__getf2+0xb4>
   21b70:	fd186ee3          	bltu	a6,a7,21b4c <__getf2+0xdc>
   21b74:	01089463          	bne	a7,a6,21b7c <__getf2+0x10c>
   21b78:	fc5feae3          	bltu	t6,t0,21b4c <__getf2+0xdc>
   21b7c:	00000513          	li	a0,0
   21b80:	fbdff06f          	j	21b3c <__getf2+0xcc>
   21b84:	00100513          	li	a0,1
   21b88:	fb5ff06f          	j	21b3c <__getf2+0xcc>
   21b8c:	fe0798e3          	bnez	a5,21b7c <__getf2+0x10c>
   21b90:	f95ff06f          	j	21b24 <__getf2+0xb4>
   21b94:	fa65ece3          	bltu	a1,t1,21b4c <__getf2+0xdc>
   21b98:	fe5ff06f          	j	21b7c <__getf2+0x10c>
   21b9c:	fbde68e3          	bltu	t3,t4,21b4c <__getf2+0xdc>
   21ba0:	fddff06f          	j	21b7c <__getf2+0x10c>
   21ba4:	f4d700e3          	beq	a4,a3,21ae4 <__getf2+0x74>
   21ba8:	f6071ce3          	bnez	a4,21b20 <__getf2+0xb0>
   21bac:	00000793          	li	a5,0
   21bb0:	f5dff06f          	j	21b0c <__getf2+0x9c>

00021bb4 <__letf2>:
   21bb4:	00052f83          	lw	t6,0(a0)
   21bb8:	00452803          	lw	a6,4(a0)
   21bbc:	00852e03          	lw	t3,8(a0)
   21bc0:	00c52503          	lw	a0,12(a0)
   21bc4:	00c5a603          	lw	a2,12(a1)
   21bc8:	000087b7          	lui	a5,0x8
   21bcc:	01055693          	srli	a3,a0,0x10
   21bd0:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   21bd4:	01061313          	slli	t1,a2,0x10
   21bd8:	01065713          	srli	a4,a2,0x10
   21bdc:	0005a283          	lw	t0,0(a1)
   21be0:	0045a883          	lw	a7,4(a1)
   21be4:	0085ae83          	lw	t4,8(a1)
   21be8:	00f6f6b3          	and	a3,a3,a5
   21bec:	01051593          	slli	a1,a0,0x10
   21bf0:	ff010113          	addi	sp,sp,-16
   21bf4:	0105d593          	srli	a1,a1,0x10
   21bf8:	01f55513          	srli	a0,a0,0x1f
   21bfc:	01035313          	srli	t1,t1,0x10
   21c00:	00f77733          	and	a4,a4,a5
   21c04:	01f65613          	srli	a2,a2,0x1f
   21c08:	00f69e63          	bne	a3,a5,21c24 <__letf2+0x70>
   21c0c:	01f867b3          	or	a5,a6,t6
   21c10:	01c7e7b3          	or	a5,a5,t3
   21c14:	00b7e7b3          	or	a5,a5,a1
   21c18:	0c078863          	beqz	a5,21ce8 <__letf2+0x134>
   21c1c:	00200513          	li	a0,2
   21c20:	0600006f          	j	21c80 <__letf2+0xcc>
   21c24:	00f71a63          	bne	a4,a5,21c38 <__letf2+0x84>
   21c28:	0058e7b3          	or	a5,a7,t0
   21c2c:	01d7e7b3          	or	a5,a5,t4
   21c30:	0067e7b3          	or	a5,a5,t1
   21c34:	fe0794e3          	bnez	a5,21c1c <__letf2+0x68>
   21c38:	0a069a63          	bnez	a3,21cec <__letf2+0x138>
   21c3c:	01f867b3          	or	a5,a6,t6
   21c40:	01c7e7b3          	or	a5,a5,t3
   21c44:	00b7e7b3          	or	a5,a5,a1
   21c48:	0017b793          	seqz	a5,a5
   21c4c:	00071a63          	bnez	a4,21c60 <__letf2+0xac>
   21c50:	0058ef33          	or	t5,a7,t0
   21c54:	01df6f33          	or	t5,t5,t4
   21c58:	006f6f33          	or	t5,t5,t1
   21c5c:	060f0a63          	beqz	t5,21cd0 <__letf2+0x11c>
   21c60:	00079a63          	bnez	a5,21c74 <__letf2+0xc0>
   21c64:	02c50263          	beq	a0,a2,21c88 <__letf2+0xd4>
   21c68:	06050063          	beqz	a0,21cc8 <__letf2+0x114>
   21c6c:	fff00513          	li	a0,-1
   21c70:	0100006f          	j	21c80 <__letf2+0xcc>
   21c74:	fff00513          	li	a0,-1
   21c78:	00060463          	beqz	a2,21c80 <__letf2+0xcc>
   21c7c:	00060513          	mv	a0,a2
   21c80:	01010113          	addi	sp,sp,16
   21c84:	00008067          	ret
   21c88:	fed740e3          	blt	a4,a3,21c68 <__letf2+0xb4>
   21c8c:	00e6d663          	bge	a3,a4,21c98 <__letf2+0xe4>
   21c90:	fe0518e3          	bnez	a0,21c80 <__letf2+0xcc>
   21c94:	fd9ff06f          	j	21c6c <__letf2+0xb8>
   21c98:	fcb368e3          	bltu	t1,a1,21c68 <__letf2+0xb4>
   21c9c:	02659e63          	bne	a1,t1,21cd8 <__letf2+0x124>
   21ca0:	fdcee4e3          	bltu	t4,t3,21c68 <__letf2+0xb4>
   21ca4:	03ce9e63          	bne	t4,t3,21ce0 <__letf2+0x12c>
   21ca8:	fd08e0e3          	bltu	a7,a6,21c68 <__letf2+0xb4>
   21cac:	01089463          	bne	a7,a6,21cb4 <__letf2+0x100>
   21cb0:	fbf2ece3          	bltu	t0,t6,21c68 <__letf2+0xb4>
   21cb4:	fd186ee3          	bltu	a6,a7,21c90 <__letf2+0xdc>
   21cb8:	01089463          	bne	a7,a6,21cc0 <__letf2+0x10c>
   21cbc:	fc5feae3          	bltu	t6,t0,21c90 <__letf2+0xdc>
   21cc0:	00000513          	li	a0,0
   21cc4:	fbdff06f          	j	21c80 <__letf2+0xcc>
   21cc8:	00100513          	li	a0,1
   21ccc:	fb5ff06f          	j	21c80 <__letf2+0xcc>
   21cd0:	fe0798e3          	bnez	a5,21cc0 <__letf2+0x10c>
   21cd4:	f95ff06f          	j	21c68 <__letf2+0xb4>
   21cd8:	fa65ece3          	bltu	a1,t1,21c90 <__letf2+0xdc>
   21cdc:	fe5ff06f          	j	21cc0 <__letf2+0x10c>
   21ce0:	fbde68e3          	bltu	t3,t4,21c90 <__letf2+0xdc>
   21ce4:	fddff06f          	j	21cc0 <__letf2+0x10c>
   21ce8:	f4d700e3          	beq	a4,a3,21c28 <__letf2+0x74>
   21cec:	f6071ce3          	bnez	a4,21c64 <__letf2+0xb0>
   21cf0:	00000793          	li	a5,0
   21cf4:	f5dff06f          	j	21c50 <__letf2+0x9c>

00021cf8 <__multf3>:
   21cf8:	f6010113          	addi	sp,sp,-160
   21cfc:	09412423          	sw	s4,136(sp)
   21d00:	00c5aa03          	lw	s4,12(a1)
   21d04:	0005a683          	lw	a3,0(a1)
   21d08:	0045a783          	lw	a5,4(a1)
   21d0c:	08812c23          	sw	s0,152(sp)
   21d10:	00050413          	mv	s0,a0
   21d14:	0085a503          	lw	a0,8(a1)
   21d18:	010a1713          	slli	a4,s4,0x10
   21d1c:	08912a23          	sw	s1,148(sp)
   21d20:	09312623          	sw	s3,140(sp)
   21d24:	09512223          	sw	s5,132(sp)
   21d28:	09612023          	sw	s6,128(sp)
   21d2c:	00062483          	lw	s1,0(a2)
   21d30:	00462b03          	lw	s6,4(a2)
   21d34:	00862a83          	lw	s5,8(a2)
   21d38:	00c62983          	lw	s3,12(a2)
   21d3c:	00008637          	lui	a2,0x8
   21d40:	09212823          	sw	s2,144(sp)
   21d44:	01075713          	srli	a4,a4,0x10
   21d48:	010a5913          	srli	s2,s4,0x10
   21d4c:	fff60613          	addi	a2,a2,-1 # 7fff <register_fini-0x8075>
   21d50:	05412623          	sw	s4,76(sp)
   21d54:	08112e23          	sw	ra,156(sp)
   21d58:	07712e23          	sw	s7,124(sp)
   21d5c:	07812c23          	sw	s8,120(sp)
   21d60:	07912a23          	sw	s9,116(sp)
   21d64:	07a12823          	sw	s10,112(sp)
   21d68:	07b12623          	sw	s11,108(sp)
   21d6c:	04d12023          	sw	a3,64(sp)
   21d70:	04f12223          	sw	a5,68(sp)
   21d74:	04a12423          	sw	a0,72(sp)
   21d78:	00d12823          	sw	a3,16(sp)
   21d7c:	00f12a23          	sw	a5,20(sp)
   21d80:	00a12c23          	sw	a0,24(sp)
   21d84:	00e12e23          	sw	a4,28(sp)
   21d88:	00c97933          	and	s2,s2,a2
   21d8c:	01fa5a13          	srli	s4,s4,0x1f
   21d90:	12090663          	beqz	s2,21ebc <__multf3+0x1c4>
   21d94:	24c90263          	beq	s2,a2,21fd8 <__multf3+0x2e0>
   21d98:	000107b7          	lui	a5,0x10
   21d9c:	00f767b3          	or	a5,a4,a5
   21da0:	00f12e23          	sw	a5,28(sp)
   21da4:	01010613          	addi	a2,sp,16
   21da8:	01c10793          	addi	a5,sp,28
   21dac:	0007a703          	lw	a4,0(a5) # 10000 <register_fini-0x74>
   21db0:	ffc7a683          	lw	a3,-4(a5)
   21db4:	ffc78793          	addi	a5,a5,-4
   21db8:	00371713          	slli	a4,a4,0x3
   21dbc:	01d6d693          	srli	a3,a3,0x1d
   21dc0:	00d76733          	or	a4,a4,a3
   21dc4:	00e7a223          	sw	a4,4(a5)
   21dc8:	fef612e3          	bne	a2,a5,21dac <__multf3+0xb4>
   21dcc:	01012783          	lw	a5,16(sp)
   21dd0:	ffffc537          	lui	a0,0xffffc
   21dd4:	00150513          	addi	a0,a0,1 # ffffc001 <__BSS_END__+0xfffd5519>
   21dd8:	00379793          	slli	a5,a5,0x3
   21ddc:	00f12823          	sw	a5,16(sp)
   21de0:	00a90933          	add	s2,s2,a0
   21de4:	00000c13          	li	s8,0
   21de8:	01099513          	slli	a0,s3,0x10
   21dec:	00008737          	lui	a4,0x8
   21df0:	0109d793          	srli	a5,s3,0x10
   21df4:	01055513          	srli	a0,a0,0x10
   21df8:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x8075>
   21dfc:	05312623          	sw	s3,76(sp)
   21e00:	04912023          	sw	s1,64(sp)
   21e04:	05612223          	sw	s6,68(sp)
   21e08:	05512423          	sw	s5,72(sp)
   21e0c:	02912023          	sw	s1,32(sp)
   21e10:	03612223          	sw	s6,36(sp)
   21e14:	03512423          	sw	s5,40(sp)
   21e18:	02a12623          	sw	a0,44(sp)
   21e1c:	00e7f7b3          	and	a5,a5,a4
   21e20:	01f9d993          	srli	s3,s3,0x1f
   21e24:	1c078e63          	beqz	a5,22000 <__multf3+0x308>
   21e28:	2ee78a63          	beq	a5,a4,2211c <__multf3+0x424>
   21e2c:	00010ab7          	lui	s5,0x10
   21e30:	01556ab3          	or	s5,a0,s5
   21e34:	03512623          	sw	s5,44(sp)
   21e38:	02010593          	addi	a1,sp,32
   21e3c:	02c10713          	addi	a4,sp,44
   21e40:	00072683          	lw	a3,0(a4)
   21e44:	ffc72603          	lw	a2,-4(a4)
   21e48:	ffc70713          	addi	a4,a4,-4
   21e4c:	00369693          	slli	a3,a3,0x3
   21e50:	01d65613          	srli	a2,a2,0x1d
   21e54:	00c6e6b3          	or	a3,a3,a2
   21e58:	00d72223          	sw	a3,4(a4)
   21e5c:	fee592e3          	bne	a1,a4,21e40 <__multf3+0x148>
   21e60:	02012703          	lw	a4,32(sp)
   21e64:	ffffc537          	lui	a0,0xffffc
   21e68:	00150513          	addi	a0,a0,1 # ffffc001 <__BSS_END__+0xfffd5519>
   21e6c:	00371713          	slli	a4,a4,0x3
   21e70:	02e12023          	sw	a4,32(sp)
   21e74:	00a787b3          	add	a5,a5,a0
   21e78:	00000713          	li	a4,0
   21e7c:	00f907b3          	add	a5,s2,a5
   21e80:	00f12423          	sw	a5,8(sp)
   21e84:	00178b93          	addi	s7,a5,1
   21e88:	002c1793          	slli	a5,s8,0x2
   21e8c:	00e7e7b3          	or	a5,a5,a4
   21e90:	fff78793          	addi	a5,a5,-1
   21e94:	00e00693          	li	a3,14
   21e98:	013a44b3          	xor	s1,s4,s3
   21e9c:	2af6e463          	bltu	a3,a5,22144 <__multf3+0x44c>
   21ea0:	00004697          	auipc	a3,0x4
   21ea4:	dd068693          	addi	a3,a3,-560 # 25c70 <zeroes.4467+0x88>
   21ea8:	00279793          	slli	a5,a5,0x2
   21eac:	00d787b3          	add	a5,a5,a3
   21eb0:	0007a783          	lw	a5,0(a5)
   21eb4:	00d787b3          	add	a5,a5,a3
   21eb8:	00078067          	jr	a5
   21ebc:	00d7e633          	or	a2,a5,a3
   21ec0:	00a66633          	or	a2,a2,a0
   21ec4:	00e66633          	or	a2,a2,a4
   21ec8:	12060663          	beqz	a2,21ff4 <__multf3+0x2fc>
   21ecc:	06070063          	beqz	a4,21f2c <__multf3+0x234>
   21ed0:	00070513          	mv	a0,a4
   21ed4:	769020ef          	jal	ra,24e3c <__clzsi2>
   21ed8:	ff450693          	addi	a3,a0,-12
   21edc:	4056d713          	srai	a4,a3,0x5
   21ee0:	01f6f693          	andi	a3,a3,31
   21ee4:	40e007b3          	neg	a5,a4
   21ee8:	06068c63          	beqz	a3,21f60 <__multf3+0x268>
   21eec:	00279793          	slli	a5,a5,0x2
   21ef0:	01010313          	addi	t1,sp,16
   21ef4:	00c78793          	addi	a5,a5,12
   21ef8:	02000813          	li	a6,32
   21efc:	00f307b3          	add	a5,t1,a5
   21f00:	00271593          	slli	a1,a4,0x2
   21f04:	40d80833          	sub	a6,a6,a3
   21f08:	08f31263          	bne	t1,a5,21f8c <__multf3+0x294>
   21f0c:	fff70793          	addi	a5,a4,-1
   21f10:	06010713          	addi	a4,sp,96
   21f14:	00b705b3          	add	a1,a4,a1
   21f18:	01012703          	lw	a4,16(sp)
   21f1c:	00d716b3          	sll	a3,a4,a3
   21f20:	fad5a823          	sw	a3,-80(a1)
   21f24:	fff00693          	li	a3,-1
   21f28:	09c0006f          	j	21fc4 <__multf3+0x2cc>
   21f2c:	00050863          	beqz	a0,21f3c <__multf3+0x244>
   21f30:	70d020ef          	jal	ra,24e3c <__clzsi2>
   21f34:	02050513          	addi	a0,a0,32
   21f38:	fa1ff06f          	j	21ed8 <__multf3+0x1e0>
   21f3c:	00078a63          	beqz	a5,21f50 <__multf3+0x258>
   21f40:	00078513          	mv	a0,a5
   21f44:	6f9020ef          	jal	ra,24e3c <__clzsi2>
   21f48:	04050513          	addi	a0,a0,64
   21f4c:	f8dff06f          	j	21ed8 <__multf3+0x1e0>
   21f50:	00068513          	mv	a0,a3
   21f54:	6e9020ef          	jal	ra,24e3c <__clzsi2>
   21f58:	06050513          	addi	a0,a0,96
   21f5c:	f7dff06f          	j	21ed8 <__multf3+0x1e0>
   21f60:	01c10693          	addi	a3,sp,28
   21f64:	00279793          	slli	a5,a5,0x2
   21f68:	00300613          	li	a2,3
   21f6c:	00f685b3          	add	a1,a3,a5
   21f70:	0005a583          	lw	a1,0(a1)
   21f74:	fff60613          	addi	a2,a2,-1
   21f78:	ffc68693          	addi	a3,a3,-4
   21f7c:	00b6a223          	sw	a1,4(a3)
   21f80:	fee656e3          	bge	a2,a4,21f6c <__multf3+0x274>
   21f84:	fff70793          	addi	a5,a4,-1
   21f88:	f9dff06f          	j	21f24 <__multf3+0x22c>
   21f8c:	ffc7a603          	lw	a2,-4(a5)
   21f90:	0007a883          	lw	a7,0(a5)
   21f94:	00b78e33          	add	t3,a5,a1
   21f98:	01065633          	srl	a2,a2,a6
   21f9c:	00d898b3          	sll	a7,a7,a3
   21fa0:	01166633          	or	a2,a2,a7
   21fa4:	00ce2023          	sw	a2,0(t3)
   21fa8:	ffc78793          	addi	a5,a5,-4
   21fac:	f5dff06f          	j	21f08 <__multf3+0x210>
   21fb0:	00279713          	slli	a4,a5,0x2
   21fb4:	01010613          	addi	a2,sp,16
   21fb8:	00e60733          	add	a4,a2,a4
   21fbc:	00072023          	sw	zero,0(a4)
   21fc0:	fff78793          	addi	a5,a5,-1
   21fc4:	fed796e3          	bne	a5,a3,21fb0 <__multf3+0x2b8>
   21fc8:	ffffc937          	lui	s2,0xffffc
   21fcc:	01190913          	addi	s2,s2,17 # ffffc011 <__BSS_END__+0xfffd5529>
   21fd0:	40a90933          	sub	s2,s2,a0
   21fd4:	e11ff06f          	j	21de4 <__multf3+0xec>
   21fd8:	00d7e7b3          	or	a5,a5,a3
   21fdc:	00a7e7b3          	or	a5,a5,a0
   21fe0:	00e7e7b3          	or	a5,a5,a4
   21fe4:	00300c13          	li	s8,3
   21fe8:	e00790e3          	bnez	a5,21de8 <__multf3+0xf0>
   21fec:	00200c13          	li	s8,2
   21ff0:	df9ff06f          	j	21de8 <__multf3+0xf0>
   21ff4:	00000913          	li	s2,0
   21ff8:	00100c13          	li	s8,1
   21ffc:	dedff06f          	j	21de8 <__multf3+0xf0>
   22000:	0164e7b3          	or	a5,s1,s6
   22004:	0157e7b3          	or	a5,a5,s5
   22008:	00a7e7b3          	or	a5,a5,a0
   2200c:	12078663          	beqz	a5,22138 <__multf3+0x440>
   22010:	04050e63          	beqz	a0,2206c <__multf3+0x374>
   22014:	629020ef          	jal	ra,24e3c <__clzsi2>
   22018:	ff450613          	addi	a2,a0,-12
   2201c:	40565693          	srai	a3,a2,0x5
   22020:	01f67613          	andi	a2,a2,31
   22024:	40d00733          	neg	a4,a3
   22028:	06060e63          	beqz	a2,220a4 <__multf3+0x3ac>
   2202c:	00271713          	slli	a4,a4,0x2
   22030:	02010313          	addi	t1,sp,32
   22034:	00c70713          	addi	a4,a4,12
   22038:	02000793          	li	a5,32
   2203c:	00e30733          	add	a4,t1,a4
   22040:	00269813          	slli	a6,a3,0x2
   22044:	40c787b3          	sub	a5,a5,a2
   22048:	08e31463          	bne	t1,a4,220d0 <__multf3+0x3d8>
   2204c:	06010793          	addi	a5,sp,96
   22050:	01078833          	add	a6,a5,a6
   22054:	02012783          	lw	a5,32(sp)
   22058:	fff68713          	addi	a4,a3,-1
   2205c:	00c79633          	sll	a2,a5,a2
   22060:	fcc82023          	sw	a2,-64(a6)
   22064:	fff00693          	li	a3,-1
   22068:	0a00006f          	j	22108 <__multf3+0x410>
   2206c:	000a8a63          	beqz	s5,22080 <__multf3+0x388>
   22070:	000a8513          	mv	a0,s5
   22074:	5c9020ef          	jal	ra,24e3c <__clzsi2>
   22078:	02050513          	addi	a0,a0,32
   2207c:	f9dff06f          	j	22018 <__multf3+0x320>
   22080:	000b0a63          	beqz	s6,22094 <__multf3+0x39c>
   22084:	000b0513          	mv	a0,s6
   22088:	5b5020ef          	jal	ra,24e3c <__clzsi2>
   2208c:	04050513          	addi	a0,a0,64
   22090:	f89ff06f          	j	22018 <__multf3+0x320>
   22094:	00048513          	mv	a0,s1
   22098:	5a5020ef          	jal	ra,24e3c <__clzsi2>
   2209c:	06050513          	addi	a0,a0,96
   220a0:	f79ff06f          	j	22018 <__multf3+0x320>
   220a4:	02c10613          	addi	a2,sp,44
   220a8:	00271713          	slli	a4,a4,0x2
   220ac:	00300793          	li	a5,3
   220b0:	00e605b3          	add	a1,a2,a4
   220b4:	0005a583          	lw	a1,0(a1)
   220b8:	fff78793          	addi	a5,a5,-1
   220bc:	ffc60613          	addi	a2,a2,-4
   220c0:	00b62223          	sw	a1,4(a2)
   220c4:	fed7d6e3          	bge	a5,a3,220b0 <__multf3+0x3b8>
   220c8:	fff68713          	addi	a4,a3,-1
   220cc:	f99ff06f          	j	22064 <__multf3+0x36c>
   220d0:	ffc72583          	lw	a1,-4(a4)
   220d4:	00072883          	lw	a7,0(a4)
   220d8:	01070e33          	add	t3,a4,a6
   220dc:	00f5d5b3          	srl	a1,a1,a5
   220e0:	00c898b3          	sll	a7,a7,a2
   220e4:	0115e5b3          	or	a1,a1,a7
   220e8:	00be2023          	sw	a1,0(t3)
   220ec:	ffc70713          	addi	a4,a4,-4
   220f0:	f59ff06f          	j	22048 <__multf3+0x350>
   220f4:	00271793          	slli	a5,a4,0x2
   220f8:	02010613          	addi	a2,sp,32
   220fc:	00f607b3          	add	a5,a2,a5
   22100:	0007a023          	sw	zero,0(a5)
   22104:	fff70713          	addi	a4,a4,-1
   22108:	fed716e3          	bne	a4,a3,220f4 <__multf3+0x3fc>
   2210c:	ffffc7b7          	lui	a5,0xffffc
   22110:	01178793          	addi	a5,a5,17 # ffffc011 <__BSS_END__+0xfffd5529>
   22114:	40a787b3          	sub	a5,a5,a0
   22118:	d61ff06f          	j	21e78 <__multf3+0x180>
   2211c:	0164e4b3          	or	s1,s1,s6
   22120:	0154eab3          	or	s5,s1,s5
   22124:	00aaeab3          	or	s5,s5,a0
   22128:	00300713          	li	a4,3
   2212c:	d40a98e3          	bnez	s5,21e7c <__multf3+0x184>
   22130:	00200713          	li	a4,2
   22134:	d49ff06f          	j	21e7c <__multf3+0x184>
   22138:	00000793          	li	a5,0
   2213c:	00100713          	li	a4,1
   22140:	d3dff06f          	j	21e7c <__multf3+0x184>
   22144:	01012283          	lw	t0,16(sp)
   22148:	02012f83          	lw	t6,32(sp)
   2214c:	00010337          	lui	t1,0x10
   22150:	fff30793          	addi	a5,t1,-1 # ffff <register_fini-0x75>
   22154:	00f2f8b3          	and	a7,t0,a5
   22158:	00fff7b3          	and	a5,t6,a5
   2215c:	0102de13          	srli	t3,t0,0x10
   22160:	010fd713          	srli	a4,t6,0x10
   22164:	00088513          	mv	a0,a7
   22168:	00078593          	mv	a1,a5
   2216c:	4ad020ef          	jal	ra,24e18 <__mulsi3>
   22170:	00050813          	mv	a6,a0
   22174:	00070593          	mv	a1,a4
   22178:	00088513          	mv	a0,a7
   2217c:	49d020ef          	jal	ra,24e18 <__mulsi3>
   22180:	00050893          	mv	a7,a0
   22184:	00078593          	mv	a1,a5
   22188:	000e0513          	mv	a0,t3
   2218c:	48d020ef          	jal	ra,24e18 <__mulsi3>
   22190:	00050793          	mv	a5,a0
   22194:	00070593          	mv	a1,a4
   22198:	000e0513          	mv	a0,t3
   2219c:	47d020ef          	jal	ra,24e18 <__mulsi3>
   221a0:	01085713          	srli	a4,a6,0x10
   221a4:	00f888b3          	add	a7,a7,a5
   221a8:	01170733          	add	a4,a4,a7
   221ac:	00f77463          	bgeu	a4,a5,221b4 <__multf3+0x4bc>
   221b0:	00650533          	add	a0,a0,t1
   221b4:	01075793          	srli	a5,a4,0x10
   221b8:	00a787b3          	add	a5,a5,a0
   221bc:	00010e37          	lui	t3,0x10
   221c0:	02412e83          	lw	t4,36(sp)
   221c4:	04f12223          	sw	a5,68(sp)
   221c8:	fffe0793          	addi	a5,t3,-1 # ffff <register_fini-0x75>
   221cc:	00f77733          	and	a4,a4,a5
   221d0:	00f87833          	and	a6,a6,a5
   221d4:	01071713          	slli	a4,a4,0x10
   221d8:	01070733          	add	a4,a4,a6
   221dc:	00feff33          	and	t5,t4,a5
   221e0:	00f2f833          	and	a6,t0,a5
   221e4:	04e12023          	sw	a4,64(sp)
   221e8:	0102d313          	srli	t1,t0,0x10
   221ec:	010ed713          	srli	a4,t4,0x10
   221f0:	00080513          	mv	a0,a6
   221f4:	000f0593          	mv	a1,t5
   221f8:	421020ef          	jal	ra,24e18 <__mulsi3>
   221fc:	00050893          	mv	a7,a0
   22200:	00070593          	mv	a1,a4
   22204:	00080513          	mv	a0,a6
   22208:	411020ef          	jal	ra,24e18 <__mulsi3>
   2220c:	00050813          	mv	a6,a0
   22210:	000f0593          	mv	a1,t5
   22214:	00030513          	mv	a0,t1
   22218:	401020ef          	jal	ra,24e18 <__mulsi3>
   2221c:	00050f13          	mv	t5,a0
   22220:	00070593          	mv	a1,a4
   22224:	00030513          	mv	a0,t1
   22228:	3f1020ef          	jal	ra,24e18 <__mulsi3>
   2222c:	0108d713          	srli	a4,a7,0x10
   22230:	01e80833          	add	a6,a6,t5
   22234:	01070733          	add	a4,a4,a6
   22238:	00050c13          	mv	s8,a0
   2223c:	01e77463          	bgeu	a4,t5,22244 <__multf3+0x54c>
   22240:	01c50c33          	add	s8,a0,t3
   22244:	01412f03          	lw	t5,20(sp)
   22248:	00f77833          	and	a6,a4,a5
   2224c:	00f8f8b3          	and	a7,a7,a5
   22250:	01081813          	slli	a6,a6,0x10
   22254:	01075693          	srli	a3,a4,0x10
   22258:	01180833          	add	a6,a6,a7
   2225c:	00ff78b3          	and	a7,t5,a5
   22260:	00fff7b3          	and	a5,t6,a5
   22264:	00d12623          	sw	a3,12(sp)
   22268:	010f5393          	srli	t2,t5,0x10
   2226c:	010fd713          	srli	a4,t6,0x10
   22270:	00088513          	mv	a0,a7
   22274:	00078593          	mv	a1,a5
   22278:	3a1020ef          	jal	ra,24e18 <__mulsi3>
   2227c:	00050313          	mv	t1,a0
   22280:	00070593          	mv	a1,a4
   22284:	00088513          	mv	a0,a7
   22288:	391020ef          	jal	ra,24e18 <__mulsi3>
   2228c:	00050893          	mv	a7,a0
   22290:	00078593          	mv	a1,a5
   22294:	00038513          	mv	a0,t2
   22298:	381020ef          	jal	ra,24e18 <__mulsi3>
   2229c:	00050e13          	mv	t3,a0
   222a0:	00070593          	mv	a1,a4
   222a4:	00038513          	mv	a0,t2
   222a8:	371020ef          	jal	ra,24e18 <__mulsi3>
   222ac:	01035793          	srli	a5,t1,0x10
   222b0:	01c888b3          	add	a7,a7,t3
   222b4:	011787b3          	add	a5,a5,a7
   222b8:	01c7f663          	bgeu	a5,t3,222c4 <__multf3+0x5cc>
   222bc:	00010737          	lui	a4,0x10
   222c0:	00e50533          	add	a0,a0,a4
   222c4:	000103b7          	lui	t2,0x10
   222c8:	fff38713          	addi	a4,t2,-1 # ffff <register_fini-0x75>
   222cc:	00e7f8b3          	and	a7,a5,a4
   222d0:	0107da13          	srli	s4,a5,0x10
   222d4:	00aa0a33          	add	s4,s4,a0
   222d8:	00ef77b3          	and	a5,t5,a4
   222dc:	00e37533          	and	a0,t1,a4
   222e0:	01089893          	slli	a7,a7,0x10
   222e4:	00eef733          	and	a4,t4,a4
   222e8:	00a888b3          	add	a7,a7,a0
   222ec:	010f5913          	srli	s2,t5,0x10
   222f0:	010ede13          	srli	t3,t4,0x10
   222f4:	00078513          	mv	a0,a5
   222f8:	00070593          	mv	a1,a4
   222fc:	31d020ef          	jal	ra,24e18 <__mulsi3>
   22300:	00050313          	mv	t1,a0
   22304:	000e0593          	mv	a1,t3
   22308:	00078513          	mv	a0,a5
   2230c:	30d020ef          	jal	ra,24e18 <__mulsi3>
   22310:	00050993          	mv	s3,a0
   22314:	00070593          	mv	a1,a4
   22318:	00090513          	mv	a0,s2
   2231c:	2fd020ef          	jal	ra,24e18 <__mulsi3>
   22320:	00050713          	mv	a4,a0
   22324:	000e0593          	mv	a1,t3
   22328:	00090513          	mv	a0,s2
   2232c:	2ed020ef          	jal	ra,24e18 <__mulsi3>
   22330:	01035793          	srli	a5,t1,0x10
   22334:	00e989b3          	add	s3,s3,a4
   22338:	013787b3          	add	a5,a5,s3
   2233c:	00e7f463          	bgeu	a5,a4,22344 <__multf3+0x64c>
   22340:	00750533          	add	a0,a0,t2
   22344:	000103b7          	lui	t2,0x10
   22348:	fff38593          	addi	a1,t2,-1 # ffff <register_fini-0x75>
   2234c:	00b7f733          	and	a4,a5,a1
   22350:	00b37333          	and	t1,t1,a1
   22354:	01071713          	slli	a4,a4,0x10
   22358:	00670733          	add	a4,a4,t1
   2235c:	02812303          	lw	t1,40(sp)
   22360:	0107d993          	srli	s3,a5,0x10
   22364:	00b2f7b3          	and	a5,t0,a1
   22368:	00b37ab3          	and	s5,t1,a1
   2236c:	00a989b3          	add	s3,s3,a0
   22370:	0102d913          	srli	s2,t0,0x10
   22374:	01035b13          	srli	s6,t1,0x10
   22378:	00078513          	mv	a0,a5
   2237c:	000a8593          	mv	a1,s5
   22380:	299020ef          	jal	ra,24e18 <__mulsi3>
   22384:	00050e13          	mv	t3,a0
   22388:	000b0593          	mv	a1,s6
   2238c:	00078513          	mv	a0,a5
   22390:	289020ef          	jal	ra,24e18 <__mulsi3>
   22394:	00050793          	mv	a5,a0
   22398:	000a8593          	mv	a1,s5
   2239c:	00090513          	mv	a0,s2
   223a0:	279020ef          	jal	ra,24e18 <__mulsi3>
   223a4:	00050a93          	mv	s5,a0
   223a8:	000b0593          	mv	a1,s6
   223ac:	00090513          	mv	a0,s2
   223b0:	269020ef          	jal	ra,24e18 <__mulsi3>
   223b4:	010e5693          	srli	a3,t3,0x10
   223b8:	015787b3          	add	a5,a5,s5
   223bc:	00f686b3          	add	a3,a3,a5
   223c0:	0156f463          	bgeu	a3,s5,223c8 <__multf3+0x6d0>
   223c4:	00750533          	add	a0,a0,t2
   223c8:	00010d37          	lui	s10,0x10
   223cc:	fffd0393          	addi	t2,s10,-1 # ffff <register_fini-0x75>
   223d0:	0076f7b3          	and	a5,a3,t2
   223d4:	007e7e33          	and	t3,t3,t2
   223d8:	01079793          	slli	a5,a5,0x10
   223dc:	01c787b3          	add	a5,a5,t3
   223e0:	01812e03          	lw	t3,24(sp)
   223e4:	0106d913          	srli	s2,a3,0x10
   223e8:	00a90933          	add	s2,s2,a0
   223ec:	007e7cb3          	and	s9,t3,t2
   223f0:	007ff3b3          	and	t2,t6,t2
   223f4:	010e5d93          	srli	s11,t3,0x10
   223f8:	010fdb13          	srli	s6,t6,0x10
   223fc:	000c8513          	mv	a0,s9
   22400:	00038593          	mv	a1,t2
   22404:	215020ef          	jal	ra,24e18 <__mulsi3>
   22408:	00050a93          	mv	s5,a0
   2240c:	000b0593          	mv	a1,s6
   22410:	000c8513          	mv	a0,s9
   22414:	205020ef          	jal	ra,24e18 <__mulsi3>
   22418:	00050c93          	mv	s9,a0
   2241c:	00038593          	mv	a1,t2
   22420:	000d8513          	mv	a0,s11
   22424:	1f5020ef          	jal	ra,24e18 <__mulsi3>
   22428:	00050393          	mv	t2,a0
   2242c:	000b0593          	mv	a1,s6
   22430:	000d8513          	mv	a0,s11
   22434:	1e5020ef          	jal	ra,24e18 <__mulsi3>
   22438:	010ad613          	srli	a2,s5,0x10
   2243c:	007c8cb3          	add	s9,s9,t2
   22440:	01960cb3          	add	s9,a2,s9
   22444:	007cf463          	bgeu	s9,t2,2244c <__multf3+0x754>
   22448:	01a50533          	add	a0,a0,s10
   2244c:	04412603          	lw	a2,68(sp)
   22450:	010cd693          	srli	a3,s9,0x10
   22454:	00a686b3          	add	a3,a3,a0
   22458:	00c12503          	lw	a0,12(sp)
   2245c:	00c80633          	add	a2,a6,a2
   22460:	010630b3          	sltu	ra,a2,a6
   22464:	00150833          	add	a6,a0,ra
   22468:	000103b7          	lui	t2,0x10
   2246c:	fff38593          	addi	a1,t2,-1 # ffff <register_fini-0x75>
   22470:	01880c33          	add	s8,a6,s8
   22474:	01160633          	add	a2,a2,a7
   22478:	011638b3          	sltu	a7,a2,a7
   2247c:	014c0533          	add	a0,s8,s4
   22480:	00bcfcb3          	and	s9,s9,a1
   22484:	01150833          	add	a6,a0,a7
   22488:	00bafab3          	and	s5,s5,a1
   2248c:	010c9c93          	slli	s9,s9,0x10
   22490:	015c8cb3          	add	s9,s9,s5
   22494:	01453533          	sltu	a0,a0,s4
   22498:	00e80ab3          	add	s5,a6,a4
   2249c:	01183833          	sltu	a6,a6,a7
   224a0:	001c3c33          	sltu	s8,s8,ra
   224a4:	01056833          	or	a6,a0,a6
   224a8:	01880833          	add	a6,a6,s8
   224ac:	00eab733          	sltu	a4,s5,a4
   224b0:	01380833          	add	a6,a6,s3
   224b4:	00e800b3          	add	ra,a6,a4
   224b8:	00fa8ab3          	add	s5,s5,a5
   224bc:	01208533          	add	a0,ra,s2
   224c0:	00fab7b3          	sltu	a5,s5,a5
   224c4:	00f508b3          	add	a7,a0,a5
   224c8:	019a8ab3          	add	s5,s5,s9
   224cc:	04c12223          	sw	a2,68(sp)
   224d0:	05512423          	sw	s5,72(sp)
   224d4:	00d88633          	add	a2,a7,a3
   224d8:	019abab3          	sltu	s5,s5,s9
   224dc:	01560a33          	add	s4,a2,s5
   224e0:	00f8b7b3          	sltu	a5,a7,a5
   224e4:	01383833          	sltu	a6,a6,s3
   224e8:	00e0b733          	sltu	a4,ra,a4
   224ec:	01253533          	sltu	a0,a0,s2
   224f0:	00f56533          	or	a0,a0,a5
   224f4:	00e86833          	or	a6,a6,a4
   224f8:	00d636b3          	sltu	a3,a2,a3
   224fc:	015a3ab3          	sltu	s5,s4,s5
   22500:	00a80833          	add	a6,a6,a0
   22504:	0156eab3          	or	s5,a3,s5
   22508:	01580ab3          	add	s5,a6,s5
   2250c:	02c12803          	lw	a6,44(sp)
   22510:	0102d913          	srli	s2,t0,0x10
   22514:	00b2f2b3          	and	t0,t0,a1
   22518:	00b877b3          	and	a5,a6,a1
   2251c:	05412623          	sw	s4,76(sp)
   22520:	05512823          	sw	s5,80(sp)
   22524:	01085893          	srli	a7,a6,0x10
   22528:	00028513          	mv	a0,t0
   2252c:	00078593          	mv	a1,a5
   22530:	0e9020ef          	jal	ra,24e18 <__mulsi3>
   22534:	00050c93          	mv	s9,a0
   22538:	00088593          	mv	a1,a7
   2253c:	00028513          	mv	a0,t0
   22540:	0d9020ef          	jal	ra,24e18 <__mulsi3>
   22544:	00050713          	mv	a4,a0
   22548:	00078593          	mv	a1,a5
   2254c:	00090513          	mv	a0,s2
   22550:	0c9020ef          	jal	ra,24e18 <__mulsi3>
   22554:	00050793          	mv	a5,a0
   22558:	00088593          	mv	a1,a7
   2255c:	00090513          	mv	a0,s2
   22560:	0b9020ef          	jal	ra,24e18 <__mulsi3>
   22564:	010cd613          	srli	a2,s9,0x10
   22568:	00f70733          	add	a4,a4,a5
   2256c:	00e60633          	add	a2,a2,a4
   22570:	00f67463          	bgeu	a2,a5,22578 <__multf3+0x880>
   22574:	00750533          	add	a0,a0,t2
   22578:	01c12883          	lw	a7,28(sp)
   2257c:	00010737          	lui	a4,0x10
   22580:	fff70793          	addi	a5,a4,-1 # ffff <register_fini-0x75>
   22584:	01065a13          	srli	s4,a2,0x10
   22588:	00f67633          	and	a2,a2,a5
   2258c:	01061613          	slli	a2,a2,0x10
   22590:	00fcfcb3          	and	s9,s9,a5
   22594:	010fd293          	srli	t0,t6,0x10
   22598:	00f8f933          	and	s2,a7,a5
   2259c:	00ffffb3          	and	t6,t6,a5
   225a0:	00aa0a33          	add	s4,s4,a0
   225a4:	01960cb3          	add	s9,a2,s9
   225a8:	0108d393          	srli	t2,a7,0x10
   225ac:	00090513          	mv	a0,s2
   225b0:	000f8593          	mv	a1,t6
   225b4:	065020ef          	jal	ra,24e18 <__mulsi3>
   225b8:	00050b13          	mv	s6,a0
   225bc:	00028593          	mv	a1,t0
   225c0:	00090513          	mv	a0,s2
   225c4:	055020ef          	jal	ra,24e18 <__mulsi3>
   225c8:	00050793          	mv	a5,a0
   225cc:	000f8593          	mv	a1,t6
   225d0:	00038513          	mv	a0,t2
   225d4:	045020ef          	jal	ra,24e18 <__mulsi3>
   225d8:	00050f93          	mv	t6,a0
   225dc:	00028593          	mv	a1,t0
   225e0:	00038513          	mv	a0,t2
   225e4:	035020ef          	jal	ra,24e18 <__mulsi3>
   225e8:	010b5693          	srli	a3,s6,0x10
   225ec:	01f787b3          	add	a5,a5,t6
   225f0:	00f686b3          	add	a3,a3,a5
   225f4:	01f6f463          	bgeu	a3,t6,225fc <__multf3+0x904>
   225f8:	00e50533          	add	a0,a0,a4
   225fc:	000102b7          	lui	t0,0x10
   22600:	fff28793          	addi	a5,t0,-1 # ffff <register_fini-0x75>
   22604:	0106d993          	srli	s3,a3,0x10
   22608:	00f6f6b3          	and	a3,a3,a5
   2260c:	00ff7733          	and	a4,t5,a5
   22610:	01069693          	slli	a3,a3,0x10
   22614:	00fb7b33          	and	s6,s6,a5
   22618:	00f377b3          	and	a5,t1,a5
   2261c:	00a989b3          	add	s3,s3,a0
   22620:	01668b33          	add	s6,a3,s6
   22624:	010f5913          	srli	s2,t5,0x10
   22628:	01035393          	srli	t2,t1,0x10
   2262c:	00070513          	mv	a0,a4
   22630:	00078593          	mv	a1,a5
   22634:	7e4020ef          	jal	ra,24e18 <__mulsi3>
   22638:	00050f93          	mv	t6,a0
   2263c:	00038593          	mv	a1,t2
   22640:	00070513          	mv	a0,a4
   22644:	7d4020ef          	jal	ra,24e18 <__mulsi3>
   22648:	00050713          	mv	a4,a0
   2264c:	00078593          	mv	a1,a5
   22650:	00090513          	mv	a0,s2
   22654:	7c4020ef          	jal	ra,24e18 <__mulsi3>
   22658:	00050a93          	mv	s5,a0
   2265c:	00038593          	mv	a1,t2
   22660:	00090513          	mv	a0,s2
   22664:	7b4020ef          	jal	ra,24e18 <__mulsi3>
   22668:	010fd793          	srli	a5,t6,0x10
   2266c:	01570733          	add	a4,a4,s5
   22670:	00e787b3          	add	a5,a5,a4
   22674:	0157f463          	bgeu	a5,s5,2267c <__multf3+0x984>
   22678:	00550533          	add	a0,a0,t0
   2267c:	000103b7          	lui	t2,0x10
   22680:	fff38693          	addi	a3,t2,-1 # ffff <register_fini-0x75>
   22684:	00d7f733          	and	a4,a5,a3
   22688:	0107d913          	srli	s2,a5,0x10
   2268c:	00dfffb3          	and	t6,t6,a3
   22690:	00de72b3          	and	t0,t3,a3
   22694:	00defab3          	and	s5,t4,a3
   22698:	01071713          	slli	a4,a4,0x10
   2269c:	00a90933          	add	s2,s2,a0
   226a0:	01f70733          	add	a4,a4,t6
   226a4:	010e5793          	srli	a5,t3,0x10
   226a8:	010edc13          	srli	s8,t4,0x10
   226ac:	00028513          	mv	a0,t0
   226b0:	000a8593          	mv	a1,s5
   226b4:	764020ef          	jal	ra,24e18 <__mulsi3>
   226b8:	00050f93          	mv	t6,a0
   226bc:	000c0593          	mv	a1,s8
   226c0:	00028513          	mv	a0,t0
   226c4:	754020ef          	jal	ra,24e18 <__mulsi3>
   226c8:	00050293          	mv	t0,a0
   226cc:	000a8593          	mv	a1,s5
   226d0:	00078513          	mv	a0,a5
   226d4:	744020ef          	jal	ra,24e18 <__mulsi3>
   226d8:	00050a93          	mv	s5,a0
   226dc:	000c0593          	mv	a1,s8
   226e0:	00078513          	mv	a0,a5
   226e4:	734020ef          	jal	ra,24e18 <__mulsi3>
   226e8:	015286b3          	add	a3,t0,s5
   226ec:	010fd293          	srli	t0,t6,0x10
   226f0:	005686b3          	add	a3,a3,t0
   226f4:	0156f463          	bgeu	a3,s5,226fc <__multf3+0xa04>
   226f8:	00750533          	add	a0,a0,t2
   226fc:	00010ab7          	lui	s5,0x10
   22700:	fffa8393          	addi	t2,s5,-1 # ffff <register_fini-0x75>
   22704:	0076f7b3          	and	a5,a3,t2
   22708:	007ff2b3          	and	t0,t6,t2
   2270c:	01079793          	slli	a5,a5,0x10
   22710:	005782b3          	add	t0,a5,t0
   22714:	04c12783          	lw	a5,76(sp)
   22718:	05012f83          	lw	t6,80(sp)
   2271c:	0106dc13          	srli	s8,a3,0x10
   22720:	00fc87b3          	add	a5,s9,a5
   22724:	0197b633          	sltu	a2,a5,s9
   22728:	01fa0fb3          	add	t6,s4,t6
   2272c:	00cf8db3          	add	s11,t6,a2
   22730:	016787b3          	add	a5,a5,s6
   22734:	0167b6b3          	sltu	a3,a5,s6
   22738:	013d8b33          	add	s6,s11,s3
   2273c:	00db0d33          	add	s10,s6,a3
   22740:	00e787b3          	add	a5,a5,a4
   22744:	00e7b733          	sltu	a4,a5,a4
   22748:	012d05b3          	add	a1,s10,s2
   2274c:	00e58cb3          	add	s9,a1,a4
   22750:	00ac0c33          	add	s8,s8,a0
   22754:	005787b3          	add	a5,a5,t0
   22758:	04f12623          	sw	a5,76(sp)
   2275c:	014fbfb3          	sltu	t6,t6,s4
   22760:	0057b7b3          	sltu	a5,a5,t0
   22764:	00cdb633          	sltu	a2,s11,a2
   22768:	018c82b3          	add	t0,s9,s8
   2276c:	013b39b3          	sltu	s3,s6,s3
   22770:	00dd36b3          	sltu	a3,s10,a3
   22774:	00f280b3          	add	ra,t0,a5
   22778:	00ecb733          	sltu	a4,s9,a4
   2277c:	00cfefb3          	or	t6,t6,a2
   22780:	00d9e9b3          	or	s3,s3,a3
   22784:	0125b5b3          	sltu	a1,a1,s2
   22788:	0182bc33          	sltu	s8,t0,s8
   2278c:	013f8fb3          	add	t6,t6,s3
   22790:	00e5e5b3          	or	a1,a1,a4
   22794:	00f0b7b3          	sltu	a5,ra,a5
   22798:	00bf85b3          	add	a1,t6,a1
   2279c:	00fc67b3          	or	a5,s8,a5
   227a0:	00f587b3          	add	a5,a1,a5
   227a4:	007e7733          	and	a4,t3,t2
   227a8:	007373b3          	and	t2,t1,t2
   227ac:	04f12a23          	sw	a5,84(sp)
   227b0:	04112823          	sw	ra,80(sp)
   227b4:	010e5293          	srli	t0,t3,0x10
   227b8:	01035793          	srli	a5,t1,0x10
   227bc:	00070513          	mv	a0,a4
   227c0:	00038593          	mv	a1,t2
   227c4:	654020ef          	jal	ra,24e18 <__mulsi3>
   227c8:	00050f93          	mv	t6,a0
   227cc:	00078593          	mv	a1,a5
   227d0:	00070513          	mv	a0,a4
   227d4:	644020ef          	jal	ra,24e18 <__mulsi3>
   227d8:	00050713          	mv	a4,a0
   227dc:	00038593          	mv	a1,t2
   227e0:	00028513          	mv	a0,t0
   227e4:	634020ef          	jal	ra,24e18 <__mulsi3>
   227e8:	00050393          	mv	t2,a0
   227ec:	00078593          	mv	a1,a5
   227f0:	00028513          	mv	a0,t0
   227f4:	624020ef          	jal	ra,24e18 <__mulsi3>
   227f8:	010fd613          	srli	a2,t6,0x10
   227fc:	00770733          	add	a4,a4,t2
   22800:	00e60633          	add	a2,a2,a4
   22804:	00767463          	bgeu	a2,t2,2280c <__multf3+0xb14>
   22808:	01550533          	add	a0,a0,s5
   2280c:	000102b7          	lui	t0,0x10
   22810:	fff28793          	addi	a5,t0,-1 # ffff <register_fini-0x75>
   22814:	01065713          	srli	a4,a2,0x10
   22818:	00f67633          	and	a2,a2,a5
   2281c:	00a709b3          	add	s3,a4,a0
   22820:	01061613          	slli	a2,a2,0x10
   22824:	00fff733          	and	a4,t6,a5
   22828:	010f5913          	srli	s2,t5,0x10
   2282c:	00f87fb3          	and	t6,a6,a5
   22830:	00ff7f33          	and	t5,t5,a5
   22834:	00e60733          	add	a4,a2,a4
   22838:	01085393          	srli	t2,a6,0x10
   2283c:	000f0513          	mv	a0,t5
   22840:	000f8593          	mv	a1,t6
   22844:	5d4020ef          	jal	ra,24e18 <__mulsi3>
   22848:	00050a13          	mv	s4,a0
   2284c:	00038593          	mv	a1,t2
   22850:	000f0513          	mv	a0,t5
   22854:	5c4020ef          	jal	ra,24e18 <__mulsi3>
   22858:	00050793          	mv	a5,a0
   2285c:	000f8593          	mv	a1,t6
   22860:	00090513          	mv	a0,s2
   22864:	5b4020ef          	jal	ra,24e18 <__mulsi3>
   22868:	00050f93          	mv	t6,a0
   2286c:	00038593          	mv	a1,t2
   22870:	00090513          	mv	a0,s2
   22874:	5a4020ef          	jal	ra,24e18 <__mulsi3>
   22878:	01f786b3          	add	a3,a5,t6
   2287c:	010a5793          	srli	a5,s4,0x10
   22880:	00f686b3          	add	a3,a3,a5
   22884:	01f6f463          	bgeu	a3,t6,2288c <__multf3+0xb94>
   22888:	00550533          	add	a0,a0,t0
   2288c:	00010f37          	lui	t5,0x10
   22890:	ffff0613          	addi	a2,t5,-1 # ffff <register_fini-0x75>
   22894:	0106d913          	srli	s2,a3,0x10
   22898:	00c6f6b3          	and	a3,a3,a2
   2289c:	01069693          	slli	a3,a3,0x10
   228a0:	00ca7a33          	and	s4,s4,a2
   228a4:	010ed393          	srli	t2,t4,0x10
   228a8:	00c8f2b3          	and	t0,a7,a2
   228ac:	00cefeb3          	and	t4,t4,a2
   228b0:	00a90933          	add	s2,s2,a0
   228b4:	01468a33          	add	s4,a3,s4
   228b8:	0108d793          	srli	a5,a7,0x10
   228bc:	00028513          	mv	a0,t0
   228c0:	000e8593          	mv	a1,t4
   228c4:	554020ef          	jal	ra,24e18 <__mulsi3>
   228c8:	00050f93          	mv	t6,a0
   228cc:	00038593          	mv	a1,t2
   228d0:	00028513          	mv	a0,t0
   228d4:	544020ef          	jal	ra,24e18 <__mulsi3>
   228d8:	00050293          	mv	t0,a0
   228dc:	000e8593          	mv	a1,t4
   228e0:	00078513          	mv	a0,a5
   228e4:	534020ef          	jal	ra,24e18 <__mulsi3>
   228e8:	00050e93          	mv	t4,a0
   228ec:	00038593          	mv	a1,t2
   228f0:	00078513          	mv	a0,a5
   228f4:	524020ef          	jal	ra,24e18 <__mulsi3>
   228f8:	010fd693          	srli	a3,t6,0x10
   228fc:	01d282b3          	add	t0,t0,t4
   22900:	005686b3          	add	a3,a3,t0
   22904:	01d6f463          	bgeu	a3,t4,2290c <__multf3+0xc14>
   22908:	01e50533          	add	a0,a0,t5
   2290c:	00010eb7          	lui	t4,0x10
   22910:	fffe8793          	addi	a5,t4,-1 # ffff <register_fini-0x75>
   22914:	00f6f5b3          	and	a1,a3,a5
   22918:	0106d393          	srli	t2,a3,0x10
   2291c:	01059593          	slli	a1,a1,0x10
   22920:	00ffffb3          	and	t6,t6,a5
   22924:	010e5a93          	srli	s5,t3,0x10
   22928:	00fe7e33          	and	t3,t3,a5
   2292c:	00f877b3          	and	a5,a6,a5
   22930:	00a383b3          	add	t2,t2,a0
   22934:	01f58fb3          	add	t6,a1,t6
   22938:	01085293          	srli	t0,a6,0x10
   2293c:	000e0513          	mv	a0,t3
   22940:	00078593          	mv	a1,a5
   22944:	4d4020ef          	jal	ra,24e18 <__mulsi3>
   22948:	00050f13          	mv	t5,a0
   2294c:	00028593          	mv	a1,t0
   22950:	000e0513          	mv	a0,t3
   22954:	4c4020ef          	jal	ra,24e18 <__mulsi3>
   22958:	00050e13          	mv	t3,a0
   2295c:	00078593          	mv	a1,a5
   22960:	000a8513          	mv	a0,s5
   22964:	4b4020ef          	jal	ra,24e18 <__mulsi3>
   22968:	00050793          	mv	a5,a0
   2296c:	00028593          	mv	a1,t0
   22970:	000a8513          	mv	a0,s5
   22974:	4a4020ef          	jal	ra,24e18 <__mulsi3>
   22978:	010f5693          	srli	a3,t5,0x10
   2297c:	00fe0e33          	add	t3,t3,a5
   22980:	01c686b3          	add	a3,a3,t3
   22984:	00f6f463          	bgeu	a3,a5,2298c <__multf3+0xc94>
   22988:	01d50533          	add	a0,a0,t4
   2298c:	00010eb7          	lui	t4,0x10
   22990:	fffe8613          	addi	a2,t4,-1 # ffff <register_fini-0x75>
   22994:	00c6fe33          	and	t3,a3,a2
   22998:	00cf7f33          	and	t5,t5,a2
   2299c:	010e1e13          	slli	t3,t3,0x10
   229a0:	0106d793          	srli	a5,a3,0x10
   229a4:	01ee0e33          	add	t3,t3,t5
   229a8:	01035b13          	srli	s6,t1,0x10
   229ac:	00c8ff33          	and	t5,a7,a2
   229b0:	00c37333          	and	t1,t1,a2
   229b4:	00a782b3          	add	t0,a5,a0
   229b8:	00030593          	mv	a1,t1
   229bc:	0108d793          	srli	a5,a7,0x10
   229c0:	000f0513          	mv	a0,t5
   229c4:	454020ef          	jal	ra,24e18 <__mulsi3>
   229c8:	00050a93          	mv	s5,a0
   229cc:	000b0593          	mv	a1,s6
   229d0:	000f0513          	mv	a0,t5
   229d4:	444020ef          	jal	ra,24e18 <__mulsi3>
   229d8:	00050f13          	mv	t5,a0
   229dc:	00030593          	mv	a1,t1
   229e0:	00078513          	mv	a0,a5
   229e4:	434020ef          	jal	ra,24e18 <__mulsi3>
   229e8:	00050313          	mv	t1,a0
   229ec:	000b0593          	mv	a1,s6
   229f0:	00078513          	mv	a0,a5
   229f4:	424020ef          	jal	ra,24e18 <__mulsi3>
   229f8:	010ad693          	srli	a3,s5,0x10
   229fc:	006f0f33          	add	t5,t5,t1
   22a00:	01e686b3          	add	a3,a3,t5
   22a04:	0066f463          	bgeu	a3,t1,22a0c <__multf3+0xd14>
   22a08:	01d50533          	add	a0,a0,t4
   22a0c:	05012583          	lw	a1,80(sp)
   22a10:	00010eb7          	lui	t4,0x10
   22a14:	fffe8313          	addi	t1,t4,-1 # ffff <register_fini-0x75>
   22a18:	00b705b3          	add	a1,a4,a1
   22a1c:	00e5b633          	sltu	a2,a1,a4
   22a20:	05412703          	lw	a4,84(sp)
   22a24:	0066ff33          	and	t5,a3,t1
   22a28:	006afab3          	and	s5,s5,t1
   22a2c:	00e98733          	add	a4,s3,a4
   22a30:	00c70cb3          	add	s9,a4,a2
   22a34:	014585b3          	add	a1,a1,s4
   22a38:	010f1f13          	slli	t5,t5,0x10
   22a3c:	0106d793          	srli	a5,a3,0x10
   22a40:	015f0f33          	add	t5,t5,s5
   22a44:	0145b6b3          	sltu	a3,a1,s4
   22a48:	012c8ab3          	add	s5,s9,s2
   22a4c:	00da8c33          	add	s8,s5,a3
   22a50:	01f585b3          	add	a1,a1,t6
   22a54:	007c0a33          	add	s4,s8,t2
   22a58:	00dc36b3          	sltu	a3,s8,a3
   22a5c:	04b12823          	sw	a1,80(sp)
   22a60:	01373733          	sltu	a4,a4,s3
   22a64:	01f5b5b3          	sltu	a1,a1,t6
   22a68:	00ccb633          	sltu	a2,s9,a2
   22a6c:	012ab933          	sltu	s2,s5,s2
   22a70:	00ba0b33          	add	s6,s4,a1
   22a74:	00a78533          	add	a0,a5,a0
   22a78:	00c76733          	or	a4,a4,a2
   22a7c:	00d967b3          	or	a5,s2,a3
   22a80:	00f70733          	add	a4,a4,a5
   22a84:	007a33b3          	sltu	t2,s4,t2
   22a88:	00bb37b3          	sltu	a5,s6,a1
   22a8c:	00f3e7b3          	or	a5,t2,a5
   22a90:	01cb0fb3          	add	t6,s6,t3
   22a94:	00f70733          	add	a4,a4,a5
   22a98:	005707b3          	add	a5,a4,t0
   22a9c:	01cfbe33          	sltu	t3,t6,t3
   22aa0:	01c786b3          	add	a3,a5,t3
   22aa4:	01ef8fb3          	add	t6,t6,t5
   22aa8:	00a68733          	add	a4,a3,a0
   22aac:	01efbf33          	sltu	t5,t6,t5
   22ab0:	05f12a23          	sw	t6,84(sp)
   22ab4:	01e70fb3          	add	t6,a4,t5
   22ab8:	00a73533          	sltu	a0,a4,a0
   22abc:	0057b7b3          	sltu	a5,a5,t0
   22ac0:	01c6be33          	sltu	t3,a3,t3
   22ac4:	01efbf33          	sltu	t5,t6,t5
   22ac8:	01e56f33          	or	t5,a0,t5
   22acc:	01c7e7b3          	or	a5,a5,t3
   22ad0:	01e787b3          	add	a5,a5,t5
   22ad4:	04f12e23          	sw	a5,92(sp)
   22ad8:	0108df13          	srli	t5,a7,0x10
   22adc:	01085793          	srli	a5,a6,0x10
   22ae0:	0068f8b3          	and	a7,a7,t1
   22ae4:	00687833          	and	a6,a6,t1
   22ae8:	05f12c23          	sw	t6,88(sp)
   22aec:	00088513          	mv	a0,a7
   22af0:	00080593          	mv	a1,a6
   22af4:	324020ef          	jal	ra,24e18 <__mulsi3>
   22af8:	00050e13          	mv	t3,a0
   22afc:	00078593          	mv	a1,a5
   22b00:	00088513          	mv	a0,a7
   22b04:	314020ef          	jal	ra,24e18 <__mulsi3>
   22b08:	00050713          	mv	a4,a0
   22b0c:	00080593          	mv	a1,a6
   22b10:	000f0513          	mv	a0,t5
   22b14:	304020ef          	jal	ra,24e18 <__mulsi3>
   22b18:	00050813          	mv	a6,a0
   22b1c:	00078593          	mv	a1,a5
   22b20:	000f0513          	mv	a0,t5
   22b24:	2f4020ef          	jal	ra,24e18 <__mulsi3>
   22b28:	010e5793          	srli	a5,t3,0x10
   22b2c:	01070733          	add	a4,a4,a6
   22b30:	00e787b3          	add	a5,a5,a4
   22b34:	0107f463          	bgeu	a5,a6,22b3c <__multf3+0xe44>
   22b38:	01d50533          	add	a0,a0,t4
   22b3c:	0067f733          	and	a4,a5,t1
   22b40:	01071713          	slli	a4,a4,0x10
   22b44:	006e7333          	and	t1,t3,t1
   22b48:	00670333          	add	t1,a4,t1
   22b4c:	05812703          	lw	a4,88(sp)
   22b50:	05c12683          	lw	a3,92(sp)
   22b54:	0107d793          	srli	a5,a5,0x10
   22b58:	00e30733          	add	a4,t1,a4
   22b5c:	00673333          	sltu	t1,a4,t1
   22b60:	00d787b3          	add	a5,a5,a3
   22b64:	006787b3          	add	a5,a5,t1
   22b68:	00a787b3          	add	a5,a5,a0
   22b6c:	04f12e23          	sw	a5,92(sp)
   22b70:	04e12c23          	sw	a4,88(sp)
   22b74:	04012783          	lw	a5,64(sp)
   22b78:	04412703          	lw	a4,68(sp)
   22b7c:	05010593          	addi	a1,sp,80
   22b80:	00e7e7b3          	or	a5,a5,a4
   22b84:	04812703          	lw	a4,72(sp)
   22b88:	00e7e733          	or	a4,a5,a4
   22b8c:	04c12783          	lw	a5,76(sp)
   22b90:	00d79793          	slli	a5,a5,0xd
   22b94:	00e7e7b3          	or	a5,a5,a4
   22b98:	04010713          	addi	a4,sp,64
   22b9c:	00c72683          	lw	a3,12(a4)
   22ba0:	01072603          	lw	a2,16(a4)
   22ba4:	00470713          	addi	a4,a4,4
   22ba8:	0136d693          	srli	a3,a3,0x13
   22bac:	00d61613          	slli	a2,a2,0xd
   22bb0:	00c6e6b3          	or	a3,a3,a2
   22bb4:	fed72e23          	sw	a3,-4(a4)
   22bb8:	fee592e3          	bne	a1,a4,22b9c <__multf3+0xea4>
   22bbc:	04012703          	lw	a4,64(sp)
   22bc0:	04812683          	lw	a3,72(sp)
   22bc4:	00f037b3          	snez	a5,a5
   22bc8:	00e7e7b3          	or	a5,a5,a4
   22bcc:	02d12c23          	sw	a3,56(sp)
   22bd0:	04c12703          	lw	a4,76(sp)
   22bd4:	04412683          	lw	a3,68(sp)
   22bd8:	02f12823          	sw	a5,48(sp)
   22bdc:	02e12e23          	sw	a4,60(sp)
   22be0:	02d12a23          	sw	a3,52(sp)
   22be4:	00b71693          	slli	a3,a4,0xb
   22be8:	2206d063          	bgez	a3,22e08 <__multf3+0x1110>
   22bec:	01f79793          	slli	a5,a5,0x1f
   22bf0:	03010713          	addi	a4,sp,48
   22bf4:	03c10593          	addi	a1,sp,60
   22bf8:	00072683          	lw	a3,0(a4)
   22bfc:	00472603          	lw	a2,4(a4)
   22c00:	00470713          	addi	a4,a4,4
   22c04:	0016d693          	srli	a3,a3,0x1
   22c08:	01f61613          	slli	a2,a2,0x1f
   22c0c:	00c6e6b3          	or	a3,a3,a2
   22c10:	fed72e23          	sw	a3,-4(a4)
   22c14:	fee592e3          	bne	a1,a4,22bf8 <__multf3+0xf00>
   22c18:	03c12703          	lw	a4,60(sp)
   22c1c:	00f037b3          	snez	a5,a5
   22c20:	00175713          	srli	a4,a4,0x1
   22c24:	02e12e23          	sw	a4,60(sp)
   22c28:	03012703          	lw	a4,48(sp)
   22c2c:	00f767b3          	or	a5,a4,a5
   22c30:	02f12823          	sw	a5,48(sp)
   22c34:	000047b7          	lui	a5,0x4
   22c38:	fff78793          	addi	a5,a5,-1 # 3fff <register_fini-0xc075>
   22c3c:	00fb87b3          	add	a5,s7,a5
   22c40:	1ef05463          	blez	a5,22e28 <__multf3+0x1130>
   22c44:	03012703          	lw	a4,48(sp)
   22c48:	00777693          	andi	a3,a4,7
   22c4c:	04068463          	beqz	a3,22c94 <__multf3+0xf9c>
   22c50:	00f77693          	andi	a3,a4,15
   22c54:	00400613          	li	a2,4
   22c58:	02c68e63          	beq	a3,a2,22c94 <__multf3+0xf9c>
   22c5c:	03412683          	lw	a3,52(sp)
   22c60:	00470713          	addi	a4,a4,4
   22c64:	02e12823          	sw	a4,48(sp)
   22c68:	00473713          	sltiu	a4,a4,4
   22c6c:	00d706b3          	add	a3,a4,a3
   22c70:	00e6b733          	sltu	a4,a3,a4
   22c74:	02d12a23          	sw	a3,52(sp)
   22c78:	03812683          	lw	a3,56(sp)
   22c7c:	00d706b3          	add	a3,a4,a3
   22c80:	02d12c23          	sw	a3,56(sp)
   22c84:	00e6b6b3          	sltu	a3,a3,a4
   22c88:	03c12703          	lw	a4,60(sp)
   22c8c:	00e686b3          	add	a3,a3,a4
   22c90:	02d12e23          	sw	a3,60(sp)
   22c94:	03c12703          	lw	a4,60(sp)
   22c98:	00b71693          	slli	a3,a4,0xb
   22c9c:	0006de63          	bgez	a3,22cb8 <__multf3+0xfc0>
   22ca0:	fff007b7          	lui	a5,0xfff00
   22ca4:	fff78793          	addi	a5,a5,-1 # ffefffff <__BSS_END__+0xffed9517>
   22ca8:	00f77733          	and	a4,a4,a5
   22cac:	000047b7          	lui	a5,0x4
   22cb0:	02e12e23          	sw	a4,60(sp)
   22cb4:	00fb87b3          	add	a5,s7,a5
   22cb8:	03010713          	addi	a4,sp,48
   22cbc:	03c10593          	addi	a1,sp,60
   22cc0:	00072683          	lw	a3,0(a4)
   22cc4:	00472603          	lw	a2,4(a4)
   22cc8:	00470713          	addi	a4,a4,4
   22ccc:	0036d693          	srli	a3,a3,0x3
   22cd0:	01d61613          	slli	a2,a2,0x1d
   22cd4:	00c6e6b3          	or	a3,a3,a2
   22cd8:	fed72e23          	sw	a3,-4(a4)
   22cdc:	feb712e3          	bne	a4,a1,22cc0 <__multf3+0xfc8>
   22ce0:	00008737          	lui	a4,0x8
   22ce4:	ffe70693          	addi	a3,a4,-2 # 7ffe <register_fini-0x8076>
   22ce8:	12f6c463          	blt	a3,a5,22e10 <__multf3+0x1118>
   22cec:	03c12703          	lw	a4,60(sp)
   22cf0:	00375713          	srli	a4,a4,0x3
   22cf4:	02e12e23          	sw	a4,60(sp)
   22cf8:	03c12703          	lw	a4,60(sp)
   22cfc:	01179793          	slli	a5,a5,0x11
   22d00:	800106b7          	lui	a3,0x80010
   22d04:	04e11623          	sh	a4,76(sp)
   22d08:	04c12703          	lw	a4,76(sp)
   22d0c:	0117d793          	srli	a5,a5,0x11
   22d10:	fff68693          	addi	a3,a3,-1 # 8000ffff <__BSS_END__+0x7ffe9517>
   22d14:	00d77733          	and	a4,a4,a3
   22d18:	01079793          	slli	a5,a5,0x10
   22d1c:	00f767b3          	or	a5,a4,a5
   22d20:	03012703          	lw	a4,48(sp)
   22d24:	00179793          	slli	a5,a5,0x1
   22d28:	01f49493          	slli	s1,s1,0x1f
   22d2c:	00e42023          	sw	a4,0(s0) # 80000 <__BSS_END__+0x59518>
   22d30:	03412703          	lw	a4,52(sp)
   22d34:	0017d793          	srli	a5,a5,0x1
   22d38:	0097e7b3          	or	a5,a5,s1
   22d3c:	00e42223          	sw	a4,4(s0)
   22d40:	03812703          	lw	a4,56(sp)
   22d44:	00f42623          	sw	a5,12(s0)
   22d48:	00040513          	mv	a0,s0
   22d4c:	00e42423          	sw	a4,8(s0)
   22d50:	09c12083          	lw	ra,156(sp)
   22d54:	09812403          	lw	s0,152(sp)
   22d58:	09412483          	lw	s1,148(sp)
   22d5c:	09012903          	lw	s2,144(sp)
   22d60:	08c12983          	lw	s3,140(sp)
   22d64:	08812a03          	lw	s4,136(sp)
   22d68:	08412a83          	lw	s5,132(sp)
   22d6c:	08012b03          	lw	s6,128(sp)
   22d70:	07c12b83          	lw	s7,124(sp)
   22d74:	07812c03          	lw	s8,120(sp)
   22d78:	07412c83          	lw	s9,116(sp)
   22d7c:	07012d03          	lw	s10,112(sp)
   22d80:	06c12d83          	lw	s11,108(sp)
   22d84:	0a010113          	addi	sp,sp,160
   22d88:	00008067          	ret
   22d8c:	000a0493          	mv	s1,s4
   22d90:	01012783          	lw	a5,16(sp)
   22d94:	02f12823          	sw	a5,48(sp)
   22d98:	01412783          	lw	a5,20(sp)
   22d9c:	02f12a23          	sw	a5,52(sp)
   22da0:	01812783          	lw	a5,24(sp)
   22da4:	02f12c23          	sw	a5,56(sp)
   22da8:	01c12783          	lw	a5,28(sp)
   22dac:	02f12e23          	sw	a5,60(sp)
   22db0:	00200793          	li	a5,2
   22db4:	26fc0a63          	beq	s8,a5,23028 <__multf3+0x1330>
   22db8:	00300793          	li	a5,3
   22dbc:	28fc0463          	beq	s8,a5,23044 <__multf3+0x134c>
   22dc0:	00100793          	li	a5,1
   22dc4:	e6fc18e3          	bne	s8,a5,22c34 <__multf3+0xf3c>
   22dc8:	02012e23          	sw	zero,60(sp)
   22dcc:	02012c23          	sw	zero,56(sp)
   22dd0:	02012a23          	sw	zero,52(sp)
   22dd4:	02012823          	sw	zero,48(sp)
   22dd8:	2100006f          	j	22fe8 <__multf3+0x12f0>
   22ddc:	00098493          	mv	s1,s3
   22de0:	02012783          	lw	a5,32(sp)
   22de4:	00070c13          	mv	s8,a4
   22de8:	02f12823          	sw	a5,48(sp)
   22dec:	02412783          	lw	a5,36(sp)
   22df0:	02f12a23          	sw	a5,52(sp)
   22df4:	02812783          	lw	a5,40(sp)
   22df8:	02f12c23          	sw	a5,56(sp)
   22dfc:	02c12783          	lw	a5,44(sp)
   22e00:	02f12e23          	sw	a5,60(sp)
   22e04:	fadff06f          	j	22db0 <__multf3+0x10b8>
   22e08:	00812b83          	lw	s7,8(sp)
   22e0c:	e29ff06f          	j	22c34 <__multf3+0xf3c>
   22e10:	02012e23          	sw	zero,60(sp)
   22e14:	02012c23          	sw	zero,56(sp)
   22e18:	02012a23          	sw	zero,52(sp)
   22e1c:	02012823          	sw	zero,48(sp)
   22e20:	fff70793          	addi	a5,a4,-1
   22e24:	ed5ff06f          	j	22cf8 <__multf3+0x1000>
   22e28:	00100713          	li	a4,1
   22e2c:	40f707b3          	sub	a5,a4,a5
   22e30:	07400713          	li	a4,116
   22e34:	1af74e63          	blt	a4,a5,22ff0 <__multf3+0x12f8>
   22e38:	4057d893          	srai	a7,a5,0x5
   22e3c:	00000713          	li	a4,0
   22e40:	01f7f793          	andi	a5,a5,31
   22e44:	00000693          	li	a3,0
   22e48:	00269613          	slli	a2,a3,0x2
   22e4c:	03169a63          	bne	a3,a7,22e80 <__multf3+0x1188>
   22e50:	04079463          	bnez	a5,22e98 <__multf3+0x11a0>
   22e54:	00300513          	li	a0,3
   22e58:	03010593          	addi	a1,sp,48
   22e5c:	40d506b3          	sub	a3,a0,a3
   22e60:	00c58533          	add	a0,a1,a2
   22e64:	00052503          	lw	a0,0(a0)
   22e68:	00178793          	addi	a5,a5,1 # 4001 <register_fini-0xc073>
   22e6c:	00458593          	addi	a1,a1,4
   22e70:	fea5ae23          	sw	a0,-4(a1)
   22e74:	fef6d6e3          	bge	a3,a5,22e60 <__multf3+0x1168>
   22e78:	00400613          	li	a2,4
   22e7c:	0b80006f          	j	22f34 <__multf3+0x123c>
   22e80:	03010593          	addi	a1,sp,48
   22e84:	00c58633          	add	a2,a1,a2
   22e88:	00062603          	lw	a2,0(a2)
   22e8c:	00168693          	addi	a3,a3,1
   22e90:	00c76733          	or	a4,a4,a2
   22e94:	fb5ff06f          	j	22e48 <__multf3+0x1150>
   22e98:	06010693          	addi	a3,sp,96
   22e9c:	00c686b3          	add	a3,a3,a2
   22ea0:	fd06a683          	lw	a3,-48(a3)
   22ea4:	02000813          	li	a6,32
   22ea8:	40f80833          	sub	a6,a6,a5
   22eac:	010696b3          	sll	a3,a3,a6
   22eb0:	00d76733          	or	a4,a4,a3
   22eb4:	03010693          	addi	a3,sp,48
   22eb8:	00c68633          	add	a2,a3,a2
   22ebc:	00300693          	li	a3,3
   22ec0:	00000513          	li	a0,0
   22ec4:	411686b3          	sub	a3,a3,a7
   22ec8:	00460613          	addi	a2,a2,4
   22ecc:	02d54463          	blt	a0,a3,22ef4 <__multf3+0x11fc>
   22ed0:	06010613          	addi	a2,sp,96
   22ed4:	00269693          	slli	a3,a3,0x2
   22ed8:	00d606b3          	add	a3,a2,a3
   22edc:	03c12603          	lw	a2,60(sp)
   22ee0:	00f657b3          	srl	a5,a2,a5
   22ee4:	fcf6a823          	sw	a5,-48(a3)
   22ee8:	00400793          	li	a5,4
   22eec:	411787b3          	sub	a5,a5,a7
   22ef0:	f89ff06f          	j	22e78 <__multf3+0x1180>
   22ef4:	00251313          	slli	t1,a0,0x2
   22ef8:	03010593          	addi	a1,sp,48
   22efc:	00658333          	add	t1,a1,t1
   22f00:	00062e03          	lw	t3,0(a2)
   22f04:	ffc62583          	lw	a1,-4(a2)
   22f08:	00150513          	addi	a0,a0,1
   22f0c:	010e1e33          	sll	t3,t3,a6
   22f10:	00f5d5b3          	srl	a1,a1,a5
   22f14:	01c5e5b3          	or	a1,a1,t3
   22f18:	00b32023          	sw	a1,0(t1)
   22f1c:	fadff06f          	j	22ec8 <__multf3+0x11d0>
   22f20:	00279693          	slli	a3,a5,0x2
   22f24:	03010593          	addi	a1,sp,48
   22f28:	00d586b3          	add	a3,a1,a3
   22f2c:	0006a023          	sw	zero,0(a3)
   22f30:	00178793          	addi	a5,a5,1
   22f34:	fec796e3          	bne	a5,a2,22f20 <__multf3+0x1228>
   22f38:	03012683          	lw	a3,48(sp)
   22f3c:	00e03733          	snez	a4,a4
   22f40:	00d76733          	or	a4,a4,a3
   22f44:	02e12823          	sw	a4,48(sp)
   22f48:	00777693          	andi	a3,a4,7
   22f4c:	04068263          	beqz	a3,22f90 <__multf3+0x1298>
   22f50:	00f77693          	andi	a3,a4,15
   22f54:	02f68e63          	beq	a3,a5,22f90 <__multf3+0x1298>
   22f58:	03412783          	lw	a5,52(sp)
   22f5c:	00470713          	addi	a4,a4,4
   22f60:	02e12823          	sw	a4,48(sp)
   22f64:	00473713          	sltiu	a4,a4,4
   22f68:	00f707b3          	add	a5,a4,a5
   22f6c:	00e7b733          	sltu	a4,a5,a4
   22f70:	02f12a23          	sw	a5,52(sp)
   22f74:	03812783          	lw	a5,56(sp)
   22f78:	00f707b3          	add	a5,a4,a5
   22f7c:	02f12c23          	sw	a5,56(sp)
   22f80:	00e7b7b3          	sltu	a5,a5,a4
   22f84:	03c12703          	lw	a4,60(sp)
   22f88:	00e787b3          	add	a5,a5,a4
   22f8c:	02f12e23          	sw	a5,60(sp)
   22f90:	03c12783          	lw	a5,60(sp)
   22f94:	00c79713          	slli	a4,a5,0xc
   22f98:	00075e63          	bgez	a4,22fb4 <__multf3+0x12bc>
   22f9c:	02012e23          	sw	zero,60(sp)
   22fa0:	02012c23          	sw	zero,56(sp)
   22fa4:	02012a23          	sw	zero,52(sp)
   22fa8:	02012823          	sw	zero,48(sp)
   22fac:	00100793          	li	a5,1
   22fb0:	d49ff06f          	j	22cf8 <__multf3+0x1000>
   22fb4:	03010793          	addi	a5,sp,48
   22fb8:	03c10613          	addi	a2,sp,60
   22fbc:	0007a703          	lw	a4,0(a5)
   22fc0:	0047a683          	lw	a3,4(a5)
   22fc4:	00478793          	addi	a5,a5,4
   22fc8:	00375713          	srli	a4,a4,0x3
   22fcc:	01d69693          	slli	a3,a3,0x1d
   22fd0:	00d76733          	or	a4,a4,a3
   22fd4:	fee7ae23          	sw	a4,-4(a5)
   22fd8:	fef612e3          	bne	a2,a5,22fbc <__multf3+0x12c4>
   22fdc:	03c12783          	lw	a5,60(sp)
   22fe0:	0037d793          	srli	a5,a5,0x3
   22fe4:	02f12e23          	sw	a5,60(sp)
   22fe8:	00000793          	li	a5,0
   22fec:	d0dff06f          	j	22cf8 <__multf3+0x1000>
   22ff0:	03412783          	lw	a5,52(sp)
   22ff4:	03012703          	lw	a4,48(sp)
   22ff8:	00f76733          	or	a4,a4,a5
   22ffc:	03812783          	lw	a5,56(sp)
   23000:	00f76733          	or	a4,a4,a5
   23004:	03c12783          	lw	a5,60(sp)
   23008:	00f76733          	or	a4,a4,a5
   2300c:	00000793          	li	a5,0
   23010:	ce0704e3          	beqz	a4,22cf8 <__multf3+0x1000>
   23014:	02012e23          	sw	zero,60(sp)
   23018:	02012c23          	sw	zero,56(sp)
   2301c:	02012a23          	sw	zero,52(sp)
   23020:	02012823          	sw	zero,48(sp)
   23024:	cd5ff06f          	j	22cf8 <__multf3+0x1000>
   23028:	000087b7          	lui	a5,0x8
   2302c:	02012e23          	sw	zero,60(sp)
   23030:	02012c23          	sw	zero,56(sp)
   23034:	02012a23          	sw	zero,52(sp)
   23038:	02012823          	sw	zero,48(sp)
   2303c:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   23040:	cb9ff06f          	j	22cf8 <__multf3+0x1000>
   23044:	000087b7          	lui	a5,0x8
   23048:	02f12e23          	sw	a5,60(sp)
   2304c:	02012c23          	sw	zero,56(sp)
   23050:	02012a23          	sw	zero,52(sp)
   23054:	02012823          	sw	zero,48(sp)
   23058:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   2305c:	00000493          	li	s1,0
   23060:	c99ff06f          	j	22cf8 <__multf3+0x1000>

00023064 <__subtf3>:
   23064:	fa010113          	addi	sp,sp,-96
   23068:	0085a783          	lw	a5,8(a1)
   2306c:	05212823          	sw	s2,80(sp)
   23070:	00c5a903          	lw	s2,12(a1)
   23074:	0005a803          	lw	a6,0(a1)
   23078:	0045a703          	lw	a4,4(a1)
   2307c:	04912a23          	sw	s1,84(sp)
   23080:	02f12c23          	sw	a5,56(sp)
   23084:	00050493          	mv	s1,a0
   23088:	00f12c23          	sw	a5,24(sp)
   2308c:	00062303          	lw	t1,0(a2)
   23090:	01091793          	slli	a5,s2,0x10
   23094:	00462583          	lw	a1,4(a2)
   23098:	00862683          	lw	a3,8(a2)
   2309c:	00c62503          	lw	a0,12(a2)
   230a0:	04812c23          	sw	s0,88(sp)
   230a4:	0107d793          	srli	a5,a5,0x10
   230a8:	00191413          	slli	s0,s2,0x1
   230ac:	03012823          	sw	a6,48(sp)
   230b0:	03212e23          	sw	s2,60(sp)
   230b4:	01012823          	sw	a6,16(sp)
   230b8:	04112e23          	sw	ra,92(sp)
   230bc:	05312623          	sw	s3,76(sp)
   230c0:	05412423          	sw	s4,72(sp)
   230c4:	05512223          	sw	s5,68(sp)
   230c8:	02e12a23          	sw	a4,52(sp)
   230cc:	00e12a23          	sw	a4,20(sp)
   230d0:	00f12e23          	sw	a5,28(sp)
   230d4:	01145413          	srli	s0,s0,0x11
   230d8:	01f95913          	srli	s2,s2,0x1f
   230dc:	01010893          	addi	a7,sp,16
   230e0:	01c10813          	addi	a6,sp,28
   230e4:	00082783          	lw	a5,0(a6)
   230e8:	ffc82703          	lw	a4,-4(a6)
   230ec:	ffc80813          	addi	a6,a6,-4
   230f0:	00379793          	slli	a5,a5,0x3
   230f4:	01d75713          	srli	a4,a4,0x1d
   230f8:	00e7e7b3          	or	a5,a5,a4
   230fc:	00f82223          	sw	a5,4(a6)
   23100:	ff0892e3          	bne	a7,a6,230e4 <__subtf3+0x80>
   23104:	01012703          	lw	a4,16(sp)
   23108:	01051793          	slli	a5,a0,0x10
   2310c:	00151613          	slli	a2,a0,0x1
   23110:	00371713          	slli	a4,a4,0x3
   23114:	0107d793          	srli	a5,a5,0x10
   23118:	02612823          	sw	t1,48(sp)
   2311c:	02a12e23          	sw	a0,60(sp)
   23120:	02612023          	sw	t1,32(sp)
   23124:	00e12823          	sw	a4,16(sp)
   23128:	02b12a23          	sw	a1,52(sp)
   2312c:	02d12c23          	sw	a3,56(sp)
   23130:	02b12223          	sw	a1,36(sp)
   23134:	02d12423          	sw	a3,40(sp)
   23138:	02f12623          	sw	a5,44(sp)
   2313c:	01165613          	srli	a2,a2,0x11
   23140:	01f55513          	srli	a0,a0,0x1f
   23144:	02010313          	addi	t1,sp,32
   23148:	02c10e13          	addi	t3,sp,44
   2314c:	000e2783          	lw	a5,0(t3)
   23150:	ffce2683          	lw	a3,-4(t3)
   23154:	ffce0e13          	addi	t3,t3,-4
   23158:	00379793          	slli	a5,a5,0x3
   2315c:	01d6d693          	srli	a3,a3,0x1d
   23160:	00d7e7b3          	or	a5,a5,a3
   23164:	00fe2223          	sw	a5,4(t3)
   23168:	ffc312e3          	bne	t1,t3,2314c <__subtf3+0xe8>
   2316c:	02012783          	lw	a5,32(sp)
   23170:	000086b7          	lui	a3,0x8
   23174:	fff68693          	addi	a3,a3,-1 # 7fff <register_fini-0x8075>
   23178:	00379793          	slli	a5,a5,0x3
   2317c:	02f12023          	sw	a5,32(sp)
   23180:	02d61063          	bne	a2,a3,231a0 <__subtf3+0x13c>
   23184:	02812583          	lw	a1,40(sp)
   23188:	02412683          	lw	a3,36(sp)
   2318c:	00b6e6b3          	or	a3,a3,a1
   23190:	02c12583          	lw	a1,44(sp)
   23194:	00b6e6b3          	or	a3,a3,a1
   23198:	00f6e6b3          	or	a3,a3,a5
   2319c:	00069463          	bnez	a3,231a4 <__subtf3+0x140>
   231a0:	00154513          	xori	a0,a0,1
   231a4:	40c405b3          	sub	a1,s0,a2
   231a8:	15251ce3          	bne	a0,s2,23b00 <__subtf3+0xa9c>
   231ac:	30b05463          	blez	a1,234b4 <__subtf3+0x450>
   231b0:	0c061663          	bnez	a2,2327c <__subtf3+0x218>
   231b4:	02412503          	lw	a0,36(sp)
   231b8:	02812603          	lw	a2,40(sp)
   231bc:	02c12803          	lw	a6,44(sp)
   231c0:	00c566b3          	or	a3,a0,a2
   231c4:	0106e6b3          	or	a3,a3,a6
   231c8:	00f6e6b3          	or	a3,a3,a5
   231cc:	02069063          	bnez	a3,231ec <__subtf3+0x188>
   231d0:	01412783          	lw	a5,20(sp)
   231d4:	02e12823          	sw	a4,48(sp)
   231d8:	02f12a23          	sw	a5,52(sp)
   231dc:	01812783          	lw	a5,24(sp)
   231e0:	02f12c23          	sw	a5,56(sp)
   231e4:	01c12783          	lw	a5,28(sp)
   231e8:	30c0006f          	j	234f4 <__subtf3+0x490>
   231ec:	fff58693          	addi	a3,a1,-1
   231f0:	06069063          	bnez	a3,23250 <__subtf3+0x1ec>
   231f4:	01412683          	lw	a3,20(sp)
   231f8:	00f707b3          	add	a5,a4,a5
   231fc:	00e7b733          	sltu	a4,a5,a4
   23200:	00d505b3          	add	a1,a0,a3
   23204:	02f12823          	sw	a5,48(sp)
   23208:	00e587b3          	add	a5,a1,a4
   2320c:	00e7b733          	sltu	a4,a5,a4
   23210:	02f12a23          	sw	a5,52(sp)
   23214:	01812783          	lw	a5,24(sp)
   23218:	00d5b6b3          	sltu	a3,a1,a3
   2321c:	00e6e733          	or	a4,a3,a4
   23220:	00f606b3          	add	a3,a2,a5
   23224:	00e68633          	add	a2,a3,a4
   23228:	00e63733          	sltu	a4,a2,a4
   2322c:	00f6b7b3          	sltu	a5,a3,a5
   23230:	00e7e7b3          	or	a5,a5,a4
   23234:	01c12703          	lw	a4,28(sp)
   23238:	02c12c23          	sw	a2,56(sp)
   2323c:	00e80833          	add	a6,a6,a4
   23240:	010787b3          	add	a5,a5,a6
   23244:	02f12e23          	sw	a5,60(sp)
   23248:	00100413          	li	s0,1
   2324c:	1dc0006f          	j	23428 <__subtf3+0x3c4>
   23250:	000087b7          	lui	a5,0x8
   23254:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   23258:	f6f58ce3          	beq	a1,a5,231d0 <__subtf3+0x16c>
   2325c:	07400793          	li	a5,116
   23260:	06d7d263          	bge	a5,a3,232c4 <__subtf3+0x260>
   23264:	00100793          	li	a5,1
   23268:	02012623          	sw	zero,44(sp)
   2326c:	02012423          	sw	zero,40(sp)
   23270:	02012223          	sw	zero,36(sp)
   23274:	02f12023          	sw	a5,32(sp)
   23278:	1480006f          	j	233c0 <__subtf3+0x35c>
   2327c:	000087b7          	lui	a5,0x8
   23280:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   23284:	02f41263          	bne	s0,a5,232a8 <__subtf3+0x244>
   23288:	01412783          	lw	a5,20(sp)
   2328c:	02e12823          	sw	a4,48(sp)
   23290:	02f12a23          	sw	a5,52(sp)
   23294:	01812783          	lw	a5,24(sp)
   23298:	02f12c23          	sw	a5,56(sp)
   2329c:	01c12783          	lw	a5,28(sp)
   232a0:	02f12e23          	sw	a5,60(sp)
   232a4:	2580006f          	j	234fc <__subtf3+0x498>
   232a8:	02c12783          	lw	a5,44(sp)
   232ac:	00080737          	lui	a4,0x80
   232b0:	00e7e7b3          	or	a5,a5,a4
   232b4:	02f12623          	sw	a5,44(sp)
   232b8:	07400793          	li	a5,116
   232bc:	fab7c4e3          	blt	a5,a1,23264 <__subtf3+0x200>
   232c0:	00058693          	mv	a3,a1
   232c4:	4056d893          	srai	a7,a3,0x5
   232c8:	01f6f793          	andi	a5,a3,31
   232cc:	00000613          	li	a2,0
   232d0:	00000713          	li	a4,0
   232d4:	00271693          	slli	a3,a4,0x2
   232d8:	03171863          	bne	a4,a7,23308 <__subtf3+0x2a4>
   232dc:	04079063          	bnez	a5,2331c <__subtf3+0x2b8>
   232e0:	00300593          	li	a1,3
   232e4:	40e58733          	sub	a4,a1,a4
   232e8:	00de05b3          	add	a1,t3,a3
   232ec:	0005a583          	lw	a1,0(a1)
   232f0:	00178793          	addi	a5,a5,1
   232f4:	004e0e13          	addi	t3,t3,4
   232f8:	febe2e23          	sw	a1,-4(t3)
   232fc:	fef756e3          	bge	a4,a5,232e8 <__subtf3+0x284>
   23300:	00400693          	li	a3,4
   23304:	0a80006f          	j	233ac <__subtf3+0x348>
   23308:	00d306b3          	add	a3,t1,a3
   2330c:	0006a683          	lw	a3,0(a3)
   23310:	00170713          	addi	a4,a4,1 # 80001 <__BSS_END__+0x59519>
   23314:	00d66633          	or	a2,a2,a3
   23318:	fbdff06f          	j	232d4 <__subtf3+0x270>
   2331c:	04010713          	addi	a4,sp,64
   23320:	00d70733          	add	a4,a4,a3
   23324:	fe072703          	lw	a4,-32(a4)
   23328:	02000813          	li	a6,32
   2332c:	40f80833          	sub	a6,a6,a5
   23330:	01071733          	sll	a4,a4,a6
   23334:	00e66633          	or	a2,a2,a4
   23338:	00300713          	li	a4,3
   2333c:	00d306b3          	add	a3,t1,a3
   23340:	00000513          	li	a0,0
   23344:	41170733          	sub	a4,a4,a7
   23348:	00468693          	addi	a3,a3,4
   2334c:	02e54463          	blt	a0,a4,23374 <__subtf3+0x310>
   23350:	04010693          	addi	a3,sp,64
   23354:	00271713          	slli	a4,a4,0x2
   23358:	00e68733          	add	a4,a3,a4
   2335c:	02c12683          	lw	a3,44(sp)
   23360:	00f6d7b3          	srl	a5,a3,a5
   23364:	fef72023          	sw	a5,-32(a4)
   23368:	00400793          	li	a5,4
   2336c:	411787b3          	sub	a5,a5,a7
   23370:	f91ff06f          	j	23300 <__subtf3+0x29c>
   23374:	ffc6a583          	lw	a1,-4(a3)
   23378:	0006ae83          	lw	t4,0(a3)
   2337c:	00251e13          	slli	t3,a0,0x2
   23380:	00f5d5b3          	srl	a1,a1,a5
   23384:	010e9eb3          	sll	t4,t4,a6
   23388:	01c30e33          	add	t3,t1,t3
   2338c:	01d5e5b3          	or	a1,a1,t4
   23390:	00be2023          	sw	a1,0(t3)
   23394:	00150513          	addi	a0,a0,1
   23398:	fb1ff06f          	j	23348 <__subtf3+0x2e4>
   2339c:	00279713          	slli	a4,a5,0x2
   233a0:	00e30733          	add	a4,t1,a4
   233a4:	00072023          	sw	zero,0(a4)
   233a8:	00178793          	addi	a5,a5,1
   233ac:	fed798e3          	bne	a5,a3,2339c <__subtf3+0x338>
   233b0:	02012783          	lw	a5,32(sp)
   233b4:	00c03633          	snez	a2,a2
   233b8:	00c7e633          	or	a2,a5,a2
   233bc:	02c12023          	sw	a2,32(sp)
   233c0:	01012683          	lw	a3,16(sp)
   233c4:	02012783          	lw	a5,32(sp)
   233c8:	01412703          	lw	a4,20(sp)
   233cc:	02812583          	lw	a1,40(sp)
   233d0:	00f687b3          	add	a5,a3,a5
   233d4:	00d7b6b3          	sltu	a3,a5,a3
   233d8:	02f12823          	sw	a5,48(sp)
   233dc:	02412783          	lw	a5,36(sp)
   233e0:	02c12503          	lw	a0,44(sp)
   233e4:	00f707b3          	add	a5,a4,a5
   233e8:	00d78633          	add	a2,a5,a3
   233ec:	00e7b733          	sltu	a4,a5,a4
   233f0:	00d637b3          	sltu	a5,a2,a3
   233f4:	00f767b3          	or	a5,a4,a5
   233f8:	01812703          	lw	a4,24(sp)
   233fc:	01c12683          	lw	a3,28(sp)
   23400:	02c12a23          	sw	a2,52(sp)
   23404:	00b705b3          	add	a1,a4,a1
   23408:	00f58633          	add	a2,a1,a5
   2340c:	00e5b733          	sltu	a4,a1,a4
   23410:	00f637b3          	sltu	a5,a2,a5
   23414:	00a686b3          	add	a3,a3,a0
   23418:	00f76733          	or	a4,a4,a5
   2341c:	00e68733          	add	a4,a3,a4
   23420:	02c12c23          	sw	a2,56(sp)
   23424:	02e12e23          	sw	a4,60(sp)
   23428:	03c12783          	lw	a5,60(sp)
   2342c:	00c79713          	slli	a4,a5,0xc
   23430:	0c075663          	bgez	a4,234fc <__subtf3+0x498>
   23434:	fff80737          	lui	a4,0xfff80
   23438:	fff70713          	addi	a4,a4,-1 # fff7ffff <__BSS_END__+0xfff59517>
   2343c:	00e7f7b3          	and	a5,a5,a4
   23440:	02f12e23          	sw	a5,60(sp)
   23444:	03012783          	lw	a5,48(sp)
   23448:	00140413          	addi	s0,s0,1
   2344c:	03c10593          	addi	a1,sp,60
   23450:	01f79713          	slli	a4,a5,0x1f
   23454:	03010793          	addi	a5,sp,48
   23458:	0007a683          	lw	a3,0(a5)
   2345c:	0047a603          	lw	a2,4(a5)
   23460:	00478793          	addi	a5,a5,4
   23464:	0016d693          	srli	a3,a3,0x1
   23468:	01f61613          	slli	a2,a2,0x1f
   2346c:	00c6e6b3          	or	a3,a3,a2
   23470:	fed7ae23          	sw	a3,-4(a5)
   23474:	fef592e3          	bne	a1,a5,23458 <__subtf3+0x3f4>
   23478:	03c12783          	lw	a5,60(sp)
   2347c:	0017d793          	srli	a5,a5,0x1
   23480:	02f12e23          	sw	a5,60(sp)
   23484:	00e037b3          	snez	a5,a4
   23488:	03012703          	lw	a4,48(sp)
   2348c:	00f767b3          	or	a5,a4,a5
   23490:	02f12823          	sw	a5,48(sp)
   23494:	000087b7          	lui	a5,0x8
   23498:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   2349c:	06f41063          	bne	s0,a5,234fc <__subtf3+0x498>
   234a0:	02012e23          	sw	zero,60(sp)
   234a4:	02012c23          	sw	zero,56(sp)
   234a8:	02012a23          	sw	zero,52(sp)
   234ac:	02012823          	sw	zero,48(sp)
   234b0:	04c0006f          	j	234fc <__subtf3+0x498>
   234b4:	42058863          	beqz	a1,238e4 <__subtf3+0x880>
   234b8:	408605b3          	sub	a1,a2,s0
   234bc:	22041a63          	bnez	s0,236f0 <__subtf3+0x68c>
   234c0:	01412303          	lw	t1,20(sp)
   234c4:	01812503          	lw	a0,24(sp)
   234c8:	01c12e03          	lw	t3,28(sp)
   234cc:	00a366b3          	or	a3,t1,a0
   234d0:	01c6e6b3          	or	a3,a3,t3
   234d4:	00e6e6b3          	or	a3,a3,a4
   234d8:	18069863          	bnez	a3,23668 <__subtf3+0x604>
   234dc:	02f12823          	sw	a5,48(sp)
   234e0:	02412783          	lw	a5,36(sp)
   234e4:	02f12a23          	sw	a5,52(sp)
   234e8:	02812783          	lw	a5,40(sp)
   234ec:	02f12c23          	sw	a5,56(sp)
   234f0:	02c12783          	lw	a5,44(sp)
   234f4:	02f12e23          	sw	a5,60(sp)
   234f8:	00058413          	mv	s0,a1
   234fc:	03012783          	lw	a5,48(sp)
   23500:	0077f713          	andi	a4,a5,7
   23504:	04070463          	beqz	a4,2354c <__subtf3+0x4e8>
   23508:	00f7f713          	andi	a4,a5,15
   2350c:	00400693          	li	a3,4
   23510:	02d70e63          	beq	a4,a3,2354c <__subtf3+0x4e8>
   23514:	03412703          	lw	a4,52(sp)
   23518:	00478793          	addi	a5,a5,4
   2351c:	02f12823          	sw	a5,48(sp)
   23520:	0047b793          	sltiu	a5,a5,4
   23524:	00e78733          	add	a4,a5,a4
   23528:	00f737b3          	sltu	a5,a4,a5
   2352c:	02e12a23          	sw	a4,52(sp)
   23530:	03812703          	lw	a4,56(sp)
   23534:	00e78733          	add	a4,a5,a4
   23538:	02e12c23          	sw	a4,56(sp)
   2353c:	00f73733          	sltu	a4,a4,a5
   23540:	03c12783          	lw	a5,60(sp)
   23544:	00f70733          	add	a4,a4,a5
   23548:	02e12e23          	sw	a4,60(sp)
   2354c:	03c12783          	lw	a5,60(sp)
   23550:	00c79713          	slli	a4,a5,0xc
   23554:	02075463          	bgez	a4,2357c <__subtf3+0x518>
   23558:	00008737          	lui	a4,0x8
   2355c:	00140413          	addi	s0,s0,1
   23560:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x8075>
   23564:	00e41463          	bne	s0,a4,2356c <__subtf3+0x508>
   23568:	0880106f          	j	245f0 <__subtf3+0x158c>
   2356c:	fff80737          	lui	a4,0xfff80
   23570:	fff70713          	addi	a4,a4,-1 # fff7ffff <__BSS_END__+0xfff59517>
   23574:	00e7f7b3          	and	a5,a5,a4
   23578:	02f12e23          	sw	a5,60(sp)
   2357c:	03010793          	addi	a5,sp,48
   23580:	03c10613          	addi	a2,sp,60
   23584:	0007a703          	lw	a4,0(a5)
   23588:	0047a683          	lw	a3,4(a5)
   2358c:	00478793          	addi	a5,a5,4
   23590:	00375713          	srli	a4,a4,0x3
   23594:	01d69693          	slli	a3,a3,0x1d
   23598:	00d76733          	or	a4,a4,a3
   2359c:	fee7ae23          	sw	a4,-4(a5)
   235a0:	fef612e3          	bne	a2,a5,23584 <__subtf3+0x520>
   235a4:	03c12783          	lw	a5,60(sp)
   235a8:	000086b7          	lui	a3,0x8
   235ac:	0037d713          	srli	a4,a5,0x3
   235b0:	02e12e23          	sw	a4,60(sp)
   235b4:	fff68793          	addi	a5,a3,-1 # 7fff <register_fini-0x8075>
   235b8:	02f41a63          	bne	s0,a5,235ec <__subtf3+0x588>
   235bc:	03412603          	lw	a2,52(sp)
   235c0:	03012783          	lw	a5,48(sp)
   235c4:	00c7e7b3          	or	a5,a5,a2
   235c8:	03812603          	lw	a2,56(sp)
   235cc:	00c7e7b3          	or	a5,a5,a2
   235d0:	00e7e7b3          	or	a5,a5,a4
   235d4:	00078c63          	beqz	a5,235ec <__subtf3+0x588>
   235d8:	02d12e23          	sw	a3,60(sp)
   235dc:	02012c23          	sw	zero,56(sp)
   235e0:	02012a23          	sw	zero,52(sp)
   235e4:	02012823          	sw	zero,48(sp)
   235e8:	00000913          	li	s2,0
   235ec:	03c12783          	lw	a5,60(sp)
   235f0:	01141413          	slli	s0,s0,0x11
   235f4:	01145413          	srli	s0,s0,0x11
   235f8:	00f11623          	sh	a5,12(sp)
   235fc:	01041793          	slli	a5,s0,0x10
   23600:	00c12403          	lw	s0,12(sp)
   23604:	80010737          	lui	a4,0x80010
   23608:	fff70713          	addi	a4,a4,-1 # 8000ffff <__BSS_END__+0x7ffe9517>
   2360c:	00e47433          	and	s0,s0,a4
   23610:	00f46433          	or	s0,s0,a5
   23614:	03012783          	lw	a5,48(sp)
   23618:	00141413          	slli	s0,s0,0x1
   2361c:	01f91913          	slli	s2,s2,0x1f
   23620:	00f4a023          	sw	a5,0(s1)
   23624:	03412783          	lw	a5,52(sp)
   23628:	00145413          	srli	s0,s0,0x1
   2362c:	01246433          	or	s0,s0,s2
   23630:	00f4a223          	sw	a5,4(s1)
   23634:	03812783          	lw	a5,56(sp)
   23638:	0084a623          	sw	s0,12(s1)
   2363c:	05c12083          	lw	ra,92(sp)
   23640:	05812403          	lw	s0,88(sp)
   23644:	00f4a423          	sw	a5,8(s1)
   23648:	00048513          	mv	a0,s1
   2364c:	05012903          	lw	s2,80(sp)
   23650:	05412483          	lw	s1,84(sp)
   23654:	04c12983          	lw	s3,76(sp)
   23658:	04812a03          	lw	s4,72(sp)
   2365c:	04412a83          	lw	s5,68(sp)
   23660:	06010113          	addi	sp,sp,96
   23664:	00008067          	ret
   23668:	fff58693          	addi	a3,a1,-1
   2366c:	04069e63          	bnez	a3,236c8 <__subtf3+0x664>
   23670:	02412683          	lw	a3,36(sp)
   23674:	00f70733          	add	a4,a4,a5
   23678:	00f737b3          	sltu	a5,a4,a5
   2367c:	00d30633          	add	a2,t1,a3
   23680:	02e12823          	sw	a4,48(sp)
   23684:	00f60733          	add	a4,a2,a5
   23688:	00f737b3          	sltu	a5,a4,a5
   2368c:	02e12a23          	sw	a4,52(sp)
   23690:	02812703          	lw	a4,40(sp)
   23694:	00d636b3          	sltu	a3,a2,a3
   23698:	00f6e7b3          	or	a5,a3,a5
   2369c:	00e506b3          	add	a3,a0,a4
   236a0:	00f68633          	add	a2,a3,a5
   236a4:	00f637b3          	sltu	a5,a2,a5
   236a8:	00e6b733          	sltu	a4,a3,a4
   236ac:	00f76733          	or	a4,a4,a5
   236b0:	02c12783          	lw	a5,44(sp)
   236b4:	02c12c23          	sw	a2,56(sp)
   236b8:	00fe0e33          	add	t3,t3,a5
   236bc:	01c70733          	add	a4,a4,t3
   236c0:	02e12e23          	sw	a4,60(sp)
   236c4:	b85ff06f          	j	23248 <__subtf3+0x1e4>
   236c8:	00008737          	lui	a4,0x8
   236cc:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x8075>
   236d0:	e0e586e3          	beq	a1,a4,234dc <__subtf3+0x478>
   236d4:	07400793          	li	a5,116
   236d8:	06d7d263          	bge	a5,a3,2373c <__subtf3+0x6d8>
   236dc:	00012e23          	sw	zero,28(sp)
   236e0:	00012c23          	sw	zero,24(sp)
   236e4:	00012a23          	sw	zero,20(sp)
   236e8:	00100793          	li	a5,1
   236ec:	1840006f          	j	23870 <__subtf3+0x80c>
   236f0:	00008737          	lui	a4,0x8
   236f4:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x8075>
   236f8:	02e61463          	bne	a2,a4,23720 <__subtf3+0x6bc>
   236fc:	02f12823          	sw	a5,48(sp)
   23700:	02412783          	lw	a5,36(sp)
   23704:	00060413          	mv	s0,a2
   23708:	02f12a23          	sw	a5,52(sp)
   2370c:	02812783          	lw	a5,40(sp)
   23710:	02f12c23          	sw	a5,56(sp)
   23714:	02c12783          	lw	a5,44(sp)
   23718:	02f12e23          	sw	a5,60(sp)
   2371c:	de1ff06f          	j	234fc <__subtf3+0x498>
   23720:	01c12783          	lw	a5,28(sp)
   23724:	00080737          	lui	a4,0x80
   23728:	00e7e7b3          	or	a5,a5,a4
   2372c:	00f12e23          	sw	a5,28(sp)
   23730:	07400793          	li	a5,116
   23734:	fab7c4e3          	blt	a5,a1,236dc <__subtf3+0x678>
   23738:	00058693          	mv	a3,a1
   2373c:	41f6d793          	srai	a5,a3,0x1f
   23740:	80000737          	lui	a4,0x80000
   23744:	01f7f793          	andi	a5,a5,31
   23748:	01f70713          	addi	a4,a4,31 # 8000001f <__BSS_END__+0x7ffd9537>
   2374c:	00d787b3          	add	a5,a5,a3
   23750:	00e6f6b3          	and	a3,a3,a4
   23754:	4057d793          	srai	a5,a5,0x5
   23758:	0006d863          	bgez	a3,23768 <__subtf3+0x704>
   2375c:	fff68693          	addi	a3,a3,-1
   23760:	fe06e693          	ori	a3,a3,-32
   23764:	00168693          	addi	a3,a3,1
   23768:	00068713          	mv	a4,a3
   2376c:	00000313          	li	t1,0
   23770:	00000593          	li	a1,0
   23774:	04f5c063          	blt	a1,a5,237b4 <__subtf3+0x750>
   23778:	00078513          	mv	a0,a5
   2377c:	0007d463          	bgez	a5,23784 <__subtf3+0x720>
   23780:	00000513          	li	a0,0
   23784:	00279593          	slli	a1,a5,0x2
   23788:	04069263          	bnez	a3,237cc <__subtf3+0x768>
   2378c:	00300693          	li	a3,3
   23790:	40f687b3          	sub	a5,a3,a5
   23794:	00b806b3          	add	a3,a6,a1
   23798:	0006a683          	lw	a3,0(a3)
   2379c:	00170713          	addi	a4,a4,1
   237a0:	00480813          	addi	a6,a6,4
   237a4:	fed82e23          	sw	a3,-4(a6)
   237a8:	fee7d6e3          	bge	a5,a4,23794 <__subtf3+0x730>
   237ac:	00300693          	li	a3,3
   237b0:	0b00006f          	j	23860 <__subtf3+0x7fc>
   237b4:	00259513          	slli	a0,a1,0x2
   237b8:	00a88533          	add	a0,a7,a0
   237bc:	00052503          	lw	a0,0(a0)
   237c0:	00158593          	addi	a1,a1,1
   237c4:	00a36333          	or	t1,t1,a0
   237c8:	fadff06f          	j	23774 <__subtf3+0x710>
   237cc:	04010713          	addi	a4,sp,64
   237d0:	00251513          	slli	a0,a0,0x2
   237d4:	00a70533          	add	a0,a4,a0
   237d8:	fd052703          	lw	a4,-48(a0)
   237dc:	02000e13          	li	t3,32
   237e0:	40de0e33          	sub	t3,t3,a3
   237e4:	01c71733          	sll	a4,a4,t3
   237e8:	00e36333          	or	t1,t1,a4
   237ec:	00300713          	li	a4,3
   237f0:	00b885b3          	add	a1,a7,a1
   237f4:	00000813          	li	a6,0
   237f8:	40f70733          	sub	a4,a4,a5
   237fc:	00458593          	addi	a1,a1,4
   23800:	02e84463          	blt	a6,a4,23828 <__subtf3+0x7c4>
   23804:	04010593          	addi	a1,sp,64
   23808:	00271713          	slli	a4,a4,0x2
   2380c:	00e58733          	add	a4,a1,a4
   23810:	01c12583          	lw	a1,28(sp)
   23814:	00d5d6b3          	srl	a3,a1,a3
   23818:	fcd72823          	sw	a3,-48(a4)
   2381c:	00400713          	li	a4,4
   23820:	40f70733          	sub	a4,a4,a5
   23824:	f89ff06f          	j	237ac <__subtf3+0x748>
   23828:	ffc5a503          	lw	a0,-4(a1)
   2382c:	0005af03          	lw	t5,0(a1)
   23830:	00281e93          	slli	t4,a6,0x2
   23834:	00d55533          	srl	a0,a0,a3
   23838:	01cf1f33          	sll	t5,t5,t3
   2383c:	01d88eb3          	add	t4,a7,t4
   23840:	01e56533          	or	a0,a0,t5
   23844:	00aea023          	sw	a0,0(t4)
   23848:	00180813          	addi	a6,a6,1
   2384c:	fb1ff06f          	j	237fc <__subtf3+0x798>
   23850:	00271793          	slli	a5,a4,0x2
   23854:	00f887b3          	add	a5,a7,a5
   23858:	0007a023          	sw	zero,0(a5)
   2385c:	00170713          	addi	a4,a4,1
   23860:	fee6d8e3          	bge	a3,a4,23850 <__subtf3+0x7ec>
   23864:	01012703          	lw	a4,16(sp)
   23868:	006037b3          	snez	a5,t1
   2386c:	00f767b3          	or	a5,a4,a5
   23870:	00f12823          	sw	a5,16(sp)
   23874:	02012683          	lw	a3,32(sp)
   23878:	01012783          	lw	a5,16(sp)
   2387c:	02412703          	lw	a4,36(sp)
   23880:	01812503          	lw	a0,24(sp)
   23884:	00f687b3          	add	a5,a3,a5
   23888:	00d7b6b3          	sltu	a3,a5,a3
   2388c:	02f12823          	sw	a5,48(sp)
   23890:	01412783          	lw	a5,20(sp)
   23894:	01c12803          	lw	a6,28(sp)
   23898:	00060413          	mv	s0,a2
   2389c:	00f707b3          	add	a5,a4,a5
   238a0:	00d785b3          	add	a1,a5,a3
   238a4:	00e7b733          	sltu	a4,a5,a4
   238a8:	00d5b7b3          	sltu	a5,a1,a3
   238ac:	00f767b3          	or	a5,a4,a5
   238b0:	02812703          	lw	a4,40(sp)
   238b4:	02c12683          	lw	a3,44(sp)
   238b8:	02b12a23          	sw	a1,52(sp)
   238bc:	00a70533          	add	a0,a4,a0
   238c0:	00f505b3          	add	a1,a0,a5
   238c4:	00e53733          	sltu	a4,a0,a4
   238c8:	00f5b7b3          	sltu	a5,a1,a5
   238cc:	010686b3          	add	a3,a3,a6
   238d0:	00f76733          	or	a4,a4,a5
   238d4:	00e68733          	add	a4,a3,a4
   238d8:	02b12c23          	sw	a1,56(sp)
   238dc:	02e12e23          	sw	a4,60(sp)
   238e0:	b49ff06f          	j	23428 <__subtf3+0x3c4>
   238e4:	00008fb7          	lui	t6,0x8
   238e8:	00140513          	addi	a0,s0,1
   238ec:	ffef8613          	addi	a2,t6,-2 # 7ffe <register_fini-0x8076>
   238f0:	00c57633          	and	a2,a0,a2
   238f4:	02412683          	lw	a3,36(sp)
   238f8:	02812583          	lw	a1,40(sp)
   238fc:	02c12803          	lw	a6,44(sp)
   23900:	01412f03          	lw	t5,20(sp)
   23904:	01812e83          	lw	t4,24(sp)
   23908:	01c12883          	lw	a7,28(sp)
   2390c:	03010313          	addi	t1,sp,48
   23910:	03c10e13          	addi	t3,sp,60
   23914:	14061663          	bnez	a2,23a60 <__subtf3+0x9fc>
   23918:	01df6533          	or	a0,t5,t4
   2391c:	01156533          	or	a0,a0,a7
   23920:	00e56533          	or	a0,a0,a4
   23924:	0a041663          	bnez	s0,239d0 <__subtf3+0x96c>
   23928:	00051c63          	bnez	a0,23940 <__subtf3+0x8dc>
   2392c:	02f12823          	sw	a5,48(sp)
   23930:	02d12a23          	sw	a3,52(sp)
   23934:	02b12c23          	sw	a1,56(sp)
   23938:	03012e23          	sw	a6,60(sp)
   2393c:	bc1ff06f          	j	234fc <__subtf3+0x498>
   23940:	00b6e633          	or	a2,a3,a1
   23944:	01066633          	or	a2,a2,a6
   23948:	00f66633          	or	a2,a2,a5
   2394c:	00061c63          	bnez	a2,23964 <__subtf3+0x900>
   23950:	02e12823          	sw	a4,48(sp)
   23954:	03e12a23          	sw	t5,52(sp)
   23958:	03d12c23          	sw	t4,56(sp)
   2395c:	03112e23          	sw	a7,60(sp)
   23960:	b9dff06f          	j	234fc <__subtf3+0x498>
   23964:	00f707b3          	add	a5,a4,a5
   23968:	00e7b733          	sltu	a4,a5,a4
   2396c:	01e686b3          	add	a3,a3,t5
   23970:	02f12823          	sw	a5,48(sp)
   23974:	00e687b3          	add	a5,a3,a4
   23978:	00e7b733          	sltu	a4,a5,a4
   2397c:	01e6b6b3          	sltu	a3,a3,t5
   23980:	00e6e733          	or	a4,a3,a4
   23984:	01d585b3          	add	a1,a1,t4
   23988:	02f12a23          	sw	a5,52(sp)
   2398c:	00e587b3          	add	a5,a1,a4
   23990:	01d5b633          	sltu	a2,a1,t4
   23994:	00e7b733          	sltu	a4,a5,a4
   23998:	00e66733          	or	a4,a2,a4
   2399c:	01180633          	add	a2,a6,a7
   239a0:	00c70633          	add	a2,a4,a2
   239a4:	02f12c23          	sw	a5,56(sp)
   239a8:	00c61793          	slli	a5,a2,0xc
   239ac:	0007c663          	bltz	a5,239b8 <__subtf3+0x954>
   239b0:	02c12e23          	sw	a2,60(sp)
   239b4:	b49ff06f          	j	234fc <__subtf3+0x498>
   239b8:	fff80737          	lui	a4,0xfff80
   239bc:	fff70713          	addi	a4,a4,-1 # fff7ffff <__BSS_END__+0xfff59517>
   239c0:	00e67633          	and	a2,a2,a4
   239c4:	02c12e23          	sw	a2,60(sp)
   239c8:	00100413          	li	s0,1
   239cc:	b31ff06f          	j	234fc <__subtf3+0x498>
   239d0:	00051e63          	bnez	a0,239ec <__subtf3+0x988>
   239d4:	02f12823          	sw	a5,48(sp)
   239d8:	02d12a23          	sw	a3,52(sp)
   239dc:	02b12c23          	sw	a1,56(sp)
   239e0:	03012e23          	sw	a6,60(sp)
   239e4:	ffff8413          	addi	s0,t6,-1
   239e8:	b15ff06f          	j	234fc <__subtf3+0x498>
   239ec:	00b6e633          	or	a2,a3,a1
   239f0:	01066633          	or	a2,a2,a6
   239f4:	00f667b3          	or	a5,a2,a5
   239f8:	00079c63          	bnez	a5,23a10 <__subtf3+0x9ac>
   239fc:	02e12823          	sw	a4,48(sp)
   23a00:	03e12a23          	sw	t5,52(sp)
   23a04:	03d12c23          	sw	t4,56(sp)
   23a08:	03112e23          	sw	a7,60(sp)
   23a0c:	fd9ff06f          	j	239e4 <__subtf3+0x980>
   23a10:	03f12e23          	sw	t6,60(sp)
   23a14:	02012c23          	sw	zero,56(sp)
   23a18:	02012a23          	sw	zero,52(sp)
   23a1c:	02012823          	sw	zero,48(sp)
   23a20:	000e0713          	mv	a4,t3
   23a24:	00072783          	lw	a5,0(a4)
   23a28:	ffc72683          	lw	a3,-4(a4)
   23a2c:	ffc70713          	addi	a4,a4,-4
   23a30:	00379793          	slli	a5,a5,0x3
   23a34:	01d6d693          	srli	a3,a3,0x1d
   23a38:	00d7e7b3          	or	a5,a5,a3
   23a3c:	00f72223          	sw	a5,4(a4)
   23a40:	fee312e3          	bne	t1,a4,23a24 <__subtf3+0x9c0>
   23a44:	03012783          	lw	a5,48(sp)
   23a48:	00008437          	lui	s0,0x8
   23a4c:	00000913          	li	s2,0
   23a50:	00379793          	slli	a5,a5,0x3
   23a54:	02f12823          	sw	a5,48(sp)
   23a58:	fff40413          	addi	s0,s0,-1 # 7fff <register_fini-0x8075>
   23a5c:	aa1ff06f          	j	234fc <__subtf3+0x498>
   23a60:	00f707b3          	add	a5,a4,a5
   23a64:	00e7b733          	sltu	a4,a5,a4
   23a68:	01e686b3          	add	a3,a3,t5
   23a6c:	02f12823          	sw	a5,48(sp)
   23a70:	00e687b3          	add	a5,a3,a4
   23a74:	00e7b733          	sltu	a4,a5,a4
   23a78:	01e6b6b3          	sltu	a3,a3,t5
   23a7c:	00e6e733          	or	a4,a3,a4
   23a80:	01d58633          	add	a2,a1,t4
   23a84:	00e606b3          	add	a3,a2,a4
   23a88:	00e6b733          	sltu	a4,a3,a4
   23a8c:	01d63633          	sltu	a2,a2,t4
   23a90:	00e66633          	or	a2,a2,a4
   23a94:	01180733          	add	a4,a6,a7
   23a98:	00e60633          	add	a2,a2,a4
   23a9c:	02f12a23          	sw	a5,52(sp)
   23aa0:	02d12c23          	sw	a3,56(sp)
   23aa4:	02c12e23          	sw	a2,60(sp)
   23aa8:	00030793          	mv	a5,t1
   23aac:	0007a703          	lw	a4,0(a5)
   23ab0:	0047a683          	lw	a3,4(a5)
   23ab4:	00478793          	addi	a5,a5,4
   23ab8:	00175713          	srli	a4,a4,0x1
   23abc:	01f69693          	slli	a3,a3,0x1f
   23ac0:	00d76733          	or	a4,a4,a3
   23ac4:	fee7ae23          	sw	a4,-4(a5)
   23ac8:	fefe12e3          	bne	t3,a5,23aac <__subtf3+0xa48>
   23acc:	000087b7          	lui	a5,0x8
   23ad0:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   23ad4:	00f50c63          	beq	a0,a5,23aec <__subtf3+0xa88>
   23ad8:	03c12783          	lw	a5,60(sp)
   23adc:	0017d793          	srli	a5,a5,0x1
   23ae0:	02f12e23          	sw	a5,60(sp)
   23ae4:	00050413          	mv	s0,a0
   23ae8:	a15ff06f          	j	234fc <__subtf3+0x498>
   23aec:	02012e23          	sw	zero,60(sp)
   23af0:	02012c23          	sw	zero,56(sp)
   23af4:	02012a23          	sw	zero,52(sp)
   23af8:	02012823          	sw	zero,48(sp)
   23afc:	fe9ff06f          	j	23ae4 <__subtf3+0xa80>
   23b00:	28b05063          	blez	a1,23d80 <__subtf3+0xd1c>
   23b04:	0c061063          	bnez	a2,23bc4 <__subtf3+0xb60>
   23b08:	02412503          	lw	a0,36(sp)
   23b0c:	02812683          	lw	a3,40(sp)
   23b10:	02c12e83          	lw	t4,44(sp)
   23b14:	00d56633          	or	a2,a0,a3
   23b18:	01d66633          	or	a2,a2,t4
   23b1c:	00f66633          	or	a2,a2,a5
   23b20:	ea060863          	beqz	a2,231d0 <__subtf3+0x16c>
   23b24:	fff58813          	addi	a6,a1,-1
   23b28:	06081a63          	bnez	a6,23b9c <__subtf3+0xb38>
   23b2c:	01412883          	lw	a7,20(sp)
   23b30:	40f707b3          	sub	a5,a4,a5
   23b34:	00f73633          	sltu	a2,a4,a5
   23b38:	40a885b3          	sub	a1,a7,a0
   23b3c:	00b8b333          	sltu	t1,a7,a1
   23b40:	40c585b3          	sub	a1,a1,a2
   23b44:	02f12823          	sw	a5,48(sp)
   23b48:	02b12a23          	sw	a1,52(sp)
   23b4c:	00000613          	li	a2,0
   23b50:	00f77663          	bgeu	a4,a5,23b5c <__subtf3+0xaf8>
   23b54:	41150633          	sub	a2,a0,a7
   23b58:	00163613          	seqz	a2,a2
   23b5c:	01812503          	lw	a0,24(sp)
   23b60:	00666633          	or	a2,a2,t1
   23b64:	40d505b3          	sub	a1,a0,a3
   23b68:	00b537b3          	sltu	a5,a0,a1
   23b6c:	40c585b3          	sub	a1,a1,a2
   23b70:	02b12c23          	sw	a1,56(sp)
   23b74:	00060663          	beqz	a2,23b80 <__subtf3+0xb1c>
   23b78:	40a686b3          	sub	a3,a3,a0
   23b7c:	0016b813          	seqz	a6,a3
   23b80:	01c12703          	lw	a4,28(sp)
   23b84:	00f867b3          	or	a5,a6,a5
   23b88:	41d70733          	sub	a4,a4,t4
   23b8c:	40f707b3          	sub	a5,a4,a5
   23b90:	02f12e23          	sw	a5,60(sp)
   23b94:	00100413          	li	s0,1
   23b98:	1c80006f          	j	23d60 <__subtf3+0xcfc>
   23b9c:	000087b7          	lui	a5,0x8
   23ba0:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   23ba4:	e2f58663          	beq	a1,a5,231d0 <__subtf3+0x16c>
   23ba8:	07400793          	li	a5,116
   23bac:	0507d063          	bge	a5,a6,23bec <__subtf3+0xb88>
   23bb0:	02012623          	sw	zero,44(sp)
   23bb4:	02012423          	sw	zero,40(sp)
   23bb8:	02012223          	sw	zero,36(sp)
   23bbc:	00100793          	li	a5,1
   23bc0:	1240006f          	j	23ce4 <__subtf3+0xc80>
   23bc4:	000087b7          	lui	a5,0x8
   23bc8:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   23bcc:	eaf40e63          	beq	s0,a5,23288 <__subtf3+0x224>
   23bd0:	02c12783          	lw	a5,44(sp)
   23bd4:	00080737          	lui	a4,0x80
   23bd8:	00e7e7b3          	or	a5,a5,a4
   23bdc:	02f12623          	sw	a5,44(sp)
   23be0:	07400793          	li	a5,116
   23be4:	fcb7c6e3          	blt	a5,a1,23bb0 <__subtf3+0xb4c>
   23be8:	00058813          	mv	a6,a1
   23bec:	40585893          	srai	a7,a6,0x5
   23bf0:	01f87793          	andi	a5,a6,31
   23bf4:	00000593          	li	a1,0
   23bf8:	00000713          	li	a4,0
   23bfc:	00271693          	slli	a3,a4,0x2
   23c00:	03171863          	bne	a4,a7,23c30 <__subtf3+0xbcc>
   23c04:	04079063          	bnez	a5,23c44 <__subtf3+0xbe0>
   23c08:	00300613          	li	a2,3
   23c0c:	40e60733          	sub	a4,a2,a4
   23c10:	00de0633          	add	a2,t3,a3
   23c14:	00062603          	lw	a2,0(a2)
   23c18:	00178793          	addi	a5,a5,1
   23c1c:	004e0e13          	addi	t3,t3,4
   23c20:	fece2e23          	sw	a2,-4(t3)
   23c24:	fef756e3          	bge	a4,a5,23c10 <__subtf3+0xbac>
   23c28:	00400693          	li	a3,4
   23c2c:	0a80006f          	j	23cd4 <__subtf3+0xc70>
   23c30:	00d306b3          	add	a3,t1,a3
   23c34:	0006a683          	lw	a3,0(a3)
   23c38:	00170713          	addi	a4,a4,1 # 80001 <__BSS_END__+0x59519>
   23c3c:	00d5e5b3          	or	a1,a1,a3
   23c40:	fbdff06f          	j	23bfc <__subtf3+0xb98>
   23c44:	04010713          	addi	a4,sp,64
   23c48:	00d70733          	add	a4,a4,a3
   23c4c:	fe072703          	lw	a4,-32(a4)
   23c50:	02000813          	li	a6,32
   23c54:	40f80833          	sub	a6,a6,a5
   23c58:	01071733          	sll	a4,a4,a6
   23c5c:	00e5e5b3          	or	a1,a1,a4
   23c60:	00300713          	li	a4,3
   23c64:	00d306b3          	add	a3,t1,a3
   23c68:	00000513          	li	a0,0
   23c6c:	41170733          	sub	a4,a4,a7
   23c70:	00468693          	addi	a3,a3,4
   23c74:	02e54463          	blt	a0,a4,23c9c <__subtf3+0xc38>
   23c78:	04010693          	addi	a3,sp,64
   23c7c:	00271713          	slli	a4,a4,0x2
   23c80:	00e68733          	add	a4,a3,a4
   23c84:	02c12683          	lw	a3,44(sp)
   23c88:	00f6d7b3          	srl	a5,a3,a5
   23c8c:	fef72023          	sw	a5,-32(a4)
   23c90:	00400793          	li	a5,4
   23c94:	411787b3          	sub	a5,a5,a7
   23c98:	f91ff06f          	j	23c28 <__subtf3+0xbc4>
   23c9c:	ffc6a603          	lw	a2,-4(a3)
   23ca0:	0006ae83          	lw	t4,0(a3)
   23ca4:	00251e13          	slli	t3,a0,0x2
   23ca8:	00f65633          	srl	a2,a2,a5
   23cac:	010e9eb3          	sll	t4,t4,a6
   23cb0:	01c30e33          	add	t3,t1,t3
   23cb4:	01d66633          	or	a2,a2,t4
   23cb8:	00ce2023          	sw	a2,0(t3)
   23cbc:	00150513          	addi	a0,a0,1
   23cc0:	fb1ff06f          	j	23c70 <__subtf3+0xc0c>
   23cc4:	00279713          	slli	a4,a5,0x2
   23cc8:	00e30733          	add	a4,t1,a4
   23ccc:	00072023          	sw	zero,0(a4)
   23cd0:	00178793          	addi	a5,a5,1
   23cd4:	fed798e3          	bne	a5,a3,23cc4 <__subtf3+0xc60>
   23cd8:	02012703          	lw	a4,32(sp)
   23cdc:	00b037b3          	snez	a5,a1
   23ce0:	00f767b3          	or	a5,a4,a5
   23ce4:	02f12023          	sw	a5,32(sp)
   23ce8:	01412683          	lw	a3,20(sp)
   23cec:	01012583          	lw	a1,16(sp)
   23cf0:	02012703          	lw	a4,32(sp)
   23cf4:	02412783          	lw	a5,36(sp)
   23cf8:	40e58733          	sub	a4,a1,a4
   23cfc:	40f687b3          	sub	a5,a3,a5
   23d00:	00f6b633          	sltu	a2,a3,a5
   23d04:	00e5b6b3          	sltu	a3,a1,a4
   23d08:	40d786b3          	sub	a3,a5,a3
   23d0c:	02d12a23          	sw	a3,52(sp)
   23d10:	02e12823          	sw	a4,48(sp)
   23d14:	00000693          	li	a3,0
   23d18:	00e5f463          	bgeu	a1,a4,23d20 <__subtf3+0xcbc>
   23d1c:	0017b693          	seqz	a3,a5
   23d20:	00c6e6b3          	or	a3,a3,a2
   23d24:	02812703          	lw	a4,40(sp)
   23d28:	01812603          	lw	a2,24(sp)
   23d2c:	40e60733          	sub	a4,a2,a4
   23d30:	40d707b3          	sub	a5,a4,a3
   23d34:	02f12c23          	sw	a5,56(sp)
   23d38:	00e635b3          	sltu	a1,a2,a4
   23d3c:	00000613          	li	a2,0
   23d40:	00068463          	beqz	a3,23d48 <__subtf3+0xce4>
   23d44:	00173613          	seqz	a2,a4
   23d48:	01c12783          	lw	a5,28(sp)
   23d4c:	02c12703          	lw	a4,44(sp)
   23d50:	00b66633          	or	a2,a2,a1
   23d54:	40e787b3          	sub	a5,a5,a4
   23d58:	40c787b3          	sub	a5,a5,a2
   23d5c:	02f12e23          	sw	a5,60(sp)
   23d60:	03c12783          	lw	a5,60(sp)
   23d64:	00c79713          	slli	a4,a5,0xc
   23d68:	f8075a63          	bgez	a4,234fc <__subtf3+0x498>
   23d6c:	00080737          	lui	a4,0x80
   23d70:	fff70713          	addi	a4,a4,-1 # 7ffff <__BSS_END__+0x59517>
   23d74:	00e7f7b3          	and	a5,a5,a4
   23d78:	02f12e23          	sw	a5,60(sp)
   23d7c:	5c40006f          	j	24340 <__subtf3+0x12dc>
   23d80:	2e058e63          	beqz	a1,2407c <__subtf3+0x1018>
   23d84:	40860eb3          	sub	t4,a2,s0
   23d88:	0e041463          	bnez	s0,23e70 <__subtf3+0xe0c>
   23d8c:	01412303          	lw	t1,20(sp)
   23d90:	01812583          	lw	a1,24(sp)
   23d94:	01c12f03          	lw	t5,28(sp)
   23d98:	00b36e33          	or	t3,t1,a1
   23d9c:	01ee6e33          	or	t3,t3,t5
   23da0:	00ee6e33          	or	t3,t3,a4
   23da4:	020e1663          	bnez	t3,23dd0 <__subtf3+0xd6c>
   23da8:	02f12823          	sw	a5,48(sp)
   23dac:	02412783          	lw	a5,36(sp)
   23db0:	000e8413          	mv	s0,t4
   23db4:	02f12a23          	sw	a5,52(sp)
   23db8:	02812783          	lw	a5,40(sp)
   23dbc:	02f12c23          	sw	a5,56(sp)
   23dc0:	02c12783          	lw	a5,44(sp)
   23dc4:	02f12e23          	sw	a5,60(sp)
   23dc8:	00050913          	mv	s2,a0
   23dcc:	f30ff06f          	j	234fc <__subtf3+0x498>
   23dd0:	fffe8693          	addi	a3,t4,-1
   23dd4:	06069a63          	bnez	a3,23e48 <__subtf3+0xde4>
   23dd8:	02412883          	lw	a7,36(sp)
   23ddc:	40e78733          	sub	a4,a5,a4
   23de0:	00e7b633          	sltu	a2,a5,a4
   23de4:	40688833          	sub	a6,a7,t1
   23de8:	0108be33          	sltu	t3,a7,a6
   23dec:	40c80833          	sub	a6,a6,a2
   23df0:	02e12823          	sw	a4,48(sp)
   23df4:	03012a23          	sw	a6,52(sp)
   23df8:	00000613          	li	a2,0
   23dfc:	00e7f663          	bgeu	a5,a4,23e08 <__subtf3+0xda4>
   23e00:	41130633          	sub	a2,t1,a7
   23e04:	00163613          	seqz	a2,a2
   23e08:	02812883          	lw	a7,40(sp)
   23e0c:	01c66733          	or	a4,a2,t3
   23e10:	40b88633          	sub	a2,a7,a1
   23e14:	00c8b833          	sltu	a6,a7,a2
   23e18:	40e60633          	sub	a2,a2,a4
   23e1c:	02c12c23          	sw	a2,56(sp)
   23e20:	00070663          	beqz	a4,23e2c <__subtf3+0xdc8>
   23e24:	411585b3          	sub	a1,a1,a7
   23e28:	0015b693          	seqz	a3,a1
   23e2c:	02c12783          	lw	a5,44(sp)
   23e30:	0106e6b3          	or	a3,a3,a6
   23e34:	00050913          	mv	s2,a0
   23e38:	41e787b3          	sub	a5,a5,t5
   23e3c:	40d786b3          	sub	a3,a5,a3
   23e40:	02d12e23          	sw	a3,60(sp)
   23e44:	d51ff06f          	j	23b94 <__subtf3+0xb30>
   23e48:	00008737          	lui	a4,0x8
   23e4c:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x8075>
   23e50:	f4ee8ce3          	beq	t4,a4,23da8 <__subtf3+0xd44>
   23e54:	07400793          	li	a5,116
   23e58:	0cd7dc63          	bge	a5,a3,23f30 <__subtf3+0xecc>
   23e5c:	00012e23          	sw	zero,28(sp)
   23e60:	00012c23          	sw	zero,24(sp)
   23e64:	00012a23          	sw	zero,20(sp)
   23e68:	00100793          	li	a5,1
   23e6c:	1880006f          	j	23ff4 <__subtf3+0xf90>
   23e70:	00008737          	lui	a4,0x8
   23e74:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x8075>
   23e78:	02e61463          	bne	a2,a4,23ea0 <__subtf3+0xe3c>
   23e7c:	02f12823          	sw	a5,48(sp)
   23e80:	02412783          	lw	a5,36(sp)
   23e84:	00060413          	mv	s0,a2
   23e88:	02f12a23          	sw	a5,52(sp)
   23e8c:	02812783          	lw	a5,40(sp)
   23e90:	02f12c23          	sw	a5,56(sp)
   23e94:	02c12783          	lw	a5,44(sp)
   23e98:	02f12e23          	sw	a5,60(sp)
   23e9c:	f2dff06f          	j	23dc8 <__subtf3+0xd64>
   23ea0:	01c12783          	lw	a5,28(sp)
   23ea4:	00080737          	lui	a4,0x80
   23ea8:	00e7e7b3          	or	a5,a5,a4
   23eac:	00f12e23          	sw	a5,28(sp)
   23eb0:	07400793          	li	a5,116
   23eb4:	fbd7c4e3          	blt	a5,t4,23e5c <__subtf3+0xdf8>
   23eb8:	41fed793          	srai	a5,t4,0x1f
   23ebc:	800005b7          	lui	a1,0x80000
   23ec0:	01f7f793          	andi	a5,a5,31
   23ec4:	01f58593          	addi	a1,a1,31 # 8000001f <__BSS_END__+0x7ffd9537>
   23ec8:	01d787b3          	add	a5,a5,t4
   23ecc:	00bef5b3          	and	a1,t4,a1
   23ed0:	4057d313          	srai	t1,a5,0x5
   23ed4:	0005d863          	bgez	a1,23ee4 <__subtf3+0xe80>
   23ed8:	fff58593          	addi	a1,a1,-1
   23edc:	fe05e593          	ori	a1,a1,-32
   23ee0:	00158593          	addi	a1,a1,1
   23ee4:	00058793          	mv	a5,a1
   23ee8:	00000e13          	li	t3,0
   23eec:	00000713          	li	a4,0
   23ef0:	04674463          	blt	a4,t1,23f38 <__subtf3+0xed4>
   23ef4:	00030693          	mv	a3,t1
   23ef8:	00035463          	bgez	t1,23f00 <__subtf3+0xe9c>
   23efc:	00000693          	li	a3,0
   23f00:	00231713          	slli	a4,t1,0x2
   23f04:	04059663          	bnez	a1,23f50 <__subtf3+0xeec>
   23f08:	00300693          	li	a3,3
   23f0c:	40668333          	sub	t1,a3,t1
   23f10:	00e806b3          	add	a3,a6,a4
   23f14:	0006a683          	lw	a3,0(a3)
   23f18:	00178793          	addi	a5,a5,1
   23f1c:	00480813          	addi	a6,a6,4
   23f20:	fed82e23          	sw	a3,-4(a6)
   23f24:	fef356e3          	bge	t1,a5,23f10 <__subtf3+0xeac>
   23f28:	00300693          	li	a3,3
   23f2c:	0b80006f          	j	23fe4 <__subtf3+0xf80>
   23f30:	00068e93          	mv	t4,a3
   23f34:	f85ff06f          	j	23eb8 <__subtf3+0xe54>
   23f38:	00271693          	slli	a3,a4,0x2
   23f3c:	00d886b3          	add	a3,a7,a3
   23f40:	0006a683          	lw	a3,0(a3)
   23f44:	00170713          	addi	a4,a4,1 # 80001 <__BSS_END__+0x59519>
   23f48:	00de6e33          	or	t3,t3,a3
   23f4c:	fa5ff06f          	j	23ef0 <__subtf3+0xe8c>
   23f50:	04010793          	addi	a5,sp,64
   23f54:	00269693          	slli	a3,a3,0x2
   23f58:	00d786b3          	add	a3,a5,a3
   23f5c:	fd06a783          	lw	a5,-48(a3)
   23f60:	02000e93          	li	t4,32
   23f64:	40be8eb3          	sub	t4,t4,a1
   23f68:	01d797b3          	sll	a5,a5,t4
   23f6c:	00fe6e33          	or	t3,t3,a5
   23f70:	00300793          	li	a5,3
   23f74:	00e88733          	add	a4,a7,a4
   23f78:	00000813          	li	a6,0
   23f7c:	406787b3          	sub	a5,a5,t1
   23f80:	00470713          	addi	a4,a4,4
   23f84:	02f84463          	blt	a6,a5,23fac <__subtf3+0xf48>
   23f88:	04010713          	addi	a4,sp,64
   23f8c:	00279793          	slli	a5,a5,0x2
   23f90:	00f707b3          	add	a5,a4,a5
   23f94:	01c12703          	lw	a4,28(sp)
   23f98:	00b755b3          	srl	a1,a4,a1
   23f9c:	fcb7a823          	sw	a1,-48(a5)
   23fa0:	00400793          	li	a5,4
   23fa4:	406787b3          	sub	a5,a5,t1
   23fa8:	f81ff06f          	j	23f28 <__subtf3+0xec4>
   23fac:	ffc72683          	lw	a3,-4(a4)
   23fb0:	00072f83          	lw	t6,0(a4)
   23fb4:	00281f13          	slli	t5,a6,0x2
   23fb8:	00b6d6b3          	srl	a3,a3,a1
   23fbc:	01df9fb3          	sll	t6,t6,t4
   23fc0:	01e88f33          	add	t5,a7,t5
   23fc4:	01f6e6b3          	or	a3,a3,t6
   23fc8:	00df2023          	sw	a3,0(t5)
   23fcc:	00180813          	addi	a6,a6,1
   23fd0:	fb1ff06f          	j	23f80 <__subtf3+0xf1c>
   23fd4:	00279713          	slli	a4,a5,0x2
   23fd8:	00e88733          	add	a4,a7,a4
   23fdc:	00072023          	sw	zero,0(a4)
   23fe0:	00178793          	addi	a5,a5,1
   23fe4:	fef6d8e3          	bge	a3,a5,23fd4 <__subtf3+0xf70>
   23fe8:	01012703          	lw	a4,16(sp)
   23fec:	01c037b3          	snez	a5,t3
   23ff0:	00f767b3          	or	a5,a4,a5
   23ff4:	00f12823          	sw	a5,16(sp)
   23ff8:	02412683          	lw	a3,36(sp)
   23ffc:	02012803          	lw	a6,32(sp)
   24000:	01012703          	lw	a4,16(sp)
   24004:	01412783          	lw	a5,20(sp)
   24008:	40e80733          	sub	a4,a6,a4
   2400c:	40f687b3          	sub	a5,a3,a5
   24010:	00f6b5b3          	sltu	a1,a3,a5
   24014:	00e836b3          	sltu	a3,a6,a4
   24018:	40d786b3          	sub	a3,a5,a3
   2401c:	02d12a23          	sw	a3,52(sp)
   24020:	02e12823          	sw	a4,48(sp)
   24024:	00000693          	li	a3,0
   24028:	00e87463          	bgeu	a6,a4,24030 <__subtf3+0xfcc>
   2402c:	0017b693          	seqz	a3,a5
   24030:	00b6e6b3          	or	a3,a3,a1
   24034:	01812703          	lw	a4,24(sp)
   24038:	02812583          	lw	a1,40(sp)
   2403c:	40e58733          	sub	a4,a1,a4
   24040:	40d707b3          	sub	a5,a4,a3
   24044:	02f12c23          	sw	a5,56(sp)
   24048:	00e5b833          	sltu	a6,a1,a4
   2404c:	00000593          	li	a1,0
   24050:	00068463          	beqz	a3,24058 <__subtf3+0xff4>
   24054:	00173593          	seqz	a1,a4
   24058:	02c12783          	lw	a5,44(sp)
   2405c:	01c12703          	lw	a4,28(sp)
   24060:	0105e5b3          	or	a1,a1,a6
   24064:	00060413          	mv	s0,a2
   24068:	40e787b3          	sub	a5,a5,a4
   2406c:	40b787b3          	sub	a5,a5,a1
   24070:	02f12e23          	sw	a5,60(sp)
   24074:	00050913          	mv	s2,a0
   24078:	ce9ff06f          	j	23d60 <__subtf3+0xcfc>
   2407c:	00008f37          	lui	t5,0x8
   24080:	ffef0693          	addi	a3,t5,-2 # 7ffe <register_fini-0x8076>
   24084:	00140e93          	addi	t4,s0,1
   24088:	00defeb3          	and	t4,t4,a3
   2408c:	02412603          	lw	a2,36(sp)
   24090:	01412683          	lw	a3,20(sp)
   24094:	01812803          	lw	a6,24(sp)
   24098:	01c12e03          	lw	t3,28(sp)
   2409c:	02812883          	lw	a7,40(sp)
   240a0:	02c12303          	lw	t1,44(sp)
   240a4:	1e0e9063          	bnez	t4,24284 <__subtf3+0x1220>
   240a8:	011665b3          	or	a1,a2,a7
   240ac:	0106eeb3          	or	t4,a3,a6
   240b0:	0065e5b3          	or	a1,a1,t1
   240b4:	01ceeeb3          	or	t4,t4,t3
   240b8:	00f5e5b3          	or	a1,a1,a5
   240bc:	00eeeeb3          	or	t4,t4,a4
   240c0:	10041a63          	bnez	s0,241d4 <__subtf3+0x1170>
   240c4:	020e9463          	bnez	t4,240ec <__subtf3+0x1088>
   240c8:	02f12823          	sw	a5,48(sp)
   240cc:	02c12a23          	sw	a2,52(sp)
   240d0:	03112c23          	sw	a7,56(sp)
   240d4:	02612e23          	sw	t1,60(sp)
   240d8:	00050913          	mv	s2,a0
   240dc:	c2059063          	bnez	a1,234fc <__subtf3+0x498>
   240e0:	00000413          	li	s0,0
   240e4:	00000913          	li	s2,0
   240e8:	c14ff06f          	j	234fc <__subtf3+0x498>
   240ec:	00059c63          	bnez	a1,24104 <__subtf3+0x10a0>
   240f0:	02e12823          	sw	a4,48(sp)
   240f4:	02d12a23          	sw	a3,52(sp)
   240f8:	03012c23          	sw	a6,56(sp)
   240fc:	03c12e23          	sw	t3,60(sp)
   24100:	bfcff06f          	j	234fc <__subtf3+0x498>
   24104:	40f705b3          	sub	a1,a4,a5
   24108:	40c68fb3          	sub	t6,a3,a2
   2410c:	00b73f33          	sltu	t5,a4,a1
   24110:	01f6beb3          	sltu	t4,a3,t6
   24114:	41ef8fb3          	sub	t6,t6,t5
   24118:	02b12823          	sw	a1,48(sp)
   2411c:	03f12a23          	sw	t6,52(sp)
   24120:	00000f13          	li	t5,0
   24124:	00b77663          	bgeu	a4,a1,24130 <__subtf3+0x10cc>
   24128:	40d60f33          	sub	t5,a2,a3
   2412c:	001f3f13          	seqz	t5,t5
   24130:	411802b3          	sub	t0,a6,a7
   24134:	01df6f33          	or	t5,t5,t4
   24138:	41e289b3          	sub	s3,t0,t5
   2413c:	03312c23          	sw	s3,56(sp)
   24140:	00583a33          	sltu	s4,a6,t0
   24144:	00000393          	li	t2,0
   24148:	000f0463          	beqz	t5,24150 <__subtf3+0x10ec>
   2414c:	0012b393          	seqz	t2,t0
   24150:	406e0eb3          	sub	t4,t3,t1
   24154:	0143e3b3          	or	t2,t2,s4
   24158:	407e8eb3          	sub	t4,t4,t2
   2415c:	03d12e23          	sw	t4,60(sp)
   24160:	00ce9f13          	slli	t5,t4,0xc
   24164:	060f5063          	bgez	t5,241c4 <__subtf3+0x1160>
   24168:	40e78733          	sub	a4,a5,a4
   2416c:	40d606b3          	sub	a3,a2,a3
   24170:	00e7b5b3          	sltu	a1,a5,a4
   24174:	40b685b3          	sub	a1,a3,a1
   24178:	02b12a23          	sw	a1,52(sp)
   2417c:	02e12823          	sw	a4,48(sp)
   24180:	00d63633          	sltu	a2,a2,a3
   24184:	00000593          	li	a1,0
   24188:	00e7f463          	bgeu	a5,a4,24190 <__subtf3+0x112c>
   2418c:	0016b593          	seqz	a1,a3
   24190:	41088733          	sub	a4,a7,a6
   24194:	00c5e633          	or	a2,a1,a2
   24198:	00e8b8b3          	sltu	a7,a7,a4
   2419c:	40c70733          	sub	a4,a4,a2
   241a0:	02e12c23          	sw	a4,56(sp)
   241a4:	00000693          	li	a3,0
   241a8:	00060463          	beqz	a2,241b0 <__subtf3+0x114c>
   241ac:	0012b693          	seqz	a3,t0
   241b0:	41c30733          	sub	a4,t1,t3
   241b4:	0116e6b3          	or	a3,a3,a7
   241b8:	40d706b3          	sub	a3,a4,a3
   241bc:	02d12e23          	sw	a3,60(sp)
   241c0:	c09ff06f          	j	23dc8 <__subtf3+0xd64>
   241c4:	01f5e5b3          	or	a1,a1,t6
   241c8:	0135e5b3          	or	a1,a1,s3
   241cc:	01d5e5b3          	or	a1,a1,t4
   241d0:	f0dff06f          	j	240dc <__subtf3+0x1078>
   241d4:	03010f93          	addi	t6,sp,48
   241d8:	040e9e63          	bnez	t4,24234 <__subtf3+0x11d0>
   241dc:	02059e63          	bnez	a1,24218 <__subtf3+0x11b4>
   241e0:	03e12e23          	sw	t5,60(sp)
   241e4:	02012c23          	sw	zero,56(sp)
   241e8:	02012a23          	sw	zero,52(sp)
   241ec:	02012823          	sw	zero,48(sp)
   241f0:	03c10793          	addi	a5,sp,60
   241f4:	0007a703          	lw	a4,0(a5)
   241f8:	ffc7a683          	lw	a3,-4(a5)
   241fc:	ffc78793          	addi	a5,a5,-4
   24200:	00371713          	slli	a4,a4,0x3
   24204:	01d6d693          	srli	a3,a3,0x1d
   24208:	00d76733          	or	a4,a4,a3
   2420c:	00e7a223          	sw	a4,4(a5)
   24210:	feff92e3          	bne	t6,a5,241f4 <__subtf3+0x1190>
   24214:	831ff06f          	j	23a44 <__subtf3+0x9e0>
   24218:	02f12823          	sw	a5,48(sp)
   2421c:	02c12a23          	sw	a2,52(sp)
   24220:	03112c23          	sw	a7,56(sp)
   24224:	02612e23          	sw	t1,60(sp)
   24228:	00050913          	mv	s2,a0
   2422c:	ffff0413          	addi	s0,t5,-1
   24230:	accff06f          	j	234fc <__subtf3+0x498>
   24234:	00059c63          	bnez	a1,2424c <__subtf3+0x11e8>
   24238:	02e12823          	sw	a4,48(sp)
   2423c:	02d12a23          	sw	a3,52(sp)
   24240:	03012c23          	sw	a6,56(sp)
   24244:	03c12e23          	sw	t3,60(sp)
   24248:	fe5ff06f          	j	2422c <__subtf3+0x11c8>
   2424c:	03e12e23          	sw	t5,60(sp)
   24250:	02012c23          	sw	zero,56(sp)
   24254:	02012a23          	sw	zero,52(sp)
   24258:	02012823          	sw	zero,48(sp)
   2425c:	03c10793          	addi	a5,sp,60
   24260:	0007a703          	lw	a4,0(a5)
   24264:	ffc7a683          	lw	a3,-4(a5)
   24268:	ffc78793          	addi	a5,a5,-4
   2426c:	00371713          	slli	a4,a4,0x3
   24270:	01d6d693          	srli	a3,a3,0x1d
   24274:	00d76733          	or	a4,a4,a3
   24278:	00e7a223          	sw	a4,4(a5)
   2427c:	feff92e3          	bne	t6,a5,24260 <__subtf3+0x11fc>
   24280:	fc4ff06f          	j	23a44 <__subtf3+0x9e0>
   24284:	40f70eb3          	sub	t4,a4,a5
   24288:	40c682b3          	sub	t0,a3,a2
   2428c:	01d73fb3          	sltu	t6,a4,t4
   24290:	0056bf33          	sltu	t5,a3,t0
   24294:	41f282b3          	sub	t0,t0,t6
   24298:	03d12823          	sw	t4,48(sp)
   2429c:	02512a23          	sw	t0,52(sp)
   242a0:	00000f93          	li	t6,0
   242a4:	01d77663          	bgeu	a4,t4,242b0 <__subtf3+0x124c>
   242a8:	40d60fb3          	sub	t6,a2,a3
   242ac:	001fbf93          	seqz	t6,t6
   242b0:	411803b3          	sub	t2,a6,a7
   242b4:	01efefb3          	or	t6,t6,t5
   242b8:	41f38a33          	sub	s4,t2,t6
   242bc:	03412c23          	sw	s4,56(sp)
   242c0:	00783ab3          	sltu	s5,a6,t2
   242c4:	00000993          	li	s3,0
   242c8:	000f8463          	beqz	t6,242d0 <__subtf3+0x126c>
   242cc:	0013b993          	seqz	s3,t2
   242d0:	406e0f33          	sub	t5,t3,t1
   242d4:	0159e9b3          	or	s3,s3,s5
   242d8:	413f0f33          	sub	t5,t5,s3
   242dc:	03e12e23          	sw	t5,60(sp)
   242e0:	00cf1f93          	slli	t6,t5,0xc
   242e4:	0e0fd063          	bgez	t6,243c4 <__subtf3+0x1360>
   242e8:	40e78733          	sub	a4,a5,a4
   242ec:	40d606b3          	sub	a3,a2,a3
   242f0:	00e7beb3          	sltu	t4,a5,a4
   242f4:	41d68eb3          	sub	t4,a3,t4
   242f8:	03d12a23          	sw	t4,52(sp)
   242fc:	02e12823          	sw	a4,48(sp)
   24300:	00d63633          	sltu	a2,a2,a3
   24304:	00000e93          	li	t4,0
   24308:	00e7f463          	bgeu	a5,a4,24310 <__subtf3+0x12ac>
   2430c:	0016be93          	seqz	t4,a3
   24310:	41088733          	sub	a4,a7,a6
   24314:	00cee633          	or	a2,t4,a2
   24318:	00e8b8b3          	sltu	a7,a7,a4
   2431c:	40c70733          	sub	a4,a4,a2
   24320:	02e12c23          	sw	a4,56(sp)
   24324:	00060463          	beqz	a2,2432c <__subtf3+0x12c8>
   24328:	0013b593          	seqz	a1,t2
   2432c:	41c30733          	sub	a4,t1,t3
   24330:	0115e7b3          	or	a5,a1,a7
   24334:	40f707b3          	sub	a5,a4,a5
   24338:	02f12e23          	sw	a5,60(sp)
   2433c:	00050913          	mv	s2,a0
   24340:	03c12503          	lw	a0,60(sp)
   24344:	08050a63          	beqz	a0,243d8 <__subtf3+0x1374>
   24348:	2f5000ef          	jal	ra,24e3c <__clzsi2>
   2434c:	ff450513          	addi	a0,a0,-12
   24350:	41f55793          	srai	a5,a0,0x1f
   24354:	80000737          	lui	a4,0x80000
   24358:	01f7f793          	andi	a5,a5,31
   2435c:	01f70713          	addi	a4,a4,31 # 8000001f <__BSS_END__+0x7ffd9537>
   24360:	00a787b3          	add	a5,a5,a0
   24364:	00e57733          	and	a4,a0,a4
   24368:	4057d793          	srai	a5,a5,0x5
   2436c:	00075863          	bgez	a4,2437c <__subtf3+0x1318>
   24370:	fff70713          	addi	a4,a4,-1
   24374:	fe076713          	ori	a4,a4,-32
   24378:	00170713          	addi	a4,a4,1
   2437c:	40f006b3          	neg	a3,a5
   24380:	08070863          	beqz	a4,24410 <__subtf3+0x13ac>
   24384:	00269693          	slli	a3,a3,0x2
   24388:	03010313          	addi	t1,sp,48
   2438c:	00c68693          	addi	a3,a3,12
   24390:	02000813          	li	a6,32
   24394:	00d306b3          	add	a3,t1,a3
   24398:	00279593          	slli	a1,a5,0x2
   2439c:	40e80833          	sub	a6,a6,a4
   243a0:	08d31e63          	bne	t1,a3,2443c <__subtf3+0x13d8>
   243a4:	04010693          	addi	a3,sp,64
   243a8:	00b685b3          	add	a1,a3,a1
   243ac:	03012683          	lw	a3,48(sp)
   243b0:	fff78793          	addi	a5,a5,-1
   243b4:	00e69733          	sll	a4,a3,a4
   243b8:	fee5a823          	sw	a4,-16(a1)
   243bc:	fff00693          	li	a3,-1
   243c0:	0b40006f          	j	24474 <__subtf3+0x1410>
   243c4:	005eeeb3          	or	t4,t4,t0
   243c8:	014eeeb3          	or	t4,t4,s4
   243cc:	01eeeeb3          	or	t4,t4,t5
   243d0:	d00e88e3          	beqz	t4,240e0 <__subtf3+0x107c>
   243d4:	f6dff06f          	j	24340 <__subtf3+0x12dc>
   243d8:	03812503          	lw	a0,56(sp)
   243dc:	00050863          	beqz	a0,243ec <__subtf3+0x1388>
   243e0:	25d000ef          	jal	ra,24e3c <__clzsi2>
   243e4:	02050513          	addi	a0,a0,32
   243e8:	f65ff06f          	j	2434c <__subtf3+0x12e8>
   243ec:	03412503          	lw	a0,52(sp)
   243f0:	00050863          	beqz	a0,24400 <__subtf3+0x139c>
   243f4:	249000ef          	jal	ra,24e3c <__clzsi2>
   243f8:	04050513          	addi	a0,a0,64
   243fc:	f51ff06f          	j	2434c <__subtf3+0x12e8>
   24400:	03012503          	lw	a0,48(sp)
   24404:	239000ef          	jal	ra,24e3c <__clzsi2>
   24408:	06050513          	addi	a0,a0,96
   2440c:	f41ff06f          	j	2434c <__subtf3+0x12e8>
   24410:	03c10713          	addi	a4,sp,60
   24414:	00269693          	slli	a3,a3,0x2
   24418:	00300613          	li	a2,3
   2441c:	00d705b3          	add	a1,a4,a3
   24420:	0005a583          	lw	a1,0(a1)
   24424:	fff60613          	addi	a2,a2,-1
   24428:	ffc70713          	addi	a4,a4,-4
   2442c:	00b72223          	sw	a1,4(a4)
   24430:	fef656e3          	bge	a2,a5,2441c <__subtf3+0x13b8>
   24434:	fff78793          	addi	a5,a5,-1
   24438:	f85ff06f          	j	243bc <__subtf3+0x1358>
   2443c:	ffc6a603          	lw	a2,-4(a3)
   24440:	0006a883          	lw	a7,0(a3)
   24444:	00b68e33          	add	t3,a3,a1
   24448:	01065633          	srl	a2,a2,a6
   2444c:	00e898b3          	sll	a7,a7,a4
   24450:	01166633          	or	a2,a2,a7
   24454:	00ce2023          	sw	a2,0(t3)
   24458:	ffc68693          	addi	a3,a3,-4
   2445c:	f45ff06f          	j	243a0 <__subtf3+0x133c>
   24460:	00279713          	slli	a4,a5,0x2
   24464:	03010613          	addi	a2,sp,48
   24468:	00e60733          	add	a4,a2,a4
   2446c:	00072023          	sw	zero,0(a4)
   24470:	fff78793          	addi	a5,a5,-1
   24474:	fed796e3          	bne	a5,a3,24460 <__subtf3+0x13fc>
   24478:	16854063          	blt	a0,s0,245d8 <__subtf3+0x1574>
   2447c:	40850433          	sub	s0,a0,s0
   24480:	00140413          	addi	s0,s0,1
   24484:	41f45793          	srai	a5,s0,0x1f
   24488:	01f7f793          	andi	a5,a5,31
   2448c:	008787b3          	add	a5,a5,s0
   24490:	4057d513          	srai	a0,a5,0x5
   24494:	800007b7          	lui	a5,0x80000
   24498:	01f78793          	addi	a5,a5,31 # 8000001f <__BSS_END__+0x7ffd9537>
   2449c:	00f47433          	and	s0,s0,a5
   244a0:	00045863          	bgez	s0,244b0 <__subtf3+0x144c>
   244a4:	fff40413          	addi	s0,s0,-1
   244a8:	fe046413          	ori	s0,s0,-32
   244ac:	00140413          	addi	s0,s0,1
   244b0:	00040793          	mv	a5,s0
   244b4:	00000813          	li	a6,0
   244b8:	00000713          	li	a4,0
   244bc:	04a74263          	blt	a4,a0,24500 <__subtf3+0x149c>
   244c0:	00050693          	mv	a3,a0
   244c4:	00055463          	bgez	a0,244cc <__subtf3+0x1468>
   244c8:	00000693          	li	a3,0
   244cc:	00251713          	slli	a4,a0,0x2
   244d0:	04041663          	bnez	s0,2451c <__subtf3+0x14b8>
   244d4:	00300613          	li	a2,3
   244d8:	03010693          	addi	a3,sp,48
   244dc:	40a60533          	sub	a0,a2,a0
   244e0:	00e68633          	add	a2,a3,a4
   244e4:	00062603          	lw	a2,0(a2)
   244e8:	00178793          	addi	a5,a5,1
   244ec:	00468693          	addi	a3,a3,4
   244f0:	fec6ae23          	sw	a2,-4(a3)
   244f4:	fef556e3          	bge	a0,a5,244e0 <__subtf3+0x147c>
   244f8:	00300693          	li	a3,3
   244fc:	0c00006f          	j	245bc <__subtf3+0x1558>
   24500:	00271693          	slli	a3,a4,0x2
   24504:	03010613          	addi	a2,sp,48
   24508:	00d606b3          	add	a3,a2,a3
   2450c:	0006a683          	lw	a3,0(a3)
   24510:	00170713          	addi	a4,a4,1
   24514:	00d86833          	or	a6,a6,a3
   24518:	fa5ff06f          	j	244bc <__subtf3+0x1458>
   2451c:	04010793          	addi	a5,sp,64
   24520:	00269693          	slli	a3,a3,0x2
   24524:	00d786b3          	add	a3,a5,a3
   24528:	ff06a783          	lw	a5,-16(a3)
   2452c:	02000593          	li	a1,32
   24530:	408585b3          	sub	a1,a1,s0
   24534:	00b797b3          	sll	a5,a5,a1
   24538:	00f86833          	or	a6,a6,a5
   2453c:	03010793          	addi	a5,sp,48
   24540:	00e78733          	add	a4,a5,a4
   24544:	00300793          	li	a5,3
   24548:	00000613          	li	a2,0
   2454c:	40a787b3          	sub	a5,a5,a0
   24550:	00470713          	addi	a4,a4,4
   24554:	02f64463          	blt	a2,a5,2457c <__subtf3+0x1518>
   24558:	04010713          	addi	a4,sp,64
   2455c:	00279793          	slli	a5,a5,0x2
   24560:	00f707b3          	add	a5,a4,a5
   24564:	03c12703          	lw	a4,60(sp)
   24568:	00875433          	srl	s0,a4,s0
   2456c:	fe87a823          	sw	s0,-16(a5)
   24570:	00400793          	li	a5,4
   24574:	40a787b3          	sub	a5,a5,a0
   24578:	f81ff06f          	j	244f8 <__subtf3+0x1494>
   2457c:	00261893          	slli	a7,a2,0x2
   24580:	03010693          	addi	a3,sp,48
   24584:	011688b3          	add	a7,a3,a7
   24588:	00072303          	lw	t1,0(a4)
   2458c:	ffc72683          	lw	a3,-4(a4)
   24590:	00160613          	addi	a2,a2,1
   24594:	00b31333          	sll	t1,t1,a1
   24598:	0086d6b3          	srl	a3,a3,s0
   2459c:	0066e6b3          	or	a3,a3,t1
   245a0:	00d8a023          	sw	a3,0(a7)
   245a4:	fadff06f          	j	24550 <__subtf3+0x14ec>
   245a8:	00279713          	slli	a4,a5,0x2
   245ac:	03010613          	addi	a2,sp,48
   245b0:	00e60733          	add	a4,a2,a4
   245b4:	00072023          	sw	zero,0(a4)
   245b8:	00178793          	addi	a5,a5,1
   245bc:	fef6d6e3          	bge	a3,a5,245a8 <__subtf3+0x1544>
   245c0:	03012703          	lw	a4,48(sp)
   245c4:	010037b3          	snez	a5,a6
   245c8:	00000413          	li	s0,0
   245cc:	00f767b3          	or	a5,a4,a5
   245d0:	02f12823          	sw	a5,48(sp)
   245d4:	f29fe06f          	j	234fc <__subtf3+0x498>
   245d8:	03c12783          	lw	a5,60(sp)
   245dc:	fff80737          	lui	a4,0xfff80
   245e0:	fff70713          	addi	a4,a4,-1 # fff7ffff <__BSS_END__+0xfff59517>
   245e4:	40a40433          	sub	s0,s0,a0
   245e8:	00e7f7b3          	and	a5,a5,a4
   245ec:	cb5fe06f          	j	232a0 <__subtf3+0x23c>
   245f0:	02012e23          	sw	zero,60(sp)
   245f4:	02012c23          	sw	zero,56(sp)
   245f8:	02012a23          	sw	zero,52(sp)
   245fc:	02012823          	sw	zero,48(sp)
   24600:	f7dfe06f          	j	2357c <__subtf3+0x518>

00024604 <__fixtfsi>:
   24604:	00c52703          	lw	a4,12(a0)
   24608:	00852783          	lw	a5,8(a0)
   2460c:	00452683          	lw	a3,4(a0)
   24610:	00052603          	lw	a2,0(a0)
   24614:	fe010113          	addi	sp,sp,-32
   24618:	00f12423          	sw	a5,8(sp)
   2461c:	00e12623          	sw	a4,12(sp)
   24620:	00f12c23          	sw	a5,24(sp)
   24624:	01071593          	slli	a1,a4,0x10
   24628:	00171793          	slli	a5,a4,0x1
   2462c:	01f75813          	srli	a6,a4,0x1f
   24630:	00004737          	lui	a4,0x4
   24634:	00d12223          	sw	a3,4(sp)
   24638:	00d12a23          	sw	a3,20(sp)
   2463c:	00c12023          	sw	a2,0(sp)
   24640:	0117d693          	srli	a3,a5,0x11
   24644:	00c12823          	sw	a2,16(sp)
   24648:	ffe70793          	addi	a5,a4,-2 # 3ffe <register_fini-0xc076>
   2464c:	00000513          	li	a0,0
   24650:	00d7dc63          	bge	a5,a3,24668 <__fixtfsi+0x64>
   24654:	01d70793          	addi	a5,a4,29
   24658:	00d7dc63          	bge	a5,a3,24670 <__fixtfsi+0x6c>
   2465c:	80000537          	lui	a0,0x80000
   24660:	fff54513          	not	a0,a0
   24664:	00a80533          	add	a0,a6,a0
   24668:	02010113          	addi	sp,sp,32
   2466c:	00008067          	ret
   24670:	000107b7          	lui	a5,0x10
   24674:	0105d593          	srli	a1,a1,0x10
   24678:	00f5e5b3          	or	a1,a1,a5
   2467c:	06f70793          	addi	a5,a4,111
   24680:	40d787b3          	sub	a5,a5,a3
   24684:	4057d713          	srai	a4,a5,0x5
   24688:	00b12e23          	sw	a1,28(sp)
   2468c:	01f7f793          	andi	a5,a5,31
   24690:	08079863          	bnez	a5,24720 <__fixtfsi+0x11c>
   24694:	00271793          	slli	a5,a4,0x2
   24698:	02010693          	addi	a3,sp,32
   2469c:	00f687b3          	add	a5,a3,a5
   246a0:	ff07a783          	lw	a5,-16(a5) # fff0 <register_fini-0x84>
   246a4:	00200613          	li	a2,2
   246a8:	00f12823          	sw	a5,16(sp)
   246ac:	00200793          	li	a5,2
   246b0:	00e78463          	beq	a5,a4,246b8 <__fixtfsi+0xb4>
   246b4:	00100613          	li	a2,1
   246b8:	00400713          	li	a4,4
   246bc:	00261793          	slli	a5,a2,0x2
   246c0:	01010693          	addi	a3,sp,16
   246c4:	00f687b3          	add	a5,a3,a5
   246c8:	0007a023          	sw	zero,0(a5)
   246cc:	00160613          	addi	a2,a2,1
   246d0:	fee616e3          	bne	a2,a4,246bc <__fixtfsi+0xb8>
   246d4:	01012503          	lw	a0,16(sp)
   246d8:	f80808e3          	beqz	a6,24668 <__fixtfsi+0x64>
   246dc:	40a00533          	neg	a0,a0
   246e0:	f89ff06f          	j	24668 <__fixtfsi+0x64>
   246e4:	ff062683          	lw	a3,-16(a2)
   246e8:	ff072303          	lw	t1,-16(a4)
   246ec:	011696b3          	sll	a3,a3,a7
   246f0:	00f35333          	srl	t1,t1,a5
   246f4:	0066e6b3          	or	a3,a3,t1
   246f8:	00d12823          	sw	a3,16(sp)
   246fc:	00100693          	li	a3,1
   24700:	fea6c2e3          	blt	a3,a0,246e4 <__fixtfsi+0xe0>
   24704:	00168613          	addi	a2,a3,1
   24708:	02010713          	addi	a4,sp,32
   2470c:	00269693          	slli	a3,a3,0x2
   24710:	00d706b3          	add	a3,a4,a3
   24714:	00f5d7b3          	srl	a5,a1,a5
   24718:	fef6a823          	sw	a5,-16(a3)
   2471c:	f9dff06f          	j	246b8 <__fixtfsi+0xb4>
   24720:	00170613          	addi	a2,a4,1
   24724:	02010893          	addi	a7,sp,32
   24728:	00300513          	li	a0,3
   2472c:	00261613          	slli	a2,a2,0x2
   24730:	40e50533          	sub	a0,a0,a4
   24734:	00c88633          	add	a2,a7,a2
   24738:	00271713          	slli	a4,a4,0x2
   2473c:	02000893          	li	a7,32
   24740:	02010313          	addi	t1,sp,32
   24744:	00000693          	li	a3,0
   24748:	40f888b3          	sub	a7,a7,a5
   2474c:	00e30733          	add	a4,t1,a4
   24750:	fb1ff06f          	j	24700 <__fixtfsi+0xfc>

00024754 <__floatsitf>:
   24754:	fd010113          	addi	sp,sp,-48
   24758:	02912223          	sw	s1,36(sp)
   2475c:	02112623          	sw	ra,44(sp)
   24760:	02812423          	sw	s0,40(sp)
   24764:	03212023          	sw	s2,32(sp)
   24768:	00050493          	mv	s1,a0
   2476c:	14058c63          	beqz	a1,248c4 <__floatsitf+0x170>
   24770:	41f5d793          	srai	a5,a1,0x1f
   24774:	00b7c433          	xor	s0,a5,a1
   24778:	40f40433          	sub	s0,s0,a5
   2477c:	00040513          	mv	a0,s0
   24780:	01f5d913          	srli	s2,a1,0x1f
   24784:	6b8000ef          	jal	ra,24e3c <__clzsi2>
   24788:	000045b7          	lui	a1,0x4
   2478c:	01e58593          	addi	a1,a1,30 # 401e <register_fini-0xc056>
   24790:	40a585b3          	sub	a1,a1,a0
   24794:	05150513          	addi	a0,a0,81 # 80000051 <__BSS_END__+0x7ffd9569>
   24798:	00812823          	sw	s0,16(sp)
   2479c:	00012a23          	sw	zero,20(sp)
   247a0:	00012c23          	sw	zero,24(sp)
   247a4:	00012e23          	sw	zero,28(sp)
   247a8:	01f57693          	andi	a3,a0,31
   247ac:	04068063          	beqz	a3,247ec <__floatsitf+0x98>
   247b0:	05f00713          	li	a4,95
   247b4:	00300793          	li	a5,3
   247b8:	00a74c63          	blt	a4,a0,247d0 <__floatsitf+0x7c>
   247bc:	02000793          	li	a5,32
   247c0:	40d787b3          	sub	a5,a5,a3
   247c4:	00f457b3          	srl	a5,s0,a5
   247c8:	00f12e23          	sw	a5,28(sp)
   247cc:	00200793          	li	a5,2
   247d0:	fff78713          	addi	a4,a5,-1
   247d4:	02010613          	addi	a2,sp,32
   247d8:	00279793          	slli	a5,a5,0x2
   247dc:	00f607b3          	add	a5,a2,a5
   247e0:	00d41433          	sll	s0,s0,a3
   247e4:	fe87a823          	sw	s0,-16(a5)
   247e8:	0500006f          	j	24838 <__floatsitf+0xe4>
   247ec:	40555693          	srai	a3,a0,0x5
   247f0:	00300713          	li	a4,3
   247f4:	40d70733          	sub	a4,a4,a3
   247f8:	02010793          	addi	a5,sp,32
   247fc:	00271713          	slli	a4,a4,0x2
   24800:	00e78733          	add	a4,a5,a4
   24804:	ff072783          	lw	a5,-16(a4)
   24808:	00200713          	li	a4,2
   2480c:	00f12e23          	sw	a5,28(sp)
   24810:	05f00793          	li	a5,95
   24814:	02a7c263          	blt	a5,a0,24838 <__floatsitf+0xe4>
   24818:	00200793          	li	a5,2
   2481c:	40d787b3          	sub	a5,a5,a3
   24820:	02010713          	addi	a4,sp,32
   24824:	00279793          	slli	a5,a5,0x2
   24828:	00f707b3          	add	a5,a4,a5
   2482c:	ff07a783          	lw	a5,-16(a5)
   24830:	00100713          	li	a4,1
   24834:	00f12c23          	sw	a5,24(sp)
   24838:	fff00693          	li	a3,-1
   2483c:	00271793          	slli	a5,a4,0x2
   24840:	01010613          	addi	a2,sp,16
   24844:	00f607b3          	add	a5,a2,a5
   24848:	0007a023          	sw	zero,0(a5)
   2484c:	fff70713          	addi	a4,a4,-1
   24850:	fed716e3          	bne	a4,a3,2483c <__floatsitf+0xe8>
   24854:	01c12783          	lw	a5,28(sp)
   24858:	01159593          	slli	a1,a1,0x11
   2485c:	80010737          	lui	a4,0x80010
   24860:	00f11623          	sh	a5,12(sp)
   24864:	00c12783          	lw	a5,12(sp)
   24868:	0115d593          	srli	a1,a1,0x11
   2486c:	fff70713          	addi	a4,a4,-1 # 8000ffff <__BSS_END__+0x7ffe9517>
   24870:	00e7f7b3          	and	a5,a5,a4
   24874:	01059593          	slli	a1,a1,0x10
   24878:	00b7e5b3          	or	a1,a5,a1
   2487c:	01012783          	lw	a5,16(sp)
   24880:	00159593          	slli	a1,a1,0x1
   24884:	01f91913          	slli	s2,s2,0x1f
   24888:	00f4a023          	sw	a5,0(s1)
   2488c:	01412783          	lw	a5,20(sp)
   24890:	02c12083          	lw	ra,44(sp)
   24894:	02812403          	lw	s0,40(sp)
   24898:	00f4a223          	sw	a5,4(s1)
   2489c:	01812783          	lw	a5,24(sp)
   248a0:	0015d593          	srli	a1,a1,0x1
   248a4:	0125e5b3          	or	a1,a1,s2
   248a8:	00f4a423          	sw	a5,8(s1)
   248ac:	00b4a623          	sw	a1,12(s1)
   248b0:	00048513          	mv	a0,s1
   248b4:	02012903          	lw	s2,32(sp)
   248b8:	02412483          	lw	s1,36(sp)
   248bc:	03010113          	addi	sp,sp,48
   248c0:	00008067          	ret
   248c4:	00012e23          	sw	zero,28(sp)
   248c8:	00012c23          	sw	zero,24(sp)
   248cc:	00012a23          	sw	zero,20(sp)
   248d0:	00012823          	sw	zero,16(sp)
   248d4:	00000913          	li	s2,0
   248d8:	f7dff06f          	j	24854 <__floatsitf+0x100>

000248dc <__extenddftf2>:
   248dc:	01465793          	srli	a5,a2,0x14
   248e0:	00c61713          	slli	a4,a2,0xc
   248e4:	7ff7f793          	andi	a5,a5,2047
   248e8:	fd010113          	addi	sp,sp,-48
   248ec:	00c75713          	srli	a4,a4,0xc
   248f0:	00178693          	addi	a3,a5,1
   248f4:	02812423          	sw	s0,40(sp)
   248f8:	02912223          	sw	s1,36(sp)
   248fc:	02112623          	sw	ra,44(sp)
   24900:	00b12823          	sw	a1,16(sp)
   24904:	00e12a23          	sw	a4,20(sp)
   24908:	00012e23          	sw	zero,28(sp)
   2490c:	00012c23          	sw	zero,24(sp)
   24910:	7fe6f693          	andi	a3,a3,2046
   24914:	00050493          	mv	s1,a0
   24918:	01f65413          	srli	s0,a2,0x1f
   2491c:	0a068063          	beqz	a3,249bc <__extenddftf2+0xe0>
   24920:	000046b7          	lui	a3,0x4
   24924:	c0068693          	addi	a3,a3,-1024 # 3c00 <register_fini-0xc474>
   24928:	0045d513          	srli	a0,a1,0x4
   2492c:	00d787b3          	add	a5,a5,a3
   24930:	00475693          	srli	a3,a4,0x4
   24934:	01c71713          	slli	a4,a4,0x1c
   24938:	00a76733          	or	a4,a4,a0
   2493c:	01c59593          	slli	a1,a1,0x1c
   24940:	00d12e23          	sw	a3,28(sp)
   24944:	00e12c23          	sw	a4,24(sp)
   24948:	00b12a23          	sw	a1,20(sp)
   2494c:	00012823          	sw	zero,16(sp)
   24950:	01c12703          	lw	a4,28(sp)
   24954:	01179793          	slli	a5,a5,0x11
   24958:	800106b7          	lui	a3,0x80010
   2495c:	00e11623          	sh	a4,12(sp)
   24960:	00c12703          	lw	a4,12(sp)
   24964:	0117d793          	srli	a5,a5,0x11
   24968:	fff68693          	addi	a3,a3,-1 # 8000ffff <__BSS_END__+0x7ffe9517>
   2496c:	00d77733          	and	a4,a4,a3
   24970:	01079793          	slli	a5,a5,0x10
   24974:	00f767b3          	or	a5,a4,a5
   24978:	01012703          	lw	a4,16(sp)
   2497c:	00179793          	slli	a5,a5,0x1
   24980:	01f41413          	slli	s0,s0,0x1f
   24984:	00e4a023          	sw	a4,0(s1)
   24988:	01412703          	lw	a4,20(sp)
   2498c:	0017d793          	srli	a5,a5,0x1
   24990:	0087e7b3          	or	a5,a5,s0
   24994:	00e4a223          	sw	a4,4(s1)
   24998:	01812703          	lw	a4,24(sp)
   2499c:	02c12083          	lw	ra,44(sp)
   249a0:	02812403          	lw	s0,40(sp)
   249a4:	00e4a423          	sw	a4,8(s1)
   249a8:	00f4a623          	sw	a5,12(s1)
   249ac:	00048513          	mv	a0,s1
   249b0:	02412483          	lw	s1,36(sp)
   249b4:	03010113          	addi	sp,sp,48
   249b8:	00008067          	ret
   249bc:	00b76533          	or	a0,a4,a1
   249c0:	0e079463          	bnez	a5,24aa8 <__extenddftf2+0x1cc>
   249c4:	f80506e3          	beqz	a0,24950 <__extenddftf2+0x74>
   249c8:	04070e63          	beqz	a4,24a24 <__extenddftf2+0x148>
   249cc:	00070513          	mv	a0,a4
   249d0:	46c000ef          	jal	ra,24e3c <__clzsi2>
   249d4:	03150613          	addi	a2,a0,49
   249d8:	40565693          	srai	a3,a2,0x5
   249dc:	01f67613          	andi	a2,a2,31
   249e0:	40d00733          	neg	a4,a3
   249e4:	04060663          	beqz	a2,24a30 <__extenddftf2+0x154>
   249e8:	00271713          	slli	a4,a4,0x2
   249ec:	01010313          	addi	t1,sp,16
   249f0:	00c70713          	addi	a4,a4,12
   249f4:	02000793          	li	a5,32
   249f8:	00e30733          	add	a4,t1,a4
   249fc:	00269813          	slli	a6,a3,0x2
   24a00:	40c787b3          	sub	a5,a5,a2
   24a04:	08e31063          	bne	t1,a4,24a84 <__extenddftf2+0x1a8>
   24a08:	02010793          	addi	a5,sp,32
   24a0c:	01078833          	add	a6,a5,a6
   24a10:	01012783          	lw	a5,16(sp)
   24a14:	fff68713          	addi	a4,a3,-1
   24a18:	00c79633          	sll	a2,a5,a2
   24a1c:	fec82823          	sw	a2,-16(a6)
   24a20:	0380006f          	j	24a58 <__extenddftf2+0x17c>
   24a24:	418000ef          	jal	ra,24e3c <__clzsi2>
   24a28:	02050513          	addi	a0,a0,32
   24a2c:	fa9ff06f          	j	249d4 <__extenddftf2+0xf8>
   24a30:	01c10613          	addi	a2,sp,28
   24a34:	00271713          	slli	a4,a4,0x2
   24a38:	00300793          	li	a5,3
   24a3c:	00e605b3          	add	a1,a2,a4
   24a40:	0005a583          	lw	a1,0(a1)
   24a44:	fff78793          	addi	a5,a5,-1
   24a48:	ffc60613          	addi	a2,a2,-4
   24a4c:	00b62223          	sw	a1,4(a2)
   24a50:	fed7d6e3          	bge	a5,a3,24a3c <__extenddftf2+0x160>
   24a54:	fff68713          	addi	a4,a3,-1
   24a58:	fff00693          	li	a3,-1
   24a5c:	00271793          	slli	a5,a4,0x2
   24a60:	01010613          	addi	a2,sp,16
   24a64:	00f607b3          	add	a5,a2,a5
   24a68:	0007a023          	sw	zero,0(a5)
   24a6c:	fff70713          	addi	a4,a4,-1
   24a70:	fed716e3          	bne	a4,a3,24a5c <__extenddftf2+0x180>
   24a74:	000047b7          	lui	a5,0x4
   24a78:	c0c78793          	addi	a5,a5,-1012 # 3c0c <register_fini-0xc468>
   24a7c:	40a787b3          	sub	a5,a5,a0
   24a80:	ed1ff06f          	j	24950 <__extenddftf2+0x74>
   24a84:	ffc72583          	lw	a1,-4(a4)
   24a88:	00072883          	lw	a7,0(a4)
   24a8c:	01070e33          	add	t3,a4,a6
   24a90:	00f5d5b3          	srl	a1,a1,a5
   24a94:	00c898b3          	sll	a7,a7,a2
   24a98:	0115e5b3          	or	a1,a1,a7
   24a9c:	00be2023          	sw	a1,0(t3)
   24aa0:	ffc70713          	addi	a4,a4,-4
   24aa4:	f61ff06f          	j	24a04 <__extenddftf2+0x128>
   24aa8:	000087b7          	lui	a5,0x8
   24aac:	02050863          	beqz	a0,24adc <__extenddftf2+0x200>
   24ab0:	01c71793          	slli	a5,a4,0x1c
   24ab4:	0045d693          	srli	a3,a1,0x4
   24ab8:	00d7e7b3          	or	a5,a5,a3
   24abc:	00f12c23          	sw	a5,24(sp)
   24ac0:	00475713          	srli	a4,a4,0x4
   24ac4:	000087b7          	lui	a5,0x8
   24ac8:	01c59593          	slli	a1,a1,0x1c
   24acc:	00f76733          	or	a4,a4,a5
   24ad0:	00b12a23          	sw	a1,20(sp)
   24ad4:	00012823          	sw	zero,16(sp)
   24ad8:	00e12e23          	sw	a4,28(sp)
   24adc:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x8075>
   24ae0:	e71ff06f          	j	24950 <__extenddftf2+0x74>

00024ae4 <__trunctfdf2>:
   24ae4:	00c52583          	lw	a1,12(a0)
   24ae8:	00852783          	lw	a5,8(a0)
   24aec:	00452703          	lw	a4,4(a0)
   24af0:	fe010113          	addi	sp,sp,-32
   24af4:	00052683          	lw	a3,0(a0)
   24af8:	00f12423          	sw	a5,8(sp)
   24afc:	00f12c23          	sw	a5,24(sp)
   24b00:	01059793          	slli	a5,a1,0x10
   24b04:	00e12223          	sw	a4,4(sp)
   24b08:	00e12a23          	sw	a4,20(sp)
   24b0c:	0107d793          	srli	a5,a5,0x10
   24b10:	00159713          	slli	a4,a1,0x1
   24b14:	00b12623          	sw	a1,12(sp)
   24b18:	00d12023          	sw	a3,0(sp)
   24b1c:	00d12823          	sw	a3,16(sp)
   24b20:	00f12e23          	sw	a5,28(sp)
   24b24:	01175713          	srli	a4,a4,0x11
   24b28:	01f5d593          	srli	a1,a1,0x1f
   24b2c:	01010313          	addi	t1,sp,16
   24b30:	01c10613          	addi	a2,sp,28
   24b34:	00062783          	lw	a5,0(a2)
   24b38:	ffc62683          	lw	a3,-4(a2)
   24b3c:	ffc60613          	addi	a2,a2,-4
   24b40:	00379793          	slli	a5,a5,0x3
   24b44:	01d6d693          	srli	a3,a3,0x1d
   24b48:	00d7e7b3          	or	a5,a5,a3
   24b4c:	00f62223          	sw	a5,4(a2)
   24b50:	fec312e3          	bne	t1,a2,24b34 <__trunctfdf2+0x50>
   24b54:	01012683          	lw	a3,16(sp)
   24b58:	00170793          	addi	a5,a4,1
   24b5c:	00369513          	slli	a0,a3,0x3
   24b60:	000086b7          	lui	a3,0x8
   24b64:	ffe68693          	addi	a3,a3,-2 # 7ffe <register_fini-0x8076>
   24b68:	00a12823          	sw	a0,16(sp)
   24b6c:	00d7f7b3          	and	a5,a5,a3
   24b70:	1a078a63          	beqz	a5,24d24 <__trunctfdf2+0x240>
   24b74:	ffffc7b7          	lui	a5,0xffffc
   24b78:	40078793          	addi	a5,a5,1024 # ffffc400 <__BSS_END__+0xfffd5918>
   24b7c:	00f70733          	add	a4,a4,a5
   24b80:	7fe00793          	li	a5,2046
   24b84:	1ee7cc63          	blt	a5,a4,24d7c <__trunctfdf2+0x298>
   24b88:	06e05863          	blez	a4,24bf8 <__trunctfdf2+0x114>
   24b8c:	01812803          	lw	a6,24(sp)
   24b90:	01c12603          	lw	a2,28(sp)
   24b94:	01412783          	lw	a5,20(sp)
   24b98:	01c85693          	srli	a3,a6,0x1c
   24b9c:	00461613          	slli	a2,a2,0x4
   24ba0:	00d66633          	or	a2,a2,a3
   24ba4:	00479693          	slli	a3,a5,0x4
   24ba8:	00a6e6b3          	or	a3,a3,a0
   24bac:	01c7d793          	srli	a5,a5,0x1c
   24bb0:	00481813          	slli	a6,a6,0x4
   24bb4:	00d036b3          	snez	a3,a3
   24bb8:	0107e7b3          	or	a5,a5,a6
   24bbc:	00f6e6b3          	or	a3,a3,a5
   24bc0:	00c12a23          	sw	a2,20(sp)
   24bc4:	00d12823          	sw	a3,16(sp)
   24bc8:	01012683          	lw	a3,16(sp)
   24bcc:	01412783          	lw	a5,20(sp)
   24bd0:	0076f613          	andi	a2,a3,7
   24bd4:	1a060a63          	beqz	a2,24d88 <__trunctfdf2+0x2a4>
   24bd8:	00f6f613          	andi	a2,a3,15
   24bdc:	00400513          	li	a0,4
   24be0:	1aa60463          	beq	a2,a0,24d88 <__trunctfdf2+0x2a4>
   24be4:	00468613          	addi	a2,a3,4
   24be8:	00d636b3          	sltu	a3,a2,a3
   24bec:	00d787b3          	add	a5,a5,a3
   24bf0:	00060693          	mv	a3,a2
   24bf4:	1940006f          	j	24d88 <__trunctfdf2+0x2a4>
   24bf8:	fcc00793          	li	a5,-52
   24bfc:	00f75c63          	bge	a4,a5,24c14 <__trunctfdf2+0x130>
   24c00:	00012a23          	sw	zero,20(sp)
   24c04:	00100793          	li	a5,1
   24c08:	00f12823          	sw	a5,16(sp)
   24c0c:	00000713          	li	a4,0
   24c10:	fb9ff06f          	j	24bc8 <__trunctfdf2+0xe4>
   24c14:	01c12783          	lw	a5,28(sp)
   24c18:	000806b7          	lui	a3,0x80
   24c1c:	00000e13          	li	t3,0
   24c20:	00d7e7b3          	or	a5,a5,a3
   24c24:	00f12e23          	sw	a5,28(sp)
   24c28:	03d00793          	li	a5,61
   24c2c:	40e78733          	sub	a4,a5,a4
   24c30:	40575513          	srai	a0,a4,0x5
   24c34:	00030693          	mv	a3,t1
   24c38:	01f77713          	andi	a4,a4,31
   24c3c:	00000793          	li	a5,0
   24c40:	0006a803          	lw	a6,0(a3) # 80000 <__BSS_END__+0x59518>
   24c44:	00178793          	addi	a5,a5,1
   24c48:	00468693          	addi	a3,a3,4
   24c4c:	010e6e33          	or	t3,t3,a6
   24c50:	fef518e3          	bne	a0,a5,24c40 <__trunctfdf2+0x15c>
   24c54:	00251693          	slli	a3,a0,0x2
   24c58:	04071663          	bnez	a4,24ca4 <__trunctfdf2+0x1c0>
   24c5c:	00300793          	li	a5,3
   24c60:	40a78533          	sub	a0,a5,a0
   24c64:	00d607b3          	add	a5,a2,a3
   24c68:	0007a783          	lw	a5,0(a5)
   24c6c:	00170713          	addi	a4,a4,1
   24c70:	00460613          	addi	a2,a2,4
   24c74:	fef62e23          	sw	a5,-4(a2)
   24c78:	fee556e3          	bge	a0,a4,24c64 <__trunctfdf2+0x180>
   24c7c:	00400693          	li	a3,4
   24c80:	00271793          	slli	a5,a4,0x2
   24c84:	00f307b3          	add	a5,t1,a5
   24c88:	0007a023          	sw	zero,0(a5)
   24c8c:	00170713          	addi	a4,a4,1
   24c90:	fed718e3          	bne	a4,a3,24c80 <__trunctfdf2+0x19c>
   24c94:	01012703          	lw	a4,16(sp)
   24c98:	01c037b3          	snez	a5,t3
   24c9c:	00f767b3          	or	a5,a4,a5
   24ca0:	f69ff06f          	j	24c08 <__trunctfdf2+0x124>
   24ca4:	02010793          	addi	a5,sp,32
   24ca8:	00d787b3          	add	a5,a5,a3
   24cac:	ff07a783          	lw	a5,-16(a5)
   24cb0:	02000893          	li	a7,32
   24cb4:	40e888b3          	sub	a7,a7,a4
   24cb8:	011797b3          	sll	a5,a5,a7
   24cbc:	00fe6e33          	or	t3,t3,a5
   24cc0:	00300793          	li	a5,3
   24cc4:	00d306b3          	add	a3,t1,a3
   24cc8:	00000813          	li	a6,0
   24ccc:	40a787b3          	sub	a5,a5,a0
   24cd0:	00468693          	addi	a3,a3,4
   24cd4:	02f84463          	blt	a6,a5,24cfc <__trunctfdf2+0x218>
   24cd8:	02010693          	addi	a3,sp,32
   24cdc:	00279793          	slli	a5,a5,0x2
   24ce0:	00f687b3          	add	a5,a3,a5
   24ce4:	01c12683          	lw	a3,28(sp)
   24ce8:	00e6d733          	srl	a4,a3,a4
   24cec:	fee7a823          	sw	a4,-16(a5)
   24cf0:	00400713          	li	a4,4
   24cf4:	40a70733          	sub	a4,a4,a0
   24cf8:	f85ff06f          	j	24c7c <__trunctfdf2+0x198>
   24cfc:	ffc6a603          	lw	a2,-4(a3)
   24d00:	0006af03          	lw	t5,0(a3)
   24d04:	00281e93          	slli	t4,a6,0x2
   24d08:	00e65633          	srl	a2,a2,a4
   24d0c:	011f1f33          	sll	t5,t5,a7
   24d10:	01d30eb3          	add	t4,t1,t4
   24d14:	01e66633          	or	a2,a2,t5
   24d18:	00cea023          	sw	a2,0(t4)
   24d1c:	00180813          	addi	a6,a6,1
   24d20:	fb1ff06f          	j	24cd0 <__trunctfdf2+0x1ec>
   24d24:	01412603          	lw	a2,20(sp)
   24d28:	01812783          	lw	a5,24(sp)
   24d2c:	01c12803          	lw	a6,28(sp)
   24d30:	00f666b3          	or	a3,a2,a5
   24d34:	0106e6b3          	or	a3,a3,a6
   24d38:	00a6e6b3          	or	a3,a3,a0
   24d3c:	00071863          	bnez	a4,24d4c <__trunctfdf2+0x268>
   24d40:	00d036b3          	snez	a3,a3
   24d44:	00000793          	li	a5,0
   24d48:	e89ff06f          	j	24bd0 <__trunctfdf2+0xec>
   24d4c:	0a068c63          	beqz	a3,24e04 <__trunctfdf2+0x320>
   24d50:	01c65693          	srli	a3,a2,0x1c
   24d54:	00481813          	slli	a6,a6,0x4
   24d58:	00479613          	slli	a2,a5,0x4
   24d5c:	01c7d793          	srli	a5,a5,0x1c
   24d60:	00400737          	lui	a4,0x400
   24d64:	00c6e6b3          	or	a3,a3,a2
   24d68:	0107e7b3          	or	a5,a5,a6
   24d6c:	00e7e7b3          	or	a5,a5,a4
   24d70:	ff86f693          	andi	a3,a3,-8
   24d74:	7ff00713          	li	a4,2047
   24d78:	e59ff06f          	j	24bd0 <__trunctfdf2+0xec>
   24d7c:	00000793          	li	a5,0
   24d80:	00000693          	li	a3,0
   24d84:	7ff00713          	li	a4,2047
   24d88:	00879613          	slli	a2,a5,0x8
   24d8c:	00065e63          	bgez	a2,24da8 <__trunctfdf2+0x2c4>
   24d90:	00170713          	addi	a4,a4,1 # 400001 <__BSS_END__+0x3d9519>
   24d94:	7ff00613          	li	a2,2047
   24d98:	06c70a63          	beq	a4,a2,24e0c <__trunctfdf2+0x328>
   24d9c:	ff800637          	lui	a2,0xff800
   24da0:	fff60613          	addi	a2,a2,-1 # ff7fffff <__BSS_END__+0xff7d9517>
   24da4:	00c7f7b3          	and	a5,a5,a2
   24da8:	01d79613          	slli	a2,a5,0x1d
   24dac:	0036d693          	srli	a3,a3,0x3
   24db0:	00d666b3          	or	a3,a2,a3
   24db4:	7ff00613          	li	a2,2047
   24db8:	0037d793          	srli	a5,a5,0x3
   24dbc:	00c71e63          	bne	a4,a2,24dd8 <__trunctfdf2+0x2f4>
   24dc0:	00f6e6b3          	or	a3,a3,a5
   24dc4:	00000793          	li	a5,0
   24dc8:	00068863          	beqz	a3,24dd8 <__trunctfdf2+0x2f4>
   24dcc:	000807b7          	lui	a5,0x80
   24dd0:	00000693          	li	a3,0
   24dd4:	00000593          	li	a1,0
   24dd8:	00c79793          	slli	a5,a5,0xc
   24ddc:	7ff77713          	andi	a4,a4,2047
   24de0:	01471713          	slli	a4,a4,0x14
   24de4:	00c7d793          	srli	a5,a5,0xc
   24de8:	01f59593          	slli	a1,a1,0x1f
   24dec:	00e7e7b3          	or	a5,a5,a4
   24df0:	00b7e733          	or	a4,a5,a1
   24df4:	00068513          	mv	a0,a3
   24df8:	00070593          	mv	a1,a4
   24dfc:	02010113          	addi	sp,sp,32
   24e00:	00008067          	ret
   24e04:	00000793          	li	a5,0
   24e08:	f7dff06f          	j	24d84 <__trunctfdf2+0x2a0>
   24e0c:	00000793          	li	a5,0
   24e10:	00000693          	li	a3,0
   24e14:	f95ff06f          	j	24da8 <__trunctfdf2+0x2c4>

00024e18 <__mulsi3>:
   24e18:	00050613          	mv	a2,a0
   24e1c:	00000513          	li	a0,0
   24e20:	0015f693          	andi	a3,a1,1
   24e24:	00068463          	beqz	a3,24e2c <__mulsi3+0x14>
   24e28:	00c50533          	add	a0,a0,a2
   24e2c:	0015d593          	srli	a1,a1,0x1
   24e30:	00161613          	slli	a2,a2,0x1
   24e34:	fe0596e3          	bnez	a1,24e20 <__mulsi3+0x8>
   24e38:	00008067          	ret

00024e3c <__clzsi2>:
   24e3c:	000107b7          	lui	a5,0x10
   24e40:	02f57a63          	bgeu	a0,a5,24e74 <__clzsi2+0x38>
   24e44:	0ff00793          	li	a5,255
   24e48:	00a7b7b3          	sltu	a5,a5,a0
   24e4c:	00379793          	slli	a5,a5,0x3
   24e50:	02000713          	li	a4,32
   24e54:	40f70733          	sub	a4,a4,a5
   24e58:	00f557b3          	srl	a5,a0,a5
   24e5c:	00001517          	auipc	a0,0x1
   24e60:	e5050513          	addi	a0,a0,-432 # 25cac <__clz_tab>
   24e64:	00f507b3          	add	a5,a0,a5
   24e68:	0007c503          	lbu	a0,0(a5) # 10000 <register_fini-0x74>
   24e6c:	40a70533          	sub	a0,a4,a0
   24e70:	00008067          	ret
   24e74:	01000737          	lui	a4,0x1000
   24e78:	01000793          	li	a5,16
   24e7c:	fce56ae3          	bltu	a0,a4,24e50 <__clzsi2+0x14>
   24e80:	01800793          	li	a5,24
   24e84:	fcdff06f          	j	24e50 <__clzsi2+0x14>
