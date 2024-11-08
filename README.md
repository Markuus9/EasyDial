# DIAL - Agenda de Contactos en C++

## Descripción del Proyecto
**DIAL** es una aplicación de consola escrita en C++ para gestionar una agenda de contactos. El proyecto destaca por su uso de algoritmos avanzados y estructuras de datos sofisticadas, incluyendo árboles binarios, ordenamiento con Quick Sort, tablas hash, etc. Para ofrecer una solución eficiente y optimizada. Este sistema de agenda permite a los usuarios almacenar, buscar, ordenar y eliminar contactos de manera rápida y eficaz.

## Tabla de Contenidos
- [Características](#características)
- [Estructuras de Datos y Algoritmos](#estructuras-de-datos-y-algoritmos)
- [Requisitos Previos](#requisitos-previos)
- [Instalación](#instalación)
- [Uso](#uso)
- [Ejemplos](#ejemplos)
- [Contribuciones](#contribuciones)

## Características
- **Búsqueda rápida y eficiente** de contactos mediante tablas hash y recorridos de árboles.
- **Ordenamiento de contactos** usando el algoritmo de Quick Sort para búsquedas optimizadas.
- **Estructura de árbol binario** para almacenar contactos de manera estructurada y balanceada.
- **Funciones CRUD** (Crear, Leer, Actualizar, Eliminar) para la gestión de contactos.
- **Interfaz en terminal** intuitiva y sencilla, permitiendo el uso del programa en entornos basados en consola.

## Estructuras de Datos y Algoritmos
El proyecto DIAL implementa varias estructuras de datos y algoritmos avanzados en C++, los cuales incluyen:

### Árboles Binarios
- **Implementación mediante punteros:** Cada nodo del árbol contiene punteros hacia sus nodos hijos y los hijos a los nodos padres, permitiendo una organización eficiente y fácil navegación.
- **Recorridos del árbol:** Preorden, Inorden, y Postorden para diferentes tipos de consultas y visualización de datos.

### Quick Sort
- **Ordenamiento eficiente** de contactos para mejorar la velocidad de búsqueda y visualización, logrando una complejidad promedio de O(n log n).

### Tablas Hash
- **Tablas de hash y mapas hash (HashMap):** Implementación de tablas hash para almacenar contactos con eficiencia en el tiempo de búsqueda, logrando acceso promedio en O(1).

## Requisitos Previos
- **C++11 o superior:** Asegúrese de tener un compilador compatible (como GCC o Clang).
- **CMake (opcional):** Para compilar el proyecto en sistemas que lo soporten.

## Instalación
1. Clonar el repositorio:
   ```bash
   git clone https://github.com/Markuus9/EasyDial.git
   cd EasyDial
## Run
  ```bash
   #compile
   make
   #run
  ./algo
