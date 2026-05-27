-- Ejecutar en Supabase → SQL Editor → New query
-- Agrega las columnas nuevas para las 3 mejoras

alter table solicitudes add column if not exists nombre_tecnico text;
alter table solicitudes add column if not exists liquidacion text;
