JORGE LUIS VARGAS PARTIDA
INVESTIGACION DE PARADIGMAS DE PROGRAMACION
(imperativo, orientado a objetos, funcional y logico)

## Paradigmas de Programación
Un paradigma de programación es un estilo o enfoque en la construcción de software, que proporciona un conjunto de conceptos y metodologías para resolver problemas computacionales. Estos paradigmas influyen en cómo se estructura, diseña y escribe el código.

## 1. Paradigma Imperativo
El paradigma imperativo es uno de los más antiguos y se centra en describir cómo se debe realizar una tarea mediante una secuencia de instrucciones que cambian el estado del programa.

Características principales:
Control explícito del flujo del programa: Uso de estructuras como bucles (for, while) y condicionales (if, else).
Estado mutable: Las variables se utilizan para almacenar y modificar información a lo largo del programa.
Enfoque en "cómo hacerlo": El programador define paso a paso cómo se resuelve el problema.

Ventajas:
Fácil de entender para principiantes, ya que se asemeja a instrucciones humanas.
Control detallado sobre el flujo de ejecución.

Desventajas:
Dificultad para manejar programas complejos debido a la gestión manual del estado.
Mayor propensión a errores, como condiciones de carrera y mutaciones no deseadas.

Lenguajes representativos:
-C
-Pascal
-Assembly

## 2. Paradigma Orientado a Objetos (POO)
El paradigma orientado a objetos organiza el código en objetos que representan entidades del mundo real, combinando datos y comportamientos en una sola estructura.

Características principales:
Clases y objetos: Las clases actúan como plantillas y los objetos como instancias.
Encapsulamiento: Agrupa datos y métodos dentro de una clase para proteger el estado del objeto.
Herencia: Permite reutilizar código al derivar clases hijas de clases padres.
Polimorfismo: Habilidad de redefinir métodos en clases derivadas.
Abstracción: Permite modelar solo los aspectos relevantes de una entidad.

Ventajas:
Modularidad y reutilización del código.
Fácil mantenimiento y escalabilidad.
Modelado intuitivo de problemas del mundo real.

Desventajas:
Mayor curva de aprendizaje.
Puede ser ineficiente en tareas simples.

Lenguajes representativos:
-Java
-Python
-C++
-Ruby

## 3. Paradigma Funcional
El paradigma funcional se basa en la idea de funciones matemáticas puras, evitando estados mutables y efectos secundarios.

Características principales:
Funciones puras: Siempre producen el mismo resultado para las mismas entradas.
Inmutabilidad: Las variables no cambian después de ser asignadas.
Composición de funciones: Combina funciones simples para crear funciones más complejas.
Evaluación perezosa: Calcula valores solo cuando son necesarios.
Enfoque en "qué hacer": Describe el problema a resolver en lugar de cómo resolverlo.

Ventajas:
Facilita la concurrencia y paralelismo.
Menor probabilidad de errores relacionados con estados mutables.
Código más expresivo y compacto.

Desventajas:
Difícil de adoptar para programadores acostumbrados a otros paradigmas.
Menos eficiente para tareas que requieren manejo de estado.

Lenguajes representativos:
-Haskell
-SAla
-Elixir
-JavaScript (en estilo funcional, con funciones como map, reduce, etc.)

## 4. Paradigma Lógico
El paradigma lógico se basa en la lógica formal y se utiliza principalmente para resolver problemas de deducción y búsqueda.

Características principales:
Declarativo: Describe qué se desea lograr en lugar de cómo hacerlo.
Basado en reglas: Define hechos y reglas que el motor de inferencia utiliza para derivar conclusiones.
Resolución automática: Un motor lógico encuentra soluciones basándose en las reglas definidas.

Ventajas:
Ideal para problemas complejos de búsqueda y deducción.
Expresivo para problemas matemáticos y de inteligencia artificial.

Desventajas:
Difícil de aplicar a problemas fuera del ámbito de la lógica.
Menor eficiencia en comparación con paradigmas imperativos.

Lenguajes representativos:
-Prolog
-Datalog

Comparativa entre los paradigmas
Aspecto	Imperativo	Orientado a Objetos	Funcional	Lógico
Enfoque	Cómo hacerlo	Entidades y relaciones	Qué calcular	Qué deducir
Estado	Mutable	Mutable (pero encapsulado)	Inmutable	Inmutable
Reusabilidad	Baja	Alta	Alta	Moderada
Adecuado para	Tareas simples	Aplicaciones grandes y escalables	Concurrencia	Resolución de problemas lógico-matemáticos

## EJEMPLOS

## Imperativo (C):
int factorial(int n) {
    int result = 1;
    for (int i = 1; i <= n; i++) {
        result *= i;
    }
    return result;
}

## Orientado a Objetos (Python):
class Factorial:
    def __init__(self, number):
        self.number = number

    def compute(self):
        result = 1
        for i in range(1, self.number + 1):
            result *= i
        return result

factorial = Factorial(5)
print(factorial.compute())

## Funcional (Haskell):
factorial 0 = 1
factorial n = n * factorial (n - 1)

## Lógico (Prolog):
factorial(0, 1).
factorial(N, Result) :- 
    N > 0, 
    N1 is N - 1, 
    factorial(N1, Result1), 
    Result is N * Result1.
