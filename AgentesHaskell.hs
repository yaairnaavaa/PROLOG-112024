-- Ejemplos de Agentes en Haskell
-- ==============================

module AgentesHaskell where

import Data.List (find, delete, nub)
import Data.Maybe (fromMaybe, isJust)
import Control.Monad.State

-- TIPOS DE DATOS BÁSICOS
-- ======================

-- Tipo para representar posiciones
type Posicion = (Int, Int)

-- Tipo para acciones que puede realizar un agente
data Accion = Mover Direccion 
           | Recolectar
           | Atacar
           | Esperar
           | Comunicar String
           deriving (Show, Eq)

data Direccion = Norte | Sur | Este | Oeste deriving (Show, Eq)

-- Estado del mundo
data Mundo = Mundo 
    { obstaculos :: [Posicion]
    , tesoros :: [Posicion]
    , agentes :: [Agente]
    , tamano :: (Int, Int)
    } deriving (Show)

-- Tipo para agentes
data Agente = Agente 
    { nombre :: String
    , posicion :: Posicion
    , energia :: Int
    , inventario :: [String]
    , objetivo :: Objetivo
    , tipo :: TipoAgente
    } deriving (Show)

data Objetivo = Explorar
             | BuscarTesoro
             | IrAPosicion Posicion
             | Patrullar [Posicion]
             deriving (Show, Eq)

data TipoAgente = Explorador | Recolector | Guardian deriving (Show, Eq)

-- AGENTE REACTIVO SIMPLE
-- ======================

-- Función principal de decisión para agente reactivo
agenteReactivo :: Agente -> Mundo -> Accion
agenteReactivo agente mundo
    | energia agente < 10 = Esperar
    | hayTesoroAqui = Recolectar
    | hayObstaculoAdelante = girarDerecha
    | otherwise = Mover Norte
  where
    pos = posicion agente
    hayTesoroAqui = pos `elem` tesoros mundo
    hayObstaculoAdelante = adelante pos Norte `elem` obstaculos mundo
    girarDerecha = Mover Este

-- Función auxiliar para calcular posición adelante
adelante :: Posicion -> Direccion -> Posicion
adelante (x, y) Norte = (x, y + 1)
adelante (x, y) Sur   = (x, y - 1)
adelante (x, y) Este  = (x + 1, y)
adelante (x, y) Oeste = (x - 1, y)

-- AGENTE CON ESTADO
-- ================

type AgenteState s a = State s a

-- Estado interno del agente
data EstadoAgente = EstadoAgente
    { memoria :: [Posicion]  -- Lugares visitados
    , plan :: [Accion]       -- Plan actual
    , ciclos :: Int          -- Número de ciclos
    } deriving (Show)

-- Agente con memoria que evita repetir lugares
agenteConMemoria :: Agente -> Mundo -> AgenteState EstadoAgente Accion
agenteConMemoria agente mundo = do
    estado <- get
    let pos = posicion agente
    
    -- Actualizar memoria
    put estado { memoria = pos : memoria estado
               , ciclos = ciclos estado + 1 }
    
    -- Decidir acción basada en memoria
    return $ decidirConMemoria agente mundo (memoria estado)

decidirConMemoria :: Agente -> Mundo -> [Posicion] -> Accion
decidirConMemoria agente mundo visitados
    | hayTesoro = Recolectar
    | length visitados > 20 = Esperar  -- Descansar si ha explorado mucho
    | otherwise = elegirMovimientoSinRepetir pos visitados mundo
  where
    pos = posicion agente
    hayTesoro = pos `elem` tesoros mundo

elegirMovimientoSinRepetir :: Posicion -> [Posicion] -> Mundo -> Accion
elegirMovimientoSinRepetir pos visitados mundo = 
    case find (not . flip elem visitados) posiblesMovimientos of
        Just nuevaPos -> direccionHacia pos nuevaPos
        Nothing -> Esperar  -- No hay lugares nuevos que visitar
  where
    posiblesMovimientos = filter (esValida mundo) 
                        $ map (adelante pos) [Norte, Sur, Este, Oeste]

esValida :: Mundo -> Posicion -> Bool
esValida mundo (x, y) = 
    x >= 0 && y >= 0 && 
    x < fst (tamano mundo) && y < snd (tamano mundo) &&
    (x, y) `notElem` obstaculos mundo

direccionHacia :: Posicion -> Posicion -> Accion
direccionHacia (x1, y1) (x2, y2)
    | x2 > x1 = Mover Este
    | x2 < x1 = Mover Oeste
    | y2 > y1 = Mover Norte
    | otherwise = Mover Sur

