#ifdef __Cplusplus
extern "c" {
#endif

#include <stdint.h>
/**
 * @brief Define tamaño de los campos
 *
 */
#define SIZE 60

//! Estructura para almacenar datos de un alumno
typedef struct alumno_s {
    char apellido[SIZE]; //!< almacena el nombre
    char nombre[SIZE];   //!< almacena el apellido
    uint32_t documento;  //!< almacena numero de documento
} * alumno_t;

int serializar(const struct alumno_s * alumno, char cadena[], uint32_t espacio);

#ifdef _cplusplus
}
#endif
