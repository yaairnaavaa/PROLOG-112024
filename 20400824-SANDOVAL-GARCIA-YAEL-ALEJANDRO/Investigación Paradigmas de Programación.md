# Investigación sobre Paradigmas de programación

## Índice

- [Introducción](#introducción)
- [Paradigmas](#paradigmas)
    - [Imperataiva](#imperativa) 
        - [Ventajas](#ventajas)
        - [Inconvenientes](#inconvenientes)
        - [Lenguajes Imperativos](#lenguajes-dentro-del-paradigma-de-progrmación-imperativa)
    - [Declarativa](#declarativa)
        - [Ventajas](#ventajas-1)
        - [Inconvenientes](#inconvenientes-1)
        - [Lenguajes Declarativos](#lenguajes-dentro-del-paradigma-de-progamación-declarativa)
    - [Orientada a Objetos](#orientada-a-objetos)
        - [Principios](#principios)
        - [Ventajas](#ventajas-2)
        - [Lenguajes Orientados a Objetos](#lenguajes-de-programación-que-incorporan-este-paradigma)
    - [Funcional](#funcional)
        - [Relevancia hoy en día](#relevancia-hoy-en-día)
        - [Ventajas](#ventajas-3)
        - [Inconvenientes](#inconvenientes-2)
        - [Lenguajes Funcionales](#lenguajes-de-programación-funcional-más-importantes)
    - [Lógica](#lógica)
        - [Caracterpisticas](#características)
        - [Lenguajes Logicos](#lenguajes-de-programación-lógica)
- [Conclusión](#conclusión)
- [Bibliografía](#bibliografía)

## Introducción

**Los paradigmas de programación definen estándares para escribir código.** Al cambiar a otro idioma que corresponda a un paradigma familiar, al especialista le resultará más fácil superar la “barrera del lenguaje”. 

Los dos paradigmas principales, **imperativo y declarativo**, incluyen otros. Por ejemplo, el paradigma de programación imperativa incluye la programación estructurada y orientada a objetos (OOP), mientras que el paradigma declarativo incluye la programación funcional y lógica. 

## Paradigmas

### Imperativa

De acuerdo con este paradigma, **un programa consiste en una secuencia claramente definida de instrucciones para un ordenador.**

El código fuente de los lenguajes imperativos encadena instrucciones una detrás de otra que determinan lo que debe hacer el ordenador en cada momento para alcanzar un resultado deseado. Los valores utilizados en las variables se modifican durante la ejecución del programa. Para gestionar las instrucciones, se **integran estructuras de control como bucles o estructuras anidadas en el código.**

Los lenguajes de programación imperativa son muy concretos y trabajan cerca del sistema.

#### Ventajas

- Fácilmente legible.
- Fácil de aprender en lo relativo a comportamientos.
- Un modelo fácilmente comprensible para los principiantes (vía de solución).
- Se pueden tener en cuenta características de casos especiales de la aplicación.

#### Inconvenientes

- El código se convierte rápidamente en demasiado amplio y difícil de abarcar.
- Mayor riesgo durante la edición.
- El mantenimiento bloquea el desarrollo de la aplicación, ya que la programación funciona estrechamente con el sistema.
- La optimización y la ampliación son más difíciles.

#### Lenguajes dentro del paradigma de progrmación imperativa:

* Fortran
* Java
* Pascal
* ALGOL
* C
* C#
* C++
* Ensambladores
* BASIC
* COBOL
* Python
* Ruby

### Declarativa

Describe el resultado final deseado, en lugar de mostrar todos los pasos de trabajo. Para alcanzar el objetivo, en la programación declarativa **se determina automáticamente la vía de solución.** Esto funciona siempre y cuando las especificaciones del estado final se definan claramente y exista un procedimiento de ejecución adecuado.

Como la programación declarativa no determina el “cómo”, sino que funciona a un nivel de abstracción muy alto, este paradigma deja **margen para la optimización.** Si se ha desarrollado un procedimiento de ejecución mejor, el algoritmo integrado lo encuentra y lo aplica.

#### Ventajas

- Código más corto y eficiente.
- Realizable con métodos no conocidos en el momento de la programación.
- Optimización sencilla, ya que la ejecución se gestiona mediante un algoritmo.
- Es posible el mantenimiento independiente del desarrollo de la aplicación.

#### Inconvenientes

- En parte, difícil de comprender para personas ajenas.
- Basado en una forma de pensar no habitual en las personas (estado de solución).
- Las características de casos de aplicación individuales se pueden considerar en la programación, pero únicamente de forma compleja.

#### Lenguajes dentro del paradigma de progamación declarativa:

* Prolog
* Lisp
* Haskell
* Miranda
* Erlang
* SQL (en un sentido amplio)

### Orientada a Objetos

**Modelo de programación en el que el diseño de software se organiza alrededor de datos u objetos**, en vez de usar funciones y lógica. Se enfoca en los objetos que los programadores necesitan manipular, en lugar de centrarse en la lógica necesaria para esa manipulación. Un objeto se puede definir como un campo de datos con atributos y comportamientos únicos.

La principal característica de este tipo de programación es que soporta objetos, que tienen un tipo o clase asociado. Esas clases pueden heredar atributos de una clase superior o superclase.

#### Principios

La POO se basa en cuatro pilares fundamentales: Abstracción, Encapsulamiento, Herencia y Polimorfismo.

- Abstracción: Consiste en crear modelos o representaciones abstractas y simplificadas de objetos o sistemas, eliminando detalles irrelevantes o confusos.
- Encapsulamiento: Protección de los datos de una clase del acceso directo desde el exterior. Se utiliza para mantener la integridad de los datos y reducir la complejidad del sistema.
- Herencia: Relación entre una clase padre (superclase) y una clase hija (subclase), donde la clase hija hereda atributos y métodos de la clase padre.
- Polimorfismo: La habilidad de una función, método, variable u objeto de poseer varias formas distintas.

#### Ventajas

* Reutilización del código heredado.
* Mayor modificabilidad.
* Facilidad para detectar errores en el código.
* Modularidad.
* Flexibilidad gracias al polimorfismo.

#### Lenguajes de programación que incorporan este paradigma:

* Java
* JavaScript
* Python
* C++
* Visual Basic .NET
* Ruby
* Scala
* PHP

### Funcional

Como su nombre lo indica este paradigma se centra en las **funciones**. En un programa funcional, todos los elementos pueden entenderse como funciones y el código puede ejecutarse mediante llamadas de función secuenciales. Por el contrario, no se asignan valores de forma independiente. Una función se imagina mejor como una variante especial de un subprograma. Esta es reutilizable y, a diferencia de un procedimiento, devuelve directamente un resultado.

#### Relevancia hoy en día

Aunque las raíces de la programación funcional se remontan a la década de 1930 (como parte de la investigación matemática básica), la estrategia funcional sigue gozando de gran popularidad, especialmente en los campos técnico y matemático. Esto se debe a que ofrece un alto grado de abstracción, ya que está basada en el concepto matemático y el principio de función. Cuando se aplica de forma correcta, este tipo de programación crea un **código muy preciso**. A partir de tantas unidades pequeñas, reutilizables y altamente especializadas como sea posible, se crea un programa para la solución de una tarea sustancialmente mayor.

#### Ventajas

- Los programas no tienen estados
- Muy adecuados para la paralelización.	
- El código se puede testar fácilmente.	
- Código fácilmente verificable, incluso las funciones sin estado se pueden verificar.
- Fácil de combinar con la programación imperativa y orientada a objetos.	
- Código más preciso y más corto.

#### Inconvenientes

- Los datos (por ejemplo, las variables) no se pueden modificar.
- No se permite el acceso eficiente a grandes cantidades de datos.
- No se recomienda para conexiones a bases de datos y servidores.
- No es adecuado para muchas recursiones de la misma pila.
- La programación recurrente puede dar lugar a errores graves.
- No apto para todas las tareas.

#### Lenguajes de programación funcional más importantes:

* LISP
* ML
* Haskell
* OCaml
* F#
* Erlang
* Clojure
* Scala

### Lógica

Se entiende como el mecanismo donde el usuario debe hacerse cargo de programar el ordenador para que sea capaz de tomar decisiones propias basándose en los postulados y parámetros de la lógica matemática. Para que este tipo de programación pueda cumplir con su objetivo, **el programador debe realizar la escritura de un código libre de ambigüedades**.

Asimismo, vale la pena resaltar que la programación lógica tiene como base la lógica de primer orden, por lo que declara las cosas que deben realizarse y el motor de ejecución del ordenador será el que se encargue de decidir cuál es la mejor forma de ejecutarlo.

#### Características

Como característica o propiedad fundamental de la programación lógica se encuentra que es una variación de lo que se conoce como [programación declarativa](#declarativa). Además, se enfoca en establecer la resolución de un problema determinado a partir del qué, es decir, funciona de manera descriptiva, indicando relaciones entre entidades, lo que de una forma u otra lleva a que los lenguajes sean de alto nivel de abstracción. 

De tal manera que la labor del programador debe encaminarse hacia **garantizar que los enunciados puestos en el sistema son los correctos**. Además, este tipo de **programación se caracteriza por basarse en la fórmula de la reconocida ecuación informal de Kowalski**, que dice que algoritmos=lógica+control.

#### Lenguajes de programación lógica:

* Prolog

## Conclusión

Los paradigmas de programación son varios y cada uno resuelve una problemática para la cual fueron diseñados. Algunos datan desde los años 30´s pero aún continúan vigentes, ya sea por los cambios que han sufrido o porque son excelentes a la ahora de desempeñarse en resolver las problemáticas planteadas. Otro punto importante es el cómo existen paradigmas que son un derivado de los paradigmas más antiguos, como lo es el caso de la programación imperativa y la programación orientada a objetos. Siendo este último muy popular en el desarrollo de software. 

## Bibliografía

Equipo editorial de IONOS. (21 de Mayo de 2021). Programación imperativa: resumen del paradigma de programación más antiguo. IONOS Digital Guide. https://www.ionos.es/digitalguide/paginas-web/desarrollo-web/programacion-imperativa/

Equipo editorial de IONOS. (24 de Febrero de 20202). Programación declarativa: cuando el qué es más importante que el cómo. IONOS Digital Guide. https://www.ionos.com/es-us/digitalguide/paginas-web/desarrollo-web/programacion-declarativa/

Universidad Europea. (24 de Agosto de 2022). Programación orientada a objetos. https://universidadeuropea.com/blog/programacion-orientada-objetos/#que-es-la-programacion-orientada-a-objetos

¿Qué son los paradigmas de programación? | TripleTen México. (11 de Noviembre de 2024). TripleTen. https://tripleten.mx/blog/que-son-los-paradigmas-de-programacion/

Equipo editorial de IONOS. (11 de Febrero de 2020). Programación funcional: ideal para algoritmos. IONOS Digital Guide. https://www.ionos.mx/digitalguide/paginas-web/desarrollo-web/programacion-funcional/

Bustos, J. L. (25 de Abril de 2024). ¿Qué es la programación lógica? | KeepCoding Bootcamps. KeepCoding Bootcamps. https://keepcoding.io/blog/que-es-la-programacion-logica/