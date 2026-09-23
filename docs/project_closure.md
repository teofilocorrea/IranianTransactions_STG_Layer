# Project Closure — Iranian Transactions | STG Layer

## 📋 Información del proyecto

| Campo | Detalle |
|---|---|
| **Proyecto** | Iranian Transactions — STG Layer |
| **Fase** | 2 de 5 — Capa STG |
| **Autor** | Teófilo Correa Rojas |
| **Fecha inicio** | Septiembre 2026 |
| **Fecha cierre** | Septiembre 2026 |
| **Estado** | ✅ Completado |

---

## 🎯 Objetivos — ¿Se cumplieron?

| Objetivo | Estado |
|---|---|
| Diseñar la tabla STG con todo TEXT y sin constraints | ✅ Completado |
| Cargar los 10,000 registros sin modificarlos | ✅ Completado |
| Validar la carga completa (COUNT = 10,000) | ✅ Completado |
| Preservar el dato original como respaldo trazable | ✅ Completado |

---

## 🧱 Lo que se construyó

| Tabla | Campos | Registros |
|---|---|---|
| `stg.transactions` | 6 (todos TEXT) | 10,000 |

---

## 📚 Lo que apliqué en esta fase

| Concepto | Descripción |
|---|---|
| Todo TEXT en STG | Tipos estrictos rechazarían datos sucios como "-999999.0" o "nan" |
| Sin PK | El id se repite (1-100); una PK fallaría |
| Carga con DataGrip | Importador visual: sin permisos de servidor ni comandos del cliente |
| Validación post-carga | COUNT(*) = 10,000 y SELECT visual para confirmar suciedad intacta |

### Suciedad preservada (para limpiar en Silver)

| Campo | Suciedad |
|---|---|
| `status` | 6 variantes (fail, FAIL, failed, Success...) |
| `card_type` | 11 variantes + nan |
| `city` | TEHRAN, THR, tehr@n, nan, espacios... |
| `amount` | -999999.0, negativos, 981 ceros |

---

## 🔑 Lección más importante

```
STG no limpia — preserva.

El dato sucio es evidencia del estado original.
Si se limpiara aquí, se perdería la trazabilidad:
no habría forma de saber qué había antes
de cada transformación.

Separar "recibir" de "limpiar" es lo que hace
el proceso auditable de punta a punta.
```

---

## 💼 Qué significa para la gestión de proyectos

```
Preservar el dato original antes de transformarlo
es un principio de trazabilidad: siempre puedes
volver al origen y comparar.

En proyectos reales, saber exactamente qué había
antes de cada cambio es lo que permite auditar,
corregir errores y responder "¿de dónde salió
este número?" sin adivinar.

Un pipeline sin esta capa es un pipeline
donde nadie sabe qué pasó con los datos.
```
---

## 🔜 Próximas fases

| Fase | Proyecto | Enfoque |
|---|---|---|
| 1 | Iranian Transactions — Database Infrastructure | Infraestructura ✅ |
| 2 | Iranian Transactions — STG Layer | Datos crudos ✅ |
| 3 | Iranian Transactions — Bronze Layer | Auditoría |
| 4 | Iranian Transactions — Silver Layer | Limpieza + columnas calculadas |
| 5 | Iranian Transactions — Gold Layer | Modelo dimensional + window functions |

---

## 👤 Autor

### Teófilo Correa Rojas
**Project Manager Digital | Data analytic**
🔗 [LinkedIn](https://www.linkedin.com/in/teófilo-correa-rojas/)