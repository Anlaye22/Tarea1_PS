	.file	"Superficie.c"
	.text
	.globl	superficieCubo
	.def	superficieCubo;	.scl	2;	.type	32;	.endef
	.seh_proc	superficieCubo
superficieCubo:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movsd	%xmm0, 16(%rbp)
	movsd	16(%rbp), %xmm1
	movsd	.LC0(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	16(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.globl	superficieCuboide
	.def	superficieCuboide;	.scl	2;	.type	32;	.endef
	.seh_proc	superficieCuboide
superficieCuboide:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movsd	%xmm0, 16(%rbp)
	movsd	%xmm1, 24(%rbp)
	movsd	%xmm2, 32(%rbp)
	movsd	16(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	24(%rbp), %xmm1
	movsd	16(%rbp), %xmm0
	mulsd	32(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movsd	24(%rbp), %xmm0
	mulsd	32(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	addsd	%xmm0, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.globl	superficieCilindroRecto
	.def	superficieCilindroRecto;	.scl	2;	.type	32;	.endef
	.seh_proc	superficieCilindroRecto
superficieCilindroRecto:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movsd	%xmm0, 16(%rbp)
	movsd	%xmm1, 24(%rbp)
	movsd	16(%rbp), %xmm1
	movsd	.LC1(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	16(%rbp), %xmm1
	movsd	16(%rbp), %xmm2
	movsd	.LC1(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	mulsd	24(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.globl	superficieEsfera
	.def	superficieEsfera;	.scl	2;	.type	32;	.endef
	.seh_proc	superficieEsfera
superficieEsfera:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movsd	%xmm0, 16(%rbp)
	movsd	16(%rbp), %xmm1
	movsd	.LC2(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	16(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.globl	superficieConoCircularRecto
	.def	superficieConoCircularRecto;	.scl	2;	.type	32;	.endef
	.seh_proc	superficieConoCircularRecto
superficieConoCircularRecto:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movsd	%xmm0, 16(%rbp)
	movsd	%xmm1, 24(%rbp)
	movsd	16(%rbp), %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	16(%rbp), %xmm1
	movsd	16(%rbp), %xmm2
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	mulsd	24(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC4:
	.ascii "Ingresa la longitud del lado del cubo: \0"
.LC5:
	.ascii "%lf\0"
	.align 8
.LC6:
	.ascii "La superficie del cubo es: %.2lf\12\0"
	.text
	.globl	preguntarSuperficieCubo
	.def	preguntarSuperficieCubo;	.scl	2;	.type	32;	.endef
	.seh_proc	preguntarSuperficieCubo
preguntarSuperficieCubo:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	leaq	.LC4(%rip), %rcx
	call	printf
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC5(%rip), %rcx
	call	scanf
	movq	-16(%rbp), %rax
	movq	%rax, %xmm0
	call	superficieCubo
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movsd	-8(%rbp), %xmm1
	movsd	-8(%rbp), %xmm0
	movq	%xmm0, %rdx
	leaq	.LC6(%rip), %rcx
	call	printf
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC7:
	.ascii "Ingresa la longitud del cuboide: \0"
	.align 8
.LC8:
	.ascii "Ingresa el ancho del cuboide: \0"
	.align 8
.LC9:
	.ascii "Ingresa la altura del cuboide: \0"
	.align 8
.LC10:
	.ascii "La superficie del cuboide es: %.2lf\12\0"
	.text
	.globl	preguntarSuperficieCuboide
	.def	preguntarSuperficieCuboide;	.scl	2;	.type	32;	.endef
	.seh_proc	preguntarSuperficieCuboide
preguntarSuperficieCuboide:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	leaq	.LC7(%rip), %rcx
	call	printf
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC5(%rip), %rcx
	call	scanf
	leaq	.LC8(%rip), %rcx
	call	printf
	leaq	-24(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC5(%rip), %rcx
	call	scanf
	leaq	.LC9(%rip), %rcx
	call	printf
	leaq	-32(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC5(%rip), %rcx
	call	scanf
	movsd	-32(%rbp), %xmm1
	movsd	-24(%rbp), %xmm0
	movq	-16(%rbp), %rax
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	superficieCuboide
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movsd	-8(%rbp), %xmm1
	movsd	-8(%rbp), %xmm0
	movq	%xmm0, %rdx
	leaq	.LC10(%rip), %rcx
	call	printf
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC11:
	.ascii "Ingresa el radio de la base del cilindro: \0"
	.align 8
.LC12:
	.ascii "Ingresa la altura del cilindro: \0"
	.align 8
.LC13:
	.ascii "La superficie total del cilindro es: %.2lf\12\0"
	.text
	.globl	preguntarSuperficieCilindroRecto
	.def	preguntarSuperficieCilindroRecto;	.scl	2;	.type	32;	.endef
	.seh_proc	preguntarSuperficieCilindroRecto
preguntarSuperficieCilindroRecto:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	leaq	.LC11(%rip), %rcx
	call	printf
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC5(%rip), %rcx
	call	scanf
	leaq	.LC12(%rip), %rcx
	call	printf
	leaq	-24(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC5(%rip), %rcx
	call	scanf
	movsd	-24(%rbp), %xmm0
	movq	-16(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	superficieCilindroRecto
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movsd	-8(%rbp), %xmm1
	movsd	-8(%rbp), %xmm0
	movq	%xmm0, %rdx
	leaq	.LC13(%rip), %rcx
	call	printf
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC14:
	.ascii "Ingresa el radio de la esfera: \0"
	.align 8
.LC15:
	.ascii "La superficie de la esfera es: %.2lf\12\0"
	.text
	.globl	preguntarSuperficieEsfera
	.def	preguntarSuperficieEsfera;	.scl	2;	.type	32;	.endef
	.seh_proc	preguntarSuperficieEsfera
preguntarSuperficieEsfera:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	leaq	.LC14(%rip), %rcx
	call	printf
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC5(%rip), %rcx
	call	scanf
	movq	-16(%rbp), %rax
	movq	%rax, %xmm0
	call	superficieEsfera
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movsd	-8(%rbp), %xmm1
	movsd	-8(%rbp), %xmm0
	movq	%xmm0, %rdx
	leaq	.LC15(%rip), %rcx
	call	printf
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC16:
	.ascii "Ingresa el radio de la base del cono: \0"
	.align 8
.LC17:
	.ascii "Ingresa la longitud de la recta que forma el cono: \0"
	.align 8
.LC18:
	.ascii "La superficie total del cono es: %.2lf\12\0"
	.text
	.globl	preguntarSuperficieConoCircularRecto
	.def	preguntarSuperficieConoCircularRecto;	.scl	2;	.type	32;	.endef
	.seh_proc	preguntarSuperficieConoCircularRecto
preguntarSuperficieConoCircularRecto:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	leaq	.LC16(%rip), %rcx
	call	printf
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC5(%rip), %rcx
	call	scanf
	leaq	.LC17(%rip), %rcx
	call	printf
	leaq	-24(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC5(%rip), %rcx
	call	scanf
	movsd	-24(%rbp), %xmm0
	movq	-16(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	superficieConoCircularRecto
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movsd	-8(%rbp), %xmm1
	movsd	-8(%rbp), %xmm0
	movq	%xmm0, %rdx
	leaq	.LC18(%rip), %rcx
	call	printf
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	0
	.long	1075314688
	.align 8
.LC1:
	.long	-266631570
	.long	1075388921
	.align 8
.LC2:
	.long	-266631570
	.long	1076437497
	.align 8
.LC3:
	.long	-266631570
	.long	1074340345
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
