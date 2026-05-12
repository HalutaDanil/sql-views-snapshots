<div align="center">

# SQL Views and Snapshots

**[English](#english) | [Русский](#русский)**

</div>

---

<a name="english"></a>
## 🇬🇧 English

Views and materialized views for simplifying complex queries and optimizing performance.

### 🛠️ Tech Stack

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=flat-square&logo=postgresql&logoColor=white) ![SQL](https://img.shields.io/badge/SQL-336791?style=flat-square)

### ✨ Features

| Exercise | Topic |\n|----------|-------|\n| ex00 | Simple VIEW |\n| ex01 | VIEW with JOIN |\n| ex02 | VIEW with aggregates |\n| ex03 | MATERIALIZED VIEW |\n| ex04 | REFRESH MATERIALIZED VIEW |\n| ex05 | VIEW with CHECK OPTION |\n| ex06 | VIEW with SECURITY BARRIER |\n| ex07 | VIEW with INSTEAD OF triggers |\n| ex08 | Hierarchical VIEWs |

### 🚀 Quick Start

```sql\n-- Materialized view for visit statistics\nCREATE MATERIALIZED VIEW visit_stats AS\nSELECT \n    p.name as person_name,\n    piz.name as pizzeria_name,\n    COUNT(*) as visit_count\nFROM person_visits pv\nJOIN person p ON pv.person_id = p.id\nJOIN pizzeria piz ON pv.pizzeria_id = piz.id\nGROUP BY p.name, piz.name;\n\nREFRESH MATERIALIZED VIEW visit_stats;\n```

---

<div align="center">
  <img src="https://capsule-render.vercel.app/api?type=rect&color=0:58a6ff,50:1f6feb,100:0969da&height=2&section=header&text=&fontSize=1"/>
</div>

<a name="русский"></a>
## 🇷🇺 Русский

Представления (views) и материализованные представления для упрощения сложных запросов и оптимизации производительности.

### 🛠️ Стек технологий

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=flat-square&logo=postgresql&logoColor=white) ![SQL](https://img.shields.io/badge/SQL-336791?style=flat-square)

### ✨ Возможности

| Задача | Тема |\n|--------|------|\n| ex00 | Простое VIEW |\n| ex01 | VIEW с JOIN |\n| ex02 | VIEW с агрегатами |\n| ex03 | MATERIALIZED VIEW |\n| ex04 | REFRESH MATERIALIZED VIEW |\n| ex05 | VIEW с CHECK OPTION |\n| ex06 | VIEW с SECURITY BARRIER |\n| ex07 | VIEW с INSTEAD OF триггерами |\n| ex08 | Иерархические VIEW |

### 🚀 Быстрый старт

```sql\n-- Материализованное представление для статистики посещений\nCREATE MATERIALIZED VIEW visit_stats AS\nSELECT \n    p.name as person_name,\n    piz.name as pizzeria_name,\n    COUNT(*) as visit_count\nFROM person_visits pv\nJOIN person p ON pv.person_id = p.id\nJOIN pizzeria piz ON pv.pizzeria_id = piz.id\nGROUP BY p.name, piz.name;\n\nREFRESH MATERIALIZED VIEW visit_stats;\n```

---

<div align="center">

*Project from portfolio | Проект из портфолио*

</div>
