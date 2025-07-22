# Словообразование
Для получения информации о словообразовании слова необходимо включить `PORTRAIT_MORPHEME` в resultType.

## Примеры запросов
```python
import requests
import json

url = "https://ruscorpora.ru/api/v1/word-portrait/"
headers = {'Authorization': 'Bearer ******'}
query = {
    "lemma": "присутствовать",
    "pos": "V",
    "corpus": {
        "type": "MAIN"
    },
    "resultType": ["PORTRAIT_COGNATES"]
}
query = {"query": json.dumps(query, ensure_ascii=False)}
response = requests.get(url, params=query, headers=headers)
morpheme_data = response.json()["morphemeData"]
```

## Формат ответа
Возвращается JSON-объект с информацией о однокоренных словах:
```json
{
  "morphemeData": {
    "morphemes": [
      {
        "type": "MORPHEME_PREF",
        "value": "при"
      },
      {
        "type": "MORPHEME_ROOT",
        "value": "сут"
      },
      {
        "type": "MORPHEME_SUFF",
        "value": "ств"
      },
      {
        "type": "MORPHEME_SUFF",
        "value": "ова"
      },
      {
        "type": "MORPHEME_END",
        "value": "ть"
      }
    ]
  },
  "isNeural": false
}
```


## Описание структуры ответа

- `MORPHEME_PREF` - приставка
- `MORPHEME_ROOT` - корень
- `MORPHEME_SUFF` - суффикс
- `MORPHEME_END` - окончание
- `MORPHEME_LINK` - связующая глассная
- `MORPHEME_POST` - постфикс
- `MORPHEME_HYPN` - дефис


`isNeural` - признак, что отклик был сгенерировал моделью.