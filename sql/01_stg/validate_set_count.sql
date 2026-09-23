-- ============================================================
-- Script   : Validación de carga STG
-- Capa     : STG
-- Objetivo : Verificar que los 10,000 registros del dataset
--            se cargaron correctamente en stg.transactions
-- Autor    : Teofilo Correa Rojas
-- Fecha    : 22 de septiembre 2026
-- ============================================================

SELECT COUNT(*) AS total_registro
FROM stg.transactions;