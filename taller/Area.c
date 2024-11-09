#include <stdio.h>
#include "Area.h"
#define PI 3.14159 

double areaTriangulo(double a, double b){
    return a*b/2;
}

double areaParalelogramo(double a, double b){
    return a*b;
}

double areaCuadrado(double a){
    return a*a;
}

double areaRectangulo(double a, double b){
    return a*b;
}

double areaRombo(double a, double b){
    return a*b/2;
}

double areaTrapecio(double a, double b, double h){
    return (a+b)*h/2;
}

double areaCirculo(double r){
    return PI*r*r;
}

double areaPoligonoRegular(int n, double a, double l){
    return n*l*a/2;
}

void preguntarAreaTriangulo(){
    double base, altura, area;

    printf("Ingresa la base del triangulo: ");
    scanf("%lf", &base);

    printf("Ingresa la altura del triangulo: ");
    scanf("%lf", &altura);

    area = areaTriangulo(base, altura);

    printf("El area del triangulo es: %.2lf\n", area);
}

void preguntarAreaParalelogramo(){
    double base, altura, area;

    printf("Ingresa la base del paralelogramo: ");
    scanf("%lf", &base);

    printf("Ingresa la altura del paralelogramo: ");
    scanf("%lf", &altura);

    area = areaParalelogramo(base, altura);

    printf("El area del paralelogramo es: %.2lf\n", area);
}

void preguntarAreaCuadrado(){
    double lado, area;

    printf("Ingresa el lado del cuadrado: ");
    scanf("%lf", &lado);

    area = areaCuadrado(lado);

    printf("El area del cuadrado es: %.2lf\n", area);
}

void preguntarAreaRectangulo(){
    double lado1, lado2, area;

    printf("Ingresa la longitud del primer lado del rectangulo: ");
    scanf("%lf", &lado1);

    printf("Ingresa la longitud del segundo lado del rectangulo: ");
    scanf("%lf", &lado2);    

    area = areaRectangulo(lado1, lado2);

    printf("El area del rectangulo es: %.2lf\n", area);
}

void preguntarAreaRombo(){
    double d1, d2, area;

    printf("Ingresa la longitud de la primera diagonal del rombo: ");
    scanf("%lf", &d1);

    printf("Ingresa la longitud de la segunda diagonal del rombo: ");
    scanf("%lf", &d2);

    area = areaRombo(d1, d2);

    printf("El area del rombo es: %.2lf\n", area);
}

void preguntarAreaTrapecio(){
    double b1, b2, h, area;

    printf("Ingresa la longitud de la base menor del trapecio: ");
    scanf("%lf", &b1);

    printf("Ingresa la longitud de la base mayor del trapecio: ");
    scanf("%lf", &b2);

    printf("Ingresa la longitud de la altura del trapecio: ");
    scanf("%lf", &h);

    area = areaTrapecio(b1, b2, h);

    printf("El area del trapecio es: %.2lf\n", area);
}

void preguntarAreaCirculo(){
    double radio, area;

    printf("Ingresa la longitud del radio del circulo: ");
    scanf("%lf", &radio);

    area = areaCirculo(radio);

    printf("El area del circulo es: %.2lf\n", area);
}

void preguntarAreaPoligonoRegular(){
    double n, a, l, area;

    printf("Ingresa el numero de lados del poligono regular: ");
    scanf("%lf", &n);

    printf("Ingresa la longitud del apotema del poligono regular: ");
    scanf("%lf", &a);

    printf("Ingresa la longitud del lado del poligono regular: ");
    scanf("%lf", &l);

    area = areaPoligonoRegular(n,a,l);

    printf("El area del poligono regular es: %.2lf\n", area);
}