# Однокоренные слова
Для получения информации о однокроенных словах необходимо включить `PORTRAIT_COGNATES` в resultType.

## Примеры запросов
```python
import requests
import json

url = "https://ruscorpora.ru/api/v1/word-portrait/"
headers = {'Authorization': 'Bearer ******'}
query = {
    "lemma": "писать",
    "pos": "V",
    "corpus": {
        "type": "MAIN"
    },
    "resultType": ["PORTRAIT_COGNATES"]
}
query = {"query": json.dumps(query, ensure_ascii=False)}
response = requests.get(url, params=query, headers=headers)
cognates = response.json()["cognatesData"]
```

## Формат ответа
Возвращается JSON-объект с информацией о однокоренных словах:
```json
{
  "cognatesData": {
    "baseWord": {
      "root": "слов",
      "afterRoot": "о",
      "freq": {
        "ipm": 1142.83
      }
    },
    "cognates": [
      {
        "beforeRoot": "у",
        "root": "слов",
        "afterRoot": "ие",
        "freq": {
          "ipm": 278.652
        }
      },
      {
        "root": "слов",
        "afterRoot": "но",
        "freq": {
          "ipm": 207.448
        }
      },
      {
        "root": "слав",
        "afterRoot": "а",
        "freq": {
          "ipm": 151.025
        }
      },
      {
        "beforeRoot": "право",
        "root": "слав",
        "afterRoot": "ный",
        "freq": {
          "ipm": 72.94
        }
      },
      {
        "root": "слав",
        "afterRoot": "ный",
        "freq": {
          "ipm": 50.6302
        }
      },
      {
        "beforeRoot": "безу",
        "root": "слов",
        "afterRoot": "но",
        "freq": {
          "ipm": 32.0769
        }
      },
      {
        "root": "слов",
        "afterRoot": "арь",
        "freq": {
          "ipm": 22.7
        }
      },
      {
        "beforeRoot": "у",
        "root": "слов",
        "afterRoot": "ный",
        "freq": {
          "ipm": 21.6987
        }
      },
      {
        "beforeRoot": "со",
        "root": "слов",
        "afterRoot": "ие",
        "freq": {
          "ipm": 21.1466
        }
      },
      {
        "beforeRoot": "право",
        "root": "слав",
        "afterRoot": "ие",
        "freq": {
          "ipm": 20.9335
        }
      }
    ]
  }
}
```
