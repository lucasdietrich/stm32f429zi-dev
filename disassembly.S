
/home/lucas/zephyrproject/stm32f429zi-dev/build/zephyr/zephyr.elf:     file format elf32-littlearm


Disassembly of section rom_start:

08000000 <_vector_table>:
 8000000:	80 0b 00 20 85 19 00 08 35 35 00 08 59 19 00 08     ... ....55..Y...
 8000010:	59 19 00 08 59 19 00 08 59 19 00 08 00 00 00 00     Y...Y...Y.......
	...
 800002c:	f1 13 00 08 59 19 00 08 00 00 00 00 9d 13 00 08     ....Y...........
 800003c:	09 23 00 08                                         .#..

08000040 <_irq_vector_table>:
 8000040:	a1 14 00 08 a1 14 00 08 a1 14 00 08 a1 14 00 08     ................
 8000050:	a1 14 00 08 a1 14 00 08 a1 14 00 08 a1 14 00 08     ................
 8000060:	a1 14 00 08 a1 14 00 08 a1 14 00 08 a1 14 00 08     ................
 8000070:	a1 14 00 08 a1 14 00 08 a1 14 00 08 a1 14 00 08     ................
 8000080:	a1 14 00 08 a1 14 00 08 a1 14 00 08 a1 14 00 08     ................
 8000090:	a1 14 00 08 a1 14 00 08 a1 14 00 08 a1 14 00 08     ................
 80000a0:	a1 14 00 08 a1 14 00 08 a1 14 00 08 a1 14 00 08     ................
 80000b0:	a1 14 00 08 a1 14 00 08 a1 14 00 08 a1 14 00 08     ................
 80000c0:	a1 14 00 08 a1 14 00 08 a1 14 00 08 a1 14 00 08     ................
 80000d0:	a1 14 00 08 a1 14 00 08 a1 14 00 08 a1 14 00 08     ................
 80000e0:	a1 14 00 08 a1 14 00 08 a1 14 00 08 a1 14 00 08     ................
 80000f0:	a1 14 00 08 a1 14 00 08 a1 14 00 08 a1 14 00 08     ................
 8000100:	a1 14 00 08 a1 14 00 08 a1 14 00 08 a1 14 00 08     ................
 8000110:	a1 14 00 08 a1 14 00 08 a1 14 00 08 a1 14 00 08     ................
 8000120:	a1 14 00 08 a1 14 00 08 a1 14 00 08 a1 14 00 08     ................
 8000130:	a1 14 00 08 a1 14 00 08 a1 14 00 08 a1 14 00 08     ................
 8000140:	a1 14 00 08 a1 14 00 08 a1 14 00 08 a1 14 00 08     ................
 8000150:	a1 14 00 08 a1 14 00 08 a1 14 00 08 a1 14 00 08     ................
 8000160:	a1 14 00 08 a1 14 00 08 a1 14 00 08 a1 14 00 08     ................
 8000170:	a1 14 00 08 a1 14 00 08 a1 14 00 08 a1 14 00 08     ................
 8000180:	a1 14 00 08 a1 14 00 08 a1 14 00 08 a1 14 00 08     ................
 8000190:	a1 14 00 08 a1 14 00 08 a1 14 00 08 a1 14 00 08     ................
 80001a0:	a1 14 00 08 a1 14 00 08 a1 14 00 08                 ............

Disassembly of section text:

080001ac <__aeabi_uldivmod>:
 80001ac:	b953      	cbnz	r3, 80001c4 <__aeabi_uldivmod+0x18>
 80001ae:	b94a      	cbnz	r2, 80001c4 <__aeabi_uldivmod+0x18>
 80001b0:	2900      	cmp	r1, #0
 80001b2:	bf08      	it	eq
 80001b4:	2800      	cmpeq	r0, #0
 80001b6:	bf1c      	itt	ne
 80001b8:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
 80001bc:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
 80001c0:	f000 b80c 	b.w	80001dc <__aeabi_idiv0>
 80001c4:	f1ad 0c08 	sub.w	ip, sp, #8
 80001c8:	e96d ce04 	strd	ip, lr, [sp, #-16]!
 80001cc:	f000 f808 	bl	80001e0 <__udivmoddi4>
 80001d0:	f8dd e004 	ldr.w	lr, [sp, #4]
 80001d4:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80001d8:	b004      	add	sp, #16
 80001da:	4770      	bx	lr

080001dc <__aeabi_idiv0>:
 80001dc:	4770      	bx	lr
 80001de:	bf00      	nop

080001e0 <__udivmoddi4>:
 80001e0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80001e4:	4607      	mov	r7, r0
 80001e6:	468c      	mov	ip, r1
 80001e8:	4608      	mov	r0, r1
 80001ea:	9e09      	ldr	r6, [sp, #36]	; 0x24
 80001ec:	4615      	mov	r5, r2
 80001ee:	463c      	mov	r4, r7
 80001f0:	4619      	mov	r1, r3
 80001f2:	2b00      	cmp	r3, #0
 80001f4:	f040 80c6 	bne.w	8000384 <__udivmoddi4+0x1a4>
 80001f8:	4282      	cmp	r2, r0
 80001fa:	fab2 f782 	clz	r7, r2
 80001fe:	d946      	bls.n	800028e <__udivmoddi4+0xae>
 8000200:	b14f      	cbz	r7, 8000216 <__udivmoddi4+0x36>
 8000202:	f1c7 0e20 	rsb	lr, r7, #32
 8000206:	fa24 fe0e 	lsr.w	lr, r4, lr
 800020a:	fa00 f307 	lsl.w	r3, r0, r7
 800020e:	40bd      	lsls	r5, r7
 8000210:	ea4e 0c03 	orr.w	ip, lr, r3
 8000214:	40bc      	lsls	r4, r7
 8000216:	ea4f 4815 	mov.w	r8, r5, lsr #16
 800021a:	fa1f fe85 	uxth.w	lr, r5
 800021e:	fbbc f9f8 	udiv	r9, ip, r8
 8000222:	0c22      	lsrs	r2, r4, #16
 8000224:	fb08 c319 	mls	r3, r8, r9, ip
 8000228:	fb09 fa0e 	mul.w	sl, r9, lr
 800022c:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
 8000230:	459a      	cmp	sl, r3
 8000232:	d928      	bls.n	8000286 <__udivmoddi4+0xa6>
 8000234:	18eb      	adds	r3, r5, r3
 8000236:	f109 30ff 	add.w	r0, r9, #4294967295	; 0xffffffff
 800023a:	d204      	bcs.n	8000246 <__udivmoddi4+0x66>
 800023c:	459a      	cmp	sl, r3
 800023e:	d902      	bls.n	8000246 <__udivmoddi4+0x66>
 8000240:	f1a9 0002 	sub.w	r0, r9, #2
 8000244:	442b      	add	r3, r5
 8000246:	eba3 030a 	sub.w	r3, r3, sl
 800024a:	b2a4      	uxth	r4, r4
 800024c:	fbb3 f2f8 	udiv	r2, r3, r8
 8000250:	fb08 3312 	mls	r3, r8, r2, r3
 8000254:	fb02 fe0e 	mul.w	lr, r2, lr
 8000258:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
 800025c:	45a6      	cmp	lr, r4
 800025e:	d914      	bls.n	800028a <__udivmoddi4+0xaa>
 8000260:	192c      	adds	r4, r5, r4
 8000262:	f102 33ff 	add.w	r3, r2, #4294967295	; 0xffffffff
 8000266:	d203      	bcs.n	8000270 <__udivmoddi4+0x90>
 8000268:	45a6      	cmp	lr, r4
 800026a:	d901      	bls.n	8000270 <__udivmoddi4+0x90>
 800026c:	1e93      	subs	r3, r2, #2
 800026e:	442c      	add	r4, r5
 8000270:	eba4 040e 	sub.w	r4, r4, lr
 8000274:	ea43 4000 	orr.w	r0, r3, r0, lsl #16
 8000278:	b11e      	cbz	r6, 8000282 <__udivmoddi4+0xa2>
 800027a:	40fc      	lsrs	r4, r7
 800027c:	2300      	movs	r3, #0
 800027e:	6034      	str	r4, [r6, #0]
 8000280:	6073      	str	r3, [r6, #4]
 8000282:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8000286:	4648      	mov	r0, r9
 8000288:	e7dd      	b.n	8000246 <__udivmoddi4+0x66>
 800028a:	4613      	mov	r3, r2
 800028c:	e7f0      	b.n	8000270 <__udivmoddi4+0x90>
 800028e:	b902      	cbnz	r2, 8000292 <__udivmoddi4+0xb2>
 8000290:	deff      	udf	#255	; 0xff
 8000292:	bb87      	cbnz	r7, 80002f6 <__udivmoddi4+0x116>
 8000294:	1a83      	subs	r3, r0, r2
 8000296:	2101      	movs	r1, #1
 8000298:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 800029c:	b2aa      	uxth	r2, r5
 800029e:	fbb3 fcfe 	udiv	ip, r3, lr
 80002a2:	0c20      	lsrs	r0, r4, #16
 80002a4:	fb0e 331c 	mls	r3, lr, ip, r3
 80002a8:	fb0c f802 	mul.w	r8, ip, r2
 80002ac:	ea40 4303 	orr.w	r3, r0, r3, lsl #16
 80002b0:	4598      	cmp	r8, r3
 80002b2:	d963      	bls.n	800037c <__udivmoddi4+0x19c>
 80002b4:	18eb      	adds	r3, r5, r3
 80002b6:	f10c 30ff 	add.w	r0, ip, #4294967295	; 0xffffffff
 80002ba:	d204      	bcs.n	80002c6 <__udivmoddi4+0xe6>
 80002bc:	4598      	cmp	r8, r3
 80002be:	d902      	bls.n	80002c6 <__udivmoddi4+0xe6>
 80002c0:	f1ac 0002 	sub.w	r0, ip, #2
 80002c4:	442b      	add	r3, r5
 80002c6:	eba3 0308 	sub.w	r3, r3, r8
 80002ca:	b2a4      	uxth	r4, r4
 80002cc:	fbb3 fcfe 	udiv	ip, r3, lr
 80002d0:	fb0e 331c 	mls	r3, lr, ip, r3
 80002d4:	fb0c f202 	mul.w	r2, ip, r2
 80002d8:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
 80002dc:	42a2      	cmp	r2, r4
 80002de:	d94f      	bls.n	8000380 <__udivmoddi4+0x1a0>
 80002e0:	192c      	adds	r4, r5, r4
 80002e2:	f10c 33ff 	add.w	r3, ip, #4294967295	; 0xffffffff
 80002e6:	d204      	bcs.n	80002f2 <__udivmoddi4+0x112>
 80002e8:	42a2      	cmp	r2, r4
 80002ea:	d902      	bls.n	80002f2 <__udivmoddi4+0x112>
 80002ec:	f1ac 0302 	sub.w	r3, ip, #2
 80002f0:	442c      	add	r4, r5
 80002f2:	1aa4      	subs	r4, r4, r2
 80002f4:	e7be      	b.n	8000274 <__udivmoddi4+0x94>
 80002f6:	f1c7 0c20 	rsb	ip, r7, #32
 80002fa:	fa20 f80c 	lsr.w	r8, r0, ip
 80002fe:	fa00 f307 	lsl.w	r3, r0, r7
 8000302:	fa24 fc0c 	lsr.w	ip, r4, ip
 8000306:	40bd      	lsls	r5, r7
 8000308:	ea4c 0203 	orr.w	r2, ip, r3
 800030c:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 8000310:	b2ab      	uxth	r3, r5
 8000312:	fbb8 fcfe 	udiv	ip, r8, lr
 8000316:	0c11      	lsrs	r1, r2, #16
 8000318:	fb0e 801c 	mls	r0, lr, ip, r8
 800031c:	fb0c f903 	mul.w	r9, ip, r3
 8000320:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
 8000324:	4581      	cmp	r9, r0
 8000326:	fa04 f407 	lsl.w	r4, r4, r7
 800032a:	d923      	bls.n	8000374 <__udivmoddi4+0x194>
 800032c:	1828      	adds	r0, r5, r0
 800032e:	f10c 31ff 	add.w	r1, ip, #4294967295	; 0xffffffff
 8000332:	d204      	bcs.n	800033e <__udivmoddi4+0x15e>
 8000334:	4581      	cmp	r9, r0
 8000336:	d902      	bls.n	800033e <__udivmoddi4+0x15e>
 8000338:	f1ac 0102 	sub.w	r1, ip, #2
 800033c:	4428      	add	r0, r5
 800033e:	eba0 0009 	sub.w	r0, r0, r9
 8000342:	b292      	uxth	r2, r2
 8000344:	fbb0 fcfe 	udiv	ip, r0, lr
 8000348:	fb0e 001c 	mls	r0, lr, ip, r0
 800034c:	fb0c f803 	mul.w	r8, ip, r3
 8000350:	ea42 4300 	orr.w	r3, r2, r0, lsl #16
 8000354:	4598      	cmp	r8, r3
 8000356:	d90f      	bls.n	8000378 <__udivmoddi4+0x198>
 8000358:	18eb      	adds	r3, r5, r3
 800035a:	f10c 32ff 	add.w	r2, ip, #4294967295	; 0xffffffff
 800035e:	d204      	bcs.n	800036a <__udivmoddi4+0x18a>
 8000360:	4598      	cmp	r8, r3
 8000362:	d902      	bls.n	800036a <__udivmoddi4+0x18a>
 8000364:	f1ac 0202 	sub.w	r2, ip, #2
 8000368:	442b      	add	r3, r5
 800036a:	eba3 0308 	sub.w	r3, r3, r8
 800036e:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
 8000372:	e791      	b.n	8000298 <__udivmoddi4+0xb8>
 8000374:	4661      	mov	r1, ip
 8000376:	e7e2      	b.n	800033e <__udivmoddi4+0x15e>
 8000378:	4662      	mov	r2, ip
 800037a:	e7f6      	b.n	800036a <__udivmoddi4+0x18a>
 800037c:	4660      	mov	r0, ip
 800037e:	e7a2      	b.n	80002c6 <__udivmoddi4+0xe6>
 8000380:	4663      	mov	r3, ip
 8000382:	e7b6      	b.n	80002f2 <__udivmoddi4+0x112>
 8000384:	4283      	cmp	r3, r0
 8000386:	d905      	bls.n	8000394 <__udivmoddi4+0x1b4>
 8000388:	b10e      	cbz	r6, 800038e <__udivmoddi4+0x1ae>
 800038a:	e9c6 7000 	strd	r7, r0, [r6]
 800038e:	2100      	movs	r1, #0
 8000390:	4608      	mov	r0, r1
 8000392:	e776      	b.n	8000282 <__udivmoddi4+0xa2>
 8000394:	fab3 f183 	clz	r1, r3
 8000398:	b981      	cbnz	r1, 80003bc <__udivmoddi4+0x1dc>
 800039a:	4283      	cmp	r3, r0
 800039c:	d301      	bcc.n	80003a2 <__udivmoddi4+0x1c2>
 800039e:	42ba      	cmp	r2, r7
 80003a0:	d80a      	bhi.n	80003b8 <__udivmoddi4+0x1d8>
 80003a2:	1abc      	subs	r4, r7, r2
 80003a4:	eb60 0303 	sbc.w	r3, r0, r3
 80003a8:	2001      	movs	r0, #1
 80003aa:	469c      	mov	ip, r3
 80003ac:	2e00      	cmp	r6, #0
 80003ae:	d068      	beq.n	8000482 <__udivmoddi4+0x2a2>
 80003b0:	e9c6 4c00 	strd	r4, ip, [r6]
 80003b4:	2100      	movs	r1, #0
 80003b6:	e764      	b.n	8000282 <__udivmoddi4+0xa2>
 80003b8:	4608      	mov	r0, r1
 80003ba:	e7f7      	b.n	80003ac <__udivmoddi4+0x1cc>
 80003bc:	f1c1 0c20 	rsb	ip, r1, #32
 80003c0:	408b      	lsls	r3, r1
 80003c2:	fa22 f40c 	lsr.w	r4, r2, ip
 80003c6:	431c      	orrs	r4, r3
 80003c8:	fa02 f501 	lsl.w	r5, r2, r1
 80003cc:	fa00 f301 	lsl.w	r3, r0, r1
 80003d0:	fa27 f20c 	lsr.w	r2, r7, ip
 80003d4:	fa20 fb0c 	lsr.w	fp, r0, ip
 80003d8:	ea4f 4914 	mov.w	r9, r4, lsr #16
 80003dc:	4313      	orrs	r3, r2
 80003de:	fbbb f8f9 	udiv	r8, fp, r9
 80003e2:	fa1f fe84 	uxth.w	lr, r4
 80003e6:	fb09 bb18 	mls	fp, r9, r8, fp
 80003ea:	0c1a      	lsrs	r2, r3, #16
 80003ec:	fb08 fa0e 	mul.w	sl, r8, lr
 80003f0:	ea42 420b 	orr.w	r2, r2, fp, lsl #16
 80003f4:	4592      	cmp	sl, r2
 80003f6:	fa07 f701 	lsl.w	r7, r7, r1
 80003fa:	d93e      	bls.n	800047a <__udivmoddi4+0x29a>
 80003fc:	18a2      	adds	r2, r4, r2
 80003fe:	f108 30ff 	add.w	r0, r8, #4294967295	; 0xffffffff
 8000402:	d204      	bcs.n	800040e <__udivmoddi4+0x22e>
 8000404:	4592      	cmp	sl, r2
 8000406:	d902      	bls.n	800040e <__udivmoddi4+0x22e>
 8000408:	f1a8 0002 	sub.w	r0, r8, #2
 800040c:	4422      	add	r2, r4
 800040e:	eba2 020a 	sub.w	r2, r2, sl
 8000412:	b29b      	uxth	r3, r3
 8000414:	fbb2 f8f9 	udiv	r8, r2, r9
 8000418:	fb09 2218 	mls	r2, r9, r8, r2
 800041c:	fb08 fe0e 	mul.w	lr, r8, lr
 8000420:	ea43 4202 	orr.w	r2, r3, r2, lsl #16
 8000424:	4596      	cmp	lr, r2
 8000426:	d92a      	bls.n	800047e <__udivmoddi4+0x29e>
 8000428:	18a2      	adds	r2, r4, r2
 800042a:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 800042e:	d204      	bcs.n	800043a <__udivmoddi4+0x25a>
 8000430:	4596      	cmp	lr, r2
 8000432:	d902      	bls.n	800043a <__udivmoddi4+0x25a>
 8000434:	f1a8 0302 	sub.w	r3, r8, #2
 8000438:	4422      	add	r2, r4
 800043a:	ea43 4000 	orr.w	r0, r3, r0, lsl #16
 800043e:	fba0 9305 	umull	r9, r3, r0, r5
 8000442:	eba2 020e 	sub.w	r2, r2, lr
 8000446:	429a      	cmp	r2, r3
 8000448:	46ce      	mov	lr, r9
 800044a:	4698      	mov	r8, r3
 800044c:	d302      	bcc.n	8000454 <__udivmoddi4+0x274>
 800044e:	d106      	bne.n	800045e <__udivmoddi4+0x27e>
 8000450:	454f      	cmp	r7, r9
 8000452:	d204      	bcs.n	800045e <__udivmoddi4+0x27e>
 8000454:	ebb9 0e05 	subs.w	lr, r9, r5
 8000458:	eb63 0804 	sbc.w	r8, r3, r4
 800045c:	3801      	subs	r0, #1
 800045e:	b186      	cbz	r6, 8000482 <__udivmoddi4+0x2a2>
 8000460:	ebb7 030e 	subs.w	r3, r7, lr
 8000464:	eb62 0708 	sbc.w	r7, r2, r8
 8000468:	fa07 fc0c 	lsl.w	ip, r7, ip
 800046c:	40cb      	lsrs	r3, r1
 800046e:	ea4c 0303 	orr.w	r3, ip, r3
 8000472:	40cf      	lsrs	r7, r1
 8000474:	e9c6 3700 	strd	r3, r7, [r6]
 8000478:	e79c      	b.n	80003b4 <__udivmoddi4+0x1d4>
 800047a:	4640      	mov	r0, r8
 800047c:	e7c7      	b.n	800040e <__udivmoddi4+0x22e>
 800047e:	4643      	mov	r3, r8
 8000480:	e7db      	b.n	800043a <__udivmoddi4+0x25a>
 8000482:	4631      	mov	r1, r6
 8000484:	e6fd      	b.n	8000282 <__udivmoddi4+0xa2>
	...

08000488 <main>:
#include <kernel.h>

int main(void)
{
 8000488:	b510      	push	{r4, lr}
    for (;;) {
        printk("Hello, world!\n");
 800048a:	4c05      	ldr	r4, [pc, #20]	; (80004a0 <main+0x18>)
 800048c:	4620      	mov	r0, r4
 800048e:	f002 ff70 	bl	8003372 <printk>
		/* coverity[OVERRUN] */
		return (int32_t) arch_syscall_invoke2(parm0.split.lo, parm0.split.hi, K_SYSCALL_K_SLEEP);
	}
#endif
	compiler_barrier();
	return z_impl_k_sleep(timeout);
 8000492:	2100      	movs	r1, #0
 8000494:	f242 7010 	movw	r0, #10000	; 0x2710
 8000498:	f002 fd8c 	bl	8002fb4 <z_impl_k_sleep>
    for (;;) {
 800049c:	e7f6      	b.n	800048c <main+0x4>
 800049e:	bf00      	nop
 80004a0:	0800435a 	.word	0x0800435a

080004a4 <char_out>:

static int char_out(int c, void *ctx_p)
{
	struct out_context *ctx = ctx_p;

	ctx->count++;
 80004a4:	680b      	ldr	r3, [r1, #0]
 80004a6:	3301      	adds	r3, #1
 80004a8:	600b      	str	r3, [r1, #0]
	return _char_out(c);
 80004aa:	4b01      	ldr	r3, [pc, #4]	; (80004b0 <char_out+0xc>)
 80004ac:	681b      	ldr	r3, [r3, #0]
 80004ae:	4718      	bx	r3
 80004b0:	20000000 	.word	0x20000000

080004b4 <__printk_hook_install>:
	_char_out = fn;
 80004b4:	4b01      	ldr	r3, [pc, #4]	; (80004bc <__printk_hook_install+0x8>)
 80004b6:	6018      	str	r0, [r3, #0]
}
 80004b8:	4770      	bx	lr
 80004ba:	bf00      	nop
 80004bc:	20000000 	.word	0x20000000

080004c0 <vprintk>:
#endif
	}
}
#else
void vprintk(const char *fmt, va_list ap)
{
 80004c0:	b507      	push	{r0, r1, r2, lr}
 80004c2:	460b      	mov	r3, r1
	struct out_context ctx = { 0 };
 80004c4:	2100      	movs	r1, #0
{
 80004c6:	4602      	mov	r2, r0
	struct out_context ctx = { 0 };
 80004c8:	9101      	str	r1, [sp, #4]
#ifdef CONFIG_PRINTK_SYNC
	k_spinlock_key_t key = k_spin_lock(&lock);
#endif

	cbvprintf(char_out, &ctx, fmt, ap);
 80004ca:	4803      	ldr	r0, [pc, #12]	; (80004d8 <vprintk+0x18>)
 80004cc:	a901      	add	r1, sp, #4
 80004ce:	f000 f805 	bl	80004dc <cbvprintf>

#ifdef CONFIG_PRINTK_SYNC
	k_spin_unlock(&lock, key);
#endif
}
 80004d2:	b003      	add	sp, #12
 80004d4:	f85d fb04 	ldr.w	pc, [sp], #4
 80004d8:	080004a5 	.word	0x080004a5

080004dc <cbvprintf>:

	return (int)count;
}

int cbvprintf(cbprintf_cb out, void *ctx, const char *fp, va_list ap)
{
 80004dc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80004e0:	b091      	sub	sp, #68	; 0x44
 80004e2:	468b      	mov	fp, r1
 80004e4:	9002      	str	r0, [sp, #8]
 80004e6:	4692      	mov	sl, r2
 80004e8:	461c      	mov	r4, r3
	char buf[CONVERTED_BUFLEN];
	size_t count = 0;
 80004ea:	2500      	movs	r5, #0
		return rc; \
	} \
	count += rc; \
} while (false)

	while (*fp != 0) {
 80004ec:	f89a 0000 	ldrb.w	r0, [sl]
 80004f0:	b908      	cbnz	r0, 80004f6 <cbvprintf+0x1a>
			OUTC(' ');
			--width;
		}
	}

	return count;
 80004f2:	4628      	mov	r0, r5
 80004f4:	e35f      	b.n	8000bb6 <cbvprintf+0x6da>
		if (*fp != '%') {
 80004f6:	2825      	cmp	r0, #37	; 0x25
			OUTC(*fp++);
 80004f8:	f10a 0701 	add.w	r7, sl, #1
		if (*fp != '%') {
 80004fc:	d007      	beq.n	800050e <cbvprintf+0x32>
			OUTC('%');
 80004fe:	9b02      	ldr	r3, [sp, #8]
 8000500:	4659      	mov	r1, fp
 8000502:	4798      	blx	r3
 8000504:	2800      	cmp	r0, #0
 8000506:	f2c0 8356 	blt.w	8000bb6 <cbvprintf+0x6da>
 800050a:	3501      	adds	r5, #1
			break;
 800050c:	e212      	b.n	8000934 <cbvprintf+0x458>
		} state = {
 800050e:	2218      	movs	r2, #24
 8000510:	2100      	movs	r1, #0
 8000512:	a80a      	add	r0, sp, #40	; 0x28
 8000514:	f003 f830 	bl	8003578 <memset>
	if (*sp == '%') {
 8000518:	f89a 3001 	ldrb.w	r3, [sl, #1]
 800051c:	2b25      	cmp	r3, #37	; 0x25
 800051e:	d078      	beq.n	8000612 <cbvprintf+0x136>
 8000520:	2200      	movs	r2, #0
 8000522:	4610      	mov	r0, r2
 8000524:	4696      	mov	lr, r2
 8000526:	4694      	mov	ip, r2
 8000528:	4616      	mov	r6, r2
 800052a:	4639      	mov	r1, r7
		switch (*sp) {
 800052c:	f817 3b01 	ldrb.w	r3, [r7], #1
 8000530:	2b2b      	cmp	r3, #43	; 0x2b
 8000532:	f000 809d 	beq.w	8000670 <cbvprintf+0x194>
 8000536:	f200 8094 	bhi.w	8000662 <cbvprintf+0x186>
 800053a:	2b20      	cmp	r3, #32
 800053c:	f000 809b 	beq.w	8000676 <cbvprintf+0x19a>
 8000540:	2b23      	cmp	r3, #35	; 0x23
 8000542:	f000 809b 	beq.w	800067c <cbvprintf+0x1a0>
 8000546:	b12e      	cbz	r6, 8000554 <cbvprintf+0x78>
 8000548:	f89d 6030 	ldrb.w	r6, [sp, #48]	; 0x30
 800054c:	f046 0604 	orr.w	r6, r6, #4
 8000550:	f88d 6030 	strb.w	r6, [sp, #48]	; 0x30
 8000554:	f1bc 0f00 	cmp.w	ip, #0
 8000558:	d005      	beq.n	8000566 <cbvprintf+0x8a>
 800055a:	f89d 6030 	ldrb.w	r6, [sp, #48]	; 0x30
 800055e:	f046 0608 	orr.w	r6, r6, #8
 8000562:	f88d 6030 	strb.w	r6, [sp, #48]	; 0x30
 8000566:	f1be 0f00 	cmp.w	lr, #0
 800056a:	d005      	beq.n	8000578 <cbvprintf+0x9c>
 800056c:	f89d 6030 	ldrb.w	r6, [sp, #48]	; 0x30
 8000570:	f046 0610 	orr.w	r6, r6, #16
 8000574:	f88d 6030 	strb.w	r6, [sp, #48]	; 0x30
 8000578:	b128      	cbz	r0, 8000586 <cbvprintf+0xaa>
 800057a:	f89d 0030 	ldrb.w	r0, [sp, #48]	; 0x30
 800057e:	f040 0020 	orr.w	r0, r0, #32
 8000582:	f88d 0030 	strb.w	r0, [sp, #48]	; 0x30
 8000586:	b12a      	cbz	r2, 8000594 <cbvprintf+0xb8>
 8000588:	f89d 2030 	ldrb.w	r2, [sp, #48]	; 0x30
 800058c:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8000590:	f88d 2030 	strb.w	r2, [sp, #48]	; 0x30
	if (conv->flag_zero && conv->flag_dash) {
 8000594:	f89d 2030 	ldrb.w	r2, [sp, #48]	; 0x30
 8000598:	f002 0044 	and.w	r0, r2, #68	; 0x44
 800059c:	2844      	cmp	r0, #68	; 0x44
 800059e:	d103      	bne.n	80005a8 <cbvprintf+0xcc>
		conv->flag_zero = false;
 80005a0:	f36f 1286 	bfc	r2, #6, #1
 80005a4:	f88d 2030 	strb.w	r2, [sp, #48]	; 0x30
	conv->width_present = true;
 80005a8:	f89d 2030 	ldrb.w	r2, [sp, #48]	; 0x30
	if (*sp == '*') {
 80005ac:	2b2a      	cmp	r3, #42	; 0x2a
	conv->width_present = true;
 80005ae:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 80005b2:	f88d 2030 	strb.w	r2, [sp, #48]	; 0x30
	if (*sp == '*') {
 80005b6:	d17b      	bne.n	80006b0 <cbvprintf+0x1d4>
		conv->width_star = true;
 80005b8:	f89d 2031 	ldrb.w	r2, [sp, #49]	; 0x31
 80005bc:	f042 0201 	orr.w	r2, r2, #1
			++sp;
 80005c0:	1c4b      	adds	r3, r1, #1
		conv->width_star = true;
 80005c2:	f88d 2031 	strb.w	r2, [sp, #49]	; 0x31
	conv->prec_present = (*sp == '.');
 80005c6:	781a      	ldrb	r2, [r3, #0]
 80005c8:	2a2e      	cmp	r2, #46	; 0x2e
 80005ca:	f89d 2031 	ldrb.w	r2, [sp, #49]	; 0x31
 80005ce:	bf0c      	ite	eq
 80005d0:	2101      	moveq	r1, #1
 80005d2:	2100      	movne	r1, #0
 80005d4:	f361 0241 	bfi	r2, r1, #1, #1
 80005d8:	f88d 2031 	strb.w	r2, [sp, #49]	; 0x31
	if (!conv->prec_present) {
 80005dc:	d174      	bne.n	80006c8 <cbvprintf+0x1ec>
	if (*sp == '*') {
 80005de:	785a      	ldrb	r2, [r3, #1]
 80005e0:	2a2a      	cmp	r2, #42	; 0x2a
 80005e2:	d06a      	beq.n	80006ba <cbvprintf+0x1de>
	++sp;
 80005e4:	3301      	adds	r3, #1
	size_t val = 0;
 80005e6:	2100      	movs	r1, #0
		val = 10U * val + *sp++ - '0';
 80005e8:	260a      	movs	r6, #10
			(((unsigned)c) <= (unsigned)'~'));
}

static inline int isdigit(int a)
{
	return (int)(((unsigned)(a)-(unsigned)'0') < 10U);
 80005ea:	4618      	mov	r0, r3
 80005ec:	f810 2b01 	ldrb.w	r2, [r0], #1
 80005f0:	f1a2 0730 	sub.w	r7, r2, #48	; 0x30
	while (isdigit((int)(unsigned char)*sp)) {
 80005f4:	2f09      	cmp	r7, #9
 80005f6:	f240 808e 	bls.w	8000716 <cbvprintf+0x23a>
	conv->unsupported |= ((conv->prec_value < 0)
 80005fa:	f89d 2030 	ldrb.w	r2, [sp, #48]	; 0x30
	conv->prec_value = prec;
 80005fe:	910e      	str	r1, [sp, #56]	; 0x38
	conv->unsupported |= ((conv->prec_value < 0)
 8000600:	f3c2 0040 	ubfx	r0, r2, #1, #1
 8000604:	ea40 71d1 	orr.w	r1, r0, r1, lsr #31
 8000608:	f361 0241 	bfi	r2, r1, #1, #1
 800060c:	f88d 2030 	strb.w	r2, [sp, #48]	; 0x30
	return sp;
 8000610:	e05a      	b.n	80006c8 <cbvprintf+0x1ec>
		conv->specifier = *sp++;
 8000612:	f10a 0702 	add.w	r7, sl, #2
 8000616:	f88d 3033 	strb.w	r3, [sp, #51]	; 0x33
		if (conv->width_star) {
 800061a:	f89d 3031 	ldrb.w	r3, [sp, #49]	; 0x31
 800061e:	07d9      	lsls	r1, r3, #31
 8000620:	f140 8149 	bpl.w	80008b6 <cbvprintf+0x3da>
			width = va_arg(ap, int);
 8000624:	f854 9b04 	ldr.w	r9, [r4], #4
			if (width < 0) {
 8000628:	f1b9 0f00 	cmp.w	r9, #0
 800062c:	da07      	bge.n	800063e <cbvprintf+0x162>
				conv->flag_dash = true;
 800062e:	f89d 2030 	ldrb.w	r2, [sp, #48]	; 0x30
 8000632:	f042 0204 	orr.w	r2, r2, #4
 8000636:	f88d 2030 	strb.w	r2, [sp, #48]	; 0x30
				width = -width;
 800063a:	f1c9 0900 	rsb	r9, r9, #0
		if (conv->prec_star) {
 800063e:	075a      	lsls	r2, r3, #29
 8000640:	f140 8142 	bpl.w	80008c8 <cbvprintf+0x3ec>
			int arg = va_arg(ap, int);
 8000644:	f854 8b04 	ldr.w	r8, [r4], #4
			if (arg < 0) {
 8000648:	f1b8 0f00 	cmp.w	r8, #0
 800064c:	f280 8141 	bge.w	80008d2 <cbvprintf+0x3f6>
				conv->prec_present = false;
 8000650:	f89d 3031 	ldrb.w	r3, [sp, #49]	; 0x31
 8000654:	f36f 0341 	bfc	r3, #1, #1
 8000658:	f88d 3031 	strb.w	r3, [sp, #49]	; 0x31
		int precision = -1;
 800065c:	f04f 38ff 	mov.w	r8, #4294967295	; 0xffffffff
 8000660:	e137      	b.n	80008d2 <cbvprintf+0x3f6>
		switch (*sp) {
 8000662:	2b2d      	cmp	r3, #45	; 0x2d
 8000664:	d00c      	beq.n	8000680 <cbvprintf+0x1a4>
 8000666:	2b30      	cmp	r3, #48	; 0x30
 8000668:	f47f af6d 	bne.w	8000546 <cbvprintf+0x6a>
			conv->flag_zero = true;
 800066c:	2201      	movs	r2, #1
	} while (loop);
 800066e:	e75c      	b.n	800052a <cbvprintf+0x4e>
			conv->flag_plus = true;
 8000670:	f04f 0c01 	mov.w	ip, #1
 8000674:	e759      	b.n	800052a <cbvprintf+0x4e>
			conv->flag_space = true;
 8000676:	f04f 0e01 	mov.w	lr, #1
 800067a:	e756      	b.n	800052a <cbvprintf+0x4e>
			conv->flag_hash = true;
 800067c:	2001      	movs	r0, #1
 800067e:	e754      	b.n	800052a <cbvprintf+0x4e>
		switch (*sp) {
 8000680:	2601      	movs	r6, #1
 8000682:	e752      	b.n	800052a <cbvprintf+0x4e>
		val = 10U * val + *sp++ - '0';
 8000684:	fb0c 0202 	mla	r2, ip, r2, r0
 8000688:	3a30      	subs	r2, #48	; 0x30
 800068a:	4633      	mov	r3, r6
 800068c:	461e      	mov	r6, r3
 800068e:	f816 0b01 	ldrb.w	r0, [r6], #1
 8000692:	f1a0 0730 	sub.w	r7, r0, #48	; 0x30
	while (isdigit((int)(unsigned char)*sp)) {
 8000696:	2f09      	cmp	r7, #9
 8000698:	d9f4      	bls.n	8000684 <cbvprintf+0x1a8>
	if (sp != wp) {
 800069a:	4299      	cmp	r1, r3
 800069c:	d093      	beq.n	80005c6 <cbvprintf+0xea>
		conv->unsupported |= ((conv->width_value < 0)
 800069e:	f89d 1030 	ldrb.w	r1, [sp, #48]	; 0x30
		conv->width_value = width;
 80006a2:	920d      	str	r2, [sp, #52]	; 0x34
				      || (width != (size_t)conv->width_value));
 80006a4:	0fd2      	lsrs	r2, r2, #31
		conv->unsupported |= ((conv->width_value < 0)
 80006a6:	f362 0141 	bfi	r1, r2, #1, #1
 80006aa:	f88d 1030 	strb.w	r1, [sp, #48]	; 0x30
 80006ae:	e78a      	b.n	80005c6 <cbvprintf+0xea>
 80006b0:	460b      	mov	r3, r1
	size_t val = 0;
 80006b2:	2200      	movs	r2, #0
		val = 10U * val + *sp++ - '0';
 80006b4:	f04f 0c0a 	mov.w	ip, #10
 80006b8:	e7e8      	b.n	800068c <cbvprintf+0x1b0>
		conv->prec_star = true;
 80006ba:	f89d 2031 	ldrb.w	r2, [sp, #49]	; 0x31
 80006be:	f042 0204 	orr.w	r2, r2, #4
 80006c2:	f88d 2031 	strb.w	r2, [sp, #49]	; 0x31
		return ++sp;
 80006c6:	3302      	adds	r3, #2
	switch (*sp) {
 80006c8:	461f      	mov	r7, r3
 80006ca:	f817 2b01 	ldrb.w	r2, [r7], #1
 80006ce:	2a6c      	cmp	r2, #108	; 0x6c
 80006d0:	d041      	beq.n	8000756 <cbvprintf+0x27a>
 80006d2:	d825      	bhi.n	8000720 <cbvprintf+0x244>
 80006d4:	2a68      	cmp	r2, #104	; 0x68
 80006d6:	d02b      	beq.n	8000730 <cbvprintf+0x254>
 80006d8:	2a6a      	cmp	r2, #106	; 0x6a
 80006da:	d046      	beq.n	800076a <cbvprintf+0x28e>
 80006dc:	2a4c      	cmp	r2, #76	; 0x4c
 80006de:	d04c      	beq.n	800077a <cbvprintf+0x29e>
 80006e0:	461f      	mov	r7, r3
	conv->specifier = *sp++;
 80006e2:	f817 2b01 	ldrb.w	r2, [r7], #1
		if (conv->length_mod == LENGTH_UPPER_L) {
 80006e6:	f89d 3031 	ldrb.w	r3, [sp, #49]	; 0x31
	conv->specifier = *sp++;
 80006ea:	f88d 2033 	strb.w	r2, [sp, #51]	; 0x33
	switch (conv->specifier) {
 80006ee:	2a78      	cmp	r2, #120	; 0x78
 80006f0:	f200 80d9 	bhi.w	80008a6 <cbvprintf+0x3ca>
 80006f4:	2a57      	cmp	r2, #87	; 0x57
 80006f6:	d84d      	bhi.n	8000794 <cbvprintf+0x2b8>
 80006f8:	2a41      	cmp	r2, #65	; 0x41
 80006fa:	d003      	beq.n	8000704 <cbvprintf+0x228>
 80006fc:	3a45      	subs	r2, #69	; 0x45
 80006fe:	2a02      	cmp	r2, #2
 8000700:	f200 80d1 	bhi.w	80008a6 <cbvprintf+0x3ca>
		conv->specifier_cat = SPECIFIER_FP;
 8000704:	f89d 3032 	ldrb.w	r3, [sp, #50]	; 0x32
 8000708:	2204      	movs	r2, #4
 800070a:	f362 0302 	bfi	r3, r2, #0, #3
 800070e:	f88d 3032 	strb.w	r3, [sp, #50]	; 0x32
			unsupported = true;
 8000712:	2301      	movs	r3, #1
			break;
 8000714:	e09e      	b.n	8000854 <cbvprintf+0x378>
		val = 10U * val + *sp++ - '0';
 8000716:	fb06 2101 	mla	r1, r6, r1, r2
 800071a:	3930      	subs	r1, #48	; 0x30
 800071c:	4603      	mov	r3, r0
 800071e:	e764      	b.n	80005ea <cbvprintf+0x10e>
	switch (*sp) {
 8000720:	2a74      	cmp	r2, #116	; 0x74
 8000722:	d026      	beq.n	8000772 <cbvprintf+0x296>
 8000724:	2a7a      	cmp	r2, #122	; 0x7a
 8000726:	d1db      	bne.n	80006e0 <cbvprintf+0x204>
		conv->length_mod = LENGTH_Z;
 8000728:	f89d 3031 	ldrb.w	r3, [sp, #49]	; 0x31
 800072c:	2206      	movs	r2, #6
 800072e:	e00d      	b.n	800074c <cbvprintf+0x270>
		if (*++sp == 'h') {
 8000730:	785a      	ldrb	r2, [r3, #1]
 8000732:	2a68      	cmp	r2, #104	; 0x68
 8000734:	f89d 2031 	ldrb.w	r2, [sp, #49]	; 0x31
 8000738:	d106      	bne.n	8000748 <cbvprintf+0x26c>
			conv->length_mod = LENGTH_HH;
 800073a:	2101      	movs	r1, #1
			conv->length_mod = LENGTH_LL;
 800073c:	f361 02c6 	bfi	r2, r1, #3, #4
 8000740:	f88d 2031 	strb.w	r2, [sp, #49]	; 0x31
			++sp;
 8000744:	1c9f      	adds	r7, r3, #2
 8000746:	e7cc      	b.n	80006e2 <cbvprintf+0x206>
			conv->length_mod = LENGTH_H;
 8000748:	4613      	mov	r3, r2
 800074a:	2202      	movs	r2, #2
		conv->length_mod = LENGTH_T;
 800074c:	f362 03c6 	bfi	r3, r2, #3, #4
 8000750:	f88d 3031 	strb.w	r3, [sp, #49]	; 0x31
		break;
 8000754:	e7c5      	b.n	80006e2 <cbvprintf+0x206>
		if (*++sp == 'l') {
 8000756:	785a      	ldrb	r2, [r3, #1]
 8000758:	2a6c      	cmp	r2, #108	; 0x6c
 800075a:	f89d 2031 	ldrb.w	r2, [sp, #49]	; 0x31
 800075e:	d101      	bne.n	8000764 <cbvprintf+0x288>
			conv->length_mod = LENGTH_LL;
 8000760:	2104      	movs	r1, #4
 8000762:	e7eb      	b.n	800073c <cbvprintf+0x260>
			conv->length_mod = LENGTH_L;
 8000764:	4613      	mov	r3, r2
 8000766:	2203      	movs	r2, #3
 8000768:	e7f0      	b.n	800074c <cbvprintf+0x270>
		conv->length_mod = LENGTH_J;
 800076a:	f89d 3031 	ldrb.w	r3, [sp, #49]	; 0x31
 800076e:	2205      	movs	r2, #5
 8000770:	e7ec      	b.n	800074c <cbvprintf+0x270>
		conv->length_mod = LENGTH_T;
 8000772:	f89d 3031 	ldrb.w	r3, [sp, #49]	; 0x31
 8000776:	2207      	movs	r2, #7
 8000778:	e7e8      	b.n	800074c <cbvprintf+0x270>
		conv->unsupported = true;
 800077a:	f8bd 3030 	ldrh.w	r3, [sp, #48]	; 0x30
 800077e:	f423 43f0 	bic.w	r3, r3, #30720	; 0x7800
 8000782:	f023 0302 	bic.w	r3, r3, #2
 8000786:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
 800078a:	f043 0302 	orr.w	r3, r3, #2
 800078e:	f8ad 3030 	strh.w	r3, [sp, #48]	; 0x30
		break;
 8000792:	e7a6      	b.n	80006e2 <cbvprintf+0x206>
	switch (conv->specifier) {
 8000794:	f1a2 0158 	sub.w	r1, r2, #88	; 0x58
 8000798:	2920      	cmp	r1, #32
 800079a:	f200 8084 	bhi.w	80008a6 <cbvprintf+0x3ca>
 800079e:	a001      	add	r0, pc, #4	; (adr r0, 80007a4 <cbvprintf+0x2c8>)
 80007a0:	f850 f021 	ldr.w	pc, [r0, r1, lsl #2]
 80007a4:	08000869 	.word	0x08000869
 80007a8:	080008a7 	.word	0x080008a7
 80007ac:	080008a7 	.word	0x080008a7
 80007b0:	080008a7 	.word	0x080008a7
 80007b4:	080008a7 	.word	0x080008a7
 80007b8:	080008a7 	.word	0x080008a7
 80007bc:	080008a7 	.word	0x080008a7
 80007c0:	080008a7 	.word	0x080008a7
 80007c4:	080008a7 	.word	0x080008a7
 80007c8:	08000705 	.word	0x08000705
 80007cc:	080008a7 	.word	0x080008a7
 80007d0:	08000869 	.word	0x08000869
 80007d4:	08000829 	.word	0x08000829
 80007d8:	08000705 	.word	0x08000705
 80007dc:	08000705 	.word	0x08000705
 80007e0:	08000705 	.word	0x08000705
 80007e4:	080008a7 	.word	0x080008a7
 80007e8:	08000829 	.word	0x08000829
 80007ec:	080008a7 	.word	0x080008a7
 80007f0:	080008a7 	.word	0x080008a7
 80007f4:	080008a7 	.word	0x080008a7
 80007f8:	080008a7 	.word	0x080008a7
 80007fc:	08000871 	.word	0x08000871
 8000800:	08000869 	.word	0x08000869
 8000804:	0800088d 	.word	0x0800088d
 8000808:	080008a7 	.word	0x080008a7
 800080c:	080008a7 	.word	0x080008a7
 8000810:	0800088d 	.word	0x0800088d
 8000814:	080008a7 	.word	0x080008a7
 8000818:	08000869 	.word	0x08000869
 800081c:	080008a7 	.word	0x080008a7
 8000820:	080008a7 	.word	0x080008a7
 8000824:	08000869 	.word	0x08000869
		conv->specifier_cat = SPECIFIER_SINT;
 8000828:	f89d 1032 	ldrb.w	r1, [sp, #50]	; 0x32
 800082c:	2001      	movs	r0, #1
		if (conv->length_mod == LENGTH_UPPER_L) {
 800082e:	f003 0378 	and.w	r3, r3, #120	; 0x78
		conv->specifier_cat = SPECIFIER_UINT;
 8000832:	f360 0102 	bfi	r1, r0, #0, #3
		if (conv->length_mod == LENGTH_UPPER_L) {
 8000836:	2b40      	cmp	r3, #64	; 0x40
		conv->specifier_cat = SPECIFIER_UINT;
 8000838:	f88d 1032 	strb.w	r1, [sp, #50]	; 0x32
			conv->invalid = true;
 800083c:	bf02      	ittt	eq
 800083e:	f89d 1030 	ldrbeq.w	r1, [sp, #48]	; 0x30
 8000842:	f041 0101 	orreq.w	r1, r1, #1
 8000846:	f88d 1030 	strbeq.w	r1, [sp, #48]	; 0x30
		if (conv->specifier == 'c') {
 800084a:	2a63      	cmp	r2, #99	; 0x63
 800084c:	d131      	bne.n	80008b2 <cbvprintf+0x3d6>
			unsupported = (conv->length_mod != LENGTH_NONE);
 800084e:	3b00      	subs	r3, #0
 8000850:	bf18      	it	ne
 8000852:	2301      	movne	r3, #1
	conv->unsupported |= unsupported;
 8000854:	f89d 2030 	ldrb.w	r2, [sp, #48]	; 0x30
 8000858:	f3c2 0140 	ubfx	r1, r2, #1, #1
 800085c:	430b      	orrs	r3, r1
 800085e:	f363 0241 	bfi	r2, r3, #1, #1
 8000862:	f88d 2030 	strb.w	r2, [sp, #48]	; 0x30
	return sp;
 8000866:	e6d8      	b.n	800061a <cbvprintf+0x13e>
		conv->specifier_cat = SPECIFIER_UINT;
 8000868:	f89d 1032 	ldrb.w	r1, [sp, #50]	; 0x32
 800086c:	2002      	movs	r0, #2
 800086e:	e7de      	b.n	800082e <cbvprintf+0x352>
		conv->specifier_cat = SPECIFIER_PTR;
 8000870:	f89d 2032 	ldrb.w	r2, [sp, #50]	; 0x32
		if (conv->length_mod == LENGTH_UPPER_L) {
 8000874:	f003 0378 	and.w	r3, r3, #120	; 0x78
 8000878:	f1a3 0040 	sub.w	r0, r3, #64	; 0x40
		conv->specifier_cat = SPECIFIER_PTR;
 800087c:	2103      	movs	r1, #3
 800087e:	f361 0202 	bfi	r2, r1, #0, #3
		if (conv->length_mod == LENGTH_UPPER_L) {
 8000882:	4243      	negs	r3, r0
		conv->specifier_cat = SPECIFIER_PTR;
 8000884:	f88d 2032 	strb.w	r2, [sp, #50]	; 0x32
		if (conv->length_mod == LENGTH_UPPER_L) {
 8000888:	4143      	adcs	r3, r0
 800088a:	e7e3      	b.n	8000854 <cbvprintf+0x378>
		conv->specifier_cat = SPECIFIER_PTR;
 800088c:	f89d 2032 	ldrb.w	r2, [sp, #50]	; 0x32
 8000890:	2103      	movs	r1, #3
		if (conv->length_mod != LENGTH_NONE) {
 8000892:	f013 0f78 	tst.w	r3, #120	; 0x78
		conv->specifier_cat = SPECIFIER_PTR;
 8000896:	f361 0202 	bfi	r2, r1, #0, #3
 800089a:	f88d 2032 	strb.w	r2, [sp, #50]	; 0x32
		if (conv->length_mod != LENGTH_NONE) {
 800089e:	bf14      	ite	ne
 80008a0:	2301      	movne	r3, #1
 80008a2:	2300      	moveq	r3, #0
 80008a4:	e7d6      	b.n	8000854 <cbvprintf+0x378>
		conv->invalid = true;
 80008a6:	f89d 3030 	ldrb.w	r3, [sp, #48]	; 0x30
 80008aa:	f043 0301 	orr.w	r3, r3, #1
 80008ae:	f88d 3030 	strb.w	r3, [sp, #48]	; 0x30
	bool unsupported = false;
 80008b2:	2300      	movs	r3, #0
 80008b4:	e7ce      	b.n	8000854 <cbvprintf+0x378>
		} else if (conv->width_present) {
 80008b6:	f99d 2030 	ldrsb.w	r2, [sp, #48]	; 0x30
 80008ba:	2a00      	cmp	r2, #0
			width = conv->width_value;
 80008bc:	bfb4      	ite	lt
 80008be:	f8dd 9034 	ldrlt.w	r9, [sp, #52]	; 0x34
		int width = -1;
 80008c2:	f04f 39ff 	movge.w	r9, #4294967295	; 0xffffffff
 80008c6:	e6ba      	b.n	800063e <cbvprintf+0x162>
		} else if (conv->prec_present) {
 80008c8:	079b      	lsls	r3, r3, #30
 80008ca:	f57f aec7 	bpl.w	800065c <cbvprintf+0x180>
			precision = conv->prec_value;
 80008ce:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
			= (enum length_mod_enum)conv->length_mod;
 80008d2:	f89d 1031 	ldrb.w	r1, [sp, #49]	; 0x31
		conv->pad0_value = 0;
 80008d6:	2300      	movs	r3, #0
		conv->pad0_pre_exp = 0;
 80008d8:	e9cd 330d 	strd	r3, r3, [sp, #52]	; 0x34
			= (enum specifier_cat_enum)conv->specifier_cat;
 80008dc:	f89d 3032 	ldrb.w	r3, [sp, #50]	; 0x32
		enum specifier_cat_enum specifier_cat
 80008e0:	f003 0307 	and.w	r3, r3, #7
		if (specifier_cat == SPECIFIER_SINT) {
 80008e4:	2b01      	cmp	r3, #1
			= (enum length_mod_enum)conv->length_mod;
 80008e6:	f3c1 01c3 	ubfx	r1, r1, #3, #4
		if (specifier_cat == SPECIFIER_SINT) {
 80008ea:	d138      	bne.n	800095e <cbvprintf+0x482>
			switch (length_mod) {
 80008ec:	1ecb      	subs	r3, r1, #3
 80008ee:	2b04      	cmp	r3, #4
 80008f0:	d822      	bhi.n	8000938 <cbvprintf+0x45c>
 80008f2:	e8df f003 	tbb	[pc, r3]
 80008f6:	0903      	.short	0x0903
 80008f8:	2109      	.short	0x2109
 80008fa:	21          	.byte	0x21
 80008fb:	00          	.byte	0x00
					value->sint = va_arg(ap, long);
 80008fc:	f854 3b04 	ldr.w	r3, [r4], #4
				value->sint = (short)value->sint;
 8000900:	17da      	asrs	r2, r3, #31
 8000902:	e9cd 320a 	strd	r3, r2, [sp, #40]	; 0x28
 8000906:	e006      	b.n	8000916 <cbvprintf+0x43a>
					(sint_value_type)va_arg(ap, intmax_t);
 8000908:	3407      	adds	r4, #7
 800090a:	f024 0407 	bic.w	r4, r4, #7
				value->sint =
 800090e:	e8f4 2302 	ldrd	r2, r3, [r4], #8
 8000912:	e9cd 230a 	strd	r2, r3, [sp, #40]	; 0x28
		if (conv->invalid || conv->unsupported) {
 8000916:	f89d 3030 	ldrb.w	r3, [sp, #48]	; 0x30
 800091a:	f013 0603 	ands.w	r6, r3, #3
 800091e:	d056      	beq.n	80009ce <cbvprintf+0x4f2>
			OUTS(sp, fp);
 8000920:	9802      	ldr	r0, [sp, #8]
 8000922:	463b      	mov	r3, r7
 8000924:	4652      	mov	r2, sl
 8000926:	4659      	mov	r1, fp
 8000928:	f002 fd80 	bl	800342c <outs>
 800092c:	2800      	cmp	r0, #0
 800092e:	f2c0 8142 	blt.w	8000bb6 <cbvprintf+0x6da>
 8000932:	4405      	add	r5, r0
			continue;
 8000934:	46ba      	mov	sl, r7
 8000936:	e5d9      	b.n	80004ec <cbvprintf+0x10>
					(sint_value_type)va_arg(ap, ptrdiff_t);
 8000938:	f854 3b04 	ldr.w	r3, [r4], #4
			if (length_mod == LENGTH_HH) {
 800093c:	2901      	cmp	r1, #1
					(sint_value_type)va_arg(ap, ptrdiff_t);
 800093e:	ea4f 72e3 	mov.w	r2, r3, asr #31
 8000942:	e9cd 320a 	strd	r3, r2, [sp, #40]	; 0x28
			if (length_mod == LENGTH_HH) {
 8000946:	d105      	bne.n	8000954 <cbvprintf+0x478>
				value->uint = (unsigned char)value->uint;
 8000948:	f89d 3028 	ldrb.w	r3, [sp, #40]	; 0x28
				value->uint = (unsigned short)value->uint;
 800094c:	930a      	str	r3, [sp, #40]	; 0x28
 800094e:	2300      	movs	r3, #0
 8000950:	930b      	str	r3, [sp, #44]	; 0x2c
 8000952:	e7e0      	b.n	8000916 <cbvprintf+0x43a>
			} else if (length_mod == LENGTH_H) {
 8000954:	2902      	cmp	r1, #2
 8000956:	d1de      	bne.n	8000916 <cbvprintf+0x43a>
				value->sint = (short)value->sint;
 8000958:	f9bd 3028 	ldrsh.w	r3, [sp, #40]	; 0x28
 800095c:	e7d0      	b.n	8000900 <cbvprintf+0x424>
		} else if (specifier_cat == SPECIFIER_UINT) {
 800095e:	2b02      	cmp	r3, #2
 8000960:	d123      	bne.n	80009aa <cbvprintf+0x4ce>
			switch (length_mod) {
 8000962:	1ecb      	subs	r3, r1, #3
 8000964:	2b04      	cmp	r3, #4
 8000966:	d813      	bhi.n	8000990 <cbvprintf+0x4b4>
 8000968:	e8df f003 	tbb	[pc, r3]
 800096c:	120a0a03 	.word	0x120a0a03
 8000970:	12          	.byte	0x12
 8000971:	00          	.byte	0x00
					value->uint = (wchar_t)va_arg(ap,
 8000972:	6822      	ldr	r2, [r4, #0]
 8000974:	920a      	str	r2, [sp, #40]	; 0x28
 8000976:	2300      	movs	r3, #0
				value->sint = va_arg(ap, int);
 8000978:	1d20      	adds	r0, r4, #4
					value->uint = (wchar_t)va_arg(ap,
 800097a:	930b      	str	r3, [sp, #44]	; 0x2c
					(uint_value_type)va_arg(ap, size_t);
 800097c:	4604      	mov	r4, r0
 800097e:	e7ca      	b.n	8000916 <cbvprintf+0x43a>
					(uint_value_type)va_arg(ap,
 8000980:	1de0      	adds	r0, r4, #7
 8000982:	f020 0007 	bic.w	r0, r0, #7
				value->uint =
 8000986:	e8f0 2302 	ldrd	r2, r3, [r0], #8
 800098a:	e9cd 230a 	strd	r2, r3, [sp, #40]	; 0x28
				break;
 800098e:	e7f5      	b.n	800097c <cbvprintf+0x4a0>
					(uint_value_type)va_arg(ap, size_t);
 8000990:	f854 3b04 	ldr.w	r3, [r4], #4
 8000994:	930a      	str	r3, [sp, #40]	; 0x28
			if (length_mod == LENGTH_HH) {
 8000996:	2901      	cmp	r1, #1
					(uint_value_type)va_arg(ap, size_t);
 8000998:	f04f 0300 	mov.w	r3, #0
 800099c:	930b      	str	r3, [sp, #44]	; 0x2c
			if (length_mod == LENGTH_HH) {
 800099e:	d0d3      	beq.n	8000948 <cbvprintf+0x46c>
			} else if (length_mod == LENGTH_H) {
 80009a0:	2902      	cmp	r1, #2
 80009a2:	d1b8      	bne.n	8000916 <cbvprintf+0x43a>
				value->uint = (unsigned short)value->uint;
 80009a4:	f8bd 3028 	ldrh.w	r3, [sp, #40]	; 0x28
 80009a8:	e7d0      	b.n	800094c <cbvprintf+0x470>
		} else if (specifier_cat == SPECIFIER_FP) {
 80009aa:	2b04      	cmp	r3, #4
 80009ac:	d109      	bne.n	80009c2 <cbvprintf+0x4e6>
					(sint_value_type)va_arg(ap, long long);
 80009ae:	1de3      	adds	r3, r4, #7
 80009b0:	f023 0307 	bic.w	r3, r3, #7
 80009b4:	f103 0408 	add.w	r4, r3, #8
				value->ldbl = va_arg(ap, long double);
 80009b8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80009bc:	e9cd 230a 	strd	r2, r3, [sp, #40]	; 0x28
 80009c0:	e7a9      	b.n	8000916 <cbvprintf+0x43a>
		} else if (specifier_cat == SPECIFIER_PTR) {
 80009c2:	2b03      	cmp	r3, #3
			value->ptr = va_arg(ap, void *);
 80009c4:	bf04      	itt	eq
 80009c6:	f854 3b04 	ldreq.w	r3, [r4], #4
 80009ca:	930a      	streq	r3, [sp, #40]	; 0x28
 80009cc:	e7a3      	b.n	8000916 <cbvprintf+0x43a>
		switch (conv->specifier) {
 80009ce:	f89d 0033 	ldrb.w	r0, [sp, #51]	; 0x33
 80009d2:	2878      	cmp	r0, #120	; 0x78
 80009d4:	d8ae      	bhi.n	8000934 <cbvprintf+0x458>
 80009d6:	2862      	cmp	r0, #98	; 0x62
 80009d8:	d822      	bhi.n	8000a20 <cbvprintf+0x544>
 80009da:	2825      	cmp	r0, #37	; 0x25
 80009dc:	f43f ad8f 	beq.w	80004fe <cbvprintf+0x22>
 80009e0:	2858      	cmp	r0, #88	; 0x58
 80009e2:	d1a7      	bne.n	8000934 <cbvprintf+0x458>
			bps = encode_uint(value->uint, conv, buf, bpe);
 80009e4:	f10d 0326 	add.w	r3, sp, #38	; 0x26
 80009e8:	9300      	str	r3, [sp, #0]
 80009ea:	e9dd 010a 	ldrd	r0, r1, [sp, #40]	; 0x28
 80009ee:	ab04      	add	r3, sp, #16
 80009f0:	aa0c      	add	r2, sp, #48	; 0x30
 80009f2:	f002 fcd5 	bl	80033a0 <encode_uint>
 80009f6:	4682      	mov	sl, r0
			if (precision >= 0) {
 80009f8:	f1b8 0f00 	cmp.w	r8, #0
 80009fc:	f10d 0026 	add.w	r0, sp, #38	; 0x26
 8000a00:	db0c      	blt.n	8000a1c <cbvprintf+0x540>
				conv->flag_zero = false;
 8000a02:	f89d 2030 	ldrb.w	r2, [sp, #48]	; 0x30
				size_t len = bpe - bps;
 8000a06:	eba0 030a 	sub.w	r3, r0, sl
				conv->flag_zero = false;
 8000a0a:	f36f 1286 	bfc	r2, #6, #1
				if (len < (size_t)precision) {
 8000a0e:	4598      	cmp	r8, r3
				conv->flag_zero = false;
 8000a10:	f88d 2030 	strb.w	r2, [sp, #48]	; 0x30
				if (len < (size_t)precision) {
 8000a14:	d902      	bls.n	8000a1c <cbvprintf+0x540>
					conv->pad0_value = precision - (int)len;
 8000a16:	eba8 0303 	sub.w	r3, r8, r3
 8000a1a:	930d      	str	r3, [sp, #52]	; 0x34
		const char *bpe = buf + sizeof(buf);
 8000a1c:	4680      	mov	r8, r0
 8000a1e:	e03d      	b.n	8000a9c <cbvprintf+0x5c0>
		switch (conv->specifier) {
 8000a20:	3863      	subs	r0, #99	; 0x63
 8000a22:	2815      	cmp	r0, #21
 8000a24:	d886      	bhi.n	8000934 <cbvprintf+0x458>
 8000a26:	a201      	add	r2, pc, #4	; (adr r2, 8000a2c <cbvprintf+0x550>)
 8000a28:	f852 f020 	ldr.w	pc, [r2, r0, lsl #2]
 8000a2c:	08000aad 	.word	0x08000aad
 8000a30:	08000b11 	.word	0x08000b11
 8000a34:	08000935 	.word	0x08000935
 8000a38:	08000935 	.word	0x08000935
 8000a3c:	08000935 	.word	0x08000935
 8000a40:	08000935 	.word	0x08000935
 8000a44:	08000b11 	.word	0x08000b11
 8000a48:	08000935 	.word	0x08000935
 8000a4c:	08000935 	.word	0x08000935
 8000a50:	08000935 	.word	0x08000935
 8000a54:	08000935 	.word	0x08000935
 8000a58:	08000b6b 	.word	0x08000b6b
 8000a5c:	08000b39 	.word	0x08000b39
 8000a60:	08000b3d 	.word	0x08000b3d
 8000a64:	08000935 	.word	0x08000935
 8000a68:	08000935 	.word	0x08000935
 8000a6c:	08000a85 	.word	0x08000a85
 8000a70:	08000935 	.word	0x08000935
 8000a74:	08000b39 	.word	0x08000b39
 8000a78:	08000935 	.word	0x08000935
 8000a7c:	08000935 	.word	0x08000935
 8000a80:	08000b39 	.word	0x08000b39
			if (precision >= 0) {
 8000a84:	f1b8 0f00 	cmp.w	r8, #0
			bps = (const char *)value->ptr;
 8000a88:	f8dd a028 	ldr.w	sl, [sp, #40]	; 0x28
			if (precision >= 0) {
 8000a8c:	db0a      	blt.n	8000aa4 <cbvprintf+0x5c8>
				len = strnlen(bps, precision);
 8000a8e:	4641      	mov	r1, r8
 8000a90:	4650      	mov	r0, sl
 8000a92:	f002 fd5d 	bl	8003550 <strnlen>
			bpe = bps + len;
 8000a96:	eb0a 0800 	add.w	r8, sl, r0
		char sign = 0;
 8000a9a:	2600      	movs	r6, #0
		if (bps == NULL) {
 8000a9c:	f1ba 0f00 	cmp.w	sl, #0
 8000aa0:	d10c      	bne.n	8000abc <cbvprintf+0x5e0>
 8000aa2:	e747      	b.n	8000934 <cbvprintf+0x458>
				len = strlen(bps);
 8000aa4:	4650      	mov	r0, sl
 8000aa6:	f002 fd4c 	bl	8003542 <strlen>
 8000aaa:	e7f4      	b.n	8000a96 <cbvprintf+0x5ba>
			buf[0] = CHAR_IS_SIGNED ? value->sint : value->uint;
 8000aac:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8000aae:	f88d 3010 	strb.w	r3, [sp, #16]
			break;
 8000ab2:	2600      	movs	r6, #0
			bps = buf;
 8000ab4:	f10d 0a10 	add.w	sl, sp, #16
			bpe = buf + 1;
 8000ab8:	f10d 0811 	add.w	r8, sp, #17
		size_t nj_len = (bpe - bps);
 8000abc:	eba8 030a 	sub.w	r3, r8, sl
		if (sign != 0) {
 8000ac0:	b106      	cbz	r6, 8000ac4 <cbvprintf+0x5e8>
			nj_len += 1U;
 8000ac2:	3301      	adds	r3, #1
		if (conv->altform_0c) {
 8000ac4:	f89d 2032 	ldrb.w	r2, [sp, #50]	; 0x32
 8000ac8:	06d0      	lsls	r0, r2, #27
 8000aca:	d568      	bpl.n	8000b9e <cbvprintf+0x6c2>
			nj_len += 2U;
 8000acc:	3302      	adds	r3, #2
		if (conv->pad_fp) {
 8000ace:	0652      	lsls	r2, r2, #25
		nj_len += conv->pad0_value;
 8000ad0:	990d      	ldr	r1, [sp, #52]	; 0x34
			nj_len += conv->pad0_pre_exp;
 8000ad2:	bf48      	it	mi
 8000ad4:	9a0e      	ldrmi	r2, [sp, #56]	; 0x38
		nj_len += conv->pad0_value;
 8000ad6:	440b      	add	r3, r1
			nj_len += conv->pad0_pre_exp;
 8000ad8:	bf48      	it	mi
 8000ada:	189b      	addmi	r3, r3, r2
		if (width > 0) {
 8000adc:	f1b9 0f00 	cmp.w	r9, #0
 8000ae0:	dd76      	ble.n	8000bd0 <cbvprintf+0x6f4>
			if (!conv->flag_dash) {
 8000ae2:	f89d 2030 	ldrb.w	r2, [sp, #48]	; 0x30
			width -= (int)nj_len;
 8000ae6:	eba9 0903 	sub.w	r9, r9, r3
			if (!conv->flag_dash) {
 8000aea:	f3c2 0380 	ubfx	r3, r2, #2, #1
 8000aee:	9303      	str	r3, [sp, #12]
 8000af0:	0753      	lsls	r3, r2, #29
 8000af2:	d46d      	bmi.n	8000bd0 <cbvprintf+0x6f4>
				if (conv->flag_zero) {
 8000af4:	0650      	lsls	r0, r2, #25
 8000af6:	d561      	bpl.n	8000bbc <cbvprintf+0x6e0>
					if (sign != 0) {
 8000af8:	b146      	cbz	r6, 8000b0c <cbvprintf+0x630>
						OUTC(sign);
 8000afa:	9b02      	ldr	r3, [sp, #8]
 8000afc:	4659      	mov	r1, fp
 8000afe:	4630      	mov	r0, r6
 8000b00:	4798      	blx	r3
 8000b02:	2800      	cmp	r0, #0
 8000b04:	db57      	blt.n	8000bb6 <cbvprintf+0x6da>
						sign = 0;
 8000b06:	9b03      	ldr	r3, [sp, #12]
						OUTC(sign);
 8000b08:	3501      	adds	r5, #1
						sign = 0;
 8000b0a:	461e      	mov	r6, r3
					pad = '0';
 8000b0c:	2330      	movs	r3, #48	; 0x30
 8000b0e:	e056      	b.n	8000bbe <cbvprintf+0x6e2>
			if (conv->flag_plus) {
 8000b10:	071e      	lsls	r6, r3, #28
 8000b12:	d40f      	bmi.n	8000b34 <cbvprintf+0x658>
				sign = ' ';
 8000b14:	f013 0610 	ands.w	r6, r3, #16
 8000b18:	bf18      	it	ne
 8000b1a:	2620      	movne	r6, #32
			sint = value->sint;
 8000b1c:	e9dd 230a 	ldrd	r2, r3, [sp, #40]	; 0x28
			if (sint < 0) {
 8000b20:	2b00      	cmp	r3, #0
 8000b22:	f6bf af5f 	bge.w	80009e4 <cbvprintf+0x508>
				value->uint = (uint_value_type)-sint;
 8000b26:	4252      	negs	r2, r2
 8000b28:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
 8000b2c:	e9cd 230a 	strd	r2, r3, [sp, #40]	; 0x28
				sign = '-';
 8000b30:	262d      	movs	r6, #45	; 0x2d
 8000b32:	e757      	b.n	80009e4 <cbvprintf+0x508>
				sign = '+';
 8000b34:	262b      	movs	r6, #43	; 0x2b
 8000b36:	e7f1      	b.n	8000b1c <cbvprintf+0x640>
		switch (conv->specifier) {
 8000b38:	2600      	movs	r6, #0
 8000b3a:	e753      	b.n	80009e4 <cbvprintf+0x508>
			if (value->ptr != NULL) {
 8000b3c:	980a      	ldr	r0, [sp, #40]	; 0x28
 8000b3e:	b340      	cbz	r0, 8000b92 <cbvprintf+0x6b6>
				bps = encode_uint((uintptr_t)value->ptr, conv,
 8000b40:	f10d 0326 	add.w	r3, sp, #38	; 0x26
 8000b44:	9300      	str	r3, [sp, #0]
 8000b46:	aa0c      	add	r2, sp, #48	; 0x30
 8000b48:	ab04      	add	r3, sp, #16
 8000b4a:	2100      	movs	r1, #0
 8000b4c:	f002 fc28 	bl	80033a0 <encode_uint>
				conv->altform_0c = true;
 8000b50:	f8bd 3032 	ldrh.w	r3, [sp, #50]	; 0x32
 8000b54:	f003 03ef 	and.w	r3, r3, #239	; 0xef
 8000b58:	f443 43f0 	orr.w	r3, r3, #30720	; 0x7800
 8000b5c:	f043 0310 	orr.w	r3, r3, #16
				bps = encode_uint((uintptr_t)value->ptr, conv,
 8000b60:	4682      	mov	sl, r0
				conv->altform_0c = true;
 8000b62:	f8ad 3032 	strh.w	r3, [sp, #50]	; 0x32
		char sign = 0;
 8000b66:	2600      	movs	r6, #0
				goto prec_int_pad0;
 8000b68:	e746      	b.n	80009f8 <cbvprintf+0x51c>
				store_count(conv, value->ptr, count);
 8000b6a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
	switch ((enum length_mod_enum)conv->length_mod) {
 8000b6c:	2907      	cmp	r1, #7
 8000b6e:	f63f aee1 	bhi.w	8000934 <cbvprintf+0x458>
 8000b72:	e8df f001 	tbb	[pc, r1]
 8000b76:	040c      	.short	0x040c
 8000b78:	08080c06 	.word	0x08080c06
 8000b7c:	0c0c      	.short	0x0c0c
		*(signed char *)dp = (signed char)count;
 8000b7e:	701d      	strb	r5, [r3, #0]
		break;
 8000b80:	e6d8      	b.n	8000934 <cbvprintf+0x458>
		*(short *)dp = (short)count;
 8000b82:	801d      	strh	r5, [r3, #0]
		break;
 8000b84:	e6d6      	b.n	8000934 <cbvprintf+0x458>
		*(intmax_t *)dp = (intmax_t)count;
 8000b86:	17ea      	asrs	r2, r5, #31
 8000b88:	e9c3 5200 	strd	r5, r2, [r3]
		break;
 8000b8c:	e6d2      	b.n	8000934 <cbvprintf+0x458>
		*(ptrdiff_t *)dp = (ptrdiff_t)count;
 8000b8e:	601d      	str	r5, [r3, #0]
		break;
 8000b90:	e6d0      	b.n	8000934 <cbvprintf+0x458>
			bps = "(nil)";
 8000b92:	f8df a0c8 	ldr.w	sl, [pc, #200]	; 8000c5c <cbvprintf+0x780>
 8000b96:	4606      	mov	r6, r0
			bpe = bps + 5;
 8000b98:	f10a 0805 	add.w	r8, sl, #5
 8000b9c:	e78e      	b.n	8000abc <cbvprintf+0x5e0>
		} else if (conv->altform_0) {
 8000b9e:	0711      	lsls	r1, r2, #28
			nj_len += 1U;
 8000ba0:	bf48      	it	mi
 8000ba2:	3301      	addmi	r3, #1
 8000ba4:	e793      	b.n	8000ace <cbvprintf+0x5f2>
					OUTC(pad);
 8000ba6:	4618      	mov	r0, r3
 8000ba8:	9303      	str	r3, [sp, #12]
 8000baa:	4659      	mov	r1, fp
 8000bac:	9b02      	ldr	r3, [sp, #8]
 8000bae:	4798      	blx	r3
 8000bb0:	2800      	cmp	r0, #0
 8000bb2:	9b03      	ldr	r3, [sp, #12]
 8000bb4:	da04      	bge.n	8000bc0 <cbvprintf+0x6e4>
#undef OUTS
#undef OUTC
}
 8000bb6:	b011      	add	sp, #68	; 0x44
 8000bb8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
				char pad = ' ';
 8000bbc:	2320      	movs	r3, #32
 8000bbe:	444d      	add	r5, r9
 8000bc0:	464a      	mov	r2, r9
				while (width-- > 0) {
 8000bc2:	2a00      	cmp	r2, #0
 8000bc4:	eba5 0109 	sub.w	r1, r5, r9
 8000bc8:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
 8000bcc:	dceb      	bgt.n	8000ba6 <cbvprintf+0x6ca>
 8000bce:	460d      	mov	r5, r1
		if (sign != 0) {
 8000bd0:	b136      	cbz	r6, 8000be0 <cbvprintf+0x704>
			OUTC(sign);
 8000bd2:	9b02      	ldr	r3, [sp, #8]
 8000bd4:	4659      	mov	r1, fp
 8000bd6:	4630      	mov	r0, r6
 8000bd8:	4798      	blx	r3
 8000bda:	2800      	cmp	r0, #0
 8000bdc:	dbeb      	blt.n	8000bb6 <cbvprintf+0x6da>
 8000bde:	3501      	adds	r5, #1
			if (conv->altform_0c | conv->altform_0) {
 8000be0:	f89d 3032 	ldrb.w	r3, [sp, #50]	; 0x32
 8000be4:	06d9      	lsls	r1, r3, #27
 8000be6:	d401      	bmi.n	8000bec <cbvprintf+0x710>
 8000be8:	071a      	lsls	r2, r3, #28
 8000bea:	d506      	bpl.n	8000bfa <cbvprintf+0x71e>
				OUTC('0');
 8000bec:	9b02      	ldr	r3, [sp, #8]
 8000bee:	4659      	mov	r1, fp
 8000bf0:	2030      	movs	r0, #48	; 0x30
 8000bf2:	4798      	blx	r3
 8000bf4:	2800      	cmp	r0, #0
 8000bf6:	dbde      	blt.n	8000bb6 <cbvprintf+0x6da>
 8000bf8:	3501      	adds	r5, #1
			if (conv->altform_0c) {
 8000bfa:	f89d 3032 	ldrb.w	r3, [sp, #50]	; 0x32
 8000bfe:	06db      	lsls	r3, r3, #27
 8000c00:	d507      	bpl.n	8000c12 <cbvprintf+0x736>
				OUTC(conv->specifier);
 8000c02:	f89d 0033 	ldrb.w	r0, [sp, #51]	; 0x33
 8000c06:	9b02      	ldr	r3, [sp, #8]
 8000c08:	4659      	mov	r1, fp
 8000c0a:	4798      	blx	r3
 8000c0c:	2800      	cmp	r0, #0
 8000c0e:	dbd2      	blt.n	8000bb6 <cbvprintf+0x6da>
 8000c10:	3501      	adds	r5, #1
			while (pad_len-- > 0) {
 8000c12:	9e0d      	ldr	r6, [sp, #52]	; 0x34
 8000c14:	442e      	add	r6, r5
 8000c16:	1b73      	subs	r3, r6, r5
 8000c18:	2b00      	cmp	r3, #0
 8000c1a:	dc16      	bgt.n	8000c4a <cbvprintf+0x76e>
			OUTS(bps, bpe);
 8000c1c:	9802      	ldr	r0, [sp, #8]
 8000c1e:	4643      	mov	r3, r8
 8000c20:	4652      	mov	r2, sl
 8000c22:	4659      	mov	r1, fp
 8000c24:	f002 fc02 	bl	800342c <outs>
 8000c28:	2800      	cmp	r0, #0
 8000c2a:	dbc4      	blt.n	8000bb6 <cbvprintf+0x6da>
 8000c2c:	4405      	add	r5, r0
		while (width > 0) {
 8000c2e:	44a9      	add	r9, r5
 8000c30:	eba9 0305 	sub.w	r3, r9, r5
 8000c34:	2b00      	cmp	r3, #0
 8000c36:	f77f ae7d 	ble.w	8000934 <cbvprintf+0x458>
			OUTC(' ');
 8000c3a:	9b02      	ldr	r3, [sp, #8]
 8000c3c:	4659      	mov	r1, fp
 8000c3e:	2020      	movs	r0, #32
 8000c40:	4798      	blx	r3
 8000c42:	2800      	cmp	r0, #0
 8000c44:	dbb7      	blt.n	8000bb6 <cbvprintf+0x6da>
 8000c46:	3501      	adds	r5, #1
			--width;
 8000c48:	e7f2      	b.n	8000c30 <cbvprintf+0x754>
				OUTC('0');
 8000c4a:	9b02      	ldr	r3, [sp, #8]
 8000c4c:	4659      	mov	r1, fp
 8000c4e:	2030      	movs	r0, #48	; 0x30
 8000c50:	4798      	blx	r3
 8000c52:	2800      	cmp	r0, #0
 8000c54:	dbaf      	blt.n	8000bb6 <cbvprintf+0x6da>
 8000c56:	3501      	adds	r5, #1
 8000c58:	e7dd      	b.n	8000c16 <cbvprintf+0x73a>
 8000c5a:	bf00      	nop
 8000c5c:	08004369 	.word	0x08004369

08000c60 <st_stm32f4_init>:
  * @rmtoll FLASH_ACR    ICEN          LL_FLASH_EnableInstCache
  * @retval None
  */
__STATIC_INLINE void LL_FLASH_EnableInstCache(void)
{
  SET_BIT(FLASH->ACR, FLASH_ACR_ICEN);
 8000c60:	4b0c      	ldr	r3, [pc, #48]	; (8000c94 <st_stm32f4_init+0x34>)
 8000c62:	681a      	ldr	r2, [r3, #0]
 8000c64:	f442 7200 	orr.w	r2, r2, #512	; 0x200
 8000c68:	601a      	str	r2, [r3, #0]
  * @rmtoll FLASH_ACR    DCEN          LL_FLASH_EnableDataCache
  * @retval None
  */
__STATIC_INLINE void LL_FLASH_EnableDataCache(void)
{
  SET_BIT(FLASH->ACR, FLASH_ACR_DCEN);
 8000c6a:	681a      	ldr	r2, [r3, #0]
 8000c6c:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8000c70:	601a      	str	r2, [r3, #0]
		:
		: "memory");
#elif defined(CONFIG_ARMV7_M_ARMV8_M_MAINLINE)
	unsigned int tmp;

	__asm__ volatile(
 8000c72:	f04f 0210 	mov.w	r2, #16
 8000c76:	f3ef 8311 	mrs	r3, BASEPRI
 8000c7a:	f382 8812 	msr	BASEPRI_MAX, r2
 8000c7e:	f3bf 8f6f 	isb	sy
	__asm__ volatile(
		"cpsie i;"
		"isb"
		: : : "memory");
#elif defined(CONFIG_ARMV7_M_ARMV8_M_MAINLINE)
	__asm__ volatile(
 8000c82:	f383 8811 	msr	BASEPRI, r3
 8000c86:	f3bf 8f6f 	isb	sy

	irq_unlock(key);

	/* Update CMSIS SystemCoreClock variable (HCLK) */
	/* At reset, system core clock is set to 16 MHz from HSI */
	SystemCoreClock = 16000000;
 8000c8a:	4b03      	ldr	r3, [pc, #12]	; (8000c98 <st_stm32f4_init+0x38>)
 8000c8c:	4a03      	ldr	r2, [pc, #12]	; (8000c9c <st_stm32f4_init+0x3c>)
 8000c8e:	601a      	str	r2, [r3, #0]

	return 0;
}
 8000c90:	2000      	movs	r0, #0
 8000c92:	4770      	bx	lr
 8000c94:	40023c00 	.word	0x40023c00
 8000c98:	20000030 	.word	0x20000030
 8000c9c:	00f42400 	.word	0x00f42400

08000ca0 <log_generic>:
	return args;
}

void log_generic(struct log_msg_ids src_level, const char *fmt, va_list ap,
		 enum log_strdup_action strdup_action)
{
 8000ca0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	if (k_is_user_context()) {
		log_generic_from_user(src_level, fmt, ap);
	} else if (IS_ENABLED(CONFIG_LOG_IMMEDIATE) &&
	    (!IS_ENABLED(CONFIG_LOG_FRONTEND))) {
		struct log_backend const *backend;
		uint32_t timestamp = timestamp_func();
 8000ca4:	4b11      	ldr	r3, [pc, #68]	; (8000cec <log_generic+0x4c>)
 *
 * @return Number of backends.
 */
static inline int log_backend_count_get(void)
{
	return __log_backends_end - __log_backends_start;
 8000ca6:	4c12      	ldr	r4, [pc, #72]	; (8000cf0 <log_generic+0x50>)
 8000ca8:	681b      	ldr	r3, [r3, #0]
 8000caa:	4d12      	ldr	r5, [pc, #72]	; (8000cf4 <log_generic+0x54>)
{
 8000cac:	b085      	sub	sp, #20
 8000cae:	4680      	mov	r8, r0
 8000cb0:	4689      	mov	r9, r1
 8000cb2:	4617      	mov	r7, r2
		uint32_t timestamp = timestamp_func();
 8000cb4:	4798      	blx	r3
 8000cb6:	1b2d      	subs	r5, r5, r4
 8000cb8:	4682      	mov	sl, r0
 8000cba:	112d      	asrs	r5, r5, #4

		for (int i = 0; i < log_backend_count_get(); i++) {
 8000cbc:	f04f 0b00 	mov.w	fp, #0
 8000cc0:	455d      	cmp	r5, fp
 8000cc2:	dc02      	bgt.n	8000cca <log_generic+0x2a>
				mask &= ~BIT(idx);
			}
		}
		log_n(fmt, args, nargs, src_level);
	}
}
 8000cc4:	b005      	add	sp, #20
 8000cc6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 */
static inline bool log_backend_is_active(
				const struct log_backend *const backend)
{
	__ASSERT_NO_MSG(backend != NULL);
	return backend->cb->active;
 8000cca:	6863      	ldr	r3, [r4, #4]
			if (log_backend_is_active(backend) && runtime_ok) {
 8000ccc:	795b      	ldrb	r3, [r3, #5]
 8000cce:	b14b      	cbz	r3, 8000ce4 <log_generic+0x44>
	if (backend->api->put_sync_string) {
 8000cd0:	6823      	ldr	r3, [r4, #0]
				va_copy(ap_tmp, ap);
 8000cd2:	9703      	str	r7, [sp, #12]
 8000cd4:	689e      	ldr	r6, [r3, #8]
 8000cd6:	b12e      	cbz	r6, 8000ce4 <log_generic+0x44>
		backend->api->put_sync_string(backend, src_level,
 8000cd8:	9700      	str	r7, [sp, #0]
 8000cda:	464b      	mov	r3, r9
 8000cdc:	4652      	mov	r2, sl
 8000cde:	4641      	mov	r1, r8
 8000ce0:	4620      	mov	r0, r4
 8000ce2:	47b0      	blx	r6
		for (int i = 0; i < log_backend_count_get(); i++) {
 8000ce4:	f10b 0b01 	add.w	fp, fp, #1
 8000ce8:	3410      	adds	r4, #16
 8000cea:	e7e9      	b.n	8000cc0 <log_generic+0x20>
 8000cec:	20000004 	.word	0x20000004
 8000cf0:	08004068 	.word	0x08004068
 8000cf4:	08004078 	.word	0x08004078

08000cf8 <log_core_init>:

void log_core_init(void)
{
	uint32_t freq;

	panic_mode = false;
 8000cf8:	4a05      	ldr	r2, [pc, #20]	; (8000d10 <log_core_init+0x18>)
 8000cfa:	2300      	movs	r3, #0
 8000cfc:	7013      	strb	r3, [r2, #0]
	dropped_cnt = 0;
 8000cfe:	4a05      	ldr	r2, [pc, #20]	; (8000d14 <log_core_init+0x1c>)
 8000d00:	6013      	str	r3, [r2, #0]

	/* Set default timestamp. */
	if (sys_clock_hw_cycles_per_sec() > 1000000) {
		timestamp_func = default_lf_get_timestamp;
 8000d02:	4b05      	ldr	r3, [pc, #20]	; (8000d18 <log_core_init+0x20>)
 8000d04:	4a05      	ldr	r2, [pc, #20]	; (8000d1c <log_core_init+0x24>)
 8000d06:	601a      	str	r2, [r3, #0]
	} else {
		timestamp_func = default_get_timestamp;
		freq = sys_clock_hw_cycles_per_sec();
	}

	log_output_timestamp_freq_set(freq);
 8000d08:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8000d0c:	f000 ba18 	b.w	8001140 <log_output_timestamp_freq_set>
 8000d10:	2000036d 	.word	0x2000036d
 8000d14:	20000188 	.word	0x20000188
 8000d18:	20000004 	.word	0x20000004
 8000d1c:	0800345f 	.word	0x0800345f

08000d20 <log_init>:
		z_log_runtime_filters_init();
	}
}

void log_init(void)
{
 8000d20:	b570      	push	{r4, r5, r6, lr}
 *
 * @return Previous value of @a target.
 */
static inline atomic_val_t atomic_add(atomic_t *target, atomic_val_t value)
{
	return __atomic_fetch_add(target, value, __ATOMIC_SEQ_CST);
 8000d22:	4b12      	ldr	r3, [pc, #72]	; (8000d6c <log_init+0x4c>)
 8000d24:	f3bf 8f5b 	dmb	ish
 8000d28:	e853 5f00 	ldrex	r5, [r3]
 8000d2c:	1c6a      	adds	r2, r5, #1
 8000d2e:	e843 2100 	strex	r1, r2, [r3]
 8000d32:	2900      	cmp	r1, #0
 8000d34:	d1f8      	bne.n	8000d28 <log_init+0x8>
 8000d36:	f3bf 8f5b 	dmb	ish

	if (IS_ENABLED(CONFIG_LOG_FRONTEND)) {
		log_frontend_init();
	}

	if (atomic_inc(&initialized) != 0) {
 8000d3a:	b92d      	cbnz	r5, 8000d48 <log_init+0x28>
	return __log_backends_end - __log_backends_start;
 8000d3c:	4c0c      	ldr	r4, [pc, #48]	; (8000d70 <log_init+0x50>)
 8000d3e:	4e0d      	ldr	r6, [pc, #52]	; (8000d74 <log_init+0x54>)
 8000d40:	1b36      	subs	r6, r6, r4
 8000d42:	1136      	asrs	r6, r6, #4
		return;
	}

	/* Assign ids to backends. */
	for (i = 0; i < log_backend_count_get(); i++) {
 8000d44:	42b5      	cmp	r5, r6
 8000d46:	db00      	blt.n	8000d4a <log_init+0x2a>
			log_backend_enable(backend,
					   backend->cb->ctx,
					   CONFIG_LOG_MAX_LEVEL);
		}
	}
}
 8000d48:	bd70      	pop	{r4, r5, r6, pc}
		if (backend->autostart) {
 8000d4a:	7b23      	ldrb	r3, [r4, #12]
 8000d4c:	b153      	cbz	r3, 8000d64 <log_init+0x44>
			if (backend->api->init != NULL) {
 8000d4e:	6823      	ldr	r3, [r4, #0]
 8000d50:	699b      	ldr	r3, [r3, #24]
 8000d52:	b10b      	cbz	r3, 8000d58 <log_init+0x38>
				backend->api->init(backend);
 8000d54:	4620      	mov	r0, r4
 8000d56:	4798      	blx	r3
			log_backend_enable(backend,
 8000d58:	6863      	ldr	r3, [r4, #4]
 8000d5a:	2204      	movs	r2, #4
 8000d5c:	6819      	ldr	r1, [r3, #0]
 8000d5e:	4620      	mov	r0, r4
 8000d60:	f000 f83e 	bl	8000de0 <log_backend_enable>
	for (i = 0; i < log_backend_count_get(); i++) {
 8000d64:	3501      	adds	r5, #1
 8000d66:	3410      	adds	r4, #16
 8000d68:	e7ec      	b.n	8000d44 <log_init+0x24>
 8000d6a:	bf00      	nop
 8000d6c:	2000018c 	.word	0x2000018c
 8000d70:	08004068 	.word	0x08004068
 8000d74:	08004078 	.word	0x08004078

08000d78 <z_impl_log_panic>:

	return 0;
}

void z_impl_log_panic(void)
{
 8000d78:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	struct log_backend const *backend;

	if (panic_mode) {
 8000d7a:	4f0c      	ldr	r7, [pc, #48]	; (8000dac <z_impl_log_panic+0x34>)
 8000d7c:	783d      	ldrb	r5, [r7, #0]
 8000d7e:	b94d      	cbnz	r5, 8000d94 <z_impl_log_panic+0x1c>
 8000d80:	4c0b      	ldr	r4, [pc, #44]	; (8000db0 <z_impl_log_panic+0x38>)
 8000d82:	4e0c      	ldr	r6, [pc, #48]	; (8000db4 <z_impl_log_panic+0x3c>)
	}

	/* If panic happened early logger might not be initialized.
	 * Forcing initialization of the logger and auto-starting backends.
	 */
	log_init();
 8000d84:	f7ff ffcc 	bl	8000d20 <log_init>
 8000d88:	1b36      	subs	r6, r6, r4
 8000d8a:	1136      	asrs	r6, r6, #4

	for (int i = 0; i < log_backend_count_get(); i++) {
 8000d8c:	42b5      	cmp	r5, r6
 8000d8e:	db02      	blt.n	8000d96 <z_impl_log_panic+0x1e>
		/* Flush */
		while (log_process(false) == true) {
		}
	}

	panic_mode = true;
 8000d90:	2301      	movs	r3, #1
 8000d92:	703b      	strb	r3, [r7, #0]
}
 8000d94:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	return backend->cb->active;
 8000d96:	6863      	ldr	r3, [r4, #4]
		if (log_backend_is_active(backend)) {
 8000d98:	795b      	ldrb	r3, [r3, #5]
 8000d9a:	b11b      	cbz	r3, 8000da4 <z_impl_log_panic+0x2c>
	backend->api->panic(backend);
 8000d9c:	6823      	ldr	r3, [r4, #0]
 8000d9e:	4620      	mov	r0, r4
 8000da0:	695b      	ldr	r3, [r3, #20]
 8000da2:	4798      	blx	r3
	for (int i = 0; i < log_backend_count_get(); i++) {
 8000da4:	3501      	adds	r5, #1
 8000da6:	3410      	adds	r4, #16
 8000da8:	e7f0      	b.n	8000d8c <z_impl_log_panic+0x14>
 8000daa:	bf00      	nop
 8000dac:	2000036d 	.word	0x2000036d
 8000db0:	08004068 	.word	0x08004068
 8000db4:	08004078 	.word	0x08004078

08000db8 <z_log_notify_backend_enabled>:
	 */
	if (IS_ENABLED(CONFIG_LOG_PROCESS_THREAD) && !backend_attached) {
		k_sem_give(&log_process_thread_sem);
	}

	backend_attached = true;
 8000db8:	4b01      	ldr	r3, [pc, #4]	; (8000dc0 <z_log_notify_backend_enabled+0x8>)
 8000dba:	2201      	movs	r2, #1
 8000dbc:	701a      	strb	r2, [r3, #0]
}
 8000dbe:	4770      	bx	lr
 8000dc0:	2000036c 	.word	0x2000036c

08000dc4 <log_source_name_get>:
 * @return Source ID.
 */
static inline uint32_t log_const_source_id(
				const struct log_source_const_data *data)
{
	return ((uint8_t *)data - (uint8_t *)__log_const_start)/
 8000dc4:	4a04      	ldr	r2, [pc, #16]	; (8000dd8 <log_source_name_get+0x14>)
 8000dc6:	4b05      	ldr	r3, [pc, #20]	; (8000ddc <log_source_name_get+0x18>)
 8000dc8:	1a9b      	subs	r3, r3, r2
	return log_sources_count();
}

const char *log_source_name_get(uint32_t domain_id, uint32_t src_id)
{
	return src_id < log_sources_count() ? log_name_get(src_id) : NULL;
 8000dca:	ebb1 0fd3 	cmp.w	r1, r3, lsr #3
	return __log_const_start[source_id].name;
 8000dce:	bf34      	ite	cc
 8000dd0:	f852 0031 	ldrcc.w	r0, [r2, r1, lsl #3]
 8000dd4:	2000      	movcs	r0, #0
}
 8000dd6:	4770      	bx	lr
 8000dd8:	08004048 	.word	0x08004048
 8000ddc:	08004068 	.word	0x08004068

08000de0 <log_backend_enable>:
			uint32_t level)
{
	/* As first slot in filtering mask is reserved, backend ID has offset.*/
	uint32_t id = LOG_FILTER_FIRST_BACKEND_SLOT_IDX;

	id += backend - log_backend_get(0);
 8000de0:	4a05      	ldr	r2, [pc, #20]	; (8000df8 <log_backend_enable+0x18>)
	backend->cb->id = id;
 8000de2:	6843      	ldr	r3, [r0, #4]
 8000de4:	1a80      	subs	r0, r0, r2
 8000de6:	1100      	asrs	r0, r0, #4
 8000de8:	3001      	adds	r0, #1
	backend->cb->active = true;
 8000dea:	2201      	movs	r2, #1

	log_backend_id_set(backend, id);
 8000dec:	7118      	strb	r0, [r3, #4]
	backend->cb->ctx = ctx;
 8000dee:	6019      	str	r1, [r3, #0]
	backend->cb->active = true;
 8000df0:	715a      	strb	r2, [r3, #5]
	backend_filter_set(backend, level);
	log_backend_activate(backend, ctx);

	z_log_notify_backend_enabled();
 8000df2:	f7ff bfe1 	b.w	8000db8 <z_log_notify_backend_enabled>
 8000df6:	bf00      	nop
 8000df8:	08004068 	.word	0x08004068

08000dfc <print_formatted>:
	return 0;
}

static int print_formatted(const struct log_output *output,
			   const char *fmt, ...)
{
 8000dfc:	b40e      	push	{r1, r2, r3}
 8000dfe:	b503      	push	{r0, r1, lr}
 8000e00:	ab03      	add	r3, sp, #12
 8000e02:	4601      	mov	r1, r0
 8000e04:	f853 2b04 	ldr.w	r2, [r3], #4
	va_list args;
	int length = 0;

	va_start(args, fmt);
	length = cbvprintf(out_func, (void *)output, fmt, args);
 8000e08:	4804      	ldr	r0, [pc, #16]	; (8000e1c <print_formatted+0x20>)
	va_start(args, fmt);
 8000e0a:	9301      	str	r3, [sp, #4]
	length = cbvprintf(out_func, (void *)output, fmt, args);
 8000e0c:	f7ff fb66 	bl	80004dc <cbvprintf>
	va_end(args);

	return length;
}
 8000e10:	b002      	add	sp, #8
 8000e12:	f85d eb04 	ldr.w	lr, [sp], #4
 8000e16:	b003      	add	sp, #12
 8000e18:	4770      	bx	lr
 8000e1a:	bf00      	nop
 8000e1c:	0800349b 	.word	0x0800349b

08000e20 <prefix_print>:
}

static uint32_t prefix_print(const struct log_output *output,
			 uint32_t flags, bool func_on, uint32_t timestamp, uint8_t level,
			 uint8_t domain_id, int16_t source_id)
{
 8000e20:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000e24:	b087      	sub	sp, #28
			"<%d>1 ",
			facility * 8 +
			level_to_rfc5424_severity(level));
	}

	if (stamp) {
 8000e26:	f011 0602 	ands.w	r6, r1, #2
{
 8000e2a:	9205      	str	r2, [sp, #20]
 8000e2c:	f89d 8040 	ldrb.w	r8, [sp, #64]	; 0x40
 8000e30:	f9bd 9048 	ldrsh.w	r9, [sp, #72]	; 0x48
 8000e34:	4607      	mov	r7, r0
 8000e36:	461a      	mov	r2, r3
	bool colors_on = flags & LOG_OUTPUT_FLAG_COLORS;
 8000e38:	f001 0a01 	and.w	sl, r1, #1
	bool level_on = flags & LOG_OUTPUT_FLAG_LEVEL;
 8000e3c:	f001 0508 	and.w	r5, r1, #8
	if (stamp) {
 8000e40:	d006      	beq.n	8000e50 <prefix_print+0x30>
	if (!format) {
 8000e42:	f011 0f44 	tst.w	r1, #68	; 0x44
 8000e46:	d138      	bne.n	8000eba <prefix_print+0x9a>
		length = print_formatted(output, "[%08lu] ", timestamp);
 8000e48:	4933      	ldr	r1, [pc, #204]	; (8000f18 <prefix_print+0xf8>)
 8000e4a:	f7ff ffd7 	bl	8000dfc <print_formatted>
		length += timestamp_print(output, flags, timestamp);
 8000e4e:	4606      	mov	r6, r0
	if (color) {
 8000e50:	f1ba 0f00 	cmp.w	sl, #0
 8000e54:	d00a      	beq.n	8000e6c <prefix_print+0x4c>
		const char *log_color = start && (colors[level] != NULL) ?
 8000e56:	4b31      	ldr	r3, [pc, #196]	; (8000f1c <prefix_print+0xfc>)
		print_formatted(output, "%s", log_color);
 8000e58:	4931      	ldr	r1, [pc, #196]	; (8000f20 <prefix_print+0x100>)
		const char *log_color = start && (colors[level] != NULL) ?
 8000e5a:	f853 2028 	ldr.w	r2, [r3, r8, lsl #2]
		print_formatted(output, "%s", log_color);
 8000e5e:	4b31      	ldr	r3, [pc, #196]	; (8000f24 <prefix_print+0x104>)
 8000e60:	4638      	mov	r0, r7
 8000e62:	2a00      	cmp	r2, #0
 8000e64:	bf08      	it	eq
 8000e66:	461a      	moveq	r2, r3
 8000e68:	f7ff ffc8 	bl	8000dfc <print_formatted>
	if (level_on) {
 8000e6c:	b13d      	cbz	r5, 8000e7e <prefix_print+0x5e>
		total += print_formatted(output, "<%s> ", severity[level]);
 8000e6e:	4b2e      	ldr	r3, [pc, #184]	; (8000f28 <prefix_print+0x108>)
 8000e70:	492e      	ldr	r1, [pc, #184]	; (8000f2c <prefix_print+0x10c>)
 8000e72:	f853 2028 	ldr.w	r2, [r3, r8, lsl #2]
 8000e76:	4638      	mov	r0, r7
 8000e78:	f7ff ffc0 	bl	8000dfc <print_formatted>
 8000e7c:	4605      	mov	r5, r0
	if (source_id >= 0) {
 8000e7e:	f1b9 0f00 	cmp.w	r9, #0
 8000e82:	db16      	blt.n	8000eb2 <prefix_print+0x92>
		total += print_formatted(output,
 8000e84:	9b05      	ldr	r3, [sp, #20]
 8000e86:	2b00      	cmp	r3, #0
 8000e88:	d043      	beq.n	8000f12 <prefix_print+0xf2>
				((1 << level) & LOG_FUNCTION_PREFIX_MASK)) ?
 8000e8a:	2301      	movs	r3, #1
 8000e8c:	fa03 f808 	lsl.w	r8, r3, r8
		total += print_formatted(output,
 8000e90:	4b27      	ldr	r3, [pc, #156]	; (8000f30 <prefix_print+0x110>)
 8000e92:	4c28      	ldr	r4, [pc, #160]	; (8000f34 <prefix_print+0x114>)
 8000e94:	f018 0f10 	tst.w	r8, #16
 8000e98:	bf18      	it	ne
 8000e9a:	461c      	movne	r4, r3
 8000e9c:	4649      	mov	r1, r9
 8000e9e:	f89d 0044 	ldrb.w	r0, [sp, #68]	; 0x44
 8000ea2:	f7ff ff8f 	bl	8000dc4 <log_source_name_get>
 8000ea6:	4621      	mov	r1, r4
 8000ea8:	4602      	mov	r2, r0
 8000eaa:	4638      	mov	r0, r7
 8000eac:	f7ff ffa6 	bl	8000dfc <print_formatted>
 8000eb0:	4405      	add	r5, r0
	length += ids_print(output, level_on, func_on,
			domain_id, source_id, level);


	return length;
}
 8000eb2:	19a8      	adds	r0, r5, r6
 8000eb4:	b007      	add	sp, #28
 8000eb6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
	} else if (freq != 0U) {
 8000eba:	4b1f      	ldr	r3, [pc, #124]	; (8000f38 <prefix_print+0x118>)
 8000ebc:	6819      	ldr	r1, [r3, #0]
 8000ebe:	b331      	cbz	r1, 8000f0e <prefix_print+0xee>
		timestamp /= timestamp_div;
 8000ec0:	4b1e      	ldr	r3, [pc, #120]	; (8000f3c <prefix_print+0x11c>)
 8000ec2:	f44f 6661 	mov.w	r6, #3600	; 0xe10
 8000ec6:	681b      	ldr	r3, [r3, #0]
 8000ec8:	fbb2 f3f3 	udiv	r3, r2, r3
		ms = (remainder * 1000U) / freq;
 8000ecc:	f44f 7b7a 	mov.w	fp, #1000	; 0x3e8
		total_seconds = timestamp / freq;
 8000ed0:	fbb3 f4f1 	udiv	r4, r3, r1
		seconds -= hours * 3600U;
 8000ed4:	fbb4 f2f6 	udiv	r2, r4, r6
 8000ed8:	fb06 4612 	mls	r6, r6, r2, r4
		remainder = timestamp % freq;
 8000edc:	fb01 3414 	mls	r4, r1, r4, r3
		ms = (remainder * 1000U) / freq;
 8000ee0:	fb0b f404 	mul.w	r4, fp, r4
		mins = seconds / 60U;
 8000ee4:	f04f 0c3c 	mov.w	ip, #60	; 0x3c
		us = (1000 * (remainder * 1000U - (ms * freq))) / freq;
 8000ee8:	fbb4 fef1 	udiv	lr, r4, r1
		mins = seconds / 60U;
 8000eec:	fbb6 f3fc 	udiv	r3, r6, ip
		us = (1000 * (remainder * 1000U - (ms * freq))) / freq;
 8000ef0:	fb01 441e 	mls	r4, r1, lr, r4
			length = print_formatted(output,
 8000ef4:	fb0c 6613 	mls	r6, ip, r3, r6
		us = (1000 * (remainder * 1000U - (ms * freq))) / freq;
 8000ef8:	fb0b f404 	mul.w	r4, fp, r4
			length = print_formatted(output,
 8000efc:	9600      	str	r6, [sp, #0]
		us = (1000 * (remainder * 1000U - (ms * freq))) / freq;
 8000efe:	fbb4 f1f1 	udiv	r1, r4, r1
			length = print_formatted(output,
 8000f02:	e9cd e101 	strd	lr, r1, [sp, #4]
 8000f06:	490e      	ldr	r1, [pc, #56]	; (8000f40 <prefix_print+0x120>)
 8000f08:	f7ff ff78 	bl	8000dfc <print_formatted>
 8000f0c:	e79f      	b.n	8000e4e <prefix_print+0x2e>
		length = 0;
 8000f0e:	4608      	mov	r0, r1
 8000f10:	e79d      	b.n	8000e4e <prefix_print+0x2e>
		total += print_formatted(output,
 8000f12:	4c08      	ldr	r4, [pc, #32]	; (8000f34 <prefix_print+0x114>)
 8000f14:	e7c2      	b.n	8000e9c <prefix_print+0x7c>
 8000f16:	bf00      	nop
 8000f18:	08004381 	.word	0x08004381
 8000f1c:	08004108 	.word	0x08004108
 8000f20:	080043a6 	.word	0x080043a6
 8000f24:	08004373 	.word	0x08004373
 8000f28:	0800411c 	.word	0x0800411c
 8000f2c:	080043a9 	.word	0x080043a9
 8000f30:	0800437d 	.word	0x0800437d
 8000f34:	08004378 	.word	0x08004378
 8000f38:	20000190 	.word	0x20000190
 8000f3c:	20000194 	.word	0x20000194
 8000f40:	0800438a 	.word	0x0800438a

08000f44 <hexdump_line_print>:
{
 8000f44:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8000f48:	461d      	mov	r5, r3
 8000f4a:	9b08      	ldr	r3, [sp, #32]
 8000f4c:	4617      	mov	r7, r2
	if ((flags & LOG_OUTPUT_FLAG_CRLF_NONE) != 0U) {
 8000f4e:	06da      	lsls	r2, r3, #27
{
 8000f50:	4604      	mov	r4, r0
 8000f52:	460e      	mov	r6, r1
	if ((flags & LOG_OUTPUT_FLAG_CRLF_NONE) != 0U) {
 8000f54:	d405      	bmi.n	8000f62 <hexdump_line_print+0x1e>
	if ((flags & LOG_OUTPUT_FLAG_CRLF_LFONLY) != 0U) {
 8000f56:	0699      	lsls	r1, r3, #26
		print_formatted(ctx, "\n");
 8000f58:	bf4c      	ite	mi
 8000f5a:	492a      	ldrmi	r1, [pc, #168]	; (8001004 <hexdump_line_print+0xc0>)
		print_formatted(ctx, "\r\n");
 8000f5c:	492a      	ldrpl	r1, [pc, #168]	; (8001008 <hexdump_line_print+0xc4>)
 8000f5e:	f7ff ff4d 	bl	8000dfc <print_formatted>
		print_formatted(output, " ");
 8000f62:	f8df 90a8 	ldr.w	r9, [pc, #168]	; 800100c <hexdump_line_print+0xc8>
{
 8000f66:	f04f 0800 	mov.w	r8, #0
	for (int i = 0; i < prefix_offset; i++) {
 8000f6a:	45a8      	cmp	r8, r5
 8000f6c:	db2a      	blt.n	8000fc4 <hexdump_line_print+0x80>
			print_formatted(output, "   ");
 8000f6e:	f8df 80a0 	ldr.w	r8, [pc, #160]	; 8001010 <hexdump_line_print+0xcc>
			print_formatted(output, "%02x ", data[i]);
 8000f72:	f8df 90a0 	ldr.w	r9, [pc, #160]	; 8001014 <hexdump_line_print+0xd0>
			print_formatted(output, " ");
 8000f76:	f8df a094 	ldr.w	sl, [pc, #148]	; 800100c <hexdump_line_print+0xc8>
	for (int i = 0; i < HEXDUMP_BYTES_IN_LINE; i++) {
 8000f7a:	2500      	movs	r5, #0
		if (i < length) {
 8000f7c:	42bd      	cmp	r5, r7
 8000f7e:	d22f      	bcs.n	8000fe0 <hexdump_line_print+0x9c>
			print_formatted(output, "%02x ", data[i]);
 8000f80:	5d72      	ldrb	r2, [r6, r5]
 8000f82:	4649      	mov	r1, r9
 8000f84:	4620      	mov	r0, r4
 8000f86:	f7ff ff39 	bl	8000dfc <print_formatted>
	for (int i = 0; i < HEXDUMP_BYTES_IN_LINE; i++) {
 8000f8a:	3501      	adds	r5, #1
 8000f8c:	2d10      	cmp	r5, #16
 8000f8e:	d120      	bne.n	8000fd2 <hexdump_line_print+0x8e>
	print_formatted(output, "|");
 8000f90:	4921      	ldr	r1, [pc, #132]	; (8001018 <hexdump_line_print+0xd4>)
			print_formatted(output, " ");
 8000f92:	f8df 8078 	ldr.w	r8, [pc, #120]	; 800100c <hexdump_line_print+0xc8>
			print_formatted(output, "%c",
 8000f96:	f8df 9084 	ldr.w	r9, [pc, #132]	; 800101c <hexdump_line_print+0xd8>
	print_formatted(output, "|");
 8000f9a:	4620      	mov	r0, r4
 8000f9c:	f7ff ff2e 	bl	8000dfc <print_formatted>
	for (int i = 0; i < HEXDUMP_BYTES_IN_LINE; i++) {
 8000fa0:	2500      	movs	r5, #0
		if (i < length) {
 8000fa2:	42af      	cmp	r7, r5
 8000fa4:	d928      	bls.n	8000ff8 <hexdump_line_print+0xb4>
			char c = (char)data[i];
 8000fa6:	5d72      	ldrb	r2, [r6, r5]
	return (int)((((unsigned)c) >= ' ') &&
 8000fa8:	f1a2 0320 	sub.w	r3, r2, #32
 8000fac:	2b5f      	cmp	r3, #95	; 0x5f
			print_formatted(output, "%c",
 8000fae:	bf28      	it	cs
 8000fb0:	222e      	movcs	r2, #46	; 0x2e
 8000fb2:	4649      	mov	r1, r9
 8000fb4:	4620      	mov	r0, r4
 8000fb6:	f7ff ff21 	bl	8000dfc <print_formatted>
	for (int i = 0; i < HEXDUMP_BYTES_IN_LINE; i++) {
 8000fba:	3501      	adds	r5, #1
 8000fbc:	2d10      	cmp	r5, #16
 8000fbe:	d114      	bne.n	8000fea <hexdump_line_print+0xa6>
}
 8000fc0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
		print_formatted(output, " ");
 8000fc4:	4649      	mov	r1, r9
 8000fc6:	4620      	mov	r0, r4
 8000fc8:	f7ff ff18 	bl	8000dfc <print_formatted>
	for (int i = 0; i < prefix_offset; i++) {
 8000fcc:	f108 0801 	add.w	r8, r8, #1
 8000fd0:	e7cb      	b.n	8000f6a <hexdump_line_print+0x26>
		if (i > 0 && !(i % 8)) {
 8000fd2:	076a      	lsls	r2, r5, #29
 8000fd4:	d1d2      	bne.n	8000f7c <hexdump_line_print+0x38>
			print_formatted(output, " ");
 8000fd6:	4651      	mov	r1, sl
 8000fd8:	4620      	mov	r0, r4
 8000fda:	f7ff ff0f 	bl	8000dfc <print_formatted>
 8000fde:	e7cd      	b.n	8000f7c <hexdump_line_print+0x38>
			print_formatted(output, "   ");
 8000fe0:	4641      	mov	r1, r8
 8000fe2:	4620      	mov	r0, r4
 8000fe4:	f7ff ff0a 	bl	8000dfc <print_formatted>
 8000fe8:	e7cf      	b.n	8000f8a <hexdump_line_print+0x46>
		if (i > 0 && !(i % 8)) {
 8000fea:	076b      	lsls	r3, r5, #29
 8000fec:	d1d9      	bne.n	8000fa2 <hexdump_line_print+0x5e>
			print_formatted(output, " ");
 8000fee:	4641      	mov	r1, r8
 8000ff0:	4620      	mov	r0, r4
 8000ff2:	f7ff ff03 	bl	8000dfc <print_formatted>
 8000ff6:	e7d4      	b.n	8000fa2 <hexdump_line_print+0x5e>
			print_formatted(output, " ");
 8000ff8:	4641      	mov	r1, r8
 8000ffa:	4620      	mov	r0, r4
 8000ffc:	f7ff fefe 	bl	8000dfc <print_formatted>
 8001000:	e7db      	b.n	8000fba <hexdump_line_print+0x76>
 8001002:	bf00      	nop
 8001004:	080043b0 	.word	0x080043b0
 8001008:	080043af 	.word	0x080043af
 800100c:	080043ba 	.word	0x080043ba
 8001010:	080043b8 	.word	0x080043b8
 8001014:	080043b2 	.word	0x080043b2
 8001018:	080043bc 	.word	0x080043bc
 800101c:	080043be 	.word	0x080043be

08001020 <postfix_print>:

static void postfix_print(const struct log_output *output,
			  uint32_t flags, uint8_t level)
{
 8001020:	b538      	push	{r3, r4, r5, lr}
 8001022:	460c      	mov	r4, r1
	if (color) {
 8001024:	07e1      	lsls	r1, r4, #31
{
 8001026:	4605      	mov	r5, r0
	if (color) {
 8001028:	d503      	bpl.n	8001032 <postfix_print+0x12>
		print_formatted(output, "%s", log_color);
 800102a:	4a08      	ldr	r2, [pc, #32]	; (800104c <postfix_print+0x2c>)
 800102c:	4908      	ldr	r1, [pc, #32]	; (8001050 <postfix_print+0x30>)
 800102e:	f7ff fee5 	bl	8000dfc <print_formatted>
	if ((flags & LOG_OUTPUT_FLAG_CRLF_NONE) != 0U) {
 8001032:	06e2      	lsls	r2, r4, #27
 8001034:	d408      	bmi.n	8001048 <postfix_print+0x28>
	if ((flags & LOG_OUTPUT_FLAG_CRLF_LFONLY) != 0U) {
 8001036:	06a3      	lsls	r3, r4, #26
		print_formatted(ctx, "\r\n");
 8001038:	4628      	mov	r0, r5
		print_formatted(ctx, "\n");
 800103a:	bf4c      	ite	mi
 800103c:	4905      	ldrmi	r1, [pc, #20]	; (8001054 <postfix_print+0x34>)
		print_formatted(ctx, "\r\n");
 800103e:	4906      	ldrpl	r1, [pc, #24]	; (8001058 <postfix_print+0x38>)
	color_postfix(output, (flags & LOG_OUTPUT_FLAG_COLORS),
			      level);
	newline_print(output, flags);
}
 8001040:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
		print_formatted(ctx, "\r\n");
 8001044:	f7ff beda 	b.w	8000dfc <print_formatted>
}
 8001048:	bd38      	pop	{r3, r4, r5, pc}
 800104a:	bf00      	nop
 800104c:	08004373 	.word	0x08004373
 8001050:	080043a6 	.word	0x080043a6
 8001054:	080043b0 	.word	0x080043b0
 8001058:	080043af 	.word	0x080043af

0800105c <log_output_string>:
}

void log_output_string(const struct log_output *output,
		       struct log_msg_ids src_level, uint32_t timestamp,
		       const char *fmt, va_list ap, uint32_t flags)
{
 800105c:	e92d 41ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
		log_output_string_syst_process(output,
				src_level, fmt, ap, flags);
		return;
	}

	if (!raw_string) {
 8001060:	f011 0607 	ands.w	r6, r1, #7
{
 8001064:	e9dd 870a 	ldrd	r8, r7, [sp, #40]	; 0x28
 8001068:	4605      	mov	r5, r0
 800106a:	461c      	mov	r4, r3
	if (!raw_string) {
 800106c:	d00b      	beq.n	8001086 <log_output_string+0x2a>
		prefix_print(output, flags, true, timestamp,
 800106e:	f3c1 1389 	ubfx	r3, r1, #6, #10
 8001072:	f3c1 01c2 	ubfx	r1, r1, #3, #3
 8001076:	e9cd 6100 	strd	r6, r1, [sp]
 800107a:	9302      	str	r3, [sp, #8]
 800107c:	4639      	mov	r1, r7
 800107e:	4613      	mov	r3, r2
 8001080:	2201      	movs	r2, #1
 8001082:	f7ff fecd 	bl	8000e20 <prefix_print>
				level, domain_id, source_id);
	}

	length = cbvprintf(out_func, (void *)output, fmt, ap);
 8001086:	480f      	ldr	r0, [pc, #60]	; (80010c4 <log_output_string+0x68>)
 8001088:	4643      	mov	r3, r8
 800108a:	4622      	mov	r2, r4
 800108c:	4629      	mov	r1, r5
 800108e:	f7ff fa25 	bl	80004dc <cbvprintf>

	(void)length;

	if (raw_string) {
 8001092:	b98e      	cbnz	r6, 80010b8 <log_output_string+0x5c>
 8001094:	3c01      	subs	r4, #1
	while (*fmt != '\0') {
 8001096:	4633      	mov	r3, r6
 8001098:	f814 6f01 	ldrb.w	r6, [r4, #1]!
 800109c:	2e00      	cmp	r6, #0
 800109e:	d1fa      	bne.n	8001096 <log_output_string+0x3a>
		/* add \r if string ends with newline. */
		if (ends_with_newline(fmt)) {
 80010a0:	2b0a      	cmp	r3, #10
 80010a2:	d103      	bne.n	80010ac <log_output_string+0x50>
			print_formatted(output, "\r");
 80010a4:	4908      	ldr	r1, [pc, #32]	; (80010c8 <log_output_string+0x6c>)
 80010a6:	4628      	mov	r0, r5
 80010a8:	f7ff fea8 	bl	8000dfc <print_formatted>
		}
	} else {
		postfix_print(output, flags, level);
	}

	log_output_flush(output);
 80010ac:	4628      	mov	r0, r5
}
 80010ae:	b004      	add	sp, #16
 80010b0:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
	log_output_flush(output);
 80010b4:	f002 ba0a 	b.w	80034cc <log_output_flush>
		postfix_print(output, flags, level);
 80010b8:	4632      	mov	r2, r6
 80010ba:	4639      	mov	r1, r7
 80010bc:	4628      	mov	r0, r5
 80010be:	f7ff ffaf 	bl	8001020 <postfix_print>
 80010c2:	e7f3      	b.n	80010ac <log_output_string+0x50>
 80010c4:	0800349b 	.word	0x0800349b
 80010c8:	080043c1 	.word	0x080043c1

080010cc <log_output_hexdump>:

void log_output_hexdump(const struct log_output *output,
			     struct log_msg_ids src_level, uint32_t timestamp,
			     const char *metadata, const uint8_t *data,
			     uint32_t length, uint32_t flags)
{
 80010cc:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
 80010d0:	9e0e      	ldr	r6, [sp, #56]	; 0x38
 80010d2:	4698      	mov	r8, r3
	uint32_t prefix_offset;
	uint8_t level = (uint8_t)src_level.level;
 80010d4:	f001 0907 	and.w	r9, r1, #7
		log_output_hexdump_syst_process(output,
				src_level, data, length, flags);
		return;
	}

	prefix_offset = prefix_print(output, flags, true, timestamp,
 80010d8:	f3c1 1389 	ubfx	r3, r1, #6, #10
 80010dc:	f3c1 01c2 	ubfx	r1, r1, #3, #3
 80010e0:	e9cd 9100 	strd	r9, r1, [sp]
 80010e4:	9302      	str	r3, [sp, #8]
 80010e6:	4631      	mov	r1, r6
 80010e8:	4613      	mov	r3, r2
 80010ea:	2201      	movs	r2, #1
{
 80010ec:	4604      	mov	r4, r0
 80010ee:	e9dd 750c 	ldrd	r7, r5, [sp, #48]	; 0x30
	prefix_offset = prefix_print(output, flags, true, timestamp,
 80010f2:	f7ff fe95 	bl	8000e20 <prefix_print>
				     level, domain_id, source_id);

	/* Print metadata */
	print_formatted(output, "%s", metadata);
 80010f6:	4911      	ldr	r1, [pc, #68]	; (800113c <log_output_hexdump+0x70>)
	prefix_offset = prefix_print(output, flags, true, timestamp,
 80010f8:	4682      	mov	sl, r0
	print_formatted(output, "%s", metadata);
 80010fa:	4642      	mov	r2, r8
 80010fc:	4620      	mov	r0, r4
 80010fe:	f7ff fe7d 	bl	8000dfc <print_formatted>

	while (length != 0U) {
 8001102:	b955      	cbnz	r5, 800111a <log_output_hexdump+0x4e>

		data += part_len;
		length -= part_len;
	}

	postfix_print(output, flags, level);
 8001104:	4620      	mov	r0, r4
 8001106:	464a      	mov	r2, r9
 8001108:	4631      	mov	r1, r6
 800110a:	f7ff ff89 	bl	8001020 <postfix_print>
	log_output_flush(output);
 800110e:	4620      	mov	r0, r4
}
 8001110:	b004      	add	sp, #16
 8001112:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	log_output_flush(output);
 8001116:	f002 b9d9 	b.w	80034cc <log_output_flush>
		uint32_t part_len = length > HEXDUMP_BYTES_IN_LINE ?
 800111a:	2d10      	cmp	r5, #16
 800111c:	46a8      	mov	r8, r5
 800111e:	bf28      	it	cs
 8001120:	f04f 0810 	movcs.w	r8, #16
		hexdump_line_print(output, data, part_len,
 8001124:	4639      	mov	r1, r7
 8001126:	9600      	str	r6, [sp, #0]
 8001128:	4653      	mov	r3, sl
 800112a:	4642      	mov	r2, r8
 800112c:	4620      	mov	r0, r4
 800112e:	f7ff ff09 	bl	8000f44 <hexdump_line_print>
		data += part_len;
 8001132:	4447      	add	r7, r8
		length -= part_len;
 8001134:	eba5 0508 	sub.w	r5, r5, r8
 8001138:	e7e3      	b.n	8001102 <log_output_hexdump+0x36>
 800113a:	bf00      	nop
 800113c:	080043a6 	.word	0x080043a6

08001140 <log_output_timestamp_freq_set>:
		     output->control_block->ctx);
}

void log_output_timestamp_freq_set(uint32_t frequency)
{
	timestamp_div = 1U;
 8001140:	4a08      	ldr	r2, [pc, #32]	; (8001164 <log_output_timestamp_freq_set+0x24>)
{
 8001142:	b510      	push	{r4, lr}
	timestamp_div = 1U;
 8001144:	2301      	movs	r3, #1
	/* There is no point to have frequency higher than 1MHz (ns are not
	 * printed) and too high frequency leads to overflows in calculations.
	 */
	while (frequency > 1000000) {
 8001146:	4c08      	ldr	r4, [pc, #32]	; (8001168 <log_output_timestamp_freq_set+0x28>)
	timestamp_div = 1U;
 8001148:	6013      	str	r3, [r2, #0]
	while (frequency > 1000000) {
 800114a:	2100      	movs	r1, #0
 800114c:	42a0      	cmp	r0, r4
 800114e:	d804      	bhi.n	800115a <log_output_timestamp_freq_set+0x1a>
 8001150:	b101      	cbz	r1, 8001154 <log_output_timestamp_freq_set+0x14>
 8001152:	6013      	str	r3, [r2, #0]
		frequency /= 2U;
		timestamp_div *= 2U;
	}

	freq = frequency;
 8001154:	4b05      	ldr	r3, [pc, #20]	; (800116c <log_output_timestamp_freq_set+0x2c>)
 8001156:	6018      	str	r0, [r3, #0]
}
 8001158:	bd10      	pop	{r4, pc}
		frequency /= 2U;
 800115a:	0840      	lsrs	r0, r0, #1
		timestamp_div *= 2U;
 800115c:	005b      	lsls	r3, r3, #1
 800115e:	2101      	movs	r1, #1
 8001160:	e7f4      	b.n	800114c <log_output_timestamp_freq_set+0xc>
 8001162:	bf00      	nop
 8001164:	20000194 	.word	0x20000194
 8001168:	000f4240 	.word	0x000f4240
 800116c:	20000190 	.word	0x20000190

08001170 <char_out>:
static const char LOG_HEX_SEP[10] = "##ZLOGV1##";

static const struct device *uart_dev;

static int char_out(uint8_t *data, size_t length, void *ctx)
{
 8001170:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
		/* lower 8-bit */
		x = data[i] & 0x0FU;
		(void)hex2char(x, &c);
		uart_poll_out(uart_dev, c);
#else
		uart_poll_out(uart_dev, data[i]);
 8001172:	4f07      	ldr	r7, [pc, #28]	; (8001190 <char_out+0x20>)
{
 8001174:	460d      	mov	r5, r1
 8001176:	4604      	mov	r4, r0
 8001178:	1846      	adds	r6, r0, r1
	for (size_t i = 0; i < length; i++) {
 800117a:	42b4      	cmp	r4, r6
 800117c:	d101      	bne.n	8001182 <char_out+0x12>
#endif
	}

	return length;
}
 800117e:	4628      	mov	r0, r5
 8001180:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
		uart_poll_out(uart_dev, data[i]);
 8001182:	6838      	ldr	r0, [r7, #0]
 8001184:	f814 1b01 	ldrb.w	r1, [r4], #1
						unsigned char out_char)
{
	const struct uart_driver_api *api =
		(const struct uart_driver_api *)dev->api;

	api->poll_out(dev, out_char);
 8001188:	6883      	ldr	r3, [r0, #8]
 800118a:	685b      	ldr	r3, [r3, #4]
 800118c:	4798      	blx	r3
	for (size_t i = 0; i < length; i++) {
 800118e:	e7f4      	b.n	800117a <char_out+0xa>
 8001190:	200001ac 	.word	0x200001ac

08001194 <log_backend_uart_init>:
	}
}

static void log_backend_uart_init(struct log_backend const *const backend)
{
	uart_dev = DEVICE_DT_GET(DT_CHOSEN(zephyr_console));
 8001194:	4b01      	ldr	r3, [pc, #4]	; (800119c <log_backend_uart_init+0x8>)
 8001196:	4a02      	ldr	r2, [pc, #8]	; (80011a0 <log_backend_uart_init+0xc>)
 8001198:	601a      	str	r2, [r3, #0]
		 */
		for (int i = 0; i < sizeof(LOG_HEX_SEP); i++) {
			uart_poll_out(uart_dev, LOG_HEX_SEP[i]);
		}
	}
}
 800119a:	4770      	bx	lr
 800119c:	200001ac 	.word	0x200001ac
 80011a0:	08003d28 	.word	0x08003d28

080011a4 <panic>:
 * @param output	Log output instance.
 */
static inline void
log_backend_std_panic(const struct log_output *const output)
{
	log_output_flush(output);
 80011a4:	4801      	ldr	r0, [pc, #4]	; (80011ac <panic+0x8>)
 80011a6:	f002 b991 	b.w	80034cc <log_output_flush>
 80011aa:	bf00      	nop
 80011ac:	0800414c 	.word	0x0800414c

080011b0 <sync_hexdump>:
}

static void sync_hexdump(const struct log_backend *const backend,
			 struct log_msg_ids src_level, uint32_t timestamp,
			 const char *metadata, const uint8_t *data, uint32_t length)
{
 80011b0:	b51f      	push	{r0, r1, r2, r3, r4, lr}
		 * by another one, lock context for whole log processing.
		 */
		key = irq_lock();
	}

	log_output_hexdump(output, src_level, timestamp,
 80011b2:	200f      	movs	r0, #15
 80011b4:	9002      	str	r0, [sp, #8]
 80011b6:	9807      	ldr	r0, [sp, #28]
 80011b8:	9001      	str	r0, [sp, #4]
 80011ba:	9806      	ldr	r0, [sp, #24]
 80011bc:	9000      	str	r0, [sp, #0]
 80011be:	4803      	ldr	r0, [pc, #12]	; (80011cc <sync_hexdump+0x1c>)
 80011c0:	f7ff ff84 	bl	80010cc <log_output_hexdump>
	uint32_t flag = IS_ENABLED(CONFIG_LOG_BACKEND_UART_SYST_ENABLE) ?
		LOG_OUTPUT_FLAG_FORMAT_SYST : 0;

	log_backend_std_sync_hexdump(&log_output_uart, flag, src_level,
				     timestamp, metadata, data, length);
}
 80011c4:	b005      	add	sp, #20
 80011c6:	f85d fb04 	ldr.w	pc, [sp], #4
 80011ca:	bf00      	nop
 80011cc:	0800414c 	.word	0x0800414c

080011d0 <sync_string>:
{
 80011d0:	b507      	push	{r0, r1, r2, lr}
	log_output_string(output, src_level, timestamp, fmt, ap, flags);
 80011d2:	200f      	movs	r0, #15
 80011d4:	9001      	str	r0, [sp, #4]
 80011d6:	9804      	ldr	r0, [sp, #16]
 80011d8:	9000      	str	r0, [sp, #0]
 80011da:	4803      	ldr	r0, [pc, #12]	; (80011e8 <sync_string+0x18>)
 80011dc:	f7ff ff3e 	bl	800105c <log_output_string>
}
 80011e0:	b003      	add	sp, #12
 80011e2:	f85d fb04 	ldr.w	pc, [sp], #4
 80011e6:	bf00      	nop
 80011e8:	0800414c 	.word	0x0800414c

080011ec <stm32_pin_configure>:
static int stm32_pin_configure(uint32_t pin, uint32_t func, uint32_t altf)
{
	const struct device *port_device;
	int ret = 0;

	if (STM32_PORT(pin) >= STM32_PORTS_MAX) {
 80011ec:	28af      	cmp	r0, #175	; 0xaf
{
 80011ee:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80011f0:	4617      	mov	r7, r2
 80011f2:	4604      	mov	r4, r0
 80011f4:	460e      	mov	r6, r1
	if (STM32_PORT(pin) >= STM32_PORTS_MAX) {
 80011f6:	ea4f 1210 	mov.w	r2, r0, lsr #4
 80011fa:	d814      	bhi.n	8001226 <stm32_pin_configure+0x3a>
		return -EINVAL;
	}

	port_device = gpio_ports[STM32_PORT(pin)];
 80011fc:	4b0b      	ldr	r3, [pc, #44]	; (800122c <stm32_pin_configure+0x40>)
 80011fe:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]

	if ((port_device == NULL) || (!device_is_ready(port_device))) {
 8001202:	b915      	cbnz	r5, 800120a <stm32_pin_configure+0x1e>
		return -ENODEV;
 8001204:	f06f 0012 	mvn.w	r0, #18
#ifdef CONFIG_PM_DEVICE_RUNTIME
	ret = pm_device_put(port_device);
#endif

	return ret;
}
 8001208:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 *
 * @return a non-positive integer as documented in device_usable_check().
 */
static inline int z_device_usable_check(const struct device *dev)
{
	return z_device_ready(dev) ? 0 : -ENODEV;
 800120a:	4628      	mov	r0, r5
 800120c:	f002 fbe0 	bl	80039d0 <z_device_ready>
 8001210:	2800      	cmp	r0, #0
 8001212:	d0f7      	beq.n	8001204 <stm32_pin_configure+0x18>
	gpio_stm32_configure(port_device, STM32_PIN(pin), func, altf);
 8001214:	4628      	mov	r0, r5
 8001216:	463b      	mov	r3, r7
 8001218:	4632      	mov	r2, r6
 800121a:	f004 010f 	and.w	r1, r4, #15
 800121e:	f002 fa8f 	bl	8003740 <gpio_stm32_configure>
	return ret;
 8001222:	2000      	movs	r0, #0
 8001224:	e7f0      	b.n	8001208 <stm32_pin_configure+0x1c>
		return -EINVAL;
 8001226:	f06f 0015 	mvn.w	r0, #21
 800122a:	e7ed      	b.n	8001208 <stm32_pin_configure+0x1c>
 800122c:	0800415c 	.word	0x0800415c

08001230 <z_arm_cpu_idle_init>:
 * void z_arm_cpu_idle_init(void);
 */

SECTION_FUNC(TEXT, z_arm_cpu_idle_init)
#if defined(CONFIG_CPU_CORTEX_M)
	ldr	r1, =_SCB_SCR
 8001230:	4901      	ldr	r1, [pc, #4]	; (8001238 <z_arm_cpu_idle_init+0x8>)
	movs.n	r2, #_SCR_INIT_BITS
 8001232:	2210      	movs	r2, #16
	str	r2, [r1]
 8001234:	600a      	str	r2, [r1, #0]
#endif
	bx	lr
 8001236:	4770      	bx	lr
	ldr	r1, =_SCB_SCR
 8001238:	e000ed10 	.word	0xe000ed10

0800123c <arch_cpu_idle>:
	 * before entering low power state.
	 *
	 * Set PRIMASK before configuring BASEPRI to prevent interruption
	 * before wake-up.
	 */
	cpsid	i
 800123c:	b672      	cpsid	i

	/*
	 * Set wake-up interrupt priority to the lowest and synchronise to
	 * ensure that this is visible to the WFI instruction.
	 */
	eors.n	r0, r0
 800123e:	4040      	eors	r0, r0
	msr	BASEPRI, r0
 8001240:	f380 8811 	msr	BASEPRI, r0
	isb
 8001244:	f3bf 8f6f 	isb	sy

	/*
	 * Wait for all memory transactions to complete before entering low
	 * power state.
	 */
	dsb
 8001248:	f3bf 8f4f 	dsb	sy

	/* Enter low power state */
	wfi
 800124c:	bf30      	wfi

	/*
	 * Clear PRIMASK and flush instruction buffer to immediately service
	 * the wake-up interrupt.
	 */
	cpsie	i
 800124e:	b662      	cpsie	i
	isb
 8001250:	f3bf 8f6f 	isb	sy

	bx	lr
 8001254:	4770      	bx	lr
 8001256:	bf00      	nop

08001258 <z_arm_fatal_error>:
	LOG_ERR("Faulting instruction address (r15/pc): 0x%08x",
		esf->basic.pc);
}

void z_arm_fatal_error(unsigned int reason, const z_arch_esf_t *esf)
{
 8001258:	b573      	push	{r0, r1, r4, r5, r6, lr}
 800125a:	4606      	mov	r6, r0

	if (esf != NULL) {
 800125c:	460c      	mov	r4, r1
 800125e:	b301      	cbz	r1, 80012a2 <z_arm_fatal_error+0x4a>
	return ((uint8_t *)data - (uint8_t *)__log_const_start)/
 8001260:	4b13      	ldr	r3, [pc, #76]	; (80012b0 <z_arm_fatal_error+0x58>)
 8001262:	4d14      	ldr	r5, [pc, #80]	; (80012b4 <z_arm_fatal_error+0x5c>)
 8001264:	1aed      	subs	r5, r5, r3
 8001266:	08ed      	lsrs	r5, r5, #3
	LOG_ERR("r0/a1:  0x%08x  r1/a2:  0x%08x  r2/a3:  0x%08x",
 8001268:	688b      	ldr	r3, [r1, #8]
 800126a:	9300      	str	r3, [sp, #0]
 800126c:	01ad      	lsls	r5, r5, #6
 800126e:	f045 0501 	orr.w	r5, r5, #1
 8001272:	e9d1 2300 	ldrd	r2, r3, [r1]
 8001276:	4628      	mov	r0, r5
 8001278:	490f      	ldr	r1, [pc, #60]	; (80012b8 <z_arm_fatal_error+0x60>)
 800127a:	f002 f8fa 	bl	8003472 <log_string_sync>
	LOG_ERR("r3/a4:  0x%08x r12/ip:  0x%08x r14/lr:  0x%08x",
 800127e:	6963      	ldr	r3, [r4, #20]
 8001280:	9300      	str	r3, [sp, #0]
 8001282:	e9d4 2303 	ldrd	r2, r3, [r4, #12]
 8001286:	490d      	ldr	r1, [pc, #52]	; (80012bc <z_arm_fatal_error+0x64>)
 8001288:	4628      	mov	r0, r5
 800128a:	f002 f8f2 	bl	8003472 <log_string_sync>
	LOG_ERR(" xpsr:  0x%08x", esf->basic.xpsr);
 800128e:	69e2      	ldr	r2, [r4, #28]
 8001290:	490b      	ldr	r1, [pc, #44]	; (80012c0 <z_arm_fatal_error+0x68>)
 8001292:	4628      	mov	r0, r5
 8001294:	f002 f8ed 	bl	8003472 <log_string_sync>
	LOG_ERR("Faulting instruction address (r15/pc): 0x%08x",
 8001298:	69a2      	ldr	r2, [r4, #24]
 800129a:	490a      	ldr	r1, [pc, #40]	; (80012c4 <z_arm_fatal_error+0x6c>)
 800129c:	4628      	mov	r0, r5
 800129e:	f002 f8e8 	bl	8003472 <log_string_sync>
		esf_dump(esf);
	}
	z_fatal_error(reason, esf);
 80012a2:	4621      	mov	r1, r4
 80012a4:	4630      	mov	r0, r6
}
 80012a6:	b002      	add	sp, #8
 80012a8:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
	z_fatal_error(reason, esf);
 80012ac:	f001 ba6a 	b.w	8002784 <z_fatal_error>
 80012b0:	08004048 	.word	0x08004048
 80012b4:	08004058 	.word	0x08004058
 80012b8:	080043f4 	.word	0x080043f4
 80012bc:	08004423 	.word	0x08004423
 80012c0:	08004452 	.word	0x08004452
 80012c4:	08004461 	.word	0x08004461

080012c8 <arch_irq_enable>:
#define REG_FROM_IRQ(irq) (irq / NUM_IRQS_PER_REG)
#define BIT_FROM_IRQ(irq) (irq % NUM_IRQS_PER_REG)

void arch_irq_enable(unsigned int irq)
{
	NVIC_EnableIRQ((IRQn_Type)irq);
 80012c8:	b243      	sxtb	r3, r0
  \param [in]      IRQn  Device specific interrupt number.
  \note    IRQn must not be negative.
 */
__STATIC_INLINE void __NVIC_EnableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
 80012ca:	2b00      	cmp	r3, #0
 80012cc:	db08      	blt.n	80012e0 <arch_irq_enable+0x18>
  {
    __COMPILER_BARRIER();
    NVIC->ISER[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
 80012ce:	2201      	movs	r2, #1
 80012d0:	f000 001f 	and.w	r0, r0, #31
 80012d4:	fa02 f000 	lsl.w	r0, r2, r0
 80012d8:	095b      	lsrs	r3, r3, #5
 80012da:	4a02      	ldr	r2, [pc, #8]	; (80012e4 <arch_irq_enable+0x1c>)
 80012dc:	f842 0023 	str.w	r0, [r2, r3, lsl #2]
}
 80012e0:	4770      	bx	lr
 80012e2:	bf00      	nop
 80012e4:	e000e100 	.word	0xe000e100

080012e8 <z_arm_irq_priority_set>:
	 */
	__ASSERT(prio <= (BIT(NUM_IRQ_PRIO_BITS) - 1),
		 "invalid priority %d for %d irq! values must be less than %lu\n",
		 prio - _IRQ_PRIO_OFFSET, irq,
		 BIT(NUM_IRQ_PRIO_BITS) - (_IRQ_PRIO_OFFSET));
	NVIC_SetPriority((IRQn_Type)irq, prio);
 80012e8:	b243      	sxtb	r3, r0
  \param [in]  priority  Priority to set.
  \note    The priority cannot be set for every processor exception.
 */
__STATIC_INLINE void __NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if ((int32_t)(IRQn) >= 0)
 80012ea:	2b00      	cmp	r3, #0
  {
    NVIC->IP[((uint32_t)IRQn)]               = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
 80012ec:	bfa8      	it	ge
 80012ee:	f103 4360 	addge.w	r3, r3, #3758096384	; 0xe0000000
		prio += _IRQ_PRIO_OFFSET;
 80012f2:	f101 0101 	add.w	r1, r1, #1
  }
  else
  {
    SCB->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
 80012f6:	bfb8      	it	lt
 80012f8:	4b06      	ldrlt	r3, [pc, #24]	; (8001314 <z_arm_irq_priority_set+0x2c>)
    NVIC->IP[((uint32_t)IRQn)]               = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
 80012fa:	ea4f 1101 	mov.w	r1, r1, lsl #4
 80012fe:	bfac      	ite	ge
 8001300:	f503 4361 	addge.w	r3, r3, #57600	; 0xe100
    SCB->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
 8001304:	f000 000f 	andlt.w	r0, r0, #15
    NVIC->IP[((uint32_t)IRQn)]               = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
 8001308:	b2c9      	uxtb	r1, r1
    SCB->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
 800130a:	bfb4      	ite	lt
 800130c:	5419      	strblt	r1, [r3, r0]
    NVIC->IP[((uint32_t)IRQn)]               = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
 800130e:	f883 1300 	strbge.w	r1, [r3, #768]	; 0x300
}
 8001312:	4770      	bx	lr
 8001314:	e000ed14 	.word	0xe000ed14

08001318 <z_SysNmiOnReset>:
_ASM_FILE_PROLOGUE

GTEXT(z_SysNmiOnReset)

SECTION_FUNC(TEXT, z_SysNmiOnReset)
    wfi
 8001318:	bf30      	wfi
    b z_SysNmiOnReset
 800131a:	f7ff bffd 	b.w	8001318 <z_SysNmiOnReset>
 800131e:	bf00      	nop

08001320 <z_arm_prep_c>:

#define VECTOR_ADDRESS ((uintptr_t)_vector_start)

static inline void relocate_vector_table(void)
{
	SCB->VTOR = VECTOR_ADDRESS & SCB_VTOR_TBLOFF_Msk;
 8001320:	4a0f      	ldr	r2, [pc, #60]	; (8001360 <z_arm_prep_c+0x40>)
 * This routine prepares for the execution of and runs C code.
 *
 * @return N/A
 */
void z_arm_prep_c(void)
{
 8001322:	b508      	push	{r3, lr}
	SCB->VTOR = VECTOR_ADDRESS & SCB_VTOR_TBLOFF_Msk;
 8001324:	4b0f      	ldr	r3, [pc, #60]	; (8001364 <z_arm_prep_c+0x44>)
 8001326:	f022 027f 	bic.w	r2, r2, #127	; 0x7f
 800132a:	609a      	str	r2, [r3, #8]
  \details Acts as a special kind of Data Memory Barrier.
           It completes when all explicit memory accesses before this instruction complete.
 */
__STATIC_FORCEINLINE void __DSB(void)
{
  __ASM volatile ("dsb 0xF":::"memory");
 800132c:	f3bf 8f4f 	dsb	sy
  __ASM volatile ("isb 0xF":::"memory");
 8001330:	f3bf 8f6f 	isb	sy
	SCB->CPACR &= (~(CPACR_CP10_Msk | CPACR_CP11_Msk));
 8001334:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 8001338:	f422 0270 	bic.w	r2, r2, #15728640	; 0xf00000
 800133c:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 */
__STATIC_FORCEINLINE uint32_t __get_CONTROL(void)
{
  uint32_t result;

  __ASM volatile ("MRS %0, control" : "=r" (result) );
 8001340:	f3ef 8314 	mrs	r3, CONTROL
	__set_CONTROL(__get_CONTROL() & (~(CONTROL_FPCA_Msk)));
 8001344:	f023 0304 	bic.w	r3, r3, #4
  \details Writes the given value to the Control Register.
  \param [in]    control  Control Register value to set
 */
__STATIC_FORCEINLINE void __set_CONTROL(uint32_t control)
{
  __ASM volatile ("MSR control, %0" : : "r" (control) : "memory");
 8001348:	f383 8814 	msr	CONTROL, r3
  __ASM volatile ("isb 0xF":::"memory");
 800134c:	f3bf 8f6f 	isb	sy
	relocate_vector_table();
#if defined(CONFIG_CPU_HAS_FPU)
	z_arm_floating_point_init();
#endif
	z_bss_zero();
 8001350:	f001 faba 	bl	80028c8 <z_bss_zero>
	z_data_copy();
 8001354:	f001 fe9e 	bl	8003094 <z_data_copy>
#if defined(CONFIG_ARMV7_R) && defined(CONFIG_INIT_STACKS)
	z_arm_init_stacks();
#endif
	z_arm_interrupt_init();
 8001358:	f000 fb08 	bl	800196c <z_arm_interrupt_init>
	z_cstart();
 800135c:	f001 facc 	bl	80028f8 <z_cstart>
 8001360:	08000000 	.word	0x08000000
 8001364:	e000ed00 	.word	0xe000ed00

08001368 <arch_swap>:
 * as BASEPRI is not available.
 */
int arch_swap(unsigned int key)
{
	/* store off key and return value */
	_current->arch.basepri = key;
 8001368:	4a09      	ldr	r2, [pc, #36]	; (8001390 <arch_swap+0x28>)
	_current->arch.swap_return_value = _k_neg_eagain;
 800136a:	490a      	ldr	r1, [pc, #40]	; (8001394 <arch_swap+0x2c>)
	_current->arch.basepri = key;
 800136c:	6893      	ldr	r3, [r2, #8]
	_current->arch.swap_return_value = _k_neg_eagain;
 800136e:	6809      	ldr	r1, [r1, #0]
 8001370:	6799      	str	r1, [r3, #120]	; 0x78

#if defined(CONFIG_CPU_CORTEX_M)
	/* set pending bit to make sure we will take a PendSV exception */
	SCB->ICSR |= SCB_ICSR_PENDSVSET_Msk;
 8001372:	4909      	ldr	r1, [pc, #36]	; (8001398 <arch_swap+0x30>)
	_current->arch.basepri = key;
 8001374:	6758      	str	r0, [r3, #116]	; 0x74
	SCB->ICSR |= SCB_ICSR_PENDSVSET_Msk;
 8001376:	684b      	ldr	r3, [r1, #4]
 8001378:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
 800137c:	604b      	str	r3, [r1, #4]
 800137e:	2300      	movs	r3, #0
 8001380:	f383 8811 	msr	BASEPRI, r3
 8001384:	f3bf 8f6f 	isb	sy
#endif

	/* Context switch is performed here. Returning implies the
	 * thread has been context-switched-in again.
	 */
	return _current->arch.swap_return_value;
 8001388:	6893      	ldr	r3, [r2, #8]
}
 800138a:	6f98      	ldr	r0, [r3, #120]	; 0x78
 800138c:	4770      	bx	lr
 800138e:	bf00      	nop
 8001390:	20000338 	.word	0x20000338
 8001394:	0800433c 	.word	0x0800433c
 8001398:	e000ed00 	.word	0xe000ed00

0800139c <z_arm_pendsv>:
    pop {r0, lr}
#endif /* CONFIG_ARMV6_M_ARMV8_M_BASELINE */
#endif /* CONFIG_INSTRUMENT_THREAD_SWITCHING */

    /* load _kernel into r1 and current k_thread into r2 */
    ldr r1, =_kernel
 800139c:	4912      	ldr	r1, [pc, #72]	; (80013e8 <z_arm_pendsv+0x4c>)
    ldr r2, [r1, #_kernel_offset_to_current]
 800139e:	688a      	ldr	r2, [r1, #8]
    /* Store LSB of LR (EXC_RETURN) to the thread's 'mode' word. */
    strb lr, [r2, #_thread_offset_to_mode_exc_return]
#endif

    /* addr of callee-saved regs in thread in r0 */
    ldr r0, =_thread_offset_to_callee_saved
 80013a0:	f04f 0030 	mov.w	r0, #48	; 0x30
    add r0, r2
 80013a4:	4410      	add	r0, r2

    /* save callee-saved + psp in thread */
#if defined(CONFIG_CPU_CORTEX_M)
    mrs ip, PSP
 80013a6:	f3ef 8c09 	mrs	ip, PSP
    mov r6, r11
    mov r7, ip
    /* store r8-12 */
    stmea r0!, {r3-r7}
#elif defined(CONFIG_ARMV7_M_ARMV8_M_MAINLINE)
    stmia r0, {v1-v8, ip}
 80013aa:	e880 1ff0 	stmia.w	r0, {r4, r5, r6, r7, r8, r9, sl, fp, ip}

    /* Protect the kernel state while we play with the thread lists */
#if defined(CONFIG_ARMV6_M_ARMV8_M_BASELINE)
    cpsid i
#elif defined(CONFIG_ARMV7_M_ARMV8_M_MAINLINE)
    movs.n r0, #_EXC_IRQ_DEFAULT_PRIO
 80013ae:	2010      	movs	r0, #16
    msr BASEPRI_MAX, r0
 80013b0:	f380 8812 	msr	BASEPRI_MAX, r0
    isb /* Make the effect of disabling interrupts be realized immediately */
 80013b4:	f3bf 8f6f 	isb	sy
     * the new thread is context-switched in since all decisions
     * to pend PendSV have been taken with the current kernel
     * state and this is what we're handling currently.
     */
#if defined(CONFIG_CPU_CORTEX_M)
    ldr v4, =_SCS_ICSR
 80013b8:	4f0c      	ldr	r7, [pc, #48]	; (80013ec <z_arm_pendsv+0x50>)
    ldr v3, =_SCS_ICSR_UNPENDSV
 80013ba:	f04f 6600 	mov.w	r6, #134217728	; 0x8000000
#endif

    /* _kernel is still in r1 */

    /* fetch the thread to run from the ready queue cache */
    ldr r2, [r1, #_kernel_offset_to_ready_q_cache]
 80013be:	698a      	ldr	r2, [r1, #24]

    str r2, [r1, #_kernel_offset_to_current]
 80013c0:	608a      	str	r2, [r1, #8]
     * has been handled.
     */

    /* _SCS_ICSR is still in v4 and _SCS_ICSR_UNPENDSV in v3 */
#if defined(CONFIG_CPU_CORTEX_M)
    str v3, [v4, #0]
 80013c2:	603e      	str	r6, [r7, #0]

    ldr r0, [r4]
    movs.n r3, #0
    str r3, [r4]
#else
    ldr r0, [r2, #_thread_offset_to_basepri]
 80013c4:	6f50      	ldr	r0, [r2, #116]	; 0x74
    movs r3, #0
 80013c6:	2300      	movs	r3, #0
    str r3, [r2, #_thread_offset_to_basepri]
 80013c8:	6753      	str	r3, [r2, #116]	; 0x74
    /* restore r4-r7, go back 9*4 bytes to the start of the stored block */
    subs r0, #36
    ldmia r0!, {r4-r7}
#elif defined(CONFIG_ARMV7_M_ARMV8_M_MAINLINE)
    /* restore BASEPRI for the incoming thread */
    msr BASEPRI, r0
 80013ca:	f380 8811 	msr	BASEPRI, r0
    isb
#endif

#if defined(CONFIG_MPU_STACK_GUARD) || defined(CONFIG_USERSPACE)
    /* Re-program dynamic memory map */
    push {r2,lr}
 80013ce:	b504      	push	{r2, lr}
    mov r0, r2 /* _current thread */
 80013d0:	4610      	mov	r0, r2
    bl z_arm_configure_dynamic_mpu_regions
 80013d2:	f000 fb0b 	bl	80019ec <z_arm_configure_dynamic_mpu_regions>
    pop {r2,lr}
 80013d6:	e8bd 4004 	ldmia.w	sp!, {r2, lr}
    isb

#endif

    /* load callee-saved + psp from thread */
    add r0, r2, #_thread_offset_to_callee_saved
 80013da:	f102 0030 	add.w	r0, r2, #48	; 0x30
    ldmia r0, {v1-v8, ip}
 80013de:	e890 1ff0 	ldmia.w	r0, {r4, r5, r6, r7, r8, r9, sl, fp, ip}
#else
#error Unknown ARM architecture
#endif /* CONFIG_ARMV6_M_ARMV8_M_BASELINE */

#if defined(CONFIG_CPU_CORTEX_M)
    msr PSP, ip
 80013e2:	f38c 8809 	msr	PSP, ip

    /*
     * Cortex-M: return from PendSV exception
     * Cortex-R: return to the caller (z_arm_{exc,int}_exit, or z_arm_svc)
     */
    bx lr
 80013e6:	4770      	bx	lr
    ldr r1, =_kernel
 80013e8:	20000338 	.word	0x20000338
    ldr v4, =_SCS_ICSR
 80013ec:	e000ed04 	.word	0xe000ed04

080013f0 <z_arm_svc>:
  bne _stack_frame_endif
_stack_frame_msp:
  mrs r0, MSP
_stack_frame_endif:
#elif defined(CONFIG_ARMV7_M_ARMV8_M_MAINLINE)
    tst lr, #_EXC_RETURN_SPSEL_Msk /* did we come from thread mode ? */
 80013f0:	f01e 0f04 	tst.w	lr, #4
    ite eq  /* if zero (equal), came from handler mode */
 80013f4:	bf0c      	ite	eq
        mrseq r0, MSP   /* handler mode, stack frame is on MSP */
 80013f6:	f3ef 8008 	mrseq	r0, MSP
        mrsne r0, PSP   /* thread mode, stack frame is on PSP */
 80013fa:	f3ef 8009 	mrsne	r0, PSP
#endif


    /* Figure out what SVC call number was invoked */

    ldr r1, [r0, #24]   /* grab address of PC from stack frame */
 80013fe:	6981      	ldr	r1, [r0, #24]
     */
#if defined(CONFIG_ARMV6_M_ARMV8_M_BASELINE)
    subs r1, r1, #2
    ldrb r1, [r1]
#elif defined(CONFIG_ARMV7_M_ARMV8_M_MAINLINE)
    ldrb r1, [r1, #-2]
 8001400:	f811 1c02 	ldrb.w	r1, [r1, #-2]
#endif
    bne _oops

#endif /* CONFIG_USERSPACE */

    cmp r1, #2
 8001404:	2902      	cmp	r1, #2
    beq _oops
 8001406:	d0ff      	beq.n	8001408 <_oops>

08001408 <_oops>:
    /* exception return is done in z_arm_int_exit() */
    b z_arm_int_exit
#endif

_oops:
    push {r0, lr}
 8001408:	b501      	push	{r0, lr}
    bl z_do_kernel_oops
 800140a:	f002 f88b 	bl	8003524 <z_do_kernel_oops>
    /* return from SVC exception is done here */
    pop {r0, pc}
 800140e:	bd01      	pop	{r0, pc}

08001410 <arch_new_thread>:

#if defined(CONFIG_CPU_CORTEX_M)
	/* force ARM mode by clearing LSB of address */
	iframe->pc &= 0xfffffffe;
#endif
	iframe->a1 = (uint32_t)entry;
 8001410:	f842 3c20 	str.w	r3, [r2, #-32]
	iframe->a2 = (uint32_t)p1;
 8001414:	9b00      	ldr	r3, [sp, #0]
 8001416:	f842 3c1c 	str.w	r3, [r2, #-28]
	iframe->pc &= 0xfffffffe;
 800141a:	490a      	ldr	r1, [pc, #40]	; (8001444 <arch_new_thread+0x34>)
	iframe->a3 = (uint32_t)p2;
 800141c:	9b01      	ldr	r3, [sp, #4]
 800141e:	f842 3c18 	str.w	r3, [r2, #-24]
	iframe->a4 = (uint32_t)p3;
 8001422:	9b02      	ldr	r3, [sp, #8]
 8001424:	f842 3c14 	str.w	r3, [r2, #-20]
	iframe->pc &= 0xfffffffe;
 8001428:	f021 0101 	bic.w	r1, r1, #1

#if defined(CONFIG_CPU_CORTEX_M)
	iframe->xpsr =
 800142c:	f04f 7380 	mov.w	r3, #16777216	; 0x1000000
 8001430:	f842 3c04 	str.w	r3, [r2, #-4]
	iframe->pc &= 0xfffffffe;
 8001434:	f842 1c08 	str.w	r1, [r2, #-8]
	iframe->xpsr |= T_BIT;
#endif /* CONFIG_COMPILER_ISA_THUMB2 */
#endif /* CONFIG_CPU_CORTEX_M */

	thread->callee_saved.psp = (uint32_t)iframe;
	thread->arch.basepri = 0;
 8001438:	2300      	movs	r3, #0
	iframe = Z_STACK_PTR_TO_FRAME(struct __basic_sf, stack_ptr);
 800143a:	3a20      	subs	r2, #32
	thread->callee_saved.psp = (uint32_t)iframe;
 800143c:	6502      	str	r2, [r0, #80]	; 0x50
	thread->arch.basepri = 0;
 800143e:	6743      	str	r3, [r0, #116]	; 0x74
#endif
	/*
	 * initial values in all other registers/thread entries are
	 * irrelevant.
	 */
}
 8001440:	4770      	bx	lr
 8001442:	bf00      	nop
 8001444:	0800338d 	.word	0x0800338d

08001448 <z_check_thread_stack_fail>:
 *         thread stack corruption, otherwise return 0.
 */
uint32_t z_check_thread_stack_fail(const uint32_t fault_addr, const uint32_t psp)
{
#if defined(CONFIG_MULTITHREADING)
	const struct k_thread *thread = _current;
 8001448:	4a09      	ldr	r2, [pc, #36]	; (8001470 <z_check_thread_stack_fail+0x28>)
{
 800144a:	4603      	mov	r3, r0
	const struct k_thread *thread = _current;
 800144c:	6890      	ldr	r0, [r2, #8]

	if (thread == NULL) {
 800144e:	b170      	cbz	r0, 800146e <z_check_thread_stack_fail+0x26>
			return thread->stack_info.start;
		}
	}
#else /* CONFIG_USERSPACE */
#if defined(CONFIG_MULTITHREADING)
	if (IS_MPU_GUARD_VIOLATION(thread->stack_info.start - guard_len,
 8001450:	f113 0f16 	cmn.w	r3, #22
 8001454:	6e40      	ldr	r0, [r0, #100]	; 0x64
 8001456:	d005      	beq.n	8001464 <z_check_thread_stack_fail+0x1c>
 8001458:	f1a0 0220 	sub.w	r2, r0, #32
 800145c:	429a      	cmp	r2, r3
 800145e:	d805      	bhi.n	800146c <z_check_thread_stack_fail+0x24>
 8001460:	4283      	cmp	r3, r0
 8001462:	d203      	bcs.n	800146c <z_check_thread_stack_fail+0x24>
		return (uint32_t)Z_THREAD_STACK_BUFFER(z_main_stack);
	}
#endif
#endif /* CONFIG_USERSPACE */

	return 0;
 8001464:	4281      	cmp	r1, r0
 8001466:	bf28      	it	cs
 8001468:	2000      	movcs	r0, #0
 800146a:	4770      	bx	lr
 800146c:	2000      	movs	r0, #0
}
 800146e:	4770      	bx	lr
 8001470:	20000338 	.word	0x20000338

08001474 <arch_switch_to_main_thread>:
#endif /* CONFIG_FPU */
}

void arch_switch_to_main_thread(struct k_thread *main_thread, char *stack_ptr,
				k_thread_entry_t _main)
{
 8001474:	b508      	push	{r3, lr}
	z_arm_prepare_switch_to_main();

	_current = main_thread;
 8001476:	4b09      	ldr	r3, [pc, #36]	; (800149c <arch_switch_to_main_thread+0x28>)
 8001478:	6098      	str	r0, [r3, #8]
{
 800147a:	460d      	mov	r5, r1
 800147c:	4614      	mov	r4, r2
#if defined(CONFIG_MPU_STACK_GUARD) || defined(CONFIG_USERSPACE)
	/*
	 * If stack protection is enabled, make sure to set it
	 * before jumping to thread entry function
	 */
	z_arm_configure_dynamic_mpu_regions(main_thread);
 800147e:	f000 fab5 	bl	80019ec <z_arm_configure_dynamic_mpu_regions>

	/*
	 * Set PSP to the highest address of the main stack
	 * before enabling interrupts and jumping to main.
	 */
	__asm__ volatile (
 8001482:	4620      	mov	r0, r4
 8001484:	f385 8809 	msr	PSP, r5
 8001488:	2100      	movs	r1, #0
 800148a:	b663      	cpsie	if
 800148c:	f381 8811 	msr	BASEPRI, r1
 8001490:	f3bf 8f6f 	isb	sy
 8001494:	2200      	movs	r2, #0
 8001496:	2300      	movs	r3, #0
 8001498:	f001 ff78 	bl	800338c <z_thread_entry>
	:
	: "r" (_main), "r" (stack_ptr)
	: "r0" /* not to be overwritten by msr PSP, %1 */
	);

	CODE_UNREACHABLE;
 800149c:	20000338 	.word	0x20000338

080014a0 <_isr_wrapper>:
 * @return N/A
 */
SECTION_FUNC(TEXT, _isr_wrapper)

#if defined(CONFIG_CPU_CORTEX_M)
	push {r0,lr}		/* r0, lr are now the first items on the stack */
 80014a0:	b501      	push	{r0, lr}
#endif

#endif /* CONFIG_PM */

#if defined(CONFIG_CPU_CORTEX_M)
	mrs r0, IPSR	/* get exception number */
 80014a2:	f3ef 8005 	mrs	r0, IPSR
#if defined(CONFIG_ARMV6_M_ARMV8_M_BASELINE)
	ldr r1, =16
	subs r0, r1	/* get IRQ number */
	lsls r0, #3	/* table is 8-byte wide */
#elif defined(CONFIG_ARMV7_M_ARMV8_M_MAINLINE)
	sub r0, r0, #16	/* get IRQ number */
 80014a6:	f1a0 0010 	sub.w	r0, r0, #16
	lsl r0, r0, #3	/* table is 8-byte wide */
 80014aa:	ea4f 00c0 	mov.w	r0, r0, lsl #3
	lsl r1, r1, #3
	cmp r0, r1
	bge spurious_continue
#endif /* !CONFIG_CPU_CORTEX_M */

	ldr r1, =_sw_isr_table
 80014ae:	4904      	ldr	r1, [pc, #16]	; (80014c0 <_isr_wrapper+0x20>)
	add r1, r1, r0	/* table entry: ISRs must have their MSB set to stay
 80014b0:	4401      	add	r1, r0
			 * in thumb mode */

	ldm r1!,{r0,r3}	/* arg in r0, ISR in r3 */
 80014b2:	c909      	ldmia	r1!, {r0, r3}
	blx r3		/* call ISR */
 80014b4:	4798      	blx	r3

#if defined(CONFIG_ARMV6_M_ARMV8_M_BASELINE)
	pop {r0, r3}
	mov lr, r3
#elif defined(CONFIG_ARMV7_M_ARMV8_M_MAINLINE)
	pop {r0, lr}
 80014b6:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
#endif /* CONFIG_ARMV6_M_ARMV8_M_BASELINE */

	/* Use 'bx' instead of 'b' because 'bx' can jump further, and use
	 * 'bx' instead of 'blx' because exception return is done in
	 * z_arm_int_exit() */
	ldr r1, =z_arm_int_exit
 80014ba:	4902      	ldr	r1, [pc, #8]	; (80014c4 <_isr_wrapper+0x24>)
	bx r1
 80014bc:	4708      	bx	r1
 80014be:	0000      	.short	0x0000
	ldr r1, =_sw_isr_table
 80014c0:	08003d70 	.word	0x08003d70
	ldr r1, =z_arm_int_exit
 80014c4:	080014c9 	.word	0x080014c9

080014c8 <z_arm_exc_exit>:
 */

SECTION_SUBSEC_FUNC(TEXT, _HandlerModeExit, z_arm_exc_exit)

#ifdef CONFIG_PREEMPT_ENABLED
	ldr r3, =_kernel
 80014c8:	4b04      	ldr	r3, [pc, #16]	; (80014dc <_EXIT_EXC+0x2>)

	ldr r1, [r3, #_kernel_offset_to_current]
 80014ca:	6899      	ldr	r1, [r3, #8]
	ldr r0, [r3, #_kernel_offset_to_ready_q_cache]
 80014cc:	6998      	ldr	r0, [r3, #24]
	cmp r0, r1
 80014ce:	4288      	cmp	r0, r1
	beq _EXIT_EXC
 80014d0:	d003      	beq.n	80014da <_EXIT_EXC>

	/* context switch required, pend the PendSV exception */
	ldr r1, =_SCS_ICSR
 80014d2:	4903      	ldr	r1, [pc, #12]	; (80014e0 <_EXIT_EXC+0x6>)
	ldr r2, =_SCS_ICSR_PENDSV
 80014d4:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
	str r2, [r1]
 80014d8:	600a      	str	r2, [r1, #0]

080014da <_EXIT_EXC>:
#else
	pop {r0, lr}
#endif /* CONFIG_ARMV6_M_ARMV8_M_BASELINE */
#endif /* CONFIG_STACK_SENTINEL */

	bx lr
 80014da:	4770      	bx	lr
	ldr r3, =_kernel
 80014dc:	20000338 	.word	0x20000338
	ldr r1, =_SCS_ICSR
 80014e0:	e000ed04 	.word	0xe000ed04

080014e4 <mem_manage_fault>:
 *
 * @return error code to identify the fatal error reason
 */
static uint32_t mem_manage_fault(z_arch_esf_t *esf, int from_hard_fault,
			      bool *recoverable)
{
 80014e4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80014e8:	4b35      	ldr	r3, [pc, #212]	; (80015c0 <mem_manage_fault+0xdc>)
 80014ea:	4c36      	ldr	r4, [pc, #216]	; (80015c4 <mem_manage_fault+0xe0>)
	uint32_t reason = K_ERR_CPU_EXCEPTION;
	uint32_t mmfar = -EINVAL;

	PR_FAULT_INFO("***** MPU FAULT *****");

	if ((SCB->CFSR & SCB_CFSR_MSTKERR_Msk) != 0) {
 80014ec:	4d36      	ldr	r5, [pc, #216]	; (80015c8 <mem_manage_fault+0xe4>)
 80014ee:	1ae4      	subs	r4, r4, r3
 80014f0:	08e4      	lsrs	r4, r4, #3
	PR_FAULT_INFO("***** MPU FAULT *****");
 80014f2:	01a4      	lsls	r4, r4, #6
 80014f4:	f044 0901 	orr.w	r9, r4, #1
{
 80014f8:	4607      	mov	r7, r0
 80014fa:	4688      	mov	r8, r1
	PR_FAULT_INFO("***** MPU FAULT *****");
 80014fc:	4648      	mov	r0, r9
 80014fe:	4933      	ldr	r1, [pc, #204]	; (80015cc <mem_manage_fault+0xe8>)
{
 8001500:	4616      	mov	r6, r2
	PR_FAULT_INFO("***** MPU FAULT *****");
 8001502:	f001 ffb6 	bl	8003472 <log_string_sync>
	if ((SCB->CFSR & SCB_CFSR_MSTKERR_Msk) != 0) {
 8001506:	6aab      	ldr	r3, [r5, #40]	; 0x28
 8001508:	06db      	lsls	r3, r3, #27
 800150a:	d503      	bpl.n	8001514 <mem_manage_fault+0x30>
		PR_FAULT_INFO("  Stacking error (context area might be"
 800150c:	4930      	ldr	r1, [pc, #192]	; (80015d0 <mem_manage_fault+0xec>)
 800150e:	4648      	mov	r0, r9
 8001510:	f001 ffaf 	bl	8003472 <log_string_sync>
			" not valid)");
	}
	if ((SCB->CFSR & SCB_CFSR_MUNSTKERR_Msk) != 0) {
 8001514:	6aab      	ldr	r3, [r5, #40]	; 0x28
 8001516:	0718      	lsls	r0, r3, #28
 8001518:	d504      	bpl.n	8001524 <mem_manage_fault+0x40>
		PR_FAULT_INFO("  Unstacking error");
 800151a:	492e      	ldr	r1, [pc, #184]	; (80015d4 <mem_manage_fault+0xf0>)
 800151c:	f044 0001 	orr.w	r0, r4, #1
 8001520:	f001 ffa7 	bl	8003472 <log_string_sync>
	}
	if ((SCB->CFSR & SCB_CFSR_DACCVIOL_Msk) != 0) {
 8001524:	4d28      	ldr	r5, [pc, #160]	; (80015c8 <mem_manage_fault+0xe4>)
 8001526:	6aab      	ldr	r3, [r5, #40]	; 0x28
 8001528:	0799      	lsls	r1, r3, #30
 800152a:	d423      	bmi.n	8001574 <mem_manage_fault+0x90>
	uint32_t mmfar = -EINVAL;
 800152c:	f06f 0915 	mvn.w	r9, #21
				/* clear SCB_MMAR[VALID] to reset */
				SCB->CFSR &= ~SCB_CFSR_MMARVALID_Msk;
			}
		}
	}
	if ((SCB->CFSR & SCB_CFSR_IACCVIOL_Msk) != 0) {
 8001530:	4d25      	ldr	r5, [pc, #148]	; (80015c8 <mem_manage_fault+0xe4>)
 8001532:	6aab      	ldr	r3, [r5, #40]	; 0x28
 8001534:	07db      	lsls	r3, r3, #31
 8001536:	d504      	bpl.n	8001542 <mem_manage_fault+0x5e>
		PR_FAULT_INFO("  Instruction Access Violation");
 8001538:	4927      	ldr	r1, [pc, #156]	; (80015d8 <mem_manage_fault+0xf4>)
 800153a:	f044 0001 	orr.w	r0, r4, #1
 800153e:	f001 ff98 	bl	8003472 <log_string_sync>
	}
#if defined(CONFIG_ARMV7_M_ARMV8_M_FP)
	if ((SCB->CFSR & SCB_CFSR_MLSPERR_Msk) != 0) {
 8001542:	6aab      	ldr	r3, [r5, #40]	; 0x28
 8001544:	0698      	lsls	r0, r3, #26
 8001546:	d504      	bpl.n	8001552 <mem_manage_fault+0x6e>
		PR_FAULT_INFO(
 8001548:	4924      	ldr	r1, [pc, #144]	; (80015dc <mem_manage_fault+0xf8>)
 800154a:	f044 0001 	orr.w	r0, r4, #1
 800154e:	f001 ff90 	bl	8003472 <log_string_sync>
	 * crossed into an area beyond the thread stack.]
	 *
	 * Data Access Violation errors may or may not be caused by
	 * thread stack overflows.
	 */
	if ((SCB->CFSR & SCB_CFSR_MSTKERR_Msk) ||
 8001552:	4b1d      	ldr	r3, [pc, #116]	; (80015c8 <mem_manage_fault+0xe4>)
 8001554:	6a9a      	ldr	r2, [r3, #40]	; 0x28
 8001556:	06d1      	lsls	r1, r2, #27
 8001558:	d424      	bmi.n	80015a4 <mem_manage_fault+0xc0>
		(SCB->CFSR & SCB_CFSR_DACCVIOL_Msk)) {
 800155a:	6a9a      	ldr	r2, [r3, #40]	; 0x28
	if ((SCB->CFSR & SCB_CFSR_MSTKERR_Msk) ||
 800155c:	0792      	lsls	r2, r2, #30
 800155e:	d421      	bmi.n	80015a4 <mem_manage_fault+0xc0>
	uint32_t reason = K_ERR_CPU_EXCEPTION;
 8001560:	2000      	movs	r0, #0
		"without stack guard, user-mode or null-pointer detection\n");
#endif /* CONFIG_MPU_STACK_GUARD || CONFIG_USERSPACE */
	}

	/* clear MMFSR sticky bits */
	SCB->CFSR |= SCB_CFSR_MEMFAULTSR_Msk;
 8001562:	4a19      	ldr	r2, [pc, #100]	; (80015c8 <mem_manage_fault+0xe4>)
 8001564:	6a93      	ldr	r3, [r2, #40]	; 0x28
 8001566:	f043 03ff 	orr.w	r3, r3, #255	; 0xff
 800156a:	6293      	str	r3, [r2, #40]	; 0x28

	/* Assess whether system shall ignore/recover from this MPU fault. */
	*recoverable = memory_fault_recoverable(esf, true);
 800156c:	2300      	movs	r3, #0
 800156e:	7033      	strb	r3, [r6, #0]

	return reason;
}
 8001570:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
		PR_FAULT_INFO("  Data Access Violation");
 8001574:	f044 0a01 	orr.w	sl, r4, #1
 8001578:	4919      	ldr	r1, [pc, #100]	; (80015e0 <mem_manage_fault+0xfc>)
 800157a:	4650      	mov	r0, sl
 800157c:	f001 ff79 	bl	8003472 <log_string_sync>
		uint32_t temp = SCB->MMFAR;
 8001580:	f8d5 9034 	ldr.w	r9, [r5, #52]	; 0x34
		if ((SCB->CFSR & SCB_CFSR_MMARVALID_Msk) != 0) {
 8001584:	6aab      	ldr	r3, [r5, #40]	; 0x28
 8001586:	061a      	lsls	r2, r3, #24
 8001588:	d5d0      	bpl.n	800152c <mem_manage_fault+0x48>
			PR_EXC("  MMFAR Address: 0x%x", mmfar);
 800158a:	4916      	ldr	r1, [pc, #88]	; (80015e4 <mem_manage_fault+0x100>)
 800158c:	464a      	mov	r2, r9
 800158e:	4650      	mov	r0, sl
 8001590:	f001 ff6f 	bl	8003472 <log_string_sync>
			if (from_hard_fault != 0) {
 8001594:	f1b8 0f00 	cmp.w	r8, #0
 8001598:	d0ca      	beq.n	8001530 <mem_manage_fault+0x4c>
				SCB->CFSR &= ~SCB_CFSR_MMARVALID_Msk;
 800159a:	6aab      	ldr	r3, [r5, #40]	; 0x28
 800159c:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 80015a0:	62ab      	str	r3, [r5, #40]	; 0x28
 80015a2:	e7c5      	b.n	8001530 <mem_manage_fault+0x4c>
		if (SCB->ICSR & SCB_ICSR_RETTOBASE_Msk) {
 80015a4:	685b      	ldr	r3, [r3, #4]
 80015a6:	051b      	lsls	r3, r3, #20
 80015a8:	d5da      	bpl.n	8001560 <mem_manage_fault+0x7c>
			uint32_t min_stack_ptr = z_check_thread_stack_fail(mmfar,
 80015aa:	4639      	mov	r1, r7
 80015ac:	4648      	mov	r0, r9
 80015ae:	f7ff ff4b 	bl	8001448 <z_check_thread_stack_fail>
			if (min_stack_ptr) {
 80015b2:	2800      	cmp	r0, #0
 80015b4:	d0d4      	beq.n	8001560 <mem_manage_fault+0x7c>
  \details Assigns the given value to the Process Stack Pointer (PSP).
  \param [in]    topOfProcStack  Process Stack Pointer value to set
 */
__STATIC_FORCEINLINE void __set_PSP(uint32_t topOfProcStack)
{
  __ASM volatile ("MSR psp, %0" : : "r" (topOfProcStack) : );
 80015b6:	f380 8809 	msr	PSP, r0
				reason = K_ERR_STACK_CHK_FAIL;
 80015ba:	2002      	movs	r0, #2
 80015bc:	e7d1      	b.n	8001562 <mem_manage_fault+0x7e>
 80015be:	bf00      	nop
 80015c0:	08004048 	.word	0x08004048
 80015c4:	08004058 	.word	0x08004058
 80015c8:	e000ed00 	.word	0xe000ed00
 80015cc:	0800448f 	.word	0x0800448f
 80015d0:	080044a5 	.word	0x080044a5
 80015d4:	080044d8 	.word	0x080044d8
 80015d8:	08004519 	.word	0x08004519
 80015dc:	08004538 	.word	0x08004538
 80015e0:	080044eb 	.word	0x080044eb
 80015e4:	08004503 	.word	0x08004503

080015e8 <usage_fault.constprop.0>:
 *
 * See z_arm_fault_dump() for example.
 *
 * @return error code to identify the fatal error reason
 */
static uint32_t usage_fault(const z_arch_esf_t *esf)
 80015e8:	b570      	push	{r4, r5, r6, lr}
 80015ea:	4b23      	ldr	r3, [pc, #140]	; (8001678 <usage_fault.constprop.0+0x90>)
 80015ec:	4c23      	ldr	r4, [pc, #140]	; (800167c <usage_fault.constprop.0+0x94>)
	uint32_t reason = K_ERR_CPU_EXCEPTION;

	PR_FAULT_INFO("***** USAGE FAULT *****");

	/* bits are sticky: they stack and must be reset */
	if ((SCB->CFSR & SCB_CFSR_DIVBYZERO_Msk) != 0) {
 80015ee:	4d24      	ldr	r5, [pc, #144]	; (8001680 <usage_fault.constprop.0+0x98>)
	PR_FAULT_INFO("***** USAGE FAULT *****");
 80015f0:	4924      	ldr	r1, [pc, #144]	; (8001684 <usage_fault.constprop.0+0x9c>)
 80015f2:	1ae4      	subs	r4, r4, r3
 80015f4:	08e4      	lsrs	r4, r4, #3
 80015f6:	01a4      	lsls	r4, r4, #6
 80015f8:	f044 0601 	orr.w	r6, r4, #1
 80015fc:	4630      	mov	r0, r6
 80015fe:	f001 ff38 	bl	8003472 <log_string_sync>
	if ((SCB->CFSR & SCB_CFSR_DIVBYZERO_Msk) != 0) {
 8001602:	6aab      	ldr	r3, [r5, #40]	; 0x28
 8001604:	019b      	lsls	r3, r3, #6
 8001606:	d503      	bpl.n	8001610 <usage_fault.constprop.0+0x28>
		PR_FAULT_INFO("  Division by zero");
 8001608:	491f      	ldr	r1, [pc, #124]	; (8001688 <usage_fault.constprop.0+0xa0>)
 800160a:	4630      	mov	r0, r6
 800160c:	f001 ff31 	bl	8003472 <log_string_sync>
	}
	if ((SCB->CFSR & SCB_CFSR_UNALIGNED_Msk) != 0) {
 8001610:	6aab      	ldr	r3, [r5, #40]	; 0x28
 8001612:	01dd      	lsls	r5, r3, #7
 8001614:	d504      	bpl.n	8001620 <usage_fault.constprop.0+0x38>
		PR_FAULT_INFO("  Unaligned memory access");
 8001616:	491d      	ldr	r1, [pc, #116]	; (800168c <usage_fault.constprop.0+0xa4>)
 8001618:	f044 0001 	orr.w	r0, r4, #1
 800161c:	f001 ff29 	bl	8003472 <log_string_sync>
		 */
		reason = K_ERR_STACK_CHK_FAIL;
#endif /* CONFIG_BUILTIN_STACK_GUARD */
	}
#endif /* CONFIG_ARMV8_M_MAINLINE */
	if ((SCB->CFSR & SCB_CFSR_NOCP_Msk) != 0) {
 8001620:	4d17      	ldr	r5, [pc, #92]	; (8001680 <usage_fault.constprop.0+0x98>)
 8001622:	6aab      	ldr	r3, [r5, #40]	; 0x28
 8001624:	0318      	lsls	r0, r3, #12
 8001626:	d504      	bpl.n	8001632 <usage_fault.constprop.0+0x4a>
		PR_FAULT_INFO("  No coprocessor instructions");
 8001628:	4919      	ldr	r1, [pc, #100]	; (8001690 <usage_fault.constprop.0+0xa8>)
 800162a:	f044 0001 	orr.w	r0, r4, #1
 800162e:	f001 ff20 	bl	8003472 <log_string_sync>
	}
	if ((SCB->CFSR & SCB_CFSR_INVPC_Msk) != 0) {
 8001632:	6aab      	ldr	r3, [r5, #40]	; 0x28
 8001634:	0359      	lsls	r1, r3, #13
 8001636:	d504      	bpl.n	8001642 <usage_fault.constprop.0+0x5a>
		PR_FAULT_INFO("  Illegal load of EXC_RETURN into PC");
 8001638:	4916      	ldr	r1, [pc, #88]	; (8001694 <usage_fault.constprop.0+0xac>)
 800163a:	f044 0001 	orr.w	r0, r4, #1
 800163e:	f001 ff18 	bl	8003472 <log_string_sync>
	}
	if ((SCB->CFSR & SCB_CFSR_INVSTATE_Msk) != 0) {
 8001642:	4d0f      	ldr	r5, [pc, #60]	; (8001680 <usage_fault.constprop.0+0x98>)
 8001644:	6aab      	ldr	r3, [r5, #40]	; 0x28
 8001646:	039a      	lsls	r2, r3, #14
 8001648:	d504      	bpl.n	8001654 <usage_fault.constprop.0+0x6c>
		PR_FAULT_INFO("  Illegal use of the EPSR");
 800164a:	4913      	ldr	r1, [pc, #76]	; (8001698 <usage_fault.constprop.0+0xb0>)
 800164c:	f044 0001 	orr.w	r0, r4, #1
 8001650:	f001 ff0f 	bl	8003472 <log_string_sync>
	}
	if ((SCB->CFSR & SCB_CFSR_UNDEFINSTR_Msk) != 0) {
 8001654:	6aab      	ldr	r3, [r5, #40]	; 0x28
 8001656:	03db      	lsls	r3, r3, #15
 8001658:	d504      	bpl.n	8001664 <usage_fault.constprop.0+0x7c>
		PR_FAULT_INFO("  Attempt to execute undefined instruction");
 800165a:	4910      	ldr	r1, [pc, #64]	; (800169c <usage_fault.constprop.0+0xb4>)
 800165c:	f044 0001 	orr.w	r0, r4, #1
 8001660:	f001 ff07 	bl	8003472 <log_string_sync>
	}

	/* clear UFSR sticky bits */
	SCB->CFSR |= SCB_CFSR_USGFAULTSR_Msk;
 8001664:	4a06      	ldr	r2, [pc, #24]	; (8001680 <usage_fault.constprop.0+0x98>)
 8001666:	6a93      	ldr	r3, [r2, #40]	; 0x28
 8001668:	ea6f 4303 	mvn.w	r3, r3, lsl #16
 800166c:	ea6f 4313 	mvn.w	r3, r3, lsr #16
 8001670:	6293      	str	r3, [r2, #40]	; 0x28

	return reason;
}
 8001672:	2000      	movs	r0, #0
 8001674:	bd70      	pop	{r4, r5, r6, pc}
 8001676:	bf00      	nop
 8001678:	08004048 	.word	0x08004048
 800167c:	08004058 	.word	0x08004058
 8001680:	e000ed00 	.word	0xe000ed00
 8001684:	08004567 	.word	0x08004567
 8001688:	0800457f 	.word	0x0800457f
 800168c:	08004592 	.word	0x08004592
 8001690:	080045ac 	.word	0x080045ac
 8001694:	080045ca 	.word	0x080045ca
 8001698:	080045ef 	.word	0x080045ef
 800169c:	08004609 	.word	0x08004609

080016a0 <bus_fault.constprop.0>:
static int bus_fault(z_arch_esf_t *esf, int from_hard_fault, bool *recoverable)
 80016a0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80016a4:	4b29      	ldr	r3, [pc, #164]	; (800174c <bus_fault.constprop.0+0xac>)
 80016a6:	4c2a      	ldr	r4, [pc, #168]	; (8001750 <bus_fault.constprop.0+0xb0>)
	if (SCB->CFSR & SCB_CFSR_STKERR_Msk) {
 80016a8:	4d2a      	ldr	r5, [pc, #168]	; (8001754 <bus_fault.constprop.0+0xb4>)
 80016aa:	1ae4      	subs	r4, r4, r3
 80016ac:	08e4      	lsrs	r4, r4, #3
	PR_FAULT_INFO("***** BUS FAULT *****");
 80016ae:	01a4      	lsls	r4, r4, #6
 80016b0:	f044 0801 	orr.w	r8, r4, #1
static int bus_fault(z_arch_esf_t *esf, int from_hard_fault, bool *recoverable)
 80016b4:	4607      	mov	r7, r0
 80016b6:	460e      	mov	r6, r1
	PR_FAULT_INFO("***** BUS FAULT *****");
 80016b8:	4640      	mov	r0, r8
 80016ba:	4927      	ldr	r1, [pc, #156]	; (8001758 <bus_fault.constprop.0+0xb8>)
 80016bc:	f001 fed9 	bl	8003472 <log_string_sync>
	if (SCB->CFSR & SCB_CFSR_STKERR_Msk) {
 80016c0:	6aab      	ldr	r3, [r5, #40]	; 0x28
 80016c2:	04d9      	lsls	r1, r3, #19
 80016c4:	d503      	bpl.n	80016ce <bus_fault.constprop.0+0x2e>
		PR_FAULT_INFO("  Stacking error");
 80016c6:	4925      	ldr	r1, [pc, #148]	; (800175c <bus_fault.constprop.0+0xbc>)
 80016c8:	4640      	mov	r0, r8
 80016ca:	f001 fed2 	bl	8003472 <log_string_sync>
	if (SCB->CFSR & SCB_CFSR_UNSTKERR_Msk) {
 80016ce:	6aab      	ldr	r3, [r5, #40]	; 0x28
 80016d0:	051a      	lsls	r2, r3, #20
 80016d2:	d504      	bpl.n	80016de <bus_fault.constprop.0+0x3e>
		PR_FAULT_INFO("  Unstacking error");
 80016d4:	4922      	ldr	r1, [pc, #136]	; (8001760 <bus_fault.constprop.0+0xc0>)
 80016d6:	f044 0001 	orr.w	r0, r4, #1
 80016da:	f001 feca 	bl	8003472 <log_string_sync>
	if (SCB->CFSR & SCB_CFSR_PRECISERR_Msk) {
 80016de:	4d1d      	ldr	r5, [pc, #116]	; (8001754 <bus_fault.constprop.0+0xb4>)
 80016e0:	6aab      	ldr	r3, [r5, #40]	; 0x28
 80016e2:	059b      	lsls	r3, r3, #22
 80016e4:	d512      	bpl.n	800170c <bus_fault.constprop.0+0x6c>
		PR_FAULT_INFO("  Precise data bus error");
 80016e6:	f044 0801 	orr.w	r8, r4, #1
 80016ea:	4640      	mov	r0, r8
 80016ec:	491d      	ldr	r1, [pc, #116]	; (8001764 <bus_fault.constprop.0+0xc4>)
 80016ee:	f001 fec0 	bl	8003472 <log_string_sync>
		STORE_xFAR(bfar, SCB->BFAR);
 80016f2:	6baa      	ldr	r2, [r5, #56]	; 0x38
		if ((SCB->CFSR & SCB_CFSR_BFARVALID_Msk) != 0) {
 80016f4:	6aab      	ldr	r3, [r5, #40]	; 0x28
 80016f6:	0418      	lsls	r0, r3, #16
 80016f8:	d508      	bpl.n	800170c <bus_fault.constprop.0+0x6c>
			PR_EXC("  BFAR Address: 0x%x", bfar);
 80016fa:	491b      	ldr	r1, [pc, #108]	; (8001768 <bus_fault.constprop.0+0xc8>)
 80016fc:	4640      	mov	r0, r8
 80016fe:	f001 feb8 	bl	8003472 <log_string_sync>
			if (from_hard_fault != 0) {
 8001702:	b11f      	cbz	r7, 800170c <bus_fault.constprop.0+0x6c>
				SCB->CFSR &= ~SCB_CFSR_BFARVALID_Msk;
 8001704:	6aab      	ldr	r3, [r5, #40]	; 0x28
 8001706:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
 800170a:	62ab      	str	r3, [r5, #40]	; 0x28
	if (SCB->CFSR & SCB_CFSR_IMPRECISERR_Msk) {
 800170c:	4d11      	ldr	r5, [pc, #68]	; (8001754 <bus_fault.constprop.0+0xb4>)
 800170e:	6aab      	ldr	r3, [r5, #40]	; 0x28
 8001710:	0559      	lsls	r1, r3, #21
 8001712:	d504      	bpl.n	800171e <bus_fault.constprop.0+0x7e>
		PR_FAULT_INFO("  Imprecise data bus error");
 8001714:	4915      	ldr	r1, [pc, #84]	; (800176c <bus_fault.constprop.0+0xcc>)
 8001716:	f044 0001 	orr.w	r0, r4, #1
 800171a:	f001 feaa 	bl	8003472 <log_string_sync>
	if ((SCB->CFSR & SCB_CFSR_IBUSERR_Msk) != 0) {
 800171e:	6aab      	ldr	r3, [r5, #40]	; 0x28
 8001720:	05da      	lsls	r2, r3, #23
 8001722:	d50d      	bpl.n	8001740 <bus_fault.constprop.0+0xa0>
		PR_FAULT_INFO("  Instruction bus error");
 8001724:	4912      	ldr	r1, [pc, #72]	; (8001770 <bus_fault.constprop.0+0xd0>)
		PR_FAULT_INFO("  Floating-point lazy state preservation error");
 8001726:	f044 0001 	orr.w	r0, r4, #1
 800172a:	f001 fea2 	bl	8003472 <log_string_sync>
	SCB->CFSR |= SCB_CFSR_BUSFAULTSR_Msk;
 800172e:	4a09      	ldr	r2, [pc, #36]	; (8001754 <bus_fault.constprop.0+0xb4>)
 8001730:	6a93      	ldr	r3, [r2, #40]	; 0x28
	*recoverable = memory_fault_recoverable(esf, true);
 8001732:	2000      	movs	r0, #0
	SCB->CFSR |= SCB_CFSR_BUSFAULTSR_Msk;
 8001734:	f443 437f 	orr.w	r3, r3, #65280	; 0xff00
 8001738:	6293      	str	r3, [r2, #40]	; 0x28
	*recoverable = memory_fault_recoverable(esf, true);
 800173a:	7030      	strb	r0, [r6, #0]
}
 800173c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	} else if (SCB->CFSR & SCB_CFSR_LSPERR_Msk) {
 8001740:	6aab      	ldr	r3, [r5, #40]	; 0x28
 8001742:	049b      	lsls	r3, r3, #18
 8001744:	d5f3      	bpl.n	800172e <bus_fault.constprop.0+0x8e>
		PR_FAULT_INFO("  Floating-point lazy state preservation error");
 8001746:	490b      	ldr	r1, [pc, #44]	; (8001774 <bus_fault.constprop.0+0xd4>)
 8001748:	e7ed      	b.n	8001726 <bus_fault.constprop.0+0x86>
 800174a:	bf00      	nop
 800174c:	08004048 	.word	0x08004048
 8001750:	08004058 	.word	0x08004058
 8001754:	e000ed00 	.word	0xe000ed00
 8001758:	08004634 	.word	0x08004634
 800175c:	0800464a 	.word	0x0800464a
 8001760:	080044d8 	.word	0x080044d8
 8001764:	0800465b 	.word	0x0800465b
 8001768:	08004674 	.word	0x08004674
 800176c:	08004689 	.word	0x08004689
 8001770:	080046a4 	.word	0x080046a4
 8001774:	08004538 	.word	0x08004538

08001778 <z_arm_fault>:
 * @param callee_regs Callee-saved registers (R4-R11, PSP)
 *
 */
void z_arm_fault(uint32_t msp, uint32_t psp, uint32_t exc_return,
	_callee_saved_t *callee_regs)
{
 8001778:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
	uint32_t reason = K_ERR_CPU_EXCEPTION;
	int fault = SCB->ICSR & SCB_ICSR_VECTACTIVE_Msk;
 800177c:	4b65      	ldr	r3, [pc, #404]	; (8001914 <z_arm_fault+0x19c>)
 800177e:	685e      	ldr	r6, [r3, #4]
{
 8001780:	b08b      	sub	sp, #44	; 0x2c
 8001782:	460d      	mov	r5, r1
	int fault = SCB->ICSR & SCB_ICSR_VECTACTIVE_Msk;
 8001784:	f3c6 0408 	ubfx	r4, r6, #0, #9
 8001788:	2700      	movs	r7, #0
 800178a:	f387 8811 	msr	BASEPRI, r7
 800178e:	f3bf 8f6f 	isb	sy
	if ((exc_return & EXC_RETURN_INDICATOR_PREFIX) !=
 8001792:	f002 437f 	and.w	r3, r2, #4278190080	; 0xff000000
 8001796:	f1b3 4f7f 	cmp.w	r3, #4278190080	; 0xff000000
 800179a:	d10d      	bne.n	80017b8 <z_arm_fault+0x40>
	if ((exc_return & EXC_RETURN_MODE_THREAD) &&
 800179c:	f002 030c 	and.w	r3, r2, #12
 80017a0:	2b08      	cmp	r3, #8
 80017a2:	d10b      	bne.n	80017bc <z_arm_fault+0x44>
 80017a4:	485c      	ldr	r0, [pc, #368]	; (8001918 <z_arm_fault+0x1a0>)
 80017a6:	4b5d      	ldr	r3, [pc, #372]	; (800191c <z_arm_fault+0x1a4>)
		PR_EXC("SPSEL in thread mode does not indicate PSP");
 80017a8:	495d      	ldr	r1, [pc, #372]	; (8001920 <z_arm_fault+0x1a8>)
 80017aa:	1ac0      	subs	r0, r0, r3
 80017ac:	08c0      	lsrs	r0, r0, #3
 80017ae:	0180      	lsls	r0, r0, #6
 80017b0:	f040 0001 	orr.w	r0, r0, #1
 80017b4:	f001 fe5d 	bl	8003472 <log_string_sync>
		return NULL;
 80017b8:	463d      	mov	r5, r7
 80017ba:	e003      	b.n	80017c4 <z_arm_fault+0x4c>
		if (exc_return & EXC_RETURN_MODE_THREAD) {
 80017bc:	0712      	lsls	r2, r2, #28
 80017be:	d401      	bmi.n	80017c4 <z_arm_fault+0x4c>
			ptr_esf = (z_arch_esf_t *)msp;
 80017c0:	4605      	mov	r5, r0
			*nested_exc = true;
 80017c2:	2701      	movs	r7, #1
	*recoverable = false;
 80017c4:	2300      	movs	r3, #0
 80017c6:	f88d 3007 	strb.w	r3, [sp, #7]
	switch (fault) {
 80017ca:	1ee3      	subs	r3, r4, #3
 80017cc:	2b09      	cmp	r3, #9
 80017ce:	f200 8088 	bhi.w	80018e2 <z_arm_fault+0x16a>
 80017d2:	e8df f003 	tbb	[pc, r3]
 80017d6:	7505      	.short	0x7505
 80017d8:	86867279 	.word	0x86867279
 80017dc:	7d868686 	.word	0x7d868686
 80017e0:	4b4e      	ldr	r3, [pc, #312]	; (800191c <z_arm_fault+0x1a4>)
 80017e2:	4e4d      	ldr	r6, [pc, #308]	; (8001918 <z_arm_fault+0x1a0>)
	if ((SCB->HFSR & SCB_HFSR_VECTTBL_Msk) != 0) {
 80017e4:	f8df 812c 	ldr.w	r8, [pc, #300]	; 8001914 <z_arm_fault+0x19c>
	PR_FAULT_INFO("***** HARD FAULT *****");
 80017e8:	494e      	ldr	r1, [pc, #312]	; (8001924 <z_arm_fault+0x1ac>)
 80017ea:	1af6      	subs	r6, r6, r3
 80017ec:	08f6      	lsrs	r6, r6, #3
 80017ee:	01b6      	lsls	r6, r6, #6
 80017f0:	f046 0601 	orr.w	r6, r6, #1
 80017f4:	4630      	mov	r0, r6
 80017f6:	f001 fe3c 	bl	8003472 <log_string_sync>
	if ((SCB->HFSR & SCB_HFSR_VECTTBL_Msk) != 0) {
 80017fa:	f8d8 402c 	ldr.w	r4, [r8, #44]	; 0x2c
	*recoverable = false;
 80017fe:	f04f 0900 	mov.w	r9, #0
	if ((SCB->HFSR & SCB_HFSR_VECTTBL_Msk) != 0) {
 8001802:	f014 0402 	ands.w	r4, r4, #2
	*recoverable = false;
 8001806:	f88d 9007 	strb.w	r9, [sp, #7]
	if ((SCB->HFSR & SCB_HFSR_VECTTBL_Msk) != 0) {
 800180a:	d005      	beq.n	8001818 <z_arm_fault+0xa0>
		PR_EXC("  Bus fault on vector table read");
 800180c:	4946      	ldr	r1, [pc, #280]	; (8001928 <z_arm_fault+0x1b0>)
 800180e:	4630      	mov	r0, r6
	PR_FAULT_INFO(
 8001810:	f001 fe2f 	bl	8003472 <log_string_sync>
	uint32_t reason = K_ERR_CPU_EXCEPTION;
 8001814:	2400      	movs	r4, #0
}
 8001816:	e007      	b.n	8001828 <z_arm_fault+0xb0>
	} else if ((SCB->HFSR & SCB_HFSR_DEBUGEVT_Msk) != 0) {
 8001818:	f8d8 302c 	ldr.w	r3, [r8, #44]	; 0x2c
 800181c:	2b00      	cmp	r3, #0
 800181e:	da1d      	bge.n	800185c <z_arm_fault+0xe4>
		PR_EXC("  Debug event");
 8001820:	4942      	ldr	r1, [pc, #264]	; (800192c <z_arm_fault+0x1b4>)
 8001822:	4630      	mov	r0, r6
 8001824:	f001 fe25 	bl	8003472 <log_string_sync>
#ifdef CONFIG_DEBUG_COREDUMP
	z_arm_coredump_fault_sp = POINTER_TO_UINT(esf);
#endif

	reason = fault_handle(esf, fault, &recoverable);
	if (recoverable) {
 8001828:	f89d 3007 	ldrb.w	r3, [sp, #7]
 800182c:	b99b      	cbnz	r3, 8001856 <z_arm_fault+0xde>
		return;
	}

	/* Copy ESF */
#if !defined(CONFIG_EXTRA_EXCEPTION_INFO)
	memcpy(&esf_copy, esf, sizeof(z_arch_esf_t));
 800182e:	2220      	movs	r2, #32
 8001830:	4629      	mov	r1, r5
 8001832:	a802      	add	r0, sp, #8
 8001834:	f001 fe95 	bl	8003562 <memcpy>
	/* Overwrite stacked IPSR to mark a nested exception,
	 * or a return to Thread mode. Note that this may be
	 * required, if the retrieved ESF contents are invalid
	 * due to, for instance, a stacking error.
	 */
	if (nested_exc) {
 8001838:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800183a:	2f00      	cmp	r7, #0
 800183c:	d065      	beq.n	800190a <z_arm_fault+0x192>
		if ((esf_copy.basic.xpsr & IPSR_ISR_Msk) == 0) {
 800183e:	f3c3 0208 	ubfx	r2, r3, #0, #9
 8001842:	b922      	cbnz	r2, 800184e <z_arm_fault+0xd6>
			esf_copy.basic.xpsr |= IPSR_ISR_Msk;
 8001844:	ea6f 2353 	mvn.w	r3, r3, lsr #9
 8001848:	ea6f 2343 	mvn.w	r3, r3, lsl #9
		}
	} else {
		esf_copy.basic.xpsr &= ~(IPSR_ISR_Msk);
 800184c:	9309      	str	r3, [sp, #36]	; 0x24
	}

	z_arm_fatal_error(reason, &esf_copy);
 800184e:	a902      	add	r1, sp, #8
 8001850:	4620      	mov	r0, r4
 8001852:	f7ff fd01 	bl	8001258 <z_arm_fatal_error>
}
 8001856:	b00b      	add	sp, #44	; 0x2c
 8001858:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
	} else if ((SCB->HFSR & SCB_HFSR_FORCED_Msk) != 0) {
 800185c:	f8d8 302c 	ldr.w	r3, [r8, #44]	; 0x2c
 8001860:	005b      	lsls	r3, r3, #1
 8001862:	d5e1      	bpl.n	8001828 <z_arm_fault+0xb0>
		PR_EXC("  Fault escalation (see below)");
 8001864:	4932      	ldr	r1, [pc, #200]	; (8001930 <z_arm_fault+0x1b8>)
 8001866:	4630      	mov	r0, r6
 8001868:	f001 fe03 	bl	8003472 <log_string_sync>
	uint16_t fault_insn = *(ret_addr - 1);
 800186c:	69ab      	ldr	r3, [r5, #24]
	if (((fault_insn & 0xff00) == _SVC_OPCODE) &&
 800186e:	f833 2c02 	ldrh.w	r2, [r3, #-2]
 8001872:	f64d 7302 	movw	r3, #57090	; 0xdf02
 8001876:	429a      	cmp	r2, r3
 8001878:	d00a      	beq.n	8001890 <z_arm_fault+0x118>
		} else if (SCB_MMFSR != 0) {
 800187a:	f898 3028 	ldrb.w	r3, [r8, #40]	; 0x28
 800187e:	b173      	cbz	r3, 800189e <z_arm_fault+0x126>
			reason = mem_manage_fault(esf, 1, recoverable);
 8001880:	f10d 0207 	add.w	r2, sp, #7
 8001884:	2101      	movs	r1, #1
		reason = mem_manage_fault(esf, 0, recoverable);
 8001886:	4628      	mov	r0, r5
 8001888:	f7ff fe2c 	bl	80014e4 <mem_manage_fault>
 800188c:	4604      	mov	r4, r0
		break;
 800188e:	e7cb      	b.n	8001828 <z_arm_fault+0xb0>
			PR_EXC("ARCH_EXCEPT with reason %x\n", esf->basic.r0);
 8001890:	682a      	ldr	r2, [r5, #0]
 8001892:	4928      	ldr	r1, [pc, #160]	; (8001934 <z_arm_fault+0x1bc>)
 8001894:	4630      	mov	r0, r6
 8001896:	f001 fdec 	bl	8003472 <log_string_sync>
			reason = esf->basic.r0;
 800189a:	682c      	ldr	r4, [r5, #0]
 800189c:	e7c4      	b.n	8001828 <z_arm_fault+0xb0>
		} else if (SCB_BFSR != 0) {
 800189e:	f898 3029 	ldrb.w	r3, [r8, #41]	; 0x29
 80018a2:	b12b      	cbz	r3, 80018b0 <z_arm_fault+0x138>
			reason = bus_fault(esf, 1, recoverable);
 80018a4:	f10d 0107 	add.w	r1, sp, #7
 80018a8:	2001      	movs	r0, #1
		reason = bus_fault(esf, 0, recoverable);
 80018aa:	f7ff fef9 	bl	80016a0 <bus_fault.constprop.0>
 80018ae:	e7ed      	b.n	800188c <z_arm_fault+0x114>
		} else if (SCB_UFSR != 0) {
 80018b0:	f8b8 302a 	ldrh.w	r3, [r8, #42]	; 0x2a
 80018b4:	b29b      	uxth	r3, r3
 80018b6:	2b00      	cmp	r3, #0
 80018b8:	d0b6      	beq.n	8001828 <z_arm_fault+0xb0>
		reason = usage_fault(esf);
 80018ba:	f7ff fe95 	bl	80015e8 <usage_fault.constprop.0>
 80018be:	e7e5      	b.n	800188c <z_arm_fault+0x114>
		reason = mem_manage_fault(esf, 0, recoverable);
 80018c0:	f10d 0207 	add.w	r2, sp, #7
 80018c4:	2100      	movs	r1, #0
 80018c6:	e7de      	b.n	8001886 <z_arm_fault+0x10e>
		reason = bus_fault(esf, 0, recoverable);
 80018c8:	f10d 0107 	add.w	r1, sp, #7
 80018cc:	2000      	movs	r0, #0
 80018ce:	e7ec      	b.n	80018aa <z_arm_fault+0x132>
 80018d0:	4811      	ldr	r0, [pc, #68]	; (8001918 <z_arm_fault+0x1a0>)
 80018d2:	4b12      	ldr	r3, [pc, #72]	; (800191c <z_arm_fault+0x1a4>)
	PR_FAULT_INFO(
 80018d4:	4918      	ldr	r1, [pc, #96]	; (8001938 <z_arm_fault+0x1c0>)
 80018d6:	1ac0      	subs	r0, r0, r3
 80018d8:	08c0      	lsrs	r0, r0, #3
 80018da:	0180      	lsls	r0, r0, #6
 80018dc:	f040 0001 	orr.w	r0, r0, #1
 80018e0:	e796      	b.n	8001810 <z_arm_fault+0x98>
 80018e2:	4b0e      	ldr	r3, [pc, #56]	; (800191c <z_arm_fault+0x1a4>)
 80018e4:	480c      	ldr	r0, [pc, #48]	; (8001918 <z_arm_fault+0x1a0>)
	PR_FAULT_INFO("***** %s %d) *****",
 80018e6:	4915      	ldr	r1, [pc, #84]	; (800193c <z_arm_fault+0x1c4>)
 80018e8:	4a15      	ldr	r2, [pc, #84]	; (8001940 <z_arm_fault+0x1c8>)
 80018ea:	1ac0      	subs	r0, r0, r3
 80018ec:	08c0      	lsrs	r0, r0, #3
 80018ee:	f416 7ff8 	tst.w	r6, #496	; 0x1f0
 80018f2:	ea4f 1080 	mov.w	r0, r0, lsl #6
 80018f6:	bf08      	it	eq
 80018f8:	460a      	moveq	r2, r1
 80018fa:	f1a4 0310 	sub.w	r3, r4, #16
 80018fe:	4911      	ldr	r1, [pc, #68]	; (8001944 <z_arm_fault+0x1cc>)
 8001900:	f040 0001 	orr.w	r0, r0, #1
 8001904:	f001 fdb5 	bl	8003472 <log_string_sync>
 8001908:	e784      	b.n	8001814 <z_arm_fault+0x9c>
		esf_copy.basic.xpsr &= ~(IPSR_ISR_Msk);
 800190a:	f423 73ff 	bic.w	r3, r3, #510	; 0x1fe
 800190e:	f023 0301 	bic.w	r3, r3, #1
 8001912:	e79b      	b.n	800184c <z_arm_fault+0xd4>
 8001914:	e000ed00 	.word	0xe000ed00
 8001918:	08004058 	.word	0x08004058
 800191c:	08004048 	.word	0x08004048
 8001920:	080046ea 	.word	0x080046ea
 8001924:	08004715 	.word	0x08004715
 8001928:	0800472c 	.word	0x0800472c
 800192c:	0800474d 	.word	0x0800474d
 8001930:	0800475b 	.word	0x0800475b
 8001934:	0800477a 	.word	0x0800477a
 8001938:	08004796 	.word	0x08004796
 800193c:	080046bc 	.word	0x080046bc
 8001940:	080046d1 	.word	0x080046d1
 8001944:	080047ba 	.word	0x080047ba

08001948 <z_arm_fault_init>:
 */
void z_arm_fault_init(void)
{
#if defined(CONFIG_ARMV6_M_ARMV8_M_BASELINE)
#elif defined(CONFIG_ARMV7_M_ARMV8_M_MAINLINE)
	SCB->CCR |= SCB_CCR_DIV_0_TRP_Msk;
 8001948:	4a02      	ldr	r2, [pc, #8]	; (8001954 <z_arm_fault_init+0xc>)
 800194a:	6953      	ldr	r3, [r2, #20]
 800194c:	f043 0310 	orr.w	r3, r3, #16
 8001950:	6153      	str	r3, [r2, #20]
	 * Stack to attempt to descend into secure region, in which case a
	 * Secure Hard Fault will occur and we can track the fault from there.
	 */
	SCB->CCR |= SCB_CCR_STKOFHFNMIGN_Msk;
#endif /* CONFIG_BUILTIN_STACK_GUARD */
}
 8001952:	4770      	bx	lr
 8001954:	e000ed00 	.word	0xe000ed00

08001958 <z_arm_bus_fault>:
#else
#error Unknown ARM architecture
#endif /* CONFIG_ARMV6_M_ARMV8_M_BASELINE */
SECTION_SUBSEC_FUNC(TEXT,__fault,z_arm_exc_spurious)

	mrs r0, MSP
 8001958:	f3ef 8008 	mrs	r0, MSP
	mrs r1, PSP
 800195c:	f3ef 8109 	mrs	r1, PSP
	push {r0, lr}
 8001960:	b501      	push	{r0, lr}
#elif defined(CONFIG_ARMV7_M_ARMV8_M_MAINLINE)
	push {r4-r11}
#endif
	mov  r3, sp /* pointer to _callee_saved_t */
#endif /* CONFIG_EXTRA_EXCEPTION_INFO */
	mov r2, lr /* EXC_RETURN */
 8001962:	4672      	mov	r2, lr
	bl z_arm_fault
 8001964:	f7ff ff08 	bl	8001778 <z_arm_fault>
	 * in this routine. Therefore, we can just reset
	 * the MSP to its value prior to entering the function
	 */
	add sp, #40
#endif
	pop {r0, pc}
 8001968:	bd01      	pop	{r0, pc}
 800196a:	bf00      	nop

0800196c <z_arm_interrupt_init>:
 800196c:	4804      	ldr	r0, [pc, #16]	; (8001980 <z_arm_interrupt_init+0x14>)
 * @return N/A
 */

void z_arm_interrupt_init(void)
{
	int irq = 0;
 800196e:	2300      	movs	r3, #0
 8001970:	2110      	movs	r1, #16
 8001972:	18c2      	adds	r2, r0, r3

	for (; irq < CONFIG_NUM_IRQS; irq++) {
 8001974:	3301      	adds	r3, #1
 8001976:	2b5b      	cmp	r3, #91	; 0x5b
 8001978:	f882 1300 	strb.w	r1, [r2, #768]	; 0x300
 800197c:	d1f9      	bne.n	8001972 <z_arm_interrupt_init+0x6>
		NVIC_SetPriority((IRQn_Type)irq, _IRQ_PRIO_OFFSET);
	}
}
 800197e:	4770      	bx	lr
 8001980:	e000e100 	.word	0xe000e100

08001984 <__start>:

    /* lock interrupts: will get unlocked when switch to main task */
#if defined(CONFIG_ARMV6_M_ARMV8_M_BASELINE)
    cpsid i
#elif defined(CONFIG_ARMV7_M_ARMV8_M_MAINLINE)
    movs.n r0, #_EXC_IRQ_DEFAULT_PRIO
 8001984:	2010      	movs	r0, #16
    msr BASEPRI, r0
 8001986:	f380 8811 	msr	BASEPRI, r0

    /*
     * Set PSP and use it to boot without using MSP, so that it
     * gets set to z_interrupt_stacks during initialization.
     */
    ldr r0, =z_interrupt_stacks
 800198a:	4808      	ldr	r0, [pc, #32]	; (80019ac <__start+0x28>)
    ldr r1, =CONFIG_ISR_STACK_SIZE + MPU_GUARD_ALIGN_AND_SIZE
 800198c:	f44f 6102 	mov.w	r1, #2080	; 0x820
    adds r0, r0, r1
 8001990:	1840      	adds	r0, r0, r1
    msr PSP, r0
 8001992:	f380 8809 	msr	PSP, r0
    mrs r0, CONTROL
 8001996:	f3ef 8014 	mrs	r0, CONTROL
    movs r1, #2
 800199a:	2102      	movs	r1, #2
    orrs r0, r1 /* CONTROL_SPSEL_Msk */
 800199c:	4308      	orrs	r0, r1
    msr CONTROL, r0
 800199e:	f380 8814 	msr	CONTROL, r0
    /*
     * When changing the stack pointer, software must use an ISB instruction
     * immediately after the MSR instruction. This ensures that instructions
     * after the ISB instruction execute using the new stack pointer.
     */
    isb
 80019a2:	f3bf 8f6f 	isb	sy
    /*
     * 'bl' jumps the furthest of the branch instructions that are
     * supported on all platforms. So it is used when jumping to z_arm_prep_c
     * (even though we do not intend to return).
     */
    bl z_arm_prep_c
 80019a6:	f7ff fcbb 	bl	8001320 <z_arm_prep_c>
 80019aa:	0000      	.short	0x0000
    ldr r0, =z_interrupt_stacks
 80019ac:	20000d00 	.word	0x20000d00

080019b0 <z_impl_k_thread_abort>:
#include <wait_q.h>
#include <sys/__assert.h>

void z_impl_k_thread_abort(k_tid_t thread)
{
	if (_current == thread) {
 80019b0:	4b06      	ldr	r3, [pc, #24]	; (80019cc <z_impl_k_thread_abort+0x1c>)
 80019b2:	689b      	ldr	r3, [r3, #8]
 80019b4:	4283      	cmp	r3, r0
 80019b6:	d107      	bne.n	80019c8 <z_impl_k_thread_abort+0x18>
  __ASM volatile ("MRS %0, ipsr" : "=r" (result) );
 80019b8:	f3ef 8305 	mrs	r3, IPSR
		if (arch_is_in_isr()) {
 80019bc:	b123      	cbz	r3, 80019c8 <z_impl_k_thread_abort+0x18>
			 * should no longer run after we return, so
			 * Trigger PendSV, in case we are in one of the
			 * situations where the isr check is true but there
			 * is not an implicit scheduler invocation.
			 */
			SCB->ICSR |= SCB_ICSR_PENDSVSET_Msk;
 80019be:	4a04      	ldr	r2, [pc, #16]	; (80019d0 <z_impl_k_thread_abort+0x20>)
 80019c0:	6853      	ldr	r3, [r2, #4]
 80019c2:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
 80019c6:	6053      	str	r3, [r2, #4]
		}
	}

	z_thread_abort(thread);
 80019c8:	f001 bb12 	b.w	8002ff0 <z_thread_abort>
 80019cc:	20000338 	.word	0x20000338
 80019d0:	e000ed00 	.word	0xe000ed00

080019d4 <z_arm_configure_static_mpu_regions>:
	/* Configure the static MPU regions within firmware SRAM boundaries.
	 * Start address of the image is given by _image_ram_start. The end
	 * of the firmware SRAM area is marked by __kernel_ram_end, taking
	 * into account the unused SRAM area, as well.
	 */
	arm_core_mpu_configure_static_mpu_regions(static_regions,
 80019d4:	4b02      	ldr	r3, [pc, #8]	; (80019e0 <z_arm_configure_static_mpu_regions+0xc>)
 80019d6:	4a03      	ldr	r2, [pc, #12]	; (80019e4 <z_arm_configure_static_mpu_regions+0x10>)
 80019d8:	4803      	ldr	r0, [pc, #12]	; (80019e8 <z_arm_configure_static_mpu_regions+0x14>)
 80019da:	2101      	movs	r1, #1
 80019dc:	f000 b88a 	b.w	8001af4 <arm_core_mpu_configure_static_mpu_regions>
 80019e0:	20030000 	.word	0x20030000
 80019e4:	20000000 	.word	0x20000000
 80019e8:	08004188 	.word	0x08004188

080019ec <z_arm_configure_dynamic_mpu_regions>:
#endif /* CONFIG_USERSPACE */
	{
		/* A supervisor thread only has the normal thread stack to
		 * protect with a stack guard.
		 */
		guard_start = thread->stack_info.start - guard_size;
 80019ec:	6e42      	ldr	r2, [r0, #100]	; 0x64
	}

	__ASSERT(region_num < _MAX_DYNAMIC_MPU_REGIONS_NUM,
		"Out-of-bounds error for dynamic region map.");

	dynamic_regions[region_num].start = guard_start;
 80019ee:	4b05      	ldr	r3, [pc, #20]	; (8001a04 <z_arm_configure_dynamic_mpu_regions+0x18>)
		guard_start = thread->stack_info.start - guard_size;
 80019f0:	3a20      	subs	r2, #32
	dynamic_regions[region_num].start = guard_start;
 80019f2:	601a      	str	r2, [r3, #0]
	dynamic_regions[region_num].size = guard_size;
	dynamic_regions[region_num].attr = K_MEM_PARTITION_P_RO_U_NA;
 80019f4:	4a04      	ldr	r2, [pc, #16]	; (8001a08 <z_arm_configure_dynamic_mpu_regions+0x1c>)
 80019f6:	2120      	movs	r1, #32
 80019f8:	e9c3 1201 	strd	r1, r2, [r3, #4]

	region_num++;
#endif /* CONFIG_MPU_STACK_GUARD */

	/* Configure the dynamic MPU regions */
	arm_core_mpu_configure_dynamic_mpu_regions(dynamic_regions,
 80019fc:	4618      	mov	r0, r3
 80019fe:	2101      	movs	r1, #1
 8001a00:	f000 b882 	b.w	8001b08 <arm_core_mpu_configure_dynamic_mpu_regions>
 8001a04:	200001b0 	.word	0x200001b0
 8001a08:	150b0000 	.word	0x150b0000

08001a0c <mpu_configure_regions>:
 * sanity check of the memory regions to be programmed.
 */
static int mpu_configure_regions(const struct z_arm_mpu_partition
	regions[], uint8_t regions_num, uint8_t start_reg_index,
	bool do_sanity_check)
{
 8001a0c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
#endif /* CPU_CORTEX_M0PLUS | CPU_CORTEX_M3 | CPU_CORTEX_M4 */
}

static inline void set_region_number(uint32_t index)
{
	MPU->RNR = index;
 8001a0e:	4f29      	ldr	r7, [pc, #164]	; (8001ab4 <mpu_configure_regions+0xa8>)
	int i;
	int reg_index = start_reg_index;
 8001a10:	4615      	mov	r5, r2

	for (i = 0; i < regions_num; i++) {
 8001a12:	2200      	movs	r2, #0
 8001a14:	428a      	cmp	r2, r1
 8001a16:	da14      	bge.n	8001a42 <mpu_configure_regions+0x36>
		if (regions[i].size == 0U) {
 8001a18:	6844      	ldr	r4, [r0, #4]
 8001a1a:	2c00      	cmp	r4, #0
 8001a1c:	d046      	beq.n	8001aac <mpu_configure_regions+0xa0>
			continue;
		}
		/* Non-empty region. */

		if (do_sanity_check &&
 8001a1e:	b1c3      	cbz	r3, 8001a52 <mpu_configure_regions+0x46>
	 * and greater or equal to the minimum
	 * MPU region size. Start address of the
	 * partition must align with size.
	 */
	int partition_is_valid =
		((part->size & (part->size - 1U)) == 0U)
 8001a20:	f104 3cff 	add.w	ip, r4, #4294967295	; 0xffffffff
		&&
		(part->size >= CONFIG_ARM_MPU_REGION_MIN_ALIGN_AND_SIZE)
		&&
 8001a24:	ea14 0f0c 	tst.w	r4, ip
 8001a28:	d00d      	beq.n	8001a46 <mpu_configure_regions+0x3a>
 8001a2a:	4823      	ldr	r0, [pc, #140]	; (8001ab8 <mpu_configure_regions+0xac>)
 8001a2c:	4b23      	ldr	r3, [pc, #140]	; (8001abc <mpu_configure_regions+0xb0>)
				(!mpu_partition_is_valid(&regions[i]))) {
			LOG_ERR("Partition %u: sanity check failed.", i);
 8001a2e:	4924      	ldr	r1, [pc, #144]	; (8001ac0 <mpu_configure_regions+0xb4>)
 8001a30:	1ac0      	subs	r0, r0, r3
 8001a32:	08c0      	lsrs	r0, r0, #3
 8001a34:	0180      	lsls	r0, r0, #6
		LOG_ERR("Failed to allocate new MPU region %u\n", index);
 8001a36:	f040 0001 	orr.w	r0, r0, #1
 8001a3a:	f001 fd1a 	bl	8003472 <log_string_sync>
			return -EINVAL;
		}

		reg_index = mpu_configure_region(reg_index, &regions[i]);
 8001a3e:	f06f 0515 	mvn.w	r5, #21
		/* Increment number of programmed MPU indices. */
		reg_index++;
	}

	return reg_index;
}
 8001a42:	4628      	mov	r0, r5
 8001a44:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
		&&
 8001a46:	2c1f      	cmp	r4, #31
 8001a48:	d9ef      	bls.n	8001a2a <mpu_configure_regions+0x1e>
		((part->start & (part->size - 1U)) == 0U);
 8001a4a:	6806      	ldr	r6, [r0, #0]
		&&
 8001a4c:	ea1c 0f06 	tst.w	ip, r6
 8001a50:	d1eb      	bne.n	8001a2a <mpu_configure_regions+0x1e>
 * to that power-of-two value.
 */
static inline uint32_t size_to_mpu_rasr_size(uint32_t size)
{
	/* The minimal supported region size is 32 bytes */
	if (size <= 32U) {
 8001a52:	2c20      	cmp	r4, #32
	region_conf.base = new_region->start;
 8001a54:	6806      	ldr	r6, [r0, #0]
#if defined(CONFIG_CPU_CORTEX_R)
	(void) size;

	p_attr->rasr = attr->rasr_attr;
#else
	p_attr->rasr = attr->rasr_attr | size_to_mpu_rasr_size(size);
 8001a56:	f8d0 c008 	ldr.w	ip, [r0, #8]
		reg_index = mpu_configure_region(reg_index, &regions[i]);
 8001a5a:	b2ed      	uxtb	r5, r5
	if (size <= 32U) {
 8001a5c:	d914      	bls.n	8001a88 <mpu_configure_regions+0x7c>
	if (size > (1UL << 31)) {
 8001a5e:	f1b4 4f00 	cmp.w	r4, #2147483648	; 0x80000000
 8001a62:	d813      	bhi.n	8001a8c <mpu_configure_regions+0x80>
	return ((32 - __builtin_clz(size - 1U) - 2 + 1) << MPU_RASR_SIZE_Pos) &
 8001a64:	3c01      	subs	r4, #1
 8001a66:	fab4 f484 	clz	r4, r4
 8001a6a:	f1c4 041f 	rsb	r4, r4, #31
 8001a6e:	0064      	lsls	r4, r4, #1
	if (index > (get_num_regions() - 1U)) {
 8001a70:	2d07      	cmp	r5, #7
	p_attr->rasr = attr->rasr_attr | size_to_mpu_rasr_size(size);
 8001a72:	ea4c 0404 	orr.w	r4, ip, r4
 8001a76:	d90b      	bls.n	8001a90 <mpu_configure_regions+0x84>
 8001a78:	480f      	ldr	r0, [pc, #60]	; (8001ab8 <mpu_configure_regions+0xac>)
 8001a7a:	4b10      	ldr	r3, [pc, #64]	; (8001abc <mpu_configure_regions+0xb0>)
		LOG_ERR("Failed to allocate new MPU region %u\n", index);
 8001a7c:	4911      	ldr	r1, [pc, #68]	; (8001ac4 <mpu_configure_regions+0xb8>)
 8001a7e:	1ac0      	subs	r0, r0, r3
 8001a80:	08c0      	lsrs	r0, r0, #3
 8001a82:	0180      	lsls	r0, r0, #6
 8001a84:	462a      	mov	r2, r5
 8001a86:	e7d6      	b.n	8001a36 <mpu_configure_regions+0x2a>
		return REGION_32B;
 8001a88:	2408      	movs	r4, #8
 8001a8a:	e7f1      	b.n	8001a70 <mpu_configure_regions+0x64>
		return REGION_4G;
 8001a8c:	243e      	movs	r4, #62	; 0x3e
 8001a8e:	e7ef      	b.n	8001a70 <mpu_configure_regions+0x64>
	MPU->RBAR = (region_conf->base & MPU_RBAR_ADDR_Msk)
 8001a90:	f026 061f 	bic.w	r6, r6, #31
				| MPU_RBAR_VALID_Msk | index;
 8001a94:	432e      	orrs	r6, r5
 8001a96:	f046 0610 	orr.w	r6, r6, #16
	MPU->RASR = region_conf->attr.rasr | MPU_RASR_ENABLE_Msk;
 8001a9a:	f044 0401 	orr.w	r4, r4, #1
 8001a9e:	f8c7 5098 	str.w	r5, [r7, #152]	; 0x98
	MPU->RBAR = (region_conf->base & MPU_RBAR_ADDR_Msk)
 8001aa2:	f8c7 609c 	str.w	r6, [r7, #156]	; 0x9c
		reg_index++;
 8001aa6:	3501      	adds	r5, #1
	MPU->RASR = region_conf->attr.rasr | MPU_RASR_ENABLE_Msk;
 8001aa8:	f8c7 40a0 	str.w	r4, [r7, #160]	; 0xa0
	for (i = 0; i < regions_num; i++) {
 8001aac:	3201      	adds	r2, #1
 8001aae:	300c      	adds	r0, #12
 8001ab0:	e7b0      	b.n	8001a14 <mpu_configure_regions+0x8>
 8001ab2:	bf00      	nop
 8001ab4:	e000ed00 	.word	0xe000ed00
 8001ab8:	08004050 	.word	0x08004050
 8001abc:	08004048 	.word	0x08004048
 8001ac0:	080047d1 	.word	0x080047d1
 8001ac4:	080047f4 	.word	0x080047f4

08001ac8 <arm_core_mpu_enable>:
void arm_core_mpu_enable(void)
{
	/* Enable MPU and use the default memory map as a
	 * background region for privileged software access.
	 */
	MPU->CTRL = MPU_CTRL_ENABLE_Msk | MPU_CTRL_PRIVDEFENA_Msk;
 8001ac8:	4b04      	ldr	r3, [pc, #16]	; (8001adc <arm_core_mpu_enable+0x14>)
 8001aca:	2205      	movs	r2, #5
 8001acc:	f8c3 2094 	str.w	r2, [r3, #148]	; 0x94
  __ASM volatile ("dsb 0xF":::"memory");
 8001ad0:	f3bf 8f4f 	dsb	sy
  __ASM volatile ("isb 0xF":::"memory");
 8001ad4:	f3bf 8f6f 	isb	sy

	/* Make sure that all the registers are set before proceeding */
	__DSB();
	__ISB();
}
 8001ad8:	4770      	bx	lr
 8001ada:	bf00      	nop
 8001adc:	e000ed00 	.word	0xe000ed00

08001ae0 <arm_core_mpu_disable>:
  __ASM volatile ("dmb 0xF":::"memory");
 8001ae0:	f3bf 8f5f 	dmb	sy
{
	/* Force any outstanding transfers to complete before disabling MPU */
	__DMB();

	/* Disable MPU */
	MPU->CTRL = 0;
 8001ae4:	4b02      	ldr	r3, [pc, #8]	; (8001af0 <arm_core_mpu_disable+0x10>)
 8001ae6:	2200      	movs	r2, #0
 8001ae8:	f8c3 2094 	str.w	r2, [r3, #148]	; 0x94
}
 8001aec:	4770      	bx	lr
 8001aee:	bf00      	nop
 8001af0:	e000ed00 	.word	0xe000ed00

08001af4 <arm_core_mpu_configure_static_mpu_regions>:
 * @brief configure fixed (static) MPU regions.
 */
void arm_core_mpu_configure_static_mpu_regions(const struct z_arm_mpu_partition
	static_regions[], const uint8_t regions_num,
	const uint32_t background_area_start, const uint32_t background_area_end)
{
 8001af4:	b510      	push	{r4, lr}
static int mpu_configure_static_mpu_regions(const struct z_arm_mpu_partition
	static_regions[], const uint8_t regions_num,
	const uint32_t background_area_base,
	const uint32_t background_area_end)
{
	int mpu_reg_index = static_regions_num;
 8001af6:	4c03      	ldr	r4, [pc, #12]	; (8001b04 <arm_core_mpu_configure_static_mpu_regions+0x10>)
	 * programmed on top of SRAM region configuration.
	 */
	ARG_UNUSED(background_area_base);
	ARG_UNUSED(background_area_end);

	mpu_reg_index = mpu_configure_regions(static_regions,
 8001af8:	2301      	movs	r3, #1
 8001afa:	7822      	ldrb	r2, [r4, #0]
 8001afc:	f7ff ff86 	bl	8001a0c <mpu_configure_regions>
		regions_num, mpu_reg_index, true);

	static_regions_num = mpu_reg_index;
 8001b00:	7020      	strb	r0, [r4, #0]
					       background_area_start, background_area_end) == -EINVAL) {

		__ASSERT(0, "Configuring %u static MPU regions failed\n",
			regions_num);
	}
}
 8001b02:	bd10      	pop	{r4, pc}
 8001b04:	2000036f 	.word	0x2000036f

08001b08 <arm_core_mpu_configure_dynamic_mpu_regions>:
/**
 * @brief configure dynamic MPU regions.
 */
void arm_core_mpu_configure_dynamic_mpu_regions(const struct z_arm_mpu_partition
	dynamic_regions[], uint8_t regions_num)
{
 8001b08:	b508      	push	{r3, lr}

	/* In ARMv7-M architecture the dynamic regions are
	 * programmed on top of existing SRAM region configuration.
	 */

	mpu_reg_index = mpu_configure_regions(dynamic_regions,
 8001b0a:	4a09      	ldr	r2, [pc, #36]	; (8001b30 <arm_core_mpu_configure_dynamic_mpu_regions+0x28>)
 8001b0c:	2300      	movs	r3, #0
 8001b0e:	7812      	ldrb	r2, [r2, #0]
 8001b10:	f7ff ff7c 	bl	8001a0c <mpu_configure_regions>
		regions_num, mpu_reg_index, false);

	if (mpu_reg_index != -EINVAL) {
 8001b14:	f110 0f16 	cmn.w	r0, #22
 8001b18:	d003      	beq.n	8001b22 <arm_core_mpu_configure_dynamic_mpu_regions+0x1a>
/** Clear and disable the given MPU region.
* \param rnr Region number to be cleared.
*/
__STATIC_INLINE void ARM_MPU_ClrRegion(uint32_t rnr)
{
  MPU->RNR = rnr;
 8001b1a:	4b06      	ldr	r3, [pc, #24]	; (8001b34 <arm_core_mpu_configure_dynamic_mpu_regions+0x2c>)
  MPU->RASR = 0U;
 8001b1c:	2200      	movs	r2, #0

		/* Disable the non-programmed MPU regions. */
		for (int i = mpu_reg_index; i < get_num_regions(); i++) {
 8001b1e:	2807      	cmp	r0, #7
 8001b20:	dd00      	ble.n	8001b24 <arm_core_mpu_configure_dynamic_mpu_regions+0x1c>
		== -EINVAL) {

		__ASSERT(0, "Configuring %u dynamic MPU regions failed\n",
			regions_num);
	}
}
 8001b22:	bd08      	pop	{r3, pc}
  MPU->RNR = rnr;
 8001b24:	f8c3 0098 	str.w	r0, [r3, #152]	; 0x98
  MPU->RASR = 0U;
 8001b28:	f8c3 20a0 	str.w	r2, [r3, #160]	; 0xa0
 8001b2c:	3001      	adds	r0, #1
 8001b2e:	e7f6      	b.n	8001b1e <arm_core_mpu_configure_dynamic_mpu_regions+0x16>
 8001b30:	2000036f 	.word	0x2000036f
 8001b34:	e000ed00 	.word	0xe000ed00

08001b38 <z_arm_mpu_init>:
 */
int z_arm_mpu_init(void)
{
	uint32_t r_index;

	if (mpu_config.num_regions > get_num_regions()) {
 8001b38:	4914      	ldr	r1, [pc, #80]	; (8001b8c <z_arm_mpu_init+0x54>)
 8001b3a:	6808      	ldr	r0, [r1, #0]
 8001b3c:	2808      	cmp	r0, #8
{
 8001b3e:	b510      	push	{r4, lr}
	if (mpu_config.num_regions > get_num_regions()) {
 8001b40:	d821      	bhi.n	8001b86 <z_arm_mpu_init+0x4e>
		return -1;
	}

	LOG_DBG("total region count: %d", get_num_regions());

	arm_core_mpu_disable();
 8001b42:	f7ff ffcd 	bl	8001ae0 <arm_core_mpu_disable>
 8001b46:	4c12      	ldr	r4, [pc, #72]	; (8001b90 <z_arm_mpu_init+0x58>)
 8001b48:	6849      	ldr	r1, [r1, #4]

	/* Architecture-specific configuration */
	mpu_init();

	/* Program fixed regions configured at SOC definition. */
	for (r_index = 0U; r_index < mpu_config.num_regions; r_index++) {
 8001b4a:	2200      	movs	r2, #0
 8001b4c:	4290      	cmp	r0, r2
 8001b4e:	f101 010c 	add.w	r1, r1, #12
 8001b52:	d105      	bne.n	8001b60 <z_arm_mpu_init+0x28>
		region_init(r_index, &mpu_config.mpu_regions[r_index]);
	}

	/* Update the number of programmed MPU regions. */
	static_regions_num = mpu_config.num_regions;
 8001b54:	4b0f      	ldr	r3, [pc, #60]	; (8001b94 <z_arm_mpu_init+0x5c>)
 8001b56:	7018      	strb	r0, [r3, #0]


	arm_core_mpu_enable();
 8001b58:	f7ff ffb6 	bl	8001ac8 <arm_core_mpu_enable>
		(MPU->TYPE & MPU_TYPE_DREGION_Msk) >> MPU_TYPE_DREGION_Pos ==
		NUM_MPU_REGIONS,
		"Invalid number of MPU regions\n");
#endif /* CORTEX_M0PLUS || CPU_CORTEX_M3 || CPU_CORTEX_M4 */

	return 0;
 8001b5c:	2000      	movs	r0, #0
}
 8001b5e:	bd10      	pop	{r4, pc}
 8001b60:	f8c4 2098 	str.w	r2, [r4, #152]	; 0x98
	MPU->RBAR = (region_conf->base & MPU_RBAR_ADDR_Msk)
 8001b64:	f851 3c0c 	ldr.w	r3, [r1, #-12]
 8001b68:	f023 031f 	bic.w	r3, r3, #31
				| MPU_RBAR_VALID_Msk | index;
 8001b6c:	4313      	orrs	r3, r2
 8001b6e:	f043 0310 	orr.w	r3, r3, #16
	MPU->RBAR = (region_conf->base & MPU_RBAR_ADDR_Msk)
 8001b72:	f8c4 309c 	str.w	r3, [r4, #156]	; 0x9c
	MPU->RASR = region_conf->attr.rasr | MPU_RASR_ENABLE_Msk;
 8001b76:	f851 3c04 	ldr.w	r3, [r1, #-4]
 8001b7a:	f043 0301 	orr.w	r3, r3, #1
 8001b7e:	f8c4 30a0 	str.w	r3, [r4, #160]	; 0xa0
	for (r_index = 0U; r_index < mpu_config.num_regions; r_index++) {
 8001b82:	3201      	adds	r2, #1
 8001b84:	e7e2      	b.n	8001b4c <z_arm_mpu_init+0x14>
		return -1;
 8001b86:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8001b8a:	e7e8      	b.n	8001b5e <z_arm_mpu_init+0x26>
 8001b8c:	08004194 	.word	0x08004194
 8001b90:	e000ed00 	.word	0xe000ed00
 8001b94:	2000036f 	.word	0x2000036f

08001b98 <__stdout_hook_install>:

static int (*_stdout_hook)(int) = _stdout_hook_default;

void __stdout_hook_install(int (*hook)(int))
{
	_stdout_hook = hook;
 8001b98:	4b01      	ldr	r3, [pc, #4]	; (8001ba0 <__stdout_hook_install+0x8>)
 8001b9a:	6018      	str	r0, [r3, #0]
}
 8001b9c:	4770      	bx	lr
 8001b9e:	bf00      	nop
 8001ba0:	20000008 	.word	0x20000008

08001ba4 <__stm32_exti_isr.isra.0>:
 *
 * @param arg isr argument
 * @param min low end of EXTI# range
 * @param max low end of EXTI# range
 */
static void __stm32_exti_isr(int min, int max, const struct device *dev)
 8001ba4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
  * @note   Please check each device line mapping for EXTI Line availability
  * @retval State of bit (1 or 0).
  */
__STATIC_INLINE uint32_t LL_EXTI_IsActiveFlag_0_31(uint32_t ExtiLine)
{
  return (READ_BIT(EXTI->PR, ExtiLine) == (ExtiLine));
 8001ba8:	4f0d      	ldr	r7, [pc, #52]	; (8001be0 <__stm32_exti_isr.isra.0+0x3c>)
 8001baa:	4604      	mov	r4, r0
 8001bac:	460e      	mov	r6, r1
 8001bae:	4615      	mov	r5, r2
		return LL_EXTI_IsActiveFlag_0_31(1 << line);
 8001bb0:	f04f 0801 	mov.w	r8, #1
			/* run callback only if one is registered */
			if (!data->cb[line].cb) {
				continue;
			}

			data->cb[line].cb(line, data->cb[line].data);
 8001bb4:	f102 0904 	add.w	r9, r2, #4
	for (line = min; line < max; line++) {
 8001bb8:	42b4      	cmp	r4, r6
 8001bba:	db01      	blt.n	8001bc0 <__stm32_exti_isr.isra.0+0x1c>
		}
	}
}
 8001bbc:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8001bc0:	697a      	ldr	r2, [r7, #20]
		return LL_EXTI_IsActiveFlag_0_31(1 << line);
 8001bc2:	fa08 f304 	lsl.w	r3, r8, r4
		if (stm32_exti_is_pending(line)) {
 8001bc6:	ea33 0202 	bics.w	r2, r3, r2
 8001bca:	d107      	bne.n	8001bdc <__stm32_exti_isr.isra.0+0x38>
  * @note   Please check each device line mapping for EXTI Line availability
  * @retval None
  */
__STATIC_INLINE void LL_EXTI_ClearFlag_0_31(uint32_t ExtiLine)
{
  WRITE_REG(EXTI->PR, ExtiLine);
 8001bcc:	617b      	str	r3, [r7, #20]
			if (!data->cb[line].cb) {
 8001bce:	f855 3034 	ldr.w	r3, [r5, r4, lsl #3]
 8001bd2:	b11b      	cbz	r3, 8001bdc <__stm32_exti_isr.isra.0+0x38>
			data->cb[line].cb(line, data->cb[line].data);
 8001bd4:	f859 1034 	ldr.w	r1, [r9, r4, lsl #3]
 8001bd8:	4620      	mov	r0, r4
 8001bda:	4798      	blx	r3
	for (line = min; line < max; line++) {
 8001bdc:	3401      	adds	r4, #1
 8001bde:	e7eb      	b.n	8001bb8 <__stm32_exti_isr.isra.0+0x14>
 8001be0:	40013c00 	.word	0x40013c00

08001be4 <stm32_exti_enable>:
  SET_BIT(EXTI->IMR, ExtiLine);
 8001be4:	4a04      	ldr	r2, [pc, #16]	; (8001bf8 <stm32_exti_enable+0x14>)
	LL_EXTI_EnableIT_0_31(1 << line);
 8001be6:	2301      	movs	r3, #1
 8001be8:	6811      	ldr	r1, [r2, #0]
 8001bea:	4083      	lsls	r3, r0
 8001bec:	430b      	orrs	r3, r1
 8001bee:	6013      	str	r3, [r2, #0]
	irq_enable(irqnum);
 8001bf0:	4b02      	ldr	r3, [pc, #8]	; (8001bfc <stm32_exti_enable+0x18>)
 8001bf2:	5618      	ldrsb	r0, [r3, r0]
 8001bf4:	f7ff bb68 	b.w	80012c8 <arch_irq_enable>
 8001bf8:	40013c00 	.word	0x40013c00
 8001bfc:	08004847 	.word	0x08004847

08001c00 <stm32_exti_disable>:
	if (line < 32) {
 8001c00:	281f      	cmp	r0, #31
 8001c02:	dc07      	bgt.n	8001c14 <stm32_exti_disable+0x14>
  CLEAR_BIT(EXTI->IMR, ExtiLine);
 8001c04:	4904      	ldr	r1, [pc, #16]	; (8001c18 <stm32_exti_disable+0x18>)
		LL_EXTI_DisableIT_0_31(1 << line);
 8001c06:	2201      	movs	r2, #1
 8001c08:	680b      	ldr	r3, [r1, #0]
 8001c0a:	fa02 f000 	lsl.w	r0, r2, r0
 8001c0e:	ea23 0000 	bic.w	r0, r3, r0
 8001c12:	6008      	str	r0, [r1, #0]
}
 8001c14:	4770      	bx	lr
 8001c16:	bf00      	nop
 8001c18:	40013c00 	.word	0x40013c00

08001c1c <stm32_exti_trigger>:
	switch (trigger) {
 8001c1c:	2903      	cmp	r1, #3
 8001c1e:	d80f      	bhi.n	8001c40 <stm32_exti_trigger+0x24>
 8001c20:	e8df f001 	tbb	[pc, r1]
 8001c24:	23170f02 	.word	0x23170f02
  CLEAR_BIT(EXTI->RTSR, ExtiLine);
 8001c28:	4b15      	ldr	r3, [pc, #84]	; (8001c80 <stm32_exti_trigger+0x64>)
		LL_EXTI_DisableRisingTrig_0_31(1 << line);
 8001c2a:	2201      	movs	r2, #1
 8001c2c:	6899      	ldr	r1, [r3, #8]
 8001c2e:	fa02 f000 	lsl.w	r0, r2, r0
 8001c32:	ea21 0100 	bic.w	r1, r1, r0
 8001c36:	6099      	str	r1, [r3, #8]
  CLEAR_BIT(EXTI->FTSR, ExtiLine);
 8001c38:	68da      	ldr	r2, [r3, #12]
 8001c3a:	ea22 0000 	bic.w	r0, r2, r0
  SET_BIT(EXTI->FTSR, ExtiLine);
 8001c3e:	60d8      	str	r0, [r3, #12]
}
 8001c40:	4770      	bx	lr
		LL_EXTI_EnableRisingTrig_0_31(1 << line);
 8001c42:	2301      	movs	r3, #1
 8001c44:	fa03 f000 	lsl.w	r0, r3, r0
  SET_BIT(EXTI->RTSR, ExtiLine);
 8001c48:	4b0d      	ldr	r3, [pc, #52]	; (8001c80 <stm32_exti_trigger+0x64>)
 8001c4a:	689a      	ldr	r2, [r3, #8]
 8001c4c:	4302      	orrs	r2, r0
 8001c4e:	609a      	str	r2, [r3, #8]
 8001c50:	e7f2      	b.n	8001c38 <stm32_exti_trigger+0x1c>
		LL_EXTI_EnableFallingTrig_0_31(1 << line);
 8001c52:	2301      	movs	r3, #1
 8001c54:	fa03 f000 	lsl.w	r0, r3, r0
  SET_BIT(EXTI->FTSR, ExtiLine);
 8001c58:	4b09      	ldr	r3, [pc, #36]	; (8001c80 <stm32_exti_trigger+0x64>)
 8001c5a:	68da      	ldr	r2, [r3, #12]
 8001c5c:	4302      	orrs	r2, r0
 8001c5e:	60da      	str	r2, [r3, #12]
  CLEAR_BIT(EXTI->RTSR, ExtiLine);
 8001c60:	689a      	ldr	r2, [r3, #8]
 8001c62:	ea22 0000 	bic.w	r0, r2, r0
 8001c66:	6098      	str	r0, [r3, #8]
}
 8001c68:	4770      	bx	lr
		LL_EXTI_EnableRisingTrig_0_31(1 << line);
 8001c6a:	2301      	movs	r3, #1
 8001c6c:	fa03 f000 	lsl.w	r0, r3, r0
  SET_BIT(EXTI->RTSR, ExtiLine);
 8001c70:	4b03      	ldr	r3, [pc, #12]	; (8001c80 <stm32_exti_trigger+0x64>)
 8001c72:	689a      	ldr	r2, [r3, #8]
 8001c74:	4302      	orrs	r2, r0
 8001c76:	609a      	str	r2, [r3, #8]
  SET_BIT(EXTI->FTSR, ExtiLine);
 8001c78:	68da      	ldr	r2, [r3, #12]
 8001c7a:	4310      	orrs	r0, r2
 8001c7c:	e7df      	b.n	8001c3e <stm32_exti_trigger+0x22>
 8001c7e:	bf00      	nop
 8001c80:	40013c00 	.word	0x40013c00

08001c84 <stm32_exti_set_callback>:
int stm32_exti_set_callback(int line, stm32_exti_callback_t cb, void *arg)
{
	const struct device *dev = DEVICE_DT_GET(EXTI_NODE);
	struct stm32_exti_data *data = dev->data;

	if (data->cb[line].cb) {
 8001c84:	4b07      	ldr	r3, [pc, #28]	; (8001ca4 <stm32_exti_set_callback+0x20>)
{
 8001c86:	b510      	push	{r4, lr}
 8001c88:	4604      	mov	r4, r0
	if (data->cb[line].cb) {
 8001c8a:	f853 0030 	ldr.w	r0, [r3, r0, lsl #3]
 8001c8e:	b928      	cbnz	r0, 8001c9c <stm32_exti_set_callback+0x18>
		return -EBUSY;
	}

	data->cb[line].cb = cb;
 8001c90:	f843 1034 	str.w	r1, [r3, r4, lsl #3]
	data->cb[line].data = arg;
 8001c94:	eb03 03c4 	add.w	r3, r3, r4, lsl #3
 8001c98:	605a      	str	r2, [r3, #4]

	return 0;
}
 8001c9a:	bd10      	pop	{r4, pc}
		return -EBUSY;
 8001c9c:	f06f 000f 	mvn.w	r0, #15
 8001ca0:	e7fb      	b.n	8001c9a <stm32_exti_set_callback+0x16>
 8001ca2:	bf00      	nop
 8001ca4:	200001bc 	.word	0x200001bc

08001ca8 <stm32_exti_unset_callback>:
void stm32_exti_unset_callback(int line)
{
	const struct device *dev = DEVICE_DT_GET(EXTI_NODE);
	struct stm32_exti_data *data = dev->data;

	data->cb[line].cb = NULL;
 8001ca8:	4b03      	ldr	r3, [pc, #12]	; (8001cb8 <stm32_exti_unset_callback+0x10>)
 8001caa:	2200      	movs	r2, #0
 8001cac:	f843 2030 	str.w	r2, [r3, r0, lsl #3]
	data->cb[line].data = NULL;
 8001cb0:	eb03 03c0 	add.w	r3, r3, r0, lsl #3
 8001cb4:	605a      	str	r2, [r3, #4]
}
 8001cb6:	4770      	bx	lr
 8001cb8:	200001bc 	.word	0x200001bc

08001cbc <stm32_clock_control_on>:
{
	struct stm32_pclken *pclken = (struct stm32_pclken *)(sub_system);

	ARG_UNUSED(dev);

	switch (pclken->bus) {
 8001cbc:	680b      	ldr	r3, [r1, #0]
{
 8001cbe:	b086      	sub	sp, #24
	switch (pclken->bus) {
 8001cc0:	2b06      	cmp	r3, #6
 8001cc2:	d839      	bhi.n	8001d38 <stm32_clock_control_on+0x7c>
 8001cc4:	e8df f003 	tbb	[pc, r3]
 8001cc8:	2e241004 	.word	0x2e241004
 8001ccc:	3838      	.short	0x3838
 8001cce:	1a          	.byte	0x1a
 8001ccf:	00          	.byte	0x00
  * @retval None
*/
__STATIC_INLINE void LL_AHB1_GRP1_EnableClock(uint32_t Periphs)
{
  __IO uint32_t tmpreg;
  SET_BIT(RCC->AHB1ENR, Periphs);
 8001cd0:	4a1b      	ldr	r2, [pc, #108]	; (8001d40 <stm32_clock_control_on+0x84>)
	case STM32_CLOCK_BUS_AHB1:
		LL_AHB1_GRP1_EnableClock(pclken->enr);
 8001cd2:	684b      	ldr	r3, [r1, #4]
 8001cd4:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001cd6:	4319      	orrs	r1, r3
 8001cd8:	6311      	str	r1, [r2, #48]	; 0x30
  /* Delay after an RCC peripheral clock enabling */
  tmpreg = READ_BIT(RCC->AHB1ENR, Periphs);
 8001cda:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8001cdc:	4013      	ands	r3, r2
 8001cde:	9301      	str	r3, [sp, #4]
  (void)tmpreg;
 8001ce0:	9b01      	ldr	r3, [sp, #4]
#endif
	default:
		return -ENOTSUP;
	}

	return 0;
 8001ce2:	2000      	movs	r0, #0
}
 8001ce4:	b006      	add	sp, #24
 8001ce6:	4770      	bx	lr
  * @retval None
*/
__STATIC_INLINE void LL_AHB2_GRP1_EnableClock(uint32_t Periphs)
{
  __IO uint32_t tmpreg;
  SET_BIT(RCC->AHB2ENR, Periphs);
 8001ce8:	4a15      	ldr	r2, [pc, #84]	; (8001d40 <stm32_clock_control_on+0x84>)
		LL_AHB2_GRP1_EnableClock(pclken->enr);
 8001cea:	684b      	ldr	r3, [r1, #4]
 8001cec:	6b51      	ldr	r1, [r2, #52]	; 0x34
 8001cee:	4319      	orrs	r1, r3
 8001cf0:	6351      	str	r1, [r2, #52]	; 0x34
  /* Delay after an RCC peripheral clock enabling */
  tmpreg = READ_BIT(RCC->AHB2ENR, Periphs);
 8001cf2:	6b52      	ldr	r2, [r2, #52]	; 0x34
 8001cf4:	4013      	ands	r3, r2
 8001cf6:	9302      	str	r3, [sp, #8]
  (void)tmpreg;
 8001cf8:	9b02      	ldr	r3, [sp, #8]
 8001cfa:	e7f2      	b.n	8001ce2 <stm32_clock_control_on+0x26>
  * @retval None
*/
__STATIC_INLINE void LL_AHB3_GRP1_EnableClock(uint32_t Periphs)
{
  __IO uint32_t tmpreg;
  SET_BIT(RCC->AHB3ENR, Periphs);
 8001cfc:	4a10      	ldr	r2, [pc, #64]	; (8001d40 <stm32_clock_control_on+0x84>)
		LL_AHB3_GRP1_EnableClock(pclken->enr);
 8001cfe:	684b      	ldr	r3, [r1, #4]
 8001d00:	6b91      	ldr	r1, [r2, #56]	; 0x38
 8001d02:	4319      	orrs	r1, r3
 8001d04:	6391      	str	r1, [r2, #56]	; 0x38
  /* Delay after an RCC peripheral clock enabling */
  tmpreg = READ_BIT(RCC->AHB3ENR, Periphs);
 8001d06:	6b92      	ldr	r2, [r2, #56]	; 0x38
 8001d08:	4013      	ands	r3, r2
 8001d0a:	9303      	str	r3, [sp, #12]
  (void)tmpreg;
 8001d0c:	9b03      	ldr	r3, [sp, #12]
 8001d0e:	e7e8      	b.n	8001ce2 <stm32_clock_control_on+0x26>
  * @retval None
*/
__STATIC_INLINE void LL_APB1_GRP1_EnableClock(uint32_t Periphs)
{
  __IO uint32_t tmpreg;
  SET_BIT(RCC->APB1ENR, Periphs);
 8001d10:	4a0b      	ldr	r2, [pc, #44]	; (8001d40 <stm32_clock_control_on+0x84>)
		LL_APB1_GRP1_EnableClock(pclken->enr);
 8001d12:	684b      	ldr	r3, [r1, #4]
 8001d14:	6c11      	ldr	r1, [r2, #64]	; 0x40
 8001d16:	4319      	orrs	r1, r3
 8001d18:	6411      	str	r1, [r2, #64]	; 0x40
  /* Delay after an RCC peripheral clock enabling */
  tmpreg = READ_BIT(RCC->APB1ENR, Periphs);
 8001d1a:	6c12      	ldr	r2, [r2, #64]	; 0x40
 8001d1c:	4013      	ands	r3, r2
 8001d1e:	9304      	str	r3, [sp, #16]
  (void)tmpreg;
 8001d20:	9b04      	ldr	r3, [sp, #16]
 8001d22:	e7de      	b.n	8001ce2 <stm32_clock_control_on+0x26>
  * @retval None
*/
__STATIC_INLINE void LL_APB2_GRP1_EnableClock(uint32_t Periphs)
{
  __IO uint32_t tmpreg;
  SET_BIT(RCC->APB2ENR, Periphs);
 8001d24:	4a06      	ldr	r2, [pc, #24]	; (8001d40 <stm32_clock_control_on+0x84>)
		LL_APB2_GRP1_EnableClock(pclken->enr);
 8001d26:	684b      	ldr	r3, [r1, #4]
 8001d28:	6c51      	ldr	r1, [r2, #68]	; 0x44
 8001d2a:	4319      	orrs	r1, r3
 8001d2c:	6451      	str	r1, [r2, #68]	; 0x44
  /* Delay after an RCC peripheral clock enabling */
  tmpreg = READ_BIT(RCC->APB2ENR, Periphs);
 8001d2e:	6c52      	ldr	r2, [r2, #68]	; 0x44
 8001d30:	4013      	ands	r3, r2
 8001d32:	9305      	str	r3, [sp, #20]
  (void)tmpreg;
 8001d34:	9b05      	ldr	r3, [sp, #20]
 8001d36:	e7d4      	b.n	8001ce2 <stm32_clock_control_on+0x26>
	switch (pclken->bus) {
 8001d38:	f06f 0085 	mvn.w	r0, #133	; 0x85
 8001d3c:	e7d2      	b.n	8001ce4 <stm32_clock_control_on+0x28>
 8001d3e:	bf00      	nop
 8001d40:	40023800 	.word	0x40023800

08001d44 <stm32_clock_control_off>:
{
	struct stm32_pclken *pclken = (struct stm32_pclken *)(sub_system);

	ARG_UNUSED(dev);

	switch (pclken->bus) {
 8001d44:	680b      	ldr	r3, [r1, #0]
 8001d46:	2b06      	cmp	r3, #6
 8001d48:	d829      	bhi.n	8001d9e <stm32_clock_control_off+0x5a>
 8001d4a:	e8df f003 	tbb	[pc, r3]
 8001d4e:	0c04      	.short	0x0c04
 8001d50:	2828211a 	.word	0x2828211a
 8001d54:	13          	.byte	0x13
 8001d55:	00          	.byte	0x00
  CLEAR_BIT(RCC->AHB1ENR, Periphs);
 8001d56:	4a13      	ldr	r2, [pc, #76]	; (8001da4 <stm32_clock_control_off+0x60>)
 8001d58:	6849      	ldr	r1, [r1, #4]
 8001d5a:	6b13      	ldr	r3, [r2, #48]	; 0x30
 8001d5c:	ea23 0301 	bic.w	r3, r3, r1
 8001d60:	6313      	str	r3, [r2, #48]	; 0x30
#endif
	default:
		return -ENOTSUP;
	}

	return 0;
 8001d62:	2000      	movs	r0, #0
}
 8001d64:	4770      	bx	lr
  CLEAR_BIT(RCC->AHB2ENR, Periphs);
 8001d66:	4a0f      	ldr	r2, [pc, #60]	; (8001da4 <stm32_clock_control_off+0x60>)
 8001d68:	6849      	ldr	r1, [r1, #4]
 8001d6a:	6b53      	ldr	r3, [r2, #52]	; 0x34
 8001d6c:	ea23 0301 	bic.w	r3, r3, r1
 8001d70:	6353      	str	r3, [r2, #52]	; 0x34
 8001d72:	e7f6      	b.n	8001d62 <stm32_clock_control_off+0x1e>
  CLEAR_BIT(RCC->AHB3ENR, Periphs);
 8001d74:	4a0b      	ldr	r2, [pc, #44]	; (8001da4 <stm32_clock_control_off+0x60>)
 8001d76:	6849      	ldr	r1, [r1, #4]
 8001d78:	6b93      	ldr	r3, [r2, #56]	; 0x38
 8001d7a:	ea23 0301 	bic.w	r3, r3, r1
 8001d7e:	6393      	str	r3, [r2, #56]	; 0x38
 8001d80:	e7ef      	b.n	8001d62 <stm32_clock_control_off+0x1e>
  CLEAR_BIT(RCC->APB1ENR, Periphs);
 8001d82:	4a08      	ldr	r2, [pc, #32]	; (8001da4 <stm32_clock_control_off+0x60>)
 8001d84:	6849      	ldr	r1, [r1, #4]
 8001d86:	6c13      	ldr	r3, [r2, #64]	; 0x40
 8001d88:	ea23 0301 	bic.w	r3, r3, r1
 8001d8c:	6413      	str	r3, [r2, #64]	; 0x40
 8001d8e:	e7e8      	b.n	8001d62 <stm32_clock_control_off+0x1e>
  *         (*) value not defined in all devices.
  * @retval None
*/
__STATIC_INLINE void LL_APB2_GRP1_DisableClock(uint32_t Periphs)
{
  CLEAR_BIT(RCC->APB2ENR, Periphs);
 8001d90:	4a04      	ldr	r2, [pc, #16]	; (8001da4 <stm32_clock_control_off+0x60>)
 8001d92:	6849      	ldr	r1, [r1, #4]
 8001d94:	6c53      	ldr	r3, [r2, #68]	; 0x44
 8001d96:	ea23 0301 	bic.w	r3, r3, r1
 8001d9a:	6453      	str	r3, [r2, #68]	; 0x44
 8001d9c:	e7e1      	b.n	8001d62 <stm32_clock_control_off+0x1e>
	switch (pclken->bus) {
 8001d9e:	f06f 0085 	mvn.w	r0, #133	; 0x85
}
 8001da2:	4770      	bx	lr
 8001da4:	40023800 	.word	0x40023800

08001da8 <stm32_clock_control_get_subsys_rate>:
	 * Get AHB Clock (= SystemCoreClock = SYSCLK/prescaler)
	 * SystemCoreClock is preferred to CONFIG_SYS_CLOCK_HW_CYCLES_PER_SEC
	 * since it will be updated after clock configuration and hence
	 * more likely to contain actual clock speed
	 */
	uint32_t ahb_clock = SystemCoreClock;
 8001da8:	4b09      	ldr	r3, [pc, #36]	; (8001dd0 <stm32_clock_control_get_subsys_rate+0x28>)
					    STM32_AHB3_PRESCALER);
#endif

	ARG_UNUSED(clock);

	switch (pclken->bus) {
 8001daa:	6809      	ldr	r1, [r1, #0]
	uint32_t ahb_clock = SystemCoreClock;
 8001dac:	681b      	ldr	r3, [r3, #0]
	switch (pclken->bus) {
 8001dae:	2906      	cmp	r1, #6
 8001db0:	d80b      	bhi.n	8001dca <stm32_clock_control_get_subsys_rate+0x22>
 8001db2:	e8df f001 	tbb	[pc, r1]
 8001db6:	0505      	.short	0x0505
 8001db8:	0a0a0804 	.word	0x0a0a0804
 8001dbc:	05          	.byte	0x05
 8001dbd:	00          	.byte	0x00
	return clock / prescaler;
 8001dbe:	089b      	lsrs	r3, r3, #2
		/*
		 * STM32G0x only has one APB, but two reset/clock enable
		 * registers for peripherals, so return the APB1 clock rate here
		 */
#endif /* CONFIG_SOC_SERIES_STM32G0X */
		*rate = apb1_clock;
 8001dc0:	6013      	str	r3, [r2, #0]
#endif
	default:
		return -ENOTSUP;
	}

	return 0;
 8001dc2:	2000      	movs	r0, #0
		break;
 8001dc4:	4770      	bx	lr
	return clock / prescaler;
 8001dc6:	085b      	lsrs	r3, r3, #1
 8001dc8:	e7fa      	b.n	8001dc0 <stm32_clock_control_get_subsys_rate+0x18>
	switch (pclken->bus) {
 8001dca:	f06f 0085 	mvn.w	r0, #133	; 0x85
}
 8001dce:	4770      	bx	lr
 8001dd0:	20000030 	.word	0x20000030

08001dd4 <stm32_clock_control_init>:
 * @param dev clock device struct
 *
 * @return 0
 */
int stm32_clock_control_init(const struct device *dev)
{
 8001dd4:	b530      	push	{r4, r5, lr}
	clk_init->APB1CLKDivider = apb1_prescaler(STM32_APB1_PRESCALER);
 8001dd6:	2100      	movs	r1, #0
{
 8001dd8:	b087      	sub	sp, #28
	clk_init->APB1CLKDivider = apb1_prescaler(STM32_APB1_PRESCALER);
 8001dda:	f44f 53a0 	mov.w	r3, #5120	; 0x1400
 8001dde:	e9cd 1300 	strd	r1, r3, [sp]
	clk_init->APB2CLKDivider = apb2_prescaler(STM32_APB2_PRESCALER);
 8001de2:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001de6:	9302      	str	r3, [sp, #8]
	hclk_prescaler = s_ClkInitStruct.AHBCLKDivider;
	flash_prescaler = hclk_prescaler;
#endif

	/* Some clocks would be activated by default */
	config_enable_default_clocks();
 8001de8:	f000 f838 	bl	8001e5c <config_enable_default_clocks>

#if STM32_SYSCLK_SRC_PLL
	LL_UTILS_PLLInitTypeDef s_PLLInitStruct;

	/* configure PLL input settings */
	config_pll_init(&s_PLLInitStruct);
 8001dec:	a803      	add	r0, sp, #12
 8001dee:	f001 fc40 	bl	8003672 <config_pll_init>
  * @rmtoll CR           HSIRDY        LL_RCC_HSI_IsReady
  * @retval State of bit (1 or 0).
  */
__STATIC_INLINE uint32_t LL_RCC_HSI_IsReady(void)
{
  return (READ_BIT(RCC->CR, RCC_CR_HSIRDY) == (RCC_CR_HSIRDY));
 8001df2:	4b18      	ldr	r3, [pc, #96]	; (8001e54 <stm32_clock_control_init+0x80>)
 8001df4:	681a      	ldr	r2, [r3, #0]
	if (LL_RCC_HSI_IsReady() != 1) {
 8001df6:	0790      	lsls	r0, r2, #30
 8001df8:	d406      	bmi.n	8001e08 <stm32_clock_control_init+0x34>
  SET_BIT(RCC->CR, RCC_CR_HSION);
 8001dfa:	681a      	ldr	r2, [r3, #0]
 8001dfc:	f042 0201 	orr.w	r2, r2, #1
 8001e00:	601a      	str	r2, [r3, #0]
  return (READ_BIT(RCC->CR, RCC_CR_HSIRDY) == (RCC_CR_HSIRDY));
 8001e02:	681a      	ldr	r2, [r3, #0]
		while (LL_RCC_HSI_IsReady() != 1) {
 8001e04:	0792      	lsls	r2, r2, #30
 8001e06:	d5fc      	bpl.n	8001e02 <stm32_clock_control_init+0x2e>
  *         (*) value not defined in all devices.
  * @retval None
  */
__STATIC_INLINE void LL_RCC_SetSysClkSource(uint32_t Source)
{
  MODIFY_REG(RCC->CFGR, RCC_CFGR_SW, Source);
 8001e08:	4c12      	ldr	r4, [pc, #72]	; (8001e54 <stm32_clock_control_init+0x80>)
 8001e0a:	68a3      	ldr	r3, [r4, #8]
 8001e0c:	f023 0303 	bic.w	r3, r3, #3
 8001e10:	60a3      	str	r3, [r4, #8]
  *         @arg @ref LL_RCC_SYSCLK_DIV_512
  * @retval None
  */
__STATIC_INLINE void LL_RCC_SetAHBPrescaler(uint32_t Prescaler)
{
  MODIFY_REG(RCC->CFGR, RCC_CFGR_HPRE, Prescaler);
 8001e12:	68a3      	ldr	r3, [r4, #8]
 8001e14:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
 8001e18:	60a3      	str	r3, [r4, #8]
  return (uint32_t)(READ_BIT(RCC->CFGR, RCC_CFGR_SWS));
 8001e1a:	68a5      	ldr	r5, [r4, #8]
	while (LL_RCC_GetSysClkSource() != LL_RCC_SYS_CLKSOURCE_STATUS_HSI) {
 8001e1c:	f015 050c 	ands.w	r5, r5, #12
 8001e20:	d1fb      	bne.n	8001e1a <stm32_clock_control_init+0x46>
  * @rmtoll CR           PLLON         LL_RCC_PLL_Disable
  * @retval None
  */
__STATIC_INLINE void LL_RCC_PLL_Disable(void)
{
  CLEAR_BIT(RCC->CR, RCC_CR_PLLON);
 8001e22:	6823      	ldr	r3, [r4, #0]
		LL_RCC_HSE_EnableDiv2();
	}
#endif

	/* Switch to PLL with HSE as clock source */
	LL_PLL_ConfigSystemClock_HSE(
 8001e24:	480c      	ldr	r0, [pc, #48]	; (8001e58 <stm32_clock_control_init+0x84>)
 8001e26:	f023 7380 	bic.w	r3, r3, #16777216	; 0x1000000
 8001e2a:	6023      	str	r3, [r4, #0]
	MODIFY_REG(RCC->PLLCFGR, RCC_PLLCFGR_PLLQ,
 8001e2c:	6863      	ldr	r3, [r4, #4]
 8001e2e:	f023 6370 	bic.w	r3, r3, #251658240	; 0xf000000
 8001e32:	f043 63e0 	orr.w	r3, r3, #117440512	; 0x7000000
 8001e36:	6063      	str	r3, [r4, #4]
	LL_PLL_ConfigSystemClock_HSE(
 8001e38:	aa03      	add	r2, sp, #12
 8001e3a:	466b      	mov	r3, sp
 8001e3c:	2101      	movs	r1, #1
 8001e3e:	f000 fc21 	bl	8002684 <LL_PLL_ConfigSystemClock_HSE>
  CLEAR_BIT(RCC->CR, RCC_CR_HSION);
 8001e42:	6823      	ldr	r3, [r4, #0]
 8001e44:	f023 0301 	bic.w	r3, r3, #1
 8001e48:	6023      	str	r3, [r4, #0]
		&s_PLLInitStruct,
		&s_ClkInitStruct);

	/* Disable other clocks */
	LL_RCC_HSI_Disable();
	LL_RCC_MSI_Disable();
 8001e4a:	f001 fc1a 	bl	8003682 <LL_RCC_MSI_Disable>

	/* configure MCO1/MCO2 based on Kconfig */
	stm32_clock_control_mco_init();

	return 0;
}
 8001e4e:	4628      	mov	r0, r5
 8001e50:	b007      	add	sp, #28
 8001e52:	bd30      	pop	{r4, r5, pc}
 8001e54:	40023800 	.word	0x40023800
 8001e58:	007a1200 	.word	0x007a1200

08001e5c <config_enable_default_clocks>:
  SET_BIT(RCC->APB1ENR, Periphs);
 8001e5c:	4b06      	ldr	r3, [pc, #24]	; (8001e78 <config_enable_default_clocks+0x1c>)
 8001e5e:	6c1a      	ldr	r2, [r3, #64]	; 0x40
 8001e60:	f042 5280 	orr.w	r2, r2, #268435456	; 0x10000000
 8001e64:	641a      	str	r2, [r3, #64]	; 0x40
  tmpreg = READ_BIT(RCC->APB1ENR, Periphs);
 8001e66:	6c1b      	ldr	r3, [r3, #64]	; 0x40

/**
 * @brief Activate default clocks
 */
void config_enable_default_clocks(void)
{
 8001e68:	b082      	sub	sp, #8
 8001e6a:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 8001e6e:	9301      	str	r3, [sp, #4]
  (void)tmpreg;
 8001e70:	9b01      	ldr	r3, [sp, #4]
	/* Power Interface clock enabled by default */
	LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_PWR);
}
 8001e72:	b002      	add	sp, #8
 8001e74:	4770      	bx	lr
 8001e76:	bf00      	nop
 8001e78:	40023800 	.word	0x40023800

08001e7c <uart_console_init>:
 * @brief Initialize one UART as the console/debug port
 *
 * @return 0 if successful, otherwise failed.
 */
static int uart_console_init(const struct device *arg)
{
 8001e7c:	b508      	push	{r3, lr}

	ARG_UNUSED(arg);

	/* Claim console device */
	uart_console_dev = DEVICE_DT_GET(DT_CHOSEN(zephyr_console));
 8001e7e:	4b08      	ldr	r3, [pc, #32]	; (8001ea0 <uart_console_init+0x24>)
 8001e80:	4808      	ldr	r0, [pc, #32]	; (8001ea4 <uart_console_init+0x28>)
 8001e82:	6018      	str	r0, [r3, #0]
 8001e84:	f001 fda4 	bl	80039d0 <z_device_ready>
 8001e88:	b138      	cbz	r0, 8001e9a <uart_console_init+0x1e>
	__stdout_hook_install(console_out);
 8001e8a:	4807      	ldr	r0, [pc, #28]	; (8001ea8 <uart_console_init+0x2c>)
 8001e8c:	f7ff fe84 	bl	8001b98 <__stdout_hook_install>
	__printk_hook_install(console_out);
 8001e90:	4805      	ldr	r0, [pc, #20]	; (8001ea8 <uart_console_init+0x2c>)
 8001e92:	f7fe fb0f 	bl	80004b4 <__printk_hook_install>
		return -ENODEV;
	}

	uart_console_hook_install();

	return 0;
 8001e96:	2000      	movs	r0, #0
}
 8001e98:	bd08      	pop	{r3, pc}
		return -ENODEV;
 8001e9a:	f06f 0012 	mvn.w	r0, #18
 8001e9e:	e7fb      	b.n	8001e98 <uart_console_init+0x1c>
 8001ea0:	20000274 	.word	0x20000274
 8001ea4:	08003d28 	.word	0x08003d28
 8001ea8:	08001ead 	.word	0x08001ead

08001eac <console_out>:
	if ('\n' == c) {
 8001eac:	280a      	cmp	r0, #10
{
 8001eae:	b538      	push	{r3, r4, r5, lr}
 8001eb0:	4d07      	ldr	r5, [pc, #28]	; (8001ed0 <console_out+0x24>)
 8001eb2:	4604      	mov	r4, r0
	if ('\n' == c) {
 8001eb4:	d104      	bne.n	8001ec0 <console_out+0x14>
		uart_poll_out(uart_console_dev, '\r');
 8001eb6:	6828      	ldr	r0, [r5, #0]
 8001eb8:	6883      	ldr	r3, [r0, #8]
 8001eba:	210d      	movs	r1, #13
 8001ebc:	685b      	ldr	r3, [r3, #4]
 8001ebe:	4798      	blx	r3
	uart_poll_out(uart_console_dev, c);
 8001ec0:	6828      	ldr	r0, [r5, #0]
 8001ec2:	6883      	ldr	r3, [r0, #8]
 8001ec4:	b2e1      	uxtb	r1, r4
 8001ec6:	685b      	ldr	r3, [r3, #4]
 8001ec8:	4798      	blx	r3
}
 8001eca:	4620      	mov	r0, r4
 8001ecc:	bd38      	pop	{r3, r4, r5, pc}
 8001ece:	bf00      	nop
 8001ed0:	20000274 	.word	0x20000274

08001ed4 <clock_control_on.constprop.0>:
 *
 * @param dev Device structure whose driver controls the clock.
 * @param sys Opaque data representing the clock.
 * @return 0 on success, negative errno on failure.
 */
static inline int clock_control_on(const struct device *dev,
 8001ed4:	b570      	push	{r4, r5, r6, lr}
 8001ed6:	4605      	mov	r5, r0
 8001ed8:	4c07      	ldr	r4, [pc, #28]	; (8001ef8 <clock_control_on.constprop.0+0x24>)
 8001eda:	4620      	mov	r0, r4
 8001edc:	f001 fd78 	bl	80039d0 <z_device_ready>
 8001ee0:	b130      	cbz	r0, 8001ef0 <clock_control_on.constprop.0+0x1c>
	}

	const struct clock_control_driver_api *api =
		(const struct clock_control_driver_api *)dev->api;

	return api->on(dev, sys);
 8001ee2:	68a3      	ldr	r3, [r4, #8]
 8001ee4:	4629      	mov	r1, r5
 8001ee6:	4620      	mov	r0, r4
 8001ee8:	681b      	ldr	r3, [r3, #0]
}
 8001eea:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
	return api->on(dev, sys);
 8001eee:	4718      	bx	r3
}
 8001ef0:	f06f 0012 	mvn.w	r0, #18
 8001ef4:	bd70      	pop	{r4, r5, r6, pc}
 8001ef6:	bf00      	nop
 8001ef8:	08003bf0 	.word	0x08003bf0

08001efc <gpio_stm32_pin_interrupt_configure>:

static int gpio_stm32_pin_interrupt_configure(const struct device *dev,
					      gpio_pin_t pin,
					      enum gpio_int_mode mode,
					      enum gpio_int_trig trig)
{
 8001efc:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8001efe:	460c      	mov	r4, r1
 8001f00:	4611      	mov	r1, r2
	const struct gpio_stm32_config *cfg = dev->config;
	struct gpio_stm32_data *data = dev->data;
	int edge = 0;
	int err = 0;

	if (mode == GPIO_INT_MODE_DISABLED) {
 8001f02:	f5b1 5f00 	cmp.w	r1, #8192	; 0x2000
	const struct gpio_stm32_config *cfg = dev->config;
 8001f06:	6847      	ldr	r7, [r0, #4]
	struct gpio_stm32_data *data = dev->data;
 8001f08:	6902      	ldr	r2, [r0, #16]
{
 8001f0a:	461e      	mov	r6, r3
	if (mode == GPIO_INT_MODE_DISABLED) {
 8001f0c:	d123      	bne.n	8001f56 <gpio_stm32_pin_interrupt_configure+0x5a>
	return (0xF << ((pin % 4 * 4) + 16)) | (pin / 4);
 8001f0e:	f004 0303 	and.w	r3, r4, #3
 8001f12:	3304      	adds	r3, #4
 8001f14:	009a      	lsls	r2, r3, #2
 8001f16:	230f      	movs	r3, #15
 8001f18:	4093      	lsls	r3, r2
 8001f1a:	ea43 0394 	orr.w	r3, r3, r4, lsr #2
  return (uint32_t)(READ_BIT(SYSCFG->EXTICR[Line & 0xFF], (Line >> 16)) >> POSITION_VAL(Line >> 16));
 8001f1e:	b2da      	uxtb	r2, r3
 8001f20:	4933      	ldr	r1, [pc, #204]	; (8001ff0 <gpio_stm32_pin_interrupt_configure+0xf4>)
 8001f22:	3202      	adds	r2, #2
 8001f24:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
 8001f28:	0c19      	lsrs	r1, r3, #16
 8001f2a:	ea02 4313 	and.w	r3, r2, r3, lsr #16
   __ASM ("rbit %0, %1" : "=r" (result) : "r" (value) );
 8001f2e:	fa91 f2a1 	rbit	r2, r1
  return __builtin_clz(value);
 8001f32:	fab2 f282 	clz	r2, r2
 8001f36:	40d3      	lsrs	r3, r2
		if (gpio_stm32_get_exti_source(pin) == cfg->port) {
 8001f38:	68ba      	ldr	r2, [r7, #8]
 8001f3a:	429a      	cmp	r2, r3
 8001f3c:	d109      	bne.n	8001f52 <gpio_stm32_pin_interrupt_configure+0x56>
			stm32_exti_disable(pin);
 8001f3e:	4620      	mov	r0, r4
 8001f40:	f7ff fe5e 	bl	8001c00 <stm32_exti_disable>
			stm32_exti_unset_callback(pin);
 8001f44:	4620      	mov	r0, r4
 8001f46:	f7ff feaf 	bl	8001ca8 <stm32_exti_unset_callback>
			stm32_exti_trigger(pin, STM32_EXTI_TRIG_NONE);
 8001f4a:	2100      	movs	r1, #0
 8001f4c:	4620      	mov	r0, r4
 8001f4e:	f7ff fe65 	bl	8001c1c <stm32_exti_trigger>
	int err = 0;
 8001f52:	2500      	movs	r5, #0
 8001f54:	e03e      	b.n	8001fd4 <gpio_stm32_pin_interrupt_configure+0xd8>
		/* else: No irq source configured for pin. Nothing to disable */
		goto exit;
	}

	/* Level trigger interrupts not supported */
	if (mode == GPIO_INT_MODE_LEVEL) {
 8001f56:	f5b1 4f80 	cmp.w	r1, #16384	; 0x4000
 8001f5a:	d042      	beq.n	8001fe2 <gpio_stm32_pin_interrupt_configure+0xe6>
		err = -ENOTSUP;
		goto exit;
	}

	if (stm32_exti_set_callback(pin, gpio_stm32_isr, data) != 0) {
 8001f5c:	4925      	ldr	r1, [pc, #148]	; (8001ff4 <gpio_stm32_pin_interrupt_configure+0xf8>)
 8001f5e:	4620      	mov	r0, r4
 8001f60:	f7ff fe90 	bl	8001c84 <stm32_exti_set_callback>
 8001f64:	4605      	mov	r5, r0
 8001f66:	2800      	cmp	r0, #0
 8001f68:	d13e      	bne.n	8001fe8 <gpio_stm32_pin_interrupt_configure+0xec>
	struct stm32_pclken pclken = {
 8001f6a:	4a23      	ldr	r2, [pc, #140]	; (8001ff8 <gpio_stm32_pin_interrupt_configure+0xfc>)
		err = -EBUSY;
		goto exit;
	}

	gpio_stm32_enable_int(cfg->port, pin);
 8001f6c:	68bf      	ldr	r7, [r7, #8]
	struct stm32_pclken pclken = {
 8001f6e:	e892 0003 	ldmia.w	r2, {r0, r1}
 8001f72:	466b      	mov	r3, sp
 8001f74:	e883 0003 	stmia.w	r3, {r0, r1}
	ret = clock_control_on(clk, (clock_control_subsys_t *) &pclken);
 8001f78:	4618      	mov	r0, r3
 8001f7a:	f7ff ffab 	bl	8001ed4 <clock_control_on.constprop.0>
	if (ret != 0) {
 8001f7e:	b9c0      	cbnz	r0, 8001fb2 <gpio_stm32_pin_interrupt_configure+0xb6>
	return (0xF << ((pin % 4 * 4) + 16)) | (pin / 4);
 8001f80:	f004 0103 	and.w	r1, r4, #3
 8001f84:	3104      	adds	r1, #4
 8001f86:	008b      	lsls	r3, r1, #2
 8001f88:	210f      	movs	r1, #15
 8001f8a:	4099      	lsls	r1, r3
 8001f8c:	ea41 0194 	orr.w	r1, r1, r4, lsr #2
  MODIFY_REG(SYSCFG->EXTICR[Line & 0xFF], (Line >> 16), Port << POSITION_VAL((Line >> 16)));
 8001f90:	b2ca      	uxtb	r2, r1
 8001f92:	0092      	lsls	r2, r2, #2
 8001f94:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
 8001f98:	f502 329c 	add.w	r2, r2, #79872	; 0x13800
 8001f9c:	0c0b      	lsrs	r3, r1, #16
 8001f9e:	6890      	ldr	r0, [r2, #8]
   __ASM ("rbit %0, %1" : "=r" (result) : "r" (value) );
 8001fa0:	fa93 f3a3 	rbit	r3, r3
  return __builtin_clz(value);
 8001fa4:	fab3 f383 	clz	r3, r3
 8001fa8:	ea20 4111 	bic.w	r1, r0, r1, lsr #16
 8001fac:	409f      	lsls	r7, r3
 8001fae:	430f      	orrs	r7, r1
 8001fb0:	6097      	str	r7, [r2, #8]

	switch (trig) {
 8001fb2:	f5b6 2f80 	cmp.w	r6, #262144	; 0x40000
 8001fb6:	d010      	beq.n	8001fda <gpio_stm32_pin_interrupt_configure+0xde>
 8001fb8:	f5b6 2fc0 	cmp.w	r6, #393216	; 0x60000
 8001fbc:	d00f      	beq.n	8001fde <gpio_stm32_pin_interrupt_configure+0xe2>
 8001fbe:	f5b6 3f00 	cmp.w	r6, #131072	; 0x20000
 8001fc2:	bf14      	ite	ne
 8001fc4:	2100      	movne	r1, #0
 8001fc6:	2102      	moveq	r1, #2
	case GPIO_INT_TRIG_BOTH:
		edge = STM32_EXTI_TRIG_BOTH;
		break;
	}

	stm32_exti_trigger(pin, edge);
 8001fc8:	4620      	mov	r0, r4
 8001fca:	f7ff fe27 	bl	8001c1c <stm32_exti_trigger>

	stm32_exti_enable(pin);
 8001fce:	4620      	mov	r0, r4
 8001fd0:	f7ff fe08 	bl	8001be4 <stm32_exti_enable>

exit:
	return err;
}
 8001fd4:	4628      	mov	r0, r5
 8001fd6:	b003      	add	sp, #12
 8001fd8:	bdf0      	pop	{r4, r5, r6, r7, pc}
		edge = STM32_EXTI_TRIG_RISING;
 8001fda:	2101      	movs	r1, #1
 8001fdc:	e7f4      	b.n	8001fc8 <gpio_stm32_pin_interrupt_configure+0xcc>
		edge = STM32_EXTI_TRIG_BOTH;
 8001fde:	2103      	movs	r1, #3
 8001fe0:	e7f2      	b.n	8001fc8 <gpio_stm32_pin_interrupt_configure+0xcc>
		err = -ENOTSUP;
 8001fe2:	f06f 0585 	mvn.w	r5, #133	; 0x85
 8001fe6:	e7f5      	b.n	8001fd4 <gpio_stm32_pin_interrupt_configure+0xd8>
		err = -EBUSY;
 8001fe8:	f06f 050f 	mvn.w	r5, #15
	return err;
 8001fec:	e7f2      	b.n	8001fd4 <gpio_stm32_pin_interrupt_configure+0xd8>
 8001fee:	bf00      	nop
 8001ff0:	40013800 	.word	0x40013800
 8001ff4:	0800371b 	.word	0x0800371b
 8001ff8:	08004100 	.word	0x08004100

08001ffc <gpio_stm32_clock_request>:
{
 8001ffc:	b570      	push	{r4, r5, r6, lr}
					(clock_control_subsys_t *)&cfg->pclken);
 8001ffe:	6844      	ldr	r4, [r0, #4]
 8002000:	340c      	adds	r4, #12
	if (on) {
 8002002:	b121      	cbz	r1, 800200e <gpio_stm32_clock_request+0x12>
		ret = clock_control_on(clk,
 8002004:	4620      	mov	r0, r4
}
 8002006:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
		ret = clock_control_on(clk,
 800200a:	f7ff bf63 	b.w	8001ed4 <clock_control_on.constprop.0>
 800200e:	4d07      	ldr	r5, [pc, #28]	; (800202c <gpio_stm32_clock_request+0x30>)
 8002010:	4628      	mov	r0, r5
 8002012:	f001 fcdd 	bl	80039d0 <z_device_ready>
 8002016:	b130      	cbz	r0, 8002026 <gpio_stm32_clock_request+0x2a>
	}

	const struct clock_control_driver_api *api =
		(const struct clock_control_driver_api *)dev->api;

	return api->off(dev, sys);
 8002018:	68ab      	ldr	r3, [r5, #8]
 800201a:	4621      	mov	r1, r4
 800201c:	4628      	mov	r0, r5
 800201e:	685b      	ldr	r3, [r3, #4]
}
 8002020:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8002024:	4718      	bx	r3
 8002026:	f06f 0012 	mvn.w	r0, #18
 800202a:	bd70      	pop	{r4, r5, r6, pc}
 800202c:	08003bf0 	.word	0x08003bf0

08002030 <uart_stm32_set_baudrate>:
}
#endif /* CONFIG_PM */

static inline void uart_stm32_set_baudrate(const struct device *dev,
					   uint32_t baud_rate)
{
 8002030:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	USART_TypeDef *UartInstance = UART_STRUCT(dev);

	uint32_t clock_rate;

	/* Get clock rate */
	if (clock_control_get_rate(data->clock,
 8002032:	6903      	ldr	r3, [r0, #16]
	USART_TypeDef *UartInstance = UART_STRUCT(dev);
 8002034:	6847      	ldr	r7, [r0, #4]
	if (clock_control_get_rate(data->clock,
 8002036:	685e      	ldr	r6, [r3, #4]
	USART_TypeDef *UartInstance = UART_STRUCT(dev);
 8002038:	f857 4b08 	ldr.w	r4, [r7], #8
{
 800203c:	460d      	mov	r5, r1
 800203e:	4630      	mov	r0, r6
 8002040:	f001 fcc6 	bl	80039d0 <z_device_ready>
 8002044:	b958      	cbnz	r0, 800205e <uart_stm32_set_baudrate+0x2e>
 8002046:	4818      	ldr	r0, [pc, #96]	; (80020a8 <uart_stm32_set_baudrate+0x78>)
 8002048:	4b18      	ldr	r3, [pc, #96]	; (80020ac <uart_stm32_set_baudrate+0x7c>)
			       (clock_control_subsys_t *)&config->pclken,
			       &clock_rate) < 0) {
		LOG_ERR("Failed call clock_control_get_rate");
 800204a:	4919      	ldr	r1, [pc, #100]	; (80020b0 <uart_stm32_set_baudrate+0x80>)
 800204c:	1ac0      	subs	r0, r0, r3
 800204e:	08c0      	lsrs	r0, r0, #3
 8002050:	0180      	lsls	r0, r0, #6
 8002052:	f040 0001 	orr.w	r0, r0, #1
 8002056:	f001 fa0c 	bl	8003472 <log_string_sync>
				     baud_rate);

#if HAS_LPUART_1
	}
#endif /* HAS_LPUART_1 */
}
 800205a:	b003      	add	sp, #12
 800205c:	bdf0      	pop	{r4, r5, r6, r7, pc}
	}

	const struct clock_control_driver_api *api =
		(const struct clock_control_driver_api *)dev->api;

	if (api->get_rate == NULL) {
 800205e:	68b3      	ldr	r3, [r6, #8]
 8002060:	68db      	ldr	r3, [r3, #12]
 8002062:	2b00      	cmp	r3, #0
 8002064:	d0ef      	beq.n	8002046 <uart_stm32_set_baudrate+0x16>
		return -ENOSYS;
	}

	return api->get_rate(dev, sys, rate);
 8002066:	aa01      	add	r2, sp, #4
 8002068:	4639      	mov	r1, r7
 800206a:	4630      	mov	r0, r6
 800206c:	4798      	blx	r3
	if (clock_control_get_rate(data->clock,
 800206e:	2800      	cmp	r0, #0
 8002070:	dbe9      	blt.n	8002046 <uart_stm32_set_baudrate+0x16>
  *         @arg @ref LL_USART_OVERSAMPLING_8
  * @retval None
  */
__STATIC_INLINE void LL_USART_SetOverSampling(USART_TypeDef *USARTx, uint32_t OverSampling)
{
  MODIFY_REG(USARTx->CR1, USART_CR1_OVER8, OverSampling);
 8002072:	68e3      	ldr	r3, [r4, #12]
  {
    USARTx->BRR = (uint16_t)(__LL_USART_DIV_SAMPLING8(PeriphClk, BaudRate));
  }
  else
  {
    USARTx->BRR = (uint16_t)(__LL_USART_DIV_SAMPLING16(PeriphClk, BaudRate));
 8002074:	9801      	ldr	r0, [sp, #4]
  MODIFY_REG(USARTx->CR1, USART_CR1_OVER8, OverSampling);
 8002076:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
    USARTx->BRR = (uint16_t)(__LL_USART_DIV_SAMPLING16(PeriphClk, BaudRate));
 800207a:	2119      	movs	r1, #25
  MODIFY_REG(USARTx->CR1, USART_CR1_OVER8, OverSampling);
 800207c:	60e3      	str	r3, [r4, #12]
    USARTx->BRR = (uint16_t)(__LL_USART_DIV_SAMPLING16(PeriphClk, BaudRate));
 800207e:	00aa      	lsls	r2, r5, #2
 8002080:	0fab      	lsrs	r3, r5, #30
 8002082:	fba0 0101 	umull	r0, r1, r0, r1
 8002086:	f7fe f891 	bl	80001ac <__aeabi_uldivmod>
 800208a:	2264      	movs	r2, #100	; 0x64
 800208c:	fbb0 f1f2 	udiv	r1, r0, r2
 8002090:	fb02 0311 	mls	r3, r2, r1, r0
 8002094:	011b      	lsls	r3, r3, #4
 8002096:	3332      	adds	r3, #50	; 0x32
 8002098:	fbb3 f3f2 	udiv	r3, r3, r2
 800209c:	eb03 1301 	add.w	r3, r3, r1, lsl #4
 80020a0:	b29b      	uxth	r3, r3
 80020a2:	60a3      	str	r3, [r4, #8]
 80020a4:	e7d9      	b.n	800205a <uart_stm32_set_baudrate+0x2a>
 80020a6:	bf00      	nop
 80020a8:	08004060 	.word	0x08004060
 80020ac:	08004048 	.word	0x08004048
 80020b0:	080048ad 	.word	0x080048ad

080020b4 <uart_stm32_init>:
 * @param dev UART device struct
 *
 * @return 0
 */
static int uart_stm32_init(const struct device *dev)
{
 80020b4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	const struct uart_stm32_config *config = DEV_CFG(dev);
 80020b8:	6847      	ldr	r7, [r0, #4]
	struct uart_stm32_data *data = DEV_DATA(dev);
 80020ba:	f8d0 8010 	ldr.w	r8, [r0, #16]
	data->clock = clk;
 80020be:	4d33      	ldr	r5, [pc, #204]	; (800218c <uart_stm32_init+0xd8>)
	USART_TypeDef *UartInstance = UART_STRUCT(dev);
 80020c0:	46b9      	mov	r9, r7
{
 80020c2:	4606      	mov	r6, r0
	USART_TypeDef *UartInstance = UART_STRUCT(dev);
 80020c4:	f859 4b08 	ldr.w	r4, [r9], #8
	data->clock = clk;
 80020c8:	f8c8 5004 	str.w	r5, [r8, #4]
 80020cc:	4628      	mov	r0, r5
 80020ce:	f001 fc7f 	bl	80039d0 <z_device_ready>
 80020d2:	b918      	cbnz	r0, 80020dc <uart_stm32_init+0x28>

	__uart_stm32_get_clock(dev);
	/* enable clock */
	if (clock_control_on(data->clock,
			(clock_control_subsys_t *)&config->pclken) != 0) {
		return -EIO;
 80020d4:	f06f 0004 	mvn.w	r0, #4
#ifdef CONFIG_UART_ASYNC_API
	return uart_stm32_async_init(dev);
#else
	return 0;
#endif
}
 80020d8:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	return api->on(dev, sys);
 80020dc:	68ab      	ldr	r3, [r5, #8]
 80020de:	4649      	mov	r1, r9
 80020e0:	681b      	ldr	r3, [r3, #0]
 80020e2:	4628      	mov	r0, r5
 80020e4:	4798      	blx	r3
	if (clock_control_on(data->clock,
 80020e6:	2800      	cmp	r0, #0
 80020e8:	d1f4      	bne.n	80020d4 <uart_stm32_init+0x20>
					 (uint32_t)UART_STRUCT(dev));
 80020ea:	6873      	ldr	r3, [r6, #4]
	err = stm32_dt_pinctrl_configure(config->pinctrl_list,
 80020ec:	e9d7 0106 	ldrd	r0, r1, [r7, #24]
 80020f0:	681a      	ldr	r2, [r3, #0]
 80020f2:	f001 f9f8 	bl	80034e6 <stm32_dt_pinctrl_configure>
	if (err < 0) {
 80020f6:	2800      	cmp	r0, #0
 80020f8:	dbee      	blt.n	80020d8 <uart_stm32_init+0x24>
  CLEAR_BIT(USARTx->CR1, USART_CR1_UE);
 80020fa:	68e3      	ldr	r3, [r4, #12]
 80020fc:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
 8002100:	60e3      	str	r3, [r4, #12]
   __ASM volatile ("ldrex %0, %1" : "=r" (result) : "Q" (*addr) );
 8002102:	f104 030c 	add.w	r3, r4, #12
 8002106:	e853 3f00 	ldrex	r3, [r3]
  ATOMIC_MODIFY_REG(USARTx->CR1, USART_CR1_RE | USART_CR1_TE, TransferDirection);
 800210a:	f043 030c 	orr.w	r3, r3, #12
   __ASM volatile ("strex %0, %2, %1" : "=&r" (result), "=Q" (*addr) : "r" (value) );
 800210e:	f104 020c 	add.w	r2, r4, #12
 8002112:	e842 3500 	strex	r5, r3, [r2]
 8002116:	2d00      	cmp	r5, #0
 8002118:	d1f3      	bne.n	8002102 <uart_stm32_init+0x4e>
	if (config->parity == 2) {
 800211a:	697a      	ldr	r2, [r7, #20]
 800211c:	2a02      	cmp	r2, #2
 800211e:	d00e      	beq.n	800213e <uart_stm32_init+0x8a>
	} else if (config->parity == 1) {
 8002120:	2a01      	cmp	r2, #1
 8002122:	d02d      	beq.n	8002180 <uart_stm32_init+0xcc>
		if (config->parity != 0) {
 8002124:	b14a      	cbz	r2, 800213a <uart_stm32_init+0x86>
 8002126:	481a      	ldr	r0, [pc, #104]	; (8002190 <uart_stm32_init+0xdc>)
 8002128:	4b1a      	ldr	r3, [pc, #104]	; (8002194 <uart_stm32_init+0xe0>)
			LOG_WRN("Invalid parity setting '%d'."
 800212a:	491b      	ldr	r1, [pc, #108]	; (8002198 <uart_stm32_init+0xe4>)
 800212c:	1ac0      	subs	r0, r0, r3
 800212e:	08c0      	lsrs	r0, r0, #3
 8002130:	0180      	lsls	r0, r0, #6
 8002132:	f040 0002 	orr.w	r0, r0, #2
 8002136:	f001 f99c 	bl	8003472 <log_string_sync>
		ll_datawidth = LL_USART_DATAWIDTH_8B;
 800213a:	462b      	mov	r3, r5
 800213c:	e003      	b.n	8002146 <uart_stm32_init+0x92>
		ll_datawidth = LL_USART_DATAWIDTH_9B;
 800213e:	f44f 5380 	mov.w	r3, #4096	; 0x1000
		ll_parity = LL_USART_PARITY_EVEN;
 8002142:	f44f 6580 	mov.w	r5, #1024	; 0x400
  MODIFY_REG(USARTx->CR1, USART_CR1_PS | USART_CR1_PCE | USART_CR1_M, Parity | DataWidth);
 8002146:	68e2      	ldr	r2, [r4, #12]
 8002148:	432b      	orrs	r3, r5
 800214a:	f422 52b0 	bic.w	r2, r2, #5632	; 0x1600
 800214e:	4313      	orrs	r3, r2
 8002150:	60e3      	str	r3, [r4, #12]
  MODIFY_REG(USARTx->CR2, USART_CR2_STOP, StopBits);
 8002152:	6923      	ldr	r3, [r4, #16]
 8002154:	f423 5340 	bic.w	r3, r3, #12288	; 0x3000
 8002158:	6123      	str	r3, [r4, #16]
	if (config->hw_flow_control) {
 800215a:	7c3b      	ldrb	r3, [r7, #16]
 800215c:	b12b      	cbz	r3, 800216a <uart_stm32_init+0xb6>
	USART_TypeDef *UartInstance = UART_STRUCT(dev);
 800215e:	6873      	ldr	r3, [r6, #4]
 8002160:	681a      	ldr	r2, [r3, #0]
  MODIFY_REG(USARTx->CR3, USART_CR3_RTSE | USART_CR3_CTSE, HardwareFlowControl);
 8002162:	6953      	ldr	r3, [r2, #20]
 8002164:	f443 7340 	orr.w	r3, r3, #768	; 0x300
 8002168:	6153      	str	r3, [r2, #20]
	uart_stm32_set_baudrate(dev, data->baud_rate);
 800216a:	4630      	mov	r0, r6
 800216c:	f8d8 1000 	ldr.w	r1, [r8]
 8002170:	f7ff ff5e 	bl	8002030 <uart_stm32_set_baudrate>
  SET_BIT(USARTx->CR1, USART_CR1_UE);
 8002174:	68e3      	ldr	r3, [r4, #12]
 8002176:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 800217a:	60e3      	str	r3, [r4, #12]
	return 0;
 800217c:	2000      	movs	r0, #0
 800217e:	e7ab      	b.n	80020d8 <uart_stm32_init+0x24>
		ll_datawidth = LL_USART_DATAWIDTH_9B;
 8002180:	f44f 5380 	mov.w	r3, #4096	; 0x1000
		ll_parity = LL_USART_PARITY_ODD;
 8002184:	f44f 65c0 	mov.w	r5, #1536	; 0x600
 8002188:	e7dd      	b.n	8002146 <uart_stm32_init+0x92>
 800218a:	bf00      	nop
 800218c:	08003bf0 	.word	0x08003bf0
 8002190:	08004060 	.word	0x08004060
 8002194:	08004048 	.word	0x08004048
 8002198:	080048d0 	.word	0x080048d0

0800219c <uart_stm32_configure>:
{
 800219c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	const uint32_t parity = uart_stm32_cfg2ll_parity(cfg->parity);
 80021a0:	790a      	ldrb	r2, [r1, #4]
	USART_TypeDef *UartInstance = UART_STRUCT(dev);
 80021a2:	6843      	ldr	r3, [r0, #4]
	struct uart_stm32_data *data = DEV_DATA(dev);
 80021a4:	6906      	ldr	r6, [r0, #16]
	USART_TypeDef *UartInstance = UART_STRUCT(dev);
 80021a6:	681c      	ldr	r4, [r3, #0]
	switch (parity) {
 80021a8:	2a01      	cmp	r2, #1
{
 80021aa:	460d      	mov	r5, r1
	switch (parity) {
 80021ac:	f000 8081 	beq.w	80022b2 <uart_stm32_configure+0x116>
		return LL_USART_PARITY_NONE;
 80021b0:	2a02      	cmp	r2, #2
 80021b2:	bf0c      	ite	eq
 80021b4:	f44f 6180 	moveq.w	r1, #1024	; 0x400
 80021b8:	2100      	movne	r1, #0
	const uint32_t stopbits = uart_stm32_cfg2ll_stopbits(cfg->stop_bits);
 80021ba:	f895 9005 	ldrb.w	r9, [r5, #5]
	const uint32_t databits = uart_stm32_cfg2ll_databits(cfg->data_bits,
 80021be:	f895 e006 	ldrb.w	lr, [r5, #6]
 80021c2:	f1b9 0f02 	cmp.w	r9, #2
 80021c6:	bf96      	itet	ls
 80021c8:	4b3e      	ldrls	r3, [pc, #248]	; (80022c4 <uart_stm32_configure+0x128>)
	const uint32_t stopbits = uart_stm32_cfg2ll_stopbits(cfg->stop_bits);
 80021ca:	f44f 5800 	movhi.w	r8, #8192	; 0x2000
 80021ce:	f833 8019 	ldrhls.w	r8, [r3, r9, lsl #1]
	switch (db) {
 80021d2:	f1be 0f04 	cmp.w	lr, #4
 80021d6:	d06f      	beq.n	80022b8 <uart_stm32_configure+0x11c>
		return LL_USART_DATAWIDTH_9B;
 80021d8:	2a00      	cmp	r2, #0
 80021da:	bf0c      	ite	eq
 80021dc:	2300      	moveq	r3, #0
 80021de:	f44f 5380 	movne.w	r3, #4096	; 0x1000
	const uint32_t flowctrl = uart_stm32_cfg2ll_hwctrl(cfg->flow_ctrl);
 80021e2:	79ef      	ldrb	r7, [r5, #7]
	if ((cfg->parity == UART_CFG_PARITY_MARK) ||
 80021e4:	f1a2 0a03 	sub.w	sl, r2, #3
		return LL_USART_HWCONTROL_RTS_CTS;
 80021e8:	2f01      	cmp	r7, #1
 80021ea:	bf14      	ite	ne
 80021ec:	f04f 0c00 	movne.w	ip, #0
 80021f0:	f44f 7c40 	moveq.w	ip, #768	; 0x300
	if ((cfg->parity == UART_CFG_PARITY_MARK) ||
 80021f4:	f1ba 0f01 	cmp.w	sl, #1
 80021f8:	d961      	bls.n	80022be <uart_stm32_configure+0x122>
	if ((cfg->parity != UART_CFG_PARITY_NONE) &&
 80021fa:	b112      	cbz	r2, 8002202 <uart_stm32_configure+0x66>
 80021fc:	f1be 0f04 	cmp.w	lr, #4
 8002200:	d05d      	beq.n	80022be <uart_stm32_configure+0x122>
	if (cfg->stop_bits == UART_CFG_STOP_BITS_0_5) {
 8002202:	f019 0ffd 	tst.w	r9, #253	; 0xfd
 8002206:	d05a      	beq.n	80022be <uart_stm32_configure+0x122>
	if ((cfg->data_bits == UART_CFG_DATA_BITS_5) ||
 8002208:	f1be 0f02 	cmp.w	lr, #2
 800220c:	d957      	bls.n	80022be <uart_stm32_configure+0x122>
	    || (cfg->data_bits == UART_CFG_DATA_BITS_9)) {
 800220e:	f1be 0f04 	cmp.w	lr, #4
 8002212:	d054      	beq.n	80022be <uart_stm32_configure+0x122>
	if (cfg->flow_ctrl != UART_CFG_FLOW_CTRL_NONE) {
 8002214:	b187      	cbz	r7, 8002238 <uart_stm32_configure+0x9c>
		if (!IS_UART_HWFLOW_INSTANCE(UartInstance) ||
 8002216:	4a2c      	ldr	r2, [pc, #176]	; (80022c8 <uart_stm32_configure+0x12c>)
 8002218:	4294      	cmp	r4, r2
 800221a:	d00b      	beq.n	8002234 <uart_stm32_configure+0x98>
 800221c:	f5a2 424c 	sub.w	r2, r2, #52224	; 0xcc00
 8002220:	4294      	cmp	r4, r2
 8002222:	d007      	beq.n	8002234 <uart_stm32_configure+0x98>
 8002224:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8002228:	4294      	cmp	r4, r2
 800222a:	d003      	beq.n	8002234 <uart_stm32_configure+0x98>
 800222c:	f502 424c 	add.w	r2, r2, #52224	; 0xcc00
 8002230:	4294      	cmp	r4, r2
 8002232:	d144      	bne.n	80022be <uart_stm32_configure+0x122>
 8002234:	2f01      	cmp	r7, #1
 8002236:	d142      	bne.n	80022be <uart_stm32_configure+0x122>
  CLEAR_BIT(USARTx->CR1, USART_CR1_UE);
 8002238:	68e2      	ldr	r2, [r4, #12]
 800223a:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 800223e:	60e2      	str	r2, [r4, #12]
  return (uint32_t)(READ_BIT(USARTx->CR1, USART_CR1_PS | USART_CR1_PCE));
 8002240:	68e2      	ldr	r2, [r4, #12]
 8002242:	f402 62c0 	and.w	r2, r2, #1536	; 0x600
	if (parity != uart_stm32_get_parity(dev)) {
 8002246:	4291      	cmp	r1, r2
  MODIFY_REG(USARTx->CR1, USART_CR1_PS | USART_CR1_PCE, Parity);
 8002248:	bf1f      	itttt	ne
 800224a:	68e7      	ldrne	r7, [r4, #12]
 800224c:	f427 67c0 	bicne.w	r7, r7, #1536	; 0x600
 8002250:	430f      	orrne	r7, r1
 8002252:	60e7      	strne	r7, [r4, #12]
  return (uint32_t)(READ_BIT(USARTx->CR2, USART_CR2_STOP));
 8002254:	6922      	ldr	r2, [r4, #16]
 8002256:	f402 5240 	and.w	r2, r2, #12288	; 0x3000
	if (stopbits != uart_stm32_get_stopbits(dev)) {
 800225a:	4590      	cmp	r8, r2
  MODIFY_REG(USARTx->CR2, USART_CR2_STOP, StopBits);
 800225c:	bf1f      	itttt	ne
 800225e:	6921      	ldrne	r1, [r4, #16]
 8002260:	f421 5140 	bicne.w	r1, r1, #12288	; 0x3000
 8002264:	ea41 0108 	orrne.w	r1, r1, r8
 8002268:	6121      	strne	r1, [r4, #16]
  return (uint32_t)(READ_BIT(USARTx->CR1, USART_CR1_M));
 800226a:	68e2      	ldr	r2, [r4, #12]
	if (cfg->baudrate != data->baud_rate) {
 800226c:	6829      	ldr	r1, [r5, #0]
 800226e:	f402 5280 	and.w	r2, r2, #4096	; 0x1000
	if (databits != uart_stm32_get_databits(dev)) {
 8002272:	4293      	cmp	r3, r2
  MODIFY_REG(USARTx->CR1, USART_CR1_M, DataWidth);
 8002274:	bf1f      	itttt	ne
 8002276:	68e2      	ldrne	r2, [r4, #12]
 8002278:	f422 5280 	bicne.w	r2, r2, #4096	; 0x1000
 800227c:	431a      	orrne	r2, r3
 800227e:	60e2      	strne	r2, [r4, #12]
  return (uint32_t)(READ_BIT(USARTx->CR3, USART_CR3_RTSE | USART_CR3_CTSE));
 8002280:	6963      	ldr	r3, [r4, #20]
 8002282:	f403 7340 	and.w	r3, r3, #768	; 0x300
	if (flowctrl != uart_stm32_get_hwctrl(dev)) {
 8002286:	459c      	cmp	ip, r3
  MODIFY_REG(USARTx->CR3, USART_CR3_RTSE | USART_CR3_CTSE, HardwareFlowControl);
 8002288:	bf1f      	itttt	ne
 800228a:	6963      	ldrne	r3, [r4, #20]
 800228c:	f423 7340 	bicne.w	r3, r3, #768	; 0x300
 8002290:	ea43 030c 	orrne.w	r3, r3, ip
 8002294:	6163      	strne	r3, [r4, #20]
	if (cfg->baudrate != data->baud_rate) {
 8002296:	6833      	ldr	r3, [r6, #0]
 8002298:	4299      	cmp	r1, r3
 800229a:	d003      	beq.n	80022a4 <uart_stm32_configure+0x108>
		uart_stm32_set_baudrate(dev, cfg->baudrate);
 800229c:	f7ff fec8 	bl	8002030 <uart_stm32_set_baudrate>
		data->baud_rate = cfg->baudrate;
 80022a0:	682b      	ldr	r3, [r5, #0]
 80022a2:	6033      	str	r3, [r6, #0]
  SET_BIT(USARTx->CR1, USART_CR1_UE);
 80022a4:	68e3      	ldr	r3, [r4, #12]
 80022a6:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80022aa:	60e3      	str	r3, [r4, #12]
	return 0;
 80022ac:	2000      	movs	r0, #0
};
 80022ae:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
	switch (parity) {
 80022b2:	f44f 61c0 	mov.w	r1, #1536	; 0x600
 80022b6:	e780      	b.n	80021ba <uart_stm32_configure+0x1e>
		return LL_USART_DATAWIDTH_9B;
 80022b8:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 80022bc:	e791      	b.n	80021e2 <uart_stm32_configure+0x46>
		return -ENOTSUP;
 80022be:	f06f 0085 	mvn.w	r0, #133	; 0x85
 80022c2:	e7f4      	b.n	80022ae <uart_stm32_configure+0x112>
 80022c4:	08004354 	.word	0x08004354
 80022c8:	40011000 	.word	0x40011000

080022cc <elapsed>:
 *     - and until the current call of the function is completed.
 * - the function is invoked with interrupts disabled.
 */
static uint32_t elapsed(void)
{
	uint32_t val1 = SysTick->VAL;	/* A */
 80022cc:	f04f 23e0 	mov.w	r3, #3758153728	; 0xe000e000
{
 80022d0:	b510      	push	{r4, lr}
	uint32_t val1 = SysTick->VAL;	/* A */
 80022d2:	699a      	ldr	r2, [r3, #24]
	uint32_t ctrl = SysTick->CTRL;	/* B */
 80022d4:	6919      	ldr	r1, [r3, #16]
	uint32_t val2 = SysTick->VAL;	/* C */
 80022d6:	6998      	ldr	r0, [r3, #24]
	 * 4) After C we'll see it next time
	 *
	 * So the count in val2 is post-wrap and last_load needs to be
	 * added if and only if COUNTFLAG is set or val1 < val2.
	 */
	if ((ctrl & SysTick_CTRL_COUNTFLAG_Msk)
 80022d8:	4b09      	ldr	r3, [pc, #36]	; (8002300 <elapsed+0x34>)
 80022da:	f411 3f80 	tst.w	r1, #65536	; 0x10000
 80022de:	4909      	ldr	r1, [pc, #36]	; (8002304 <elapsed+0x38>)
 80022e0:	d101      	bne.n	80022e6 <elapsed+0x1a>
	    || (val1 < val2)) {
 80022e2:	4282      	cmp	r2, r0
 80022e4:	d206      	bcs.n	80022f4 <elapsed+0x28>
		overflow_cyc += last_load;
 80022e6:	681a      	ldr	r2, [r3, #0]
 80022e8:	680c      	ldr	r4, [r1, #0]
 80022ea:	4422      	add	r2, r4
 80022ec:	601a      	str	r2, [r3, #0]

		/* We know there was a wrap, but we might not have
		 * seen it in CTRL, so clear it. */
		(void)SysTick->CTRL;
 80022ee:	f04f 22e0 	mov.w	r2, #3758153728	; 0xe000e000
 80022f2:	6912      	ldr	r2, [r2, #16]
	}

	return (last_load - val2) + overflow_cyc;
 80022f4:	681b      	ldr	r3, [r3, #0]
 80022f6:	680a      	ldr	r2, [r1, #0]
 80022f8:	4413      	add	r3, r2
}
 80022fa:	1a18      	subs	r0, r3, r0
 80022fc:	bd10      	pop	{r4, pc}
 80022fe:	bf00      	nop
 8002300:	20000334 	.word	0x20000334
 8002304:	20000330 	.word	0x20000330

08002308 <sys_clock_isr>:

/* Callout out of platform assembly, not hooked via IRQ_CONNECT... */
void sys_clock_isr(void *arg)
{
 8002308:	b508      	push	{r3, lr}
	ARG_UNUSED(arg);
	uint32_t dticks;

	/* Update overflow_cyc and clear COUNTFLAG by invoking elapsed() */
	elapsed();
 800230a:	f7ff ffdf 	bl	80022cc <elapsed>

	/* Increment the amount of HW cycles elapsed (complete counter
	 * cycles) and announce the progress to the kernel.
	 */
	cycle_count += overflow_cyc;
 800230e:	4b0c      	ldr	r3, [pc, #48]	; (8002340 <sys_clock_isr+0x38>)
 8002310:	4a0c      	ldr	r2, [pc, #48]	; (8002344 <sys_clock_isr+0x3c>)
 8002312:	6818      	ldr	r0, [r3, #0]
 8002314:	6811      	ldr	r1, [r2, #0]
 8002316:	4408      	add	r0, r1
 8002318:	6010      	str	r0, [r2, #0]
	overflow_cyc = 0;
 800231a:	2200      	movs	r2, #0
 800231c:	601a      	str	r2, [r3, #0]
		 * because the value has been updated before LOAD re-program.
		 *
		 * We can assess if this is the case by inspecting COUNTFLAG.
		 */

		dticks = (cycle_count - announced_cycles) / CYC_PER_TICK;
 800231e:	4a0a      	ldr	r2, [pc, #40]	; (8002348 <sys_clock_isr+0x40>)
 8002320:	6813      	ldr	r3, [r2, #0]
 8002322:	f244 11a0 	movw	r1, #16800	; 0x41a0
 8002326:	1ac0      	subs	r0, r0, r3
 8002328:	fbb0 f0f1 	udiv	r0, r0, r1
		announced_cycles += dticks * CYC_PER_TICK;
 800232c:	fb01 3300 	mla	r3, r1, r0, r3
 8002330:	6013      	str	r3, [r2, #0]
		sys_clock_announce(dticks);
 8002332:	f000 ff9b 	bl	800326c <sys_clock_announce>
	} else {
		sys_clock_announce(1);
	}
	z_arm_int_exit();
}
 8002336:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
	z_arm_int_exit();
 800233a:	f7ff b8c5 	b.w	80014c8 <z_arm_exc_exit>
 800233e:	bf00      	nop
 8002340:	20000334 	.word	0x20000334
 8002344:	2000032c 	.word	0x2000032c
 8002348:	20000328 	.word	0x20000328

0800234c <sys_clock_driver_init>:
    SCB->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
 800234c:	4b09      	ldr	r3, [pc, #36]	; (8002374 <sys_clock_driver_init+0x28>)
 800234e:	2210      	movs	r2, #16
 8002350:	f883 2023 	strb.w	r2, [r3, #35]	; 0x23
int sys_clock_driver_init(const struct device *dev)
{
	ARG_UNUSED(dev);

	NVIC_SetPriority(SysTick_IRQn, _IRQ_PRIO_OFFSET);
	last_load = CYC_PER_TICK - 1;
 8002354:	4b08      	ldr	r3, [pc, #32]	; (8002378 <sys_clock_driver_init+0x2c>)
 8002356:	f244 129f 	movw	r2, #16799	; 0x419f
 800235a:	601a      	str	r2, [r3, #0]
	overflow_cyc = 0U;
 800235c:	4b07      	ldr	r3, [pc, #28]	; (800237c <sys_clock_driver_init+0x30>)
 800235e:	2000      	movs	r0, #0
 8002360:	6018      	str	r0, [r3, #0]
	SysTick->LOAD = last_load;
 8002362:	f04f 23e0 	mov.w	r3, #3758153728	; 0xe000e000
 8002366:	615a      	str	r2, [r3, #20]
	SysTick->VAL = 0; /* resets timer to last_load */
 8002368:	6198      	str	r0, [r3, #24]
	SysTick->CTRL |= (SysTick_CTRL_ENABLE_Msk |
 800236a:	691a      	ldr	r2, [r3, #16]
 800236c:	f042 0207 	orr.w	r2, r2, #7
 8002370:	611a      	str	r2, [r3, #16]
			  SysTick_CTRL_TICKINT_Msk |
			  SysTick_CTRL_CLKSOURCE_Msk);
	return 0;
}
 8002372:	4770      	bx	lr
 8002374:	e000ed00 	.word	0xe000ed00
 8002378:	20000330 	.word	0x20000330
 800237c:	20000334 	.word	0x20000334

08002380 <sys_clock_set_timeout>:

void sys_clock_set_timeout(int32_t ticks, bool idle)
{
 8002380:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8002382:	4d32      	ldr	r5, [pc, #200]	; (800244c <sys_clock_set_timeout+0xcc>)
	 * need to wake up multiple times per second.  If the kernel
	 * allows us to miss tick announcements in idle, then shut off
	 * the counter. (Note: we can assume if idle==true that
	 * interrupts are already disabled)
	 */
	if (IS_ENABLED(CONFIG_TICKLESS_KERNEL) && idle && ticks == K_TICKS_FOREVER) {
 8002384:	b159      	cbz	r1, 800239e <sys_clock_set_timeout+0x1e>
 8002386:	1c43      	adds	r3, r0, #1
 8002388:	d109      	bne.n	800239e <sys_clock_set_timeout+0x1e>
		SysTick->CTRL &= ~SysTick_CTRL_ENABLE_Msk;
 800238a:	f04f 22e0 	mov.w	r2, #3758153728	; 0xe000e000
 800238e:	6913      	ldr	r3, [r2, #16]
 8002390:	f023 0301 	bic.w	r3, r3, #1
 8002394:	6113      	str	r3, [r2, #16]
		last_load = TIMER_STOPPED;
 8002396:	f04f 437f 	mov.w	r3, #4278190080	; 0xff000000
 800239a:	602b      	str	r3, [r5, #0]
	} else {
		cycle_count += (val1 - val2);
	}
	k_spin_unlock(&lock, key);
#endif
}
 800239c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	ticks = (ticks == K_TICKS_FOREVER) ? MAX_TICKS : ticks;
 800239e:	f240 33e5 	movw	r3, #997	; 0x3e5
 80023a2:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 80023a6:	bf08      	it	eq
 80023a8:	4618      	moveq	r0, r3
	ticks = CLAMP(ticks - 1, 0, (int32_t)MAX_TICKS);
 80023aa:	1e44      	subs	r4, r0, #1
 80023ac:	2c00      	cmp	r4, #0
	uint32_t last_load_ = last_load;
 80023ae:	682f      	ldr	r7, [r5, #0]
	ticks = CLAMP(ticks - 1, 0, (int32_t)MAX_TICKS);
 80023b0:	dd32      	ble.n	8002418 <sys_clock_set_timeout+0x98>
 80023b2:	429c      	cmp	r4, r3
 80023b4:	bfa8      	it	ge
 80023b6:	461c      	movge	r4, r3
	__asm__ volatile(
 80023b8:	f04f 0310 	mov.w	r3, #16
 80023bc:	f3ef 8611 	mrs	r6, BASEPRI
 80023c0:	f383 8812 	msr	BASEPRI_MAX, r3
 80023c4:	f3bf 8f6f 	isb	sy
	uint32_t pending = elapsed();
 80023c8:	f7ff ff80 	bl	80022cc <elapsed>
	cycle_count += pending;
 80023cc:	4920      	ldr	r1, [pc, #128]	; (8002450 <sys_clock_set_timeout+0xd0>)
	val1 = SysTick->VAL;
 80023ce:	f04f 23e0 	mov.w	r3, #3758153728	; 0xe000e000
	overflow_cyc = 0U;
 80023d2:	2200      	movs	r2, #0
	val1 = SysTick->VAL;
 80023d4:	f8d3 c018 	ldr.w	ip, [r3, #24]
	cycle_count += pending;
 80023d8:	680b      	ldr	r3, [r1, #0]
 80023da:	4418      	add	r0, r3
	overflow_cyc = 0U;
 80023dc:	4b1d      	ldr	r3, [pc, #116]	; (8002454 <sys_clock_set_timeout+0xd4>)
	cycle_count += pending;
 80023de:	6008      	str	r0, [r1, #0]
	overflow_cyc = 0U;
 80023e0:	601a      	str	r2, [r3, #0]
	uint32_t unannounced = cycle_count - announced_cycles;
 80023e2:	4b1d      	ldr	r3, [pc, #116]	; (8002458 <sys_clock_set_timeout+0xd8>)
 80023e4:	681b      	ldr	r3, [r3, #0]
	if ((int32_t)unannounced < 0) {
 80023e6:	1ac2      	subs	r2, r0, r3
 80023e8:	d518      	bpl.n	800241c <sys_clock_set_timeout+0x9c>
		last_load = MIN_DELAY;
 80023ea:	f240 431a 	movw	r3, #1050	; 0x41a
			last_load = MAX_CYCLES;
 80023ee:	602b      	str	r3, [r5, #0]
	val2 = SysTick->VAL;
 80023f0:	f04f 22e0 	mov.w	r2, #3758153728	; 0xe000e000
	SysTick->LOAD = last_load - 1;
 80023f4:	682c      	ldr	r4, [r5, #0]
	val2 = SysTick->VAL;
 80023f6:	6993      	ldr	r3, [r2, #24]
	if (val1 < val2) {
 80023f8:	459c      	cmp	ip, r3
		cycle_count += (val1 + (last_load_ - val2));
 80023fa:	bf38      	it	cc
 80023fc:	44bc      	addcc	ip, r7
	SysTick->LOAD = last_load - 1;
 80023fe:	3c01      	subs	r4, #1
		cycle_count += (val1 - val2);
 8002400:	ebac 0c03 	sub.w	ip, ip, r3
	SysTick->LOAD = last_load - 1;
 8002404:	6154      	str	r4, [r2, #20]
		cycle_count += (val1 - val2);
 8002406:	4460      	add	r0, ip
	SysTick->VAL = 0; /* resets timer to last_load */
 8002408:	2400      	movs	r4, #0
 800240a:	6194      	str	r4, [r2, #24]
		cycle_count += (val1 - val2);
 800240c:	6008      	str	r0, [r1, #0]
	__asm__ volatile(
 800240e:	f386 8811 	msr	BASEPRI, r6
 8002412:	f3bf 8f6f 	isb	sy
 8002416:	e7c1      	b.n	800239c <sys_clock_set_timeout+0x1c>
	ticks = CLAMP(ticks - 1, 0, (int32_t)MAX_TICKS);
 8002418:	2400      	movs	r4, #0
 800241a:	e7cd      	b.n	80023b8 <sys_clock_set_timeout+0x38>
		delay = ticks * CYC_PER_TICK;
 800241c:	f244 1ea0 	movw	lr, #16800	; 0x41a0
		delay += unannounced;
 8002420:	fb0e 2404 	mla	r4, lr, r4, r2
		delay -= unannounced;
 8002424:	1a1b      	subs	r3, r3, r0
		 ((delay + CYC_PER_TICK - 1) / CYC_PER_TICK) * CYC_PER_TICK;
 8002426:	f504 4483 	add.w	r4, r4, #16768	; 0x4180
 800242a:	341f      	adds	r4, #31
 800242c:	fbb4 f4fe 	udiv	r4, r4, lr
		delay -= unannounced;
 8002430:	fb0e 3404 	mla	r4, lr, r4, r3
		delay = MAX(delay, MIN_DELAY);
 8002434:	f240 431a 	movw	r3, #1050	; 0x41a
 8002438:	429c      	cmp	r4, r3
 800243a:	d904      	bls.n	8002446 <sys_clock_set_timeout+0xc6>
		if (delay > MAX_CYCLES) {
 800243c:	4b07      	ldr	r3, [pc, #28]	; (800245c <sys_clock_set_timeout+0xdc>)
 800243e:	429c      	cmp	r4, r3
 8002440:	d8d5      	bhi.n	80023ee <sys_clock_set_timeout+0x6e>
			last_load = delay;
 8002442:	602c      	str	r4, [r5, #0]
 8002444:	e7d4      	b.n	80023f0 <sys_clock_set_timeout+0x70>
		delay = MAX(delay, MIN_DELAY);
 8002446:	461c      	mov	r4, r3
 8002448:	e7fb      	b.n	8002442 <sys_clock_set_timeout+0xc2>
 800244a:	bf00      	nop
 800244c:	20000330 	.word	0x20000330
 8002450:	2000032c 	.word	0x2000032c
 8002454:	20000334 	.word	0x20000334
 8002458:	20000328 	.word	0x20000328
 800245c:	00ff9420 	.word	0x00ff9420

08002460 <sys_clock_elapsed>:

uint32_t sys_clock_elapsed(void)
{
 8002460:	b510      	push	{r4, lr}
	__asm__ volatile(
 8002462:	f04f 0310 	mov.w	r3, #16
 8002466:	f3ef 8411 	mrs	r4, BASEPRI
 800246a:	f383 8812 	msr	BASEPRI_MAX, r3
 800246e:	f3bf 8f6f 	isb	sy
	if (!TICKLESS) {
		return 0;
	}

	k_spinlock_key_t key = k_spin_lock(&lock);
	uint32_t cyc = elapsed() + cycle_count - announced_cycles;
 8002472:	f7ff ff2b 	bl	80022cc <elapsed>
 8002476:	4b07      	ldr	r3, [pc, #28]	; (8002494 <sys_clock_elapsed+0x34>)
 8002478:	4a07      	ldr	r2, [pc, #28]	; (8002498 <sys_clock_elapsed+0x38>)
 800247a:	681b      	ldr	r3, [r3, #0]
 800247c:	6812      	ldr	r2, [r2, #0]
 800247e:	1a9b      	subs	r3, r3, r2
 8002480:	4403      	add	r3, r0
	__asm__ volatile(
 8002482:	f384 8811 	msr	BASEPRI, r4
 8002486:	f3bf 8f6f 	isb	sy

	k_spin_unlock(&lock, key);
	return cyc / CYC_PER_TICK;
}
 800248a:	f244 10a0 	movw	r0, #16800	; 0x41a0
 800248e:	fbb3 f0f0 	udiv	r0, r3, r0
 8002492:	bd10      	pop	{r4, pc}
 8002494:	2000032c 	.word	0x2000032c
 8002498:	20000328 	.word	0x20000328

0800249c <UTILS_PLL_IsBusy>:
  * @rmtoll CR           PLLRDY        LL_RCC_PLL_IsReady
  * @retval State of bit (1 or 0).
  */
__STATIC_INLINE uint32_t LL_RCC_PLL_IsReady(void)
{
  return (READ_BIT(RCC->CR, RCC_CR_PLLRDY) == (RCC_CR_PLLRDY));
 800249c:	4b08      	ldr	r3, [pc, #32]	; (80024c0 <UTILS_PLL_IsBusy+0x24>)
 800249e:	6819      	ldr	r1, [r3, #0]
  * @rmtoll CR           PLLSAIRDY    LL_RCC_PLLSAI_IsReady
  * @retval State of bit (1 or 0).
  */
__STATIC_INLINE uint32_t LL_RCC_PLLSAI_IsReady(void)
{
  return (READ_BIT(RCC->CR, RCC_CR_PLLSAIRDY) == (RCC_CR_PLLSAIRDY));
 80024a0:	681a      	ldr	r2, [r3, #0]
  return (READ_BIT(RCC->CR, RCC_CR_PLLI2SRDY) == (RCC_CR_PLLI2SRDY));
 80024a2:	681b      	ldr	r3, [r3, #0]
  return (READ_BIT(RCC->CR, RCC_CR_PLLRDY) == (RCC_CR_PLLRDY));
 80024a4:	f001 7100 	and.w	r1, r1, #33554432	; 0x2000000
  return (READ_BIT(RCC->CR, RCC_CR_PLLSAIRDY) == (RCC_CR_PLLSAIRDY));
 80024a8:	f002 5200 	and.w	r2, r2, #536870912	; 0x20000000
static ErrorStatus UTILS_PLL_IsBusy(void)
{
  ErrorStatus status = SUCCESS;

  /* Check if PLL is busy*/
  if(LL_RCC_PLL_IsReady() != 0U)
 80024ac:	430a      	orrs	r2, r1
 80024ae:	bf14      	ite	ne
 80024b0:	2001      	movne	r0, #1
 80024b2:	2000      	moveq	r0, #0
    status = ERROR;
  }
#endif /*RCC_PLLSAI_SUPPORT*/
#if defined(RCC_PLLI2S_SUPPORT)
  /* Check if PLLI2S is busy*/
  if(LL_RCC_PLLI2S_IsReady() != 0U)
 80024b4:	f013 6f00 	tst.w	r3, #134217728	; 0x8000000
    /* PLLI2S configuration cannot be modified */
    status = ERROR;
  }
#endif /*RCC_PLLI2S_SUPPORT*/
  return status;
}
 80024b8:	bf18      	it	ne
 80024ba:	2001      	movne	r0, #1
 80024bc:	4770      	bx	lr
 80024be:	bf00      	nop
 80024c0:	40023800 	.word	0x40023800

080024c4 <LL_SetFlashLatency>:
  if(HCLK_Frequency == 0U)
 80024c4:	2800      	cmp	r0, #0
 80024c6:	d04c      	beq.n	8002562 <LL_SetFlashLatency+0x9e>
  *         @arg @ref LL_PWR_REGU_VOLTAGE_SCALE3
  *         (*) LL_PWR_REGU_VOLTAGE_SCALE1 is not available for STM32F401xx devices
  */
__STATIC_INLINE uint32_t LL_PWR_GetRegulVoltageScaling(void)
{
  return (uint32_t)(READ_BIT(PWR->CR, PWR_CR_VOS));
 80024c8:	4b42      	ldr	r3, [pc, #264]	; (80025d4 <LL_SetFlashLatency+0x110>)
 80024ca:	681b      	ldr	r3, [r3, #0]
 80024cc:	f403 4340 	and.w	r3, r3, #49152	; 0xc000
    if(LL_PWR_GetRegulVoltageScaling() == LL_PWR_REGU_VOLTAGE_SCALE1)
 80024d0:	f5b3 4f40 	cmp.w	r3, #49152	; 0xc000
 80024d4:	d110      	bne.n	80024f8 <LL_SetFlashLatency+0x34>
      if((HCLK_Frequency > UTILS_SCALE1_LATENCY5_FREQ)&&(latency == LL_FLASH_LATENCY_0))
 80024d6:	f103 630f 	add.w	r3, r3, #149946368	; 0x8f00000
 80024da:	f503 538c 	add.w	r3, r3, #4480	; 0x1180
 80024de:	4298      	cmp	r0, r3
 80024e0:	4a3d      	ldr	r2, [pc, #244]	; (80025d8 <LL_SetFlashLatency+0x114>)
 80024e2:	d844      	bhi.n	800256e <LL_SetFlashLatency+0xaa>
      if((HCLK_Frequency > UTILS_SCALE1_LATENCY4_FREQ)&&(latency == LL_FLASH_LATENCY_0))
 80024e4:	4b3d      	ldr	r3, [pc, #244]	; (80025dc <LL_SetFlashLatency+0x118>)
 80024e6:	4298      	cmp	r0, r3
 80024e8:	d871      	bhi.n	80025ce <LL_SetFlashLatency+0x10a>
      if((HCLK_Frequency > UTILS_SCALE1_LATENCY3_FREQ)&&(latency == LL_FLASH_LATENCY_0))
 80024ea:	4290      	cmp	r0, r2
 80024ec:	d83d      	bhi.n	800256a <LL_SetFlashLatency+0xa6>
      if((HCLK_Frequency > UTILS_SCALE1_LATENCY2_FREQ)&&(latency == LL_FLASH_LATENCY_0))
 80024ee:	4b3c      	ldr	r3, [pc, #240]	; (80025e0 <LL_SetFlashLatency+0x11c>)
 80024f0:	4298      	cmp	r0, r3
 80024f2:	d803      	bhi.n	80024fc <LL_SetFlashLatency+0x38>
 80024f4:	2300      	movs	r3, #0
 80024f6:	e040      	b.n	800257a <LL_SetFlashLatency+0xb6>
  uint32_t latency = LL_FLASH_LATENCY_0;  /* default value 0WS */
 80024f8:	2300      	movs	r3, #0
 80024fa:	e044      	b.n	8002586 <LL_SetFlashLatency+0xc2>
        latency = LL_FLASH_LATENCY_2;
 80024fc:	2302      	movs	r3, #2
 80024fe:	e042      	b.n	8002586 <LL_SetFlashLatency+0xc2>
      if((HCLK_Frequency > UTILS_SCALE2_LATENCY4_FREQ)&&(latency == LL_FLASH_LATENCY_0))
 8002500:	4a38      	ldr	r2, [pc, #224]	; (80025e4 <LL_SetFlashLatency+0x120>)
 8002502:	4290      	cmp	r0, r2
 8002504:	d909      	bls.n	800251a <LL_SetFlashLatency+0x56>
      if((HCLK_Frequency > UTILS_SCALE2_LATENCY3_FREQ)&&(latency == LL_FLASH_LATENCY_0))
 8002506:	4a34      	ldr	r2, [pc, #208]	; (80025d8 <LL_SetFlashLatency+0x114>)
        latency = LL_FLASH_LATENCY_4;
 8002508:	2b00      	cmp	r3, #0
 800250a:	bf08      	it	eq
 800250c:	2304      	moveq	r3, #4
      if((HCLK_Frequency > UTILS_SCALE2_LATENCY3_FREQ)&&(latency == LL_FLASH_LATENCY_0))
 800250e:	4290      	cmp	r0, r2
 8002510:	d849      	bhi.n	80025a6 <LL_SetFlashLatency+0xe2>
      if((HCLK_Frequency > UTILS_SCALE2_LATENCY2_FREQ)&&(latency == LL_FLASH_LATENCY_0))
 8002512:	4a33      	ldr	r2, [pc, #204]	; (80025e0 <LL_SetFlashLatency+0x11c>)
 8002514:	4290      	cmp	r0, r2
 8002516:	d946      	bls.n	80025a6 <LL_SetFlashLatency+0xe2>
 8002518:	e003      	b.n	8002522 <LL_SetFlashLatency+0x5e>
 800251a:	4a31      	ldr	r2, [pc, #196]	; (80025e0 <LL_SetFlashLatency+0x11c>)
 800251c:	4290      	cmp	r0, r2
 800251e:	d942      	bls.n	80025a6 <LL_SetFlashLatency+0xe2>
 8002520:	b11b      	cbz	r3, 800252a <LL_SetFlashLatency+0x66>
 8002522:	2b01      	cmp	r3, #1
 8002524:	bf38      	it	cc
 8002526:	2301      	movcc	r3, #1
 8002528:	e040      	b.n	80025ac <LL_SetFlashLatency+0xe8>
        latency = LL_FLASH_LATENCY_2;
 800252a:	2302      	movs	r3, #2
 800252c:	e03e      	b.n	80025ac <LL_SetFlashLatency+0xe8>
      if((HCLK_Frequency > UTILS_SCALE3_LATENCY2_FREQ)&&(latency == LL_FLASH_LATENCY_0))
 800252e:	4a2c      	ldr	r2, [pc, #176]	; (80025e0 <LL_SetFlashLatency+0x11c>)
 8002530:	4290      	cmp	r0, r2
 8002532:	d903      	bls.n	800253c <LL_SetFlashLatency+0x78>
 8002534:	2b00      	cmp	r3, #0
 8002536:	d146      	bne.n	80025c6 <LL_SetFlashLatency+0x102>
        latency = LL_FLASH_LATENCY_2;
 8002538:	2302      	movs	r3, #2
 800253a:	e002      	b.n	8002542 <LL_SetFlashLatency+0x7e>
        if((HCLK_Frequency > UTILS_SCALE3_LATENCY1_FREQ)&&(latency == LL_FLASH_LATENCY_0))
 800253c:	4a2a      	ldr	r2, [pc, #168]	; (80025e8 <LL_SetFlashLatency+0x124>)
 800253e:	4290      	cmp	r0, r2
 8002540:	d841      	bhi.n	80025c6 <LL_SetFlashLatency+0x102>
  MODIFY_REG(FLASH->ACR, FLASH_ACR_LATENCY, Latency);
 8002542:	492a      	ldr	r1, [pc, #168]	; (80025ec <LL_SetFlashLatency+0x128>)
 8002544:	680a      	ldr	r2, [r1, #0]
 8002546:	f022 020f 	bic.w	r2, r2, #15
 800254a:	431a      	orrs	r2, r3
 800254c:	600a      	str	r2, [r1, #0]
  return (uint32_t)(READ_BIT(FLASH->ACR, FLASH_ACR_LATENCY));
 800254e:	680a      	ldr	r2, [r1, #0]
 8002550:	f002 020f 	and.w	r2, r2, #15
    } while ((getlatency != latency) && (timeout > 0));
 8002554:	4293      	cmp	r3, r2
 8002556:	d006      	beq.n	8002566 <LL_SetFlashLatency+0xa2>
 8002558:	680a      	ldr	r2, [r1, #0]
 800255a:	f002 020f 	and.w	r2, r2, #15
 800255e:	4293      	cmp	r3, r2
 8002560:	d001      	beq.n	8002566 <LL_SetFlashLatency+0xa2>
    status = ERROR;
 8002562:	2001      	movs	r0, #1
 8002564:	4770      	bx	lr
      status = SUCCESS;
 8002566:	2000      	movs	r0, #0
}
 8002568:	4770      	bx	lr
        latency = LL_FLASH_LATENCY_3;
 800256a:	2303      	movs	r3, #3
      if((HCLK_Frequency > UTILS_SCALE1_LATENCY2_FREQ)&&(latency == LL_FLASH_LATENCY_0))
 800256c:	e005      	b.n	800257a <LL_SetFlashLatency+0xb6>
        latency = LL_FLASH_LATENCY_5;
 800256e:	2305      	movs	r3, #5
      if((HCLK_Frequency > UTILS_SCALE1_LATENCY3_FREQ)&&(latency == LL_FLASH_LATENCY_0))
 8002570:	4290      	cmp	r0, r2
 8002572:	d802      	bhi.n	800257a <LL_SetFlashLatency+0xb6>
      if((HCLK_Frequency > UTILS_SCALE1_LATENCY2_FREQ)&&(latency == LL_FLASH_LATENCY_0))
 8002574:	4a1a      	ldr	r2, [pc, #104]	; (80025e0 <LL_SetFlashLatency+0x11c>)
 8002576:	4290      	cmp	r0, r2
 8002578:	d802      	bhi.n	8002580 <LL_SetFlashLatency+0xbc>
        if((HCLK_Frequency > UTILS_SCALE1_LATENCY1_FREQ)&&(latency == LL_FLASH_LATENCY_0))
 800257a:	4a1b      	ldr	r2, [pc, #108]	; (80025e8 <LL_SetFlashLatency+0x124>)
 800257c:	4290      	cmp	r0, r2
 800257e:	d902      	bls.n	8002586 <LL_SetFlashLatency+0xc2>
 8002580:	2b01      	cmp	r3, #1
 8002582:	bf38      	it	cc
 8002584:	2301      	movcc	r3, #1
 8002586:	4a13      	ldr	r2, [pc, #76]	; (80025d4 <LL_SetFlashLatency+0x110>)
 8002588:	6812      	ldr	r2, [r2, #0]
 800258a:	f402 4240 	and.w	r2, r2, #49152	; 0xc000
    if(LL_PWR_GetRegulVoltageScaling() == LL_PWR_REGU_VOLTAGE_SCALE2)
 800258e:	f5b2 4f00 	cmp.w	r2, #32768	; 0x8000
 8002592:	d10b      	bne.n	80025ac <LL_SetFlashLatency+0xe8>
      if((HCLK_Frequency > UTILS_SCALE2_LATENCY5_FREQ)&&(latency == LL_FLASH_LATENCY_0))
 8002594:	f102 620f 	add.w	r2, r2, #149946368	; 0x8f00000
 8002598:	f502 42a3 	add.w	r2, r2, #20864	; 0x5180
 800259c:	4290      	cmp	r0, r2
 800259e:	d9af      	bls.n	8002500 <LL_SetFlashLatency+0x3c>
        latency = LL_FLASH_LATENCY_5;
 80025a0:	2b00      	cmp	r3, #0
 80025a2:	bf08      	it	eq
 80025a4:	2305      	moveq	r3, #5
        if((HCLK_Frequency > UTILS_SCALE2_LATENCY1_FREQ)&&(latency == LL_FLASH_LATENCY_0))
 80025a6:	4a10      	ldr	r2, [pc, #64]	; (80025e8 <LL_SetFlashLatency+0x124>)
 80025a8:	4290      	cmp	r0, r2
 80025aa:	d8ba      	bhi.n	8002522 <LL_SetFlashLatency+0x5e>
 80025ac:	4a09      	ldr	r2, [pc, #36]	; (80025d4 <LL_SetFlashLatency+0x110>)
 80025ae:	6812      	ldr	r2, [r2, #0]
 80025b0:	f402 4240 	and.w	r2, r2, #49152	; 0xc000
    if(LL_PWR_GetRegulVoltageScaling() == LL_PWR_REGU_VOLTAGE_SCALE3)
 80025b4:	f5b2 4f80 	cmp.w	r2, #16384	; 0x4000
 80025b8:	d1c3      	bne.n	8002542 <LL_SetFlashLatency+0x7e>
      if((HCLK_Frequency > UTILS_SCALE3_LATENCY3_FREQ)&&(latency == LL_FLASH_LATENCY_0))
 80025ba:	4a07      	ldr	r2, [pc, #28]	; (80025d8 <LL_SetFlashLatency+0x114>)
 80025bc:	4290      	cmp	r0, r2
 80025be:	d9b6      	bls.n	800252e <LL_SetFlashLatency+0x6a>
        latency = LL_FLASH_LATENCY_3;
 80025c0:	2b00      	cmp	r3, #0
 80025c2:	bf08      	it	eq
 80025c4:	2303      	moveq	r3, #3
 80025c6:	2b01      	cmp	r3, #1
 80025c8:	bf38      	it	cc
 80025ca:	2301      	movcc	r3, #1
 80025cc:	e7b9      	b.n	8002542 <LL_SetFlashLatency+0x7e>
        latency = LL_FLASH_LATENCY_4;
 80025ce:	2304      	movs	r3, #4
 80025d0:	e7ce      	b.n	8002570 <LL_SetFlashLatency+0xac>
 80025d2:	bf00      	nop
 80025d4:	40007000 	.word	0x40007000
 80025d8:	055d4a80 	.word	0x055d4a80
 80025dc:	07270e00 	.word	0x07270e00
 80025e0:	03938700 	.word	0x03938700
 80025e4:	00b71b00 	.word	0x00b71b00
 80025e8:	01c9c380 	.word	0x01c9c380
 80025ec:	40023c00 	.word	0x40023c00

080025f0 <UTILS_EnablePLLAndSwitchSystem>:
  assert_param(IS_LL_UTILS_SYSCLK_DIV(UTILS_ClkInitStruct->AHBCLKDivider));
  assert_param(IS_LL_UTILS_APB1_DIV(UTILS_ClkInitStruct->APB1CLKDivider));
  assert_param(IS_LL_UTILS_APB2_DIV(UTILS_ClkInitStruct->APB2CLKDivider));

  /* Calculate HCLK frequency */
  hclk_frequency = __LL_RCC_CALC_HCLK_FREQ(SYSCLK_Frequency, UTILS_ClkInitStruct->AHBCLKDivider);
 80025f0:	680b      	ldr	r3, [r1, #0]
 80025f2:	4a21      	ldr	r2, [pc, #132]	; (8002678 <UTILS_EnablePLLAndSwitchSystem+0x88>)
 80025f4:	f3c3 1303 	ubfx	r3, r3, #4, #4
{
 80025f8:	b570      	push	{r4, r5, r6, lr}
  hclk_frequency = __LL_RCC_CALC_HCLK_FREQ(SYSCLK_Frequency, UTILS_ClkInitStruct->AHBCLKDivider);
 80025fa:	5cd3      	ldrb	r3, [r2, r3]

  /* Increasing the number of wait states because of higher CPU frequency */
  if(SystemCoreClock < hclk_frequency)
 80025fc:	4e1f      	ldr	r6, [pc, #124]	; (800267c <UTILS_EnablePLLAndSwitchSystem+0x8c>)
  hclk_frequency = __LL_RCC_CALC_HCLK_FREQ(SYSCLK_Frequency, UTILS_ClkInitStruct->AHBCLKDivider);
 80025fe:	fa20 f403 	lsr.w	r4, r0, r3
  if(SystemCoreClock < hclk_frequency)
 8002602:	6833      	ldr	r3, [r6, #0]
 8002604:	42a3      	cmp	r3, r4
{
 8002606:	460d      	mov	r5, r1
  if(SystemCoreClock < hclk_frequency)
 8002608:	d327      	bcc.n	800265a <UTILS_EnablePLLAndSwitchSystem+0x6a>
  SET_BIT(RCC->CR, RCC_CR_PLLON);
 800260a:	4b1d      	ldr	r3, [pc, #116]	; (8002680 <UTILS_EnablePLLAndSwitchSystem+0x90>)
 800260c:	681a      	ldr	r2, [r3, #0]
 800260e:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8002612:	601a      	str	r2, [r3, #0]
  return (READ_BIT(RCC->CR, RCC_CR_PLLRDY) == (RCC_CR_PLLRDY));
 8002614:	681a      	ldr	r2, [r3, #0]
  /* Update system clock configuration */
  if(status == SUCCESS)
  {
    /* Enable PLL */
    LL_RCC_PLL_Enable();
    while (LL_RCC_PLL_IsReady() != 1U)
 8002616:	0192      	lsls	r2, r2, #6
 8002618:	d5fc      	bpl.n	8002614 <UTILS_EnablePLLAndSwitchSystem+0x24>
  MODIFY_REG(RCC->CFGR, RCC_CFGR_HPRE, Prescaler);
 800261a:	689a      	ldr	r2, [r3, #8]
 800261c:	6829      	ldr	r1, [r5, #0]
 800261e:	f022 02f0 	bic.w	r2, r2, #240	; 0xf0
 8002622:	430a      	orrs	r2, r1
 8002624:	609a      	str	r2, [r3, #8]
  MODIFY_REG(RCC->CFGR, RCC_CFGR_SW, Source);
 8002626:	689a      	ldr	r2, [r3, #8]
 8002628:	f022 0203 	bic.w	r2, r2, #3
 800262c:	f042 0202 	orr.w	r2, r2, #2
 8002630:	609a      	str	r2, [r3, #8]
  return (uint32_t)(READ_BIT(RCC->CFGR, RCC_CFGR_SWS));
 8002632:	4b13      	ldr	r3, [pc, #76]	; (8002680 <UTILS_EnablePLLAndSwitchSystem+0x90>)
 8002634:	689a      	ldr	r2, [r3, #8]
 8002636:	f002 020c 	and.w	r2, r2, #12
    }

    /* Sysclk activation on the main PLL */
    LL_RCC_SetAHBPrescaler(UTILS_ClkInitStruct->AHBCLKDivider);
    LL_RCC_SetSysClkSource(LL_RCC_SYS_CLKSOURCE_PLL);
    while (LL_RCC_GetSysClkSource() != LL_RCC_SYS_CLKSOURCE_STATUS_PLL)
 800263a:	2a08      	cmp	r2, #8
 800263c:	d1fa      	bne.n	8002634 <UTILS_EnablePLLAndSwitchSystem+0x44>
  MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE1, Prescaler);
 800263e:	689a      	ldr	r2, [r3, #8]
 8002640:	6869      	ldr	r1, [r5, #4]
 8002642:	f422 52e0 	bic.w	r2, r2, #7168	; 0x1c00
 8002646:	430a      	orrs	r2, r1
 8002648:	609a      	str	r2, [r3, #8]
  MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE2, Prescaler);
 800264a:	689a      	ldr	r2, [r3, #8]
 800264c:	68a9      	ldr	r1, [r5, #8]
 800264e:	f422 4260 	bic.w	r2, r2, #57344	; 0xe000
 8002652:	430a      	orrs	r2, r1
 8002654:	609a      	str	r2, [r3, #8]
}
 8002656:	2000      	movs	r0, #0
 8002658:	e004      	b.n	8002664 <UTILS_EnablePLLAndSwitchSystem+0x74>
    status = LL_SetFlashLatency(hclk_frequency);
 800265a:	4620      	mov	r0, r4
 800265c:	f7ff ff32 	bl	80024c4 <LL_SetFlashLatency>
  if(status == SUCCESS)
 8002660:	2800      	cmp	r0, #0
 8002662:	d0d2      	beq.n	800260a <UTILS_EnablePLLAndSwitchSystem+0x1a>
    LL_RCC_SetAPB1Prescaler(UTILS_ClkInitStruct->APB1CLKDivider);
    LL_RCC_SetAPB2Prescaler(UTILS_ClkInitStruct->APB2CLKDivider);
  }

  /* Decreasing the number of wait states because of lower CPU frequency */
  if(SystemCoreClock > hclk_frequency)
 8002664:	6833      	ldr	r3, [r6, #0]
 8002666:	42a3      	cmp	r3, r4
 8002668:	d902      	bls.n	8002670 <UTILS_EnablePLLAndSwitchSystem+0x80>
  {
    /* Set FLASH latency to lowest latency */
    status = LL_SetFlashLatency(hclk_frequency);
 800266a:	4620      	mov	r0, r4
 800266c:	f7ff ff2a 	bl	80024c4 <LL_SetFlashLatency>
  }

  /* Update SystemCoreClock variable */
  if(status == SUCCESS)
 8002670:	b900      	cbnz	r0, 8002674 <UTILS_EnablePLLAndSwitchSystem+0x84>
  SystemCoreClock = HCLKFrequency;
 8002672:	6034      	str	r4, [r6, #0]
  {
    LL_SetSystemCoreClock(hclk_frequency);
  }

  return status;
}
 8002674:	bd70      	pop	{r4, r5, r6, pc}
 8002676:	bf00      	nop
 8002678:	08004925 	.word	0x08004925
 800267c:	20000030 	.word	0x20000030
 8002680:	40023800 	.word	0x40023800

08002684 <LL_PLL_ConfigSystemClock_HSE>:
{
 8002684:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8002686:	4606      	mov	r6, r0
 8002688:	460f      	mov	r7, r1
 800268a:	4614      	mov	r4, r2
 800268c:	461d      	mov	r5, r3
  if(UTILS_PLL_IsBusy() == SUCCESS)
 800268e:	f7ff ff05 	bl	800249c <UTILS_PLL_IsBusy>
 8002692:	2800      	cmp	r0, #0
 8002694:	d138      	bne.n	8002708 <LL_PLL_ConfigSystemClock_HSE+0x84>
  pllfreq = PLL_InputFrequency / (UTILS_PLLInitStruct->PLLM & (RCC_PLLCFGR_PLLM >> RCC_PLLCFGR_PLLM_Pos));
 8002696:	f8d4 c000 	ldr.w	ip, [r4]
  pllfreq = pllfreq / (((UTILS_PLLInitStruct->PLLP >> RCC_PLLCFGR_PLLP_Pos) + 1) * 2);
 800269a:	68a3      	ldr	r3, [r4, #8]
  pllfreq = PLL_InputFrequency / (UTILS_PLLInitStruct->PLLM & (RCC_PLLCFGR_PLLM >> RCC_PLLCFGR_PLLM_Pos));
 800269c:	f00c 023f 	and.w	r2, ip, #63	; 0x3f
 80026a0:	fbb6 f2f2 	udiv	r2, r6, r2
  pllfreq = pllfreq * (UTILS_PLLInitStruct->PLLN & (RCC_PLLCFGR_PLLN >> RCC_PLLCFGR_PLLN_Pos));
 80026a4:	6866      	ldr	r6, [r4, #4]
  return (READ_BIT(RCC->CR, RCC_CR_HSERDY) == (RCC_CR_HSERDY));
 80026a6:	4c19      	ldr	r4, [pc, #100]	; (800270c <LL_PLL_ConfigSystemClock_HSE+0x88>)
 80026a8:	f3c6 0008 	ubfx	r0, r6, #0, #9
 80026ac:	4342      	muls	r2, r0
  pllfreq = pllfreq / (((UTILS_PLLInitStruct->PLLP >> RCC_PLLCFGR_PLLP_Pos) + 1) * 2);
 80026ae:	0c18      	lsrs	r0, r3, #16
 80026b0:	3001      	adds	r0, #1
 80026b2:	0040      	lsls	r0, r0, #1
 80026b4:	fbb2 f0f0 	udiv	r0, r2, r0
 80026b8:	6822      	ldr	r2, [r4, #0]
    if(LL_RCC_HSE_IsReady() != 1U)
 80026ba:	0391      	lsls	r1, r2, #14
 80026bc:	d40f      	bmi.n	80026de <LL_PLL_ConfigSystemClock_HSE+0x5a>
  SET_BIT(RCC->CR, RCC_CR_HSEBYP);
 80026be:	6822      	ldr	r2, [r4, #0]
      if(HSEBypass == LL_UTILS_HSEBYPASS_ON)
 80026c0:	2f01      	cmp	r7, #1
 80026c2:	bf0c      	ite	eq
 80026c4:	f442 2280 	orreq.w	r2, r2, #262144	; 0x40000
  CLEAR_BIT(RCC->CR, RCC_CR_HSEBYP);
 80026c8:	f422 2280 	bicne.w	r2, r2, #262144	; 0x40000
 80026cc:	6022      	str	r2, [r4, #0]
  SET_BIT(RCC->CR, RCC_CR_HSEON);
 80026ce:	6821      	ldr	r1, [r4, #0]
 80026d0:	f441 3180 	orr.w	r1, r1, #65536	; 0x10000
 80026d4:	6021      	str	r1, [r4, #0]
  return (READ_BIT(RCC->CR, RCC_CR_HSERDY) == (RCC_CR_HSERDY));
 80026d6:	490d      	ldr	r1, [pc, #52]	; (800270c <LL_PLL_ConfigSystemClock_HSE+0x88>)
 80026d8:	680a      	ldr	r2, [r1, #0]
      while (LL_RCC_HSE_IsReady() != 1U)
 80026da:	0392      	lsls	r2, r2, #14
 80026dc:	d5fc      	bpl.n	80026d8 <LL_PLL_ConfigSystemClock_HSE+0x54>
  MODIFY_REG(RCC->PLLCFGR, RCC_PLLCFGR_PLLSRC | RCC_PLLCFGR_PLLM | RCC_PLLCFGR_PLLN,
 80026de:	490b      	ldr	r1, [pc, #44]	; (800270c <LL_PLL_ConfigSystemClock_HSE+0x88>)
 80026e0:	4a0b      	ldr	r2, [pc, #44]	; (8002710 <LL_PLL_ConfigSystemClock_HSE+0x8c>)
 80026e2:	684c      	ldr	r4, [r1, #4]
 80026e4:	4022      	ands	r2, r4
 80026e6:	ea42 1286 	orr.w	r2, r2, r6, lsl #6
 80026ea:	ea42 020c 	orr.w	r2, r2, ip
 80026ee:	f442 0280 	orr.w	r2, r2, #4194304	; 0x400000
 80026f2:	604a      	str	r2, [r1, #4]
  MODIFY_REG(RCC->PLLCFGR, RCC_PLLCFGR_PLLP, PLLP_R);
 80026f4:	684a      	ldr	r2, [r1, #4]
 80026f6:	f422 3240 	bic.w	r2, r2, #196608	; 0x30000
 80026fa:	431a      	orrs	r2, r3
 80026fc:	604a      	str	r2, [r1, #4]
    status = UTILS_EnablePLLAndSwitchSystem(pllfreq, UTILS_ClkInitStruct);
 80026fe:	4629      	mov	r1, r5
}
 8002700:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
    status = UTILS_EnablePLLAndSwitchSystem(pllfreq, UTILS_ClkInitStruct);
 8002704:	f7ff bf74 	b.w	80025f0 <UTILS_EnablePLLAndSwitchSystem>
}
 8002708:	2001      	movs	r0, #1
 800270a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800270c:	40023800 	.word	0x40023800
 8002710:	ffbf8000 	.word	0xffbf8000

08002714 <z_sys_init_run_level>:
		/* End marker */
		__init_end,
	};
	const struct init_entry *entry;

	for (entry = levels[level]; entry < levels[level+1]; entry++) {
 8002714:	4b0e      	ldr	r3, [pc, #56]	; (8002750 <z_sys_init_run_level+0x3c>)
{
 8002716:	b570      	push	{r4, r5, r6, lr}
	for (entry = levels[level]; entry < levels[level+1]; entry++) {
 8002718:	f853 4020 	ldr.w	r4, [r3, r0, lsl #2]
 800271c:	3001      	adds	r0, #1
 800271e:	f853 6020 	ldr.w	r6, [r3, r0, lsl #2]
 8002722:	42a6      	cmp	r6, r4
 8002724:	d800      	bhi.n	8002728 <z_sys_init_run_level+0x14>
				dev->state->init_res = rc;
			}
			dev->state->initialized = true;
		}
	}
}
 8002726:	bd70      	pop	{r4, r5, r6, pc}
		int rc = entry->init(dev);
 8002728:	e9d4 3500 	ldrd	r3, r5, [r4]
 800272c:	4628      	mov	r0, r5
 800272e:	4798      	blx	r3
		if (dev != NULL) {
 8002730:	b165      	cbz	r5, 800274c <z_sys_init_run_level+0x38>
				dev->state->init_res = rc;
 8002732:	68eb      	ldr	r3, [r5, #12]
			if (rc != 0) {
 8002734:	b130      	cbz	r0, 8002744 <z_sys_init_run_level+0x30>
				if (rc < 0) {
 8002736:	2800      	cmp	r0, #0
 8002738:	bfb8      	it	lt
 800273a:	4240      	neglt	r0, r0
				dev->state->init_res = rc;
 800273c:	28ff      	cmp	r0, #255	; 0xff
 800273e:	bfa8      	it	ge
 8002740:	20ff      	movge	r0, #255	; 0xff
 8002742:	7018      	strb	r0, [r3, #0]
			dev->state->initialized = true;
 8002744:	785a      	ldrb	r2, [r3, #1]
 8002746:	f042 0201 	orr.w	r2, r2, #1
 800274a:	705a      	strb	r2, [r3, #1]
	for (entry = levels[level]; entry < levels[level+1]; entry++) {
 800274c:	3408      	adds	r4, #8
 800274e:	e7e8      	b.n	8002722 <z_sys_init_run_level+0xe>
 8002750:	08004328 	.word	0x08004328

08002754 <k_sys_fatal_error_handler>:
/* LCOV_EXCL_STOP */

/* LCOV_EXCL_START */
__weak void k_sys_fatal_error_handler(unsigned int reason,
				      const z_arch_esf_t *esf)
{
 8002754:	b510      	push	{r4, lr}
 8002756:	4604      	mov	r4, r0
		arch_syscall_invoke0(K_SYSCALL_LOG_PANIC);
		return;
	}
#endif
	compiler_barrier();
	z_impl_log_panic();
 8002758:	f7fe fb0e 	bl	8000d78 <z_impl_log_panic>
 800275c:	4806      	ldr	r0, [pc, #24]	; (8002778 <k_sys_fatal_error_handler+0x24>)
 800275e:	4b07      	ldr	r3, [pc, #28]	; (800277c <k_sys_fatal_error_handler+0x28>)
	ARG_UNUSED(esf);

	LOG_PANIC();
	LOG_ERR("Halting system");
 8002760:	4907      	ldr	r1, [pc, #28]	; (8002780 <k_sys_fatal_error_handler+0x2c>)
 8002762:	1a1b      	subs	r3, r3, r0
 8002764:	08db      	lsrs	r3, r3, #3
 8002766:	019b      	lsls	r3, r3, #6
 8002768:	f043 0001 	orr.w	r0, r3, #1
 800276c:	f000 fe81 	bl	8003472 <log_string_sync>
	arch_system_halt(reason);
 8002770:	4620      	mov	r0, r4
 8002772:	f001 f937 	bl	80039e4 <arch_system_halt>
 8002776:	bf00      	nop
 8002778:	08004048 	.word	0x08004048
 800277c:	08004058 	.word	0x08004058
 8002780:	08004935 	.word	0x08004935

08002784 <z_fatal_error>:
	return 0;
#endif
}

void z_fatal_error(unsigned int reason, const z_arch_esf_t *esf)
{
 8002784:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 8002788:	4606      	mov	r6, r0
 800278a:	460f      	mov	r7, r1
	__asm__ volatile(
 800278c:	f04f 0310 	mov.w	r3, #16
 8002790:	f3ef 8811 	mrs	r8, BASEPRI
 8002794:	f383 8812 	msr	BASEPRI_MAX, r3
 8002798:	f3bf 8f6f 	isb	sy
		/* coverity[OVERRUN] */
		return (k_tid_t) arch_syscall_invoke0(K_SYSCALL_Z_CURRENT_GET);
	}
#endif
	compiler_barrier();
	return z_impl_z_current_get();
 800279c:	f000 fc22 	bl	8002fe4 <z_impl_z_current_get>
 80027a0:	4c1e      	ldr	r4, [pc, #120]	; (800281c <z_fatal_error+0x98>)
 80027a2:	4b1f      	ldr	r3, [pc, #124]	; (8002820 <z_fatal_error+0x9c>)
			k_current_get() : NULL;

	/* twister looks for the "ZEPHYR FATAL ERROR" string, don't
	 * change it without also updating twister
	 */
	LOG_ERR(">>> ZEPHYR FATAL ERROR %d: %s on CPU %d", reason,
 80027a4:	491f      	ldr	r1, [pc, #124]	; (8002824 <z_fatal_error+0xa0>)
 80027a6:	1ae4      	subs	r4, r4, r3
 80027a8:	2e04      	cmp	r6, #4
 80027aa:	bf96      	itet	ls
 80027ac:	4b1e      	ldrls	r3, [pc, #120]	; (8002828 <z_fatal_error+0xa4>)
 80027ae:	4b1f      	ldrhi	r3, [pc, #124]	; (800282c <z_fatal_error+0xa8>)
 80027b0:	f853 3026 	ldrls.w	r3, [r3, r6, lsl #2]
 80027b4:	08e4      	lsrs	r4, r4, #3
 80027b6:	2200      	movs	r2, #0
 80027b8:	01a4      	lsls	r4, r4, #6
 80027ba:	4605      	mov	r5, r0
 80027bc:	9200      	str	r2, [sp, #0]
 80027be:	f044 0001 	orr.w	r0, r4, #1
 80027c2:	4632      	mov	r2, r6
 80027c4:	f000 fe55 	bl	8003472 <log_string_sync>
	 * an IRQ or exception was being handled, or thread context.
	 *
	 * See #17656
	 */
#if defined(CONFIG_ARCH_HAS_NESTED_EXCEPTION_DETECTION)
	if ((esf != NULL) && arch_is_in_nested_exception(esf)) {
 80027c8:	b147      	cbz	r7, 80027dc <z_fatal_error+0x58>
 * @return true if execution state was in handler mode, before
 *              the current exception occurred, otherwise false.
 */
static ALWAYS_INLINE bool arch_is_in_nested_exception(const z_arch_esf_t *esf)
{
	return (esf->basic.xpsr & IPSR_ISR_Msk) ? (true) : (false);
 80027ca:	69fb      	ldr	r3, [r7, #28]
 80027cc:	f3c3 0308 	ubfx	r3, r3, #0, #9
 80027d0:	b123      	cbz	r3, 80027dc <z_fatal_error+0x58>
		LOG_ERR("Fault during interrupt handling\n");
 80027d2:	4917      	ldr	r1, [pc, #92]	; (8002830 <z_fatal_error+0xac>)
 80027d4:	f044 0001 	orr.w	r0, r4, #1
 80027d8:	f000 fe4b 	bl	8003472 <log_string_sync>
	}
#endif

	LOG_ERR("Current thread: %p (%s)", thread,
 80027dc:	f044 0401 	orr.w	r4, r4, #1
	const char *thread_name = (thread != NULL) ? k_thread_name_get(thread) : NULL;
 80027e0:	b12d      	cbz	r5, 80027ee <z_fatal_error+0x6a>
 80027e2:	4628      	mov	r0, r5
 80027e4:	f001 f907 	bl	80039f6 <k_thread_name_get>
	if ((thread_name == NULL) || (thread_name[0] == '\0')) {
 80027e8:	b108      	cbz	r0, 80027ee <z_fatal_error+0x6a>
 80027ea:	7803      	ldrb	r3, [r0, #0]
 80027ec:	b903      	cbnz	r3, 80027f0 <z_fatal_error+0x6c>
		thread_name = "unknown";
 80027ee:	4811      	ldr	r0, [pc, #68]	; (8002834 <z_fatal_error+0xb0>)
{
	if (IS_ENABLED(CONFIG_LOG_MINIMAL) || IS_ENABLED(CONFIG_LOG2)) {
		return (char *)str;
	}

	return z_log_strdup(str);
 80027f0:	f000 fe52 	bl	8003498 <z_log_strdup>
	LOG_ERR("Current thread: %p (%s)", thread,
 80027f4:	462a      	mov	r2, r5
 80027f6:	4603      	mov	r3, r0
 80027f8:	490f      	ldr	r1, [pc, #60]	; (8002838 <z_fatal_error+0xb4>)
 80027fa:	4620      	mov	r0, r4
 80027fc:	f000 fe39 	bl	8003472 <log_string_sync>
		log_strdup(thread_name_get(thread)));

	coredump(reason, esf, thread);

	k_sys_fatal_error_handler(reason, esf);
 8002800:	4639      	mov	r1, r7
 8002802:	4630      	mov	r0, r6
 8002804:	f7ff ffa6 	bl	8002754 <k_sys_fatal_error_handler>
	__asm__ volatile(
 8002808:	f388 8811 	msr	BASEPRI, r8
 800280c:	f3bf 8f6f 	isb	sy
		arch_syscall_invoke1(*(uintptr_t *)&thread, K_SYSCALL_K_THREAD_ABORT);
		return;
	}
#endif
	compiler_barrier();
	z_impl_k_thread_abort(thread);
 8002810:	4628      	mov	r0, r5
	arch_irq_unlock(key);

	if (IS_ENABLED(CONFIG_MULTITHREADING)) {
		k_thread_abort(thread);
	}
}
 8002812:	b002      	add	sp, #8
 8002814:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8002818:	f7ff b8ca 	b.w	80019b0 <z_impl_k_thread_abort>
 800281c:	08004058 	.word	0x08004058
 8002820:	08004048 	.word	0x08004048
 8002824:	0800495a 	.word	0x0800495a
 8002828:	08004340 	.word	0x08004340
 800282c:	08004944 	.word	0x08004944
 8002830:	08004982 	.word	0x08004982
 8002834:	08004952 	.word	0x08004952
 8002838:	080049a3 	.word	0x080049a3

0800283c <init_idle_thread>:
} /* LCOV_EXCL_LINE ... because we just dumped final coverage data */

#if defined(CONFIG_MULTITHREADING)
__boot_func
static void init_idle_thread(int i)
{
 800283c:	b530      	push	{r4, r5, lr}
	snprintk(tname, 8, "idle %02d", i);
#else
	char *tname = NULL;
#endif /* CONFIG_THREAD_NAME */

	z_setup_new_thread(thread, stack,
 800283e:	2300      	movs	r3, #0
{
 8002840:	b087      	sub	sp, #28
	z_setup_new_thread(thread, stack,
 8002842:	2201      	movs	r2, #1
 8002844:	e9cd 2304 	strd	r2, r3, [sp, #16]
 8002848:	220f      	movs	r2, #15
 800284a:	e9cd 3202 	strd	r3, r2, [sp, #8]
 800284e:	9301      	str	r3, [sp, #4]
	struct k_thread *thread = &z_idle_threads[i];
 8002850:	4c0c      	ldr	r4, [pc, #48]	; (8002884 <init_idle_thread+0x48>)
			  CONFIG_IDLE_STACK_SIZE, idle, &_kernel.cpus[i],
 8002852:	4b0d      	ldr	r3, [pc, #52]	; (8002888 <init_idle_thread+0x4c>)
	z_setup_new_thread(thread, stack,
 8002854:	490d      	ldr	r1, [pc, #52]	; (800288c <init_idle_thread+0x50>)
			  CONFIG_IDLE_STACK_SIZE, idle, &_kernel.cpus[i],
 8002856:	2218      	movs	r2, #24
	struct k_thread *thread = &z_idle_threads[i];
 8002858:	eb04 14c0 	add.w	r4, r4, r0, lsl #7
			  CONFIG_IDLE_STACK_SIZE, idle, &_kernel.cpus[i],
 800285c:	fb02 3300 	mla	r3, r2, r0, r3
	z_setup_new_thread(thread, stack,
 8002860:	f44f 75b0 	mov.w	r5, #352	; 0x160
 8002864:	9300      	str	r3, [sp, #0]
 8002866:	fb05 1100 	mla	r1, r5, r0, r1
 800286a:	4b09      	ldr	r3, [pc, #36]	; (8002890 <init_idle_thread+0x54>)
 800286c:	f44f 72a0 	mov.w	r2, #320	; 0x140
 8002870:	4620      	mov	r0, r4
 8002872:	f000 f8d5 	bl	8002a20 <z_setup_new_thread>
	SYS_PORT_TRACING_FUNC(k_thread, sched_resume, thread);
}

static inline void z_mark_thread_as_started(struct k_thread *thread)
{
	thread->base.thread_state &= ~_THREAD_PRESTART;
 8002876:	7b63      	ldrb	r3, [r4, #13]
 8002878:	f023 0304 	bic.w	r3, r3, #4
 800287c:	7363      	strb	r3, [r4, #13]
	z_mark_thread_as_started(thread);

#ifdef CONFIG_SMP
	thread->base.is_idle = 1U;
#endif
}
 800287e:	b007      	add	sp, #28
 8002880:	bd30      	pop	{r4, r5, pc}
 8002882:	bf00      	nop
 8002884:	20000080 	.word	0x20000080
 8002888:	20000338 	.word	0x20000338
 800288c:	20000ba0 	.word	0x20000ba0
 8002890:	080039fb 	.word	0x080039fb

08002894 <bg_thread_main>:
{
 8002894:	b508      	push	{r3, lr}
	z_sys_post_kernel = true;
 8002896:	4b0a      	ldr	r3, [pc, #40]	; (80028c0 <bg_thread_main+0x2c>)
 8002898:	2201      	movs	r2, #1
	z_sys_init_run_level(_SYS_INIT_LEVEL_POST_KERNEL);
 800289a:	2002      	movs	r0, #2
	z_sys_post_kernel = true;
 800289c:	701a      	strb	r2, [r3, #0]
	z_sys_init_run_level(_SYS_INIT_LEVEL_POST_KERNEL);
 800289e:	f7ff ff39 	bl	8002714 <z_sys_init_run_level>
	boot_banner();
 80028a2:	f000 fd57 	bl	8003354 <boot_banner>
	z_sys_init_run_level(_SYS_INIT_LEVEL_APPLICATION);
 80028a6:	2003      	movs	r0, #3
 80028a8:	f7ff ff34 	bl	8002714 <z_sys_init_run_level>
	z_init_static_threads();
 80028ac:	f000 f8ea 	bl	8002a84 <z_init_static_threads>
	main();
 80028b0:	f7fd fdea 	bl	8000488 <main>
	z_main_thread.base.user_options &= ~K_ESSENTIAL;
 80028b4:	4a03      	ldr	r2, [pc, #12]	; (80028c4 <bg_thread_main+0x30>)
 80028b6:	7b13      	ldrb	r3, [r2, #12]
 80028b8:	f023 0301 	bic.w	r3, r3, #1
 80028bc:	7313      	strb	r3, [r2, #12]
} /* LCOV_EXCL_LINE ... because we just dumped final coverage data */
 80028be:	bd08      	pop	{r3, pc}
 80028c0:	20000370 	.word	0x20000370
 80028c4:	20000100 	.word	0x20000100

080028c8 <z_bss_zero>:
{
 80028c8:	b508      	push	{r3, lr}
	(void)memset(__bss_start, 0, __bss_end - __bss_start);
 80028ca:	4807      	ldr	r0, [pc, #28]	; (80028e8 <z_bss_zero+0x20>)
 80028cc:	4a07      	ldr	r2, [pc, #28]	; (80028ec <z_bss_zero+0x24>)
 80028ce:	2100      	movs	r1, #0
 80028d0:	1a12      	subs	r2, r2, r0
 80028d2:	f000 fe51 	bl	8003578 <memset>
	(void)memset(&__ccm_bss_start, 0,
 80028d6:	4806      	ldr	r0, [pc, #24]	; (80028f0 <z_bss_zero+0x28>)
 80028d8:	4a06      	ldr	r2, [pc, #24]	; (80028f4 <z_bss_zero+0x2c>)
}
 80028da:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
	(void)memset(&__ccm_bss_start, 0,
 80028de:	1a12      	subs	r2, r2, r0
 80028e0:	2100      	movs	r1, #0
 80028e2:	f000 be49 	b.w	8003578 <memset>
 80028e6:	bf00      	nop
 80028e8:	20000080 	.word	0x20000080
 80028ec:	20000374 	.word	0x20000374
 80028f0:	10000000 	.word	0x10000000
 80028f4:	10000000 	.word	0x10000000

080028f8 <z_cstart>:
 *
 * @return Does not return
 */
__boot_func
FUNC_NORETURN void z_cstart(void)
{
 80028f8:	b580      	push	{r7, lr}
 80028fa:	b0a6      	sub	sp, #152	; 0x98
	/* gcov hook needed to get the coverage report.*/
	gcov_static_init();

	LOG_CORE_INIT();
 80028fc:	f7fe f9fc 	bl	8000cf8 <log_core_init>
 *
 * @return N/A
 */
static ALWAYS_INLINE void z_arm_interrupt_stack_setup(void)
{
	uint32_t msp =
 8002900:	f8df 80b8 	ldr.w	r8, [pc, #184]	; 80029bc <z_cstart+0xc4>
  \details Assigns the given value to the Main Stack Pointer (MSP).
  \param [in]    topOfMainStack  Main Stack Pointer value to set
 */
__STATIC_FORCEINLINE void __set_MSP(uint32_t topOfMainStack)
{
  __ASM volatile ("MSR msp, %0" : : "r" (topOfMainStack) : );
 8002904:	f388 8808 	msr	MSP, r8
	 * for Cortex-M3 and Cortex-M4 (ARMv7-M) MCUs. For the rest
	 * of ARM Cortex-M processors this setting is enforced by
	 * default and it is not configurable.
	 */
#if defined(CONFIG_CPU_CORTEX_M3) || defined(CONFIG_CPU_CORTEX_M4)
	SCB->CCR |= SCB_CCR_STKALIGN_Msk;
 8002908:	4d2d      	ldr	r5, [pc, #180]	; (80029c0 <z_cstart+0xc8>)
#endif
#ifdef CONFIG_USERSPACE
	dummy_thread->mem_domain_info.mem_domain = &k_mem_domain_default;
#endif

	_current_cpu->current = dummy_thread;
 800290a:	4e2e      	ldr	r6, [pc, #184]	; (80029c4 <z_cstart+0xcc>)
 800290c:	696b      	ldr	r3, [r5, #20]
	stack_ptr = z_setup_new_thread(&z_main_thread, z_main_stack,
 800290e:	f8df 90b8 	ldr.w	r9, [pc, #184]	; 80029c8 <z_cstart+0xd0>
 8002912:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 8002916:	2400      	movs	r4, #0
 8002918:	616b      	str	r3, [r5, #20]
 800291a:	23f0      	movs	r3, #240	; 0xf0
 800291c:	f885 3022 	strb.w	r3, [r5, #34]	; 0x22
 8002920:	77ec      	strb	r4, [r5, #31]
 8002922:	762c      	strb	r4, [r5, #24]
 8002924:	766c      	strb	r4, [r5, #25]
 8002926:	76ac      	strb	r4, [r5, #26]
 8002928:	f885 4020 	strb.w	r4, [r5, #32]
#if defined(CONFIG_ARM_SECURE_FIRMWARE)
	NVIC_SetPriority(SecureFault_IRQn, _EXC_FAULT_PRIO);
#endif /* CONFIG_ARM_SECURE_FIRMWARE */

	/* Enable Usage, Mem, & Bus Faults */
	SCB->SHCSR |= SCB_SHCSR_USGFAULTENA_Msk | SCB_SHCSR_MEMFAULTENA_Msk |
 800292c:	6a6b      	ldr	r3, [r5, #36]	; 0x24
 800292e:	f443 23e0 	orr.w	r3, r3, #458752	; 0x70000
 8002932:	626b      	str	r3, [r5, #36]	; 0x24

static ALWAYS_INLINE void arch_kernel_init(void)
{
	z_arm_interrupt_stack_setup();
	z_arm_exc_setup();
	z_arm_fault_init();
 8002934:	f7ff f808 	bl	8001948 <z_arm_fault_init>
	z_arm_cpu_idle_init();
 8002938:	f7fe fc7a 	bl	8001230 <z_arm_cpu_idle_init>
static ALWAYS_INLINE void z_arm_clear_faults(void)
{
#if defined(CONFIG_ARMV6_M_ARMV8_M_BASELINE)
#elif defined(CONFIG_ARMV7_M_ARMV8_M_MAINLINE)
	/* Reset all faults */
	SCB->CFSR = SCB_CFSR_USGFAULTSR_Msk |
 800293c:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002940:	62ab      	str	r3, [r5, #40]	; 0x28
		    SCB_CFSR_MEMFAULTSR_Msk |
		    SCB_CFSR_BUSFAULTSR_Msk;

	/* Clear all Hard Faults - HFSR is write-one-to-clear */
	SCB->HFSR = 0xffffffff;
 8002942:	62eb      	str	r3, [r5, #44]	; 0x2c
	z_arm_clear_faults();
#if defined(CONFIG_ARM_MPU)
	z_arm_mpu_init();
 8002944:	f7ff f8f8 	bl	8001b38 <z_arm_mpu_init>
	 * to set up access permissions for fixed memory sections, such
	 * as Application Memory or No-Cacheable SRAM area.
	 *
	 * This function is invoked once, upon system initialization.
	 */
	z_arm_configure_static_mpu_regions();
 8002948:	f7ff f844 	bl	80019d4 <z_arm_configure_static_mpu_regions>
	dummy_thread->base.user_options = K_ESSENTIAL;
 800294c:	f240 1301 	movw	r3, #257	; 0x101
 8002950:	f8ad 3024 	strh.w	r3, [sp, #36]	; 0x24
	_current_cpu->current = dummy_thread;
 8002954:	ab06      	add	r3, sp, #24
 8002956:	60b3      	str	r3, [r6, #8]
	dummy_thread->stack_info.size = 0U;
 8002958:	e9cd 441f 	strd	r4, r4, [sp, #124]	; 0x7c
	struct k_thread dummy_thread;

	z_dummy_thread_init(&dummy_thread);
#endif
	/* do any necessary initialization of static devices */
	z_device_state_init();
 800295c:	f001 f837 	bl	80039ce <z_device_state_init>

	/* perform basic hardware initialization */
	z_sys_init_run_level(_SYS_INIT_LEVEL_PRE_KERNEL_1);
 8002960:	4620      	mov	r0, r4
 8002962:	f7ff fed7 	bl	8002714 <z_sys_init_run_level>
	z_sys_init_run_level(_SYS_INIT_LEVEL_PRE_KERNEL_2);
 8002966:	2001      	movs	r0, #1
	_kernel.ready_q.cache = &z_main_thread;
 8002968:	4d18      	ldr	r5, [pc, #96]	; (80029cc <z_cstart+0xd4>)
	z_sys_init_run_level(_SYS_INIT_LEVEL_PRE_KERNEL_2);
 800296a:	f7ff fed3 	bl	8002714 <z_sys_init_run_level>
	z_sched_init();
 800296e:	f000 fa8d 	bl	8002e8c <z_sched_init>
	stack_ptr = z_setup_new_thread(&z_main_thread, z_main_stack,
 8002972:	4b17      	ldr	r3, [pc, #92]	; (80029d0 <z_cstart+0xd8>)
 8002974:	9305      	str	r3, [sp, #20]
 8002976:	2301      	movs	r3, #1
 8002978:	4916      	ldr	r1, [pc, #88]	; (80029d4 <z_cstart+0xdc>)
 800297a:	9400      	str	r4, [sp, #0]
 800297c:	e9cd 4303 	strd	r4, r3, [sp, #12]
 8002980:	f44f 6200 	mov.w	r2, #2048	; 0x800
 8002984:	464b      	mov	r3, r9
 8002986:	e9cd 4401 	strd	r4, r4, [sp, #4]
 800298a:	4628      	mov	r0, r5
	_kernel.ready_q.cache = &z_main_thread;
 800298c:	61b5      	str	r5, [r6, #24]
	stack_ptr = z_setup_new_thread(&z_main_thread, z_main_stack,
 800298e:	f000 f847 	bl	8002a20 <z_setup_new_thread>
 8002992:	7b6a      	ldrb	r2, [r5, #13]
 8002994:	4607      	mov	r7, r0
 8002996:	f022 0204 	bic.w	r2, r2, #4
	z_ready_thread(&z_main_thread);
 800299a:	4628      	mov	r0, r5
 800299c:	736a      	strb	r2, [r5, #13]
 800299e:	f001 f866 	bl	8003a6e <z_ready_thread>
		init_idle_thread(i);
 80029a2:	4620      	mov	r0, r4
 80029a4:	f7ff ff4a 	bl	800283c <init_idle_thread>
		_kernel.cpus[i].idle_thread = &z_idle_threads[i];
 80029a8:	4b0b      	ldr	r3, [pc, #44]	; (80029d8 <z_cstart+0xe0>)
 80029aa:	60f3      	str	r3, [r6, #12]
	arch_switch_to_main_thread(&z_main_thread, stack_ptr, bg_thread_main);
 80029ac:	464a      	mov	r2, r9
 80029ae:	4639      	mov	r1, r7
 80029b0:	4628      	mov	r0, r5
		_kernel.cpus[i].id = i;
 80029b2:	7534      	strb	r4, [r6, #20]
		_kernel.cpus[i].irq_stack =
 80029b4:	f8c6 8004 	str.w	r8, [r6, #4]
	arch_switch_to_main_thread(&z_main_thread, stack_ptr, bg_thread_main);
 80029b8:	f7fe fd5c 	bl	8001474 <arch_switch_to_main_thread>
	CODE_UNREACHABLE; /* LCOV_EXCL_LINE */
 80029bc:	20001520 	.word	0x20001520
 80029c0:	e000ed00 	.word	0xe000ed00
 80029c4:	20000338 	.word	0x20000338
 80029c8:	08002895 	.word	0x08002895
 80029cc:	20000100 	.word	0x20000100
 80029d0:	08004a05 	.word	0x08004a05
 80029d4:	20000380 	.word	0x20000380
 80029d8:	20000080 	.word	0x20000080

080029dc <init_mem_slab_module>:
 * Perform any initialization that wasn't done at build time.
 *
 * @return N/A
 */
static int init_mem_slab_module(const struct device *dev)
{
 80029dc:	b570      	push	{r4, r5, r6, lr}
	int rc = 0;
	ARG_UNUSED(dev);

	STRUCT_SECTION_FOREACH(k_mem_slab, slab) {
 80029de:	4b0e      	ldr	r3, [pc, #56]	; (8002a18 <init_mem_slab_module+0x3c>)
 80029e0:	4c0e      	ldr	r4, [pc, #56]	; (8002a1c <init_mem_slab_module+0x40>)
 80029e2:	42a3      	cmp	r3, r4
 80029e4:	d301      	bcc.n	80029ea <init_mem_slab_module+0xe>
			goto out;
		}
		z_object_init(slab);
	}

out:
 80029e6:	2000      	movs	r0, #0
	return rc;
}
 80029e8:	bd70      	pop	{r4, r5, r6, pc}
	CHECKIF(((slab->block_size | (uintptr_t)slab->buffer) &
 80029ea:	e9d3 0103 	ldrd	r0, r1, [r3, #12]
 80029ee:	ea41 0200 	orr.w	r2, r1, r0
 80029f2:	f012 0203 	ands.w	r2, r2, #3
 80029f6:	d10b      	bne.n	8002a10 <init_mem_slab_module+0x34>
	for (j = 0U; j < slab->num_blocks; j++) {
 80029f8:	689d      	ldr	r5, [r3, #8]
	slab->free_list = NULL;
 80029fa:	615a      	str	r2, [r3, #20]
	for (j = 0U; j < slab->num_blocks; j++) {
 80029fc:	42aa      	cmp	r2, r5
 80029fe:	d101      	bne.n	8002a04 <init_mem_slab_module+0x28>
	STRUCT_SECTION_FOREACH(k_mem_slab, slab) {
 8002a00:	331c      	adds	r3, #28
 8002a02:	e7ee      	b.n	80029e2 <init_mem_slab_module+0x6>
		*(char **)p = slab->free_list;
 8002a04:	695e      	ldr	r6, [r3, #20]
 8002a06:	600e      	str	r6, [r1, #0]
	for (j = 0U; j < slab->num_blocks; j++) {
 8002a08:	3201      	adds	r2, #1
		slab->free_list = p;
 8002a0a:	6159      	str	r1, [r3, #20]
		p += slab->block_size;
 8002a0c:	4401      	add	r1, r0
	for (j = 0U; j < slab->num_blocks; j++) {
 8002a0e:	e7f5      	b.n	80029fc <init_mem_slab_module+0x20>
	return rc;
 8002a10:	f06f 0015 	mvn.w	r0, #21
 8002a14:	e7e8      	b.n	80029e8 <init_mem_slab_module+0xc>
 8002a16:	bf00      	nop
 8002a18:	2000007c 	.word	0x2000007c
 8002a1c:	2000007c 	.word	0x2000007c

08002a20 <z_setup_new_thread>:
char *z_setup_new_thread(struct k_thread *new_thread,
			 k_thread_stack_t *stack, size_t stack_size,
			 k_thread_entry_t entry,
			 void *p1, void *p2, void *p3,
			 int prio, uint32_t options, const char *name)
{
 8002a20:	e92d 41ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
void z_init_thread_base(struct _thread_base *thread_base, int priority,
		       uint32_t initial_state, unsigned int options)
{
	/* k_q_node is initialized upon first insertion in a list */
	thread_base->pended_on = NULL;
	thread_base->user_options = (uint8_t)options;
 8002a24:	9e0e      	ldr	r6, [sp, #56]	; 0x38
 8002a26:	7306      	strb	r6, [r0, #12]
	thread_base->thread_state = (uint8_t)initial_state;
 8002a28:	2604      	movs	r6, #4
 8002a2a:	7346      	strb	r6, [r0, #13]

	thread_base->prio = priority;
 8002a2c:	9e0d      	ldr	r6, [sp, #52]	; 0x34
 8002a2e:	7386      	strb	r6, [r0, #14]
	SYS_DLIST_FOR_EACH_CONTAINER(&((wq)->waitq), thread_ptr, \
				     base.qnode_dlist)

static inline void z_waitq_init(_wait_q_t *w)
{
	sys_dlist_init(&w->waitq);
 8002a30:	f100 0558 	add.w	r5, r0, #88	; 0x58
{
 8002a34:	460f      	mov	r7, r1
		stack_obj_size = Z_KERNEL_STACK_SIZE_ADJUST(stack_size);
 8002a36:	1dd6      	adds	r6, r2, #7
 */

static inline void sys_dlist_init(sys_dlist_t *list)
{
	list->head = (sys_dnode_t *)list;
	list->tail = (sys_dnode_t *)list;
 8002a38:	e9c0 5516 	strd	r5, r5, [r0, #88]	; 0x58
	arch_new_thread(new_thread, stack, stack_ptr, entry, p1, p2, p3);
 8002a3c:	9a0c      	ldr	r2, [sp, #48]	; 0x30
	thread_base->pended_on = NULL;
 8002a3e:	2500      	movs	r5, #0
		stack_obj_size = Z_KERNEL_STACK_SIZE_ADJUST(stack_size);
 8002a40:	f026 0607 	bic.w	r6, r6, #7

/** @} */

static inline char *Z_KERNEL_STACK_BUFFER(k_thread_stack_t *sym)
{
	return (char *)sym + K_KERNEL_STACK_RESERVED;
 8002a44:	3720      	adds	r7, #32
 */

static inline void sys_dnode_init(sys_dnode_t *node)
{
	node->next = NULL;
	node->prev = NULL;
 8002a46:	e9c0 5506 	strd	r5, r5, [r0, #24]
	new_thread->stack_info.size = stack_buf_size;
 8002a4a:	e9c0 7619 	strd	r7, r6, [r0, #100]	; 0x64
	thread_base->pended_on = NULL;
 8002a4e:	6085      	str	r5, [r0, #8]

	thread_base->sched_locked = 0U;
 8002a50:	73c5      	strb	r5, [r0, #15]
	new_thread->stack_info.delta = delta;
 8002a52:	66c5      	str	r5, [r0, #108]	; 0x6c
		stack_obj_size = Z_KERNEL_STACK_SIZE_ADJUST(stack_size);
 8002a54:	f106 0820 	add.w	r8, r6, #32
	arch_new_thread(new_thread, stack, stack_ptr, entry, p1, p2, p3);
 8002a58:	9202      	str	r2, [sp, #8]
 8002a5a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002a5c:	9201      	str	r2, [sp, #4]
	stack_ptr = (char *)stack + stack_obj_size;
 8002a5e:	4488      	add	r8, r1
	arch_new_thread(new_thread, stack, stack_ptr, entry, p1, p2, p3);
 8002a60:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8002a62:	9200      	str	r2, [sp, #0]
 8002a64:	4642      	mov	r2, r8
{
 8002a66:	4604      	mov	r4, r0
	arch_new_thread(new_thread, stack, stack_ptr, entry, p1, p2, p3);
 8002a68:	f7fe fcd2 	bl	8001410 <arch_new_thread>
	if (!_current) {
 8002a6c:	4b04      	ldr	r3, [pc, #16]	; (8002a80 <z_setup_new_thread+0x60>)
	new_thread->init_data = NULL;
 8002a6e:	6565      	str	r5, [r4, #84]	; 0x54
	if (!_current) {
 8002a70:	689b      	ldr	r3, [r3, #8]
 8002a72:	b103      	cbz	r3, 8002a76 <z_setup_new_thread+0x56>
	new_thread->resource_pool = _current->resource_pool;
 8002a74:	6f1b      	ldr	r3, [r3, #112]	; 0x70
	return stack_ptr;
 8002a76:	6723      	str	r3, [r4, #112]	; 0x70
}
 8002a78:	4640      	mov	r0, r8
 8002a7a:	b004      	add	sp, #16
 8002a7c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002a80:	20000338 	.word	0x20000338

08002a84 <z_init_static_threads>:
{
 8002a84:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002a86:	4c22      	ldr	r4, [pc, #136]	; (8002b10 <z_init_static_threads+0x8c>)
	_FOREACH_STATIC_THREAD(thread_data) {
 8002a88:	4d22      	ldr	r5, [pc, #136]	; (8002b14 <z_init_static_threads+0x90>)
{
 8002a8a:	b087      	sub	sp, #28
 8002a8c:	4626      	mov	r6, r4
	_FOREACH_STATIC_THREAD(thread_data) {
 8002a8e:	42ae      	cmp	r6, r5
 8002a90:	f104 0430 	add.w	r4, r4, #48	; 0x30
 8002a94:	d30b      	bcc.n	8002aae <z_init_static_threads+0x2a>
	k_sched_lock();
 8002a96:	f000 f891 	bl	8002bbc <k_sched_lock>
	_FOREACH_STATIC_THREAD(thread_data) {
 8002a9a:	4c1d      	ldr	r4, [pc, #116]	; (8002b10 <z_init_static_threads+0x8c>)

extern void z_thread_timeout(struct _timeout *timeout);

static inline void z_add_thread_timeout(struct k_thread *thread, k_timeout_t ticks)
{
	z_add_timeout(&thread->base.timeout, z_thread_timeout, ticks);
 8002a9c:	4f1e      	ldr	r7, [pc, #120]	; (8002b18 <z_init_static_threads+0x94>)
		}
	} else if (mul_ratio) {
		if (result32) {
			return ((uint32_t)t) * (to_hz / from_hz);
		} else {
			return t * ((uint64_t)to_hz / from_hz);
 8002a9e:	260a      	movs	r6, #10
 8002aa0:	42ac      	cmp	r4, r5
 8002aa2:	d320      	bcc.n	8002ae6 <z_init_static_threads+0x62>
}
 8002aa4:	b007      	add	sp, #28
 8002aa6:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
	k_sched_unlock();
 8002aaa:	f000 b9d3 	b.w	8002e54 <k_sched_unlock>
		z_setup_new_thread(
 8002aae:	f854 3c04 	ldr.w	r3, [r4, #-4]
 8002ab2:	9305      	str	r3, [sp, #20]
 8002ab4:	f854 3c10 	ldr.w	r3, [r4, #-16]
 8002ab8:	9304      	str	r3, [sp, #16]
 8002aba:	f854 3c14 	ldr.w	r3, [r4, #-20]
 8002abe:	9303      	str	r3, [sp, #12]
 8002ac0:	f854 3c18 	ldr.w	r3, [r4, #-24]
 8002ac4:	9302      	str	r3, [sp, #8]
 8002ac6:	f854 3c1c 	ldr.w	r3, [r4, #-28]
 8002aca:	9301      	str	r3, [sp, #4]
 8002acc:	f854 3c20 	ldr.w	r3, [r4, #-32]
 8002ad0:	9300      	str	r3, [sp, #0]
 8002ad2:	e954 010c 	ldrd	r0, r1, [r4, #-48]	; 0x30
 8002ad6:	e954 230a 	ldrd	r2, r3, [r4, #-40]	; 0x28
 8002ada:	f7ff ffa1 	bl	8002a20 <z_setup_new_thread>
		thread_data->init_thread->init_data = thread_data;
 8002ade:	f854 3c30 	ldr.w	r3, [r4, #-48]
 8002ae2:	655e      	str	r6, [r3, #84]	; 0x54
	_FOREACH_STATIC_THREAD(thread_data) {
 8002ae4:	e7d2      	b.n	8002a8c <z_init_static_threads+0x8>
		if (thread_data->init_delay != K_TICKS_FOREVER) {
 8002ae6:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8002ae8:	1c53      	adds	r3, r2, #1
 8002aea:	d009      	beq.n	8002b00 <z_init_static_threads+0x7c>
					    K_MSEC(thread_data->init_delay));
 8002aec:	ea22 72e2 	bic.w	r2, r2, r2, asr #31
 8002af0:	fb82 2306 	smull	r2, r3, r2, r6
	if (K_TIMEOUT_EQ(delay, K_NO_WAIT)) {
 8002af4:	ea52 0103 	orrs.w	r1, r2, r3
			schedule_new_thread(thread_data->init_thread,
 8002af8:	6820      	ldr	r0, [r4, #0]
	if (K_TIMEOUT_EQ(delay, K_NO_WAIT)) {
 8002afa:	d103      	bne.n	8002b04 <z_init_static_threads+0x80>
	z_sched_start(thread);
 8002afc:	f000 f942 	bl	8002d84 <z_sched_start>
	_FOREACH_STATIC_THREAD(thread_data) {
 8002b00:	3430      	adds	r4, #48	; 0x30
 8002b02:	e7cd      	b.n	8002aa0 <z_init_static_threads+0x1c>
 8002b04:	4639      	mov	r1, r7
 8002b06:	3018      	adds	r0, #24
 8002b08:	f000 fb36 	bl	8003178 <z_add_timeout>
 8002b0c:	e7f8      	b.n	8002b00 <z_init_static_threads+0x7c>
 8002b0e:	bf00      	nop
 8002b10:	2000007c 	.word	0x2000007c
 8002b14:	2000007c 	.word	0x2000007c
 8002b18:	08003a8f 	.word	0x08003a8f

08002b1c <z_reset_time_slice>:
 */
static struct k_thread *pending_current;
#endif

void z_reset_time_slice(void)
{
 8002b1c:	b510      	push	{r4, lr}
	/* Add the elapsed time since the last announced tick to the
	 * slice count, as we'll see those "expired" ticks arrive in a
	 * FUTURE z_time_slice() call.
	 */
	if (slice_time != 0) {
 8002b1e:	4c08      	ldr	r4, [pc, #32]	; (8002b40 <z_reset_time_slice+0x24>)
 8002b20:	6823      	ldr	r3, [r4, #0]
 8002b22:	b15b      	cbz	r3, 8002b3c <z_reset_time_slice+0x20>
		_current_cpu->slice_ticks = slice_time + sys_clock_elapsed();
 8002b24:	f7ff fc9c 	bl	8002460 <sys_clock_elapsed>
 8002b28:	4603      	mov	r3, r0
 8002b2a:	6820      	ldr	r0, [r4, #0]
 8002b2c:	4a05      	ldr	r2, [pc, #20]	; (8002b44 <z_reset_time_slice+0x28>)
 8002b2e:	4403      	add	r3, r0
		z_set_timeout_expiry(slice_time, false);
	}
}
 8002b30:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
		_current_cpu->slice_ticks = slice_time + sys_clock_elapsed();
 8002b34:	6113      	str	r3, [r2, #16]
		z_set_timeout_expiry(slice_time, false);
 8002b36:	2100      	movs	r1, #0
 8002b38:	f000 bfe1 	b.w	8003afe <z_set_timeout_expiry>
}
 8002b3c:	bd10      	pop	{r4, pc}
 8002b3e:	bf00      	nop
 8002b40:	20000364 	.word	0x20000364
 8002b44:	20000338 	.word	0x20000338

08002b48 <k_sched_time_slice_set>:

void k_sched_time_slice_set(int32_t slice, int prio)
{
 8002b48:	b510      	push	{r4, lr}
	__asm__ volatile(
 8002b4a:	f04f 0310 	mov.w	r3, #16
 8002b4e:	f3ef 8411 	mrs	r4, BASEPRI
 8002b52:	f383 8812 	msr	BASEPRI_MAX, r3
 8002b56:	f3bf 8f6f 	isb	sy
	LOCKED(&sched_spinlock) {
		_current_cpu->slice_ticks = 0;
 8002b5a:	4b0c      	ldr	r3, [pc, #48]	; (8002b8c <k_sched_time_slice_set+0x44>)
 8002b5c:	2200      	movs	r2, #0
 8002b5e:	611a      	str	r2, [r3, #16]
		slice_time = k_ms_to_ticks_ceil32(slice);
		if (IS_ENABLED(CONFIG_TICKLESS_KERNEL) && slice > 0) {
 8002b60:	4290      	cmp	r0, r2
			return ((uint32_t)t) * (to_hz / from_hz);
 8002b62:	f04f 030a 	mov.w	r3, #10
 8002b66:	4a0a      	ldr	r2, [pc, #40]	; (8002b90 <k_sched_time_slice_set+0x48>)
 8002b68:	fb00 f303 	mul.w	r3, r0, r3
 8002b6c:	dc09      	bgt.n	8002b82 <k_sched_time_slice_set+0x3a>
			/* It's not possible to reliably set a 1-tick
			 * timeout if ticks aren't regular.
			 */
			slice_time = MAX(2, slice_time);
 8002b6e:	6013      	str	r3, [r2, #0]
		}
		slice_max_prio = prio;
 8002b70:	4b08      	ldr	r3, [pc, #32]	; (8002b94 <k_sched_time_slice_set+0x4c>)
 8002b72:	6019      	str	r1, [r3, #0]
		z_reset_time_slice();
 8002b74:	f7ff ffd2 	bl	8002b1c <z_reset_time_slice>
	__asm__ volatile(
 8002b78:	f384 8811 	msr	BASEPRI, r4
 8002b7c:	f3bf 8f6f 	isb	sy
	}
}
 8002b80:	bd10      	pop	{r4, pc}
			slice_time = MAX(2, slice_time);
 8002b82:	2b02      	cmp	r3, #2
 8002b84:	bfb8      	it	lt
 8002b86:	2302      	movlt	r3, #2
 8002b88:	e7f1      	b.n	8002b6e <k_sched_time_slice_set+0x26>
 8002b8a:	bf00      	nop
 8002b8c:	20000338 	.word	0x20000338
 8002b90:	20000364 	.word	0x20000364
 8002b94:	20000360 	.word	0x20000360

08002b98 <z_reschedule>:
{
#ifdef CONFIG_SMP
	_current_cpu->swap_ok = 0;
#endif

	return arch_irq_unlocked(key) && !arch_is_in_isr();
 8002b98:	b949      	cbnz	r1, 8002bae <z_reschedule+0x16>
  __ASM volatile ("MRS %0, ipsr" : "=r" (result) );
 8002b9a:	f3ef 8005 	mrs	r0, IPSR
#endif
}

void z_reschedule(struct k_spinlock *lock, k_spinlock_key_t key)
{
	if (resched(key.key) && need_swap()) {
 8002b9e:	b930      	cbnz	r0, 8002bae <z_reschedule+0x16>
	new_thread = _kernel.ready_q.cache;
 8002ba0:	4b05      	ldr	r3, [pc, #20]	; (8002bb8 <z_reschedule+0x20>)
	if (resched(key.key) && need_swap()) {
 8002ba2:	699a      	ldr	r2, [r3, #24]
 8002ba4:	689b      	ldr	r3, [r3, #8]
 8002ba6:	429a      	cmp	r2, r3
 8002ba8:	d001      	beq.n	8002bae <z_reschedule+0x16>
	ret = arch_swap(key);
 8002baa:	f7fe bbdd 	b.w	8001368 <arch_swap>
 8002bae:	f381 8811 	msr	BASEPRI, r1
 8002bb2:	f3bf 8f6f 	isb	sy
		z_swap(lock, key);
	} else {
		k_spin_unlock(lock, key);
	}
}
 8002bb6:	4770      	bx	lr
 8002bb8:	20000338 	.word	0x20000338

08002bbc <k_sched_lock>:
	__asm__ volatile(
 8002bbc:	f04f 0310 	mov.w	r3, #16
 8002bc0:	f3ef 8111 	mrs	r1, BASEPRI
 8002bc4:	f383 8812 	msr	BASEPRI_MAX, r3
 8002bc8:	f3bf 8f6f 	isb	sy
static inline void z_sched_lock(void)
{
	__ASSERT(!arch_is_in_isr(), "");
	__ASSERT(_current->base.sched_locked != 1U, "");

	--_current->base.sched_locked;
 8002bcc:	4b04      	ldr	r3, [pc, #16]	; (8002be0 <k_sched_lock+0x24>)
 8002bce:	689a      	ldr	r2, [r3, #8]
 8002bd0:	7bd3      	ldrb	r3, [r2, #15]
 8002bd2:	3b01      	subs	r3, #1
 8002bd4:	73d3      	strb	r3, [r2, #15]
	__asm__ volatile(
 8002bd6:	f381 8811 	msr	BASEPRI, r1
 8002bda:	f3bf 8f6f 	isb	sy
	LOCKED(&sched_spinlock) {
		SYS_PORT_TRACING_FUNC(k_thread, sched_lock);

		z_sched_lock();
	}
}
 8002bde:	4770      	bx	lr
 8002be0:	20000338 	.word	0x20000338

08002be4 <update_cache>:
{
 8002be4:	b538      	push	{r3, r4, r5, lr}
 8002be6:	4602      	mov	r2, r0
	thread = _priq_run_best(&_kernel.ready_q.runq);
 8002be8:	480c      	ldr	r0, [pc, #48]	; (8002c1c <update_cache+0x38>)
 8002bea:	4d0d      	ldr	r5, [pc, #52]	; (8002c20 <update_cache+0x3c>)
 8002bec:	f000 ff39 	bl	8003a62 <z_priq_dumb_best>
	return (thread != NULL) ? thread : _current_cpu->idle_thread;
 8002bf0:	4604      	mov	r4, r0
 8002bf2:	b900      	cbnz	r0, 8002bf6 <update_cache+0x12>
 8002bf4:	68ec      	ldr	r4, [r5, #12]
	if (z_is_thread_prevented_from_running(_current)) {
 8002bf6:	68ab      	ldr	r3, [r5, #8]
	if (preempt_ok != 0) {
 8002bf8:	b94a      	cbnz	r2, 8002c0e <update_cache+0x2a>
	if (z_is_thread_prevented_from_running(_current)) {
 8002bfa:	7b5a      	ldrb	r2, [r3, #13]
 8002bfc:	06d2      	lsls	r2, r2, #27
 8002bfe:	d106      	bne.n	8002c0e <update_cache+0x2a>
	if (IS_ENABLED(CONFIG_SWAP_NONATOMIC)
 8002c00:	69a2      	ldr	r2, [r4, #24]
 8002c02:	b922      	cbnz	r2, 8002c0e <update_cache+0x2a>
	if (is_preempt(_current) || is_metairq(thread)) {
 8002c04:	89da      	ldrh	r2, [r3, #14]
 8002c06:	2a7f      	cmp	r2, #127	; 0x7f
 8002c08:	d901      	bls.n	8002c0e <update_cache+0x2a>
		_kernel.ready_q.cache = _current;
 8002c0a:	61ab      	str	r3, [r5, #24]
}
 8002c0c:	bd38      	pop	{r3, r4, r5, pc}
		if (thread != _current) {
 8002c0e:	429c      	cmp	r4, r3
 8002c10:	d001      	beq.n	8002c16 <update_cache+0x32>
			z_reset_time_slice();
 8002c12:	f7ff ff83 	bl	8002b1c <z_reset_time_slice>
		_kernel.ready_q.cache = thread;
 8002c16:	61ac      	str	r4, [r5, #24]
}
 8002c18:	e7f8      	b.n	8002c0c <update_cache+0x28>
 8002c1a:	bf00      	nop
 8002c1c:	20000354 	.word	0x20000354
 8002c20:	20000338 	.word	0x20000338

08002c24 <move_thread_to_end_of_prio_q>:
{
 8002c24:	b570      	push	{r4, r5, r6, lr}
	if (z_is_thread_queued(thread)) {
 8002c26:	f990 200d 	ldrsb.w	r2, [r0, #13]
	return (thread->base.thread_state & state) != 0U;
 8002c2a:	7b43      	ldrb	r3, [r0, #13]
 8002c2c:	2a00      	cmp	r2, #0
{
 8002c2e:	4601      	mov	r1, r0
	if (z_is_thread_queued(thread)) {
 8002c30:	da04      	bge.n	8002c3c <move_thread_to_end_of_prio_q+0x18>
	thread->base.thread_state &= ~_THREAD_QUEUED;
 8002c32:	f003 037f 	and.w	r3, r3, #127	; 0x7f
 8002c36:	7343      	strb	r3, [r0, #13]

void z_priq_dumb_remove(sys_dlist_t *pq, struct k_thread *thread)
{
	__ASSERT_NO_MSG(!z_is_idle_thread_object(thread));

	sys_dlist_remove(&thread->base.qnode_dlist);
 8002c38:	f000 feeb 	bl	8003a12 <sys_dlist_remove>
	thread->base.thread_state |= _THREAD_QUEUED;
 8002c3c:	7b4b      	ldrb	r3, [r1, #13]
 * @return true if empty, false otherwise
 */

static inline bool sys_dlist_is_empty(sys_dlist_t *list)
{
	return list->head == list;
 8002c3e:	4a15      	ldr	r2, [pc, #84]	; (8002c94 <move_thread_to_end_of_prio_q+0x70>)
 8002c40:	f063 037f 	orn	r3, r3, #127	; 0x7f
 8002c44:	734b      	strb	r3, [r1, #13]
 */

static inline sys_dnode_t *sys_dlist_peek_next_no_check(sys_dlist_t *list,
							sys_dnode_t *node)
{
	return (node == list->tail) ? NULL : node->next;
 8002c46:	e9d2 3407 	ldrd	r3, r4, [r2, #28]
	return sys_dlist_is_empty(list) ? NULL : list->head;
 8002c4a:	f102 051c 	add.w	r5, r2, #28
 8002c4e:	42ab      	cmp	r3, r5
 8002c50:	d01b      	beq.n	8002c8a <move_thread_to_end_of_prio_q+0x66>
	SYS_DLIST_FOR_EACH_CONTAINER(pq, t, base.qnode_dlist) {
 8002c52:	b1d3      	cbz	r3, 8002c8a <move_thread_to_end_of_prio_q+0x66>
	int32_t b1 = thread_1->base.prio;
 8002c54:	f991 600e 	ldrsb.w	r6, [r1, #14]
	int32_t b2 = thread_2->base.prio;
 8002c58:	f993 000e 	ldrsb.w	r0, [r3, #14]
	if (b1 != b2) {
 8002c5c:	4286      	cmp	r6, r0
 8002c5e:	d00f      	beq.n	8002c80 <move_thread_to_end_of_prio_q+0x5c>
		return b2 - b1;
 8002c60:	1b80      	subs	r0, r0, r6
		if (z_sched_prio_cmp(thread, t) > 0) {
 8002c62:	2800      	cmp	r0, #0
 8002c64:	dd0c      	ble.n	8002c80 <move_thread_to_end_of_prio_q+0x5c>
 * @param successor the position before which "node" will be inserted
 * @param node the element to insert
 */
static inline void sys_dlist_insert(sys_dnode_t *successor, sys_dnode_t *node)
{
	sys_dnode_t *const prev = successor->prev;
 8002c66:	6858      	ldr	r0, [r3, #4]

	node->prev = prev;
	node->next = successor;
 8002c68:	e9c1 3000 	strd	r3, r0, [r1]
	prev->next = node;
 8002c6c:	6001      	str	r1, [r0, #0]
	successor->prev = node;
 8002c6e:	6059      	str	r1, [r3, #4]
	update_cache(thread == _current);
 8002c70:	6890      	ldr	r0, [r2, #8]
 8002c72:	1a43      	subs	r3, r0, r1
 8002c74:	4258      	negs	r0, r3
}
 8002c76:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
	update_cache(thread == _current);
 8002c7a:	4158      	adcs	r0, r3
 8002c7c:	f7ff bfb2 	b.w	8002be4 <update_cache>
	return (node == list->tail) ? NULL : node->next;
 8002c80:	42a3      	cmp	r3, r4
 8002c82:	d002      	beq.n	8002c8a <move_thread_to_end_of_prio_q+0x66>
 8002c84:	681b      	ldr	r3, [r3, #0]
	SYS_DLIST_FOR_EACH_CONTAINER(pq, t, base.qnode_dlist) {
 8002c86:	2b00      	cmp	r3, #0
 8002c88:	d1e6      	bne.n	8002c58 <move_thread_to_end_of_prio_q+0x34>
	node->prev = tail;
 8002c8a:	e9c1 5400 	strd	r5, r4, [r1]
	tail->next = node;
 8002c8e:	6021      	str	r1, [r4, #0]
	list->tail = node;
 8002c90:	6211      	str	r1, [r2, #32]
}
 8002c92:	e7ed      	b.n	8002c70 <move_thread_to_end_of_prio_q+0x4c>
 8002c94:	20000338 	.word	0x20000338

08002c98 <z_time_slice>:
{
 8002c98:	b538      	push	{r3, r4, r5, lr}
 8002c9a:	4601      	mov	r1, r0
	__asm__ volatile(
 8002c9c:	f04f 0310 	mov.w	r3, #16
 8002ca0:	f3ef 8411 	mrs	r4, BASEPRI
 8002ca4:	f383 8812 	msr	BASEPRI_MAX, r3
 8002ca8:	f3bf 8f6f 	isb	sy
	if (pending_current == _current) {
 8002cac:	4b15      	ldr	r3, [pc, #84]	; (8002d04 <z_time_slice+0x6c>)
 8002cae:	4a16      	ldr	r2, [pc, #88]	; (8002d08 <z_time_slice+0x70>)
 8002cb0:	6898      	ldr	r0, [r3, #8]
 8002cb2:	6815      	ldr	r5, [r2, #0]
 8002cb4:	42a8      	cmp	r0, r5
 8002cb6:	d106      	bne.n	8002cc6 <z_time_slice+0x2e>
			z_reset_time_slice();
 8002cb8:	f7ff ff30 	bl	8002b1c <z_reset_time_slice>
	__asm__ volatile(
 8002cbc:	f384 8811 	msr	BASEPRI, r4
 8002cc0:	f3bf 8f6f 	isb	sy
}
 8002cc4:	bd38      	pop	{r3, r4, r5, pc}
	pending_current = NULL;
 8002cc6:	2500      	movs	r5, #0
 8002cc8:	6015      	str	r5, [r2, #0]
	if (slice_time && sliceable(_current)) {
 8002cca:	4a10      	ldr	r2, [pc, #64]	; (8002d0c <z_time_slice+0x74>)
 8002ccc:	6812      	ldr	r2, [r2, #0]
 8002cce:	b1ba      	cbz	r2, 8002d00 <z_time_slice+0x68>
		&& !z_is_idle_thread_object(thread);
 8002cd0:	89c2      	ldrh	r2, [r0, #14]
 8002cd2:	2a7f      	cmp	r2, #127	; 0x7f
 8002cd4:	d814      	bhi.n	8002d00 <z_time_slice+0x68>
		&& !z_is_thread_prevented_from_running(thread)
 8002cd6:	7b42      	ldrb	r2, [r0, #13]
 8002cd8:	06d2      	lsls	r2, r2, #27
 8002cda:	d111      	bne.n	8002d00 <z_time_slice+0x68>
		&& !z_is_prio_higher(thread->base.prio, slice_max_prio)
 8002cdc:	4a0c      	ldr	r2, [pc, #48]	; (8002d10 <z_time_slice+0x78>)
 8002cde:	f990 500e 	ldrsb.w	r5, [r0, #14]
 8002ce2:	6812      	ldr	r2, [r2, #0]
 8002ce4:	4295      	cmp	r5, r2
 8002ce6:	db0b      	blt.n	8002d00 <z_time_slice+0x68>
		&& !z_is_idle_thread_object(thread);
 8002ce8:	4a0a      	ldr	r2, [pc, #40]	; (8002d14 <z_time_slice+0x7c>)
 8002cea:	4290      	cmp	r0, r2
 8002cec:	d008      	beq.n	8002d00 <z_time_slice+0x68>
		if (ticks >= _current_cpu->slice_ticks) {
 8002cee:	691a      	ldr	r2, [r3, #16]
 8002cf0:	428a      	cmp	r2, r1
 8002cf2:	dc02      	bgt.n	8002cfa <z_time_slice+0x62>
			move_thread_to_end_of_prio_q(_current);
 8002cf4:	f7ff ff96 	bl	8002c24 <move_thread_to_end_of_prio_q>
 8002cf8:	e7de      	b.n	8002cb8 <z_time_slice+0x20>
			_current_cpu->slice_ticks -= ticks;
 8002cfa:	1a52      	subs	r2, r2, r1
		_current_cpu->slice_ticks = 0;
 8002cfc:	611a      	str	r2, [r3, #16]
 8002cfe:	e7dd      	b.n	8002cbc <z_time_slice+0x24>
 8002d00:	2200      	movs	r2, #0
 8002d02:	e7fb      	b.n	8002cfc <z_time_slice+0x64>
 8002d04:	20000338 	.word	0x20000338
 8002d08:	2000035c 	.word	0x2000035c
 8002d0c:	20000364 	.word	0x20000364
 8002d10:	20000360 	.word	0x20000360
 8002d14:	20000080 	.word	0x20000080

08002d18 <ready_thread>:
{
 8002d18:	b470      	push	{r4, r5, r6}
	if (!z_is_thread_queued(thread) && z_is_thread_ready(thread)) {
 8002d1a:	f990 200d 	ldrsb.w	r2, [r0, #13]
 8002d1e:	7b43      	ldrb	r3, [r0, #13]
 8002d20:	2a00      	cmp	r2, #0
 8002d22:	db2a      	blt.n	8002d7a <ready_thread+0x62>
	return !((z_is_thread_prevented_from_running(thread)) != 0U ||
 8002d24:	06da      	lsls	r2, r3, #27
 8002d26:	d128      	bne.n	8002d7a <ready_thread+0x62>
 8002d28:	6982      	ldr	r2, [r0, #24]
 8002d2a:	bb32      	cbnz	r2, 8002d7a <ready_thread+0x62>
	return list->head == list;
 8002d2c:	4a14      	ldr	r2, [pc, #80]	; (8002d80 <ready_thread+0x68>)
	thread->base.thread_state |= _THREAD_QUEUED;
 8002d2e:	f063 037f 	orn	r3, r3, #127	; 0x7f
 8002d32:	7343      	strb	r3, [r0, #13]
	return (node == list->tail) ? NULL : node->next;
 8002d34:	e9d2 3407 	ldrd	r3, r4, [r2, #28]
	return sys_dlist_is_empty(list) ? NULL : list->head;
 8002d38:	f102 051c 	add.w	r5, r2, #28
 8002d3c:	42ab      	cmp	r3, r5
 8002d3e:	d017      	beq.n	8002d70 <ready_thread+0x58>
	SYS_DLIST_FOR_EACH_CONTAINER(pq, t, base.qnode_dlist) {
 8002d40:	b1b3      	cbz	r3, 8002d70 <ready_thread+0x58>
	int32_t b1 = thread_1->base.prio;
 8002d42:	f990 600e 	ldrsb.w	r6, [r0, #14]
	int32_t b2 = thread_2->base.prio;
 8002d46:	f993 100e 	ldrsb.w	r1, [r3, #14]
	if (b1 != b2) {
 8002d4a:	428e      	cmp	r6, r1
 8002d4c:	d00b      	beq.n	8002d66 <ready_thread+0x4e>
		return b2 - b1;
 8002d4e:	1b89      	subs	r1, r1, r6
		if (z_sched_prio_cmp(thread, t) > 0) {
 8002d50:	2900      	cmp	r1, #0
 8002d52:	dd08      	ble.n	8002d66 <ready_thread+0x4e>
	sys_dnode_t *const prev = successor->prev;
 8002d54:	685a      	ldr	r2, [r3, #4]
	node->next = successor;
 8002d56:	e9c0 3200 	strd	r3, r2, [r0]
	prev->next = node;
 8002d5a:	6010      	str	r0, [r2, #0]
	successor->prev = node;
 8002d5c:	6058      	str	r0, [r3, #4]
}
 8002d5e:	bc70      	pop	{r4, r5, r6}
		update_cache(0);
 8002d60:	2000      	movs	r0, #0
 8002d62:	f7ff bf3f 	b.w	8002be4 <update_cache>
	return (node == list->tail) ? NULL : node->next;
 8002d66:	42a3      	cmp	r3, r4
 8002d68:	d002      	beq.n	8002d70 <ready_thread+0x58>
 8002d6a:	681b      	ldr	r3, [r3, #0]
	SYS_DLIST_FOR_EACH_CONTAINER(pq, t, base.qnode_dlist) {
 8002d6c:	2b00      	cmp	r3, #0
 8002d6e:	d1ea      	bne.n	8002d46 <ready_thread+0x2e>
	node->prev = tail;
 8002d70:	e9c0 5400 	strd	r5, r4, [r0]
	tail->next = node;
 8002d74:	6020      	str	r0, [r4, #0]
	list->tail = node;
 8002d76:	6210      	str	r0, [r2, #32]
}
 8002d78:	e7f1      	b.n	8002d5e <ready_thread+0x46>
}
 8002d7a:	bc70      	pop	{r4, r5, r6}
 8002d7c:	4770      	bx	lr
 8002d7e:	bf00      	nop
 8002d80:	20000338 	.word	0x20000338

08002d84 <z_sched_start>:
{
 8002d84:	b510      	push	{r4, lr}
	__asm__ volatile(
 8002d86:	f04f 0210 	mov.w	r2, #16
 8002d8a:	f3ef 8411 	mrs	r4, BASEPRI
 8002d8e:	f382 8812 	msr	BASEPRI_MAX, r2
 8002d92:	f3bf 8f6f 	isb	sy
	return (thread->base.thread_state & _THREAD_PRESTART) == 0U;
 8002d96:	7b42      	ldrb	r2, [r0, #13]
	if (z_has_thread_started(thread)) {
 8002d98:	0751      	lsls	r1, r2, #29
 8002d9a:	d404      	bmi.n	8002da6 <z_sched_start+0x22>
	__asm__ volatile(
 8002d9c:	f384 8811 	msr	BASEPRI, r4
 8002da0:	f3bf 8f6f 	isb	sy
}
 8002da4:	bd10      	pop	{r4, pc}
	thread->base.thread_state &= ~_THREAD_PRESTART;
 8002da6:	f022 0204 	bic.w	r2, r2, #4
 8002daa:	7342      	strb	r2, [r0, #13]
	ready_thread(thread);
 8002dac:	f7ff ffb4 	bl	8002d18 <ready_thread>
	z_reschedule(&sched_spinlock, key);
 8002db0:	4621      	mov	r1, r4
 8002db2:	4802      	ldr	r0, [pc, #8]	; (8002dbc <z_sched_start+0x38>)
}
 8002db4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
	z_reschedule(&sched_spinlock, key);
 8002db8:	f7ff beee 	b.w	8002b98 <z_reschedule>
 8002dbc:	20000371 	.word	0x20000371

08002dc0 <unready_thread>:
{
 8002dc0:	b508      	push	{r3, lr}
	if (z_is_thread_queued(thread)) {
 8002dc2:	f990 200d 	ldrsb.w	r2, [r0, #13]
	return (thread->base.thread_state & state) != 0U;
 8002dc6:	7b43      	ldrb	r3, [r0, #13]
 8002dc8:	2a00      	cmp	r2, #0
{
 8002dca:	4601      	mov	r1, r0
	if (z_is_thread_queued(thread)) {
 8002dcc:	da04      	bge.n	8002dd8 <unready_thread+0x18>
	thread->base.thread_state &= ~_THREAD_QUEUED;
 8002dce:	f003 037f 	and.w	r3, r3, #127	; 0x7f
 8002dd2:	7343      	strb	r3, [r0, #13]
	sys_dlist_remove(&thread->base.qnode_dlist);
 8002dd4:	f000 fe1d 	bl	8003a12 <sys_dlist_remove>
	update_cache(thread == _current);
 8002dd8:	4b04      	ldr	r3, [pc, #16]	; (8002dec <unready_thread+0x2c>)
 8002dda:	6898      	ldr	r0, [r3, #8]
 8002ddc:	1a43      	subs	r3, r0, r1
 8002dde:	4258      	negs	r0, r3
 8002de0:	4158      	adcs	r0, r3
}
 8002de2:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
	update_cache(thread == _current);
 8002de6:	f7ff befd 	b.w	8002be4 <update_cache>
 8002dea:	bf00      	nop
 8002dec:	20000338 	.word	0x20000338

08002df0 <z_impl_k_thread_suspend>:
{
 8002df0:	b570      	push	{r4, r5, r6, lr}
 8002df2:	4604      	mov	r4, r0
}

static inline int z_abort_thread_timeout(struct k_thread *thread)
{
	return z_abort_timeout(&thread->base.timeout);
 8002df4:	3018      	adds	r0, #24
 8002df6:	f000 fe6c 	bl	8003ad2 <z_abort_timeout>
	__asm__ volatile(
 8002dfa:	f04f 0310 	mov.w	r3, #16
 8002dfe:	f3ef 8611 	mrs	r6, BASEPRI
 8002e02:	f383 8812 	msr	BASEPRI_MAX, r3
 8002e06:	f3bf 8f6f 	isb	sy
		if (z_is_thread_queued(thread)) {
 8002e0a:	f994 200d 	ldrsb.w	r2, [r4, #13]
 8002e0e:	7b63      	ldrb	r3, [r4, #13]
 8002e10:	2a00      	cmp	r2, #0
 8002e12:	da05      	bge.n	8002e20 <z_impl_k_thread_suspend+0x30>
	thread->base.thread_state &= ~_THREAD_QUEUED;
 8002e14:	f003 037f 	and.w	r3, r3, #127	; 0x7f
 8002e18:	7363      	strb	r3, [r4, #13]
	sys_dlist_remove(&thread->base.qnode_dlist);
 8002e1a:	4620      	mov	r0, r4
 8002e1c:	f000 fdf9 	bl	8003a12 <sys_dlist_remove>
		update_cache(thread == _current);
 8002e20:	4d0b      	ldr	r5, [pc, #44]	; (8002e50 <z_impl_k_thread_suspend+0x60>)
	thread->base.thread_state |= _THREAD_SUSPENDED;
 8002e22:	7b63      	ldrb	r3, [r4, #13]
 8002e24:	68a8      	ldr	r0, [r5, #8]
 8002e26:	f043 0310 	orr.w	r3, r3, #16
 8002e2a:	7363      	strb	r3, [r4, #13]
 8002e2c:	1b03      	subs	r3, r0, r4
 8002e2e:	4258      	negs	r0, r3
 8002e30:	4158      	adcs	r0, r3
 8002e32:	f7ff fed7 	bl	8002be4 <update_cache>
	__asm__ volatile(
 8002e36:	f386 8811 	msr	BASEPRI, r6
 8002e3a:	f3bf 8f6f 	isb	sy
	if (thread == _current) {
 8002e3e:	68ab      	ldr	r3, [r5, #8]
 8002e40:	42a3      	cmp	r3, r4
 8002e42:	d103      	bne.n	8002e4c <z_impl_k_thread_suspend+0x5c>
}
 8002e44:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
		z_reschedule_unlocked();
 8002e48:	f000 be01 	b.w	8003a4e <z_reschedule_unlocked>
}
 8002e4c:	bd70      	pop	{r4, r5, r6, pc}
 8002e4e:	bf00      	nop
 8002e50:	20000338 	.word	0x20000338

08002e54 <k_sched_unlock>:
{
 8002e54:	b510      	push	{r4, lr}
	__asm__ volatile(
 8002e56:	f04f 0310 	mov.w	r3, #16
 8002e5a:	f3ef 8411 	mrs	r4, BASEPRI
 8002e5e:	f383 8812 	msr	BASEPRI_MAX, r3
 8002e62:	f3bf 8f6f 	isb	sy
		++_current->base.sched_locked;
 8002e66:	4b08      	ldr	r3, [pc, #32]	; (8002e88 <k_sched_unlock+0x34>)
 8002e68:	689a      	ldr	r2, [r3, #8]
 8002e6a:	7bd3      	ldrb	r3, [r2, #15]
 8002e6c:	3301      	adds	r3, #1
 8002e6e:	73d3      	strb	r3, [r2, #15]
		update_cache(0);
 8002e70:	2000      	movs	r0, #0
 8002e72:	f7ff feb7 	bl	8002be4 <update_cache>
	__asm__ volatile(
 8002e76:	f384 8811 	msr	BASEPRI, r4
 8002e7a:	f3bf 8f6f 	isb	sy
}
 8002e7e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
	z_reschedule_unlocked();
 8002e82:	f000 bde4 	b.w	8003a4e <z_reschedule_unlocked>
 8002e86:	bf00      	nop
 8002e88:	20000338 	.word	0x20000338

08002e8c <z_sched_init>:
	list->head = (sys_dnode_t *)list;
 8002e8c:	4b04      	ldr	r3, [pc, #16]	; (8002ea0 <z_sched_init+0x14>)
		sys_dlist_init(&_kernel.ready_q.runq.queues[i]);
	}
#endif

#ifdef CONFIG_TIMESLICING
	k_sched_time_slice_set(CONFIG_TIMESLICE_SIZE,
 8002e8e:	2100      	movs	r1, #0
 8002e90:	f103 021c 	add.w	r2, r3, #28
	list->tail = (sys_dnode_t *)list;
 8002e94:	e9c3 2207 	strd	r2, r2, [r3, #28]
 8002e98:	4608      	mov	r0, r1
 8002e9a:	f7ff be55 	b.w	8002b48 <k_sched_time_slice_set>
 8002e9e:	bf00      	nop
 8002ea0:	20000338 	.word	0x20000338

08002ea4 <z_impl_k_yield>:
#include <syscalls/k_thread_deadline_set_mrsh.c>
#endif
#endif

void z_impl_k_yield(void)
{
 8002ea4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	__asm__ volatile(
 8002ea6:	f04f 0310 	mov.w	r3, #16
 8002eaa:	f3ef 8511 	mrs	r5, BASEPRI
 8002eae:	f383 8812 	msr	BASEPRI_MAX, r3
 8002eb2:	f3bf 8f6f 	isb	sy

	k_spinlock_key_t key = k_spin_lock(&sched_spinlock);

	if (!IS_ENABLED(CONFIG_SMP) ||
	    z_is_thread_queued(_current)) {
		dequeue_thread(&_kernel.ready_q.runq,
 8002eb6:	491a      	ldr	r1, [pc, #104]	; (8002f20 <z_impl_k_yield+0x7c>)
 8002eb8:	6888      	ldr	r0, [r1, #8]
	thread->base.thread_state &= ~_THREAD_QUEUED;
 8002eba:	7b43      	ldrb	r3, [r0, #13]
 8002ebc:	f003 037f 	and.w	r3, r3, #127	; 0x7f
 8002ec0:	7343      	strb	r3, [r0, #13]
	sys_dlist_remove(&thread->base.qnode_dlist);
 8002ec2:	f000 fda6 	bl	8003a12 <sys_dlist_remove>
			       _current);
	}
	queue_thread(&_kernel.ready_q.runq, _current);
 8002ec6:	688b      	ldr	r3, [r1, #8]
	thread->base.thread_state |= _THREAD_QUEUED;
 8002ec8:	7b5a      	ldrb	r2, [r3, #13]
	return list->head == list;
 8002eca:	4608      	mov	r0, r1
 8002ecc:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8002ed0:	735a      	strb	r2, [r3, #13]
 8002ed2:	f850 2f1c 	ldr.w	r2, [r0, #28]!
	return sys_dlist_is_empty(list) ? NULL : list->head;
 8002ed6:	4282      	cmp	r2, r0
 8002ed8:	d01c      	beq.n	8002f14 <z_impl_k_yield+0x70>
	SYS_DLIST_FOR_EACH_CONTAINER(pq, t, base.qnode_dlist) {
 8002eda:	b1da      	cbz	r2, 8002f14 <z_impl_k_yield+0x70>
	return (node == list->tail) ? NULL : node->next;
 8002edc:	6a0f      	ldr	r7, [r1, #32]
	int32_t b1 = thread_1->base.prio;
 8002ede:	f993 600e 	ldrsb.w	r6, [r3, #14]
	int32_t b2 = thread_2->base.prio;
 8002ee2:	f992 400e 	ldrsb.w	r4, [r2, #14]
	if (b1 != b2) {
 8002ee6:	42a6      	cmp	r6, r4
 8002ee8:	d00f      	beq.n	8002f0a <z_impl_k_yield+0x66>
		return b2 - b1;
 8002eea:	1ba4      	subs	r4, r4, r6
		if (z_sched_prio_cmp(thread, t) > 0) {
 8002eec:	2c00      	cmp	r4, #0
 8002eee:	dd0c      	ble.n	8002f0a <z_impl_k_yield+0x66>
	sys_dnode_t *const prev = successor->prev;
 8002ef0:	6851      	ldr	r1, [r2, #4]
	node->next = successor;
 8002ef2:	e9c3 2100 	strd	r2, r1, [r3]
	prev->next = node;
 8002ef6:	600b      	str	r3, [r1, #0]
	successor->prev = node;
 8002ef8:	6053      	str	r3, [r2, #4]
	update_cache(1);
 8002efa:	2001      	movs	r0, #1
 8002efc:	f7ff fe72 	bl	8002be4 <update_cache>
 8002f00:	4628      	mov	r0, r5
	z_swap(&sched_spinlock, key);
}
 8002f02:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8002f06:	f7fe ba2f 	b.w	8001368 <arch_swap>
	return (node == list->tail) ? NULL : node->next;
 8002f0a:	42ba      	cmp	r2, r7
 8002f0c:	d002      	beq.n	8002f14 <z_impl_k_yield+0x70>
 8002f0e:	6812      	ldr	r2, [r2, #0]
	SYS_DLIST_FOR_EACH_CONTAINER(pq, t, base.qnode_dlist) {
 8002f10:	2a00      	cmp	r2, #0
 8002f12:	d1e6      	bne.n	8002ee2 <z_impl_k_yield+0x3e>
	sys_dnode_t *const tail = list->tail;
 8002f14:	6a0a      	ldr	r2, [r1, #32]
	node->prev = tail;
 8002f16:	e9c3 0200 	strd	r0, r2, [r3]
	tail->next = node;
 8002f1a:	6013      	str	r3, [r2, #0]
	list->tail = node;
 8002f1c:	620b      	str	r3, [r1, #32]
}
 8002f1e:	e7ec      	b.n	8002efa <z_impl_k_yield+0x56>
 8002f20:	20000338 	.word	0x20000338

08002f24 <z_tick_sleep>:
	 */
	LOG_DBG("thread %p for %u ticks", _current, ticks);
#endif

	/* wait of 0 ms is treated as a 'yield' */
	if (ticks == 0) {
 8002f24:	ea50 0301 	orrs.w	r3, r0, r1
{
 8002f28:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8002f2c:	4605      	mov	r5, r0
 8002f2e:	460e      	mov	r6, r1
	if (ticks == 0) {
 8002f30:	d103      	bne.n	8002f3a <z_tick_sleep+0x16>
	z_impl_k_yield();
 8002f32:	f7ff ffb7 	bl	8002ea4 <z_impl_k_yield>
	if (ticks > 0) {
		return ticks;
	}
#endif

	return 0;
 8002f36:	2000      	movs	r0, #0
 8002f38:	e033      	b.n	8002fa2 <z_tick_sleep+0x7e>
	if (Z_TICK_ABS(ticks) <= 0) {
 8002f3a:	f06f 0401 	mvn.w	r4, #1
 8002f3e:	1a24      	subs	r4, r4, r0
 8002f40:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002f44:	eb63 0301 	sbc.w	r3, r3, r1
 8002f48:	2c01      	cmp	r4, #1
 8002f4a:	f173 0300 	sbcs.w	r3, r3, #0
 8002f4e:	da02      	bge.n	8002f56 <z_tick_sleep+0x32>
		expected_wakeup_ticks = ticks + sys_clock_tick_get_32();
 8002f50:	f000 fdef 	bl	8003b32 <sys_clock_tick_get_32>
 8002f54:	1944      	adds	r4, r0, r5
 8002f56:	f04f 0310 	mov.w	r3, #16
 8002f5a:	f3ef 8811 	mrs	r8, BASEPRI
 8002f5e:	f383 8812 	msr	BASEPRI_MAX, r3
 8002f62:	f3bf 8f6f 	isb	sy
	pending_current = _current;
 8002f66:	4f10      	ldr	r7, [pc, #64]	; (8002fa8 <z_tick_sleep+0x84>)
 8002f68:	4b10      	ldr	r3, [pc, #64]	; (8002fac <z_tick_sleep+0x88>)
 8002f6a:	68b8      	ldr	r0, [r7, #8]
 8002f6c:	6018      	str	r0, [r3, #0]
	unready_thread(_current);
 8002f6e:	f7ff ff27 	bl	8002dc0 <unready_thread>
	z_add_thread_timeout(_current, timeout);
 8002f72:	68b8      	ldr	r0, [r7, #8]
	z_add_timeout(&thread->base.timeout, z_thread_timeout, ticks);
 8002f74:	490e      	ldr	r1, [pc, #56]	; (8002fb0 <z_tick_sleep+0x8c>)
 8002f76:	462a      	mov	r2, r5
 8002f78:	4633      	mov	r3, r6
 8002f7a:	3018      	adds	r0, #24
 8002f7c:	f000 f8fc 	bl	8003178 <z_add_timeout>
	z_mark_thread_as_suspended(_current);
 8002f80:	68ba      	ldr	r2, [r7, #8]
 8002f82:	7b53      	ldrb	r3, [r2, #13]
 8002f84:	f043 0310 	orr.w	r3, r3, #16
 8002f88:	7353      	strb	r3, [r2, #13]
 8002f8a:	4640      	mov	r0, r8
 8002f8c:	f7fe f9ec 	bl	8001368 <arch_swap>
	ticks = (k_ticks_t)expected_wakeup_ticks - sys_clock_tick_get_32();
 8002f90:	f000 fdcf 	bl	8003b32 <sys_clock_tick_get_32>
 8002f94:	1a20      	subs	r0, r4, r0
 8002f96:	eb63 0303 	sbc.w	r3, r3, r3
	if (ticks > 0) {
 8002f9a:	2801      	cmp	r0, #1
 8002f9c:	f173 0300 	sbcs.w	r3, r3, #0
 8002fa0:	dbc9      	blt.n	8002f36 <z_tick_sleep+0x12>
}
 8002fa2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002fa6:	bf00      	nop
 8002fa8:	20000338 	.word	0x20000338
 8002fac:	2000035c 	.word	0x2000035c
 8002fb0:	08003a8f 	.word	0x08003a8f

08002fb4 <z_impl_k_sleep>:
	__ASSERT(!arch_is_in_isr(), "");

	SYS_PORT_TRACING_FUNC_ENTER(k_thread, sleep, timeout);

	/* in case of K_FOREVER, we suspend */
	if (K_TIMEOUT_EQ(timeout, K_FOREVER)) {
 8002fb4:	f1b1 3fff 	cmp.w	r1, #4294967295	; 0xffffffff
 8002fb8:	bf08      	it	eq
 8002fba:	f1b0 3fff 	cmpeq.w	r0, #4294967295	; 0xffffffff
{
 8002fbe:	b508      	push	{r3, lr}
	if (K_TIMEOUT_EQ(timeout, K_FOREVER)) {
 8002fc0:	d106      	bne.n	8002fd0 <z_impl_k_sleep+0x1c>
		k_thread_suspend(_current);
 8002fc2:	4b07      	ldr	r3, [pc, #28]	; (8002fe0 <z_impl_k_sleep+0x2c>)
 8002fc4:	6898      	ldr	r0, [r3, #8]
		arch_syscall_invoke1(*(uintptr_t *)&thread, K_SYSCALL_K_THREAD_SUSPEND);
		return;
	}
#endif
	compiler_barrier();
	z_impl_k_thread_suspend(thread);
 8002fc6:	f7ff ff13 	bl	8002df0 <z_impl_k_thread_suspend>

		SYS_PORT_TRACING_FUNC_EXIT(k_thread, sleep, timeout, (int32_t) K_TICKS_FOREVER);

		return (int32_t) K_TICKS_FOREVER;
 8002fca:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
	int32_t ret = k_ticks_to_ms_floor64(ticks);

	SYS_PORT_TRACING_FUNC_EXIT(k_thread, sleep, timeout, ret);

	return ret;
}
 8002fce:	bd08      	pop	{r3, pc}
	ticks = z_tick_sleep(ticks);
 8002fd0:	f7ff ffa8 	bl	8002f24 <z_tick_sleep>
			return t / ((uint64_t)from_hz / to_hz);
 8002fd4:	220a      	movs	r2, #10
 8002fd6:	2300      	movs	r3, #0
 8002fd8:	17c1      	asrs	r1, r0, #31
 8002fda:	f7fd f8e7 	bl	80001ac <__aeabi_uldivmod>
	return ret;
 8002fde:	e7f6      	b.n	8002fce <z_impl_k_sleep+0x1a>
 8002fe0:	20000338 	.word	0x20000338

08002fe4 <z_impl_z_current_get>:

#ifdef CONFIG_SMP
	arch_irq_unlock(k);
#endif
	return ret;
}
 8002fe4:	4b01      	ldr	r3, [pc, #4]	; (8002fec <z_impl_z_current_get+0x8>)
 8002fe6:	6898      	ldr	r0, [r3, #8]
 8002fe8:	4770      	bx	lr
 8002fea:	bf00      	nop
 8002fec:	20000338 	.word	0x20000338

08002ff0 <z_thread_abort>:
#endif
	}
}

void z_thread_abort(struct k_thread *thread)
{
 8002ff0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8002ff4:	4604      	mov	r4, r0
 8002ff6:	f04f 0310 	mov.w	r3, #16
 8002ffa:	f3ef 8611 	mrs	r6, BASEPRI
 8002ffe:	f383 8812 	msr	BASEPRI_MAX, r3
 8003002:	f3bf 8f6f 	isb	sy
	k_spinlock_key_t key = k_spin_lock(&sched_spinlock);

	if ((thread->base.thread_state & _THREAD_DEAD) != 0U) {
 8003006:	7b43      	ldrb	r3, [r0, #13]
 8003008:	071a      	lsls	r2, r3, #28
 800300a:	d505      	bpl.n	8003018 <z_thread_abort+0x28>
	__asm__ volatile(
 800300c:	f386 8811 	msr	BASEPRI, r6
 8003010:	f3bf 8f6f 	isb	sy
	if (thread == _current && !arch_is_in_isr()) {
		z_swap(&sched_spinlock, key);
		__ASSERT(false, "aborted _current back from dead");
	}
	k_spin_unlock(&sched_spinlock, key);
}
 8003014:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
		thread->base.thread_state &= ~_THREAD_ABORTING;
 8003018:	f023 0220 	bic.w	r2, r3, #32
 800301c:	f042 0108 	orr.w	r1, r2, #8
		if (z_is_thread_queued(thread)) {
 8003020:	09d2      	lsrs	r2, r2, #7
 8003022:	d120      	bne.n	8003066 <z_thread_abort+0x76>
		thread->base.thread_state &= ~_THREAD_ABORTING;
 8003024:	7341      	strb	r1, [r0, #13]
		if (thread->base.pended_on != NULL) {
 8003026:	68a3      	ldr	r3, [r4, #8]
 8003028:	b113      	cbz	r3, 8003030 <z_thread_abort+0x40>
			unpend_thread_no_timeout(thread);
 800302a:	4620      	mov	r0, r4
 800302c:	f000 fcf9 	bl	8003a22 <unpend_thread_no_timeout>
	return z_abort_timeout(&thread->base.timeout);
 8003030:	f104 0018 	add.w	r0, r4, #24
 8003034:	f000 fd4d 	bl	8003ad2 <z_abort_timeout>
}

static inline struct k_thread *z_waitq_head(_wait_q_t *w)
{
	return (struct k_thread *)sys_dlist_peek_head(&w->waitq);
 8003038:	f104 0758 	add.w	r7, r4, #88	; 0x58
}

static ALWAYS_INLINE void
arch_thread_return_value_set(struct k_thread *thread, unsigned int value)
{
	thread->arch.swap_return_value = value;
 800303c:	f04f 0800 	mov.w	r8, #0
	return list->head == list;
 8003040:	6da5      	ldr	r5, [r4, #88]	; 0x58
	return sys_dlist_is_empty(list) ? NULL : list->head;
 8003042:	42bd      	cmp	r5, r7
 8003044:	d000      	beq.n	8003048 <z_thread_abort+0x58>
	while ((thread = z_waitq_head(wait_q)) != NULL) {
 8003046:	b9b5      	cbnz	r5, 8003076 <z_thread_abort+0x86>
		update_cache(1);
 8003048:	2001      	movs	r0, #1
 800304a:	f7ff fdcb 	bl	8002be4 <update_cache>
	if (thread == _current && !arch_is_in_isr()) {
 800304e:	4b10      	ldr	r3, [pc, #64]	; (8003090 <z_thread_abort+0xa0>)
 8003050:	689b      	ldr	r3, [r3, #8]
 8003052:	42a3      	cmp	r3, r4
 8003054:	d1da      	bne.n	800300c <z_thread_abort+0x1c>
 8003056:	f3ef 8305 	mrs	r3, IPSR
 800305a:	2b00      	cmp	r3, #0
 800305c:	d1d6      	bne.n	800300c <z_thread_abort+0x1c>
 800305e:	4630      	mov	r0, r6
 8003060:	f7fe f982 	bl	8001368 <arch_swap>
	return ret;
 8003064:	e7d2      	b.n	800300c <z_thread_abort+0x1c>
	thread->base.thread_state &= ~_THREAD_QUEUED;
 8003066:	f003 035f 	and.w	r3, r3, #95	; 0x5f
 800306a:	f043 0308 	orr.w	r3, r3, #8
 800306e:	7343      	strb	r3, [r0, #13]
	sys_dlist_remove(&thread->base.qnode_dlist);
 8003070:	f000 fccf 	bl	8003a12 <sys_dlist_remove>
}
 8003074:	e7d7      	b.n	8003026 <z_thread_abort+0x36>
		unpend_thread_no_timeout(thread);
 8003076:	4628      	mov	r0, r5
 8003078:	f000 fcd3 	bl	8003a22 <unpend_thread_no_timeout>
 800307c:	f105 0018 	add.w	r0, r5, #24
 8003080:	f000 fd27 	bl	8003ad2 <z_abort_timeout>
 8003084:	f8c5 8078 	str.w	r8, [r5, #120]	; 0x78
		ready_thread(thread);
 8003088:	4628      	mov	r0, r5
 800308a:	f7ff fe45 	bl	8002d18 <ready_thread>
 800308e:	e7d7      	b.n	8003040 <z_thread_abort+0x50>
 8003090:	20000338 	.word	0x20000338

08003094 <z_data_copy>:
 * @return N/A
 */
void z_data_copy(void)
{
	(void)memcpy(&__data_region_start, &__data_region_load_start,
		 __data_region_end - __data_region_start);
 8003094:	4809      	ldr	r0, [pc, #36]	; (80030bc <z_data_copy+0x28>)
	(void)memcpy(&__data_region_start, &__data_region_load_start,
 8003096:	4a0a      	ldr	r2, [pc, #40]	; (80030c0 <z_data_copy+0x2c>)
 8003098:	490a      	ldr	r1, [pc, #40]	; (80030c4 <z_data_copy+0x30>)
{
 800309a:	b508      	push	{r3, lr}
	(void)memcpy(&__data_region_start, &__data_region_load_start,
 800309c:	1a12      	subs	r2, r2, r0
 800309e:	f000 fa60 	bl	8003562 <memcpy>
#ifdef CONFIG_ARCH_HAS_RAMFUNC_SUPPORT
	(void)memcpy(&__ramfunc_start, &__ramfunc_load_start,
 80030a2:	4a09      	ldr	r2, [pc, #36]	; (80030c8 <z_data_copy+0x34>)
 80030a4:	4909      	ldr	r1, [pc, #36]	; (80030cc <z_data_copy+0x38>)
 80030a6:	480a      	ldr	r0, [pc, #40]	; (80030d0 <z_data_copy+0x3c>)
 80030a8:	f000 fa5b 	bl	8003562 <memcpy>
		 (uintptr_t) &__ramfunc_size);
#endif /* CONFIG_ARCH_HAS_RAMFUNC_SUPPORT */
#if DT_NODE_HAS_STATUS(DT_CHOSEN(zephyr_ccm), okay)
	(void)memcpy(&__ccm_data_start, &__ccm_data_rom_start,
		 __ccm_data_end - __ccm_data_start);
 80030ac:	4809      	ldr	r0, [pc, #36]	; (80030d4 <z_data_copy+0x40>)
	(void)memcpy(&__ccm_data_start, &__ccm_data_rom_start,
 80030ae:	4a0a      	ldr	r2, [pc, #40]	; (80030d8 <z_data_copy+0x44>)
 80030b0:	490a      	ldr	r1, [pc, #40]	; (80030dc <z_data_copy+0x48>)
#else
	(void)memcpy(&_app_smem_start, &_app_smem_rom_start,
		 _app_smem_end - _app_smem_start);
#endif /* CONFIG_STACK_CANARIES */
#endif /* CONFIG_USERSPACE */
}
 80030b2:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
	(void)memcpy(&__ccm_data_start, &__ccm_data_rom_start,
 80030b6:	1a12      	subs	r2, r2, r0
 80030b8:	f000 ba53 	b.w	8003562 <memcpy>
 80030bc:	20000000 	.word	0x20000000
 80030c0:	2000007c 	.word	0x2000007c
 80030c4:	08004a44 	.word	0x08004a44
 80030c8:	00000000 	.word	0x00000000
 80030cc:	08004a44 	.word	0x08004a44
 80030d0:	20000000 	.word	0x20000000
 80030d4:	10000000 	.word	0x10000000
 80030d8:	10000000 	.word	0x10000000
 80030dc:	08004ac0 	.word	0x08004ac0

080030e0 <elapsed>:
	sys_dlist_remove(&t->node);
}

static int32_t elapsed(void)
{
	return announce_remaining == 0 ? sys_clock_elapsed() : 0U;
 80030e0:	4b03      	ldr	r3, [pc, #12]	; (80030f0 <elapsed+0x10>)
 80030e2:	681b      	ldr	r3, [r3, #0]
 80030e4:	b90b      	cbnz	r3, 80030ea <elapsed+0xa>
 80030e6:	f7ff b9bb 	b.w	8002460 <sys_clock_elapsed>
}
 80030ea:	2000      	movs	r0, #0
 80030ec:	4770      	bx	lr
 80030ee:	bf00      	nop
 80030f0:	20000368 	.word	0x20000368

080030f4 <next_timeout>:
	return list->head == list;
 80030f4:	4b11      	ldr	r3, [pc, #68]	; (800313c <next_timeout+0x48>)

static int32_t next_timeout(void)
{
 80030f6:	b510      	push	{r4, lr}
 80030f8:	681c      	ldr	r4, [r3, #0]
	return sys_dlist_is_empty(list) ? NULL : list->head;
 80030fa:	429c      	cmp	r4, r3
 80030fc:	bf08      	it	eq
 80030fe:	2400      	moveq	r4, #0
	struct _timeout *to = first();
	int32_t ticks_elapsed = elapsed();
 8003100:	f7ff ffee 	bl	80030e0 <elapsed>
 8003104:	4603      	mov	r3, r0
	int32_t ret = to == NULL ? MAX_WAIT
 8003106:	b16c      	cbz	r4, 8003124 <next_timeout+0x30>
		: CLAMP(to->dticks - ticks_elapsed, 0, MAX_WAIT);
 8003108:	e9d4 0204 	ldrd	r0, r2, [r4, #16]
 800310c:	1ac0      	subs	r0, r0, r3
 800310e:	eb62 73e3 	sbc.w	r3, r2, r3, asr #31
	int32_t ret = to == NULL ? MAX_WAIT
 8003112:	2801      	cmp	r0, #1
 8003114:	f173 0200 	sbcs.w	r2, r3, #0
 8003118:	db0d      	blt.n	8003136 <next_timeout+0x42>
		: CLAMP(to->dticks - ticks_elapsed, 0, MAX_WAIT);
 800311a:	f1b0 4f00 	cmp.w	r0, #2147483648	; 0x80000000
 800311e:	f173 0300 	sbcs.w	r3, r3, #0
 8003122:	db01      	blt.n	8003128 <next_timeout+0x34>
	int32_t ret = to == NULL ? MAX_WAIT
 8003124:	f06f 4000 	mvn.w	r0, #2147483648	; 0x80000000

#ifdef CONFIG_TIMESLICING
	if (_current_cpu->slice_ticks && _current_cpu->slice_ticks < ret) {
 8003128:	4b05      	ldr	r3, [pc, #20]	; (8003140 <next_timeout+0x4c>)
 800312a:	691b      	ldr	r3, [r3, #16]
 800312c:	b113      	cbz	r3, 8003134 <next_timeout+0x40>
 800312e:	4298      	cmp	r0, r3
 8003130:	bfa8      	it	ge
 8003132:	4618      	movge	r0, r3
		ret = _current_cpu->slice_ticks;
	}
#endif
	return ret;
}
 8003134:	bd10      	pop	{r4, pc}
	int32_t ret = to == NULL ? MAX_WAIT
 8003136:	2000      	movs	r0, #0
 8003138:	e7f6      	b.n	8003128 <next_timeout+0x34>
 800313a:	bf00      	nop
 800313c:	20000034 	.word	0x20000034
 8003140:	20000338 	.word	0x20000338

08003144 <remove_timeout>:
{
 8003144:	b530      	push	{r4, r5, lr}
	return (node == list->tail) ? NULL : node->next;
 8003146:	6803      	ldr	r3, [r0, #0]
	return (node != NULL) ? sys_dlist_peek_next_no_check(list, node) : NULL;
 8003148:	b168      	cbz	r0, 8003166 <remove_timeout+0x22>
	return (node == list->tail) ? NULL : node->next;
 800314a:	4a0a      	ldr	r2, [pc, #40]	; (8003174 <remove_timeout+0x30>)
 800314c:	6852      	ldr	r2, [r2, #4]
 800314e:	4290      	cmp	r0, r2
 8003150:	d009      	beq.n	8003166 <remove_timeout+0x22>
	if (next(t) != NULL) {
 8003152:	b143      	cbz	r3, 8003166 <remove_timeout+0x22>
		next(t)->dticks += t->dticks;
 8003154:	e9d3 2104 	ldrd	r2, r1, [r3, #16]
 8003158:	e9d0 4504 	ldrd	r4, r5, [r0, #16]
 800315c:	1912      	adds	r2, r2, r4
 800315e:	eb41 0105 	adc.w	r1, r1, r5
 8003162:	e9c3 2104 	strd	r2, r1, [r3, #16]
 * @return N/A
 */

static inline void sys_dlist_remove(sys_dnode_t *node)
{
	sys_dnode_t *const prev = node->prev;
 8003166:	6842      	ldr	r2, [r0, #4]
	sys_dnode_t *const next = node->next;

	prev->next = next;
 8003168:	6013      	str	r3, [r2, #0]
	next->prev = prev;
 800316a:	605a      	str	r2, [r3, #4]
	node->next = NULL;
 800316c:	2300      	movs	r3, #0
	node->prev = NULL;
 800316e:	e9c0 3300 	strd	r3, r3, [r0]
}
 8003172:	bd30      	pop	{r4, r5, pc}
 8003174:	20000034 	.word	0x20000034

08003178 <z_add_timeout>:

void z_add_timeout(struct _timeout *to, _timeout_func_t fn,
		   k_timeout_t timeout)
{
	if (K_TIMEOUT_EQ(timeout, K_FOREVER)) {
 8003178:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 800317c:	bf08      	it	eq
 800317e:	f1b2 3fff 	cmpeq.w	r2, #4294967295	; 0xffffffff
{
 8003182:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8003184:	4604      	mov	r4, r0
 8003186:	461f      	mov	r7, r3
 8003188:	4615      	mov	r5, r2
	if (K_TIMEOUT_EQ(timeout, K_FOREVER)) {
 800318a:	d067      	beq.n	800325c <z_add_timeout+0xe4>
#ifdef CONFIG_KERNEL_COHERENCE
	__ASSERT_NO_MSG(arch_mem_coherent(to));
#endif

	__ASSERT(!sys_dnode_is_linked(&to->node), "");
	to->fn = fn;
 800318c:	6081      	str	r1, [r0, #8]
	__asm__ volatile(
 800318e:	f04f 0310 	mov.w	r3, #16
 8003192:	f3ef 8611 	mrs	r6, BASEPRI
 8003196:	f383 8812 	msr	BASEPRI_MAX, r3
 800319a:	f3bf 8f6f 	isb	sy

	LOCKED(&timeout_lock) {
		struct _timeout *t;

		if (IS_ENABLED(CONFIG_TIMEOUT_64BIT) &&
		    Z_TICK_ABS(timeout.ticks) >= 0) {
 800319e:	f06f 0201 	mvn.w	r2, #1
 80031a2:	1b53      	subs	r3, r2, r5
 80031a4:	f04f 3cff 	mov.w	ip, #4294967295	; 0xffffffff
 80031a8:	eb6c 0307 	sbc.w	r3, ip, r7
		if (IS_ENABLED(CONFIG_TIMEOUT_64BIT) &&
 80031ac:	2b00      	cmp	r3, #0
 80031ae:	db1b      	blt.n	80031e8 <z_add_timeout+0x70>
			k_ticks_t ticks = Z_TICK_ABS(timeout.ticks) - curr_tick;
 80031b0:	4b2b      	ldr	r3, [pc, #172]	; (8003260 <z_add_timeout+0xe8>)
 80031b2:	e9d3 1300 	ldrd	r1, r3, [r3]
 80031b6:	1a52      	subs	r2, r2, r1
 80031b8:	eb6c 0303 	sbc.w	r3, ip, r3
 80031bc:	1b55      	subs	r5, r2, r5

			to->dticks = MAX(1, ticks);
 80031be:	eb63 0307 	sbc.w	r3, r3, r7
 80031c2:	2d01      	cmp	r5, #1
 80031c4:	f173 0200 	sbcs.w	r2, r3, #0
 80031c8:	bfbc      	itt	lt
 80031ca:	2501      	movlt	r5, #1
 80031cc:	2300      	movlt	r3, #0
 80031ce:	e9c0 5304 	strd	r5, r3, [r0, #16]
	return list->head == list;
 80031d2:	4824      	ldr	r0, [pc, #144]	; (8003264 <z_add_timeout+0xec>)
	sys_dnode_t *const tail = list->tail;
 80031d4:	e9d0 3c00 	ldrd	r3, ip, [r0]
	return sys_dlist_is_empty(list) ? NULL : list->head;
 80031d8:	4283      	cmp	r3, r0
 80031da:	d118      	bne.n	800320e <z_add_timeout+0x96>
	node->prev = tail;
 80031dc:	e9c4 0c00 	strd	r0, ip, [r4]
	tail->next = node;
 80031e0:	f8cc 4000 	str.w	r4, [ip]
	list->tail = node;
 80031e4:	6044      	str	r4, [r0, #4]
}
 80031e6:	e026      	b.n	8003236 <z_add_timeout+0xbe>
		} else {
			to->dticks = timeout.ticks + 1 + elapsed();
 80031e8:	f7ff ff7a 	bl	80030e0 <elapsed>
 80031ec:	3501      	adds	r5, #1
 80031ee:	f147 0700 	adc.w	r7, r7, #0
 80031f2:	182d      	adds	r5, r5, r0
 80031f4:	eb47 77e0 	adc.w	r7, r7, r0, asr #31
 80031f8:	e9c4 5704 	strd	r5, r7, [r4, #16]
 80031fc:	e7e9      	b.n	80031d2 <z_add_timeout+0x5a>
			if (t->dticks > to->dticks) {
				t->dticks -= to->dticks;
				sys_dlist_insert(&t->node, &to->node);
				break;
			}
			to->dticks -= t->dticks;
 80031fe:	1a52      	subs	r2, r2, r1
 8003200:	eb65 0507 	sbc.w	r5, r5, r7
	return (node == list->tail) ? NULL : node->next;
 8003204:	459c      	cmp	ip, r3
 8003206:	e9c4 2504 	strd	r2, r5, [r4, #16]
 800320a:	d0e7      	beq.n	80031dc <z_add_timeout+0x64>
 800320c:	681b      	ldr	r3, [r3, #0]
		for (t = first(); t != NULL; t = next(t)) {
 800320e:	2b00      	cmp	r3, #0
 8003210:	d0e4      	beq.n	80031dc <z_add_timeout+0x64>
			if (t->dticks > to->dticks) {
 8003212:	e9d3 1704 	ldrd	r1, r7, [r3, #16]
 8003216:	e9d4 2504 	ldrd	r2, r5, [r4, #16]
 800321a:	428a      	cmp	r2, r1
 800321c:	eb75 0e07 	sbcs.w	lr, r5, r7
 8003220:	daed      	bge.n	80031fe <z_add_timeout+0x86>
				t->dticks -= to->dticks;
 8003222:	1a8a      	subs	r2, r1, r2
 8003224:	eb67 0505 	sbc.w	r5, r7, r5
 8003228:	e9c3 2504 	strd	r2, r5, [r3, #16]
	sys_dnode_t *const prev = successor->prev;
 800322c:	685a      	ldr	r2, [r3, #4]
	node->next = successor;
 800322e:	e9c4 3200 	strd	r3, r2, [r4]
	prev->next = node;
 8003232:	6014      	str	r4, [r2, #0]
	successor->prev = node;
 8003234:	605c      	str	r4, [r3, #4]
	return list->head == list;
 8003236:	6803      	ldr	r3, [r0, #0]
	return sys_dlist_is_empty(list) ? NULL : list->head;
 8003238:	4283      	cmp	r3, r0
 800323a:	d00b      	beq.n	8003254 <z_add_timeout+0xdc>

		if (t == NULL) {
			sys_dlist_append(&timeout_list, &to->node);
		}

		if (to == first()) {
 800323c:	429c      	cmp	r4, r3
 800323e:	d109      	bne.n	8003254 <z_add_timeout+0xdc>
			 * last announcement, and slice_ticks is based
			 * on that. It means that the time remaining for
			 * the next announcement can be less than
			 * slice_ticks.
			 */
			int32_t next_time = next_timeout();
 8003240:	f7ff ff58 	bl	80030f4 <next_timeout>

			if (next_time == 0 ||
 8003244:	b118      	cbz	r0, 800324e <z_add_timeout+0xd6>
			    _current_cpu->slice_ticks != next_time) {
 8003246:	4b08      	ldr	r3, [pc, #32]	; (8003268 <z_add_timeout+0xf0>)
			if (next_time == 0 ||
 8003248:	691b      	ldr	r3, [r3, #16]
 800324a:	4283      	cmp	r3, r0
 800324c:	d002      	beq.n	8003254 <z_add_timeout+0xdc>
				sys_clock_set_timeout(next_time, false);
 800324e:	2100      	movs	r1, #0
 8003250:	f7ff f896 	bl	8002380 <sys_clock_set_timeout>
	__asm__ volatile(
 8003254:	f386 8811 	msr	BASEPRI, r6
 8003258:	f3bf 8f6f 	isb	sy
#else
			sys_clock_set_timeout(next_timeout(), false);
#endif	/* CONFIG_TIMESLICING */
		}
	}
}
 800325c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800325e:	bf00      	nop
 8003260:	20000180 	.word	0x20000180
 8003264:	20000034 	.word	0x20000034
 8003268:	20000338 	.word	0x20000338

0800326c <sys_clock_announce>:
		}
	}
}

void sys_clock_announce(int32_t ticks)
{
 800326c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8003270:	4605      	mov	r5, r0
#ifdef CONFIG_TIMESLICING
	z_time_slice(ticks);
 8003272:	f7ff fd11 	bl	8002c98 <z_time_slice>
	__asm__ volatile(
 8003276:	f04f 0310 	mov.w	r3, #16
 800327a:	f3ef 8411 	mrs	r4, BASEPRI
 800327e:	f383 8812 	msr	BASEPRI_MAX, r3
 8003282:	f3bf 8f6f 	isb	sy
#endif

	k_spinlock_key_t key = k_spin_lock(&timeout_lock);

	announce_remaining = ticks;
 8003286:	4e24      	ldr	r6, [pc, #144]	; (8003318 <sys_clock_announce+0xac>)
	return list->head == list;
 8003288:	f8df 8090 	ldr.w	r8, [pc, #144]	; 800331c <sys_clock_announce+0xb0>
 800328c:	6035      	str	r5, [r6, #0]

	while (first() != NULL && first()->dticks <= announce_remaining) {
		struct _timeout *t = first();
		int dt = t->dticks;

		curr_tick += dt;
 800328e:	4d24      	ldr	r5, [pc, #144]	; (8003320 <sys_clock_announce+0xb4>)
 8003290:	f8d8 0000 	ldr.w	r0, [r8]
	while (first() != NULL && first()->dticks <= announce_remaining) {
 8003294:	6832      	ldr	r2, [r6, #0]
	return sys_dlist_is_empty(list) ? NULL : list->head;
 8003296:	4540      	cmp	r0, r8
		curr_tick += dt;
 8003298:	e9d5 1e00 	ldrd	r1, lr, [r5]
 800329c:	ea4f 77e2 	mov.w	r7, r2, asr #31
 80032a0:	d00b      	beq.n	80032ba <sys_clock_announce+0x4e>
	while (first() != NULL && first()->dticks <= announce_remaining) {
 80032a2:	b150      	cbz	r0, 80032ba <sys_clock_announce+0x4e>
 80032a4:	e9d0 3c04 	ldrd	r3, ip, [r0, #16]
 80032a8:	429a      	cmp	r2, r3
 80032aa:	eb77 090c 	sbcs.w	r9, r7, ip
 80032ae:	da16      	bge.n	80032de <sys_clock_announce+0x72>
		t->fn(t);
		key = k_spin_lock(&timeout_lock);
	}

	if (first() != NULL) {
		first()->dticks -= announce_remaining;
 80032b0:	1a9b      	subs	r3, r3, r2
 80032b2:	eb6c 0c07 	sbc.w	ip, ip, r7
 80032b6:	e9c0 3c04 	strd	r3, ip, [r0, #16]
	}

	curr_tick += announce_remaining;
 80032ba:	1852      	adds	r2, r2, r1
 80032bc:	eb4e 0707 	adc.w	r7, lr, r7
 80032c0:	e9c5 2700 	strd	r2, r7, [r5]
	announce_remaining = 0;
 80032c4:	2500      	movs	r5, #0
 80032c6:	6035      	str	r5, [r6, #0]

	sys_clock_set_timeout(next_timeout(), false);
 80032c8:	f7ff ff14 	bl	80030f4 <next_timeout>
 80032cc:	4629      	mov	r1, r5
 80032ce:	f7ff f857 	bl	8002380 <sys_clock_set_timeout>
	__asm__ volatile(
 80032d2:	f384 8811 	msr	BASEPRI, r4
 80032d6:	f3bf 8f6f 	isb	sy

	k_spin_unlock(&timeout_lock, key);
}
 80032da:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
		curr_tick += dt;
 80032de:	1859      	adds	r1, r3, r1
 80032e0:	eb4e 77e3 	adc.w	r7, lr, r3, asr #31
		announce_remaining -= dt;
 80032e4:	1ad3      	subs	r3, r2, r3
 80032e6:	6033      	str	r3, [r6, #0]
		t->dticks = 0;
 80032e8:	2200      	movs	r2, #0
 80032ea:	2300      	movs	r3, #0
 80032ec:	e9c0 2304 	strd	r2, r3, [r0, #16]
		curr_tick += dt;
 80032f0:	e9c5 1700 	strd	r1, r7, [r5]
		remove_timeout(t);
 80032f4:	f7ff ff26 	bl	8003144 <remove_timeout>
 80032f8:	f384 8811 	msr	BASEPRI, r4
 80032fc:	f3bf 8f6f 	isb	sy
		t->fn(t);
 8003300:	6883      	ldr	r3, [r0, #8]
 8003302:	4798      	blx	r3
	__asm__ volatile(
 8003304:	f04f 0310 	mov.w	r3, #16
 8003308:	f3ef 8411 	mrs	r4, BASEPRI
 800330c:	f383 8812 	msr	BASEPRI_MAX, r3
 8003310:	f3bf 8f6f 	isb	sy
#endif

#ifdef CONFIG_SPIN_VALIDATE
	z_spin_lock_set_owner(l);
#endif
	return k;
 8003314:	e7bc      	b.n	8003290 <sys_clock_announce+0x24>
 8003316:	bf00      	nop
 8003318:	20000368 	.word	0x20000368
 800331c:	20000034 	.word	0x20000034
 8003320:	20000180 	.word	0x20000180

08003324 <sys_clock_tick_get>:

int64_t sys_clock_tick_get(void)
{
 8003324:	b510      	push	{r4, lr}
 8003326:	f04f 0310 	mov.w	r3, #16
 800332a:	f3ef 8411 	mrs	r4, BASEPRI
 800332e:	f383 8812 	msr	BASEPRI_MAX, r3
 8003332:	f3bf 8f6f 	isb	sy
	uint64_t t = 0U;

	LOCKED(&timeout_lock) {
		t = curr_tick + sys_clock_elapsed();
 8003336:	f7ff f893 	bl	8002460 <sys_clock_elapsed>
 800333a:	4a05      	ldr	r2, [pc, #20]	; (8003350 <sys_clock_tick_get+0x2c>)
 800333c:	e9d2 3100 	ldrd	r3, r1, [r2]
 8003340:	18c0      	adds	r0, r0, r3
 8003342:	f141 0100 	adc.w	r1, r1, #0
	__asm__ volatile(
 8003346:	f384 8811 	msr	BASEPRI, r4
 800334a:	f3bf 8f6f 	isb	sy
	}
	return t;
}
 800334e:	bd10      	pop	{r4, pc}
 8003350:	20000180 	.word	0x20000180

08003354 <boot_banner>:
		k_busy_wait(CONFIG_BOOT_DELAY * USEC_PER_MSEC);
	}

#if defined(CONFIG_BOOT_BANNER)
#ifdef BUILD_VERSION
	printk("*** Booting Zephyr OS build %s %s ***\n",
 8003354:	4a02      	ldr	r2, [pc, #8]	; (8003360 <boot_banner+0xc>)
 8003356:	4903      	ldr	r1, [pc, #12]	; (8003364 <boot_banner+0x10>)
 8003358:	4803      	ldr	r0, [pc, #12]	; (8003368 <boot_banner+0x14>)
 800335a:	f000 b80a 	b.w	8003372 <printk>
 800335e:	bf00      	nop
 8003360:	080043b1 	.word	0x080043b1
 8003364:	08004a0d 	.word	0x08004a0d
 8003368:	08004a1b 	.word	0x08004a1b

0800336c <_OffsetAbsSyms>:

#include <gen_offset.h>

#include "offsets_aarch32.c"

GEN_ABS_SYM_END
 800336c:	4770      	bx	lr

0800336e <arch_printk_char_out>:
}
 800336e:	2000      	movs	r0, #0
 8003370:	4770      	bx	lr

08003372 <printk>:
 *
 * @return N/A
 */

void printk(const char *fmt, ...)
{
 8003372:	b40f      	push	{r0, r1, r2, r3}
 8003374:	b507      	push	{r0, r1, r2, lr}
 8003376:	a904      	add	r1, sp, #16
 8003378:	f851 0b04 	ldr.w	r0, [r1], #4
	va_list ap;

	va_start(ap, fmt);
 800337c:	9101      	str	r1, [sp, #4]

	if (IS_ENABLED(CONFIG_LOG_PRINTK)) {
		log_printk(fmt, ap);
	} else {
		vprintk(fmt, ap);
 800337e:	f7fd f89f 	bl	80004c0 <vprintk>
	}
	va_end(ap);
}
 8003382:	b003      	add	sp, #12
 8003384:	f85d eb04 	ldr.w	lr, [sp], #4
 8003388:	b004      	add	sp, #16
 800338a:	4770      	bx	lr

0800338c <z_thread_entry>:
 * This routine does not return, and is marked as such so the compiler won't
 * generate preamble code that is only used by functions that actually return.
 */
FUNC_NORETURN void z_thread_entry(k_thread_entry_t entry,
				 void *p1, void *p2, void *p3)
{
 800338c:	4604      	mov	r4, r0
 800338e:	b508      	push	{r3, lr}
 8003390:	4608      	mov	r0, r1
 8003392:	4611      	mov	r1, r2
#ifdef CONFIG_THREAD_LOCAL_STORAGE
	z_tls_current = z_current_get();
#endif
	entry(p1, p2, p3);
 8003394:	461a      	mov	r2, r3
 8003396:	47a0      	blx	r4
	return z_impl_z_current_get();
 8003398:	f7ff fe24 	bl	8002fe4 <z_impl_z_current_get>
	z_impl_k_thread_abort(thread);
 800339c:	f7fe fb08 	bl	80019b0 <z_impl_k_thread_abort>

080033a0 <encode_uint>:
{
 80033a0:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80033a4:	469a      	mov	sl, r3
	bool upcase = isupper((int)conv->specifier);
 80033a6:	78d3      	ldrb	r3, [r2, #3]
	switch (specifier) {
 80033a8:	2b6f      	cmp	r3, #111	; 0x6f
{
 80033aa:	4680      	mov	r8, r0
 80033ac:	460f      	mov	r7, r1
 80033ae:	4615      	mov	r5, r2
	return (int)(((unsigned)(a)-(unsigned)'A') < 26U);
 80033b0:	f1a3 0b41 	sub.w	fp, r3, #65	; 0x41
	switch (specifier) {
 80033b4:	d029      	beq.n	800340a <encode_uint+0x6a>
 80033b6:	d824      	bhi.n	8003402 <encode_uint+0x62>
		return 16;
 80033b8:	2b58      	cmp	r3, #88	; 0x58
 80033ba:	bf14      	ite	ne
 80033bc:	260a      	movne	r6, #10
 80033be:	2610      	moveq	r6, #16
	char *bp = bps + (bpe - bps);
 80033c0:	f8dd 9028 	ldr.w	r9, [sp, #40]	; 0x28
		unsigned int lsv = (unsigned int)(value % radix);
 80033c4:	4632      	mov	r2, r6
 80033c6:	2300      	movs	r3, #0
 80033c8:	4640      	mov	r0, r8
 80033ca:	4639      	mov	r1, r7
 80033cc:	f7fc feee 	bl	80001ac <__aeabi_uldivmod>
		*--bp = (lsv <= 9) ? ('0' + lsv)
 80033d0:	2a09      	cmp	r2, #9
 80033d2:	b2d4      	uxtb	r4, r2
 80033d4:	d81e      	bhi.n	8003414 <encode_uint+0x74>
 80033d6:	3430      	adds	r4, #48	; 0x30
	} while ((value != 0) && (bps < bp));
 80033d8:	45b0      	cmp	r8, r6
		*--bp = (lsv <= 9) ? ('0' + lsv)
 80033da:	b2e4      	uxtb	r4, r4
	} while ((value != 0) && (bps < bp));
 80033dc:	f177 0300 	sbcs.w	r3, r7, #0
		*--bp = (lsv <= 9) ? ('0' + lsv)
 80033e0:	f809 4d01 	strb.w	r4, [r9, #-1]!
	} while ((value != 0) && (bps < bp));
 80033e4:	d301      	bcc.n	80033ea <encode_uint+0x4a>
 80033e6:	45d1      	cmp	r9, sl
 80033e8:	d811      	bhi.n	800340e <encode_uint+0x6e>
	if (conv->flag_hash) {
 80033ea:	782b      	ldrb	r3, [r5, #0]
 80033ec:	069b      	lsls	r3, r3, #26
 80033ee:	d505      	bpl.n	80033fc <encode_uint+0x5c>
		if (radix == 8) {
 80033f0:	2e08      	cmp	r6, #8
 80033f2:	d115      	bne.n	8003420 <encode_uint+0x80>
			conv->altform_0 = true;
 80033f4:	78ab      	ldrb	r3, [r5, #2]
 80033f6:	f043 0308 	orr.w	r3, r3, #8
			conv->altform_0c = true;
 80033fa:	70ab      	strb	r3, [r5, #2]
}
 80033fc:	4648      	mov	r0, r9
 80033fe:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
	switch (specifier) {
 8003402:	f003 03f7 	and.w	r3, r3, #247	; 0xf7
		return 16;
 8003406:	2b70      	cmp	r3, #112	; 0x70
 8003408:	e7d7      	b.n	80033ba <encode_uint+0x1a>
	switch (specifier) {
 800340a:	2608      	movs	r6, #8
 800340c:	e7d8      	b.n	80033c0 <encode_uint+0x20>
		value /= radix;
 800340e:	4680      	mov	r8, r0
 8003410:	460f      	mov	r7, r1
 8003412:	e7d7      	b.n	80033c4 <encode_uint+0x24>
		*--bp = (lsv <= 9) ? ('0' + lsv)
 8003414:	f1bb 0f19 	cmp.w	fp, #25
 8003418:	bf94      	ite	ls
 800341a:	3437      	addls	r4, #55	; 0x37
 800341c:	3457      	addhi	r4, #87	; 0x57
 800341e:	e7db      	b.n	80033d8 <encode_uint+0x38>
		} else if (radix == 16) {
 8003420:	2e10      	cmp	r6, #16
 8003422:	d1eb      	bne.n	80033fc <encode_uint+0x5c>
			conv->altform_0c = true;
 8003424:	78ab      	ldrb	r3, [r5, #2]
 8003426:	f043 0310 	orr.w	r3, r3, #16
 800342a:	e7e6      	b.n	80033fa <encode_uint+0x5a>

0800342c <outs>:
{
 800342c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8003430:	4607      	mov	r7, r0
 8003432:	4688      	mov	r8, r1
 8003434:	4615      	mov	r5, r2
 8003436:	461e      	mov	r6, r3
	while ((sp < ep) || ((ep == NULL) && *sp)) {
 8003438:	4614      	mov	r4, r2
 800343a:	42b4      	cmp	r4, r6
 800343c:	eba4 0005 	sub.w	r0, r4, r5
 8003440:	d302      	bcc.n	8003448 <outs+0x1c>
 8003442:	b93e      	cbnz	r6, 8003454 <outs+0x28>
 8003444:	7823      	ldrb	r3, [r4, #0]
 8003446:	b12b      	cbz	r3, 8003454 <outs+0x28>
		int rc = out((int)*sp++, ctx);
 8003448:	f814 0b01 	ldrb.w	r0, [r4], #1
 800344c:	4641      	mov	r1, r8
 800344e:	47b8      	blx	r7
		if (rc < 0) {
 8003450:	2800      	cmp	r0, #0
 8003452:	daf2      	bge.n	800343a <outs+0xe>
}
 8003454:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08003458 <_ConfigAbsSyms>:
GEN_ABSOLUTE_SYM_KCONFIG(CONFIG_OUTPUT_DISASSEMBLY, 1);
GEN_ABSOLUTE_SYM_KCONFIG(CONFIG_OUTPUT_PRINT_MEMORY_USAGE, 1);
GEN_ABSOLUTE_SYM_KCONFIG(CONFIG_BUILD_OUTPUT_BIN, 1);
GEN_ABSOLUTE_SYM_KCONFIG(CONFIG_COMPAT_INCLUDES, 1);

GEN_ABS_SYM_END
 8003458:	4770      	bx	lr

0800345a <st_stm32_common_config>:
#endif /* CONFIG_SOC_SERIES_STM32H7X || CONFIG_SOC_SERIES_STM32MP1X */

#endif /* CONFIG_USE_SEGGER_RTT */

	return 0;
}
 800345a:	2000      	movs	r0, #0
 800345c:	4770      	bx	lr

0800345e <default_lf_get_timestamp>:
{
 800345e:	b508      	push	{r3, lr}
		(void)arch_syscall_invoke1((uintptr_t)&ret64, K_SYSCALL_K_UPTIME_TICKS);
		return (int64_t)ret64;
	}
#endif
	compiler_barrier();
	return z_impl_k_uptime_ticks();
 8003460:	f000 fb6b 	bl	8003b3a <z_impl_k_uptime_ticks>
 8003464:	220a      	movs	r2, #10
 8003466:	2300      	movs	r3, #0
 8003468:	f7fc fea0 	bl	80001ac <__aeabi_uldivmod>
}
 800346c:	bd08      	pop	{r3, pc}

0800346e <dummy_timestamp>:
 800346e:	2000      	movs	r0, #0
 8003470:	4770      	bx	lr

08003472 <log_string_sync>:
{
 8003472:	b40e      	push	{r1, r2, r3}
 8003474:	b503      	push	{r0, r1, lr}
 8003476:	aa03      	add	r2, sp, #12
	log_generic(src_level, fmt, ap, LOG_STRDUP_SKIP);
 8003478:	2300      	movs	r3, #0
{
 800347a:	f852 1b04 	ldr.w	r1, [r2], #4
	va_start(ap, fmt);
 800347e:	9201      	str	r2, [sp, #4]
	log_generic(src_level, fmt, ap, LOG_STRDUP_SKIP);
 8003480:	f7fd fc0e 	bl	8000ca0 <log_generic>
}
 8003484:	b002      	add	sp, #8
 8003486:	f85d eb04 	ldr.w	lr, [sp], #4
 800348a:	b003      	add	sp, #12
 800348c:	4770      	bx	lr

0800348e <enable_logger>:

K_KERNEL_STACK_DEFINE(logging_stack, CONFIG_LOG_PROCESS_THREAD_STACK_SIZE);
struct k_thread logging_thread;

static int enable_logger(const struct device *arg)
{
 800348e:	b508      	push	{r3, lr}
				COND_CODE_1(CONFIG_LOG_PROCESS_THREAD,
					K_MSEC(CONFIG_LOG_PROCESS_THREAD_STARTUP_DELAY_MS),
					K_NO_WAIT));
		k_thread_name_set(&logging_thread, "logging");
	} else {
		log_init();
 8003490:	f7fd fc46 	bl	8000d20 <log_init>
	}

	return 0;
}
 8003494:	2000      	movs	r0, #0
 8003496:	bd08      	pop	{r3, pc}

08003498 <z_log_strdup>:
}
 8003498:	4770      	bx	lr

0800349a <out_func>:
{
 800349a:	b507      	push	{r0, r1, r2, lr}
		out_ctx->func((uint8_t *)&c, 1, out_ctx->control_block->ctx);
 800349c:	e9d1 3200 	ldrd	r3, r2, [r1]
{
 80034a0:	9001      	str	r0, [sp, #4]
		out_ctx->func((uint8_t *)&c, 1, out_ctx->control_block->ctx);
 80034a2:	6852      	ldr	r2, [r2, #4]
 80034a4:	2101      	movs	r1, #1
 80034a6:	a801      	add	r0, sp, #4
 80034a8:	4798      	blx	r3
}
 80034aa:	2000      	movs	r0, #0
 80034ac:	b003      	add	sp, #12
 80034ae:	f85d fb04 	ldr.w	pc, [sp], #4

080034b2 <buffer_write>:
{
 80034b2:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80034b4:	4606      	mov	r6, r0
 80034b6:	460d      	mov	r5, r1
 80034b8:	4614      	mov	r4, r2
 80034ba:	461f      	mov	r7, r3
		processed = outf(buf, len, ctx);
 80034bc:	4621      	mov	r1, r4
 80034be:	4628      	mov	r0, r5
 80034c0:	463a      	mov	r2, r7
 80034c2:	47b0      	blx	r6
	} while (len != 0);
 80034c4:	1a24      	subs	r4, r4, r0
		buf += processed;
 80034c6:	4405      	add	r5, r0
	} while (len != 0);
 80034c8:	d1f8      	bne.n	80034bc <buffer_write+0xa>
}
 80034ca:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

080034cc <log_output_flush>:
		     output->control_block->offset,
 80034cc:	6842      	ldr	r2, [r0, #4]
	buffer_write(output->func, output->buf,
 80034ce:	6881      	ldr	r1, [r0, #8]
{
 80034d0:	b510      	push	{r4, lr}
 80034d2:	4604      	mov	r4, r0
	buffer_write(output->func, output->buf,
 80034d4:	e9d2 2300 	ldrd	r2, r3, [r2]
 80034d8:	6800      	ldr	r0, [r0, #0]
 80034da:	f7ff ffea 	bl	80034b2 <buffer_write>
	output->control_block->offset = 0;
 80034de:	6863      	ldr	r3, [r4, #4]
 80034e0:	2200      	movs	r2, #0
 80034e2:	601a      	str	r2, [r3, #0]
}
 80034e4:	bd10      	pop	{r4, pc}

080034e6 <stm32_dt_pinctrl_configure>:
 *
 * @return 0 on success, -EINVAL otherwise
 */
int stm32_dt_pinctrl_configure(const struct soc_gpio_pinctrl *pinctrl,
			       size_t list_size, uint32_t base)
{
 80034e6:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	uint32_t pin, mux;
	uint32_t func = 0;
	int ret = 0;

	if (!list_size) {
 80034e8:	460f      	mov	r7, r1
 80034ea:	b1a9      	cbz	r1, 8003518 <stm32_dt_pinctrl_configure+0x32>
	}
#else
	ARG_UNUSED(base);
#endif /* DT_HAS_COMPAT_STATUS_OKAY(st_stm32f1_pinctrl) */

	for (int i = 0; i < list_size; i++) {
 80034ec:	2600      	movs	r6, #0
 80034ee:	1d04      	adds	r4, r0, #4
	uint32_t func = 0;
 80034f0:	4635      	mov	r5, r6
		mux = pinctrl[i].pinmux;
 80034f2:	f854 0c04 	ldr.w	r0, [r4, #-4]
		} else {
			/* Not supported */
			__ASSERT_NO_MSG(STM32_DT_PINMUX_FUNC(mux));
		}
#else
		if (STM32_DT_PINMUX_FUNC(mux) < STM32_ANALOG) {
 80034f6:	f010 0ff0 	tst.w	r0, #240	; 0xf0
			func = pinctrl[i].pincfg | STM32_MODER_ALT_MODE;
		} else if (STM32_DT_PINMUX_FUNC(mux) == STM32_ANALOG) {
 80034fa:	b2c2      	uxtb	r2, r0
		if (STM32_DT_PINMUX_FUNC(mux) < STM32_ANALOG) {
 80034fc:	d10e      	bne.n	800351c <stm32_dt_pinctrl_configure+0x36>
			func = pinctrl[i].pincfg | STM32_MODER_ALT_MODE;
 80034fe:	6825      	ldr	r5, [r4, #0]
 8003500:	f045 0520 	orr.w	r5, r5, #32
#endif /* DT_HAS_COMPAT_STATUS_OKAY(st_stm32f1_pinctrl) */

		pin = STM32PIN(STM32_DT_PINMUX_PORT(mux),
			       STM32_DT_PINMUX_LINE(mux));

		ret = stm32_pin_configure(pin, func, STM32_DT_PINMUX_FUNC(mux));
 8003504:	4629      	mov	r1, r5
 8003506:	f3c0 2007 	ubfx	r0, r0, #8, #8
 800350a:	f7fd fe6f 	bl	80011ec <stm32_pin_configure>
		if (ret != 0) {
 800350e:	3408      	adds	r4, #8
 8003510:	b918      	cbnz	r0, 800351a <stm32_dt_pinctrl_configure+0x34>
	for (int i = 0; i < list_size; i++) {
 8003512:	3601      	adds	r6, #1
 8003514:	42b7      	cmp	r7, r6
 8003516:	d1ec      	bne.n	80034f2 <stm32_dt_pinctrl_configure+0xc>
		return 0;
 8003518:	2000      	movs	r0, #0
			return ret;
		}
	}

	return 0;
}
 800351a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
			func = STM32_MODER_ANALOG_MODE;
 800351c:	2a10      	cmp	r2, #16
 800351e:	bf08      	it	eq
 8003520:	2530      	moveq	r5, #48	; 0x30
 8003522:	e7ef      	b.n	8003504 <stm32_dt_pinctrl_configure+0x1e>

08003524 <z_do_kernel_oops>:
 *   fault handler will executed insted of the SVC.
 *
 * @param esf exception frame
 */
void z_do_kernel_oops(const z_arch_esf_t *esf)
{
 8003524:	4601      	mov	r1, r0
	}

#endif /* CONFIG_USERSPACE */

#if !defined(CONFIG_EXTRA_EXCEPTION_INFO)
	z_arm_fatal_error(reason, esf);
 8003526:	6800      	ldr	r0, [r0, #0]
 8003528:	f7fd be96 	b.w	8001258 <z_arm_fatal_error>

0800352c <z_irq_spurious>:
 */
void z_irq_spurious(const void *unused)
{
	ARG_UNUSED(unused);

	z_arm_fatal_error(K_ERR_SPURIOUS_IRQ, NULL);
 800352c:	2100      	movs	r1, #0
 800352e:	2001      	movs	r0, #1
 8003530:	f7fd be92 	b.w	8001258 <z_arm_fatal_error>

08003534 <z_arm_nmi>:
 *
 * @return N/A
 */

void z_arm_nmi(void)
{
 8003534:	b508      	push	{r3, lr}
	handler();
 8003536:	f7fd feef 	bl	8001318 <z_SysNmiOnReset>
	z_arm_int_exit();
}
 800353a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
	z_arm_int_exit();
 800353e:	f7fd bfc3 	b.w	80014c8 <z_arm_exc_exit>

08003542 <strlen>:
 *
 * @return number of bytes in string <s>
 */

size_t strlen(const char *s)
{
 8003542:	4603      	mov	r3, r0
	size_t n = 0;
 8003544:	2000      	movs	r0, #0

	while (*s != '\0') {
 8003546:	5c1a      	ldrb	r2, [r3, r0]
 8003548:	b902      	cbnz	r2, 800354c <strlen+0xa>
		s++;
		n++;
	}

	return n;
}
 800354a:	4770      	bx	lr
		n++;
 800354c:	3001      	adds	r0, #1
 800354e:	e7fa      	b.n	8003546 <strlen+0x4>

08003550 <strnlen>:
 *
 * @return number of bytes in fixed-size string <s>
 */

size_t strnlen(const char *s, size_t maxlen)
{
 8003550:	4603      	mov	r3, r0
	size_t n = 0;
 8003552:	2000      	movs	r0, #0

	while (*s != '\0' && n < maxlen) {
 8003554:	5c1a      	ldrb	r2, [r3, r0]
 8003556:	b10a      	cbz	r2, 800355c <strnlen+0xc>
 8003558:	4288      	cmp	r0, r1
 800355a:	d100      	bne.n	800355e <strnlen+0xe>
		s++;
		n++;
	}

	return n;
}
 800355c:	4770      	bx	lr
		n++;
 800355e:	3001      	adds	r0, #1
 8003560:	e7f8      	b.n	8003554 <strnlen+0x4>

08003562 <memcpy>:
 *
 * @return pointer to start of destination buffer
 */

void *memcpy(void *_MLIBC_RESTRICT d, const void *_MLIBC_RESTRICT s, size_t n)
{
 8003562:	b510      	push	{r4, lr}
 8003564:	1e43      	subs	r3, r0, #1
 8003566:	440a      	add	r2, r1
	}
#endif

	/* do byte-sized copying until finished */

	while (n > 0) {
 8003568:	4291      	cmp	r1, r2
 800356a:	d100      	bne.n	800356e <memcpy+0xc>
		*(d_byte++) = *(s_byte++);
		n--;
	}

	return d;
}
 800356c:	bd10      	pop	{r4, pc}
		*(d_byte++) = *(s_byte++);
 800356e:	f811 4b01 	ldrb.w	r4, [r1], #1
 8003572:	f803 4f01 	strb.w	r4, [r3, #1]!
		n--;
 8003576:	e7f7      	b.n	8003568 <memcpy+0x6>

08003578 <memset>:
void *memset(void *buf, int c, size_t n)
{
	/* do byte-sized initialization until word-aligned or finished */

	unsigned char *d_byte = (unsigned char *)buf;
	unsigned char c_byte = (unsigned char)c;
 8003578:	b2c9      	uxtb	r1, r1
	/* do byte-sized initialization until finished */

	d_byte = (unsigned char *)d_word;
#endif

	while (n > 0) {
 800357a:	4402      	add	r2, r0
	unsigned char *d_byte = (unsigned char *)buf;
 800357c:	4603      	mov	r3, r0
	while (n > 0) {
 800357e:	4293      	cmp	r3, r2
 8003580:	d100      	bne.n	8003584 <memset+0xc>
		*(d_byte++) = c_byte;
		n--;
	}

	return buf;
}
 8003582:	4770      	bx	lr
		*(d_byte++) = c_byte;
 8003584:	f803 1b01 	strb.w	r1, [r3], #1
		n--;
 8003588:	e7f9      	b.n	800357e <memset+0x6>

0800358a <_stdout_hook_default>:
}
 800358a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800358e:	4770      	bx	lr

08003590 <stm32_exti_init>:
	defined(CONFIG_SOC_SERIES_STM32MP1X) || \
	defined(CONFIG_SOC_SERIES_STM32U5X) || \
	defined(CONFIG_SOC_SERIES_STM32WBX) || \
	defined(CONFIG_SOC_SERIES_STM32G4X) || \
	defined(CONFIG_SOC_SERIES_STM32WLX)
	IRQ_CONNECT(EXTI0_IRQn,
 8003590:	2200      	movs	r2, #0
{
 8003592:	b508      	push	{r3, lr}
	IRQ_CONNECT(EXTI0_IRQn,
 8003594:	4611      	mov	r1, r2
 8003596:	2006      	movs	r0, #6
 8003598:	f7fd fea6 	bl	80012e8 <z_arm_irq_priority_set>
		CONFIG_EXTI_STM32_EXTI0_IRQ_PRI,
		__stm32_exti_isr_0, DEVICE_DT_GET(EXTI_NODE),
		0);
	IRQ_CONNECT(EXTI1_IRQn,
 800359c:	2200      	movs	r2, #0
 800359e:	4611      	mov	r1, r2
 80035a0:	2007      	movs	r0, #7
 80035a2:	f7fd fea1 	bl	80012e8 <z_arm_irq_priority_set>
	IRQ_CONNECT(EXTI2_TSC_IRQn,
		CONFIG_EXTI_STM32_EXTI2_IRQ_PRI,
		__stm32_exti_isr_2, DEVICE_DT_GET(EXTI_NODE),
		0);
#else
	IRQ_CONNECT(EXTI2_IRQn,
 80035a6:	2200      	movs	r2, #0
 80035a8:	4611      	mov	r1, r2
 80035aa:	2008      	movs	r0, #8
 80035ac:	f7fd fe9c 	bl	80012e8 <z_arm_irq_priority_set>
		CONFIG_EXTI_STM32_EXTI2_IRQ_PRI,
		__stm32_exti_isr_2, DEVICE_DT_GET(EXTI_NODE),
		0);
#endif /* CONFIG_SOC_SERIES_STM32F3X */
	IRQ_CONNECT(EXTI3_IRQn,
 80035b0:	2200      	movs	r2, #0
 80035b2:	4611      	mov	r1, r2
 80035b4:	2009      	movs	r0, #9
 80035b6:	f7fd fe97 	bl	80012e8 <z_arm_irq_priority_set>
		CONFIG_EXTI_STM32_EXTI3_IRQ_PRI,
		__stm32_exti_isr_3, DEVICE_DT_GET(EXTI_NODE),
		0);
	IRQ_CONNECT(EXTI4_IRQn,
 80035ba:	2200      	movs	r2, #0
 80035bc:	4611      	mov	r1, r2
 80035be:	200a      	movs	r0, #10
 80035c0:	f7fd fe92 	bl	80012e8 <z_arm_irq_priority_set>
		__stm32_exti_isr_4, DEVICE_DT_GET(EXTI_NODE),
		0);
#if !defined(CONFIG_SOC_SERIES_STM32MP1X) && \
	!defined(CONFIG_SOC_SERIES_STM32L5X) && \
	!defined(CONFIG_SOC_SERIES_STM32U5X)
	IRQ_CONNECT(EXTI9_5_IRQn,
 80035c4:	2200      	movs	r2, #0
 80035c6:	4611      	mov	r1, r2
 80035c8:	2017      	movs	r0, #23
 80035ca:	f7fd fe8d 	bl	80012e8 <z_arm_irq_priority_set>
		CONFIG_EXTI_STM32_EXTI9_5_IRQ_PRI,
		__stm32_exti_isr_9_5, DEVICE_DT_GET(EXTI_NODE),
		0);
	IRQ_CONNECT(EXTI15_10_IRQn,
 80035ce:	2200      	movs	r2, #0
 80035d0:	4611      	mov	r1, r2
 80035d2:	2028      	movs	r0, #40	; 0x28
 80035d4:	f7fd fe88 	bl	80012e8 <z_arm_irq_priority_set>
#endif /* CONFIG_SOC_SERIES_STM32MP1X || CONFIG_SOC_SERIES_STM32L5X */

#if defined(CONFIG_SOC_SERIES_STM32F2X) || \
	defined(CONFIG_SOC_SERIES_STM32F4X) || \
	defined(CONFIG_SOC_SERIES_STM32F7X)
	IRQ_CONNECT(PVD_IRQn,
 80035d8:	2200      	movs	r2, #0
 80035da:	4611      	mov	r1, r2
 80035dc:	2001      	movs	r0, #1
 80035de:	f7fd fe83 	bl	80012e8 <z_arm_irq_priority_set>
		CONFIG_EXTI_STM32_PVD_IRQ_PRI,
		__stm32_exti_isr_16, DEVICE_DT_GET(EXTI_NODE),
		0);
#if !defined(CONFIG_SOC_STM32F410RX)
	IRQ_CONNECT(OTG_FS_WKUP_IRQn,
 80035e2:	2200      	movs	r2, #0
 80035e4:	4611      	mov	r1, r2
 80035e6:	202a      	movs	r0, #42	; 0x2a
 80035e8:	f7fd fe7e 	bl	80012e8 <z_arm_irq_priority_set>
		CONFIG_EXTI_STM32_OTG_FS_WKUP_IRQ_PRI,
		__stm32_exti_isr_18, DEVICE_DT_GET(EXTI_NODE),
		0);
#endif
	IRQ_CONNECT(TAMP_STAMP_IRQn,
 80035ec:	2200      	movs	r2, #0
 80035ee:	4611      	mov	r1, r2
 80035f0:	2002      	movs	r0, #2
 80035f2:	f7fd fe79 	bl	80012e8 <z_arm_irq_priority_set>
		CONFIG_EXTI_STM32_TAMP_STAMP_IRQ_PRI,
		__stm32_exti_isr_21, DEVICE_DT_GET(EXTI_NODE),
		0);
	IRQ_CONNECT(RTC_WKUP_IRQn,
 80035f6:	2200      	movs	r2, #0
 80035f8:	4611      	mov	r1, r2
 80035fa:	2003      	movs	r0, #3
 80035fc:	f7fd fe74 	bl	80012e8 <z_arm_irq_priority_set>
}
 8003600:	2000      	movs	r0, #0
 8003602:	bd08      	pop	{r3, pc}

08003604 <__stm32_exti_isr_22>:
	__stm32_exti_isr(22, 23, arg);
 8003604:	6902      	ldr	r2, [r0, #16]
 8003606:	2117      	movs	r1, #23
 8003608:	2016      	movs	r0, #22
 800360a:	f7fe bacb 	b.w	8001ba4 <__stm32_exti_isr.isra.0>

0800360e <__stm32_exti_isr_21>:
	__stm32_exti_isr(21, 22, arg);
 800360e:	6902      	ldr	r2, [r0, #16]
 8003610:	2116      	movs	r1, #22
 8003612:	2015      	movs	r0, #21
 8003614:	f7fe bac6 	b.w	8001ba4 <__stm32_exti_isr.isra.0>

08003618 <__stm32_exti_isr_18>:
	__stm32_exti_isr(18, 19, arg);
 8003618:	6902      	ldr	r2, [r0, #16]
 800361a:	2113      	movs	r1, #19
 800361c:	2012      	movs	r0, #18
 800361e:	f7fe bac1 	b.w	8001ba4 <__stm32_exti_isr.isra.0>

08003622 <__stm32_exti_isr_16>:
	__stm32_exti_isr(16, 17, arg);
 8003622:	6902      	ldr	r2, [r0, #16]
 8003624:	2111      	movs	r1, #17
 8003626:	2010      	movs	r0, #16
 8003628:	f7fe babc 	b.w	8001ba4 <__stm32_exti_isr.isra.0>

0800362c <__stm32_exti_isr_15_10>:
	__stm32_exti_isr(10, 16, arg);
 800362c:	6902      	ldr	r2, [r0, #16]
 800362e:	2110      	movs	r1, #16
 8003630:	200a      	movs	r0, #10
 8003632:	f7fe bab7 	b.w	8001ba4 <__stm32_exti_isr.isra.0>

08003636 <__stm32_exti_isr_9_5>:
	__stm32_exti_isr(5, 10, arg);
 8003636:	6902      	ldr	r2, [r0, #16]
 8003638:	210a      	movs	r1, #10
 800363a:	2005      	movs	r0, #5
 800363c:	f7fe bab2 	b.w	8001ba4 <__stm32_exti_isr.isra.0>

08003640 <__stm32_exti_isr_4>:
	__stm32_exti_isr(4, 5, arg);
 8003640:	6902      	ldr	r2, [r0, #16]
 8003642:	2105      	movs	r1, #5
 8003644:	2004      	movs	r0, #4
 8003646:	f7fe baad 	b.w	8001ba4 <__stm32_exti_isr.isra.0>

0800364a <__stm32_exti_isr_3>:
	__stm32_exti_isr(3, 4, arg);
 800364a:	6902      	ldr	r2, [r0, #16]
 800364c:	2104      	movs	r1, #4
 800364e:	2003      	movs	r0, #3
 8003650:	f7fe baa8 	b.w	8001ba4 <__stm32_exti_isr.isra.0>

08003654 <__stm32_exti_isr_2>:
	__stm32_exti_isr(2, 3, arg);
 8003654:	6902      	ldr	r2, [r0, #16]
 8003656:	2103      	movs	r1, #3
 8003658:	2002      	movs	r0, #2
 800365a:	f7fe baa3 	b.w	8001ba4 <__stm32_exti_isr.isra.0>

0800365e <__stm32_exti_isr_1>:
	__stm32_exti_isr(1, 2, arg);
 800365e:	6902      	ldr	r2, [r0, #16]
 8003660:	2102      	movs	r1, #2
 8003662:	2001      	movs	r0, #1
 8003664:	f7fe ba9e 	b.w	8001ba4 <__stm32_exti_isr.isra.0>

08003668 <__stm32_exti_isr_0>:
	__stm32_exti_isr(0, 1, arg);
 8003668:	6902      	ldr	r2, [r0, #16]
 800366a:	2101      	movs	r1, #1
 800366c:	2000      	movs	r0, #0
 800366e:	f7fe ba99 	b.w	8001ba4 <__stm32_exti_isr.isra.0>

08003672 <config_pll_init>:
	pllinit->PLLN = STM32_PLL_N_MULTIPLIER;
 8003672:	f44f 73a8 	mov.w	r3, #336	; 0x150
 8003676:	2208      	movs	r2, #8
 8003678:	e9c0 2300 	strd	r2, r3, [r0]
	pllinit->PLLP = pllp(STM32_PLL_P_DIVISOR);
 800367c:	2300      	movs	r3, #0
 800367e:	6083      	str	r3, [r0, #8]
}
 8003680:	4770      	bx	lr

08003682 <LL_RCC_MSI_Disable>:
 * @brief Function kept for driver genericity
 */
void LL_RCC_MSI_Disable(void)
{
	/* Do nothing */
}
 8003682:	4770      	bx	lr

08003684 <gpio_stm32_port_get_raw>:
	GPIO_TypeDef *gpio = (GPIO_TypeDef *)cfg->base;
 8003684:	6843      	ldr	r3, [r0, #4]
 8003686:	685b      	ldr	r3, [r3, #4]
  * @param  GPIOx GPIO Port
  * @retval Input data register value of port
  */
__STATIC_INLINE uint32_t LL_GPIO_ReadInputPort(GPIO_TypeDef *GPIOx)
{
  return (uint32_t)(READ_REG(GPIOx->IDR));
 8003688:	691b      	ldr	r3, [r3, #16]
	*value = LL_GPIO_ReadInputPort(gpio);
 800368a:	600b      	str	r3, [r1, #0]
}
 800368c:	2000      	movs	r0, #0
 800368e:	4770      	bx	lr

08003690 <gpio_stm32_port_set_masked_raw>:
	GPIO_TypeDef *gpio = (GPIO_TypeDef *)cfg->base;
 8003690:	6843      	ldr	r3, [r0, #4]
 8003692:	685b      	ldr	r3, [r3, #4]
  * @param  GPIOx GPIO Port
  * @retval Output data register value of port
  */
__STATIC_INLINE uint32_t LL_GPIO_ReadOutputPort(GPIO_TypeDef *GPIOx)
{
  return (uint32_t)(READ_REG(GPIOx->ODR));
 8003694:	6958      	ldr	r0, [r3, #20]
	LL_GPIO_WriteOutputPort(gpio, (port_value & ~mask) | (mask & value));
 8003696:	4042      	eors	r2, r0
 8003698:	400a      	ands	r2, r1
 800369a:	4042      	eors	r2, r0
  WRITE_REG(GPIOx->ODR, PortValue);
 800369c:	615a      	str	r2, [r3, #20]
}
 800369e:	2000      	movs	r0, #0
 80036a0:	4770      	bx	lr

080036a2 <gpio_stm32_port_set_bits_raw>:
	GPIO_TypeDef *gpio = (GPIO_TypeDef *)cfg->base;
 80036a2:	6843      	ldr	r3, [r0, #4]
 80036a4:	685b      	ldr	r3, [r3, #4]
}
 80036a6:	2000      	movs	r0, #0
	WRITE_REG(gpio->BSRR, pins);
 80036a8:	6199      	str	r1, [r3, #24]
}
 80036aa:	4770      	bx	lr

080036ac <gpio_stm32_port_clear_bits_raw>:
	GPIO_TypeDef *gpio = (GPIO_TypeDef *)cfg->base;
 80036ac:	6843      	ldr	r3, [r0, #4]
 80036ae:	685b      	ldr	r3, [r3, #4]
  *         @arg @ref LL_GPIO_PIN_ALL
  * @retval None
  */
__STATIC_INLINE void LL_GPIO_ResetOutputPin(GPIO_TypeDef *GPIOx, uint32_t PinMask)
{
  WRITE_REG(GPIOx->BSRR, (PinMask << 16));
 80036b0:	0409      	lsls	r1, r1, #16
 80036b2:	6199      	str	r1, [r3, #24]
}
 80036b4:	2000      	movs	r0, #0
 80036b6:	4770      	bx	lr

080036b8 <gpio_stm32_port_toggle_bits>:
	GPIO_TypeDef *gpio = (GPIO_TypeDef *)cfg->base;
 80036b8:	6843      	ldr	r3, [r0, #4]
 80036ba:	685a      	ldr	r2, [r3, #4]
	WRITE_REG(gpio->ODR, READ_REG(gpio->ODR) ^ pins);
 80036bc:	6953      	ldr	r3, [r2, #20]
 80036be:	404b      	eors	r3, r1
 80036c0:	6153      	str	r3, [r2, #20]
}
 80036c2:	2000      	movs	r0, #0
 80036c4:	4770      	bx	lr

080036c6 <gpio_stm32_manage_callback>:

static int gpio_stm32_manage_callback(const struct device *dev,
				      struct gpio_callback *callback,
				      bool set)
{
	struct gpio_stm32_data *data = dev->data;
 80036c6:	6903      	ldr	r3, [r0, #16]
 *
 * @return A pointer on the first node of the list (or NULL if none)
 */
static inline sys_snode_t *sys_slist_peek_head(sys_slist_t *list)
{
	return list->head;
 80036c8:	6898      	ldr	r0, [r3, #8]
{
 80036ca:	b530      	push	{r4, r5, lr}
					bool set)
{
	__ASSERT(callback, "No callback!");
	__ASSERT(callback->handler, "No callback handler!");

	if (!sys_slist_is_empty(callbacks)) {
 80036cc:	b158      	cbz	r0, 80036e6 <gpio_stm32_manage_callback+0x20>
 */
static inline bool sys_slist_find_and_remove(sys_slist_t *list,
					     sys_snode_t *node);

/** @} */
Z_GENLIST_FIND_AND_REMOVE(slist, snode)
 80036ce:	2400      	movs	r4, #0
 80036d0:	4281      	cmp	r1, r0
 80036d2:	d112      	bne.n	80036fa <gpio_stm32_manage_callback+0x34>
	return node->next;
 80036d4:	6808      	ldr	r0, [r1, #0]
	return list->tail;
 80036d6:	68dd      	ldr	r5, [r3, #12]
Z_GENLIST_REMOVE(slist, snode)
 80036d8:	b954      	cbnz	r4, 80036f0 <gpio_stm32_manage_callback+0x2a>
 80036da:	428d      	cmp	r5, r1
	list->head = node;
 80036dc:	6098      	str	r0, [r3, #8]
Z_GENLIST_REMOVE(slist, snode)
 80036de:	d100      	bne.n	80036e2 <gpio_stm32_manage_callback+0x1c>
	list->tail = node;
 80036e0:	60d8      	str	r0, [r3, #12]
	parent->next = child;
 80036e2:	2000      	movs	r0, #0
 80036e4:	6008      	str	r0, [r1, #0]
				return -EINVAL;
			}
		}
	}

	if (set) {
 80036e6:	b96a      	cbnz	r2, 8003704 <gpio_stm32_manage_callback+0x3e>
		sys_slist_prepend(callbacks, &callback->node);
	}

	return 0;
 80036e8:	2000      	movs	r0, #0

	return gpio_manage_callback(&data->cb, callback, set);
}
 80036ea:	bd30      	pop	{r4, r5, pc}
 80036ec:	4628      	mov	r0, r5
 80036ee:	e7ef      	b.n	80036d0 <gpio_stm32_manage_callback+0xa>
Z_GENLIST_REMOVE(slist, snode)
 80036f0:	428d      	cmp	r5, r1
	parent->next = child;
 80036f2:	6020      	str	r0, [r4, #0]
	list->tail = node;
 80036f4:	bf08      	it	eq
 80036f6:	60dc      	streq	r4, [r3, #12]
}
 80036f8:	e7f3      	b.n	80036e2 <gpio_stm32_manage_callback+0x1c>
	return node->next;
 80036fa:	6805      	ldr	r5, [r0, #0]
Z_GENLIST_FIND_AND_REMOVE(slist, snode)
 80036fc:	4604      	mov	r4, r0
 80036fe:	2d00      	cmp	r5, #0
 8003700:	d1f4      	bne.n	80036ec <gpio_stm32_manage_callback+0x26>
			if (!set) {
 8003702:	b13a      	cbz	r2, 8003714 <gpio_stm32_manage_callback+0x4e>
Z_GENLIST_PREPEND(slist, snode)
 8003704:	68d8      	ldr	r0, [r3, #12]
	parent->next = child;
 8003706:	689a      	ldr	r2, [r3, #8]
 8003708:	600a      	str	r2, [r1, #0]
	list->head = node;
 800370a:	6099      	str	r1, [r3, #8]
Z_GENLIST_PREPEND(slist, snode)
 800370c:	2800      	cmp	r0, #0
 800370e:	d1eb      	bne.n	80036e8 <gpio_stm32_manage_callback+0x22>
	list->tail = node;
 8003710:	60d9      	str	r1, [r3, #12]
}
 8003712:	e7ea      	b.n	80036ea <gpio_stm32_manage_callback+0x24>
				return -EINVAL;
 8003714:	f06f 0015 	mvn.w	r0, #21
	return gpio_manage_callback(&data->cb, callback, set);
 8003718:	e7e7      	b.n	80036ea <gpio_stm32_manage_callback+0x24>

0800371a <gpio_stm32_isr>:
{
 800371a:	460b      	mov	r3, r1
 800371c:	6889      	ldr	r1, [r1, #8]
 800371e:	b570      	push	{r4, r5, r6, lr}
					const struct device *port,
					uint32_t pins)
{
	struct gpio_callback *cb, *tmp;

	SYS_SLIST_FOR_EACH_CONTAINER_SAFE(list, cb, tmp, node) {
 8003720:	b169      	cbz	r1, 800373e <gpio_stm32_isr+0x24>
	gpio_fire_callbacks(&data->cb, data->dev, BIT(line));
 8003722:	2501      	movs	r5, #1
 8003724:	685e      	ldr	r6, [r3, #4]
	return node->next;
 8003726:	680c      	ldr	r4, [r1, #0]
 8003728:	4085      	lsls	r5, r0
		if (cb->pin_mask & pins) {
 800372a:	688a      	ldr	r2, [r1, #8]
 800372c:	402a      	ands	r2, r5
 800372e:	d002      	beq.n	8003736 <gpio_stm32_isr+0x1c>
			__ASSERT(cb->handler, "No callback handler!");
			cb->handler(port, cb, cb->pin_mask & pins);
 8003730:	684b      	ldr	r3, [r1, #4]
 8003732:	4630      	mov	r0, r6
 8003734:	4798      	blx	r3
	SYS_SLIST_FOR_EACH_CONTAINER_SAFE(list, cb, tmp, node) {
 8003736:	b114      	cbz	r4, 800373e <gpio_stm32_isr+0x24>
 8003738:	4621      	mov	r1, r4
 800373a:	6824      	ldr	r4, [r4, #0]
 800373c:	e7f5      	b.n	800372a <gpio_stm32_isr+0x10>
}
 800373e:	bd70      	pop	{r4, r5, r6, pc}

08003740 <gpio_stm32_configure>:
	GPIO_TypeDef *gpio = (GPIO_TypeDef *)cfg->base;
 8003740:	6840      	ldr	r0, [r0, #4]
{
 8003742:	b5f0      	push	{r4, r5, r6, r7, lr}
	GPIO_TypeDef *gpio = (GPIO_TypeDef *)cfg->base;
 8003744:	6844      	ldr	r4, [r0, #4]
	pinval = 1 << pin;
 8003746:	2001      	movs	r0, #1
  MODIFY_REG(GPIOx->OTYPER, PinMask, (PinMask * OutputType));
 8003748:	6867      	ldr	r7, [r4, #4]
 800374a:	4088      	lsls	r0, r1
	LL_GPIO_SetPinOutputType(gpio, pin_ll, otype >> STM32_OTYPER_SHIFT);
 800374c:	f3c2 1680 	ubfx	r6, r2, #6, #1
 8003750:	ea27 0700 	bic.w	r7, r7, r0
 8003754:	408e      	lsls	r6, r1
 8003756:	433e      	orrs	r6, r7
 8003758:	6066      	str	r6, [r4, #4]
   __ASM ("rbit %0, %1" : "=r" (result) : "r" (value) );
 800375a:	fa90 f7a0 	rbit	r7, r0
  return __builtin_clz(value);
 800375e:	fab7 f787 	clz	r7, r7
  MODIFY_REG(GPIOx->OSPEEDR, (GPIO_OSPEEDER_OSPEEDR0 << (POSITION_VAL(Pin) * 2U)),
 8003762:	f8d4 c008 	ldr.w	ip, [r4, #8]
 8003766:	f04f 0e03 	mov.w	lr, #3
 800376a:	007f      	lsls	r7, r7, #1
 800376c:	fa0e f707 	lsl.w	r7, lr, r7
 8003770:	ea2c 0c07 	bic.w	ip, ip, r7
   __ASM ("rbit %0, %1" : "=r" (result) : "r" (value) );
 8003774:	fa90 f7a0 	rbit	r7, r0
  return __builtin_clz(value);
 8003778:	fab7 f787 	clz	r7, r7
	LL_GPIO_SetPinSpeed(gpio, pin_ll, ospeed >> STM32_OSPEEDR_SHIFT);
 800377c:	f3c2 16c1 	ubfx	r6, r2, #7, #2
 8003780:	007f      	lsls	r7, r7, #1
 8003782:	40be      	lsls	r6, r7
 8003784:	ea46 060c 	orr.w	r6, r6, ip
 8003788:	60a6      	str	r6, [r4, #8]
   __ASM ("rbit %0, %1" : "=r" (result) : "r" (value) );
 800378a:	fa90 f6a0 	rbit	r6, r0
  return __builtin_clz(value);
 800378e:	fab6 f686 	clz	r6, r6
  MODIFY_REG(GPIOx->PUPDR, (GPIO_PUPDR_PUPDR0 << (POSITION_VAL(Pin) * 2U)), (Pull << (POSITION_VAL(Pin) * 2U)));
 8003792:	68e7      	ldr	r7, [r4, #12]
 8003794:	0076      	lsls	r6, r6, #1
 8003796:	fa0e f606 	lsl.w	r6, lr, r6
 800379a:	ea27 0706 	bic.w	r7, r7, r6
   __ASM ("rbit %0, %1" : "=r" (result) : "r" (value) );
 800379e:	fa90 f6a0 	rbit	r6, r0
  return __builtin_clz(value);
 80037a2:	fab6 f686 	clz	r6, r6
	mode = conf & (STM32_MODER_MASK << STM32_MODER_SHIFT);
 80037a6:	f002 0530 	and.w	r5, r2, #48	; 0x30
 80037aa:	0076      	lsls	r6, r6, #1
	LL_GPIO_SetPinPull(gpio, pin_ll, pupd >> STM32_PUPDR_SHIFT);
 80037ac:	f3c2 2241 	ubfx	r2, r2, #9, #2
 80037b0:	40b2      	lsls	r2, r6
 80037b2:	433a      	orrs	r2, r7
	if (mode == STM32_MODER_ALT_MODE) {
 80037b4:	2d20      	cmp	r5, #32
 80037b6:	60e2      	str	r2, [r4, #12]
 80037b8:	d115      	bne.n	80037e6 <gpio_stm32_configure+0xa6>
		if (pin < 8) {
 80037ba:	2907      	cmp	r1, #7
 80037bc:	dc2b      	bgt.n	8003816 <gpio_stm32_configure+0xd6>
   __ASM ("rbit %0, %1" : "=r" (result) : "r" (value) );
 80037be:	fa90 f2a0 	rbit	r2, r0
  MODIFY_REG(GPIOx->AFR[0], (GPIO_AFRL_AFSEL0 << (POSITION_VAL(Pin) * 4U)),
 80037c2:	6a21      	ldr	r1, [r4, #32]
  if (value == 0U)
 80037c4:	b32a      	cbz	r2, 8003812 <gpio_stm32_configure+0xd2>
  return __builtin_clz(value);
 80037c6:	fab2 f282 	clz	r2, r2
 80037ca:	0092      	lsls	r2, r2, #2
 80037cc:	260f      	movs	r6, #15
 80037ce:	fa06 f202 	lsl.w	r2, r6, r2
 80037d2:	ea21 0102 	bic.w	r1, r1, r2
   __ASM ("rbit %0, %1" : "=r" (result) : "r" (value) );
 80037d6:	fa90 f2a0 	rbit	r2, r0
  return __builtin_clz(value);
 80037da:	fab2 f282 	clz	r2, r2
 80037de:	0092      	lsls	r2, r2, #2
 80037e0:	4093      	lsls	r3, r2
 80037e2:	430b      	orrs	r3, r1
 80037e4:	6223      	str	r3, [r4, #32]
   __ASM ("rbit %0, %1" : "=r" (result) : "r" (value) );
 80037e6:	fa90 f3a0 	rbit	r3, r0
  return __builtin_clz(value);
 80037ea:	fab3 f383 	clz	r3, r3
  MODIFY_REG(GPIOx->MODER, (GPIO_MODER_MODER0 << (POSITION_VAL(Pin) * 2U)), (Mode << (POSITION_VAL(Pin) * 2U)));
 80037ee:	6822      	ldr	r2, [r4, #0]
   __ASM ("rbit %0, %1" : "=r" (result) : "r" (value) );
 80037f0:	fa90 f0a0 	rbit	r0, r0
 80037f4:	005b      	lsls	r3, r3, #1
 80037f6:	2103      	movs	r1, #3
  return __builtin_clz(value);
 80037f8:	fab0 f080 	clz	r0, r0
	LL_GPIO_SetPinMode(gpio, pin_ll, mode >> STM32_MODER_SHIFT);
 80037fc:	092d      	lsrs	r5, r5, #4
 80037fe:	fa01 f303 	lsl.w	r3, r1, r3
 8003802:	0040      	lsls	r0, r0, #1
 8003804:	ea22 0303 	bic.w	r3, r2, r3
 8003808:	fa05 f000 	lsl.w	r0, r5, r0
 800380c:	4318      	orrs	r0, r3
 800380e:	6020      	str	r0, [r4, #0]
}
 8003810:	bdf0      	pop	{r4, r5, r6, r7, pc}
    return 32U;
 8003812:	462a      	mov	r2, r5
 8003814:	e7d9      	b.n	80037ca <gpio_stm32_configure+0x8a>
  MODIFY_REG(GPIOx->AFR[1], (GPIO_AFRH_AFSEL8 << (POSITION_VAL(Pin >> 8U) * 4U)),
 8003816:	0a02      	lsrs	r2, r0, #8
 8003818:	6a66      	ldr	r6, [r4, #36]	; 0x24
   __ASM ("rbit %0, %1" : "=r" (result) : "r" (value) );
 800381a:	fa92 f1a2 	rbit	r1, r2
  if (value == 0U)
 800381e:	b181      	cbz	r1, 8003842 <gpio_stm32_configure+0x102>
  return __builtin_clz(value);
 8003820:	fab1 f181 	clz	r1, r1
 8003824:	0089      	lsls	r1, r1, #2
 8003826:	270f      	movs	r7, #15
   __ASM ("rbit %0, %1" : "=r" (result) : "r" (value) );
 8003828:	fa92 f2a2 	rbit	r2, r2
  return __builtin_clz(value);
 800382c:	fab2 f282 	clz	r2, r2
 8003830:	fa07 f101 	lsl.w	r1, r7, r1
 8003834:	0092      	lsls	r2, r2, #2
 8003836:	ea26 0101 	bic.w	r1, r6, r1
 800383a:	4093      	lsls	r3, r2
 800383c:	430b      	orrs	r3, r1
 800383e:	6263      	str	r3, [r4, #36]	; 0x24
}
 8003840:	e7d1      	b.n	80037e6 <gpio_stm32_configure+0xa6>
    return 32U;
 8003842:	4629      	mov	r1, r5
 8003844:	e7ee      	b.n	8003824 <gpio_stm32_configure+0xe4>

08003846 <gpio_stm32_config>:
{
 8003846:	b538      	push	{r3, r4, r5, lr}
 8003848:	460d      	mov	r5, r1
	if ((flags & GPIO_OUTPUT) != 0) {
 800384a:	0591      	lsls	r1, r2, #22
{
 800384c:	4604      	mov	r4, r0
 800384e:	4613      	mov	r3, r2
	if ((flags & GPIO_OUTPUT) != 0) {
 8003850:	d519      	bpl.n	8003886 <gpio_stm32_config+0x40>
		if ((flags & GPIO_SINGLE_ENDED) != 0) {
 8003852:	079a      	lsls	r2, r3, #30
 8003854:	d510      	bpl.n	8003878 <gpio_stm32_config+0x32>
			if (flags & GPIO_LINE_OPEN_DRAIN) {
 8003856:	0758      	lsls	r0, r3, #29
 8003858:	d530      	bpl.n	80038bc <gpio_stm32_config+0x76>
				*pincfg |= STM32_PINCFG_OPEN_DRAIN;
 800385a:	2250      	movs	r2, #80	; 0x50
		if ((flags & GPIO_PULL_UP) != 0) {
 800385c:	06d9      	lsls	r1, r3, #27
 800385e:	d50d      	bpl.n	800387c <gpio_stm32_config+0x36>
			*pincfg |= STM32_PINCFG_PULL_UP;
 8003860:	f442 7200 	orr.w	r2, r2, #512	; 0x200
		if ((flags & GPIO_OUTPUT_INIT_HIGH) != 0) {
 8003864:	0519      	lsls	r1, r3, #20
 8003866:	d41e      	bmi.n	80038a6 <gpio_stm32_config+0x60>
		} else if ((flags & GPIO_OUTPUT_INIT_LOW) != 0) {
 8003868:	0558      	lsls	r0, r3, #21
 800386a:	d515      	bpl.n	8003898 <gpio_stm32_config+0x52>
			gpio_stm32_port_clear_bits_raw(dev, BIT(pin));
 800386c:	2101      	movs	r1, #1
 800386e:	40a9      	lsls	r1, r5
 8003870:	4620      	mov	r0, r4
 8003872:	f7ff ff1b 	bl	80036ac <gpio_stm32_port_clear_bits_raw>
 8003876:	e00f      	b.n	8003898 <gpio_stm32_config+0x52>
		*pincfg = STM32_PINCFG_MODE_OUTPUT;
 8003878:	2210      	movs	r2, #16
 800387a:	e7ef      	b.n	800385c <gpio_stm32_config+0x16>
		} else if ((flags & GPIO_PULL_DOWN) != 0) {
 800387c:	0698      	lsls	r0, r3, #26
 800387e:	d5f1      	bpl.n	8003864 <gpio_stm32_config+0x1e>
			*pincfg |= STM32_PINCFG_PULL_DOWN;
 8003880:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
	if (err != 0) {
 8003884:	e7ee      	b.n	8003864 <gpio_stm32_config+0x1e>
	} else if  ((flags & GPIO_INPUT) != 0) {
 8003886:	05d1      	lsls	r1, r2, #23
 8003888:	d513      	bpl.n	80038b2 <gpio_stm32_config+0x6c>
		if ((flags & GPIO_PULL_UP) != 0) {
 800388a:	06da      	lsls	r2, r3, #27
 800388c:	d413      	bmi.n	80038b6 <gpio_stm32_config+0x70>
			*pincfg |= STM32_PINCFG_PULL_DOWN;
 800388e:	f013 0220 	ands.w	r2, r3, #32
 8003892:	bf18      	it	ne
 8003894:	f44f 6280 	movne.w	r2, #1024	; 0x400
	gpio_stm32_configure(dev, pin, pincfg, 0);
 8003898:	4620      	mov	r0, r4
 800389a:	2300      	movs	r3, #0
 800389c:	4629      	mov	r1, r5
 800389e:	f7ff ff4f 	bl	8003740 <gpio_stm32_configure>
 80038a2:	2000      	movs	r0, #0
}
 80038a4:	bd38      	pop	{r3, r4, r5, pc}
	GPIO_TypeDef *gpio = (GPIO_TypeDef *)cfg->base;
 80038a6:	6861      	ldr	r1, [r4, #4]
			gpio_stm32_port_set_bits_raw(dev, BIT(pin));
 80038a8:	2301      	movs	r3, #1
	GPIO_TypeDef *gpio = (GPIO_TypeDef *)cfg->base;
 80038aa:	6849      	ldr	r1, [r1, #4]
			gpio_stm32_port_set_bits_raw(dev, BIT(pin));
 80038ac:	40ab      	lsls	r3, r5
	WRITE_REG(gpio->BSRR, pins);
 80038ae:	618b      	str	r3, [r1, #24]
	return 0;
 80038b0:	e7f2      	b.n	8003898 <gpio_stm32_config+0x52>
		*pincfg = STM32_PINCFG_MODE_ANALOG;
 80038b2:	2230      	movs	r2, #48	; 0x30
 80038b4:	e7f0      	b.n	8003898 <gpio_stm32_config+0x52>
			*pincfg |= STM32_PINCFG_PULL_UP;
 80038b6:	f44f 7200 	mov.w	r2, #512	; 0x200
 80038ba:	e7ed      	b.n	8003898 <gpio_stm32_config+0x52>
				return -ENOTSUP;
 80038bc:	f06f 0085 	mvn.w	r0, #133	; 0x85
	return err;
 80038c0:	e7f0      	b.n	80038a4 <gpio_stm32_config+0x5e>

080038c2 <gpio_stm32_init>:
 */
static int gpio_stm32_init(const struct device *dev)
{
	struct gpio_stm32_data *data = dev->data;

	data->dev = dev;
 80038c2:	6902      	ldr	r2, [r0, #16]
#ifdef CONFIG_PM_DEVICE_RUNTIME
	pm_device_enable(dev);

	return 0;
#else
	return gpio_stm32_clock_request(dev, true);
 80038c4:	2101      	movs	r1, #1
	data->dev = dev;
 80038c6:	6050      	str	r0, [r2, #4]
	return gpio_stm32_clock_request(dev, true);
 80038c8:	f7fe bb98 	b.w	8001ffc <gpio_stm32_clock_request>

080038cc <LL_USART_ClearFlag_FE>:
  * @rmtoll SR           PE            LL_USART_ClearFlag_PE
  * @param  USARTx USART Instance
  * @retval None
  */
__STATIC_INLINE void LL_USART_ClearFlag_PE(USART_TypeDef *USARTx)
{
 80038cc:	b082      	sub	sp, #8
  __IO uint32_t tmpreg;
  tmpreg = USARTx->SR;
 80038ce:	6803      	ldr	r3, [r0, #0]
 80038d0:	9301      	str	r3, [sp, #4]
  (void) tmpreg;
 80038d2:	9b01      	ldr	r3, [sp, #4]
  tmpreg = USARTx->DR;
 80038d4:	6843      	ldr	r3, [r0, #4]
 80038d6:	9301      	str	r3, [sp, #4]
  (void) tmpreg;
 80038d8:	9b01      	ldr	r3, [sp, #4]
}
 80038da:	b002      	add	sp, #8
 80038dc:	4770      	bx	lr

080038de <uart_stm32_poll_in>:
{
 80038de:	b508      	push	{r3, lr}
	USART_TypeDef *UartInstance = UART_STRUCT(dev);
 80038e0:	6843      	ldr	r3, [r0, #4]
 80038e2:	6818      	ldr	r0, [r3, #0]
  return (READ_BIT(USARTx->SR, USART_SR_ORE) == (USART_SR_ORE));
 80038e4:	6803      	ldr	r3, [r0, #0]
	if (LL_USART_IsActiveFlag_ORE(UartInstance)) {
 80038e6:	071a      	lsls	r2, r3, #28
 80038e8:	d501      	bpl.n	80038ee <uart_stm32_poll_in+0x10>
		LL_USART_ClearFlag_ORE(UartInstance);
 80038ea:	f7ff ffef 	bl	80038cc <LL_USART_ClearFlag_FE>
  return (READ_BIT(USARTx->SR, USART_SR_RXNE) == (USART_SR_RXNE));
 80038ee:	6803      	ldr	r3, [r0, #0]
	if (!LL_USART_IsActiveFlag_RXNE(UartInstance)) {
 80038f0:	069b      	lsls	r3, r3, #26
  * @param  USARTx USART Instance
  * @retval Value between Min_Data=0x00 and Max_Data=0xFF
  */
__STATIC_INLINE uint8_t LL_USART_ReceiveData8(USART_TypeDef *USARTx)
{
  return (uint8_t)(READ_BIT(USARTx->DR, USART_DR_DR));
 80038f2:	bf43      	ittte	mi
 80038f4:	6843      	ldrmi	r3, [r0, #4]
 80038f6:	700b      	strbmi	r3, [r1, #0]
	return 0;
 80038f8:	2000      	movmi	r0, #0
		return -1;
 80038fa:	f04f 30ff 	movpl.w	r0, #4294967295	; 0xffffffff
}
 80038fe:	bd08      	pop	{r3, pc}

08003900 <uart_stm32_poll_out>:
	USART_TypeDef *UartInstance = UART_STRUCT(dev);
 8003900:	6843      	ldr	r3, [r0, #4]
 8003902:	681b      	ldr	r3, [r3, #0]
  return (READ_BIT(USARTx->SR, USART_SR_TXE) == (USART_SR_TXE));
 8003904:	681a      	ldr	r2, [r3, #0]
	while (!LL_USART_IsActiveFlag_TXE(UartInstance)) {
 8003906:	0612      	lsls	r2, r2, #24
 8003908:	d5fc      	bpl.n	8003904 <uart_stm32_poll_out+0x4>
  * @param  Value between Min_Data=0x00 and Max_Data=0xFF
  * @retval None
  */
__STATIC_INLINE void LL_USART_TransmitData8(USART_TypeDef *USARTx, uint8_t Value)
{
  USARTx->DR = Value;
 800390a:	6059      	str	r1, [r3, #4]
}
 800390c:	4770      	bx	lr

0800390e <uart_stm32_err_check>:
{
 800390e:	b508      	push	{r3, lr}
	USART_TypeDef *UartInstance = UART_STRUCT(dev);
 8003910:	6843      	ldr	r3, [r0, #4]
 8003912:	6818      	ldr	r0, [r3, #0]
  return (READ_BIT(USARTx->SR, USART_SR_ORE) == (USART_SR_ORE));
 8003914:	6802      	ldr	r2, [r0, #0]
  return (READ_BIT(USARTx->SR, USART_SR_PE) == (USART_SR_PE));
 8003916:	6803      	ldr	r3, [r0, #0]
	if (LL_USART_IsActiveFlag_PE(UartInstance)) {
 8003918:	07db      	lsls	r3, r3, #31
  return (READ_BIT(USARTx->SR, USART_SR_FE) == (USART_SR_FE));
 800391a:	6803      	ldr	r3, [r0, #0]
	if (LL_USART_IsActiveFlag_ORE(UartInstance)) {
 800391c:	f3c2 02c0 	ubfx	r2, r2, #3, #1
		err |= UART_ERROR_PARITY;
 8003920:	bf48      	it	mi
 8003922:	f042 0202 	orrmi.w	r2, r2, #2
	if (LL_USART_IsActiveFlag_FE(UartInstance)) {
 8003926:	0799      	lsls	r1, r3, #30
		err |= UART_ERROR_FRAMING;
 8003928:	bf48      	it	mi
 800392a:	f042 0204 	orrmi.w	r2, r2, #4
	if (err & UART_ERROR_OVERRUN) {
 800392e:	07d3      	lsls	r3, r2, #31
 8003930:	d501      	bpl.n	8003936 <uart_stm32_err_check+0x28>
		LL_USART_ClearFlag_ORE(UartInstance);
 8003932:	f7ff ffcb 	bl	80038cc <LL_USART_ClearFlag_FE>
	if (err & UART_ERROR_PARITY) {
 8003936:	0791      	lsls	r1, r2, #30
 8003938:	d501      	bpl.n	800393e <uart_stm32_err_check+0x30>
		LL_USART_ClearFlag_PE(UartInstance);
 800393a:	f7ff ffc7 	bl	80038cc <LL_USART_ClearFlag_FE>
	if (err & UART_ERROR_FRAMING) {
 800393e:	0753      	lsls	r3, r2, #29
 8003940:	d501      	bpl.n	8003946 <uart_stm32_err_check+0x38>
		LL_USART_ClearFlag_FE(UartInstance);
 8003942:	f7ff ffc3 	bl	80038cc <LL_USART_ClearFlag_FE>
	LL_USART_ClearFlag_NE(UartInstance);
 8003946:	f7ff ffc1 	bl	80038cc <LL_USART_ClearFlag_FE>
}
 800394a:	4610      	mov	r0, r2
 800394c:	bd08      	pop	{r3, pc}

0800394e <uart_stm32_config_get>:
	cfg->baudrate = data->baud_rate;
 800394e:	6903      	ldr	r3, [r0, #16]
 8003950:	681b      	ldr	r3, [r3, #0]
 8003952:	600b      	str	r3, [r1, #0]
	USART_TypeDef *UartInstance = UART_STRUCT(dev);
 8003954:	6843      	ldr	r3, [r0, #4]
 8003956:	681a      	ldr	r2, [r3, #0]
  return (uint32_t)(READ_BIT(USARTx->CR1, USART_CR1_PS | USART_CR1_PCE));
 8003958:	68d3      	ldr	r3, [r2, #12]
 800395a:	f403 63c0 	and.w	r3, r3, #1536	; 0x600
	switch (parity) {
 800395e:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
 8003962:	d029      	beq.n	80039b8 <uart_stm32_config_get+0x6a>
		return UART_CFG_PARITY_NONE;
 8003964:	f5a3 6cc0 	sub.w	ip, r3, #1536	; 0x600
 8003968:	f1dc 0300 	rsbs	r3, ip, #0
 800396c:	eb43 030c 	adc.w	r3, r3, ip
	cfg->parity = uart_stm32_ll2cfg_parity(uart_stm32_get_parity(dev));
 8003970:	710b      	strb	r3, [r1, #4]
  return (uint32_t)(READ_BIT(USARTx->CR2, USART_CR2_STOP));
 8003972:	6913      	ldr	r3, [r2, #16]
 8003974:	f403 5340 	and.w	r3, r3, #12288	; 0x3000
	switch (sb) {
 8003978:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
 800397c:	d01e      	beq.n	80039bc <uart_stm32_config_get+0x6e>
 800397e:	f5b3 5f40 	cmp.w	r3, #12288	; 0x3000
 8003982:	d01d      	beq.n	80039c0 <uart_stm32_config_get+0x72>
 8003984:	2b00      	cmp	r3, #0
 8003986:	bf14      	ite	ne
 8003988:	2303      	movne	r3, #3
 800398a:	2301      	moveq	r3, #1
	cfg->stop_bits = uart_stm32_ll2cfg_stopbits(
 800398c:	714b      	strb	r3, [r1, #5]
  return (uint32_t)(READ_BIT(USARTx->CR1, USART_CR1_M));
 800398e:	68d0      	ldr	r0, [r2, #12]
  return (uint32_t)(READ_BIT(USARTx->CR1, USART_CR1_PS | USART_CR1_PCE));
 8003990:	68d3      	ldr	r3, [r2, #12]
	switch (db) {
 8003992:	04c0      	lsls	r0, r0, #19
 8003994:	f403 63c0 	and.w	r3, r3, #1536	; 0x600
 8003998:	d514      	bpl.n	80039c4 <uart_stm32_config_get+0x76>
			return UART_CFG_DATA_BITS_9;
 800399a:	2b00      	cmp	r3, #0
 800399c:	bf14      	ite	ne
 800399e:	2303      	movne	r3, #3
 80039a0:	2304      	moveq	r3, #4
	cfg->data_bits = uart_stm32_ll2cfg_databits(
 80039a2:	718b      	strb	r3, [r1, #6]
  return (uint32_t)(READ_BIT(USARTx->CR3, USART_CR3_RTSE | USART_CR3_CTSE));
 80039a4:	6953      	ldr	r3, [r2, #20]
 80039a6:	f403 7340 	and.w	r3, r3, #768	; 0x300
	if (fc == LL_USART_HWCONTROL_RTS_CTS) {
 80039aa:	f5a3 7240 	sub.w	r2, r3, #768	; 0x300
 80039ae:	4253      	negs	r3, r2
 80039b0:	4153      	adcs	r3, r2
 80039b2:	71cb      	strb	r3, [r1, #7]
}
 80039b4:	2000      	movs	r0, #0
 80039b6:	4770      	bx	lr
	switch (parity) {
 80039b8:	2302      	movs	r3, #2
 80039ba:	e7d9      	b.n	8003970 <uart_stm32_config_get+0x22>
		return UART_CFG_STOP_BITS_0_5;
 80039bc:	2300      	movs	r3, #0
 80039be:	e7e5      	b.n	800398c <uart_stm32_config_get+0x3e>
		return UART_CFG_STOP_BITS_1_5;
 80039c0:	2302      	movs	r3, #2
 80039c2:	e7e3      	b.n	800398c <uart_stm32_config_get+0x3e>
			return UART_CFG_DATA_BITS_7;
 80039c4:	2b00      	cmp	r3, #0
 80039c6:	bf0c      	ite	eq
 80039c8:	2303      	moveq	r3, #3
 80039ca:	2302      	movne	r3, #2
 80039cc:	e7e9      	b.n	80039a2 <uart_stm32_config_get+0x54>

080039ce <z_device_state_init>:
}
 80039ce:	4770      	bx	lr

080039d0 <z_device_ready>:
{
	/*
	 * if an invalid device pointer is passed as argument, this call
	 * reports the `device` as not ready for usage.
	 */
	if (dev == NULL) {
 80039d0:	b138      	cbz	r0, 80039e2 <z_device_ready+0x12>
		return false;
	}

	return dev->state->initialized && (dev->state->init_res == 0U);
 80039d2:	68c3      	ldr	r3, [r0, #12]
 80039d4:	8818      	ldrh	r0, [r3, #0]
 80039d6:	f3c0 0008 	ubfx	r0, r0, #0, #9
 80039da:	f5a0 7380 	sub.w	r3, r0, #256	; 0x100
 80039de:	4258      	negs	r0, r3
 80039e0:	4158      	adcs	r0, r3
}
 80039e2:	4770      	bx	lr

080039e4 <arch_system_halt>:
	__asm__ volatile(
 80039e4:	f04f 0210 	mov.w	r2, #16
 80039e8:	f3ef 8311 	mrs	r3, BASEPRI
 80039ec:	f382 8812 	msr	BASEPRI_MAX, r2
 80039f0:	f3bf 8f6f 	isb	sy
	for (;;) {
 80039f4:	e7fe      	b.n	80039f4 <arch_system_halt+0x10>

080039f6 <k_thread_name_get>:
}
 80039f6:	2000      	movs	r0, #0
 80039f8:	4770      	bx	lr

080039fa <idle>:
#endif	/* CONFIG_PM */
	sys_clock_idle_exit();
}

void idle(void *unused1, void *unused2, void *unused3)
{
 80039fa:	b508      	push	{r3, lr}
 80039fc:	f04f 0210 	mov.w	r2, #16
 8003a00:	f3ef 8311 	mrs	r3, BASEPRI
 8003a04:	f382 8812 	msr	BASEPRI_MAX, r2
 8003a08:	f3bf 8f6f 	isb	sy
 *
 * @return N/A
 */
static inline void k_cpu_idle(void)
{
	arch_cpu_idle();
 8003a0c:	f7fd fc16 	bl	800123c <arch_cpu_idle>
 8003a10:	e7f4      	b.n	80039fc <idle+0x2>

08003a12 <sys_dlist_remove>:
	sys_dnode_t *const next = node->next;
 8003a12:	e9d0 3200 	ldrd	r3, r2, [r0]
	prev->next = next;
 8003a16:	6013      	str	r3, [r2, #0]
	next->prev = prev;
 8003a18:	605a      	str	r2, [r3, #4]
	node->next = NULL;
 8003a1a:	2300      	movs	r3, #0
	node->prev = NULL;
 8003a1c:	e9c0 3300 	strd	r3, r3, [r0]
	sys_dnode_init(node);
}
 8003a20:	4770      	bx	lr

08003a22 <unpend_thread_no_timeout>:
{
 8003a22:	b508      	push	{r3, lr}
	sys_dlist_remove(&thread->base.qnode_dlist);
 8003a24:	f7ff fff5 	bl	8003a12 <sys_dlist_remove>
	thread->base.thread_state &= ~_THREAD_PENDING;
 8003a28:	7b43      	ldrb	r3, [r0, #13]
 8003a2a:	f023 0302 	bic.w	r3, r3, #2
 8003a2e:	7343      	strb	r3, [r0, #13]
	thread->base.pended_on = NULL;
 8003a30:	2300      	movs	r3, #0
 8003a32:	6083      	str	r3, [r0, #8]
}
 8003a34:	bd08      	pop	{r3, pc}

08003a36 <z_reschedule_irqlock>:
	return arch_irq_unlocked(key) && !arch_is_in_isr();
 8003a36:	4603      	mov	r3, r0
 8003a38:	b920      	cbnz	r0, 8003a44 <z_reschedule_irqlock+0xe>
  __ASM volatile ("MRS %0, ipsr" : "=r" (result) );
 8003a3a:	f3ef 8205 	mrs	r2, IPSR
	if (resched(key)) {
 8003a3e:	b90a      	cbnz	r2, 8003a44 <z_reschedule_irqlock+0xe>
	ret = arch_swap(key);
 8003a40:	f7fd bc92 	b.w	8001368 <arch_swap>
	__asm__ volatile(
 8003a44:	f383 8811 	msr	BASEPRI, r3
 8003a48:	f3bf 8f6f 	isb	sy
}
 8003a4c:	4770      	bx	lr

08003a4e <z_reschedule_unlocked>:
	__asm__ volatile(
 8003a4e:	f04f 0310 	mov.w	r3, #16
 8003a52:	f3ef 8011 	mrs	r0, BASEPRI
 8003a56:	f383 8812 	msr	BASEPRI_MAX, r3
 8003a5a:	f3bf 8f6f 	isb	sy
	(void) z_reschedule_irqlock(arch_irq_lock());
 8003a5e:	f7ff bfea 	b.w	8003a36 <z_reschedule_irqlock>

08003a62 <z_priq_dumb_best>:
{
 8003a62:	4603      	mov	r3, r0
	return list->head == list;
 8003a64:	6800      	ldr	r0, [r0, #0]
}
 8003a66:	4283      	cmp	r3, r0
 8003a68:	bf08      	it	eq
 8003a6a:	2000      	moveq	r0, #0
 8003a6c:	4770      	bx	lr

08003a6e <z_ready_thread>:
{
 8003a6e:	b510      	push	{r4, lr}
 8003a70:	f04f 0310 	mov.w	r3, #16
 8003a74:	f3ef 8411 	mrs	r4, BASEPRI
 8003a78:	f383 8812 	msr	BASEPRI_MAX, r3
 8003a7c:	f3bf 8f6f 	isb	sy
			ready_thread(thread);
 8003a80:	f7ff f94a 	bl	8002d18 <ready_thread>
	__asm__ volatile(
 8003a84:	f384 8811 	msr	BASEPRI, r4
 8003a88:	f3bf 8f6f 	isb	sy
}
 8003a8c:	bd10      	pop	{r4, pc}

08003a8e <z_thread_timeout>:
{
 8003a8e:	b510      	push	{r4, lr}
 8003a90:	4601      	mov	r1, r0
	__asm__ volatile(
 8003a92:	f04f 0310 	mov.w	r3, #16
 8003a96:	f3ef 8411 	mrs	r4, BASEPRI
 8003a9a:	f383 8812 	msr	BASEPRI_MAX, r3
 8003a9e:	f3bf 8f6f 	isb	sy
		if (!killed) {
 8003aa2:	f810 3c0b 	ldrb.w	r3, [r0, #-11]
 8003aa6:	f013 0f28 	tst.w	r3, #40	; 0x28
 8003aaa:	d10d      	bne.n	8003ac8 <z_thread_timeout+0x3a>
			if (thread->base.pended_on != NULL) {
 8003aac:	f851 3c10 	ldr.w	r3, [r1, #-16]
	struct k_thread *thread = CONTAINER_OF(timeout,
 8003ab0:	3818      	subs	r0, #24
			if (thread->base.pended_on != NULL) {
 8003ab2:	b10b      	cbz	r3, 8003ab8 <z_thread_timeout+0x2a>
				unpend_thread_no_timeout(thread);
 8003ab4:	f7ff ffb5 	bl	8003a22 <unpend_thread_no_timeout>
	thread->base.thread_state &= ~_THREAD_SUSPENDED;
 8003ab8:	f811 3c0b 	ldrb.w	r3, [r1, #-11]
 8003abc:	f023 0314 	bic.w	r3, r3, #20
 8003ac0:	f801 3c0b 	strb.w	r3, [r1, #-11]
			ready_thread(thread);
 8003ac4:	f7ff f928 	bl	8002d18 <ready_thread>
	__asm__ volatile(
 8003ac8:	f384 8811 	msr	BASEPRI, r4
 8003acc:	f3bf 8f6f 	isb	sy
}
 8003ad0:	bd10      	pop	{r4, pc}

08003ad2 <z_abort_timeout>:
{
 8003ad2:	b510      	push	{r4, lr}
	__asm__ volatile(
 8003ad4:	f04f 0210 	mov.w	r2, #16
 8003ad8:	f3ef 8411 	mrs	r4, BASEPRI
 8003adc:	f382 8812 	msr	BASEPRI_MAX, r2
 8003ae0:	f3bf 8f6f 	isb	sy
		if (sys_dnode_is_linked(&to->node)) {
 8003ae4:	6803      	ldr	r3, [r0, #0]
 8003ae6:	b13b      	cbz	r3, 8003af8 <z_abort_timeout+0x26>
			remove_timeout(to);
 8003ae8:	f7ff fb2c 	bl	8003144 <remove_timeout>
			ret = 0;
 8003aec:	2000      	movs	r0, #0
	__asm__ volatile(
 8003aee:	f384 8811 	msr	BASEPRI, r4
 8003af2:	f3bf 8f6f 	isb	sy
}
 8003af6:	bd10      	pop	{r4, pc}
	int ret = -EINVAL;
 8003af8:	f06f 0015 	mvn.w	r0, #21
 8003afc:	e7f7      	b.n	8003aee <z_abort_timeout+0x1c>

08003afe <z_set_timeout_expiry>:
{
 8003afe:	b570      	push	{r4, r5, r6, lr}
 8003b00:	4604      	mov	r4, r0
 8003b02:	460d      	mov	r5, r1
	__asm__ volatile(
 8003b04:	f04f 0310 	mov.w	r3, #16
 8003b08:	f3ef 8611 	mrs	r6, BASEPRI
 8003b0c:	f383 8812 	msr	BASEPRI_MAX, r3
 8003b10:	f3bf 8f6f 	isb	sy
		int next_to = next_timeout();
 8003b14:	f7ff faee 	bl	80030f4 <next_timeout>
		if (!imminent && (sooner || IS_ENABLED(CONFIG_SMP))) {
 8003b18:	2801      	cmp	r0, #1
 8003b1a:	dd05      	ble.n	8003b28 <z_set_timeout_expiry+0x2a>
 8003b1c:	42a0      	cmp	r0, r4
 8003b1e:	db03      	blt.n	8003b28 <z_set_timeout_expiry+0x2a>
			sys_clock_set_timeout(MIN(ticks, next_to), is_idle);
 8003b20:	4629      	mov	r1, r5
 8003b22:	4620      	mov	r0, r4
 8003b24:	f7fe fc2c 	bl	8002380 <sys_clock_set_timeout>
	__asm__ volatile(
 8003b28:	f386 8811 	msr	BASEPRI, r6
 8003b2c:	f3bf 8f6f 	isb	sy
}
 8003b30:	bd70      	pop	{r4, r5, r6, pc}

08003b32 <sys_clock_tick_get_32>:

uint32_t sys_clock_tick_get_32(void)
{
 8003b32:	b508      	push	{r3, lr}
#ifdef CONFIG_TICKLESS_KERNEL
	return (uint32_t)sys_clock_tick_get();
 8003b34:	f7ff fbf6 	bl	8003324 <sys_clock_tick_get>
#else
	return (uint32_t)curr_tick;
#endif
}
 8003b38:	bd08      	pop	{r3, pc}

08003b3a <z_impl_k_uptime_ticks>:

int64_t z_impl_k_uptime_ticks(void)
{
	return sys_clock_tick_get();
 8003b3a:	f7ff bbf3 	b.w	8003324 <sys_clock_tick_get>
