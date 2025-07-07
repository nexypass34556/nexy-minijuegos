# 🚨 INSTRUCCIONES URGENTES - ELIMINAR JUEGOS ANTIGUOS

## ⚠️ PROBLEMA:
Los juegos antiguos siguen apareciendo porque las políticas RLS de Supabase bloquean las modificaciones automáticas.

## ✅ SOLUCIÓN DEFINITIVA:

### PASO 1: Ir a Supabase
1. Abre [supabase.com](https://supabase.com)
2. Entra a tu proyecto
3. Ve a **SQL Editor** (en el menú lateral izquierdo)
4. Haz clic en **"New query"**

### PASO 2: Copiar y Pegar Este Script
```sql
-- DESHABILITAR RLS TEMPORALMENTE
ALTER TABLE games DISABLE ROW LEVEL SECURITY;

-- ELIMINAR TODOS LOS JUEGOS ANTIGUOS
DELETE FROM games WHERE name IN (
    'Adivina el Número',
    'Juego de Memoria', 
    'Rompecabezas',
    'Tiempo de Reacción'
);

-- INSERTAR LOS 4 NUEVOS JUEGOS
INSERT INTO games (name, description, min_points, max_points, difficulty, category, is_active, play_count) VALUES

('Esquiva Meteoritos Espaciales', 
 'Sobrevive en el espacio esquivando meteoritos. Mueve la nave y evita los obstáculos para obtener la puntuación más alta.', 
 8, 40, 'easy', 'reflejos', true, 0),

('Guerra de Comida', 
 'Defiende tu cocina de los vegetales mutantes. Mueve al chef y lanza tomates para repeler las oleadas enemigas.', 
 10, 50, 'medium', 'memoria', true, 0),

('El Tesoro del Topo Minero', 
 'Ayuda al topo minero a recoger todas las gemas antes de que se acabe el tiempo. Planifica tu ruta cuidadosamente.', 
 15, 60, 'hard', 'puzzle', true, 0),

('Atrapa al Fantasma Travieso', 
 'Caza fantasmas y evita las calaveras. Alcanza la puntuación objetivo antes de que se acabe el tiempo.', 
 5, 30, 'easy', 'lógica', true, 0);

-- REACTIVAR RLS
ALTER TABLE games ENABLE ROW LEVEL SECURITY;
```

### PASO 3: Ejecutar
1. Haz clic en **"RUN"** o presiona **Ctrl+Enter**
2. Deberías ver que se insertaron 4 filas

### PASO 4: Verificar
Ejecuta esta consulta para verificar:
```sql
SELECT name, description, category, difficulty FROM games ORDER BY name;
```

## 🎯 RESULTADO ESPERADO:
Después de ejecutar el script, verás SOLO estos 4 juegos:

1. **Atrapa al Fantasma Travieso** (lógica, easy, 5-30 pts)
2. **El Tesoro del Topo Minero** (puzzle, hard, 15-60 pts)  
3. **Esquiva Meteoritos Espaciales** (reflejos, easy, 8-40 pts)
4. **Guerra de Comida** (memoria, medium, 10-50 pts)

## ✅ DESPUÉS DEL SCRIPT:
1. Refresca la página de tu aplicación
2. Los usuarios verán SOLO los nuevos nombres
3. Al hacer clic en "Jugar Ahora" verán las nuevas descripciones
4. **NO HABRÁ RASTRO de los juegos antiguos**

## 🔧 CÓDIGO YA LISTO:
- ✅ El mapeo de juegos está actualizado
- ✅ Los componentes están vinculados correctamente
- ✅ Las descripciones nuevas están implementadas

**¡EJECUTA EL SCRIPT SQL Y LISTO!** 🎉
