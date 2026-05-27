-- Ejecutar en SQL Editor de Supabase (mismo proyecto Despachos-Geo)

create table if not exists finiquitos (
  id uuid default gen_random_uuid() primary key,
  proyecto text not null,
  bitrix text,
  fecha date,
  tecnicos text,
  tipo text default 'instalacion',
  equipos text,
  materiales text,
  devueltos text,
  extras text,
  observaciones text,
  estado text default 'pendiente',
  creado_en timestamptz default now()
);

alter table finiquitos enable row level security;

create policy "Acceso público lectura finiquitos" on finiquitos
  for select using (true);

create policy "Acceso público escritura finiquitos" on finiquitos
  for insert with check (true);

create policy "Acceso público actualización finiquitos" on finiquitos
  for update using (true);
