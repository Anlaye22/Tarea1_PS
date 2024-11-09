#include <stdio.h>
#include "Perimetro.h"
#define PI 3.14159 

double perimetroTriangulo(double a, double b, double c){
    return a + b + c;
}

double perimetroParalelogramo(double a, double b){
    return 2 * (a + b);
}

double perimetroCuadrado(double a){
    return 4*a;
}

double perimetroRectangulo(double a, double b){
    return 2 * (a + b);
}

double perimetroRombo(double a){
    return 4*a;
}

double perimetroTrapecio(double a, double b, double c, double d){
    return a + b + c + d;
}

double perimetroCirculo(double r){
    return 2 * PI * r;
}

double perimetroPoligonoRegular(int n, double a){
    return n*a;
}

void preguntarPerimetroTriangulo(){
    double lado1, lado2, lado3, perimetro;

    printf("Ingresa el primer lado del triangulo: ");
    scanf("%lf", &lado1);

    printf("Ingresa el segundo lado del triangulo: ");
    scanf("%lf", &lado2);

    printf("Ingresa el tercer lado del triangulo: ");
    scanf("%lf", &lado3);

    perimetro = perimetroTriangulo(lado1, lado2, lado3);

    printf("El perimetro del triangulo es: %.2lf\n", perimetro);
}

void preguntarPerimetroParalelogramo(){
    double lado1, lado2, perimetro;

    printf("Ingresa la longitud del primer lado del paralelogramo: ");
    scanf("%lf", &lado1);

    printf("Ingresa la longitud del segundo lado del paralelogramo: ");
    scanf("%lf", &lado2);

    perimetro = perimetroParalelogramo(lado1, lado2);

    printf("El perimetro del paralelogramo es: %.2lf\n", perimetro);
}

void preguntarPerimetroCuadrado(){
    double lado, perimetro;

    printf("Ingresa la longitud del lado del cuadrado: ");
    scanf("%lf", &lado);

    perimetro = perimetroCuadrado(lado);

    printf("El perimetro del cuadrado es: %.2lf\n", perimetro);
}

void preguntarPerimetroRectangulo(){
    double lado1, lado2, perimetro;

    printf("Ingresa la longitud del primer lado del rectangulo: ");
    scanf("%lf", &lado1);

    printf("Ingresa la longitud del segundo lado del rectangulo: ");
    scanf("%lf", &lado2);    

    perimetro = perimetroRectangulo(lado1, lado2);

    printf("El perimetro del rectangulo es: %.2lf\n", perimetro);
}

void preguntarPerimetroRombo(){
    double lado, perimetro;

    printf("Ingresa la longitud del lado del rombo: ");
    scanf("%lf", &lado);

    perimetro = perimetroRombo(lado);

    printf("El perimetro del rombo es: %.2lf\n", perimetro);
}

void preguntarPerimetroTrapecio(){
    double lado1, lado2, lado3, lado4, perimetro;

    printf("Ingresa la longitud del primer lado del trapecio: ");
    scanf("%lf", &lado1);

    printf("Ingresa la longitud del segundo lado del trapecio: ");
    scanf("%lf", &lado2);  

    printf("Ingresa la longitud del tercer lado del trapecio: ");
    scanf("%lf", &lado3);

    printf("Ingresa la longitud del cuarto lado del trapecio: ");
    scanf("%lf", &lado4);

    perimetro = perimetroTrapecio(lado1, lado2, lado3, lado4);

    printf("El perimetro del trapecio es: %.2lf\n", perimetro);
}

void preguntarPerimetroCirculo(){
    double radio, perimetro;

    printf("Ingresa el radio del circulo: ");
    scanf("%lf", &radio);

    perimetro = perimetroCirculo(radio);

    printf("El perimetro del circulo es: %.2lf\n", perimetro);
}

void preguntarPerimetroPoligonoRegular(){
    double n, l, perimetro;

    printf("Ingresa el numero de lados del poligono regular: ");
    scanf("%lf", &n);

    printf("Ingresa la longitud de los lados del poligono regular: ");
    scanf("%lf", &l);    

    perimetro = perimetroPoligonoRegular(n,l);

    printf("El perimetro del poligono regular es: %.2lf\n", perimetro);
}