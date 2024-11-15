	.file	"Main.c"
	.text
	.section .rdata,"dr"
.LC0:
	.ascii "r\0"
.LC1:
	.ascii "Data_usuarios.txt\0"
	.align 8
.LC2:
	.ascii "No se pudo abrir el archivo de usuarios.\0"
.LC3:
	.ascii "%[^:]:%s\0"
	.text
	.globl	validar_usuario
	.def	validar_usuario;	.scl	2;	.type	32;	.endef
	.seh_proc	validar_usuario
validar_usuario:
	pushq	%rbp
	.seh_pushreg	%rbp
	subq	$368, %rsp
	.seh_stackalloc	368
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 256(%rbp)
	movq	%rdx, 264(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rcx
	call	fopen
	movq	%rax, 232(%rbp)
	cmpq	$0, 232(%rbp)
	jne	.L4
	leaq	.LC2(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movl	$0, %eax
	jmp	.L7
.L6:
	leaq	16(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	leaq	128(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	sscanf
	leaq	-96(%rbp), %rdx
	movq	256(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L4
	leaq	16(%rbp), %rdx
	movq	264(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L4
	movq	232(%rbp), %rax
	movq	%rax, %rcx
	call	fclose
	movl	$1, %eax
	jmp	.L7
.L4:
	movq	232(%rbp), %rdx
	leaq	128(%rbp), %rax
	movq	%rdx, %r8
	movl	$100, %edx
	movq	%rax, %rcx
	call	fgets
	testq	%rax, %rax
	jne	.L6
	movq	232(%rbp), %rax
	movq	%rax, %rcx
	call	fclose
	movl	$0, %eax
.L7:
	addq	$368, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC4:
	.ascii "a\0"
.LC5:
	.ascii "bitacora.txt\0"
	.align 8
.LC6:
	.ascii "No se pudo abrir el archivo de bit\303\241cora.\0"
.LC7:
	.ascii "%04d/%02d/%02d: %s \342\200\223 %s\12\0"
	.text
	.globl	registrar_bitacora
	.def	registrar_bitacora;	.scl	2;	.type	32;	.endef
	.seh_proc	registrar_bitacora
registrar_bitacora:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$136, %rsp
	.seh_stackalloc	136
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rcx
	call	fopen
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L9
	leaq	.LC6(%rip), %rax
	movq	%rax, %rcx
	call	puts
	jmp	.L8
.L9:
	movl	$0, %ecx
	call	_time64
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_localtime64
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -64(%rbp)
	movq	%rbx, -56(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -48(%rbp)
	movq	%rbx, -40(%rbp)
	movl	32(%rax), %eax
	movl	%eax, -32(%rbp)
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	leal	1(%rax), %r9d
	movl	-44(%rbp), %eax
	leal	1900(%rax), %r8d
	movq	-8(%rbp), %rax
	movq	40(%rbp), %rcx
	movq	%rcx, 48(%rsp)
	movq	32(%rbp), %rcx
	movq	%rcx, 40(%rsp)
	movl	%edx, 32(%rsp)
	leaq	.LC7(%rip), %rdx
	movq	%rax, %rcx
	call	fprintf
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	fclose
	nop
.L8:
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC8:
	.ascii "Ingrese usuario: \0"
.LC9:
	.ascii "%s\0"
.LC10:
	.ascii "Ingrese clave: \0"
.LC11:
	.ascii "Ingreso exitoso al sistema.\0"
.LC12:
	.ascii "Ingreso exitoso al sistema\0"
.LC13:
	.ascii "Usuario o clave incorrectos.\0"
	.align 8
.LC14:
	.ascii "Ingreso fallido usuario/clave err\303\263neo\0"
	.text
	.globl	iniciar_sesion
	.def	iniciar_sesion;	.scl	2;	.type	32;	.endef
	.seh_proc	iniciar_sesion
iniciar_sesion:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$144, %rsp
	.seh_stackalloc	144
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movq	16(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	leaq	.LC10(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	-112(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	leaq	-112(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	validar_usuario
	testb	%al, %al
	je	.L12
	leaq	.LC11(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movq	16(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	movq	%rax, %rcx
	call	registrar_bitacora
	movl	$1, %eax
	jmp	.L14
.L12:
	leaq	.LC13(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movq	16(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rcx
	call	registrar_bitacora
	movl	$0, %eax
.L14:
	addq	$144, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC15:
	.ascii "Triangulo\0"
.LC16:
	.ascii "Paralelogramo\0"
.LC17:
	.ascii "Cuadrado\0"
.LC18:
	.ascii "Rectangulo\0"
.LC19:
	.ascii "Rombo\0"
.LC20:
	.ascii "Trapecio\0"
.LC21:
	.ascii "Circulo\0"
.LC22:
	.ascii "Poligono Regular\0"
.LC23:
	.ascii "Cubo\0"
.LC24:
	.ascii "Cuboide\0"
.LC25:
	.ascii "Cilindro Recto\0"
.LC26:
	.ascii "Esfera\0"
.LC27:
	.ascii "Cono Circular Recto\0"
	.align 8
.LC28:
	.ascii "Acceso denegado. Cerrando el sistema.\0"
.LC29:
	.ascii "Salida del sistema\0"
.LC30:
	.ascii "Saliendo del sistema...\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	subq	$1768, %rsp
	.seh_stackalloc	1768
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	call	__main
	leaq	16(%rbp), %rdx
	movl	$0, %eax
	movl	$200, %ecx
	movq	%rdx, %rdi
	rep stosq
	leaq	.LC15(%rip), %rax
	movq	%rax, 16(%rbp)
	leaq	.LC16(%rip), %rax
	movq	%rax, 24(%rbp)
	leaq	.LC17(%rip), %rax
	movq	%rax, 32(%rbp)
	leaq	.LC18(%rip), %rax
	movq	%rax, 40(%rbp)
	leaq	.LC19(%rip), %rax
	movq	%rax, 48(%rbp)
	leaq	.LC20(%rip), %rax
	movq	%rax, 56(%rbp)
	leaq	.LC21(%rip), %rax
	movq	%rax, 64(%rbp)
	leaq	.LC22(%rip), %rax
	movq	%rax, 72(%rbp)
	leaq	.LC23(%rip), %rax
	movq	%rax, 80(%rbp)
	leaq	.LC24(%rip), %rax
	movq	%rax, 88(%rbp)
	leaq	.LC25(%rip), %rax
	movq	%rax, 96(%rbp)
	leaq	.LC26(%rip), %rax
	movq	%rax, 104(%rbp)
	leaq	.LC27(%rip), %rax
	movq	%rax, 112(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	iniciar_sesion
	xorl	$1, %eax
	testb	%al, %al
	je	.L16
	leaq	.LC28(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movl	$1, %eax
	jmp	.L20
.L16:
	movb	$1, 1631(%rbp)
.L19:
	leaq	16(%rbp), %rax
	movq	%rax, %rcx
	call	preguntarFiguraGeometrica
	movl	%eax, 1624(%rbp)
	movl	1624(%rbp), %eax
	subl	$1, %eax
	cltq
	movq	16(%rbp,%rax,8), %rdx
	movl	1624(%rbp), %eax
	movl	%eax, %ecx
	call	preguntarMetodo
	movl	%eax, 1620(%rbp)
	movl	1624(%rbp), %eax
	subl	$1, %eax
	cltq
	movq	16(%rbp,%rax,8), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	registrar_bitacora
	movl	1624(%rbp), %edx
	movl	1620(%rbp), %eax
	movl	%eax, %ecx
	call	calcular
	call	preguntarContinuar
	movb	%al, 1631(%rbp)
	movzbl	1631(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L18
	leaq	-96(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	movq	%rax, %rcx
	call	registrar_bitacora
	leaq	.LC30(%rip), %rax
	movq	%rax, %rcx
	call	puts
.L18:
	cmpb	$0, 1631(%rbp)
	jne	.L19
	movl	$0, %eax
.L20:
	addq	$1768, %rsp
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC31:
	.ascii "%d. %s\12\0"
.LC32:
	.ascii "\12Elige una figura:\12%s\12\0"
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
	leaq	-48(%rbp), %rdx
	movl	$0, %eax
	movl	$62, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	movl	$0, 460(%rbp)
	jmp	.L22
.L23:
	movl	460(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	496(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	460(%rbp), %eax
	leal	1(%rax), %ecx
	leaq	-96(%rbp), %rax
	movq	%rdx, %r9
	movl	%ecx, %r8d
	leaq	.LC31(%rip), %rdx
	movq	%rax, %rcx
	call	sprintf
	leaq	-96(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	strcat
	addl	$1, 460(%rbp)
.L22:
	cmpl	$12, 460(%rbp)
	jle	.L23
	leaq	-48(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC32(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	-50(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rcx
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
.LC33:
	.ascii "\12\302\277Desea calcular perimetro o area de la figura %s?:\12"
	.ascii "1.Perimetro\12"
	.ascii "2.Area\12\0"
	.align 8
.LC34:
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
	jg	.L26
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC33(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	-2(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	leaq	-2(%rbp), %rax
	movq	%rax, %rcx
	call	atoi
	jmp	.L28
.L26:
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	-2(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	leaq	-2(%rbp), %rax
	movq	%rax, %rcx
	call	atoi
	addl	$2, %eax
.L28:
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
	ja	.L40
	movl	16(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L32(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L32(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L32:
	.long	.L40-.L32
	.long	.L39-.L32
	.long	.L38-.L32
	.long	.L37-.L32
	.long	.L36-.L32
	.long	.L35-.L32
	.long	.L34-.L32
	.long	.L33-.L32
	.long	.L31-.L32
	.text
.L39:
	call	preguntarPerimetroTriangulo
	jmp	.L30
.L38:
	call	preguntarPerimetroParalelogramo
	jmp	.L30
.L37:
	call	preguntarPerimetroCuadrado
	jmp	.L30
.L36:
	call	preguntarPerimetroRectangulo
	jmp	.L30
.L35:
	call	preguntarPerimetroRombo
	jmp	.L30
.L34:
	call	preguntarPerimetroTrapecio
	jmp	.L30
.L33:
	call	preguntarPerimetroCirculo
	jmp	.L30
.L31:
	call	preguntarPerimetroPoligonoRegular
	nop
.L30:
.L40:
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
	ja	.L52
	movl	16(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L44(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L44(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L44:
	.long	.L52-.L44
	.long	.L51-.L44
	.long	.L50-.L44
	.long	.L49-.L44
	.long	.L48-.L44
	.long	.L47-.L44
	.long	.L46-.L44
	.long	.L45-.L44
	.long	.L43-.L44
	.text
.L51:
	call	preguntarAreaTriangulo
	jmp	.L42
.L50:
	call	preguntarAreaParalelogramo
	jmp	.L42
.L49:
	call	preguntarAreaCuadrado
	jmp	.L42
.L48:
	call	preguntarAreaRectangulo
	jmp	.L42
.L47:
	call	preguntarAreaRombo
	jmp	.L42
.L46:
	call	preguntarAreaTrapecio
	jmp	.L42
.L45:
	call	preguntarAreaCirculo
	jmp	.L42
.L43:
	call	preguntarAreaPoligonoRegular
	nop
.L42:
.L52:
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
	ja	.L61
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L56(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L56(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L56:
	.long	.L60-.L56
	.long	.L59-.L56
	.long	.L58-.L56
	.long	.L57-.L56
	.long	.L55-.L56
	.text
.L60:
	call	preguntarSuperficieCubo
	jmp	.L54
.L59:
	call	preguntarSuperficieCuboide
	jmp	.L54
.L58:
	call	preguntarSuperficieCilindroRecto
	jmp	.L54
.L57:
	call	preguntarSuperficieEsfera
	jmp	.L54
.L55:
	call	preguntarSuperficieConoCircularRecto
	nop
.L54:
.L61:
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
	ja	.L70
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L65(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L65(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L65:
	.long	.L69-.L65
	.long	.L68-.L65
	.long	.L67-.L65
	.long	.L66-.L65
	.long	.L64-.L65
	.text
.L69:
	call	preguntarVolumenCubo
	jmp	.L63
.L68:
	call	preguntarVolumenCuboide
	jmp	.L63
.L67:
	call	preguntarVolumenCilindroRecto
	jmp	.L63
.L66:
	call	preguntarVolumenEsfera
	jmp	.L63
.L64:
	call	preguntarVolumenConoCircularRecto
	nop
.L63:
.L70:
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
	cmpl	$4, 16(%rbp)
	je	.L72
	cmpl	$4, 16(%rbp)
	jg	.L77
	cmpl	$3, 16(%rbp)
	je	.L74
	cmpl	$3, 16(%rbp)
	jg	.L77
	cmpl	$1, 16(%rbp)
	je	.L75
	cmpl	$2, 16(%rbp)
	je	.L76
	jmp	.L77
.L75:
	movl	24(%rbp), %eax
	movl	%eax, %ecx
	call	calcularPerimetro
	jmp	.L73
.L76:
	movl	24(%rbp), %eax
	movl	%eax, %ecx
	call	calcularArea
	jmp	.L73
.L74:
	movl	24(%rbp), %eax
	movl	%eax, %ecx
	call	calcularSuperficie
	jmp	.L73
.L72:
	movl	24(%rbp), %eax
	movl	%eax, %ecx
	call	calcularVolumen
	nop
.L73:
.L77:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC35:
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
	leaq	.LC35(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	-2(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rcx
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
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev1, Built by MSYS2 project) 14.2.0"
	.def	fopen;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
	.def	sscanf;	.scl	2;	.type	32;	.endef
	.def	strcmp;	.scl	2;	.type	32;	.endef
	.def	fclose;	.scl	2;	.type	32;	.endef
	.def	fgets;	.scl	2;	.type	32;	.endef
	.def	fprintf;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
	.def	sprintf;	.scl	2;	.type	32;	.endef
	.def	strcat;	.scl	2;	.type	32;	.endef
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
