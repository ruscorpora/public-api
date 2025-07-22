# Частотность слова

Для корпусов со снятой омонимией доступно получение информации о частотности слова. Если передать значение `PORTRAIT_FREQUENCY` в resultType, в ответе будет присутствовать словарь frequencyData с информацией о частоте слова (IPM), которая определяется как отношение количества вхождений всех форм слова, поделенное на объем корпуса и умноженное на миллион. Также доступна информация о категории частотности слова: она имеет значение от 1 до 6 и присваивается в зависимости от значения IPM следующим образом:

1 - `IPM<1` частотность низкая, слово очень редкое
2 - `1<=IPM<10` частотность довольно низкая, слово редкое
3 - `10<=IPM<100` частотность скорее низкая
4 - `100<=IPM<1000` частотность скорее высокая
5 - `1000<=IPM<10000` частотность довольно высокая, слово распространенное
6 - `IPM>10000` частотность высокая, слово очень распространенное

## Примеры запросов
```python
import requests
import json

url = "https://ruscorpora.ru/api/v1/word-portrait/"
headers = {'Authorization': 'Bearer ******'}
query = {
    "lemma": "кошка",
    "pos": "S",
    "corpus": {
        "type": "MAIN"
    },
    "resultType": ["PORTRAIT_FREQUENCY"],
    "seed": 8918596
}
query = {"query": json.dumps(query, ensure_ascii=False)}
response = requests.get(url, params=query, headers=headers)
freq = response.json()["frequencyData"]
# -> {"ipm": 44.0418, "category": 3}
```

```python
import requests
import json

url = "https://ruscorpora.ru/api/v1/word-portrait/"
headers = {'Authorization': 'Bearer ******'}
query = {
    "lemma": "собака",
    "pos": "S",
    "corpus": {
        "type": "MAIN"
    },
    "resultType": ["PORTRAIT_FREQUENCY"],
    "seed": 8918596
}
query = {"query": json.dumps(query, ensure_ascii=False)}
response = requests.get(url, params=query, headers=headers)
freq = response.json()["frequencyData"]
# -> {"ipm": 154.191, "category": 4}
```
## Формат ответа
В случае успешного запроса возвращается JSON-объект следующего вида:
```json
{
  "frequencyData": {
    "ipm": 44.0418,
    "category": 3
  }
}
```
