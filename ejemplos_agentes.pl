% Ejemplos Prácticos de Agentes en Prolog
% =======================================

% AGENTE SIMPLE DE NAVEGACIÓN
% ===========================

% Base de conocimiento: mapa del entorno
conectado(salon, cocina).
conectado(cocina, salon).
conectado(cocina, pasillo).
conectado(pasillo, cocina).
conectado(pasillo, dormitorio).
conectado(dormitorio, pasillo).
conectado(pasillo, baño).
conectado(baño, pasillo).

% Estado del agente
posicion_actual(agente1, salon).
objetivo(agente1, dormitorio).

% Reglas de movimiento
mover(Agente, Desde, Hacia) :-
    posicion_actual(Agente, Desde),
    conectado(Desde, Hacia),
    retract(posicion_actual(Agente, Desde)),
    assert(posicion_actual(Agente, Hacia)),
    format('~w se movió de ~w a ~w~n', [Agente, Desde, Hacia]).

% Planificación de ruta (búsqueda en profundidad)
encontrar_ruta(Origen, Destino, Ruta) :-
    encontrar_ruta_aux(Origen, Destino, [Origen], Ruta).

encontrar_ruta_aux(Destino, Destino, Visitados, Ruta) :-
    reverse(Visitados, Ruta).

encontrar_ruta_aux(Actual, Destino, Visitados, Ruta) :-
    conectado(Actual, Siguiente),
    \+ member(Siguiente, Visitados),
    encontrar_ruta_aux(Siguiente, Destino, [Siguiente|Visitados], Ruta).

% Ejecutar plan de navegación
ejecutar_navegacion(Agente) :-
    posicion_actual(Agente, Actual),
    objetivo(Agente, Meta),
    encontrar_ruta(Actual, Meta, Ruta),
    ejecutar_ruta(Agente, Ruta).

ejecutar_ruta(_, []).
ejecutar_ruta(_, [_]).
ejecutar_ruta(Agente, [Desde, Hacia|Resto]) :-
    mover(Agente, Desde, Hacia),
    ejecutar_ruta(Agente, [Hacia|Resto]).

% AGENTE DE CASA INTELIGENTE
% ==========================

% Declarar predicados dinámicos
:- dynamic dispositivo/4.
:- dynamic posicion_actual/2.

% Dispositivos y sensores
dispositivo(luz_sala, luz, salon, apagado).
dispositivo(luz_cocina, luz, cocina, apagado).
dispositivo(termostato, clima, general, 20).
dispositivo(sensor_temp, sensor, salon, 22).
dispositivo(sensor_mov, sensor, entrada, inactivo).

% Reglas de automatización
automatizar :-
    (sensor_temperatura_alta -> ajustar_temperatura; true),
    (movimiento_detectado -> activar_luces; true),
    (horario_nocturno -> modo_nocturno; true).

sensor_temperatura_alta :-
    dispositivo(sensor_temp, sensor, _, Temp),
    Temp > 25.

ajustar_temperatura :-
    retract(dispositivo(termostato, clima, general, _)),
    assert(dispositivo(termostato, clima, general, 22)),
    write('Temperatura ajustada a 22 grados'), nl.

movimiento_detectado :-
    dispositivo(sensor_mov, sensor, entrada, activo).

activar_luces :-
    retract(dispositivo(luz_sala, luz, salon, apagado)),
    assert(dispositivo(luz_sala, luz, salon, encendido)),
    write('Luz del salón encendida por movimiento'), nl.

% Procesamiento de comandos de voz
procesar_comando("enciende las luces") :-
    encender_todas_luces.

procesar_comando("apaga las luces") :-
    apagar_todas_luces.

procesar_comando("subir temperatura") :-
    dispositivo(termostato, clima, general, TempActual),
    NuevaTemp is TempActual + 2,
    retract(dispositivo(termostato, clima, general, TempActual)),
    assert(dispositivo(termostato, clima, general, NuevaTemp)),
    format('Temperatura ajustada a ~w grados~n', [NuevaTemp]).

encender_todas_luces :-
    forall(dispositivo(ID, luz, Lugar, apagado),
           (retract(dispositivo(ID, luz, Lugar, apagado)),
            assert(dispositivo(ID, luz, Lugar, encendido)),
            format('~w encendida en ~w~n', [ID, Lugar]))).

apagar_todas_luces :-
    forall(dispositivo(ID, luz, Lugar, encendido),
           (retract(dispositivo(ID, luz, Lugar, encendido)),
            assert(dispositivo(ID, luz, Lugar, apagado)),
            format('~w apagada en ~w~n', [ID, Lugar]))).

% AGENTE CHATBOT SIMPLE
% ====================

% Base de conocimiento de respuestas
respuesta("hola", "¡Hola! ¿En qué puedo ayudarte?").
respuesta("como estas", "Estoy funcionando perfectamente, gracias por preguntar.").
respuesta("que puedes hacer", "Puedo ayudarte con información, responder preguntas y controlar dispositivos.").
respuesta("adios", "¡Hasta luego! Que tengas un buen día.").

