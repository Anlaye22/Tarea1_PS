	.file	"Area.c"
	.text
	.globl	areaTriangulo
	.def	areaTriangulo;	.scl	2;	.type	32;	.endef
	.seh_proc	areaTriangulo
areaTriangulo:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movsd	%xmm0, 16(%rbp)
	movsd	%xmm1, 24(%rbp)
	movsd	16(%rbp), %xmm0
	mulsd	24(%rbp), %xmm0
	movsd	.LC0(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.globl	areaParalelogramo
	.def	areaParalelogramo;	.scl	2;	.type	32;	.endef
	.seh_proc	areaParalelogramo
areaParalelogramo:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movsd	%xmm0, 16(%rbp)
	movsd	%xmm1, 24(%rbp)
	movsd	16(%rbp), %xmm0
	mulsd	24(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.globl	areaCuadrado
	.def	areaCuadrado;	.scl	2;	.type	32;	.endef
	.seh_proc	areaCuadrado
areaCuadrado:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movsd	%xmm0, 16(%rbp)
	movsd	16(%rbp), %xmm0
	mulsd	16(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.globl	areaRectangulo
	.def	areaRectangulo;	.scl	2;	.type	32;	.endef
	.seh_proc	areaRectangulo
areaRectangulo:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movsd	%xmm0, 16(%rbp)
	movsd	%xmm1, 24(%rbp)
	movsd	16(%rbp), %xmm0
	mulsd	24(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.globl	areaRombo
	.def	areaRombo;	.scl	2;	.type	32;	.endef
	.seh_proc	areaRombo
areaRombo:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movsd	%xmm0, 16(%rbp)
	movsd	%xmm1, 24(%rbp)
	movsd	16(%rbp), %xmm0
	mulsd	24(%rbp), %xmm0
	movsd	.LC0(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.globl	areaTrapecio
	.def	areaTrapecio;	.scl	2;	.type	32;	.endef
	.seh_proc	areaTrapecio
areaTrapecio:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movsd	%xmm0, 16(%rbp)
	movsd	%xmm1, 24(%rbp)
	movsd	%xmm2, 32(%rbp)
	movsd	16(%rbp), %xmm0
	addsd	24(%rbp), %xmm0
	mulsd	32(%rbp), %xmm0
	movsd	.LC0(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.globl	areaCirculo
	.def	areaCirculo;	.scl	2;	.type	32;	.endef
	.seh_proc	areaCirculo
areaCirculo:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movsd	%xmm0, 16(%rbp)
	movsd	16(%rbp), %xmm1
	movsd	.LC1(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	16(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.globl	areaPoligonoRegular
	.def	areaPoligonoRegular;	.scl	2;	.type	32;	.endef
	.seh_proc	areaPoligonoRegular
areaPoligonoRegular:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movsd	%xmm1, 24(%rbp)
	movsd	%xmm2, 32(%rbp)
	cvtsi2sd	16(%rbp), %xmm0
	mulsd	32(%rbp), %xmm0
	mulsd	24(%rbp), %xmm0
	movsd	.LC0(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC2:
	.ascii "Ingresa la base del triangulo: \0"
.LC3:
	.ascii "%lf\0"
	.align 8
.LC4:
	.ascii "Ingresa la altura del triangulo: \0"
	.align 8
.LC5:
	.ascii "El area del triangulo es: %.2lf\12\0"
	.text
	.globl	preguntarAreaTriangulo
	.def	preguntarAreaTriangulo;	.scl	2;	.type	32;	.endef
	.seh_proc	preguntarAreaTriangulo
preguntarAreaTriangulo:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	leaq	.LC2(%rip), %rcx
	call	printf
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rcx
	call	scanf
	leaq	.LC4(%rip), %rcx
	call	printf
	leaq	-24(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rcx
	call	scanf
	movsd	-24(%rbp), %xmm0
	movq	-16(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	areaTriangulo
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movsd	-8(%rbp), %xmm1
	movsd	-8(%rbp), %xmm0
	movq	%xmm0, %rdx
	leaq	.LC5(%rip), %rcx
	call	printf
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC6:
	.ascii "Ingresa la base del paralelogramo: \0"
	.align 8
.LC7:
	.ascii "Ingresa la altura del paralelogramo: \0"
	.align 8
.LC8:
	.ascii "El area del paralelogramo es: %.2lf\12\0"
	.text
	.globl	preguntarAreaParalelogramo
	.def	preguntarAreaParalelogramo;	.scl	2;	.type	32;	.endef
	.seh_proc	preguntarAreaParalelogramo
preguntarAreaParalelogramo:
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
	leaq	.LC3(%rip), %rcx
	call	scanf
	leaq	.LC7(%rip), %rcx
	call	printf
	leaq	-24(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rcx
	call	scanf
	movsd	-24(%rbp), %xmm0
	movq	-16(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	areaParalelogramo
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movsd	-8(%rbp), %xmm1
	movsd	-8(%rbp), %xmm0
	movq	%xmm0, %rdx
	leaq	.LC8(%rip), %rcx
	call	printf
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC9:
	.ascii "Ingresa el lado del cuadrado: \0"
	.align 8
.LC10:
	.ascii "El area del cuadrado es: %.2lf\12\0"
	.text
	.globl	preguntarAreaCuadrado
	.def	preguntarAreaCuadrado;	.scl	2;	.type	32;	.endef
	.seh_proc	preguntarAreaCuadrado
preguntarAreaCuadrado:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	leaq	.LC9(%rip), %rcx
	call	printf
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rcx
	call	scanf
	movq	-16(%rbp), %rax
	movq	%rax, %xmm0
	call	areaCuadrado
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movsd	-8(%rbp), %xmm1
	movsd	-8(%rbp), %xmm0
	movq	%xmm0, %rdx
	leaq	.LC10(%rip), %rcx
	call	printf
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC11:
	.ascii "Ingresa la longitud del primer lado del rectangulo: \0"
	.align 8
.LC12:
	.ascii "Ingresa la longitud del segundo lado del rectangulo: \0"
	.align 8
.LC13:
	.ascii "El area del rectangulo es: %.2lf\12\0"
	.text
	.globl	preguntarAreaRectangulo
	.def	preguntarAreaRectangulo;	.scl	2;	.type	32;	.endef
	.seh_proc	preguntarAreaRectangulo
preguntarAreaRectangulo:
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
	leaq	.LC3(%rip), %rcx
	call	scanf
	leaq	.LC12(%rip), %rcx
	call	printf
	leaq	-24(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rcx
	call	scanf
	movsd	-24(%rbp), %xmm0
	movq	-16(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	areaRectangulo
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
	.ascii "Ingresa la longitud de la primera diagonal del rombo: \0"
	.align 8
.LC15:
	.ascii "Ingresa la longitud de la segunda diagonal del rombo: \0"
.LC16:
	.ascii "El area del rombo es: %.2lf\12\0"
	.text
	.globl	preguntarAreaRombo
	.def	preguntarAreaRombo;	.scl	2;	.type	32;	.endef
	.seh_proc	preguntarAreaRombo
preguntarAreaRombo:
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
	leaq	.LC3(%rip), %rcx
	call	scanf
	leaq	.LC15(%rip), %rcx
	call	printf
	leaq	-24(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rcx
	call	scanf
	movsd	-24(%rbp), %xmm0
	movq	-16(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	areaRombo
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
.LC17:
	.ascii "Ingresa la longitud de la base menor del trapecio: \0"
	.align 8
.LC18:
	.ascii "Ingresa la longitud de la base mayor del trapecio: \0"
	.align 8
.LC19:
	.ascii "Ingresa la longitud de la altura del trapecio: \0"
	.align 8
.LC20:
	.ascii "El area del trapecio es: %.2lf\12\0"
	.text
	.globl	preguntarAreaTrapecio
	.def	preguntarAreaTrapecio;	.scl	2;	.type	32;	.endef
	.seh_proc	preguntarAreaTrapecio
preguntarAreaTrapecio:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	leaq	.LC17(%rip), %rcx
	call	printf
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rcx
	call	scanf
	leaq	.LC18(%rip), %rcx
	call	printf
	leaq	-24(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rcx
	call	scanf
	leaq	.LC19(%rip), %rcx
	call	printf
	leaq	-32(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rcx
	call	scanf
	movsd	-32(%rbp), %xmm1
	movsd	-24(%rbp), %xmm0
	movq	-16(%rbp), %rax
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	areaTrapecio
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movsd	-8(%rbp), %xmm1
	movsd	-8(%rbp), %xmm0
	movq	%xmm0, %rdx
	leaq	.LC20(%rip), %rcx
	call	printf
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC21:
	.ascii "Ingresa la longitud del radio del circulo: \0"
	.align 8
.LC22:
	.ascii "El area del circulo es: %.2lf\12\0"
	.text
	.globl	preguntarAreaCirculo
	.def	preguntarAreaCirculo;	.scl	2;	.type	32;	.endef
	.seh_proc	preguntarAreaCirculo
preguntarAreaCirculo:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	leaq	.LC21(%rip), %rcx
	call	printf
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rcx
	call	scanf
	movq	-16(%rbp), %rax
	movq	%rax, %xmm0
	call	areaCirculo
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movsd	-8(%rbp), %xmm1
	movsd	-8(%rbp), %xmm0
	movq	%xmm0, %rdx
	leaq	.LC22(%rip), %rcx
	call	printf
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC23:
	.ascii "Ingresa el numero de lados del poligono regular: \0"
	.align 8
.LC24:
	.ascii "Ingresa la longitud del apotema del poligono regular: \0"
	.align 8
.LC25:
	.ascii "Ingresa la longitud del lado del poligono regular: \0"
	.align 8
.LC26:
	.ascii "El area del poligono regular es: %.2lf\12\0"
	.text
	.globl	preguntarAreaPoligonoRegular
	.def	preguntarAreaPoligonoRegular;	.scl	2;	.type	32;	.endef
	.seh_proc	preguntarAreaPoligonoRegular
preguntarAreaPoligonoRegular:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	leaq	.LC23(%rip), %rcx
	call	printf
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rcx
	call	scanf
	leaq	.LC24(%rip), %rcx
	call	printf
	leaq	-24(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rcx
	call	scanf
	leaq	.LC25(%rip), %rcx
	call	printf
	leaq	-32(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rcx
	call	scanf
	movsd	-32(%rbp), %xmm1
	movsd	-24(%rbp), %xmm0
	movsd	-16(%rbp), %xmm2
	cvttsd2si	%xmm2, %eax
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movl	%eax, %ecx
	call	areaPoligonoRegular
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movsd	-8(%rbp), %xmm1
	movsd	-8(%rbp), %xmm0
	movq	%xmm0, %rdx
	leaq	.LC26(%rip), %rcx
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
	.long	1073741824
	.align 8
.LC1:
	.long	-266631570
	.long	1074340345
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
