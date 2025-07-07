# 🔥 INSTRUCCIONES FINALES PARA REEMPLAZO COMPLETO DE JUEGOS

## ⚠️ PROBLEMA ACTUAL:
Los usuarios todavía ven los nombres antiguos de los juegos porque las políticas RLS de Supabase están bloqueando las actualizaciones automáticas.

## ✅ SOLUCIÓN: EJECUTAR SQL MANUALMENTE

### PASO 1: Ir a Supabase
1. Abre tu proyecto en [Supabase](https://supabase.com)
2. Ve a **SQL Editor** en el menú lateral
3. Crea una nueva consulta

### PASO 2: Ejecutar el Script SQL
Copia y pega exactamente este código en el SQL Editor:

```sql
-- ELIMINAR COMPLETAMENTE TODOS LOS JUEGOS ANTIGUOS
DELETE FROM games;

-- CREAR LOS 4 NUEVOS JUEGOS
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
```

### PASO 3: Ejecutar y Verificar
1. Haz clic en **RUN** para ejecutar el script
2. Deberías ver que se insertaron 4 filas
3. Ejecuta esta consulta para verificar:
```sql
SELECT name, description, category, difficulty FROM games ORDER BY name;
```

## 🎯 RESULTADO ESPERADO:
Después de ejecutar el script, los usuarios verán:

1. **🧩 Esquiva Meteoritos Espaciales** (easy, reflejos, 8-40 pts)
2. **🧠 Guerra de Comida** (medium, memoria, 10-50 pts)  
3. **🔍 El Tesoro del Topo Minero** (hard, puzzle, 15-60 pts)
4. **⚡ Atrapa al Fantasma Travieso** (easy, lógica, 5-30 pts)

## ✅ CÓDIGO YA ACTUALIZADO:
- ✅ El mapeo de juegos ya está actualizado en `src/app/games/[gameId]/page.tsx`
- ✅ Los componentes están correctamente vinculados
- ✅ Las descripciones nuevas están implementadas
- ✅ NO HAY RASTRO de los nombres antiguos en el código

## 🚀 DESPUÉS DEL SQL:
1. Refresca la aplicación
2. Los usuarios verán los nuevos nombres
3. Al hacer clic en "Jugar Ahora" verán las nuevas instrucciones
4. Los juegos funcionarán con los nuevos nombres y descripciones

**¡NO HABRÁ RASTRO DE LOS JUEGOS ANTIGUOS!** 🎉
