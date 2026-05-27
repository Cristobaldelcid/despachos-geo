-- Ejecutá esto en el SQL Editor de tu proyecto Supabase
-- Settings → SQL Editor → New query → pegá esto y ejecutá

create table solicitudes (
  id text primary key,
  correlativo integer not null,
  solicitante text not null,
  fecha_requerida date,
  origen text,
  destino text not null,
  observaciones text,
  items text,
  estado text default 'Pendiente',
  creado_en timestamptz default now(),
  aprobado_en timestamptz,
  despachado_en timestamptz
);

-- Permitir lectura y escritura sin autenticación (uso interno)
alter table solicitudes enable row level security;

create policy "Acceso público lectura" on solicitudes
  for select using (true);

create policy "Acceso público escritura" on solicitudes
  for insert with check (true);

create policy "Acceso público actualización" on solicitudes
  for update using (true);
