-- ============================================================
-- Tabla: stg.transactions
-- Descripción: Almacena las transacciones de ventas del
--              banco en formato crudo. Todos los campos
--              son de tipo TEXT para preservar los datos
--              tal como llegan (incluyendo posibles errores).
-- Autor: Teofilo Correa Rojas
-- Fecha: 21 de septiembre de 2026
-- Notas:
--   - Esta tabla es una capa "staging" (stg), por lo que
--     no aplica lógica de negocio ni validaciones estrictas.
--   - Las columnas definidas son:
--       status, time, card_type, city, amount, id
-- ============================================================


SELECT column_name, data_type
FROM information_schema.columns
WHERE table_schema = 'stg'
AND table_name = 'transactions'
AND column_name IN ('status', 'time', 'card_type', 'city', 'amount', 'id');
