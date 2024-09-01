
test.o:     file format elf32-littleriscv


Disassembly of section .text:

00010054 <division>:
   10054:	fd010113          	addi	sp,sp,-48
   10058:	02812623          	sw	s0,44(sp)
   1005c:	03010413          	addi	s0,sp,48
   10060:	fca42e23          	sw	a0,-36(s0)
   10064:	fcb42c23          	sw	a1,-40(s0)
   10068:	fe042623          	sw	zero,-20(s0)
   1006c:	0200006f          	j	1008c <division+0x38>
   10070:	fdc42703          	lw	a4,-36(s0)
   10074:	fd842783          	lw	a5,-40(s0)
   10078:	40f707b3          	sub	a5,a4,a5
   1007c:	fcf42e23          	sw	a5,-36(s0)
   10080:	fec42783          	lw	a5,-20(s0)
   10084:	00178793          	addi	a5,a5,1
   10088:	fef42623          	sw	a5,-20(s0)
   1008c:	fdc42703          	lw	a4,-36(s0)
   10090:	fd842783          	lw	a5,-40(s0)
   10094:	fcf75ee3          	bge	a4,a5,10070 <division+0x1c>
   10098:	fec42783          	lw	a5,-20(s0)
   1009c:	00078513          	mv	a0,a5
   100a0:	02c12403          	lw	s0,44(sp)
   100a4:	03010113          	addi	sp,sp,48
   100a8:	00008067          	ret

000100ac <multiply>:
   100ac:	fd010113          	addi	sp,sp,-48
   100b0:	02112623          	sw	ra,44(sp)
   100b4:	02812423          	sw	s0,40(sp)
   100b8:	03010413          	addi	s0,sp,48
   100bc:	fca42e23          	sw	a0,-36(s0)
   100c0:	fcb42c23          	sw	a1,-40(s0)
   100c4:	fe042623          	sw	zero,-20(s0)
   100c8:	fd842783          	lw	a5,-40(s0)
   100cc:	00079663          	bnez	a5,100d8 <multiply+0x2c>
   100d0:	00000793          	li	a5,0
   100d4:	0300006f          	j	10104 <multiply+0x58>
   100d8:	fd842783          	lw	a5,-40(s0)
   100dc:	02f05463          	blez	a5,10104 <multiply+0x58>
   100e0:	fd842783          	lw	a5,-40(s0)
   100e4:	fff78793          	addi	a5,a5,-1
   100e8:	00078593          	mv	a1,a5
   100ec:	fdc42503          	lw	a0,-36(s0)
   100f0:	fbdff0ef          	jal	ra,100ac <multiply>
   100f4:	00050713          	mv	a4,a0
   100f8:	fdc42783          	lw	a5,-36(s0)
   100fc:	00f707b3          	add	a5,a4,a5
   10100:	0040006f          	j	10104 <multiply+0x58>
   10104:	00078513          	mv	a0,a5
   10108:	02c12083          	lw	ra,44(sp)
   1010c:	02812403          	lw	s0,40(sp)
   10110:	03010113          	addi	sp,sp,48
   10114:	00008067          	ret

