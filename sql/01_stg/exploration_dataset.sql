-- ============================================================
-- Script   : Exploración de datos — Muestra inicial
-- Capa     : STG (Staging)
-- Objetivo : Visualizar una muestra de los primeros 20 registros
--            de la tabla stg.transactions para inspeccionar su
--            estructura y valores iniciales.
-- Autor    : Teofilo Correa Rojas
-- Fecha    : 22 de septiembre 2026
-- ============================================================

SELECT *
FROM stg.transactions
LIMIT 20;