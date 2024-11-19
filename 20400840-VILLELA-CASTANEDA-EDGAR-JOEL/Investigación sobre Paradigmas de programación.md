# Investigación sobre Paradigmas de programación (imperativo, orientado a objetos, funcional y lógico)
Los paradigmas de programación son enfoques o estilos que guían el diseño, desarrollo y organización del código en los lenguajes de programación. Cada paradigma tiene sus características, principios y casos de uso específicos. Los principales paradigmas son: imperativo, orientado a objetos, funcional y lógico.

# Paradigma Imperativo
El paradigma imperativo se basa en la descripción detallada de los pasos que debe seguir un programa para alcanzar un objetivo. Es el estilo más antiguo y directo, inspirado en la arquitectura de Von Neumann.

## Características principales:
- Se enfoca en cómo se deben realizar las tareas.
- Usa estructuras de control como bucles (for, while) y condicionales (if, else).
- La memoria y el estado del programa cambian a medida que se ejecutan instrucciones.

> __Ejemplo de lenguajes imperativos:__
> C, Pascal, Fortran. 

### Ventajas:
- Directo y fácil de entender para tareas simples.
- Ofrece un control detallado del flujo de ejecución.
- Ideal para programar aplicaciones cercanas al hardware.

### Desventajas:
- Escalabilidad limitada en proyectos grandes.
- Cambiar el estado de las variables puede llevar a errores difíciles de rastrear.
- Menos enfoque en la reutilización del código.

## Ejemplo en Pseudocódigo:
    inicia suma en 0
    para cada número de 1 a 10:
        suma = suma + número
    imprime suma


# Paradigma Orientado a Objetos
En este paradigma, el diseño del programa se basa en objetos, que son instancias de clases. Cada objeto encapsula datos y comportamientos relacionados.

## Características principales:
- Basado en conceptos como clases, objetos, herencia, polimorfismo y encapsulamiento.
- Se enfoca en qué debe hacerse, modelando entidades del mundo real.
- La interacción ocurre a través de mensajes entre objetos.

> __Ejemplo de lenguajes orientados a objetos:__
> Java, Python, C++, Ruby.

### Ventajas:
- Favorece la reutilización del código mediante herencia y composición.
- Modularidad que facilita el mantenimiento y escalabilidad.
- Ideal para sistemas complejos y aplicaciones grandes.

### Desventajas:
- Requiere una curva de aprendizaje más pronunciada.
- Puede ser innecesariamente complejo para proyectos pequeños.
- Rendimiento ligeramente menor debido al manejo de objetos.

## Ejemplo en Pseudocódigo:
    Clase Coche:
        atributo: color
        atributo: modelo
        método: arrancar()
            imprime "El coche está arrancando"

    miCoche = Coche("rojo", "sedán")
    miCoche.arrancar()


# Paradigma Funcional
El paradigma funcional se basa en la evaluación de funciones matemáticas puras, evitando el cambio de estado y los efectos secundarios.

## Características principales:
- Enfatiza qué se debe hacer en lugar de cómo.
- Usa funciones como elementos fundamentales.
- Evita variables mutables, promoviendo un diseño inmutable.
- Soporte para funciones de orden superior y recursividad.

> __Ejemplo de lenguajes funcionales:__
> Haskell, Lisp, Scala, Erlang.

### Ventajas:
- Código más predecible y menos propenso a errores debido a la inmutabilidad.
- Facilita la paralelización de tareas.
- Enfocado en resolver problemas complejos de manera concisa.

### Desventajas:
- Difícil de entender para principiantes sin experiencia en matemáticas.
- Menor soporte en ciertos lenguajes para integrarse con sistemas imperativos.
- Sobrecarga en el rendimiento para cálculos altamente iterativos.

## Ejemplo en Pseudocódigo:
    función suma(números):
        si longitud(números) == 0:
            retorna 0
        retorna números[0] + suma(números[1:])
    imprime suma([1, 2, 3, 4, 5])


# Paradigma Lógico
El paradigma lógico se centra en el uso de reglas y hechos para resolver problemas mediante inferencia lógica.

## Características principales:
- Se basa en qué se desea lograr, no en cómo hacerlo.
- Se define mediante hechos (hechos) y reglas (si...entonces).
- El motor de inferencia busca resolver consultas basadas en los datos disponibles.

> __Ejemplo de lenguajes lógicos:__
> Prolog, Datalog.

### Ventajas:
- Muy útil para resolver problemas en inteligencia artificial y sistemas expertos.
- Proporciona una forma natural de expresar problemas basados en reglas.
- Reduce la cantidad de código necesaria para ciertos problemas.

### Desventajas:
- Menor rendimiento en comparación con paradigmas imperativos.
- No es adecuado para aplicaciones generales o sistemas en tiempo real.
- Requiere una forma de pensar distinta basada en lógica formal.

## Ejemplo en Pseudocódigo:
    hecho: humano(Socrates)
    regla: mortal(X) si humano(X)
    
    consulta: mortal(Socrates)  -> respuesta: verdadero

# Conclusión
Cada paradigma tiene fortalezas y debilidades que los hacen adecuados para diferentes contextos. Mientras que el imperativo y el orientado a objetos son ampliamente utilizados en el desarrollo de software tradicional, los paradigmas funcional y lógico han ganado popularidad en áreas como el análisis de datos, la inteligencia artificial y la computación distribuida. Elegir el paradigma adecuado depende del problema que se desea resolver, la naturaleza del proyecto y las herramientas disponibles.

