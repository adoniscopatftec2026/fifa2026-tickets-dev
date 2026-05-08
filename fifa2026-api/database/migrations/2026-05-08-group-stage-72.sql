-- Migration: 72 jogos da fase de grupos FIFA 2026
-- Reaproveita IDs 1-12 (UPDATE) e insere 60 novos
SET NOCOUNT ON;

-- Garantia: rota das matches da fase de grupos legacy estão nos IDs 1-12
-- (verificado pré-migration)

UPDATE dbo.matches SET
  home_team_id = 2, away_team_id = 17,
  stadium_id = 6,
  date = '2026-06-11', time = '17:00',
  stage = 'Fase de Grupos', group_name = 'A',
  status = 'scheduled', home_score = NULL, away_score = NULL
WHERE id = 1;
UPDATE dbo.matches SET
  home_team_id = 18, away_team_id = 19,
  stadium_id = 1,
  date = '2026-06-12', time = '12:00',
  stage = 'Fase de Grupos', group_name = 'A',
  status = 'scheduled', home_score = NULL, away_score = NULL
WHERE id = 2;
UPDATE dbo.matches SET
  home_team_id = 3, away_team_id = 20,
  stadium_id = 9,
  date = '2026-06-12', time = '15:00',
  stage = 'Fase de Grupos', group_name = 'B',
  status = 'scheduled', home_score = NULL, away_score = NULL
WHERE id = 3;
UPDATE dbo.matches SET
  home_team_id = 21, away_team_id = 22,
  stadium_id = 11,
  date = '2026-06-12', time = '18:00',
  stage = 'Fase de Grupos', group_name = 'B',
  status = 'scheduled', home_score = NULL, away_score = NULL
WHERE id = 4;
UPDATE dbo.matches SET
  home_team_id = 5, away_team_id = 12,
  stadium_id = 3,
  date = '2026-06-12', time = '21:00',
  stage = 'Fase de Grupos', group_name = 'C',
  status = 'scheduled', home_score = NULL, away_score = NULL
WHERE id = 5;
UPDATE dbo.matches SET
  home_team_id = 29, away_team_id = 30,
  stadium_id = 14,
  date = '2026-06-13', time = '12:00',
  stage = 'Fase de Grupos', group_name = 'C',
  status = 'scheduled', home_score = NULL, away_score = NULL
WHERE id = 6;
UPDATE dbo.matches SET
  home_team_id = 1, away_team_id = 23,
  stadium_id = 12,
  date = '2026-06-13', time = '15:00',
  stage = 'Fase de Grupos', group_name = 'D',
  status = 'scheduled', home_score = NULL, away_score = NULL
WHERE id = 7;
UPDATE dbo.matches SET
  home_team_id = 24, away_team_id = 25,
  stadium_id = 5,
  date = '2026-06-13', time = '18:00',
  stage = 'Fase de Grupos', group_name = 'D',
  status = 'scheduled', home_score = NULL, away_score = NULL
WHERE id = 8;
UPDATE dbo.matches SET
  home_team_id = 7, away_team_id = 26,
  stadium_id = 15,
  date = '2026-06-13', time = '21:00',
  stage = 'Fase de Grupos', group_name = 'E',
  status = 'scheduled', home_score = NULL, away_score = NULL
WHERE id = 9;
UPDATE dbo.matches SET
  home_team_id = 27, away_team_id = 28,
  stadium_id = 16,
  date = '2026-06-14', time = '12:00',
  stage = 'Fase de Grupos', group_name = 'E',
  status = 'scheduled', home_score = NULL, away_score = NULL
WHERE id = 10;
UPDATE dbo.matches SET
  home_team_id = 8, away_team_id = 14,
  stadium_id = 13,
  date = '2026-06-14', time = '15:00',
  stage = 'Fase de Grupos', group_name = 'F',
  status = 'scheduled', home_score = NULL, away_score = NULL
