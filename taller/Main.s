	.file	"Main.c"
	.text
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "Triangulo\0"
.LC1:
	.ascii "Paralelogramo\0"
.LC2:
	.ascii "Cuadrado\0"
.LC3:
	.ascii "Rectangulo\0"
.LC4:
	.ascii "Rombo\0"
.LC5:
	.ascii "Trapecio\0"
.LC6:
	.ascii "Circulo\0"
.LC7:
	.ascii "Poligono Regular\0"
.LC8:
	.ascii "Cubo\0"
.LC9:
	.ascii "Cuboide\0"
.LC10:
	.ascii "Cilindro Recto\0"
.LC11:
	.ascii "Esfera\0"
.LC12:
	.ascii "Cono Circular Recto\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	subq	$1648, %rsp
	.seh_stackalloc	1648
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	call	__main
	leaq	-96(%rbp), %rax
	movl	$1600, %edx
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	leaq	.LC0(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -56(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC10(%rip), %rax
	movq	%rax, -16(%rbp)
	leaq	.LC11(%rip), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC12(%rip), %rax
	movq	%rax, 0(%rbp)
	movb	$1, 1519(%rbp)
.L2:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	preguntarFiguraGeometrica
	movl	%eax, 1512(%rbp)
	movl	1512(%rbp), %eax
	subl	$1, %eax
	cltq
	movq	-96(%rbp,%rax,8), %rdx
	movl	1512(%rbp), %eax
	movl	%eax, %ecx
	call	preguntarMetodo
	movl	%eax, 1508(%rbp)
	movl	1512(%rbp), %edx
	movl	1508(%rbp), %eax
	movl	%eax, %ecx
	call	calcular
	call	preguntarContinuar
	movb	%al, 1519(%rbp)
	cmpb	$0, 1519(%rbp)
	jne	.L2
	movl	$0, %eax
	addq	$1648, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC13:
	.ascii "%d. %s\12\0"
.LC14:
	.ascii "\12Elige una figura:\12%s\12\0"
.LC15:
	.ascii "%s\0"
	.text
	.globl	preguntarFiguraGeometrica
	.def	preguntarFiguraGeometrica;	.scl	2;	.type	32;	.endef
	.seh_proc	preguntarFiguraGeometrica
preguntarFiguraGeometrica:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	subq	$600, %rsp
	.seh_stackalloc	600
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 496(%rbp)
	movq	$0, -48(%rbp)
	leaq	-40(%rbp), %rdx
	movl	$0, %eax
	movl	$61, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	movl	$0, 460(%rbp)
	jmp	.L5
.L6:
	movl	460(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	496(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movl	460(%rbp), %eax
	leal	1(%rax), %edx
	leaq	-96(%rbp), %rax
	movq	%rcx, %r9
	movl	%edx, %r8d
	leaq	.LC13(%rip), %rdx
	movq	%rax, %rcx
	call	sprintf
	leaq	-96(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	strcat
	addl	$1, 460(%rbp)
.L5:
	cmpl	$12, 460(%rbp)
	jle	.L6
	leaq	-48(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC14(%rip), %rcx
	call	printf
	leaq	-50(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC15(%rip), %rcx
	call	scanf
	leaq	-50(%rbp), %rax
	movq	%rax, %rcx
	call	atoi
	addq	$600, %rsp
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC16:
	.ascii "\12\302\277Desea calcular perimetro o area de la figura %s?:\12"
	.ascii "1.Perimetro\12"
	.ascii "2.Area\12\0"
	.align 8
.LC17:
	.ascii "\12\302\277Desea calcular superficie o volumen de la figura %s?:\12"
	.ascii "1.Superficie\12"
	.ascii "2.Volumen\12\0"
	.text
	.globl	preguntarMetodo
	.def	preguntarMetodo;	.scl	2;	.type	32;	.endef
	.seh_proc	preguntarMetodo
preguntarMetodo:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	cmpl	$8, 16(%rbp)
	jg	.L9
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC16(%rip), %rcx
	call	printf
	leaq	-2(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC15(%rip), %rcx
	call	scanf
	leaq	-2(%rbp), %rax
	movq	%rax, %rcx
	call	atoi
	jmp	.L11
.L9:
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC17(%rip), %rcx
	call	printf
	leaq	-2(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC15(%rip), %rcx
	call	scanf
	leaq	-2(%rbp), %rax
	movq	%rax, %rcx
	call	atoi
	addl	$2, %eax
.L11:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	calcularPerimetro
	.def	calcularPerimetro;	.scl	2;	.type	32;	.endef
	.seh_proc	calcularPerimetro
calcularPerimetro:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	cmpl	$8, 16(%rbp)
	ja	.L23
	movl	16(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L15(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L15(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L15:
	.long	.L23-.L15
	.long	.L22-.L15
	.long	.L21-.L15
	.long	.L20-.L15
	.long	.L19-.L15
	.long	.L18-.L15
	.long	.L17-.L15
	.long	.L16-.L15
	.long	.L14-.L15
	.text
.L22:
	call	preguntarPerimetroTriangulo
	jmp	.L13
.L21:
	call	preguntarPerimetroParalelogramo
	jmp	.L13
.L20:
	call	preguntarPerimetroCuadrado
	jmp	.L13
.L19:
	call	preguntarPerimetroRectangulo
	jmp	.L13
.L18:
	call	preguntarPerimetroRombo
	jmp	.L13
.L17:
	call	preguntarPerimetroTrapecio
	jmp	.L13
.L16:
	call	preguntarPerimetroCirculo
	jmp	.L13
.L14:
	call	preguntarPerimetroPoligonoRegular
	nop
.L13:
.L23:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	calcularArea
	.def	calcularArea;	.scl	2;	.type	32;	.endef
	.seh_proc	calcularArea
calcularArea:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	cmpl	$8, 16(%rbp)
	ja	.L35
	movl	16(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L27(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L27(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L27:
	.long	.L35-.L27
	.long	.L34-.L27
	.long	.L33-.L27
	.long	.L32-.L27
	.long	.L31-.L27
	.long	.L30-.L27
	.long	.L29-.L27
	.long	.L28-.L27
	.long	.L26-.L27
	.text
.L34:
	call	preguntarAreaTriangulo
	jmp	.L25
.L33:
	call	preguntarAreaParalelogramo
	jmp	.L25
.L32:
	call	preguntarAreaCuadrado
	jmp	.L25
.L31:
	call	preguntarAreaRectangulo
	jmp	.L25
.L30:
	call	preguntarAreaRombo
	jmp	.L25
.L29:
	call	preguntarAreaTrapecio
	jmp	.L25
.L28:
	call	preguntarAreaCirculo
	jmp	.L25
.L26:
	call	preguntarAreaPoligonoRegular
	nop
.L25:
.L35:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	calcularSuperficie
	.def	calcularSuperficie;	.scl	2;	.type	32;	.endef
	.seh_proc	calcularSuperficie
calcularSuperficie:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	16(%rbp), %eax
	subl	$9, %eax
	cmpl	$4, %eax
	ja	.L44
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L39(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L39(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L39:
	.long	.L43-.L39
	.long	.L42-.L39
	.long	.L41-.L39
	.long	.L40-.L39
	.long	.L38-.L39
	.text
.L43:
	call	preguntarSuperficieCubo
	jmp	.L37
.L42:
	call	preguntarSuperficieCuboide
	jmp	.L37
.L41:
	call	preguntarSuperficieCilindroRecto
	jmp	.L37
.L40:
	call	preguntarSuperficieEsfera
	jmp	.L37
.L38:
	call	preguntarSuperficieConoCircularRecto
	nop
.L37:
.L44:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	calcularVolumen
	.def	calcularVolumen;	.scl	2;	.type	32;	.endef
	.seh_proc	calcularVolumen
calcularVolumen:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	16(%rbp), %eax
	subl	$9, %eax
	cmpl	$4, %eax
	ja	.L53
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L48(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L48(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L48:
	.long	.L52-.L48
	.long	.L51-.L48
	.long	.L50-.L48
	.long	.L49-.L48
	.long	.L47-.L48
	.text
.L52:
	call	preguntarVolumenCubo
	jmp	.L46
.L51:
	call	preguntarVolumenCuboide
	jmp	.L46
.L50:
	call	preguntarVolumenCilindroRecto
	jmp	.L46
.L49:
	call	preguntarVolumenEsfera
	jmp	.L46
.L47:
	call	preguntarVolumenConoCircularRecto
	nop
.L46:
.L53:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	calcular
	.def	calcular;	.scl	2;	.type	32;	.endef
	.seh_proc	calcular
calcular:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	cmpl	$2, 16(%rbp)
	je	.L55
	cmpl	$2, 16(%rbp)
	jg	.L56
	cmpl	$1, 16(%rbp)
	je	.L57
	jmp	.L61
.L56:
	cmpl	$3, 16(%rbp)
	je	.L59
	cmpl	$4, 16(%rbp)
	je	.L60
	jmp	.L61
.L57:
	movl	24(%rbp), %eax
	movl	%eax, %ecx
	call	calcularPerimetro
	jmp	.L58
.L55:
	movl	24(%rbp), %eax
	movl	%eax, %ecx
	call	calcularArea
	jmp	.L58
.L59:
	movl	24(%rbp), %eax
	movl	%eax, %ecx
	call	calcularSuperficie
	jmp	.L58
.L60:
	movl	24(%rbp), %eax
	movl	%eax, %ecx
	call	calcularVolumen
	nop
.L58:
.L61:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC18:
	.ascii "\12\302\277Desea calcular algo mas? (Presione 1 para si, 0 para no):\0"
	.text
	.globl	preguntarContinuar
	.def	preguntarContinuar;	.scl	2;	.type	32;	.endef
	.seh_proc	preguntarContinuar
preguntarContinuar:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	leaq	.LC18(%rip), %rcx
	call	puts
	leaq	-2(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC15(%rip), %rcx
	call	scanf
	leaq	-2(%rbp), %rax
	movq	%rax, %rcx
	call	atoi
	cmpl	$1, %eax
	sete	%al
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	sprintf;	.scl	2;	.type	32;	.endef
	.def	strcat;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
	.def	atoi;	.scl	2;	.type	32;	.endef
	.def	preguntarPerimetroTriangulo;	.scl	2;	.type	32;	.endef
	.def	preguntarPerimetroParalelogramo;	.scl	2;	.type	32;	.endef
	.def	preguntarPerimetroCuadrado;	.scl	2;	.type	32;	.endef
	.def	preguntarPerimetroRectangulo;	.scl	2;	.type	32;	.endef
	.def	preguntarPerimetroRombo;	.scl	2;	.type	32;	.endef
	.def	preguntarPerimetroTrapecio;	.scl	2;	.type	32;	.endef
	.def	preguntarPerimetroCirculo;	.scl	2;	.type	32;	.endef
	.def	preguntarPerimetroPoligonoRegular;	.scl	2;	.type	32;	.endef
	.def	preguntarAreaTriangulo;	.scl	2;	.type	32;	.endef
	.def	preguntarAreaParalelogramo;	.scl	2;	.type	32;	.endef
	.def	preguntarAreaCuadrado;	.scl	2;	.type	32;	.endef
	.def	preguntarAreaRectangulo;	.scl	2;	.type	32;	.endef
	.def	preguntarAreaRombo;	.scl	2;	.type	32;	.endef
	.def	preguntarAreaTrapecio;	.scl	2;	.type	32;	.endef
	.def	preguntarAreaCirculo;	.scl	2;	.type	32;	.endef
	.def	preguntarAreaPoligonoRegular;	.scl	2;	.type	32;	.endef
	.def	preguntarSuperficieCubo;	.scl	2;	.type	32;	.endef
	.def	preguntarSuperficieCuboide;	.scl	2;	.type	32;	.endef
	.def	preguntarSuperficieCilindroRecto;	.scl	2;	.type	32;	.endef
	.def	preguntarSuperficieEsfera;	.scl	2;	.type	32;	.endef
	.def	preguntarSuperficieConoCircularRecto;	.scl	2;	.type	32;	.endef
	.def	preguntarVolumenCubo;	.scl	2;	.type	32;	.endef
	.def	preguntarVolumenCuboide;	.scl	2;	.type	32;	.endef
	.def	preguntarVolumenCilindroRecto;	.scl	2;	.type	32;	.endef
	.def	preguntarVolumenEsfera;	.scl	2;	.type	32;	.endef
	.def	preguntarVolumenConoCircularRecto;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
