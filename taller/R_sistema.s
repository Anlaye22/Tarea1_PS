	.file	"R_sistema.c"
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
