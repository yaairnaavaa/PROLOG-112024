# Paradigmas de Programación

Un **paradigma de programación** es un estilo o enfoque para resolver problemas mediante un lenguaje de programación. Cada paradigma tiene principios y técnicas que definen cómo escribir y estructurar código. A continuación, se explican los cuatro paradigmas principales: **imperativo**, **orientado a objetos**, **funcional** y **lógico**.

---

## 1. Paradigma Imperativo

### Descripción
El paradigma imperativo se basa en describir **cómo se realiza** una tarea mediante una secuencia de instrucciones o comandos. Es el enfoque más antiguo y está inspirado en la arquitectura de los computadores.

### Características
- Las instrucciones se ejecutan en orden (control secuencial).
- Uso intensivo de **variables** y **estado mutable**.
- Los flujos de control incluyen estructuras como bucles (`for`, `while`) y condicionales (`if`, `else`).

### Ejemplo en Python
```python
suma = 0
for i in range(1, 6):
    suma += i
print(suma)  # Salida: 15
```

## 2. Paradigma Orientado a Objetos (POO)

### Descripción
En este paradigma, el código se organiza en **objetos** que representan entidades del mundo real. Cada objeto tiene **atributos** (datos) y **métodos** (comportamientos).

### Características
- Uso de clases y objetos.
- Principios clave: **encapsulación**, **herencia**, **polimorfismo** y **abstracción**.
- Facilita la reutilización de código y la modularidad.

### Ejemplo en Python
```python
class Persona:
    def __init__(self, nombre, edad):
        self.nombre = nombre
        self.edad = edad

    def saludar(self):
        print(f"Hola, soy {self.nombre} y tengo {self.edad} años.")

p1 = Persona("Kevin", 21)
p1.saludar()
```

## 3. Paradigma Funcional

### Descripción
El paradigma funcional se basa en el uso de **funciones puras** y evita el estado mutable y los efectos secundarios. Está inspirado en la matemática.

### Características
- Uso de funciones como bloques básicos.
- Las funciones son ciudadanos de primera clase (pueden pasarse como argumentos).
- Énfasis en la inmutabilidad y la **recursión**.

### Ejemplo en Python
```python
from functools import reduce

numeros = [1, 2, 3, 4, 5]
suma = reduce(lambda x, y: x + y, numeros)
print(suma)  # Salida: 15
```

## 4. Paradigma Lógico

### Descripción
El paradigma lógico se basa en la **declaración de hechos** y **reglas**. En lugar de indicar cómo resolver un problema, se especifica qué condiciones deben cumplirse.

### Características
- Uso de lenguajes declarativos como **Prolog**.
- Define problemas en términos de **relaciones** y **reglas lógicas**.
- El motor de inferencia se encarga de encontrar soluciones.

### Ejemplo en Prolog
```prolog
padre(juan, maria).
padre(juan, jose).

hermano(X, Y) :-
    padre(P, X),
    padre(P, Y),
    X \= Y.
```

## Comparación de Paradigmas

| Característica          | Imperativo      | Orientado a Objetos | Funcional       | Lógico         |
|-------------------------|-----------------|----------------------|-----------------|----------------|
| **Enfoque**            | Cómo hacerlo    | Modelado de objetos  | Qué calcular    | Qué cumplir    |
| **Estado Mutable**     | Sí              | Sí                   | No              | No             |
| **Reutilización**      | Baja            | Alta                 | Alta            | Alta           |
| **Ejemplos de Lenguajes** | C, Python      | Java, Python         | Haskell, Lisp   | Prolog         |

## Referencias

- Robert W. Sebesta, Concepts of Programming Languages.
- Paul Graham, ANSI Common Lisp.
- Página oficial de [Prolog](https://www.swi-prolog.org/).
- Documentación oficial de Python: [Python.org](https://www.python.org/).



