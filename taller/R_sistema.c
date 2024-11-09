#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include <time.h>

#define MAX_LINE_LENGTH 100

// Función para validar usuario y clave
bool validar_usuario(const char *usuario, const char *clave) {
    FILE *archivo_usuarios = fopen("Data_usuarios.txt", "r");
    if (archivo_usuarios == NULL) {
        printf("No se pudo abrir el archivo de usuarios.\n");
        return false;
    }

    char linea[MAX_LINE_LENGTH];
    while (fgets(linea, MAX_LINE_LENGTH, archivo_usuarios) != NULL) {
        char usuario_archivo[MAX_LINE_LENGTH], clave_archivo[MAX_LINE_LENGTH];
        sscanf(linea, "%[^:]:%s", usuario_archivo, clave_archivo);

        if (strcmp(usuario, usuario_archivo) == 0 && strcmp(clave, clave_archivo) == 0) {
            fclose(archivo_usuarios);
            return true;
        }
    }

    fclose(archivo_usuarios);
    return false;
}

// Función para escribir en la bitácora
void registrar_bitacora(const char *usuario, const char *accion) {
    FILE *archivo_bitacora = fopen("bitacora.txt", "a");
    if (archivo_bitacora == NULL) {
        printf("No se pudo abrir el archivo de bitácora.\n");
        return;
    }

    // Obtener la fecha y hora actual
    time_t t = time(NULL);
    struct tm tm = *localtime(&t);
    fprintf(archivo_bitacora, "%04d/%02d/%02d: %s – %s\n", tm.tm_year + 1900, tm.tm_mon + 1, tm.tm_mday, usuario, accion);

    fclose(archivo_bitacora);
}

// Función para solicitar el ingreso de usuario y clave
bool iniciar_sesion(char *usuario) {
    char clave[MAX_LINE_LENGTH];
    printf("Ingrese usuario: ");
    scanf("%s", usuario);
    printf("Ingrese clave: ");
    scanf("%s", clave);

    if (validar_usuario(usuario, clave)) {
        printf("Ingreso exitoso al sistema.\n");
        registrar_bitacora(usuario, "Ingreso exitoso al sistema");
        return true;
    } else {
        printf("Usuario o clave incorrectos.\n");
        registrar_bitacora(usuario, "Ingreso fallido usuario/clave erróneo");
        return false;
    }
}
