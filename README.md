<div align="center">

# SQL Views and Snapshots

**[English](#english) | [Русский](#русский)**

</div>

---

<a name="english"></a>
## 🇬🇧 English

Abstracting complexity with virtual tables. Views simplify queries for users; materialized views speed up heavy analytics by caching results.

### What was done

| Task | What & Why |
|------|-----------|
| Simple VIEW | Created a virtual table from a SELECT. Hid query complexity from end users. |
| VIEW with JOIN | Encapsulated a multi-table join behind a single name. Simplified reporting queries. |
| VIEW with aggregates | Pre-aggregated data behind a view. Users get summaries without writing GROUP BY. |
| MATERIALIZED VIEW | Cached query results on disk. Trades storage for query speed on expensive analytics. |
| REFRESH | Updated a materialized view on demand. Learned the refresh cost and scheduling considerations. |
| CHECK OPTION | Prevented inserts/updates through a view that would violate its WHERE clause. Data integrity guard. |
| SECURITY BARRIER | Protected row-level security when using views. Prevents optimizer from exposing hidden rows. |
| INSTEAD OF triggers | Redirected INSERT/UPDATE/DELETE on a view to the underlying tables. Made views fully updatable. |
| Hierarchical VIEWs | Layered views on top of views. Built a clean abstraction pyramid for complex schemas. |

### Key takeaways
- **Views** are query shortcuts; **materialized views** are performance caches.
- Materialized views must be refreshed — stale data is the trade-off for speed.
- `INSTEAD OF` triggers let views behave like real tables for write operations.

### Tech Stack

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=flat-square&logo=postgresql&logoColor=white) ![SQL](https://img.shields.io/badge/SQL-336791?style=flat-square)

---

<div align="center">
  <img src="https://capsule-render.vercel.app/api?type=rect&color=0:58a6ff,50:1f6feb,100:0969da&height=2&section=header&text=&fontSize=1"/>
</div>

<a name="русский"></a>
## 🇷🇺 Русский

Абстрагирование сложности через виртуальные таблицы. Представления упрощают запросы для пользователей; материализованные представления ускоряют тяжёлую аналитику за счёт кэширования результатов.

### Что было сделано

| Задача | Что и зачем |
|--------|-------------|
| Простое VIEW | Создание виртуальной таблицы из SELECT. Скрытие сложности запросов от конечных пользователей. |
| VIEW с JOIN | Инкапсуляция многотабличного JOIN за одним именем. Упрощение отчётных запросов. |
| VIEW с агрегатами | Предварительная агрегация данных за представлением. Пользователи получают сводки без написания GROUP BY. |
| MATERIALIZED VIEW | Кэширование результатов запроса на диске. Обмен хранилища на скорость запроса для дорогой аналитики. |
| REFRESH | Обновление материализованного представления по требованию. Изучена стоимость обновления и вопросы планирования. |
| CHECK OPTION | Запрет вставок/обновлений через представление, нарушающих его WHERE. Защита целостности данных. |
| SECURITY BARRIER | Защита row-level security при использовании представлений. Предотвращает exposure скрытых строк оптимизатором. |
| INSTEAD OF триггеры | Перенаправление INSERT/UPDATE/DELETE на представлении к базовым таблицам. Представления становятся полностью изменяемыми. |
| Иерархические VIEW | Наслоение представлений друг на друга. Построена чистая пирамида абстракций для сложных схем. |

### Ключевые выводы
- **Представления** — ярлыки для запросов; **материализованные представления** — кэши производительности.
- Материализованные представления требуют обновления — устаревшие данные — плата за скорость.
- `INSTEAD OF` триггеры позволяют представлениям вести себя как реальные таблицы для записи.

### Стек технологий

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=flat-square&logo=postgresql&logoColor=white) ![SQL](https://img.shields.io/badge/SQL-336791?style=flat-square)

---

<div align="center">

*Project from portfolio | Проект из портфолио*

</div>
