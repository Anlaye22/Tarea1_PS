	.file	"Perimetro.c"
	.text
	.globl	perimetroTriangulo
	.def	perimetroTriangulo;	.scl	2;	.type	32;	.endef
	.seh_proc	perimetroTriangulo
perimetroTriangulo:
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
	addsd	32(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.globl	perimetroParalelogramo
	.def	perimetroParalelogramo;	.scl	2;	.type	32;	.endef
	.seh_proc	perimetroParalelogramo
perimetroParalelogramo:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movsd	%xmm0, 16(%rbp)
	movsd	%xmm1, 24(%rbp)
	movsd	16(%rbp), %xmm0
	addsd	24(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.globl	perimetroCuadrado
	.def	perimetroCuadrado;	.scl	2;	.type	32;	.endef
	.seh_proc	perimetroCuadrado
perimetroCuadrado:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movsd	%xmm0, 16(%rbp)
	movsd	16(%rbp), %xmm1
	movsd	.LC0(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.globl	perimetroRectangulo
	.def	perimetroRectangulo;	.scl	2;	.type	32;	.endef
	.seh_proc	perimetroRectangulo
perimetroRectangulo:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movsd	%xmm0, 16(%rbp)
	movsd	%xmm1, 24(%rbp)
	movsd	16(%rbp), %xmm0
	addsd	24(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.globl	perimetroRombo
	.def	perimetroRombo;	.scl	2;	.type	32;	.endef
	.seh_proc	perimetroRombo
perimetroRombo:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movsd	%xmm0, 16(%rbp)
	movsd	16(%rbp), %xmm1
	movsd	.LC0(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.globl	perimetroTrapecio
	.def	perimetroTrapecio;	.scl	2;	.type	32;	.endef
	.seh_proc	perimetroTrapecio
perimetroTrapecio:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movsd	%xmm0, 16(%rbp)
	movsd	%xmm1, 24(%rbp)
	movsd	%xmm2, 32(%rbp)
	movsd	%xmm3, 40(%rbp)
	movsd	16(%rbp), %xmm0
	addsd	24(%rbp), %xmm0
	addsd	32(%rbp), %xmm0
	addsd	40(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.globl	perimetroCirculo
	.def	perimetroCirculo;	.scl	2;	.type	32;	.endef
	.seh_proc	perimetroCirculo
perimetroCirculo:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movsd	%xmm0, 16(%rbp)
	movsd	16(%rbp), %xmm1
	movsd	.LC1(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.globl	perimetroPoligonoRegular
	.def	perimetroPoligonoRegular;	.scl	2;	.type	32;	.endef
	.seh_proc	perimetroPoligonoRegular
perimetroPoligonoRegular:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movsd	%xmm1, 24(%rbp)
	cvtsi2sd	16(%rbp), %xmm0
	mulsd	24(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC2:
	.ascii "Ingresa el primer lado del triangulo: \0"
.LC3:
	.ascii "%lf\0"
	.align 8
.LC4:
	.ascii "Ingresa el segundo lado del triangulo: \0"
	.align 8
.LC5:
	.ascii "Ingresa el tercer lado del triangulo: \0"
	.align 8
.LC6:
	.ascii "El perimetro del triangulo es: %.2lf\12\0"
	.text
	.globl	preguntarPerimetroTriangulo
	.def	preguntarPerimetroTriangulo;	.scl	2;	.type	32;	.endef
	.seh_proc	preguntarPerimetroTriangulo
preguntarPerimetroTriangulo:
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
	leaq	.LC5(%rip), %rcx
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
	call	perimetroTriangulo
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movsd	-8(%rbp), %xmm1
	movsd	-8(%rbp), %xmm0
	movq	%xmm0, %rdx
	leaq	.LC6(%rip), %rcx
	call	printf
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC7:
	.ascii "Ingresa la longitud del primer lado del paralelogramo: \0"
	.align 8
.LC8:
	.ascii "Ingresa la longitud del segundo lado del paralelogramo: \0"
	.align 8
.LC9:
	.ascii "El perimetro del paralelogramo es: %.2lf\12\0"
	.text
	.globl	preguntarPerimetroParalelogramo
	.def	preguntarPerimetroParalelogramo;	.scl	2;	.type	32;	.endef
	.seh_proc	preguntarPerimetroParalelogramo
preguntarPerimetroParalelogramo:
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
	leaq	.LC3(%rip), %rcx
	call	scanf
	leaq	.LC8(%rip), %rcx
	call	printf
	leaq	-24(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rcx
	call	scanf
	movsd	-24(%rbp), %xmm0
	movq	-16(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	perimetroParalelogramo
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
	.ascii "Ingresa la longitud del lado del cuadrado: \0"
	.align 8
.LC11:
	.ascii "El perimetro del cuadrado es: %.2lf\12\0"
	.text
	.globl	preguntarPerimetroCuadrado
	.def	preguntarPerimetroCuadrado;	.scl	2;	.type	32;	.endef
	.seh_proc	preguntarPerimetroCuadrado
preguntarPerimetroCuadrado:
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
	leaq	.LC3(%rip), %rcx
	call	scanf
	movq	-16(%rbp), %rax
	movq	%rax, %xmm0
	call	perimetroCuadrado
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movsd	-8(%rbp), %xmm1
	movsd	-8(%rbp), %xmm0
	movq	%xmm0, %rdx
	leaq	.LC11(%rip), %rcx
	call	printf
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC12:
	.ascii "Ingresa la longitud del primer lado del rectangulo: \0"
	.align 8
.LC13:
	.ascii "Ingresa la longitud del segundo lado del rectangulo: \0"
	.align 8
.LC14:
	.ascii "El perimetro del rectangulo es: %.2lf\12\0"
	.text
	.globl	preguntarPerimetroRectangulo
	.def	preguntarPerimetroRectangulo;	.scl	2;	.type	32;	.endef
	.seh_proc	preguntarPerimetroRectangulo
preguntarPerimetroRectangulo:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	leaq	.LC12(%rip), %rcx
	call	printf
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rcx
	call	scanf
	leaq	.LC13(%rip), %rcx
	call	printf
	leaq	-24(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rcx
	call	scanf
	movsd	-24(%rbp), %xmm0
	movq	-16(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	perimetroRectangulo
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movsd	-8(%rbp), %xmm1
	movsd	-8(%rbp), %xmm0
	movq	%xmm0, %rdx
	leaq	.LC14(%rip), %rcx
	call	printf
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC15:
	.ascii "Ingresa la longitud del lado del rombo: \0"
	.align 8
.LC16:
	.ascii "El perimetro del rombo es: %.2lf\12\0"
	.text
	.globl	preguntarPerimetroRombo
	.def	preguntarPerimetroRombo;	.scl	2;	.type	32;	.endef
	.seh_proc	preguntarPerimetroRombo
preguntarPerimetroRombo:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	leaq	.LC15(%rip), %rcx
	call	printf
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rcx
	call	scanf
	movq	-16(%rbp), %rax
	movq	%rax, %xmm0
	call	perimetroRombo
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movsd	-8(%rbp), %xmm1
	movsd	-8(%rbp), %xmm0
	movq	%xmm0, %rdx
	leaq	.LC16(%rip), %rcx
	call	printf
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC17:
	.ascii "Ingresa la longitud del primer lado del trapecio: \0"
	.align 8
.LC18:
	.ascii "Ingresa la longitud del segundo lado del trapecio: \0"
	.align 8
.LC19:
	.ascii "Ingresa la longitud del tercer lado del trapecio: \0"
	.align 8
.LC20:
	.ascii "Ingresa la longitud del cuarto lado del trapecio: \0"
	.align 8
.LC21:
	.ascii "El perimetro del trapecio es: %.2lf\12\0"
	.text
	.globl	preguntarPerimetroTrapecio
	.def	preguntarPerimetroTrapecio;	.scl	2;	.type	32;	.endef
	.seh_proc	preguntarPerimetroTrapecio
preguntarPerimetroTrapecio:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
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
	leaq	.LC20(%rip), %rcx
	call	printf
	leaq	-40(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rcx
	call	scanf
	movsd	-40(%rbp), %xmm2
	movsd	-32(%rbp), %xmm1
	movsd	-24(%rbp), %xmm0
	movq	-16(%rbp), %rax
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	perimetroTrapecio
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movsd	-8(%rbp), %xmm1
	movsd	-8(%rbp), %xmm0
	movq	%xmm0, %rdx
	leaq	.LC21(%rip), %rcx
	call	printf
	nop
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC22:
	.ascii "Ingresa el radio del circulo: \0"
	.align 8
.LC23:
	.ascii "El perimetro del circulo es: %.2lf\12\0"
	.text
	.globl	preguntarPerimetroCirculo
	.def	preguntarPerimetroCirculo;	.scl	2;	.type	32;	.endef
	.seh_proc	preguntarPerimetroCirculo
preguntarPerimetroCirculo:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	leaq	.LC22(%rip), %rcx
	call	printf
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rcx
	call	scanf
	movq	-16(%rbp), %rax
	movq	%rax, %xmm0
	call	perimetroCirculo
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movsd	-8(%rbp), %xmm1
	movsd	-8(%rbp), %xmm0
	movq	%xmm0, %rdx
	leaq	.LC23(%rip), %rcx
	call	printf
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC24:
	.ascii "Ingresa el numero de lados del poligono regular: \0"
	.align 8
.LC25:
	.ascii "Ingresa la longitud de los lados del poligono regular: \0"
	.align 8
.LC26:
	.ascii "El perimetro del poligono regular es: %.2lf\12\0"
	.text
	.globl	preguntarPerimetroPoligonoRegular
	.def	preguntarPerimetroPoligonoRegular;	.scl	2;	.type	32;	.endef
	.seh_proc	preguntarPerimetroPoligonoRegular
preguntarPerimetroPoligonoRegular:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	leaq	.LC24(%rip), %rcx
	call	printf
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rcx
	call	scanf
	leaq	.LC25(%rip), %rcx
	call	printf
	leaq	-24(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rcx
	call	scanf
	movsd	-24(%rbp), %xmm0
	movsd	-16(%rbp), %xmm1
	cvttsd2si	%xmm1, %eax
	movapd	%xmm0, %xmm1
	movl	%eax, %ecx
	call	perimetroPoligonoRegular
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
	.long	1074790400
	.align 8
.LC1:
	.long	-266631570
	.long	1075388921
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
