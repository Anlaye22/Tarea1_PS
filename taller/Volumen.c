#include <stdio.h>
#include "Volumen.h"
#define PI 3.14159 

double volumenCubo(double a){
    return a*a*a;
}

double volumenCuboide(double l, double w, double h){
    return l*w*h;
}

double volumenCilindroRecto(double r, double h){
    return PI*r*r*h;
}

double volumenEsfera(double r){
    return PI*r*r*r*4/3;
}

double volumenConoCircularRecto(double r, double h){
    return PI*r*r*h/3;
}

void preguntarVolumenCubo(){
    double lado, volumen;

    printf("Ingresa la longitud del lado del cubo: ");
    scanf("%lf", &lado);

    volumen = volumenCubo(lado);

    printf("El volumen del cubo es: %.2lf\n", volumen);
}

void preguntarVolumenCuboide(){
    double longitud, ancho, altura, volumen;

    printf("Ingresa la longitud del cuboide: ");
    scanf("%lf", &longitud);

    printf("Ingresa el ancho del cuboide: ");
    scanf("%lf", &ancho);

    printf("Ingresa la altura del cuboide: ");
    scanf("%lf", &altura);

    volumen = volumenCuboide(longitud, ancho, altura);

    printf("El volumen del cuboide es: %.2lf\n", volumen);
}

void preguntarVolumenCilindroRecto(){
    double radio, altura, volumen;

    printf("Ingresa el radio de la base del cilindro: ");
    scanf("%lf", &radio);

    printf("Ingresa la altura del cilindro: ");
    scanf("%lf", &altura);

    volumen = volumenCilindroRecto(radio, altura);

    printf("El volumen del cilindro es: %.2lf\n", volumen);
}

void preguntarVolumenEsfera(){
    double radio, volumen;

    printf("Ingresa el radio de la base del cilindro: ");
    scanf("%lf", &radio);

    volumen = volumenEsfera(radio);

    printf("El volumen de la esfera es: %.2lf\n", volumen);
}

void preguntarVolumenConoCircularRecto(){
    double radio, altura, volumen;

    printf("Ingresa el radio de la base del cono: ");
    scanf("%lf", &radio);

    printf("Ingresa la altura del cono: ");
    scanf("%lf", &altura);

    volumen = volumenConoCircularRecto(radio, altura);

    printf("El volumen del cono es: %.2lf\n", volumen);
}