-- AGENTE PLANIFICADOR
-- ==================

-- Planificador simple usando búsqueda en anchura
planificarRuta :: Posicion -> Posicion -> Mundo -> [Accion]
planificarRuta inicio fin mundo = 
    fromMaybe [] $ buscarRuta [[inicio]] fin mundo []

buscarRuta :: [[Posicion]] -> Posicion -> Mundo -> [Posicion] -> Maybe [Accion]
buscarRuta [] _ _ _ = Nothing
buscarRuta (camino:caminos) objetivo mundo visitados
    | head camino == objetivo = Just $ convertirAAcciones (reverse camino)
    | head camino `elem` visitados = buscarRuta caminos objetivo mundo visitados
    | otherwise = buscarRuta (caminos ++ nuevosCaminos) objetivo mundo nuevosVisitados
  where
    posActual = head camino
    nuevosVisitados = posActual : visitados
    vecinos = filter (esValida mundo) $ 
              map (adelante posActual) [Norte, Sur, Este, Oeste]
    nuevosCaminos = map (:camino) vecinos

convertirAAcciones :: [Posicion] -> [Accion]
convertirAAcciones [] = []
convertirAAcciones [_] = []
convertirAAcciones (p1:p2:resto) = direccionHacia p1 p2 : convertirAAcciones (p2:resto)

-- AGENTE COLABORATIVO
-- ==================

-- Mensaje entre agentes
data Mensaje = Mensaje 
    { emisor :: String
    , receptor :: String
    , contenido :: ContenidoMensaje
    } deriving (Show)

data ContenidoMensaje = InformarTesoro Posicion
                      | SolicitarAyuda Posicion
                      | Confirmacion
                      | InformarPeligro Posicion
                      deriving (Show)

-- Estado del sistema multi-agente
data SistemaMultiAgente = SistemaMultiAgente
    { agentesActivos :: [Agente]
    , mensajes :: [Mensaje]
    , mundoActual :: Mundo
    } deriving (Show)

-- Procesar mensajes para un agente
procesarMensajes :: String -> [Mensaje] -> [ContenidoMensaje]
procesarMensajes nombreAgente msgs = 
    [contenido msg | msg <- msgs, receptor msg == nombreAgente]

-- Agente que colabora con otros
agenteColaborativo :: String -> SistemaMultiAgente -> (Accion, [Mensaje])
agenteColaborativo nombreAgente sistema =
    case find (\a -> nombre a == nombreAgente) (agentesActivos sistema) of
        Nothing -> (Esperar, [])
        Just agente -> 
            let mensajesRecibidos = procesarMensajes nombreAgente (mensajes sistema)
                accion = decidirColaborativamente agente (mundoActual sistema) mensajesRecibidos
                nuevosMensajes = generarMensajes agente (mundoActual sistema)
            in (accion, nuevosMensajes)

decidirColaborativamente :: Agente -> Mundo -> [ContenidoMensaje] -> Accion
decidirColaborativamente agente mundo mensajes
    | any esInformeTesoro mensajes = moverHaciaTesoro agente mensajes
    | any esSolicitudAyuda mensajes = moverHaciaAyuda agente mensajes
    | posicion agente `elem` tesoros mundo = Recolectar
    | otherwise = agenteReactivo agente mundo
  where
    esInformeTesoro (InformarTesoro _) = True
    esInformeTesoro _ = False
    
    esSolicitudAyuda (SolicitarAyuda _) = True
    esSolicitudAyuda _ = False

moverHaciaTesoro :: Agente -> [ContenidoMensaje] -> Accion
moverHaciaTesoro agente mensajes =
    case [pos | InformarTesoro pos <- mensajes] of
        (pos:_) -> if posicion agente == pos 
                   then Recolectar 
                   else moverHacia (posicion agente) pos
        [] -> Esperar

moverHaciaAyuda :: Agente -> [ContenidoMensaje] -> Accion
moverHaciaAyuda agente mensajes =
    case [pos | SolicitarAyuda pos <- mensajes] of
        (pos:_) -> moverHacia (posicion agente) pos
        [] -> Esperar

moverHacia :: Posicion -> Posicion -> Accion
moverHacia (x1, y1) (x2, y2)
    | x1 < x2 = Mover Este
    | x1 > x2 = Mover Oeste
    | y1 < y2 = Mover Norte
    | y1 > y2 = Mover Sur
    | otherwise = Esperar

