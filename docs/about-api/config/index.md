# Конфиг корпуса

Конфиг корпуса содержит информацию о:
- доступных режимах поиска
- достатистических параметрах
- сортировках
- настройках

Пример запроса конфига:
```python
import requests
import json

url = "https://ruscorpora.ru/api/v1/config"
query = {
    "corpus": json.dumps({
        "type": "MAIN"
    }, ensure_ascii=False)
}
response = requests.get(url, params=query)
print(response.json())
```