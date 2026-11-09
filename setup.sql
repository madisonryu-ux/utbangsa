-- Supabase SQL Editor에서 실행합니다.
create table if not exists public.votes (
  id bigint generated always as identity primary key,
  agenda_id integer not null check (agenda_id >= 0),
  voter text not null check (voter in ('향비','서윤','현지','새봄','해인','진경','다운','효빈','연주','예은','동은','수연','지민','하연','삭')),
  candidate text not null check (candidate in ('향비','서윤','현지','새봄','해인','진경','다운','효빈','연주','예은','동은','수연','지민','하연','삭')),
  created_at timestamptz not null default now(),
  unique (agenda_id, voter)
);
alter table public.votes enable row level security;
create policy "Friends can read results" on public.votes for select to anon using (true);
create policy "Friends can vote" on public.votes for insert to anon with check (true);
grant select,insert on public.votes to anon;
grant usage,select on sequence public.votes_id_seq to anon;
-- 실시간 이벤트 활성화 (이미 추가했다면 중복 실행하지 마세요).
alter publication supabase_realtime add table public.votes;