00010118 <main>:
   10118:	f9010113          	addi	sp,sp,-112
   1011c:	06112623          	sw	ra,108(sp)
   10120:	06812423          	sw	s0,104(sp)
   10124:	07010413          	addi	s0,sp,112
   10128:	06400793          	li	a5,100
   1012c:	fef42023          	sw	a5,-32(s0)
   10130:	00100793          	li	a5,1
   10134:	fcf42e23          	sw	a5,-36(s0)
   10138:	06400593          	li	a1,100
   1013c:	fe042503          	lw	a0,-32(s0)
   10140:	f15ff0ef          	jal	ra,10054 <division>
   10144:	fca42c23          	sw	a0,-40(s0)
   10148:	0ff00793          	li	a5,255
   1014c:	fcf42a23          	sw	a5,-44(s0)
   10150:	fd442783          	lw	a5,-44(s0)
   10154:	00fdfdb3          	and	s11,s11,a5
   10158:	000d8793          	mv	a5,s11
   1015c:	fcf42823          	sw	a5,-48(s0)
   10160:	00100793          	li	a5,1
   10164:	fcf42623          	sw	a5,-52(s0)
   10168:	fcc42783          	lw	a5,-52(s0)
   1016c:	00879793          	slli	a5,a5,0x8
   10170:	fcf42423          	sw	a5,-56(s0)
   10174:	eff00793          	li	a5,-257
   10178:	fcf42223          	sw	a5,-60(s0)
   1017c:	fc442783          	lw	a5,-60(s0)
   10180:	fc842703          	lw	a4,-56(s0)
   10184:	00fdfdb3          	and	s11,s11,a5
   10188:	00ededb3          	or	s11,s11,a4
   1018c:	fe042623          	sw	zero,-20(s0)
   10190:	0100006f          	j	101a0 <main+0x88>
   10194:	fec42783          	lw	a5,-20(s0)
   10198:	00178793          	addi	a5,a5,1
   1019c:	fef42623          	sw	a5,-20(s0)
   101a0:	fec42703          	lw	a4,-20(s0)
   101a4:	00b00793          	li	a5,11
   101a8:	fee7d6e3          	bge	a5,a4,10194 <main+0x7c>
   101ac:	fc442783          	lw	a5,-60(s0)
   101b0:	00fdfdb3          	and	s11,s11,a5
   101b4:	000ded93          	ori	s11,s11,0
   101b8:	00add793          	srli	a5,s11,0xa
   101bc:	fcf42023          	sw	a5,-64(s0)
   101c0:	fc042783          	lw	a5,-64(s0)
   101c4:	0017f793          	andi	a5,a5,1
   101c8:	fcf42023          	sw	a5,-64(s0)
   101cc:	fe042423          	sw	zero,-24(s0)
   101d0:	fa042e23          	sw	zero,-68(s0)
   101d4:	fa042c23          	sw	zero,-72(s0)
   101d8:	fc042703          	lw	a4,-64(s0)
   101dc:	00100793          	li	a5,1
   101e0:	02f71463          	bne	a4,a5,10208 <main+0xf0>
   101e4:	fe842783          	lw	a5,-24(s0)
   101e8:	00178793          	addi	a5,a5,1
   101ec:	fef42423          	sw	a5,-24(s0)
   101f0:	000ded93          	ori	s11,s11,0
   101f4:	00add793          	srli	a5,s11,0xa
   101f8:	fcf42023          	sw	a5,-64(s0)
   101fc:	fc042783          	lw	a5,-64(s0)
   10200:	0017f793          	andi	a5,a5,1
   10204:	fcf42023          	sw	a5,-64(s0)
   10208:	fd842583          	lw	a1,-40(s0)
   1020c:	fe842503          	lw	a0,-24(s0)
   10210:	e45ff0ef          	jal	ra,10054 <division>
   10214:	faa42c23          	sw	a0,-72(s0)
   10218:	fb842583          	lw	a1,-72(s0)
   1021c:	6b800513          	li	a0,1720
   10220:	e8dff0ef          	jal	ra,100ac <multiply>
   10224:	00050793          	mv	a5,a0
   10228:	3e800593          	li	a1,1000
   1022c:	00078513          	mv	a0,a5
   10230:	e25ff0ef          	jal	ra,10054 <division>
   10234:	faa42e23          	sw	a0,-68(s0)
   10238:	00100793          	li	a5,1
   1023c:	fcf42623          	sw	a5,-52(s0)
   10240:	fcc42783          	lw	a5,-52(s0)
   10244:	00979793          	slli	a5,a5,0x9
   10248:	fcf42423          	sw	a5,-56(s0)
   1024c:	dff00793          	li	a5,-513
   10250:	faf42a23          	sw	a5,-76(s0)
   10254:	fb442783          	lw	a5,-76(s0)
   10258:	fc842703          	lw	a4,-56(s0)
   1025c:	00fdfdb3          	and	s11,s11,a5
   10260:	00ededb3          	or	s11,s11,a4
   10264:	fe042623          	sw	zero,-20(s0)
   10268:	0100006f          	j	10278 <main+0x160>
   1026c:	fec42783          	lw	a5,-20(s0)
   10270:	00178793          	addi	a5,a5,1
   10274:	fef42623          	sw	a5,-20(s0)
   10278:	fec42703          	lw	a4,-20(s0)
   1027c:	00b00793          	li	a5,11
   10280:	fee7d6e3          	bge	a5,a4,1026c <main+0x154>
   10284:	fb442783          	lw	a5,-76(s0)
   10288:	00fdfdb3          	and	s11,s11,a5
   1028c:	000ded93          	ori	s11,s11,0
   10290:	00bdd793          	srli	a5,s11,0xb
   10294:	faf42823          	sw	a5,-80(s0)
   10298:	fb042783          	lw	a5,-80(s0)
   1029c:	0017f793          	andi	a5,a5,1
   102a0:	faf42823          	sw	a5,-80(s0)
   102a4:	fe042223          	sw	zero,-28(s0)
   102a8:	fa042623          	sw	zero,-84(s0)
   102ac:	fa042423          	sw	zero,-88(s0)
   102b0:	fb042703          	lw	a4,-80(s0)
   102b4:	00100793          	li	a5,1
   102b8:	02f71463          	bne	a4,a5,102e0 <main+0x1c8>
   102bc:	fe442783          	lw	a5,-28(s0)
   102c0:	00178793          	addi	a5,a5,1
   102c4:	fef42223          	sw	a5,-28(s0)
   102c8:	000ded93          	ori	s11,s11,0
   102cc:	00bdd793          	srli	a5,s11,0xb
   102d0:	faf42823          	sw	a5,-80(s0)
   102d4:	fb042783          	lw	a5,-80(s0)
   102d8:	0017f793          	andi	a5,a5,1
   102dc:	faf42823          	sw	a5,-80(s0)
   102e0:	fd842583          	lw	a1,-40(s0)
   102e4:	fe442503          	lw	a0,-28(s0)
   102e8:	d6dff0ef          	jal	ra,10054 <division>
   102ec:	faa42423          	sw	a0,-88(s0)
   102f0:	fa842583          	lw	a1,-88(s0)
   102f4:	6b800513          	li	a0,1720
   102f8:	db5ff0ef          	jal	ra,100ac <multiply>
   102fc:	00050793          	mv	a5,a0
   10300:	3e800593          	li	a1,1000
   10304:	00078513          	mv	a0,a5
   10308:	d4dff0ef          	jal	ra,10054 <division>
   1030c:	faa42623          	sw	a0,-84(s0)
   10310:	fffff7b7          	lui	a5,0xfffff
   10314:	fff78793          	addi	a5,a5,-1 # ffffefff <__global_pointer$+0xfffed43b>
   10318:	faf42223          	sw	a5,-92(s0)
   1031c:	ffffe7b7          	lui	a5,0xffffe
   10320:	fff78793          	addi	a5,a5,-1 # ffffdfff <__global_pointer$+0xfffec43b>
   10324:	faf42023          	sw	a5,-96(s0)
   10328:	fbc42703          	lw	a4,-68(s0)
   1032c:	fac42783          	lw	a5,-84(s0)
   10330:	40f707b3          	sub	a5,a4,a5
   10334:	fdc42703          	lw	a4,-36(s0)
   10338:	04e7c663          	blt	a5,a4,10384 <main+0x26c>
   1033c:	00100793          	li	a5,1
   10340:	f8f42e23          	sw	a5,-100(s0)
   10344:	f9c42783          	lw	a5,-100(s0)
   10348:	00c79793          	slli	a5,a5,0xc
   1034c:	f8f42c23          	sw	a5,-104(s0)
   10350:	fa442783          	lw	a5,-92(s0)
   10354:	f9842703          	lw	a4,-104(s0)
   10358:	00fdfdb3          	and	s11,s11,a5
   1035c:	00ededb3          	or	s11,s11,a4
   10360:	00100793          	li	a5,1
   10364:	f8f42a23          	sw	a5,-108(s0)
   10368:	f9442783          	lw	a5,-108(s0)
   1036c:	00d79793          	slli	a5,a5,0xd
   10370:	f8f42823          	sw	a5,-112(s0)
   10374:	fa042783          	lw	a5,-96(s0)
   10378:	f9042703          	lw	a4,-112(s0)
   1037c:	00fdfdb3          	and	s11,s11,a5
   10380:	00ededb3          	or	s11,s11,a4
   10384:	fa442783          	lw	a5,-92(s0)
   10388:	00fdfdb3          	and	s11,s11,a5
   1038c:	fa042783          	lw	a5,-96(s0)
   10390:	00fdfdb3          	and	s11,s11,a5
   10394:	fe042623          	sw	zero,-20(s0)
   10398:	0100006f          	j	103a8 <main+0x290>
   1039c:	fec42783          	lw	a5,-20(s0)
   103a0:	00178793          	addi	a5,a5,1
   103a4:	fef42623          	sw	a5,-20(s0)
   103a8:	fd042583          	lw	a1,-48(s0)
   103ac:	3e800513          	li	a0,1000
   103b0:	cfdff0ef          	jal	ra,100ac <multiply>
   103b4:	00050713          	mv	a4,a0
   103b8:	fec42783          	lw	a5,-20(s0)
   103bc:	fef750e3          	bge	a4,a5,1039c <main+0x284>
   103c0:	da1ff06f          	j	10160 <main+0x48>
