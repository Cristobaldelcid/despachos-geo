-- Ejecutá esto en el SQL Editor de Supabase para agregar soporte de tipo Proyecto
-- Settings → SQL Editor → New query → pegá esto y ejecutá

alter table solicitudes add column if not exists tipo text default 'normal';
alter table solicitudes add column if not exists bitrix text;
