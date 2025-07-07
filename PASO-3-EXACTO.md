# 🎯 PASO 3 EXACTO - QUÉ HACER AHORA

Veo que ya estás en el Editor de SQL de Supabase. Ahora haz esto:

## 📝 BORRAR Y PEGAR:

**1. SELECCIONAR TODO EL CÓDIGO QUE ESTÁ AHÍ:**
- Presiona **Ctrl+A** (o Cmd+A en Mac)
- Esto seleccionará todo el texto que está en el editor

**2. BORRAR:**
- Presiona **Delete** o **Backspace**
- El editor debe quedar completamente vacío

**3. PEGAR ESTE CÓDIGO:**
```sql
ALTER TABLE games DISABLE ROW LEVEL SECURITY;

DELETE FROM games WHERE name IN (
    'Adivina el Número',
    'Juego de Memoria', 
    'Rompecabezas',
    'Tiempo de Reacción'
);

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

ALTER TABLE games ENABLE ROW LEVEL SECURITY;
```

**4. EJECUTAR:**
- Haz clic en el botón verde **"Correr"** que está abajo a la derecha
- O presiona **Ctrl+Enter**

**5. VERIFICAR:**
- Deberías ver un mensaje de éxito
- Debería decir algo como "4 rows inserted"

¡Dime cuando hayas ejecutado el código!
