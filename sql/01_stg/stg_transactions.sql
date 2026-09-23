-- ============================================================
-- Tabla: stg.transactions
-- Descripción: Almacena las transacciones de ventas del
--              banco en formato crudo. Todos los campos
--              son TEXT para preservar los datos sucios.
-- Autor: Teofilo Correa Rojas
-- Fecha: 21 de septiembre 2026
-- ============================================================

CREATE TABLE IF NOT EXISTS stg.transactions (

    status      TEXT,
    time        TEXT,
    card_type   TEXT,
    city        TEXT,
    amount      TEXT,
    id          TEXT

);