% Procesamiento de entrada simplificado
chatbot(Entrada, Respuesta) :-
    atom_string(EntradaAtom, Entrada),
    downcase_atom(EntradaAtom, EntradaNorm),
    (respuesta(EntradaNorm, Respuesta) ->
        true
    ;   buscar_respuesta_similar(EntradaNorm, Respuesta)
    ).

normalizar_texto(Texto, TextoNorm) :-
    downcase_atom(Texto, TextoNorm).

es_letra_espacio(C) :-
    (char_code(C, Code), Code >= 97, Code =< 122) ; C = ' '.

buscar_respuesta_similar(Entrada, "Lo siento, no entiendo esa pregunta. ¿Puedes reformularla?") :-
    \+ respuesta(Entrada, _).

% AGENTE DE RECOMENDACIÓN
% ======================

% Base de datos de usuarios y preferencias
usuario(juan, [accion, ciencia_ficcion]).
usuario(maria, [comedia, romance]).
usuario(pedro, [terror, suspense]).

% Base de datos de películas
pelicula(matrix, [accion, ciencia_ficcion], 8.7).
pelicula(terminator, [accion, ciencia_ficcion], 8.0).
pelicula(cuando_harry_conocio_sally, [comedia, romance], 7.6).
pelicula(el_exorcista, [terror, suspense], 8.0).
pelicula(alien, [terror, ciencia_ficcion], 8.5).

% Sistema de recomendación
recomendar(Usuario, Pelicula, Puntuacion) :-
    usuario(Usuario, Preferencias),
    pelicula(Pelicula, Generos, Puntuacion),
    intersection(Preferencias, Generos, Coincidencias),
    length(Coincidencias, NumCoincidencias),
    NumCoincidencias > 0.

mejores_recomendaciones(Usuario, Recomendaciones) :-
    findall(Puntuacion-Pelicula, 
            recomendar(Usuario, Pelicula, Puntuacion), 
            Lista),
    sort(Lista, ListaOrdenada),
    reverse(ListaOrdenada, Recomendaciones).

% AGENTE DE MONITOREO DE SISTEMA
% =============================

% Estado del sistema
recurso(cpu, 45).
recurso(memoria, 78).
recurso(disco, 23).
recurso(red, 12).

umbral(cpu, 80).
umbral(memoria, 85).
umbral(disco, 90).
umbral(red, 95).

% Monitoreo y alertas
monitorear_sistema :-
    forall(recurso(Tipo, Uso),
           verificar_recurso(Tipo, Uso)).

verificar_recurso(Tipo, Uso) :-
    umbral(Tipo, Limite),
    (Uso > Limite ->
        generar_alerta(Tipo, Uso, Limite)
    ;   format('~w: OK (~w%)~n', [Tipo, Uso])
    ).

generar_alerta(Tipo, Uso, Limite) :-
    format('ALERTA: ~w al ~w% (límite: ~w%)~n', [Tipo, Uso, Limite]),
    tomar_accion_correctiva(Tipo).

tomar_accion_correctiva(cpu) :-
    write('Reduciendo procesos no críticos'), nl.
tomar_accion_correctiva(memoria) :-
    write('Liberando memoria caché'), nl.
tomar_accion_correctiva(disco) :-
    write('Iniciando limpieza de archivos temporales'), nl.
tomar_accion_correctiva(red) :-
    write('Optimizando conexiones de red'), nl.

% AGENTE DE PLANIFICACIÓN DE TAREAS
% ================================

% Tareas y dependencias
tarea(compilar_codigo, 30).
tarea(ejecutar_pruebas, 45).
tarea(generar_documentacion, 60).
tarea(revisar_codigo, 90).

dependencia(ejecutar_pruebas, compilar_codigo).
dependencia(generar_documentacion, revisar_codigo).

% Planificación de tareas
planificar_tareas(TareasOrdenadas) :-
    findall(Tarea, tarea(Tarea, _), TodasTareas),
    ordenar_topologico(TodasTareas, TareasOrdenadas).

puede_ejecutar(Tarea, TareasCompletadas) :-
    \+ member(Tarea, TareasCompletadas),
    forall(dependencia(Tarea, Dependencia),
           member(Dependencia, TareasCompletadas)).

ordenar_topologico(Tareas, []) :-
    Tareas = [].

ordenar_topologico(Tareas, [Siguiente|Resto]) :-
    Tareas \= [],
    findall(T, member(T, Tareas), TareasPendientes),
    select(Siguiente, TareasPendientes, TareasRestantes),
    puede_ejecutar(Siguiente, []),
    ordenar_topologico(TareasRestantes, Resto).

% Estimación de tiempo total
tiempo_total_estimado(TiempoTotal) :-
    findall(Tiempo, tarea(_, Tiempo), Tiempos),
    sum_list(Tiempos, TiempoTotal).

% EJEMPLOS DE USO
% ==============

% Para probar el agente de navegación:
% ?- ejecutar_navegacion(agente1).

% Para probar el chatbot:
% ?- chatbot("hola", Respuesta).

% Para probar recomendaciones:
% ?- mejores_recomendaciones(juan, Recs).

% Para monitorear el sistema:
% ?- monitorear_sistema.

% Para planificar tareas:
% ?- planificar_tareas(Plan).