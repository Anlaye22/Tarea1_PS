#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h> 
#include "Perimetro.h"
#include "Area.h"
#include "Superficie.h"
#include "Volumen.h"
#include "R_sistema.c"

int preguntarFiguraGeometrica(char* figuras[]);
int preguntarMetodo(int indice, char* figura);
void calcularPerimetro(int figura);
void calcularArea(int figura);
void calcularSuperficie(int figura);
void calcularVolumen(int figura);
void calcular(int metodo, int figura);
bool preguntarContinuar();

int main(){
    char *figuras[200] = {"Triangulo", "Paralelogramo", "Cuadrado", "Rectangulo", "Rombo", "Trapecio", "Circulo", "Poligono Regular", "Cubo", "Cuboide", "Cilindro Recto", "Esfera", "Cono Circular Recto"};
    char usuario[MAX_LINE_LENGTH];

    // Solicitar inicio de sesión
    if (!iniciar_sesion(usuario)) {
        printf("Acceso denegado. Cerrando el sistema.\n");
        return 1;
    }

    bool continuar = true;
    do {
        int indiceFigura = preguntarFiguraGeometrica(figuras);
        int metodo = preguntarMetodo(indiceFigura, figuras[indiceFigura - 1]);
        
        // Registrar la figura seleccionada en la bitácora
        registrar_bitacora(usuario, figuras[indiceFigura - 1]);

        // Calcular el método seleccionado
        calcular(metodo, indiceFigura);

        continuar = preguntarContinuar();
        if (!continuar) {
            registrar_bitacora(usuario, "Salida del sistema");
            printf("Saliendo del sistema...\n");
        }
    } while (continuar);

    return 0;
}

int preguntarFiguraGeometrica(char* figuras[]){
    char pregunta[500] = "";

    for (int i = 0; i < 13; i++) {
        char opcion[35];
        sprintf(opcion, "%d. %s\n", i+1, figuras[i]);
        strcat(pregunta, opcion);
    }
    
    char respuesta[2];
    printf("\nElige una figura:\n%s\n", pregunta);
    scanf("%s", respuesta);

    return atoi(respuesta);
}

int preguntarMetodo(int indice, char* figura){
    char respuesta[2];
    if (indice <= 8){
        printf("\n¿Desea calcular perimetro o area de la figura %s?:\n1.Perimetro\n2.Area\n", figura);
        scanf("%s", respuesta);
        return atoi(respuesta);
    }
    else{
        printf("\n¿Desea calcular superficie o volumen de la figura %s?:\n1.Superficie\n2.Volumen\n", figura);
        scanf("%s", respuesta);
        return atoi(respuesta)+2;
    }
    return 0;
}

void calcularPerimetro(int figura){
    switch (figura){
        case 1:
            preguntarPerimetroTriangulo();
            break;
        case 2:
            preguntarPerimetroParalelogramo();
            break;
        case 3:
            preguntarPerimetroCuadrado();
            break;
        case 4:
            preguntarPerimetroRectangulo();
            break;
        case 5:
            preguntarPerimetroRombo();
            break;
        case 6:
            preguntarPerimetroTrapecio();
            break;
        case 7:
            preguntarPerimetroCirculo();
            break;
        case 8:
            preguntarPerimetroPoligonoRegular();
            break;
    }
}

void calcularArea(int figura){
    switch (figura){
        case 1:
            preguntarAreaTriangulo();
            break;
        case 2:
            preguntarAreaParalelogramo();
            break;
        case 3:
            preguntarAreaCuadrado();
            break;
        case 4:
            preguntarAreaRectangulo();
            break;
        case 5:
            preguntarAreaRombo();
            break;
        case 6:
            preguntarAreaTrapecio();
            break;
        case 7:
            preguntarAreaCirculo();
            break;
        case 8:
            preguntarAreaPoligonoRegular();
            break;
    }
}

void calcularSuperficie(int figura){
    switch (figura){
        case 9:
            preguntarSuperficieCubo();
            break;
        case 10:
            preguntarSuperficieCuboide();
            break;
        case 11:
            preguntarSuperficieCilindroRecto();
            break;
        case 12:
            preguntarSuperficieEsfera();
            break;
        case 13:
            preguntarSuperficieConoCircularRecto();
            break;
    }
}

void calcularVolumen(int figura){
    switch (figura){
        case 9:
            preguntarVolumenCubo();
            break;
        case 10:
            preguntarVolumenCuboide();
            break;
        case 11:
            preguntarVolumenCilindroRecto();
            break;
        case 12:
            preguntarVolumenEsfera();
            break;
        case 13:
            preguntarVolumenConoCircularRecto();
            break;
    }
}

void calcular(int metodo, int figura){
    switch (metodo){
        case 1:
            calcularPerimetro(figura);
            break;
        case 2:
            calcularArea(figura);
            break;
        case 3:
            calcularSuperficie(figura);
            break;
        case 4:
            calcularVolumen(figura);
            break;
    }
}

bool preguntarContinuar(){
    char respuesta[2];
    printf("\n¿Desea calcular algo mas? (Presione 1 para si, 0 para no):\n");
    scanf("%s", respuesta);
    return atoi(respuesta) == 1;
}