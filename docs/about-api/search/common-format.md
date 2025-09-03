# Схема поискового запроса

Поисковый запрос в системе строится на основе универсальной структуры.  
Базой для всех режимов (включая те, которые пока могут отсутствовать в API)  
является объект **`SearchFormValue`**.  

Он описывает:
- какие условия поиска заданы,
- как они сгруппированы,
- какие параметры вывода используются.

## Пример
Пример лексико-грамматического запроса:
```json
{
  "lexGramm":{
    "sectionValues":[
      {
        "subsectionValues":[
          {
            "conditionValues":[
              {
                "fieldName":"lex",
                "text":{
                  "v":"кот"
                }
              }
            ]
          },
          {
            "conditionValues":[
              {
                "fieldName":"gramm",
                "text":{
                  "v":"V"
                }
              },
              {
                "fieldName":"dist",
                "intRange":{
                  "begin":-1,
                  "end":1
                }
              }
            ]
          }
        ]
      }
    ]
  }
}
```

Альтернативный взгляд на `SearchFormValue` в виде Pydantic схемы:

```python
class FormSectionValue(BaseModel):
    conditionValues: List[ConditionValue] = Field(default_factory=list)
    subsectionValues: List["FormSectionValue"] = Field(default_factory=list)


class SearchFormValue(BaseModel):
    sectionValues: List[FormSectionValue] = Field(default_factory=list)
```

---

## SearchFormValue

**Основная точка входа** в описание поискового запроса.  
Содержит список секций (`sectionValues`), каждая из которых может включать условия (`conditionValues`) и/или вложенные подразделы (`subsectionValues`).  

Эта структура универсальна для любых режимов работы поиска.  

**Поля:**
- `sectionValues` — список секций с условиями и вложенными подразделами.

---

## FormSectionValue
Представляет собой отдельную часть формы поиска.
Фактическое заполнение данными зависит от типа формы и корпуса. Например, условия подкорпуса заполняются в структуре: `subcorpus > sectionValues > [0] > conditionValues`. О деталях заполнения каждого типа поиска смотрите в соответствующем разделе руководства.

Может содержать:
- `conditionValues` — набор конкретных условий поиска;
- `subsectionValues` — вложенные секции, позволяющие строить иерархические запросы.
  
**Поля:**
- `conditionValues` — список условий поиска ([ConditionValue](#conditionValue));
- `subsectionValues` — список вложенных подразделов (FormSectionValue).  

---

## ConditionValue

Конкретное условие поиска для отдельного атрибута.  

Атрибут определяется через `fieldName`, а само условие может быть одного из типов:  
- текстовое,  
- булево,  
- числовое,  
- диапазонное,  
- по дате,  
- по диапазону дат.  

⚠️ Важно: должно быть заполнено хотя бы одно из значений.  

**Поля:**
- `fieldName` — имя атрибута, по которому выполняется поиск;
- [text](#textconditionvalue) — условие по текстовому значению;
- [check](#checkconditionvalue) — булево условие (например, признак наличия/отсутствия);
- [int](#intconditionvalue) — условие по конкретному числовому значению;
- [intRange](#intrangeconditionvalue) — условие по диапазону числовых значений;
- [date](#dateconditionvalue) — условие по конкретной дате;
- [dateRange](#daterangeconditionvalue) — условие по диапазону дат.  

---

## Типы параметров условий поиска

Для задания конкретных условий используются разные типы значений.  
Они определяют, как именно будет интерпретироваться поле `ConditionValue`.

### TextConditionValue
- `v: str` — текстовое значение.  
Используется для поиска по строковым атрибутам.

### CheckConditionValue
- `v: bool` — булево значение (true/false).  
Применяется для условий наличия/отсутствия признака.

### IntRangeConditionValue
- `begin: int` — начало диапазона (необязательное).  
- `end: int` — конец диапазона (необязательное).  
- `matching: IntRangeMatchingType` — способ сопоставления диапазонов.  
- `zeroNotAllowed: bool` — запрещает нулевые значения (необязательное, по умолчанию `false`).  

⚠️ Должно быть указано хотя бы одно из значений `begin` или `end`.

#### Date
- `year: int` — год.  
- `month: int` — месяц (от 1 до 12).  
- `day: int` — день месяца, начиная с 1.  

### DateConditionValue
- `v: Date` — конкретная дата ([Date](#date)).  

### DateRangeConditionValue
- `begin: Date` — начало диапазона (необязательное, [Date](#date)).  
- `end: Date` — конец диапазона (необязательное, [Date](#date)).  
- `matching: IntRangeMatchingType` — способ сопоставления диапазонов.  

⚠️ Должно быть указано хотя бы одно из значений `begin` или `end`.

### IntConditionValue
- `v: int` — числовое значение.  

### IntRangeMatchingType (Enum)
Определяет, как сравниваются диапазоны чисел или дат:  
- `INT_RANGE_INCLUDE` — включает диапазон.  
- `INT_RANGE_INTERSECT` — пересечение диапазонов.  
- `INT_RANGE_EQUAL` — равенство диапазонов. 

### PaginationParams

Параметры постраничного вывода результатов.  

**Поля:**
- `page` — номер страницы (0 — первая).  
- `docsPerPage` — количество документов на одной странице.  
- `snippetsPerPage` — количество сниппетов на одной странице (только в режиме KWIC).  
- `snippetsPerDoc` — максимальное количество примеров на документ.  

---

## SearchParams

Дополнительные параметры поиска, управляющие пагинацией, семплингом и сортировкой.  

**Поля:**
- `pageParams` — параметры пагинации ([PaginationParams](#paginationParams)).  
- `sampling` — прореживание до 1000 вхождений (только для режимов с сортировкой по контексту).  
- `seed` — случайное число для воспроизводимости случайной сортировки.  
- `sort` — режим сортировки (варианты зависят от конфигурации корпуса).  