use piezas;

-- Insertar datos en la tabla piezas
INSERT INTO piezas (nombre) VALUES
  ('Tornillo'),
  ('Tuerca'),
  ('Arandela'),
  ('Resorte'),
  ('Engranaje');

-- Insertar datos en la tabla proveedores
INSERT INTO proveedores (nombre) VALUES
  ('Proveedor1'),
  ('Proveedor2'),
  ('Proveedor3'),
  ('Proveedor4'),
  ('Proveedor5');

-- Insertar datos en la tabla suministra
INSERT INTO suministra (precio, codigo_pieza, id_proveedor) VALUES
  (10, (SELECT codigo FROM piezas WHERE nombre = 'Tornillo'), (SELECT codigo FROM proveedores WHERE nombre = 'Proveedor1')),
  (15, (SELECT codigo FROM piezas WHERE nombre = 'Tuerca'), (SELECT codigo FROM proveedores WHERE nombre = 'Proveedor2')),
  (8, (SELECT codigo FROM piezas WHERE nombre = 'Arandela'), (SELECT codigo FROM proveedores WHERE nombre = 'Proveedor3')),
  (12, (SELECT codigo FROM piezas WHERE nombre = 'Resorte'), (SELECT codigo FROM proveedores WHERE nombre = 'Proveedor4')),
  (20, (SELECT codigo FROM piezas WHERE nombre = 'Engranaje'), (SELECT codigo FROM proveedores WHERE nombre = 'Proveedor5'));
