# Первое упоминание в корпусе

При помощи этого инструмента можно определить первое упоминание слова в корпусе. Укажите `PORTRAIT_FIRST_MENTION` в resultType для получения данных.

## Примеры запросов
```python
import requests
import json

url = "https://ruscorpora.ru/api/v1/word-portrait/"
headers = {'Authorization': 'Bearer ******'}
query = {
    "lemma": "песня",
    "pos": "S",
    "corpus": {
        "type": "MAIN"
    },
    "resultType": ["PORTRAIT_FIRST_MENTION"]
}
query = {"query": json.dumps(query, ensure_ascii=False)}
response = requests.get(url, params=query, headers=headers)
first_mention = response.json()["firstMentionData"]
```

## Формат ответа
{% list tabs %}

- JSON Data

  Возвращается JSON-объект, содержащий дату первого упоминания:

	```json
  {
    "firstMentionData": {
      "info": {
        "items": [
          {
            "parsingFields": [
              {
                "name": "created",
                "value": [
                  {
                    "valString": {
                      "v": "1682-1709"
                    }
                  }
                ],
                "humanReadable": "Дата создания"
              },
              {
                "name": "author",
                "value": [
                  {
                    "valString": {
                      "v": "И. А. Желябужский"
                    }
                  }
                ],
                "humanReadable": "Автор"
              },
              {
                "name": "header",
                "value": [
                  {
                    "valString": {
                      "v": "Дневные записки"
                    }
                  }
                ],
                "humanReadable": "Название"
              }
            ]
          }
        ]
      },
      "redirectLemma": "слово",
      "redirectCorpus": {
        "type": "MID_RUS"
      }
    }
  }
	```

- Описание полей

	`redirectLemma` - соответствующая лемма в корпусе, в который перенаправляется запрос.
	`redirectCorpus` - корпус, в который перенаправляется запрос.

	В данном случае, лемме `песня` в Основном корпусе соответствует лемма `пѣсня` в Старорусском.

{% endlist %}



