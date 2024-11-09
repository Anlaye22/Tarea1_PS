#include <stdio.h>
#include "Superficie.h"
#define PI 3.14159 

double superficieCubo(double a){
    return 6*a*a;
}

double superficieCuboide(double l, double w, double h){
    return 2*(l*w + l*h + w*h);
}

double superficieCilindroRecto(double r, double h){
    return 2*PI*r*r + 2*PI*r*h;
}
double superficieEsfera(double r){
    return 4*PI*r*r;
}

double superficieConoCircularRecto(double r, double l){
    return PI*r*r + PI*r*l;
}

void preguntarSuperficieCubo(){
    double lado, superficie;

    printf("Ingresa la longitud del lado del cubo: ");
    scanf("%lf", &lado);

    superficie = superficieCubo(lado);

    printf("La superficie del cubo es: %.2lf\n", superficie);
}

void preguntarSuperficieCuboide(){
    double longitud, ancho, altura, superficie;

    printf("Ingresa la longitud del cuboide: ");
    scanf("%lf", &longitud);

    printf("Ingresa el ancho del cuboide: ");
    scanf("%lf", &ancho);

    printf("Ingresa la altura del cuboide: ");
    scanf("%lf", &altura);

    superficie = superficieCuboide(longitud, ancho, altura);

    printf("La superficie del cuboide es: %.2lf\n", superficie);
}

void preguntarSuperficieCilindroRecto(){
    double radio, altura, superficie;

    printf("Ingresa el radio de la base del cilindro: ");
    scanf("%lf", &radio);

    printf("Ingresa la altura del cilindro: ");
    scanf("%lf", &altura);

    superficie = superficieCilindroRecto(radio, altura);

    printf("La superficie total del cilindro es: %.2lf\n", superficie);
}

void preguntarSuperficieEsfera(){
    double radio, superficie;

    printf("Ingresa el radio de la esfera: ");
    scanf("%lf", &radio);

    superficie = superficieEsfera(radio);

    printf("La superficie de la esfera es: %.2lf\n", superficie);
}

void preguntarSuperficieConoCircularRecto(){
    double radio, generatriz, superficie;

    printf("Ingresa el radio de la base del cono: ");
    scanf("%lf", &radio);

    printf("Ingresa la longitud de la recta que forma el cono: ");
    scanf("%lf", &generatriz);

    superficie = superficieConoCircularRecto(radio, generatriz);

    printf("La superficie total del cono es: %.2lf\n", superficie);
}