WHERE id = 11;
UPDATE dbo.matches SET
  home_team_id = 31, away_team_id = 32,
  stadium_id = 10,
  date = '2026-06-14', time = '18:00',
  stage = 'Fase de Grupos', group_name = 'F',
  status = 'scheduled', home_score = NULL, away_score = NULL
WHERE id = 12;

-- INSERT dos 60 jogos restantes (matches 13-72)
INSERT INTO dbo.matches (home_team_id, away_team_id, stadium_id, date, time, stage, group_name, status)
VALUES
  (33, 34, 2, '2026-06-14', '21:00', 'Fase de Grupos', 'G', 'scheduled'),
  (35, 36, 8, '2026-06-15', '12:00', 'Fase de Grupos', 'G', 'scheduled'),
  (10, 16, 7, '2026-06-15', '15:00', 'Fase de Grupos', 'H', 'scheduled'),
  (43, 44, 17, '2026-06-15', '18:00', 'Fase de Grupos', 'H', 'scheduled'),
  (9, 37, 6, '2026-06-15', '21:00', 'Fase de Grupos', 'I', 'scheduled'),
  (38, 39, 1, '2026-06-16', '12:00', 'Fase de Grupos', 'I', 'scheduled'),
  (6, 40, 9, '2026-06-16', '15:00', 'Fase de Grupos', 'J', 'scheduled'),
  (41, 42, 11, '2026-06-16', '18:00', 'Fase de Grupos', 'J', 'scheduled'),
  (4, 11, 3, '2026-06-16', '21:00', 'Fase de Grupos', 'K', 'scheduled'),
  (45, 46, 14, '2026-06-17', '12:00', 'Fase de Grupos', 'K', 'scheduled'),
  (13, 47, 12, '2026-06-17', '15:00', 'Fase de Grupos', 'L', 'scheduled'),
  (48, 49, 5, '2026-06-17', '18:00', 'Fase de Grupos', 'L', 'scheduled'),
  (2, 18, 15, '2026-06-18', '12:00', 'Fase de Grupos', 'A', 'scheduled'),
  (19, 17, 16, '2026-06-18', '15:00', 'Fase de Grupos', 'A', 'scheduled'),
  (3, 21, 13, '2026-06-18', '18:00', 'Fase de Grupos', 'B', 'scheduled'),
  (22, 20, 10, '2026-06-18', '21:00', 'Fase de Grupos', 'B', 'scheduled'),
  (5, 29, 2, '2026-06-19', '12:00', 'Fase de Grupos', 'C', 'scheduled'),
  (30, 12, 8, '2026-06-19', '15:00', 'Fase de Grupos', 'C', 'scheduled'),
  (1, 24, 7, '2026-06-19', '18:00', 'Fase de Grupos', 'D', 'scheduled'),
  (25, 23, 17, '2026-06-19', '21:00', 'Fase de Grupos', 'D', 'scheduled'),
  (7, 27, 6, '2026-06-20', '12:00', 'Fase de Grupos', 'E', 'scheduled'),
  (28, 26, 1, '2026-06-20', '15:00', 'Fase de Grupos', 'E', 'scheduled'),
  (8, 31, 9, '2026-06-20', '18:00', 'Fase de Grupos', 'F', 'scheduled'),
  (32, 14, 11, '2026-06-20', '21:00', 'Fase de Grupos', 'F', 'scheduled'),
  (33, 35, 3, '2026-06-21', '12:00', 'Fase de Grupos', 'G', 'scheduled'),
  (36, 34, 14, '2026-06-21', '15:00', 'Fase de Grupos', 'G', 'scheduled'),
  (10, 43, 12, '2026-06-21', '18:00', 'Fase de Grupos', 'H', 'scheduled'),
  (44, 16, 5, '2026-06-21', '21:00', 'Fase de Grupos', 'H', 'scheduled'),
  (9, 38, 15, '2026-06-22', '12:00', 'Fase de Grupos', 'I', 'scheduled'),
  (39, 37, 16, '2026-06-22', '15:00', 'Fase de Grupos', 'I', 'scheduled'),
  (6, 41, 13, '2026-06-22', '18:00', 'Fase de Grupos', 'J', 'scheduled'),
  (42, 40, 10, '2026-06-22', '21:00', 'Fase de Grupos', 'J', 'scheduled'),
  (4, 45, 2, '2026-06-23', '12:00', 'Fase de Grupos', 'K', 'scheduled'),
  (46, 11, 8, '2026-06-23', '15:00', 'Fase de Grupos', 'K', 'scheduled'),
  (13, 48, 7, '2026-06-23', '18:00', 'Fase de Grupos', 'L', 'scheduled'),
  (49, 47, 17, '2026-06-23', '21:00', 'Fase de Grupos', 'L', 'scheduled'),
  (2, 19, 6, '2026-06-24', '16:00', 'Fase de Grupos', 'A', 'scheduled'),
  (17, 18, 1, '2026-06-24', '16:00', 'Fase de Grupos', 'A', 'scheduled'),
  (3, 22, 9, '2026-06-24', '18:00', 'Fase de Grupos', 'B', 'scheduled'),
  (20, 21, 11, '2026-06-24', '18:00', 'Fase de Grupos', 'B', 'scheduled'),
  (5, 30, 3, '2026-06-24', '20:00', 'Fase de Grupos', 'C', 'scheduled'),
  (12, 29, 14, '2026-06-24', '20:00', 'Fase de Grupos', 'C', 'scheduled'),
  (1, 25, 12, '2026-06-25', '16:00', 'Fase de Grupos', 'D', 'scheduled'),
  (23, 24, 5, '2026-06-25', '16:00', 'Fase de Grupos', 'D', 'scheduled'),
  (7, 28, 15, '2026-06-25', '18:00', 'Fase de Grupos', 'E', 'scheduled'),
  (26, 27, 16, '2026-06-25', '18:00', 'Fase de Grupos', 'E', 'scheduled'),
  (8, 32, 13, '2026-06-25', '20:00', 'Fase de Grupos', 'F', 'scheduled'),
  (14, 31, 10, '2026-06-25', '20:00', 'Fase de Grupos', 'F', 'scheduled'),
  (33, 36, 2, '2026-06-26', '16:00', 'Fase de Grupos', 'G', 'scheduled'),
  (34, 35, 8, '2026-06-26', '16:00', 'Fase de Grupos', 'G', 'scheduled'),
  (10, 44, 7, '2026-06-26', '18:00', 'Fase de Grupos', 'H', 'scheduled'),
  (16, 43, 17, '2026-06-26', '18:00', 'Fase de Grupos', 'H', 'scheduled'),
  (9, 39, 6, '2026-06-26', '20:00', 'Fase de Grupos', 'I', 'scheduled'),
  (37, 38, 1, '2026-06-26', '20:00', 'Fase de Grupos', 'I', 'scheduled'),
  (6, 42, 9, '2026-06-27', '16:00', 'Fase de Grupos', 'J', 'scheduled'),
  (40, 41, 11, '2026-06-27', '16:00', 'Fase de Grupos', 'J', 'scheduled'),
  (4, 46, 3, '2026-06-27', '18:00', 'Fase de Grupos', 'K', 'scheduled'),
  (11, 45, 14, '2026-06-27', '18:00', 'Fase de Grupos', 'K', 'scheduled'),
  (13, 49, 12, '2026-06-27', '20:00', 'Fase de Grupos', 'L', 'scheduled'),
  (47, 48, 5, '2026-06-27', '20:00', 'Fase de Grupos', 'L', 'scheduled');

-- Validação
SELECT COUNT(*) AS total_grupos FROM dbo.matches WHERE stage = 'Fase de Grupos';
SELECT group_name, COUNT(*) AS jogos FROM dbo.matches WHERE stage = 'Fase de Grupos' GROUP BY group_name ORDER BY group_name;
PRINT 'Esperado: total_grupos=72, 6 jogos por grupo (12 grupos)';
