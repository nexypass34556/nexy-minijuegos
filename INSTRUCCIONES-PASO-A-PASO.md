# 🔥 INSTRUCCIONES PASO A PASO - MUY DETALLADAS

## 📋 QUÉ VAMOS A HACER:
Eliminar definitivamente estos 4 juegos antiguos:
- ❌ Adivina el Número
- ❌ Juego de Memoria  
- ❌ Rompecabezas
- ❌ Tiempo de Reacción

Y reemplazarlos con estos 4 nuevos:
- ✅ Esquiva Meteoritos Espaciales
- ✅ Guerra de Comida
- ✅ El Tesoro del Topo Minero
- ✅ Atrapa al Fantasma Travieso

---

## 🚀 PASO 1: ABRIR SUPABASE

1. **Abre tu navegador** (Chrome, Firefox, etc.)
2. **Ve a:** https://supabase.com
3. **Haz clic en** "Sign in" (arriba a la derecha)
4. **Inicia sesión** con tu cuenta
5. **Busca tu proyecto** en la lista
6. **Haz clic** en el nombre de tu proyecto para abrirlo

---

## 🛠️ PASO 2: IR AL EDITOR SQL

1. **En el menú lateral izquierdo**, busca "SQL Editor"
2. **Haz clic en** "SQL Editor"
3. **Haz clic en** el botón "New query" (o "Nueva consulta")
4. **Se abrirá** una ventana con un editor de texto

---

## 📝 PASO 3: COPIAR EL SCRIPT

**COPIA EXACTAMENTE ESTE CÓDIGO** (selecciona todo y copia):

```sql
-- PASO 1: DESHABILITAR SEGURIDAD TEMPORALMENTE
ALTER TABLE games DISABLE ROW LEVEL SECURITY;

-- PASO 2: ELIMINAR JUEGOS ANTIGUOS
DELETE FROM games WHERE name IN (
    'Adivina el Número',
    'Juego de Memoria', 
    'Rompecabezas',
    'Tiempo de Reacción'
);

-- PASO 3: CREAR LOS 4 NUEVOS JUEGOS
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

-- PASO 4: REACTIVAR SEGURIDAD
ALTER TABLE games ENABLE ROW LEVEL SECURITY;
```

---

## 📋 PASO 4: PEGAR Y EJECUTAR

1. **Haz clic** dentro del editor SQL (la caja de texto grande)
2. **Borra** cualquier texto que esté ahí
3. **Pega** el código que copiaste (Ctrl+V o Cmd+V)
4. **Verifica** que se pegó todo el código
5. **Haz clic** en el botón "RUN" (o "Ejecutar")
   - Puede estar arriba a la derecha del editor
   - O puedes presionar **Ctrl+Enter**

---

## ✅ PASO 5: VERIFICAR RESULTADO

Después de ejecutar, deberías ver:
- **Un mensaje** que dice algo como "Success" o "4 rows inserted"
- **NO debe haber errores** en rojo

Para verificar que funcionó, **ejecuta esta consulta**:
```sql
SELECT name FROM games ORDER BY name;
```

**Deberías ver SOLO estos 4 nombres:**
1. Atrapa al Fantasma Travieso
2. El Tesoro del Topo Minero
3. Esquiva Meteoritos Espaciales
4. Guerra de Comida

---

## 🎉 PASO 6: PROBAR EN TU APP

1. **Ve a tu aplicación** en el navegador
2. **Refresca la página** (F5 o Ctrl+R)
3. **Inicia sesión** si es necesario
4. **Ve al dashboard** de juegos

**AHORA DEBERÍAS VER:**
- ✅ Esquiva Meteoritos Espaciales (8-40 pts)
- ✅ Guerra de Comida (10-50 pts)
- ✅ El Tesoro del Topo Minero (15-60 pts)
- ✅ Atrapa al Fantasma Travieso (5-30 pts)

---

## 🚨 SI ALGO SALE MAL:

**Si ves errores:**
1. **Copia el mensaje de error**
2. **Dímelo** y te ayudo a solucionarlo

**Si no ves los cambios:**
1. **Espera 1-2 minutos**
2. **Refresca la página** varias veces
3. **Cierra y abre** el navegador

---

## 📞 RESUMEN RÁPIDO:
1. Ir a supabase.com → tu proyecto
2. SQL Editor → New query
3. Copiar y pegar el script
4. Hacer clic en RUN
5. Verificar que funcionó
6. Refrescar tu app

**¡LISTO! NO HABRÁ RASTRO DE LOS JUEGOS ANTIGUOS!** 🎉
