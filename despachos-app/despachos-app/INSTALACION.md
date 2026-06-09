# Guía de instalación — App de Despacho GEO
## Tiempo estimado: 20 minutos

---

## PASO 1 — Crear la base de datos en Supabase

1. Entrá a https://supabase.com y hacé clic en **Start your project**
2. Registrate con tu correo @geo.com.gt
3. Creá un nuevo proyecto:
   - Nombre: `despachos-geo`
   - Región: **US East** (la más cercana a Guatemala)
   - Generá una contraseña segura y guardala
4. Esperá ~2 minutos a que el proyecto se inicialice

5. En el menú izquierdo, andá a **SQL Editor** → **New query**
6. Copiá todo el contenido del archivo `setup_supabase.sql` y pegalo ahí
7. Presioná **Run** — te debe decir "Success"

8. Andá a **Settings → API** y copiá:
   - **Project URL** (algo como https://xxxx.supabase.co)
   - **anon/public key** (cadena larga)

9. Abrí el archivo `config.js` y reemplazá:
   - `TU_SUPABASE_URL_AQUI` → pegá el Project URL
   - `TU_SUPABASE_ANON_KEY_AQUI` → pegá el anon key

---

## PASO 2 — Publicar la app en Netlify

1. Entrá a https://netlify.com y hacé clic en **Sign up**
2. Elegí **Email** y registrate con tu correo @geo.com.gt

3. En el dashboard, buscá el recuadro que dice:
   **"Want to deploy a new site without connecting to Git?"**
   y hacé clic en **drag and drop your site folder here**

4. Seleccioná la carpeta `despachos-app` completa y arrastrala ahí
   (debe contener: index.html, admin.html, config.js)

5. Netlify le asigna una URL automática como:
   `https://amazing-name-123.netlify.app`

6. Podés cambiarle el nombre en:
   **Site settings → General → Site name**
   Por ejemplo: `despachos-geo`
   Quedaría: `https://despachos-geo.netlify.app`

---

## PASO 3 — Probar que funciona

- **Vista de Carlos (solicitar):**
  `https://despachos-geo.netlify.app/index.html`

- **Tu vista (administrar):**
  `https://despachos-geo.netlify.app/admin.html`

Hacé una solicitud de prueba desde index.html y verificá que aparezca en admin.html.

---

## PASO 4 — Compartir los links

- Enviále a Carlos el link de `index.html` por WhatsApp
- Guardá el link de `admin.html` en tus favoritos
- Ambos links funcionan desde celular y computadora

---

## Si necesitás actualizar la app en el futuro

1. Modificá los archivos
2. Volvé a Netlify → **Deploys** → arrastrá la carpeta de nuevo
3. Se actualiza en segundos

---

Cualquier duda, consultá con el asistente que generó esta app.
