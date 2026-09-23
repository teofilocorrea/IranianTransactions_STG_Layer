# STG Layer — Iranian Transactions

## ¿Qué es esta capa?

La capa STG (Staging) es la primera del pipeline. Recibe los datos
tal como llegan del CSV y los preserva sin modificar. No limpia, no
valida, no transforma. Su único rol es ser el punto de partida
trazable de todo el proceso.

---

## 📋 Reglas de esta capa

- Todo TEXT — sin tipos reales
- Sin PK — el id se repite en este dataset
- Sin constraints de ningún tipo
- Los datos llegan sucios y así se quedan
- Bronze lee de aquí para construir la siguiente capa

---

## 📋 Tabla: stg.transactions

| Campo | Tipo | Por qué TEXT |
|---|---|---|
| `status` | TEXT | Tiene variantes: fail, FAIL, failed, Success... |
| `transaction_time` | TEXT | Podría tener formatos inconsistentes |
| `card_type` | TEXT | Tiene variantes: MastCard, Vsa, nan... |
| `city` | TEXT | Tiene variantes: TEHRAN, tehr@n, nan... |
| `amount` | TEXT | Tiene -999999.0, 0.0, negativos — rechazados por NUMERIC |
| `id` | TEXT | Sin PK — el id se repite (rango 1-100) |

---

## ⚠️ Suciedad conocida en los datos

Esta tabla contiene los datos originales del CSV, con toda su suciedad.
Se documenta aquí como referencia para la limpieza en Silver:

| Campo | Tipo de suciedad |
|---|---|
| `status` | 6 variantes: fail, FAIL, failed, Success, succeed, success |
| `card_type` | 11 variantes + nan: MastCard, Vsa, Master-Card... |
| `city` | Variantes + basura: TEHRAN, THR, tehr@n, nan, "Tehran " |
| `amount` | -999999.0, negativos, 0.0 (981 registros) |

---

## ✅ Resultado de la carga

| Métrica | Resultado |
|---|---|
| Registros cargados | 10,000 |
| Pérdida | 0 |

---

## 🔜 Qué sigue — Bronze

Bronze copia los datos de STG y agrega tres campos de auditoría:
`source_file`, `load_date` y `record_status`. Los datos siguen
siendo TEXT — la limpieza ocurre más adelante, en Silver.