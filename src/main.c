#include <stdio.h>
#include "alumno.h"

int main(void) {

    static const struct alumno_s yo = {
        .apellido = "Lopez Luque",
        .nombre = "Martin Eduardo",
        .documento = 41143177,
    };
    char cadena[128];

    if (serializar(&yo, cadena, sizeof(cadena)) >= 0) {
        printf("%s\n", cadena);
    } else {
        printf("error al serializar\n");
    }

    return 0;
}