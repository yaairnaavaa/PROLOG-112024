## Nombre: Jose Alfredo Alvarez Duarte 
# Tarea - Paradigmas de Programación

## 1. Paradigma Imperativo

### ¿Qué es?
El **paradigma imperativo** es uno de los modelos más antiguos y fundamentales en la programación. Este enfoque se basa en dar al computador una serie de instrucciones detalladas que definen los pasos exactos necesarios para resolver un problema. A través de estas instrucciones, el estado del programa se modifica continuamente.

### Principales características
- **Modificación del estado:** El programa se desarrolla como una secuencia de cambios en el estado de las variables.
- **Estructuras de control:** Se utilizan bucles (`for`, `while`), condicionales (`if`, `switch`) y otras instrucciones para dirigir el flujo del programa.
- **Proximidad al hardware:** Refleja cómo funcionan internamente las computadoras, especialmente en términos de CPU y memoria.
- **Enfoque en procedimientos:** Describe paso a paso **cómo** realizar una tarea en lugar de enfocarse en el **resultado**.

### Lenguajes más representativos
- **C:** Popular por su control detallado sobre el hardware y su desempeño.
- **Fortran:** Ampliamente usado en aplicaciones científicas y de ingeniería.
- **Pascal:** Enfocado en la enseñanza de fundamentos de programación.
- **Assembly:** Permite trabajar directamente con el hardware en el nivel más bajo.

### Ventajas
1. **Control absoluto:** Permite a los programadores tener un manejo preciso de los recursos del sistema.
2. **Fácil de aprender:** Su cercanía a conceptos básicos lo hace accesible para quienes comienzan a programar.
3. **Eficiencia:** Ofrece un rendimiento elevado, ideal para aplicaciones de sistemas y de tiempo crítico.

### Desventajas
1. **Complejidad en proyectos grandes:** Escalar programas basados en este paradigma puede ser complicado, lo que lleva a dificultades de mantenimiento.
2. **Menor reutilización de código:** Tiende a generar código menos modular y más difícil de adaptar.
3. **Mayor riesgo de errores:** La administración manual de recursos, como memoria y punteros, incrementa la probabilidad de errores.

### Ejemplo práctico
Un programa en C para calcular la suma de los primeros 10 números naturales:

```c
#include <stdio.h>

int main() {
    int suma = 0;
    for (int i = 1; i <= 10; i++) {
        suma += i;
    }
    printf("La suma es: %d\n", suma);
    return 0;
}
```

---

## 2. Paradigma Orientado a Objetos (POO)

### Definición  
La programación orientada a objetos organiza el código en torno a "objetos", que son instancias de "clases". Cada objeto encapsula datos y comportamientos, lo que permite modelar problemas del mundo real.

### Características principales  
- Uso de conceptos como abstracción, encapsulación, herencia y polimorfismo.
- Enfocado en **qué es un objeto** y **cómo interactúa** con otros.
- Promueve el diseño modular y la reutilización de código.

### Lenguajes representativos
- Java, C++, Python, Ruby.

### Ventajas  
- Mejora la organización y escalabilidad del código.
- Permite la reutilización de componentes mediante herencia y polimorfismo.
- Facilita el mantenimiento y la colaboración en equipos.

### Desventajas
- Curva de aprendizaje más pronunciada para principiantes.
- Puede introducir sobrecarga innecesaria en aplicaciones pequeñas.
- La herencia mal aplicada puede generar complejidad.

### Ejemplo
Definir una clase que represente un coche:  
```java
class Coche {
    String modelo;
    int velocidad;

    public Coche(String modelo) {
        this.modelo = modelo;
        this.velocidad = 0;
    }

    void acelerar() {
        velocidad += 10;
    }

    void frenar() {
        if (velocidad >= 10) velocidad -= 10;
    }
}
```

---

## 3. Paradigma Funcional

### Definición  
El paradigma funcional trata al programa como una colección de funciones matemáticas puras. Se basa en evitar efectos secundarios y cambios de estado, y fomenta el uso de funciones como bloques principales.

### Características principales  
- Inmutabilidad: Los datos no cambian después de ser creados.
- Uso de funciones de orden superior y recursión.
- Enfocado en el **qué** se quiere lograr, no en el **cómo**.
- Ideal para problemas que implican procesamiento masivo de datos o concurrencia.

### Lenguajes representativos
- Haskell, Lisp, Scala, JavaScript (con librerías como React o Lodash).

### Ventajas  
- El código es más conciso y declarativo.
- Facilidad para probar y depurar debido a la ausencia de estados mutables.
- Buen rendimiento en aplicaciones concurrentes.

### Desventajas
- Difícil de entender para quienes vienen de paradigmas imperativos.
- No siempre es eficiente en términos de consumo de memoria.

### Ejemplo
Filtrar números pares de una lista y calcular su suma:  
```javascript
const numeros = [1, 2, 3, 4, 5, 6];
const pares = numeros.filter(n => n % 2 === 0);
const suma = pares.reduce((a, b) => a + b, 0);
console.log(suma);
```

---

## 4. Paradigma Lógico

### Definición  
En el paradigma lógico, el programador define un conjunto de hechos y reglas, y el programa encuentra soluciones utilizando deducción lógica. Es ampliamente usado en inteligencia artificial y sistemas expertos.

### Características principales  
- Declarativo: Especifica **qué** hacer, dejando al motor de inferencia el **cómo**.
- Uso de predicados, hechos y reglas.
- Basado en lógica proposicional y lógica de primer orden.

### Lenguajes representativos
- Prolog, Datalog.

### Ventajas  
- Adecuado para problemas de búsqueda, razonamiento y bases de datos.
- Código compacto y fácil de interpretar.

### Desventajas
- Difícil de implementar en problemas de propósito general.
- Menor uso en aplicaciones comerciales.

### Ejemplo
Definir una base de conocimientos y consultar relaciones:  
```prolog
padre(juan, pedro).
padre(pedro, maria).
abuelo(X, Y) :- padre(X, Z), padre(Z, Y).

% Consulta: ¿Quién es abuelo de María?
?- abuelo(juan, maria).
% Salida: true
```

---

## 5. Comparación entre Paradigmas

| **Aspecto**              | **Imperativo**        | **POO**               | **Funcional**          | **Lógico**              |
|--------------------------|-----------------------|-----------------------|------------------------|-------------------------|
| **Enfoque**              | Instrucciones         | Objetos               | Funciones puras        | Reglas y hechos         |
| **Estado mutable**       | Sí                    | Sí                    | No                     | No                      |
| **Complejidad inicial**  | Baja                  | Media                 | Alta                   | Alta                    |
| **Casos de uso comunes** | Algoritmos simples    | Modelado de sistemas  | Procesamiento de datos | Inteligencia artificial |
| **Lenguajes típicos**    | C, Fortran, Pascal    | Java, Python          | Haskell, Scala         | Prolog                  |
