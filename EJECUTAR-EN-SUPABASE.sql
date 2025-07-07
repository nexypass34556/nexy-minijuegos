-- =====================================================
-- 🔥 EJECUTAR ESTE SCRIPT EN SUPABASE SQL EDITOR
-- =====================================================
-- ESTO ELIMINARÁ DEFINITIVAMENTE LOS JUEGOS ANTIGUOS
-- Y CREARÁ LOS 4 NUEVOS JUEGOS SIN RASTRO DE LOS ANTERIORES
-- =====================================================

-- PASO 1: DESHABILITAR RLS TEMPORALMENTE (SI ES NECESARIO)
ALTER TABLE games DISABLE ROW LEVEL SECURITY;

-- PASO 2: ELIMINAR COMPLETAMENTE TODOS LOS JUEGOS ANTIGUOS
DELETE FROM games WHERE name IN (
    'Adivina el Número',
    'Juego de Memoria', 
    'Rompecabezas',
    'Tiempo de Reacción'
);

-- VERIFICAR QUE SE ELIMINARON
SELECT COUNT(*) as juegos_restantes FROM games;
-- Debería mostrar 0

-- PASO 3: INSERTAR LOS 4 NUEVOS JUEGOS
INSERT INTO games (name, description, min_points, max_points, difficulty, category, is_active, play_count) VALUES

-- 🧩 NUEVO JUEGO 1
('Esquiva Meteoritos Espaciales', 
 'Sobrevive en el espacio esquivando meteoritos. Mueve la nave y evita los obstáculos para obtener la puntuación más alta.', 
 8, 40, 'easy', 'reflejos', true, 0),

-- 🧠 NUEVO JUEGO 2  
('Guerra de Comida', 
 'Defiende tu cocina de los vegetales mutantes. Mueve al chef y lanza tomates para repeler las oleadas enemigas.', 
 10, 50, 'medium', 'memoria', true, 0),

-- 🔍 NUEVO JUEGO 3
('El Tesoro del Topo Minero', 
 'Ayuda al topo minero a recoger todas las gemas antes de que se acabe el tiempo. Planifica tu ruta cuidadosamente.', 
 15, 60, 'hard', 'puzzle', true, 0),

-- ⚡ NUEVO JUEGO 4
('Atrapa al Fantasma Travieso', 
 'Caza fantasmas y evita las calaveras. Alcanza la puntuación objetivo antes de que se acabe el tiempo.', 
 5, 30, 'easy', 'lógica', true, 0);

-- PASO 4: REACTIVAR RLS (SI LO DESEAS)
ALTER TABLE games ENABLE ROW LEVEL SECURITY;

-- PASO 5: VERIFICAR QUE LOS NUEVOS JUEGOS SE CREARON
SELECT 
    id,
    name,
    description,
    min_points,
    max_points,
    difficulty,
    category,
    is_active
FROM games 
WHERE is_active = true 
ORDER BY name;

-- =====================================================
-- RESULTADO ESPERADO:
-- Deberías ver exactamente 4 juegos:
-- 1. Atrapa al Fantasma Travieso (lógica, easy, 5-30 pts)
-- 2. El Tesoro del Topo Minero (puzzle, hard, 15-60 pts)  
-- 3. Esquiva Meteoritos Espaciales (reflejos, easy, 8-40 pts)
-- 4. Guerra de Comida (memoria, medium, 10-50 pts)
-- =====================================================

-- ¡NO HABRÁ RASTRO DE LOS JUEGOS ANTIGUOS! 🎉
