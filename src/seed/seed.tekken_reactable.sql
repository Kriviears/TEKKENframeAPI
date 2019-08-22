BEGIN;

TRUNCATE
  notes,
  moves,
  users,
  characters;

INSERT INTO characters (name, thumbnail, banner)
VALUES
  ('Heihachi', '', ''),
  ('Kazuya', '', ''),
  ('Jin', '', '');

INSERT INTO moves (character_id, command, startFrames, activeFrames, onBlock, onHit, properties)
VALUES
  (1, '1,1,2', 10, 30, -17, 6000, 'Hit confirmable after 1,1'),
  (2, '1,1,2', 10, 30, -17, 6000, 'Hit confirmable after 1,1'),
  (3, '2,1,4', 10, 45, -7, 6, '2,1 natural combo, 4 on counterhit 1'),
  (1, 'F, *, D, D/F+2', 14, 3, 5, 420, 'Seiya!'),
  (2, 'F, *, D, D/F+2', 14, 3, 5, 420, 'Dorya!'),
  (2, 'F, *, D/F+2', 13, 3, 5, 420, 'Dorya!'),
  (3, 'F, *, D, D/F+2', 14, 3, 5, 420, 'DA!');

INSERT INTO notes (user_id, character_id, content)
VALUES
  (null, 1, 'Hardest working Mishima'),
  (null, 2, 'Greenest Mishima'),
  (null, 3, 'Best Mishima by far');