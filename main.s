	.cpu arm7tdmi
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.arm
	.syntax divided
	.file	"main.c"
	.text
	.align	2
	.type	generateRockets.part.9, %function
generateRockets.part.9:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #2
	mov	r2, #8
	ldr	r3, .L12
	ldr	r0, [r3]
	stmfd	sp!, {r4, lr}
	ldr	r3, .L12+4
	ldr	lr, .L12+8
	cmp	r0, #0
	str	r1, [lr, #20]
	strh	r2, [r3]	@ movhi
	ble	.L1
	ldr	ip, .L12+12
	ldr	r3, [ip, #16]
	cmp	r3, #0
	movne	r2, ip
	movne	r3, #0
	bne	.L5
	b	.L3
.L6:
	ldr	r1, [r2, #16]
	cmp	r1, #0
	beq	.L3
.L5:
	add	r3, r3, #1
	cmp	r3, r0
	add	r2, r2, #20
	bne	.L6
.L1:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L3:
	mov	r1, #1
	add	r3, r3, r3, lsl #2
	mov	r3, r3, asl #2
	ldr	r4, [lr]
	ldr	r0, [lr, #4]
	add	r2, ip, r3
	str	r4, [ip, r3]
	str	r0, [r2, #4]
	str	r1, [r2, #16]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	.LANCHOR0
	.word	shadowOAM+364
	.word	boo
	.word	rockets
	.size	generateRockets.part.9, .-generateRockets.part.9
	.align	2
	.type	attackEnemies.part.11, %function
attackEnemies.part.11:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #20
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r4, .L27
	mov	r3, #0
	ldr	r2, .L27+4
	ldr	r1, .L27+8
	ldr	r0, .L27+12
	ldr	r5, .L27+16
	str	ip, [r4, #32]
	mov	lr, pc
	bx	r5
	ldr	r3, .L27+20
	ldr	ip, [r3, #4]
	cmp	ip, #0
	ble	.L14
	ldr	lr, .L27+24
	ldr	r3, [lr, #16]
	cmp	r3, #0
	movne	r2, lr
	movne	r1, #0
	bne	.L18
	b	.L25
.L19:
	ldr	r0, [r2, #16]
	cmp	r0, #0
	beq	.L26
	mov	r1, r3
.L18:
	add	r3, r1, #1
	cmp	r3, ip
	add	r2, r2, #20
	bne	.L19
.L14:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L26:
	add	r1, r1, #58
.L16:
	mov	r5, #1
	add	r3, r3, r3, lsl #2
	ldmia	r4, {r0, r2}
	ldr	ip, .L27+28
	mov	r3, r3, asl #2
	add	r4, lr, r3
	mov	r1, r1, asl #3
	mov	r2, r2, asr #8
	mov	r0, r0, asr #8
	str	r5, [r4, #16]
	add	r5, ip, r1
	str	r2, [r4, #4]
	str	r0, [lr, r3]
	strh	r2, [r5, #2]	@ movhi
	strh	r0, [ip, r1]	@ movhi
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L25:
	mov	r1, #57
	b	.L16
.L28:
	.align	2
.L27:
	.word	kirby
	.word	11025
	.word	11232
	.word	hit
	.word	playSoundB
	.word	.LANCHOR0
	.word	arrows
	.word	shadowOAM
	.size	attackEnemies.part.11, .-attackEnemies.part.11
	.align	2
	.global	hideSprites
	.type	hideSprites, %function
hideSprites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	mov	r1, #512
	ldr	r2, .L33
.L30:
	strh	r1, [r2, r3]	@ movhi
	add	r3, r3, #8
	cmp	r3, #1024
	bne	.L30
	stmfd	sp!, {r4, lr}
	mov	r3, #512
	ldr	r4, .L33+4
	mov	r2, #117440512
	ldr	r1, .L33
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldmfd	sp!, {r4, lr}
	bx	lr
.L34:
	.align	2
.L33:
	.word	shadowOAM
	.word	DMANow
	.size	hideSprites, .-hideSprites
	.align	2
	.global	initialize
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	fp, #0
	mov	r4, #3
	mov	r5, #1
	ldr	lr, .L62
	ldr	ip, .L62+4
	ldr	r3, .L62+8
	ldr	r2, .L62+12
	ldr	r1, .L62+16
	ldr	r6, .L62+20
	str	fp, [lr]
	str	fp, [ip]
	ldr	lr, .L62+24
	ldr	ip, .L62+28
	mov	r0, r4
	str	r4, [r6]
	str	fp, [r3]
	str	fp, [r2]
	mov	r3, #256
	ldr	r2, .L62+32
	str	fp, [r1]
	ldr	r6, .L62+36
	ldr	r1, .L62+40
	str	r5, [ip]
	str	fp, [lr]
	mov	lr, pc
	bx	r6
	mov	r0, r4
	mov	r3, #16384
	ldr	r2, .L62+44
	ldr	r1, .L62+48
	mov	lr, pc
	bx	r6
	mov	r4, #24
	mov	lr, #26
	mov	ip, #30
	mov	r0, #8960
	mov	r2, #27392
	mov	r3, #12
	ldr	r1, .L62+52
	ldr	r10, .L62+56
	str	r5, [r1, #16]
	ldr	r5, [r10, #8]
	cmp	r5, fp
	str	fp, [r1, #8]
	str	fp, [r1, #28]
	str	fp, [r1, #36]
	str	r4, [r1, #20]
	str	lr, [r1, #24]
	str	ip, [r1, #12]
	stmia	r1, {r0, r2}
	str	r3, [r1, #32]
	ble	.L40
	mov	r8, #29
	mov	r9, fp
	mov	r7, #22
	ldr	r4, .L62+60
	ldr	r5, .L62+64
	ldr	r6, .L62+68
.L39:
	str	r9, [r4]
	mov	lr, pc
	bx	r5
	smull	r2, r3, r6, r0
	mov	ip, r0, asr #31
	add	r3, r3, r0
	rsb	r3, ip, r3, asr #7
	add	lr, r3, r3, lsl #1
	ldr	ip, [r10, #8]
	add	lr, r3, lr, lsl #2
	add	fp, fp, #1
	add	r3, r3, lr, lsl #4
	rsb	r0, r3, r0
	cmp	ip, fp
	stmib	r4, {r0, r7, r8, r9}
	add	r4, r4, #20
	bgt	.L39
.L40:
	ldr	r3, [r10, #12]
	cmp	r3, #0
	ble	.L38
	mov	fp, #0
	mov	r8, #15
	mov	r6, fp
	mov	r7, #16
	ldr	r4, .L62+72
	ldr	r5, .L62+64
	ldr	r9, .L62+76
.L43:
	str	r6, [r4]
	mov	lr, pc
	bx	r5
	smull	r2, r3, r9, r0
	ldr	ip, [r10, #12]
	sub	r3, r3, r0, asr #31
	add	fp, fp, #1
	add	r3, r3, r3, lsl #1
	sub	r3, r0, r3, asl #1
	cmp	ip, fp
	str	r6, [r4, #16]
	str	r8, [r4, #8]
	str	r7, [r4, #12]
	str	r3, [r4, #4]
	add	r4, r4, #20
	bgt	.L43
.L38:
	mov	r4, #1
	mov	lr, #10
	mov	r5, #25
	mov	ip, #30
	mov	r0, #15
	ldr	r2, [r10]
	ldr	r3, .L62+80
	cmp	r2, #0
	str	lr, [r3]
	str	r5, [r3, #12]
	str	ip, [r3, #4]
	str	r0, [r3, #8]
	str	r4, [r3, #16]
	str	r4, [r3, #20]
	ble	.L42
	mov	r5, #0
	mov	r4, #24
	ldr	r3, .L62+84
	add	r2, r2, r2, lsl #2
	add	r2, r3, r2, lsl #2
.L46:
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r5, [r3, #16]
	str	r4, [r3, #8]
	str	r0, [r3, #12]
	add	r3, r3, #20
	cmp	r3, r2
	bne	.L46
.L42:
	ldr	r2, [r10, #4]
	cmp	r2, #0
	ble	.L45
	mov	r5, #0
	mov	r4, #10
	mov	lr, #4
	ldr	r1, .L62+52
	ldr	r3, .L62+88
	ldr	ip, [r1]
	ldr	r0, [r1, #4]
	add	r2, r2, r2, lsl #2
	add	r2, r3, r2, lsl #2
	mov	ip, ip, asr #8
	mov	r0, r0, asr #8
.L49:
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r5, [r3, #16]
	str	r4, [r3, #8]
	str	lr, [r3, #12]
	add	r3, r3, #20
	cmp	r3, r2
	bne	.L49
.L45:
	ldr	r3, .L62+20
	ldr	r0, [r3]
	cmp	r0, #0
	ble	.L48
	mov	r2, #5
	mov	r5, #3
	mov	r4, #27
	mov	lr, #22
	mov	ip, #1
	add	r0, r0, r0, lsl #1
	rsb	r0, r0, r0, lsl #3
	ldr	r3, .L62+92
	add	r0, r0, r2
.L52:
	str	r2, [r3, #4]
	add	r2, r2, #21
	cmp	r2, r0
	str	r5, [r3]
	str	r4, [r3, #8]
	str	lr, [r3, #12]
	str	ip, [r3, #16]
	add	r3, r3, #20
	bne	.L52
.L48:
	ldr	r3, [r10, #16]
	cmp	r3, #0
	ble	.L51
	mov	r9, #0
	mov	r7, #32
	mov	fp, r9
	mov	r6, #16
	ldr	r8, .L62+96
	ldr	r5, .L62+64
	ldr	r4, .L62+68
.L53:
	str	fp, [r8]
	mov	lr, pc
	bx	r5
	smull	r2, r3, r4, r0
	mov	r2, r0, asr #31
	add	r3, r3, r0
	rsb	r3, r2, r3, asr #7
	add	r2, r3, r3, lsl #1
	ldr	ip, [r10, #16]
	add	r2, r3, r2, lsl #2
	add	r9, r9, #1
	add	r3, r3, r2, lsl #4
	rsb	r3, r3, r0
	cmp	ip, r9
	stmib	r8, {r3, r6, r7, fp}
	add	r8, r8, #20
	bgt	.L53
.L51:
	ldr	r3, .L62+100
	mov	lr, pc
	bx	r3
	ldr	r3, .L62+104
	mov	lr, pc
	bx	r3
	ldr	r4, .L62+108
	mov	r3, #1
	ldr	r2, .L62+112
	ldr	r1, .L62+116
	ldr	r0, .L62+120
	mov	lr, pc
	bx	r4
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L63:
	.align	2
.L62:
	.word	timer
	.word	jumpTimer
	.word	collisionTimer
	.word	firstCollision
	.word	numOrbsCollected
	.word	lives
	.word	cheatMode
	.word	gameStarted
	.word	83886592
	.word	DMANow
	.word	kirby_spritesPal
	.word	100728832
	.word	kirby_spritesTiles
	.word	kirby
	.word	.LANCHOR0
	.word	platforms
	.word	rand
	.word	-1664556703
	.word	orbs
	.word	715827883
	.word	boo
	.word	rockets
	.word	arrows
	.word	playerLives
	.word	spikePlatforms
	.word	setupSounds
	.word	setupInterrupts
	.word	playSoundA
	.word	11025
	.word	1212192
	.word	bubblyclouds
	.size	initialize, .-initialize
	.align	2
	.global	goToStart
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	initialize
	mov	r3, #67108864
	mov	r1, #4352
	mov	r2, #5248
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	bl	hideSprites
	ldr	r0, .L66
	ldr	r3, .L66+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L66+8
	ldr	r3, .L66+12
	mov	r2, #100663296
	ldr	r1, .L66+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L66+20
	ldr	r1, .L66+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L66+28
	ldmfd	sp!, {r4, lr}
	str	r2, [r3]
	bx	lr
.L67:
	.align	2
.L66:
	.word	startscreenPal
	.word	loadPalette
	.word	DMANow
	.word	17792
	.word	startscreenTiles
	.word	100704256
	.word	startscreenMap
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	goToStory
	.type	goToStory, %function
goToStory:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #6528
	mov	r3, #67108864
	stmfd	sp!, {r4, lr}
	ldr	r0, .L70
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, .L70+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L70+8
	mov	r3, #32768
	mov	r2, #100663296
	ldr	r1, .L70+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L70+16
	ldr	r1, .L70+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L70+24
	ldmfd	sp!, {r4, lr}
	str	r2, [r3]
	bx	lr
.L71:
	.align	2
.L70:
	.word	storyscreenPal
	.word	loadPalette
	.word	DMANow
	.word	storyscreenTiles
	.word	100714496
	.word	storyscreenMap
	.word	state
	.size	goToStory, .-goToStory
	.align	2
	.global	start
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L79
	stmfd	sp!, {r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L79+4
	ldr	r3, [r3]
	tst	r3, #8
	beq	.L72
	ldr	r3, .L79+8
	ldr	r3, [r3]
	tst	r3, #8
	beq	.L78
.L72:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L78:
	ldmfd	sp!, {r4, lr}
	b	goToStory
.L80:
	.align	2
.L79:
	.word	waitForVblank
	.word	oldButtons
	.word	buttons
	.size	start, .-start
	.align	2
	.global	goToStory2
	.type	goToStory2, %function
goToStory2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #6272
	mov	r3, #67108864
	stmfd	sp!, {r4, lr}
	ldr	r0, .L83
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, .L83+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L83+8
	ldr	r3, .L83+12
	mov	r2, #100663296
	ldr	r1, .L83+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L83+20
	ldr	r1, .L83+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L83+28
	ldmfd	sp!, {r4, lr}
	str	r2, [r3]
	bx	lr
.L84:
	.align	2
.L83:
	.word	storyscreen2Pal
	.word	loadPalette
	.word	DMANow
	.word	17344
	.word	storyscreen2Tiles
	.word	100712448
	.word	storyscreen2Map
	.word	state
	.size	goToStory2, .-goToStory2
	.align	2
	.global	story
	.type	story, %function
story:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L92
	stmfd	sp!, {r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L92+4
	ldr	r3, [r3]
	tst	r3, #8
	beq	.L85
	ldr	r3, .L92+8
	ldr	r3, [r3]
	tst	r3, #8
	beq	.L91
.L85:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L91:
	ldmfd	sp!, {r4, lr}
	b	goToStory2
.L93:
	.align	2
.L92:
	.word	waitForVblank
	.word	oldButtons
	.word	buttons
	.size	story, .-story
	.align	2
	.global	goToColor
	.type	goToColor, %function
goToColor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #6528
	mov	r3, #67108864
	stmfd	sp!, {r4, lr}
	ldr	r0, .L96
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, .L96+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L96+8
	ldr	r3, .L96+12
	mov	r2, #100663296
	ldr	r1, .L96+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L96+20
	ldr	r1, .L96+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L96+28
	ldmfd	sp!, {r4, lr}
	str	r2, [r3]
	bx	lr
.L97:
	.align	2
.L96:
	.word	colorPal
	.word	loadPalette
	.word	DMANow
	.word	13536
	.word	colorTiles
	.word	100714496
	.word	colorMap
	.word	state
	.size	goToColor, .-goToColor
	.align	2
	.global	story2
	.type	story2, %function
story2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L105
	stmfd	sp!, {r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L105+4
	ldr	r3, [r3]
	tst	r3, #8
	beq	.L98
	ldr	r3, .L105+8
	ldr	r3, [r3]
	tst	r3, #8
	beq	.L104
.L98:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L104:
	ldmfd	sp!, {r4, lr}
	b	goToColor
.L106:
	.align	2
.L105:
	.word	waitForVblank
	.word	oldButtons
	.word	buttons
	.size	story2, .-story2
	.align	2
	.global	goToInstructions
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #512
	mov	r2, #67108864
	mov	r1, #5760
	ldr	r3, .L109
	stmfd	sp!, {r4, lr}
	ldr	r0, .L109+4
	strh	ip, [r3]	@ movhi
	strh	r1, [r2, #8]	@ movhi
	ldr	r3, .L109+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L109+12
	ldr	r3, .L109+16
	mov	r2, #100663296
	ldr	r1, .L109+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L109+24
	ldr	r1, .L109+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L109+32
	ldmfd	sp!, {r4, lr}
	str	r2, [r3]
	bx	lr
.L110:
	.align	2
.L109:
	.word	shadowOAM
	.word	instructionsPal
	.word	loadPalette
	.word	DMANow
	.word	14496
	.word	instructionsTiles
	.word	100708352
	.word	instructionsMap
	.word	state
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	color
	.type	color, %function
color:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r3, .L127
	mov	lr, pc
	bx	r3
	mov	lr, #70
	ldr	r3, .L127+4
	ldr	r0, .L127+8
	ldr	r2, [r3]
	ldr	r1, [r0, #36]
	ldr	r3, .L127+12
	ldr	ip, .L127+16
	add	r4, r1, #384
	tst	r2, #32
	strh	r4, [r3, #4]	@ movhi
	strh	lr, [r3]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	beq	.L112
	ldr	r3, .L127+20
	ldr	r3, [r3]
	tst	r3, #32
	bne	.L112
	cmp	r1, #7
	movle	r3, #24
	subgt	r1, r1, #8
	strgt	r1, [r0, #36]
	strle	r3, [r0, #36]
.L111:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L112:
	tst	r2, #16
	beq	.L115
	ldr	r3, .L127+20
	ldr	r3, [r3]
	ands	r3, r3, #16
	bne	.L115
	cmp	r1, #16
	addle	r1, r1, #8
	strle	r1, [r0, #36]
	strgt	r3, [r0, #36]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L115:
	tst	r2, #8
	beq	.L111
	ldr	r3, .L127+20
	ldr	r3, [r3]
	tst	r3, #8
	bne	.L111
	ldmfd	sp!, {r4, lr}
	b	goToInstructions
.L128:
	.align	2
.L127:
	.word	waitForVblank
	.word	oldButtons
	.word	kirby
	.word	shadowOAM
	.word	-32658
	.word	buttons
	.size	color, .-color
	.align	2
	.global	goToInstructions2
	.type	goToInstructions2, %function
goToInstructions2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #512
	mov	r2, #67108864
	mov	r1, #6016
	ldr	r3, .L131
	stmfd	sp!, {r4, lr}
	ldr	r0, .L131+4
	strh	ip, [r3]	@ movhi
	strh	r1, [r2, #8]	@ movhi
	ldr	r3, .L131+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L131+12
	mov	r3, #32768
	mov	r2, #100663296
	ldr	r1, .L131+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L131+20
	ldr	r1, .L131+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L131+28
	ldmfd	sp!, {r4, lr}
	str	r2, [r3]
	bx	lr
.L132:
	.align	2
.L131:
	.word	shadowOAM
	.word	instructions2Pal
	.word	loadPalette
	.word	DMANow
	.word	instructions2Tiles
	.word	100710400
	.word	instructions2Map
	.word	state
	.size	goToInstructions2, .-goToInstructions2
	.align	2
	.global	instructions
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #512
	ldr	r2, .L140
	stmfd	sp!, {r4, lr}
	ldr	r3, .L140+4
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L140+8
	ldr	r3, [r3]
	tst	r3, #8
	beq	.L133
	ldr	r3, .L140+12
	ldr	r3, [r3]
	tst	r3, #8
	beq	.L139
.L133:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L139:
	ldmfd	sp!, {r4, lr}
	b	goToInstructions2
.L141:
	.align	2
.L140:
	.word	shadowOAM
	.word	waitForVblank
	.word	oldButtons
	.word	buttons
	.size	instructions, .-instructions
	.align	2
	.global	goToGame
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r2, #7936
	mov	r0, #4864
	ldr	r1, .L144
	stmfd	sp!, {r4, lr}
	strh	r1, [r3, #10]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldr	r0, .L144+4
	ldr	r3, .L144+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L144+12
	ldr	r3, .L144+16
	ldr	r2, .L144+20
	ldr	r1, .L144+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L144+28
	ldr	r1, .L144+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #160
	mov	r2, #100663296
	ldr	r1, .L144+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L144+40
	ldr	r1, .L144+44
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L144+48
	ldmfd	sp!, {r4, lr}
	str	r2, [r3]
	bx	lr
.L145:
	.align	2
.L144:
	.word	7684
	.word	junglePal
	.word	loadPalette
	.word	DMANow
	.word	14672
	.word	100679680
	.word	stageonebackgroundTiles
	.word	100724736
	.word	stageonebackgroundMap
	.word	jungleTiles
	.word	100726784
	.word	jungleMap
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	instructions2
	.type	instructions2, %function
instructions2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L153
	stmfd	sp!, {r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L153+4
	ldr	r3, [r3]
	tst	r3, #8
	beq	.L146
	ldr	r3, .L153+8
	ldr	r3, [r3]
	tst	r3, #8
	beq	.L152
.L146:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L152:
	ldmfd	sp!, {r4, lr}
	b	goToGame
.L154:
	.align	2
.L153:
	.word	waitForVblank
	.word	oldButtons
	.word	buttons
	.size	instructions2, .-instructions2
	.align	2
	.global	goToPause
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #0
	mov	r2, #67108864
	mov	r1, #5760
	ldr	r3, .L157
	stmfd	sp!, {r4, lr}
	ldr	r0, .L157+4
	str	ip, [r3]
	strh	r1, [r2, #8]	@ movhi
	ldr	r3, .L157+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L157+12
	mov	r3, #32768
	mov	r2, #100663296
	ldr	r1, .L157+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L157+20
	ldr	r1, .L157+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	bl	hideSprites
	mov	r2, #7
	ldr	r3, .L157+28
	ldmfd	sp!, {r4, lr}
	str	r2, [r3]
	bx	lr
.L158:
	.align	2
.L157:
	.word	.LANCHOR1
	.word	pausescreenPal
	.word	loadPalette
	.word	DMANow
	.word	pausescreenTiles
	.word	100708352
	.word	pausescreenMap
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L171
	ldr	r3, [r4]
	tst	r3, #8
	beq	.L160
	ldr	r2, .L171+4
	ldr	r2, [r2]
	tst	r2, #8
	beq	.L169
.L160:
	tst	r3, #4
	beq	.L159
	ldr	r3, .L171+4
	ldr	r3, [r3]
	tst	r3, #4
	beq	.L170
.L159:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L170:
	ldmfd	sp!, {r4, lr}
	b	goToStart
.L169:
	bl	goToGame
	ldr	r3, [r4]
	b	.L160
.L172:
	.align	2
.L171:
	.word	oldButtons
	.word	buttons
	.size	pause, .-pause
	.align	2
	.global	goToWin
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #0
	mov	r2, #67108864
	mov	r1, #5248
	ldr	r3, .L175
	stmfd	sp!, {r4, lr}
	ldr	r0, .L175+4
	str	ip, [r3]
	strh	r1, [r2, #8]	@ movhi
	ldr	r3, .L175+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L175+12
	mov	r3, #32768
	mov	r2, #100663296
	ldr	r1, .L175+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L175+20
	ldr	r1, .L175+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	bl	hideSprites
	mov	r2, #9
	ldr	r3, .L175+28
	ldmfd	sp!, {r4, lr}
	str	r2, [r3]
	bx	lr
.L176:
	.align	2
.L175:
	.word	.LANCHOR1
	.word	winscreenPal
	.word	loadPalette
	.word	DMANow
	.word	winscreenTiles
	.word	100704256
	.word	winscreenMap
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	goToLose
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	ldr	r3, .L179
	stmfd	sp!, {r4, lr}
	str	r2, [r3]
	bl	hideSprites
	mov	r2, #5248
	mov	r3, #67108864
	ldr	r0, .L179+4
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, .L179+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L179+12
	mov	r3, #32768
	mov	r2, #100663296
	ldr	r1, .L179+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L179+20
	ldr	r1, .L179+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #8
	ldr	r3, .L179+28
	ldmfd	sp!, {r4, lr}
	str	r2, [r3]
	bx	lr
.L180:
	.align	2
.L179:
	.word	.LANCHOR1
	.word	losescreenPal
	.word	loadPalette
	.word	DMANow
	.word	losescreenTiles
	.word	100704256
	.word	losescreenMap
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	lose
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L188
	stmfd	sp!, {r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L188+4
	ldr	r3, [r3]
	tst	r3, #8
	beq	.L181
	ldr	r3, .L188+8
	ldr	r3, [r3]
	tst	r3, #8
	beq	.L187
.L181:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L187:
	ldmfd	sp!, {r4, lr}
	b	goToStart
.L189:
	.align	2
.L188:
	.word	stopSound
	.word	oldButtons
	.word	buttons
	.size	lose, .-lose
	.align	2
	.global	win
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	lose
	.size	win, .-win
	.align	2
	.global	updatePlayer
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r4, .L219
	ldr	r3, [r4]
	ldr	r2, [r4, #24]
	mov	r3, r3, asr #8
	add	r0, r4, #8
	ldmia	r0, {r0, r1}
	add	r1, r0, r1
	add	r0, r3, r2
	cmp	r0, #159
	str	r1, [r4, #8]
	ble	.L192
	mov	r1, #0
	rsb	r3, r2, #160
	mov	r3, r3, asl #8
	str	r1, [r4, #8]
	str	r3, [r4]
	mov	r3, r3, asr #8
.L192:
	cmp	r3, #0
	movlt	r3, #0
	ldr	r6, .L219+4
	strlt	r2, [r4]
	ldr	r2, [r6]
	strlt	r3, [r4, #8]
	tst	r2, #64
	beq	.L194
	ldr	r3, .L219+8
	ldr	r3, [r3]
	ands	r5, r3, #64
	beq	.L218
.L194:
	tst	r2, #1
	beq	.L195
	ldr	r3, .L219+8
	ldr	r3, [r3]
	tst	r3, #1
	beq	.L196
.L195:
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #32
	bne	.L197
	mov	r2, #12
	ldr	r3, [r4, #4]
	str	r2, [r4, #32]
	cmn	r3, #768
	ldr	r2, .L219
	subge	r3, r3, #200
	strge	r3, [r2, #4]
	mov	r2, #4
	ldr	r3, [r4, #36]
	ldr	r1, .L219+12
	add	r3, r3, #388
	strh	r3, [r1, #4]	@ movhi
	str	r2, [r4, #28]
.L197:
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #16
	bne	.L199
	ldr	r3, [r4, #20]
	ldr	r2, [r4, #4]
	rsb	r3, r3, #240
	cmp	r3, r2, asr #8
	mov	r1, #12
	ldr	r3, .L219
	addgt	r2, r2, #200
	strgt	r2, [r3, #4]
	mov	r2, #0
	ldr	r3, [r4, #36]
	str	r1, [r4, #32]
	ldr	r1, .L219+12
	add	r3, r3, #384
	strh	r3, [r1, #4]	@ movhi
	str	r2, [r4, #28]
.L199:
	ldr	r2, [r4, #8]
	cmp	r2, #0
	ldr	r1, .L219
	bge	.L201
	ldr	r3, [r1, #36]
	ldr	r0, [r1, #28]
	ldr	r1, .L219+12
	add	r3, r3, r0
	add	r3, r3, #512
	strh	r3, [r1, #4]	@ movhi
.L201:
	ldr	r3, [r4]
	add	r3, r3, r2
	str	r3, [r4]
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L196:
	ldr	r3, .L219+16
	ldr	r3, [r3]
	tst	r3, #1
	bne	.L195
	bl	attackEnemies.part.11
	b	.L195
.L218:
	ldr	r7, .L219+20
	ldr	r3, [r7]
	cmp	r3, #46
	ble	.L194
	mov	r3, r5
	ldr	r2, .L219+24
	ldr	r1, .L219+28
	ldr	r0, .L219+32
	ldr	r8, .L219+36
	mov	lr, pc
	bx	r8
	ldr	r3, .L219+40
	str	r5, [r7]
	ldr	r2, [r6]
	str	r3, [r4, #8]
	b	.L194
.L220:
	.align	2
.L219:
	.word	kirby
	.word	oldButtons
	.word	buttons
	.word	shadowOAM
	.word	timer
	.word	jumpTimer
	.word	11025
	.word	2857
	.word	jump
	.word	playSoundB
	.word	-700
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	generatePlatforms
	.type	generatePlatforms, %function
generatePlatforms:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L230
	ldr	r0, [r3, #8]
	cmp	r0, #0
	bxle	lr
	ldr	ip, .L230+4
	ldr	r3, [ip, #16]
	cmp	r3, #0
	movne	r2, ip
	movne	r3, #0
	bne	.L225
	b	.L223
.L226:
	ldr	r1, [r2, #16]
	cmp	r1, #0
	beq	.L223
.L225:
	add	r3, r3, #1
	cmp	r3, r0
	add	r2, r2, #20
	bne	.L226
	bx	lr
.L223:
	mov	r0, #0
	mov	r1, #1
	add	r3, r3, r3, lsl #2
	mov	r3, r3, asl #2
	add	r2, ip, r3
	str	r0, [ip, r3]
	str	r1, [r2, #16]
	bx	lr
.L231:
	.align	2
.L230:
	.word	.LANCHOR0
	.word	platforms
	.size	generatePlatforms, .-generatePlatforms
	.align	2
	.global	generateSpikePlatforms
	.type	generateSpikePlatforms, %function
generateSpikePlatforms:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L241
	ldr	r0, [r3, #16]
	cmp	r0, #0
	bxle	lr
	ldr	ip, .L241+4
	ldr	r3, [ip, #16]
	cmp	r3, #0
	movne	r2, ip
	movne	r3, #0
	bne	.L236
	b	.L234
.L237:
	ldr	r1, [r2, #16]
	cmp	r1, #0
	beq	.L234
.L236:
	add	r3, r3, #1
	cmp	r3, r0
	add	r2, r2, #20
	bne	.L237
	bx	lr
.L234:
	mov	r0, #0
	mov	r1, #1
	add	r3, r3, r3, lsl #2
	mov	r3, r3, asl #2
	add	r2, ip, r3
	str	r0, [ip, r3]
	str	r1, [r2, #16]
	bx	lr
.L242:
	.align	2
.L241:
	.word	.LANCHOR0
	.word	spikePlatforms
	.size	generateSpikePlatforms, .-generateSpikePlatforms
	.align	2
	.global	generateOrbs
	.type	generateOrbs, %function
generateOrbs:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r9, .L258
	ldr	r0, [r9, #12]
	cmp	r0, #0
	sub	sp, sp, #12
	ble	.L243
	ldr	r8, .L258+4
	ldr	r10, [r8, #16]
	cmp	r10, #0
	movne	r3, r8
	movne	r10, #0
	bne	.L247
	b	.L245
.L252:
	ldr	r1, [r3, #16]
	cmp	r1, #0
	beq	.L245
.L247:
	add	r10, r10, #1
	cmp	r10, r0
	add	r3, r3, #20
	bne	.L252
.L243:
	add	sp, sp, #12
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L245:
	mov	r3, #1
	mov	r2, r10, asl #2
	ldr	r1, [r9, #8]
	add	r7, r2, r10
	add	r7, r8, r7, lsl #2
	cmp	r1, #0
	str	r2, [sp, #4]
	str	r3, [r7, #16]
	ble	.L251
	mov	fp, #0
	ldr	r6, .L258+8
	ldr	r5, .L258+12
	ldr	r4, .L258+16
.L250:
	mov	lr, pc
	bx	r6
	smull	r3, r1, r4, r0
	mov	r3, r0, asr #31
	rsb	r3, r3, r1, asr #2
	add	r3, r3, r3, lsl #1
	rsb	r3, r3, r3, lsl #3
	rsb	r3, r3, r0
	add	r3, r3, r3, lsl #2
	add	r3, r5, r3, lsl #2
	ldr	r1, [r3, #16]
	cmp	r1, #1
	ldreq	r3, [r3, #4]
	addeq	r3, r3, r3, lsr #31
	moveq	r3, r3, asr #1
	streq	r3, [r7, #4]
	ldr	r3, [r9, #8]
	add	fp, fp, #1
	cmp	r3, fp
	bgt	.L250
.L251:
	mov	r3, #0
	ldr	r2, [sp, #4]
	add	r9, r2, r10
	mov	r9, r9, asl #2
	str	r3, [r8, r9]
	add	sp, sp, #12
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L259:
	.align	2
.L258:
	.word	.LANCHOR0
	.word	orbs
	.word	rand
	.word	platforms
	.word	818089009
	.size	generateOrbs, .-generateOrbs
	.align	2
	.global	generateRockets
	.type	generateRockets, %function
generateRockets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L262
	ldr	r3, [r3, #16]
	cmp	r3, #1
	bxne	lr
	b	generateRockets.part.9
.L263:
	.align	2
.L262:
	.word	boo
	.size	generateRockets, .-generateRockets
	.align	2
	.global	unpauseBoo
	.type	unpauseBoo, %function
unpauseBoo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L268
	ldr	r3, [r4, #20]
	cmp	r3, #2
	beq	.L267
.L264:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L267:
	ldr	r2, .L268+4
	ldr	r3, .L268+8
	ldr	r2, [r2]
	smull	r0, r1, r3, r2
	mov	r3, r2, asr #31
	rsb	r3, r3, r1, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	cmp	r2, r3, asl #2
	bne	.L264
	ldr	r3, .L268+12
	mov	lr, pc
	bx	r3
	add	r3, r0, r0, lsr #31
	and	r3, r3, #1
	sub	r0, r3, r0, lsr #31
	str	r0, [r4, #20]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L269:
	.align	2
.L268:
	.word	boo
	.word	timer
	.word	1374389535
	.word	rand
	.size	unpauseBoo, .-unpauseBoo
	.align	2
	.global	moveActivePlatforms
	.type	moveActivePlatforms, %function
moveActivePlatforms:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L279
	ldr	r0, [r3, #8]
	cmp	r0, #0
	bxle	lr
	ldr	r3, .L279+4
	ldr	ip, .L279+8
	ldr	r2, [r3]
	smull	r3, ip, r2, ip
	ldr	r3, .L279+12
	sub	ip, ip, r2, asr #31
	add	r0, r0, r0, lsl #2
	add	ip, ip, ip, lsl #1
	rsb	ip, ip, r2
	add	r0, r3, r0, lsl #2
	sub	r2, r3, #16
	b	.L275
.L273:
	add	r3, r3, #20
	cmp	r3, r0
	add	r2, r2, #20
	beq	.L278
.L275:
	ldr	r1, [r2, #16]
	cmp	r1, #1
	bne	.L273
	cmp	ip, #0
	bne	.L273
	ldr	r1, [r3, #-16]
	add	r1, r1, #1
	str	r1, [r3, #-16]
	cmp	r1, #160
	add	r3, r3, #20
	strgt	ip, [r2, #16]
	cmp	r3, r0
	add	r2, r2, #20
	bne	.L275
.L278:
	bx	lr
.L280:
	.align	2
.L279:
	.word	.LANCHOR0
	.word	timer
	.word	1431655766
	.word	platforms+16
	.size	moveActivePlatforms, .-moveActivePlatforms
	.align	2
	.global	moveActiveOrbs
	.type	moveActiveOrbs, %function
moveActiveOrbs:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L290
	ldr	r2, [r3, #12]
	cmp	r2, #0
	bxle	lr
	ldr	r3, .L290+4
	add	r2, r2, r2, lsl #2
	mov	r0, #0
	add	r2, r3, r2, lsl #2
	b	.L286
.L284:
	add	r3, r3, #20
	cmp	r3, r2
	beq	.L289
.L286:
	ldr	r1, [r3, #16]
	cmp	r1, #1
	bne	.L284
	ldr	r1, [r3]
	add	r1, r1, #1
	cmp	r1, #160
	str	r1, [r3]
	strgt	r0, [r3, #16]
	add	r3, r3, #20
	cmp	r3, r2
	bne	.L286
.L289:
	bx	lr
.L291:
	.align	2
.L290:
	.word	.LANCHOR0
	.word	orbs
	.size	moveActiveOrbs, .-moveActiveOrbs
	.align	2
	.global	moveActiveBoo
	.type	moveActiveBoo, %function
moveActiveBoo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L308
	ldr	r3, .L308+4
	ldr	r2, [r2]
	smull	r1, r3, r2, r3
	sub	r3, r3, r2, asr #31
	add	r3, r3, r3, lsl #1
	cmp	r2, r3
	ldr	r3, .L308+8
	ldr	r2, [r3]
	ldr	r0, [r3, #16]
	addeq	r2, r2, #1
	streq	r2, [r3]
	cmp	r0, #1
	ldr	r1, .L308+8
	beq	.L306
	ldr	r1, [r1, #20]
	cmp	r1, #0
	bne	.L302
.L304:
	mov	r0, #136
	ldr	r1, .L308+12
	strh	r0, [r1]	@ movhi
.L300:
	cmp	r2, #240
	movgt	r2, #0
	strgt	r2, [r3, #16]
	strgt	r2, [r3]
	bx	lr
.L302:
	cmp	r1, #1
	bne	.L300
.L305:
	mov	r0, #264
	ldr	r1, .L308+12
	strh	r0, [r1]	@ movhi
	b	.L300
.L306:
	ldr	ip, [r1, #20]
	cmp	ip, #1
	beq	.L307
	cmp	ip, #0
	bne	.L300
	ldr	ip, [r1, #4]
	cmp	ip, #0
	addle	ip, ip, #1
	strle	ip, [r1, #4]
	strle	r0, [r1, #20]
	ble	.L305
	sub	ip, ip, #1
	str	ip, [r1, #4]
	b	.L304
.L307:
	ldr	ip, [r1, #12]
	ldr	r0, [r1, #4]
	rsb	ip, ip, #240
	cmp	r0, ip
	blt	.L297
	mov	ip, #0
	sub	r0, r0, #1
	str	r0, [r1, #4]
	str	ip, [r1, #20]
	b	.L304
.L297:
	add	r0, r0, #1
	str	r0, [r1, #4]
	b	.L305
.L309:
	.align	2
.L308:
	.word	timer
	.word	1431655766
	.word	boo
	.word	shadowOAM+364
	.size	moveActiveBoo, .-moveActiveBoo
	.align	2
	.global	moveActiveRockets
	.type	moveActiveRockets, %function
moveActiveRockets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L319
	ldr	r0, [r3]
	cmp	r0, #0
	bxle	lr
	ldr	r3, .L319+4
	add	r0, r0, r0, lsl #2
	mov	ip, #0
	add	r0, r3, r0, lsl #2
	sub	r2, r3, #16
	b	.L315
.L313:
	add	r3, r3, #20
	cmp	r3, r0
	add	r2, r2, #20
	beq	.L318
.L315:
	ldr	r1, [r2, #16]
	cmp	r1, #1
	bne	.L313
	ldr	r1, [r3, #-16]
	add	r1, r1, #1
	str	r1, [r3, #-16]
	cmp	r1, #160
	add	r3, r3, #20
	strgt	ip, [r2, #16]
	cmp	r3, r0
	add	r2, r2, #20
	bne	.L315
.L318:
	bx	lr
.L320:
	.align	2
.L319:
	.word	.LANCHOR0
	.word	rockets+16
	.size	moveActiveRockets, .-moveActiveRockets
	.align	2
	.global	moveActiveArrows
	.type	moveActiveArrows, %function
moveActiveArrows:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L330
	ldr	r0, [r3, #4]
	cmp	r0, #0
	bxle	lr
	ldr	r2, .L330+4
	add	r0, r0, r0, lsl #2
	sub	r3, r2, #16
	mov	ip, #0
	add	r0, r3, r0, lsl #2
	b	.L326
.L324:
	add	r3, r3, #20
	cmp	r3, r0
	add	r2, r2, #20
	beq	.L329
.L326:
	ldr	r1, [r3, #16]
	cmp	r1, #1
	bne	.L324
	ldr	r1, [r2, #-16]
	sub	r1, r1, #1
	cmp	r1, #0
	str	r1, [r2, #-16]
	add	r3, r3, #20
	strlt	ip, [r3, #-4]
	cmp	r3, r0
	add	r2, r2, #20
	bne	.L326
.L329:
	bx	lr
.L331:
	.align	2
.L330:
	.word	.LANCHOR0
	.word	arrows+16
	.size	moveActiveArrows, .-moveActiveArrows
	.align	2
	.global	attackEnemies
	.type	attackEnemies, %function
attackEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L334
	ldr	r3, [r3]
	tst	r3, #1
	bxne	lr
	b	attackEnemies.part.11
.L335:
	.align	2
.L334:
	.word	timer
	.size	attackEnemies, .-attackEnemies
	.align	2
	.global	collisionCheckKirbyPlatform
	.type	collisionCheckKirbyPlatform, %function
collisionCheckKirbyPlatform:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L358
	ldr	r1, [r3, #8]
	cmp	r1, #0
	bxle	lr
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, #0
	mov	r8, r7
	ldr	r6, .L358+4
	ldr	ip, [r6, #4]
	add	r0, r6, #20
	ldmia	r0, {r0, lr}
	ldr	r3, .L358+8
	add	r1, r1, r1, lsl #2
	mov	ip, ip, asr #8
	ldr	r4, [r6]
	ldr	r5, [r6, #8]
	add	r0, ip, r0
	mov	r9, lr, asl #8
	add	r1, r3, r1, lsl #2
.L339:
	ldr	r2, [r3]
	cmp	r2, #0
	beq	.L338
	ldr	r2, [r3, #-12]
	cmp	r2, r0
	bgt	.L338
	ldr	r10, [r3, #-4]
	add	r2, r2, r10
	cmp	ip, r2
	add	r10, lr, r4, asr #8
	bgt	.L338
	ldr	r2, [r3, #-16]
	cmp	r2, r10
	sub	fp, r10, r5, asr #8
	bgt	.L338
	cmp	r2, fp
	cmpge	r5, #0
	movgt	fp, #1
	movgt	r7, fp
	movle	fp, #0
	movgt	r5, #0
	movgt	r8, r7
	rsbgt	r4, r9, r2, lsl #8
.L338:
	add	r3, r3, #20
	cmp	r3, r1
	bne	.L339
	cmp	r8, #0
	strne	r4, [r6]
	cmp	r7, #0
	strne	r5, [r6, #8]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L359:
	.align	2
.L358:
	.word	.LANCHOR0
	.word	kirby
	.word	platforms+16
	.size	collisionCheckKirbyPlatform, .-collisionCheckKirbyPlatform
	.align	2
	.global	collisionCheckKirbyOrb
	.type	collisionCheckKirbyOrb, %function
collisionCheckKirbyOrb:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L375
	ldr	r2, [r3, #12]
	cmp	r2, #0
	bxle	lr
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r4, #0
	mov	r6, r4
	ldr	r3, .L375+4
	ldr	r5, .L375+8
	ldr	ip, [r3, #4]
	ldr	r0, [r3, #20]
	ldr	lr, [r3]
	ldr	r3, .L375+12
	add	r2, r2, r2, lsl #2
	mov	ip, ip, asr #8
	ldr	r7, [r5]
	add	r0, ip, r0
	mov	lr, lr, asr #8
	add	r2, r3, r2, lsl #2
.L363:
	ldr	r1, [r3, #16]
	cmp	r1, #0
	beq	.L362
	ldr	r1, [r3, #4]
	cmp	r1, r0
	bgt	.L362
	ldr	r8, [r3, #12]
	add	r1, r1, r8
	cmp	ip, r1
	bgt	.L362
	ldr	r1, [r3]
	ldr	r8, [r3, #8]
	add	r1, r1, r8
	cmp	r1, lr
	movge	r4, #1
	strge	r6, [r3, #16]
	addge	r7, r7, r4
.L362:
	add	r3, r3, #20
	cmp	r3, r2
	bne	.L363
	cmp	r4, #0
	strne	r7, [r5]
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L376:
	.align	2
.L375:
	.word	.LANCHOR0
	.word	kirby
	.word	numOrbsCollected
	.word	orbs
	.size	collisionCheckKirbyOrb, .-collisionCheckKirbyOrb
	.align	2
	.global	collisionCheckKirbyRocket
	.type	collisionCheckKirbyRocket, %function
collisionCheckKirbyRocket:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r7, .L393
	ldr	r3, [r7]
	cmp	r3, #0
	ble	.L377
	mov	r5, #0
	ldr	r4, .L393+4
	ldr	r6, .L393+8
	ldr	r9, .L393+12
	ldr	r10, .L393+16
	ldr	fp, .L393+20
.L381:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L379
	ldr	r3, [r6, #4]
	ldr	r2, [r6, #20]
	mov	r3, r3, asr #8
	ldr	r1, [r4, #4]
	add	r2, r3, r2
	cmp	r1, r2
	bgt	.L379
	ldr	r2, [r4, #12]
	add	r1, r1, r2
	cmp	r3, r1
	bgt	.L379
	ldr	r3, [r4]
	ldr	r1, [r4, #8]
	ldr	r2, [r6]
	add	r3, r3, r1
	cmp	r3, r2, asr #8
	blt	.L379
	ldr	r8, [r9]
	cmp	r8, #0
	beq	.L391
	ldr	r3, [r10]
	cmp	r3, #100
	movle	r3, #0
	movgt	r3, #1
	cmp	r8, #1
	movne	r3, #0
	cmp	r3, #0
	bne	.L392
.L379:
	ldr	r3, [r7]
	add	r5, r5, #1
	cmp	r3, r5
	add	r4, r4, #20
	bgt	.L381
.L377:
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L391:
	mov	r3, r8
	ldr	r2, .L393+24
	mov	r1, #52224
	ldr	r0, .L393+28
	ldr	ip, .L393+32
	mov	lr, pc
	bx	ip
	mov	ip, #512
	mov	r0, #1
	ldr	r2, [fp]
	ldr	r1, .L393+36
	sub	r3, r2, #1
	str	r3, [fp]
	add	r3, r3, r3, lsl #2
	add	r3, r1, r3, lsl #2
	add	r2, r2, #72
	ldr	r1, .L393+40
	mov	r2, r2, asl #3
	str	r8, [r4, #16]
	str	r8, [r3, #16]
	strh	ip, [r1, r2]	@ movhi
	str	r0, [r9]
	b	.L379
.L392:
	mov	r3, #0
	ldr	r2, .L393+24
	mov	r1, #52224
	ldr	r0, .L393+28
	ldr	ip, .L393+32
	mov	lr, pc
	bx	ip
	mov	r2, #0
	mov	ip, #512
	ldr	r3, [fp]
	ldr	r1, .L393+36
	sub	r0, r3, #1
	add	lr, r0, r0, lsl #2
	add	r3, r3, #72
	str	r0, [fp]
	ldr	r0, .L393+40
	mov	r3, r3, asl #3
	add	r1, r1, lr, lsl #2
	str	r2, [r1, #16]
	str	r2, [r4, #16]
	str	r2, [r10]
	strh	ip, [r0, r3]	@ movhi
	b	.L379
.L394:
	.align	2
.L393:
	.word	.LANCHOR0
	.word	rockets
	.word	kirby
	.word	firstCollision
	.word	collisionTimer
	.word	lives
	.word	44100
	.word	lifelost
	.word	playSoundB
	.word	playerLives
	.word	shadowOAM
	.size	collisionCheckKirbyRocket, .-collisionCheckKirbyRocket
	.align	2
	.global	collisionCheckArrowsBoo
	.type	collisionCheckArrowsBoo, %function
collisionCheckArrowsBoo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L415
	ldr	r1, [r3, #12]
	cmp	r1, #0
	bxle	lr
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r4, #0
	mov	r7, r4
	ldr	lr, .L415+4
	ldr	r3, .L415+8
	ldr	ip, [lr, #4]
	ldr	r0, [lr, #12]
	add	r1, r1, r1, lsl #2
	ldr	r5, [lr]
	ldr	r6, [lr, #16]
	add	r0, ip, r0
	add	r1, r3, r1, lsl #2
.L398:
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L397
	ldr	r2, [r3, #4]
	cmp	r2, r0
	bgt	.L397
	ldr	r8, [r3, #12]
	add	r2, r2, r8
	cmp	ip, r2
	bgt	.L397
	ldr	r2, [r3]
	ldr	r8, [r3, #8]
	add	r2, r2, r8
	cmp	r2, r5
	movge	r4, #1
	movge	r6, #0
	movge	r7, r4
	movge	r5, r6
.L397:
	add	r3, r3, #20
	cmp	r3, r1
	bne	.L398
	cmp	r7, #0
	strne	r5, [lr]
	cmp	r4, #0
	strne	r6, [lr, #16]
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L416:
	.align	2
.L415:
	.word	.LANCHOR0
	.word	boo
	.word	arrows
	.size	collisionCheckArrowsBoo, .-collisionCheckArrowsBoo
	.align	2
	.global	collisionCheckKirbyBoo
	.type	collisionCheckKirbyBoo, %function
collisionCheckKirbyBoo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L424
	ldr	r2, [r3, #16]
	cmp	r2, #0
	bxeq	lr
	ldr	ip, .L424+4
	ldr	r2, [ip, #4]
	ldr	r1, [ip, #20]
	mov	r2, r2, asr #8
	ldr	r0, [r3, #4]
	add	r1, r2, r1
	cmp	r0, r1
	bxgt	lr
	ldr	r1, [r3, #12]
	add	r0, r0, r1
	cmp	r2, r0
	bxgt	lr
	ldr	r2, [r3]
	ldr	r3, [r3, #8]
	ldr	r1, [ip]
	add	r3, r2, r3
	cmp	r3, r1, asr #8
	bxlt	lr
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r4, .L424+8
	ldr	r3, [r4]
	cmp	r3, #150
	ble	.L417
	mov	r3, #0
	ldr	r2, .L424+12
	mov	r1, #52224
	ldr	r0, .L424+16
	ldr	r5, .L424+20
	mov	lr, pc
	bx	r5
	mov	r1, #0
	ldr	r0, .L424+24
	ldr	r3, [r0]
	ldr	r2, .L424+28
	sub	r3, r3, #1
	add	ip, r3, r3, lsl #2
	add	r2, r2, ip, lsl #2
	str	r3, [r0]
	str	r1, [r2, #16]
	str	r1, [r4]
.L417:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L425:
	.align	2
.L424:
	.word	boo
	.word	kirby
	.word	collisionTimer
	.word	44100
	.word	lifelost
	.word	playSoundB
	.word	lives
	.word	playerLives
	.size	collisionCheckKirbyBoo, .-collisionCheckKirbyBoo
	.align	2
	.global	checkKirbyOutOfBounds
	.type	checkKirbyOutOfBounds, %function
checkKirbyOutOfBounds:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L431
	ldr	r1, [r2]
	ldr	r3, [r2, #24]
	add	r3, r3, r1, asr #8
	cmp	r3, #159
	bxle	lr
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r4, .L431+4
	ldr	r3, [r4]
	cmp	r3, #150
	bgt	.L430
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L430:
	mov	r3, #0
	ldr	r2, .L431+8
	mov	r1, #52224
	ldr	r0, .L431+12
	ldr	r5, .L431+16
	mov	lr, pc
	bx	r5
	mov	r1, #0
	ldr	r0, .L431+20
	ldr	r3, [r0]
	ldr	r2, .L431+24
	sub	r3, r3, #1
	add	ip, r3, r3, lsl #2
	add	r2, r2, ip, lsl #2
	str	r1, [r4]
	str	r3, [r0]
	str	r1, [r2, #16]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L432:
	.align	2
.L431:
	.word	kirby
	.word	collisionTimer
	.word	44100
	.word	lifelost
	.word	playSoundB
	.word	lives
	.word	playerLives
	.size	checkKirbyOutOfBounds, .-checkKirbyOutOfBounds
	.align	2
	.global	game
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L645
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, [r1, #4]
	mov	r3, r3, asl #15
	mov	r3, r3, lsr #23
	mvn	r3, r3, asl #17
	mvn	r3, r3, lsr #17
	ldr	lr, .L645+4
	ldrh	ip, [r1, #36]
	ldr	r2, [r1, #28]
	ldr	r7, .L645+8
	strh	r3, [lr, #2]	@ movhi
	ldr	r3, [r1, #32]
	add	r2, ip, r2
	add	r3, r2, r3, lsl #5
	ldr	r2, [r7]
	ldr	r5, .L645+12
	sub	r2, r2, #1
	str	r2, [r7]
	ldr	r2, [r5]
	ldr	r6, .L645+16
	ldr	r0, .L645+20
	ldr	r4, .L645+24
	add	r2, r2, #1
	ldrb	r8, [r1, #1]	@ zero_extendqisi2
	strh	r3, [lr, #4]	@ movhi
	ldr	r1, [r6]
	ldr	r3, [r0]
	str	r2, [r5]
	ldr	r5, [r4, #8]
	add	r1, r1, #1
	add	r3, r3, #1
	cmp	r5, #0
	strh	r8, [lr]	@ movhi
	str	r1, [r6]
	str	r3, [r0]
	ble	.L440
	mov	r3, lr
	mov	r8, #512
	mov	r7, #16
	ldr	r0, .L645+28
	add	r5, lr, r5, lsl #3
.L439:
	ldr	r2, [r0]
	cmp	r2, #0
	ldrne	r2, [r0, #-16]
	strneh	r2, [r3, #8]	@ movhi
	ldr	r2, [r0, #-12]
	mvn	r2, r2, asl #17
	mvn	r2, r2, lsr #17
	streqh	r8, [r3, #8]	@ movhi
	strh	r7, [r3, #12]	@ movhi
	strh	r2, [r3, #10]	@ movhi
	add	r3, r3, #8
	cmp	r3, r5
	add	r0, r0, #20
	bne	.L439
.L440:
	ldr	r5, [r4, #12]
	cmp	r5, #0
	ble	.L436
	mov	r8, #512
	mov	r7, #24
	ldr	r0, .L645+32
	ldr	r3, .L645+4
	add	r5, lr, r5, lsl #3
.L445:
	ldr	r2, [r0, #16]
	cmp	r2, #0
	ldrne	r2, [r0]
	strneh	r2, [r3, #176]	@ movhi
	ldr	r2, [r0, #4]
	mvn	r2, r2, asl #17
	mvn	r2, r2, lsr #17
	streqh	r8, [r3, #176]	@ movhi
	strh	r7, [r3, #180]	@ movhi
	strh	r2, [r3, #178]	@ movhi
	add	r3, r3, #8
	cmp	r3, r5
	add	r0, r0, #20
	bne	.L445
.L436:
	ldr	r5, .L645+36
	ldr	r3, [r5, #16]
	cmp	r3, #0
	beq	.L628
	ldr	r2, .L645+40
	ldr	r3, [r5]
	strh	r3, [r2]	@ movhi
.L446:
	ldr	r3, [r5, #4]
	mvn	r3, r3, asl #17
	mvn	r3, r3, lsr #17
	ldr	r0, [r5, #20]
	cmp	r0, #0
	strh	r3, [r2, #2]	@ movhi
	bne	.L447
	mov	r2, #136
	ldr	r3, .L645+44
	strh	r2, [r3]	@ movhi
.L452:
	ldr	r3, [r4]
	cmp	r3, #0
	ble	.L456
	mov	r8, #512
	mov	r7, #12
	add	lr, lr, r3, lsl #3
	add	lr, lr, #368
	ldr	r0, .L645+48
	ldr	r3, .L645+52
	add	lr, lr, #2
.L455:
	ldr	r2, [r0]
	cmp	r2, #0
	ldrne	r2, [r0, #-16]
	strneh	r2, [r3, #-2]	@ movhi
	ldr	r2, [r0, #-12]
	mvn	r2, r2, asl #17
	mvn	r2, r2, lsr #17
	streqh	r8, [r3, #-2]	@ movhi
	strh	r7, [r3, #2]	@ movhi
	strh	r2, [r3]	@ movhi
	add	r3, r3, #8
	cmp	r3, lr
	add	r0, r0, #20
	bne	.L455
.L456:
	ldr	lr, [r4, #4]
	cmp	lr, #0
	ble	.L450
	mov	r8, #512
	add	r7, ip, #768
	ldr	r2, .L645+56
	add	lr, lr, lr, lsl #2
	mov	r7, r7, asl #16
	ldr	r0, .L645+60
	mov	r7, r7, lsr #16
	add	lr, r2, lr, lsl #2
.L460:
	ldr	r3, [r2, #16]
	cmp	r3, #0
	ldrne	r3, [r2]
	strneh	r3, [r0, #-2]	@ movhi
	ldr	r3, [r2, #4]
	mvn	r3, r3, asl #17
	mvn	r3, r3, lsr #17
	add	r2, r2, #20
	streqh	r8, [r0, #-2]	@ movhi
	cmp	r2, lr
	strh	r7, [r0, #2]	@ movhi
	strh	r3, [r0]	@ movhi
	add	r0, r0, #8
	bne	.L460
.L450:
	mov	r7, #512
	add	ip, ip, #896
	ldr	r3, .L645+64
	mov	ip, ip, asl #16
	ldr	r0, .L645+68
	mov	ip, ip, lsr #16
	add	lr, r3, #60
.L457:
	ldr	r2, [r3, #16]
	cmp	r2, #0
	ldrne	r2, [r3]
	strneh	r2, [r0, #-2]	@ movhi
	ldr	r2, [r3, #4]
	mvn	r2, r2, asl #17
	mvn	r2, r2, lsr #17
	add	r3, r3, #20
	streqh	r7, [r0, #-2]	@ movhi
	cmp	r3, lr
	strh	ip, [r0, #2]	@ movhi
	strh	r2, [r0]	@ movhi
	add	r0, r0, #8
	bne	.L457
	ldr	r3, .L645+72
	mov	r7, #34
	mov	r2, r3
	mov	r0, #24
	mov	ip, #30
	strh	r7, [r2, #8]!	@ movhi
	ldr	r7, .L645+76
	strh	r0, [r3, #4]	@ movhi
	ldr	r0, [r7]
	ldr	r8, .L645+80
	add	r0, r0, #268
	strh	r0, [r3, #12]	@ movhi
	ldr	r0, [r8]
	ldr	lr, .L645+84
	tst	r0, #8
	strh	lr, [r3, #2]	@ movhi
	strh	ip, [r2, #2]	@ movhi
	strh	ip, [r3]	@ movhi
	beq	.L463
	ldr	r3, .L645+88
	ldr	r3, [r3]
	tst	r3, #8
	beq	.L629
.L463:
	tst	r0, #4
	beq	.L466
	ldr	r3, .L645+88
	ldr	r3, [r3]
	tst	r3, #4
	beq	.L630
.L466:
	ldr	r3, .L645+92
	ldr	r2, [r3]
.L465:
	ldr	lr, .L645+96
	ldr	r3, [lr]
	cmp	r3, #0
	beq	.L467
	mov	ip, #100
	ldr	r3, .L645+100
	str	ip, [r3]
	str	ip, [r3, #20]
	str	ip, [r3, #40]
	str	ip, [r3, #60]
	str	ip, [r3, #80]
	str	ip, [r3, #100]
	str	ip, [r3, #120]
	str	ip, [r3, #140]
	str	ip, [r3, #204]
	mov	ip, #180
	str	ip, [r3, #64]
	mov	ip, #90
	str	ip, [r3, #104]
	mov	ip, #150
	str	ip, [r3, #124]
	mov	ip, #210
	str	ip, [r3, #144]
	mov	ip, #40
	mov	r0, #1
	mov	r8, #60
	mov	r9, #0
	mov	r10, #30
	str	ip, [r3, #164]
	mov	fp, #120
	mov	ip, #170
	str	fp, [r3, #44]
	str	ip, [r3, #184]
	str	r9, [r3, #4]
	str	r0, [r3, #16]
	str	r0, [r3, #36]
	str	r0, [r3, #56]
	str	r0, [r3, #76]
	str	r0, [r3, #96]
	str	r0, [r3, #116]
	str	r0, [r3, #136]
	str	r0, [r3, #156]
	str	r0, [r3, #176]
	str	r0, [r3, #196]
	str	r8, [r3, #24]
	str	r8, [r3, #160]
	str	r8, [r3, #180]
	str	r10, [r3, #84]
	str	r10, [r3, #200]
	str	r0, [r3, #216]
	str	r9, [lr]
.L467:
	cmp	r2, #0
	beq	.L468
	cmp	r1, #10
	beq	.L631
	cmp	r1, #30
	beq	.L632
	cmp	r1, #50
	beq	.L633
	cmp	r1, #60
	beq	.L634
	cmp	r1, #75
	beq	.L635
	cmp	r1, #100
	beq	.L636
	cmp	r1, #125
	beq	.L637
	cmp	r1, #150
	beq	.L638
.L476:
	bl	updatePlayer
	bl	moveActivePlatforms
	ldr	r2, [r4, #12]
	cmp	r2, #0
	ble	.L546
	ldr	r3, .L645+32
	add	r2, r2, r2, lsl #2
	mov	r0, #0
	add	r2, r3, r2, lsl #2
	b	.L545
.L543:
	add	r3, r3, #20
	cmp	r2, r3
	beq	.L546
.L545:
	ldr	r1, [r3, #16]
	cmp	r1, #1
	bne	.L543
	ldr	r1, [r3]
	add	r1, r1, #1
	cmp	r1, #160
	str	r1, [r3]
	strgt	r0, [r3, #16]
	add	r3, r3, #20
	cmp	r2, r3
	bne	.L545
.L546:
	bl	moveActiveBoo
	ldr	r0, [r4]
	cmp	r0, #0
	ble	.L541
	ldr	r3, .L645+48
	add	r0, r0, r0, lsl #2
	mov	ip, #0
	add	r0, r3, r0, lsl #2
	sub	r2, r3, #16
	b	.L552
.L550:
	add	r3, r3, #20
	cmp	r3, r0
	add	r2, r2, #20
	beq	.L541
.L552:
	ldr	r1, [r2, #16]
	cmp	r1, #1
	bne	.L550
	ldr	r1, [r3, #-16]
	add	r1, r1, #1
	str	r1, [r3, #-16]
	cmp	r1, #160
	add	r3, r3, #20
	strgt	ip, [r2, #16]
	cmp	r3, r0
	add	r2, r2, #20
	bne	.L552
.L541:
	ldr	r0, [r4, #4]
	cmp	r0, #0
	ble	.L548
	ldr	r2, .L645+104
	add	r0, r0, r0, lsl #2
	sub	r3, r2, #16
	mov	ip, #0
	add	r0, r3, r0, lsl #2
	b	.L558
.L556:
	add	r3, r3, #20
	cmp	r0, r3
	add	r2, r2, #20
	beq	.L548
.L558:
	ldr	r1, [r3, #16]
	cmp	r1, #1
	bne	.L556
	ldr	r1, [r2, #-16]
	sub	r1, r1, #1
	cmp	r1, #0
	str	r1, [r2, #-16]
	add	r3, r3, #20
	strlt	ip, [r3, #-4]
	cmp	r0, r3
	add	r2, r2, #20
	bne	.L558
.L548:
	bl	collisionCheckKirbyPlatform
	bl	collisionCheckKirbyOrb
	bl	collisionCheckArrowsBoo
	bl	checkKirbyOutOfBounds
	bl	collisionCheckKirbyRocket
	ldr	r3, [r5, #20]
	cmp	r3, #2
	ldr	r4, .L645+36
	beq	.L639
.L554:
	ldr	r3, [r7]
	cmp	r3, #9
	bgt	.L640
.L559:
	ldr	r3, .L645+108
	ldr	r3, [r3]
	cmp	r3, #0
	bleq	goToLose
.L560:
	ldr	r3, .L645+112
	mov	lr, pc
	bx	r3
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L447:
	cmp	r0, #1
	beq	.L641
	cmp	r0, #2
	moveq	r2, #8
	ldreq	r3, .L645+44
	streqh	r2, [r3]	@ movhi
	b	.L452
.L628:
	mov	r3, #512
	ldr	r2, .L645+40
	strh	r3, [r2]	@ movhi
	b	.L446
.L468:
	cmp	r1, #25
	beq	.L642
	cmp	r1, #65
	beq	.L485
	cmp	r1, #100
	beq	.L643
	cmp	r1, #150
	bne	.L476
	ldr	ip, [r4, #8]
	cmp	ip, #0
	str	r2, [r6]
	ble	.L534
	ldr	r1, .L645+100
	ldr	r3, [r1, #16]
	cmp	r3, #0
	movne	r3, r1
	bne	.L537
	b	.L535
.L538:
	ldr	r0, [r3, #16]
	cmp	r0, #0
	beq	.L535
.L537:
	add	r2, r2, #1
	cmp	r2, ip
	add	r3, r3, #20
	bne	.L538
.L534:
	bl	generateOrbs
	ldr	r3, [r5, #16]
	cmp	r3, #0
	moveq	r1, #1
	ldr	r2, .L645+36
	streq	r3, [r2]
	streq	r1, [r2, #16]
	b	.L476
.L630:
	mov	r3, #1
	ldr	r0, .L645+92
	mov	r2, r3
	str	r3, [r0]
	b	.L465
.L640:
	bl	goToWin
	b	.L559
.L639:
	ldr	r2, [r6]
	ldr	r3, .L645+116
	smull	r0, r1, r3, r2
	mov	r3, r2, asr #31
	rsb	r3, r3, r1, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	cmp	r2, r3, asl #2
	bne	.L554
	ldr	r3, .L645+120
	mov	lr, pc
	bx	r3
	add	r3, r0, r0, lsr #31
	and	r3, r3, #1
	sub	r0, r3, r0, lsr #31
	str	r0, [r4, #20]
	b	.L554
.L486:
	mov	lr, #1
	mov	ip, #0
	add	r3, r3, r3, lsl #2
	mov	r3, r3, asl #2
	add	r2, r1, r3
	str	lr, [r2, #16]
	ldr	r2, [r1, #16]
	cmp	r2, ip
	str	ip, [r1, r3]
	bne	.L490
	mov	r3, r2
.L519:
	mov	r0, #0
	mov	r2, #1
	add	r3, r3, r3, lsl #2
	mov	r3, r3, asl #2
	str	r0, [r1, r3]
	add	r3, r1, r3
	str	r2, [r3, #16]
.L485:
	bl	generateOrbs
	b	.L476
.L629:
	bl	goToPause
	ldr	r0, [r8]
	ldr	r1, [r6]
	b	.L463
.L641:
	mov	r2, #264
	ldr	r3, .L645+44
	strh	r2, [r3]	@ movhi
	b	.L452
.L642:
	ldr	ip, [r4, #8]
	cmp	ip, #0
	ble	.L470
	ldr	r1, .L645+100
	ldr	r3, [r1, #16]
	cmp	r3, #0
	movne	r3, r1
	bne	.L527
	b	.L525
.L528:
	ldr	r0, [r3, #16]
	cmp	r0, #0
	beq	.L525
.L527:
	add	r2, r2, #1
	cmp	r2, ip
	add	r3, r3, #20
	bne	.L528
.L470:
	bl	generateOrbs
	ldr	r3, [r5, #16]
	cmp	r3, #1
	bne	.L476
	bl	generateRockets.part.9
	b	.L476
.L631:
	ldr	ip, [r4, #8]
	cmp	ip, #0
	ble	.L470
	ldr	r1, .L645+100
	ldr	r3, [r1, #16]
	cmp	r3, #0
	movne	r2, r1
	movne	r3, #0
	bne	.L473
	b	.L471
.L474:
	ldr	r0, [r2, #16]
	cmp	r0, #0
	beq	.L471
.L473:
	add	r3, r3, #1
	cmp	r3, ip
	add	r2, r2, #20
	bne	.L474
	b	.L470
.L633:
	ldr	r0, [r4, #8]
	cmp	r0, #0
	ble	.L485
	ldr	r1, .L645+100
	ldr	r3, [r1, #16]
	cmp	r3, #0
	movne	r2, r1
	movne	r3, #0
	bne	.L488
	b	.L486
.L491:
	ldr	ip, [r2, #16]
	cmp	ip, #0
	beq	.L486
.L488:
	add	r3, r3, #1
	cmp	r0, r3
	add	r2, r2, #20
	bne	.L491
.L490:
	mov	r3, #0
	ldr	r2, .L645+100
	b	.L492
.L493:
	ldr	ip, [r2, #16]
	cmp	ip, #0
	beq	.L519
.L492:
	add	r3, r3, #1
	cmp	r0, r3
	add	r2, r2, #20
	bne	.L493
	b	.L485
.L632:
	ldr	ip, [r4, #8]
	cmp	ip, #0
	ble	.L476
	ldr	r1, .L645+100
	ldr	r3, [r1, #16]
	cmp	r3, #0
	movne	r2, r1
	movne	r3, #0
	bne	.L481
	b	.L515
.L482:
	ldr	r0, [r2, #16]
	cmp	r0, #0
	beq	.L515
.L481:
	add	r3, r3, #1
	cmp	ip, r3
	add	r2, r2, #20
	bne	.L482
	b	.L476
.L644:
	mov	r3, #0
.L515:
	mov	r0, #0
	mov	r2, #1
	add	r3, r3, r3, lsl #2
	mov	r3, r3, asl #2
	str	r0, [r1, r3]
	add	r3, r1, r3
	str	r2, [r3, #16]
	b	.L476
.L643:
	ldr	ip, [r4, #8]
	cmp	ip, #0
	ble	.L485
	ldr	r1, .L645+100
	ldr	r3, [r1, #16]
	cmp	r3, #0
	movne	r3, r1
	bne	.L532
	b	.L530
.L533:
	ldr	r0, [r3, #16]
	cmp	r0, #0
	beq	.L530
.L532:
	add	r2, r2, #1
	cmp	r2, ip
	add	r3, r3, #20
	bne	.L533
	b	.L485
.L471:
	mov	r0, #0
	mov	r2, #1
	add	r3, r3, r3, lsl #2
	mov	r3, r3, asl #2
	str	r0, [r1, r3]
	add	r3, r1, r3
	str	r2, [r3, #16]
	b	.L470
.L525:
	mov	r0, #0
	mov	r3, #1
	add	r2, r2, r2, lsl #2
	mov	r2, r2, asl #2
	str	r0, [r1, r2]
	add	r2, r1, r2
	str	r3, [r2, #16]
	b	.L470
.L634:
	ldr	r0, [r4, #8]
	cmp	r0, #0
	ble	.L476
	ldr	r1, .L645+100
	ldr	r3, [r1, #16]
	cmp	r3, #0
	movne	r2, r1
	movne	r3, #0
	bne	.L498
	b	.L496
.L501:
	ldr	ip, [r2, #16]
	cmp	ip, #0
	beq	.L496
.L498:
	add	r3, r3, #1
	cmp	r3, r0
	add	r2, r2, #20
	bne	.L501
.L500:
	mov	r3, #0
	ldr	r2, .L645+100
	b	.L502
.L503:
	ldr	ip, [r2, #16]
	cmp	ip, #0
	beq	.L515
.L502:
	add	r3, r3, #1
	cmp	r3, r0
	add	r2, r2, #20
	bne	.L503
	b	.L476
.L638:
	mov	r3, #0
	ldr	ip, [r4, #8]
	cmp	ip, r3
	str	r3, [r6]
	ble	.L485
	ldr	r1, .L645+100
	ldr	r3, [r1, #16]
	cmp	r3, #0
	movne	r2, r1
	movne	r3, #0
	bne	.L521
	b	.L519
.L522:
	ldr	r0, [r2, #16]
	cmp	r0, #0
	beq	.L519
.L521:
	add	r3, r3, #1
	cmp	r3, ip
	add	r2, r2, #20
	bne	.L522
	b	.L485
.L530:
	mov	ip, #0
	mov	r0, #1
	add	r2, r2, r2, lsl #2
	mov	r3, r2, asl #2
	str	ip, [r1, r3]
	add	r3, r1, r3
	str	r0, [r3, #16]
	b	.L485
.L635:
	ldr	ip, [r4, #8]
	cmp	ip, #0
	ble	.L476
	ldr	r1, .L645+100
	ldr	r3, [r1, #16]
	cmp	r3, #0
	movne	r2, r1
	movne	r3, #0
	bne	.L507
	b	.L515
.L508:
	ldr	r0, [r2, #16]
	cmp	r0, #0
	beq	.L515
.L507:
	add	r3, r3, #1
	cmp	ip, r3
	add	r2, r2, #20
	bne	.L508
	b	.L476
.L535:
	mov	r0, #0
	mov	r3, #1
	add	r2, r2, r2, lsl #2
	mov	r2, r2, asl #2
	str	r0, [r1, r2]
	add	r2, r1, r2
	str	r3, [r2, #16]
	b	.L534
.L636:
	ldr	ip, [r4, #8]
	cmp	ip, #0
	ble	.L485
	ldr	r1, .L645+100
	ldr	r3, [r1, #16]
	cmp	r3, #0
	movne	r2, r1
	movne	r3, #0
	bne	.L512
	b	.L519
.L513:
	ldr	r0, [r2, #16]
	cmp	r0, #0
	beq	.L519
.L512:
	add	r3, r3, #1
	cmp	r3, ip
	add	r2, r2, #20
	bne	.L513
	b	.L485
.L496:
	mov	lr, #1
	mov	ip, #0
	add	r3, r3, r3, lsl #2
	mov	r2, r3, asl #2
	add	r3, r1, r2
	str	lr, [r3, #16]
	ldr	r3, [r1, #16]
	cmp	r3, ip
	str	ip, [r1, r2]
	bne	.L500
	b	.L515
.L637:
	ldr	ip, [r4, #8]
	cmp	ip, #0
	ble	.L476
	ldr	r1, .L645+100
	ldr	r3, [r1, #16]
	cmp	r3, #0
	movne	r3, #0
	ldrne	r2, .L645+100
	bne	.L517
	b	.L644
.L518:
	ldr	r0, [r2, #16]
	cmp	r0, #0
	beq	.L515
.L517:
	add	r3, r3, #1
	cmp	r3, ip
	add	r2, r2, #20
	bne	.L518
	b	.L476
.L646:
	.align	2
.L645:
	.word	kirby
	.word	shadowOAM
	.word	.LANCHOR1
	.word	jumpTimer
	.word	timer
	.word	collisionTimer
	.word	.LANCHOR0
	.word	platforms+16
	.word	orbs
	.word	boo
	.word	shadowOAM+360
	.word	shadowOAM+364
	.word	rockets+16
	.word	shadowOAM+370
	.word	arrows
	.word	shadowOAM+458
	.word	playerLives
	.word	shadowOAM+586
	.word	shadowOAM+616
	.word	numOrbsCollected
	.word	oldButtons
	.word	-32760
	.word	buttons
	.word	cheatMode
	.word	gameStarted
	.word	platforms
	.word	arrows+16
	.word	lives
	.word	waitForVblank
	.word	1374389535
	.word	rand
	.size	game, .-game
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r7, fp, lr}
	ldr	r3, .L662
	mov	lr, pc
	bx	r3
	mov	r4, #67108864
	ldr	r8, .L662+4
	ldr	r5, .L662+8
	ldr	r7, .L662+12
	ldr	fp, .L662+16
	ldr	r6, .L662+20
	ldr	r10, .L662+24
	ldr	r9, .L662+28
.L660:
	ldr	r3, [r5]
	str	r3, [r8]
	ldr	r3, [r7]
	ldr	r2, [r4, #304]
	str	r2, [r5]
	cmp	r3, #9
	ldrls	pc, [pc, r3, asl #2]
	b	.L648
.L650:
	.word	.L649
	.word	.L651
	.word	.L652
	.word	.L653
	.word	.L654
	.word	.L655
	.word	.L656
	.word	.L657
	.word	.L659
	.word	.L659
.L659:
	mov	lr, pc
	bx	fp
.L648:
	ldrh	r3, [r6, #4]
	ldrh	r2, [r6]
	strh	r3, [r4, #16]	@ movhi
	ldr	r1, .L662+32
	mov	r3, #512
	strh	r2, [r4, #18]	@ movhi
	mov	r0, #3
	mov	r2, #117440512
	mov	lr, pc
	bx	r10
	mov	lr, pc
	bx	r9
	b	.L660
.L657:
	ldr	r3, .L662+36
	mov	lr, pc
	bx	r3
	b	.L648
.L656:
	ldr	r3, .L662+40
	mov	lr, pc
	bx	r3
	b	.L648
.L655:
	ldr	r3, .L662+44
	mov	lr, pc
	bx	r3
	b	.L648
.L654:
	ldr	r3, .L662+48
	mov	lr, pc
	bx	r3
	b	.L648
.L653:
	ldr	r3, .L662+52
	mov	lr, pc
	bx	r3
	b	.L648
.L652:
	ldr	r3, .L662+56
	mov	lr, pc
	bx	r3
	b	.L648
.L649:
	ldr	r3, .L662+60
	mov	lr, pc
	bx	r3
	b	.L648
.L651:
	ldr	r3, .L662+64
	mov	lr, pc
	bx	r3
	b	.L648
.L663:
	.align	2
.L662:
	.word	goToStart
	.word	oldButtons
	.word	buttons
	.word	state
	.word	lose
	.word	.LANCHOR1
	.word	DMANow
	.word	waitForVblank
	.word	shadowOAM
	.word	pause
	.word	game
	.word	instructions2
	.word	instructions
	.word	color
	.word	story2
	.word	start
	.word	story
	.size	main, .-main
	.text
	.align	2
	.global	checkWin
	.type	checkWin, %function
checkWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L666
	ldr	r3, [r3]
	cmp	r3, #9
	bxle	lr
	b	goToWin
.L667:
	.align	2
.L666:
	.word	numOrbsCollected
	.size	checkWin, .-checkWin
	.align	2
	.global	checkLose
	.type	checkLose, %function
checkLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L670
	ldr	r3, [r3]
	cmp	r3, #0
	bxne	lr
	b	goToLose
.L671:
	.align	2
.L670:
	.word	lives
	.size	checkLose, .-checkLose
	.comm	cheatMode,4,4
	.comm	gameStarted,4,4
	.comm	numOrbsCollected,4,4
	.comm	firstCollision,4,4
	.comm	collisionTimer,4,4
	.comm	jumpTimer,4,4
	.comm	timer,4,4
	.comm	direction,4,4
	.comm	state,4,4
	.comm	lives,4,4
	.comm	arrows,300,4
	.global	numArrows
	.comm	rockets,200,4
	.global	numRockets
	.comm	orbs,100,4
	.global	numOrbs
	.comm	spikePlatforms,200,4
	.global	numSpikePlatforms
	.comm	platforms,400,4
	.global	numPlatforms
	.comm	playerLives,60,4
	.comm	boo,24,4
	.comm	kirby,40,4
	.comm	shadowOAM,1024,4
	.global	vOff
	.global	hOff
	.comm	oldButtons,4,4
	.comm	buttons,4,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	numRockets, %object
	.size	numRockets, 4
numRockets:
	.word	10
	.type	numArrows, %object
	.size	numArrows, 4
numArrows:
	.word	15
	.type	numPlatforms, %object
	.size	numPlatforms, 4
numPlatforms:
	.word	20
	.type	numOrbs, %object
	.size	numOrbs, 4
numOrbs:
	.word	5
	.type	numSpikePlatforms, %object
	.size	numSpikePlatforms, 4
numSpikePlatforms:
	.word	10
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	vOff, %object
	.size	vOff, 4
vOff:
	.space	4
	.type	hOff, %object
	.size	hOff, 4
hOff:
	.space	4
	.ident	"GCC: (devkitARM release 45) 5.3.0"
