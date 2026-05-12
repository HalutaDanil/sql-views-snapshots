# SQL: Snapshots and Views

> Виртуальные таблицы и материализованные представления

## О проекте

Изучение представлений (views) и материализованных представлений (materialized views) для упрощения сложных запросов и оптимизации производительности.

## Что изучено

| Задача | Тема |
|--------|------|
| `ex00` | Создание простого `VIEW` |
| `ex01` | `VIEW` с `JOIN` |
| `ex02` | `VIEW` с агрегатами |
| `ex03` | `MATERIALIZED VIEW` |
| `ex04` | `REFRESH MATERIALIZED VIEW` |
| `ex05` | `VIEW` с `CHECK OPTION` |
| `ex06` | `VIEW` с `SECURITY BARRIER` |
| `ex07` | `VIEW` с `INSTEAD OF` триггерами |
| `ex08` | Иерархические `VIEW` |

## Пример

```sql
-- Материализованное представление: статистика посещений
CREATE MATERIALIZED VIEW visit_stats AS
SELECT 
    p.name as person_name,
    piz.name as pizzeria_name,
    COUNT(*) as visit_count
FROM person_visits pv
JOIN person p ON pv.person_id = p.id
JOIN pizzeria piz ON pv.pizzeria_id = piz.id
GROUP BY p.name, piz.name;

-- Обновление
REFRESH MATERIALIZED VIEW visit_stats;
```

## Технологии

- **PostgreSQL**
- **Views**, **Materialized Views**

---

*Проект из портфолио*
