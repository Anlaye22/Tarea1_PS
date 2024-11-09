	.file	"Volumen.c"
	.text
	.globl	volumenCubo
	.def	volumenCubo;	.scl	2;	.type	32;	.endef
	.seh_proc	volumenCubo
volumenCubo:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movsd	%xmm0, 16(%rbp)
	movsd	16(%rbp), %xmm0
	mulsd	16(%rbp), %xmm0
	mulsd	16(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.globl	volumenCuboide
	.def	volumenCuboide;	.scl	2;	.type	32;	.endef
	.seh_proc	volumenCuboide
volumenCuboide:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movsd	%xmm0, 16(%rbp)
	movsd	%xmm1, 24(%rbp)
	movsd	%xmm2, 32(%rbp)
	movsd	16(%rbp), %xmm0
	mulsd	24(%rbp), %xmm0
	mulsd	32(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.globl	volumenCilindroRecto
	.def	volumenCilindroRecto;	.scl	2;	.type	32;	.endef
	.seh_proc	volumenCilindroRecto
volumenCilindroRecto:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movsd	%xmm0, 16(%rbp)
	movsd	%xmm1, 24(%rbp)
	movsd	16(%rbp), %xmm1
	movsd	.LC0(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	16(%rbp), %xmm0
	mulsd	24(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.globl	volumenEsfera
	.def	volumenEsfera;	.scl	2;	.type	32;	.endef
	.seh_proc	volumenEsfera
volumenEsfera:
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
	movapd	%xmm0, %xmm1
	mulsd	16(%rbp), %xmm1
	movsd	.LC1(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LC2(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.globl	volumenConoCircularRecto
	.def	volumenConoCircularRecto;	.scl	2;	.type	32;	.endef
	.seh_proc	volumenConoCircularRecto
volumenConoCircularRecto:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movsd	%xmm0, 16(%rbp)
	movsd	%xmm1, 24(%rbp)
	movsd	16(%rbp), %xmm1
	movsd	.LC0(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	16(%rbp), %xmm0
	mulsd	24(%rbp), %xmm0
	movsd	.LC2(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC3:
	.ascii "Ingresa la longitud del lado del cubo: \0"
.LC4:
	.ascii "%lf\0"
	.align 8
.LC5:
	.ascii "El volumen del cubo es: %.2lf\12\0"
	.text
	.globl	preguntarVolumenCubo
	.def	preguntarVolumenCubo;	.scl	2;	.type	32;	.endef
	.seh_proc	preguntarVolumenCubo
preguntarVolumenCubo:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	leaq	.LC3(%rip), %rcx
	call	printf
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC4(%rip), %rcx
	call	scanf
	movq	-16(%rbp), %rax
	movq	%rax, %xmm0
	call	volumenCubo
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movsd	-8(%rbp), %xmm1
	movsd	-8(%rbp), %xmm0
	movq	%xmm0, %rdx
	leaq	.LC5(%rip), %rcx
	call	printf
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC6:
	.ascii "Ingresa la longitud del cuboide: \0"
	.align 8
.LC7:
	.ascii "Ingresa el ancho del cuboide: \0"
	.align 8
.LC8:
	.ascii "Ingresa la altura del cuboide: \0"
	.align 8
.LC9:
	.ascii "El volumen del cuboide es: %.2lf\12\0"
	.text
	.globl	preguntarVolumenCuboide
	.def	preguntarVolumenCuboide;	.scl	2;	.type	32;	.endef
	.seh_proc	preguntarVolumenCuboide
preguntarVolumenCuboide:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	leaq	.LC6(%rip), %rcx
	call	printf
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC4(%rip), %rcx
	call	scanf
	leaq	.LC7(%rip), %rcx
	call	printf
	leaq	-24(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC4(%rip), %rcx
	call	scanf
	leaq	.LC8(%rip), %rcx
	call	printf
	leaq	-32(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC4(%rip), %rcx
	call	scanf
	movsd	-32(%rbp), %xmm1
	movsd	-24(%rbp), %xmm0
	movq	-16(%rbp), %rax
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	volumenCuboide
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movsd	-8(%rbp), %xmm1
	movsd	-8(%rbp), %xmm0
	movq	%xmm0, %rdx
	leaq	.LC9(%rip), %rcx
	call	printf
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC10:
	.ascii "Ingresa el radio de la base del cilindro: \0"
	.align 8
.LC11:
	.ascii "Ingresa la altura del cilindro: \0"
	.align 8
.LC12:
	.ascii "El volumen del cilindro es: %.2lf\12\0"
	.text
	.globl	preguntarVolumenCilindroRecto
	.def	preguntarVolumenCilindroRecto;	.scl	2;	.type	32;	.endef
	.seh_proc	preguntarVolumenCilindroRecto
preguntarVolumenCilindroRecto:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	leaq	.LC10(%rip), %rcx
	call	printf
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC4(%rip), %rcx
	call	scanf
	leaq	.LC11(%rip), %rcx
	call	printf
	leaq	-24(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC4(%rip), %rcx
	call	scanf
	movsd	-24(%rbp), %xmm0
	movq	-16(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	volumenCilindroRecto
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movsd	-8(%rbp), %xmm1
	movsd	-8(%rbp), %xmm0
	movq	%xmm0, %rdx
	leaq	.LC12(%rip), %rcx
	call	printf
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC13:
	.ascii "El volumen de la esfera es: %.2lf\12\0"
	.text
	.globl	preguntarVolumenEsfera
	.def	preguntarVolumenEsfera;	.scl	2;	.type	32;	.endef
	.seh_proc	preguntarVolumenEsfera
preguntarVolumenEsfera:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	leaq	.LC10(%rip), %rcx
	call	printf
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC4(%rip), %rcx
	call	scanf
	movq	-16(%rbp), %rax
	movq	%rax, %xmm0
	call	volumenEsfera
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movsd	-8(%rbp), %xmm1
	movsd	-8(%rbp), %xmm0
	movq	%xmm0, %rdx
	leaq	.LC13(%rip), %rcx
	call	printf
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC14:
	.ascii "Ingresa el radio de la base del cono: \0"
.LC15:
	.ascii "Ingresa la altura del cono: \0"
	.align 8
.LC16:
	.ascii "El volumen del cono es: %.2lf\12\0"
	.text
	.globl	preguntarVolumenConoCircularRecto
	.def	preguntarVolumenConoCircularRecto;	.scl	2;	.type	32;	.endef
	.seh_proc	preguntarVolumenConoCircularRecto
preguntarVolumenConoCircularRecto:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	leaq	.LC14(%rip), %rcx
	call	printf
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC4(%rip), %rcx
	call	scanf
	leaq	.LC15(%rip), %rcx
	call	printf
	leaq	-24(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC4(%rip), %rcx
	call	scanf
	movsd	-24(%rbp), %xmm0
	movq	-16(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	volumenConoCircularRecto
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movsd	-8(%rbp), %xmm1
	movsd	-8(%rbp), %xmm0
	movq	%xmm0, %rdx
	leaq	.LC16(%rip), %rcx
	call	printf
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	-266631570
	.long	1074340345
	.align 8
.LC1:
	.long	0
	.long	1074790400
	.align 8
.LC2:
	.long	0
	.long	1074266112
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
