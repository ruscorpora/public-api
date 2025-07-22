# Общий формат запросов

## Методы
Запросы к API используют один из HTTP-методов:

* `GET` — получить информацию об объекте или списке объектов;
* `POST` — создать объект;
* `PATCH` — частично обновить объект, только теми полями, которые указаны в запросе;
* `DELETE` — удалить объект.

{% note info %}

Часть методов методов поиска поддерживает передачу параметров как в `GET` запросе так и в `POST` запросе.
Такие методы помечены swagger меткой `json-like`. В таком случае `POST` не означает создание сущности, а `GET` запрос \
выглядит как JSON urlencoded запрос.
Подробнее [примерах](#examples).

{% endnote %}

## Заголовки
`Authorization: Bearer <IAM-токен>` — при доступе при помощи IAM-токена. Подробнее в разделе [Получить доступ к API](auth.md#get-token).


## Примеры запросов {#examples}

{% cut "Получение статистики: `GET`" %}

```python
import requests
import json

url = "https://ruscorpora.ru/api/v1/stats"
query = {
    "corpus": json.dumps({
        "type": "MAIN"
    }, ensure_ascii=False)
}
headers = {
    "Authorization": "Bearer <IAM-токен>"
}
response = requests.get(url, params=query, headers=headers)
print(response.json())
```
{% endcut %}

{% cut "Получение статистики: `POST`" %}

```python
import requests
import json

url = "https://ruscorpora.ru/api/v1/stats"
query = {
    "corpus": {
        "type": "MAIN"
    }
}
headers = {
    "Authorization": "Bearer <IAM-токен>"
}
response = requests.post(url, params=query, headers=headers)
print(response.json())
```
{% endcut %}

## HTTP коды ответов {#responses}

| Код | Значение              | Комментарий                 |
| --- | --------------------- | --------------------------- |
| 200 | OK                    | Успешный ответ              |
| 400 | Bad Request           | Неверный запрос             |
| 401 | Unauthorized          | Пользователь не авторизован |
| 403 | Forbidden             | Доступ запрещён             |
| 404 | Not Found             | Ресурс не найден            |
| 409 | Conflict              | Конфликт данных             |
| 422 | Unprocessable Entity  | Ошибка валидации            |
| 500 | Internal Server Error | Внутренняя ошибка сервера   |