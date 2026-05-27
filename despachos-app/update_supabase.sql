-- Ejecutar en SQL Editor de Supabase para agregar las nuevas columnas
alter table solicitudes add column if not exists firma_entrega text;
alter table solicitudes add column if not exists firma_recibe text;
alter table solicitudes add column if not exists devolucion text;