generarMensajes :: Agente -> Mundo -> [Mensaje]
generarMensajes agente mundo
    | posicion agente `elem` tesoros mundo = 
        [Mensaje (nombre agente) "todos" (InformarTesoro (posicion agente))]
    | energia agente < 5 = 
        [Mensaje (nombre agente) "todos" (SolicitarAyuda (posicion agente))]
    | otherwise = []

-- AGENTE DE APRENDIZAJE
-- ====================

-- Tabla Q para Q-learning simple
type TablaQ = [((Posicion, Accion), Double)]

-- Parámetros de aprendizaje
data ParametrosAprendizaje = ParametrosAprendizaje
    { alpha :: Double    -- Tasa de aprendizaje
    , gamma :: Double    -- Factor de descuento
    , epsilon :: Double  -- Probabilidad de exploración
    } deriving (Show)

-- Agente que aprende usando Q-learning
agenteAprendizaje :: ParametrosAprendizaje -> TablaQ -> Agente -> Mundo -> 
                     (Accion, TablaQ)
agenteAprendizaje params tablaQ agente mundo =
    let pos = posicion agente
        accionesPosibles = [Mover Norte, Mover Sur, Mover Este, Mover Oeste, Esperar]
        accion = elegirAccion params tablaQ pos accionesPosibles
        nuevaTablaQ = tablaQ  -- Simplificado - normalmente se actualizaría aquí
    in (accion, nuevaTablaQ)

elegirAccion :: ParametrosAprendizaje -> TablaQ -> Posicion -> [Accion] -> Accion
elegirAccion params tablaQ pos acciones =
    -- Simplificado: elegir acción con mayor valor Q
    case acciones of
        [] -> Esperar
        (a:_) -> a  -- Por simplicidad, elegimos la primera acción

obtenerValorQ :: TablaQ -> Posicion -> Accion -> Double
obtenerValorQ tablaQ pos accion = 
    fromMaybe 0.0 $ lookup (pos, accion) tablaQ

-- SISTEMA DE SIMULACIÓN
-- ====================

-- Función para ejecutar un paso de simulación
ejecutarPaso :: Agente -> Mundo -> (Agente, Mundo)
ejecutarPaso agente mundo =
    let accion = agenteReactivo agente mundo
        (nuevoAgente, nuevoMundo) = aplicarAccion agente accion mundo
    in (nuevoAgente, nuevoMundo)

aplicarAccion :: Agente -> Accion -> Mundo -> (Agente, Mundo)
aplicarAccion agente accion mundo = case accion of
    Mover direccion -> 
        let nuevaPos = adelante (posicion agente) direccion
        in if esValida mundo nuevaPos
           then (agente { posicion = nuevaPos, energia = energia agente - 1 }, mundo)
           else (agente { energia = energia agente - 1 }, mundo)
    
    Recolectar -> 
        let pos = posicion agente
        in if pos `elem` tesoros mundo
           then (agente { inventario = "tesoro" : inventario agente,
                         energia = energia agente - 1 },
                 mundo { tesoros = delete pos (tesoros mundo) })
           else (agente { energia = energia agente - 1 }, mundo)
    
    Esperar -> 
        (agente { energia = min 100 (energia agente + 5) }, mundo)
    
    _ -> (agente, mundo)

-- EJEMPLOS DE USO
-- ==============

-- Crear un mundo de ejemplo
mundoEjemplo :: Mundo
mundoEjemplo = Mundo
    { obstaculos = [(2,2), (3,3), (4,1)]
    , tesoros = [(5,5), (1,4), (8,2)]
    , agentes = []
    , tamano = (10, 10)
    }

-- Crear un agente de ejemplo
agenteEjemplo :: Agente
agenteEjemplo = Agente
    { nombre = "Explorador1"
    , posicion = (0, 0)
    , energia = 100
    , inventario = []
    , objetivo = BuscarTesoro
    , tipo = Explorador
    }

-- Función para ejecutar múltiples pasos
simularPasos :: Int -> Agente -> Mundo -> [(Agente, Mundo)]
simularPasos 0 agente mundo = [(agente, mundo)]
simularPasos n agente mundo = 
    let (nuevoAgente, nuevoMundo) = ejecutarPaso agente mundo
    in (nuevoAgente, nuevoMundo) : simularPasos (n-1) nuevoAgente nuevoMundo

-- Ejemplo de ejecución:
-- ghci> take 5 $ simularPasos 10 agenteEjemplo mundoEjemplo