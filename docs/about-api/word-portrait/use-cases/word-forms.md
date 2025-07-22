# Формы слова
API предоставляет возможность посмотреть формы слова, которые встречаются в корпусе более 5 раз.
Для одной и той же формы слова могут отображаться разные варианты написания, если такие встречаются в корпусе. 
Для каждой формы передаётся IPM и присвоенная категория от 1 до 3. Где 1 - наиболее встречаемая форма, 3 - наименее.

Информация о формах слова пока доступна только для существительных в Основном корпусе.

{% include notitle [как проверить доступность режима](../_includes/check-available-result-type.md) %}

## Пример запроса
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
    "result_type": ["PORTRAIT_WORDFORMS"],
    "seed": 5616851
}
query = {"query": json.dumps(query, ensure_ascii=False)}
response = requests.get(url, params=query, headers=headers)
wordformsData = response.json()["wordformsData"]
```

## Пример ответа
```json
{
  "wordformsData": {
    "values": [
      {
        "rowLabel": {
          "v": "предложный"
        },
        "columnLabel": {
          "v": "множественное"
        },
        "wfValue": {
          "value": "печах",
          "freq": {
            "ipm": 1.28636,
            "category": 1
          }
        }
      },
      {
        "rowLabel": {
          "v": "родительный"
        },
        "columnLabel": {
          "v": "единственное"
        },
        "wfValue": {
          "value": "печи",
          "freq": {
            "ipm": 9.04816,
            "category": 3
          }
        }
      },
      {
        "rowLabel": {
          "v": "родительный"
        },
        "columnLabel": {
          "v": "множественное"
        },
        "wfValue": {
          "value": "печей",
          "freq": {
            "ipm": 3.7461,
            "category": 2
          }
        }
      },
      {
        "rowLabel": {
          "v": "творительный"
        },
        "columnLabel": {
          "v": "единственное"
        },
        "wfValue": {
          "value": "печью",
          "freq": {
            "ipm": 1.66379,
            "category": 1
          }
        }
      },
      {
        "rowLabel": {
          "v": "винительный"
        },
        "columnLabel": {
          "v": "единственное"
        },
        "wfValue": {
          "value": "печь",
          "freq": {
            "ipm": 10.6298,
            "category": 3
          }
        }
      },
      {
        "rowLabel": {
          "v": "предложный"
        },
        "columnLabel": {
          "v": "единственное"
        },
        "wfValue": {
          "value": "печи",
          "freq": {
            "ipm": 0.641895,
            "category": 1
          }
        }
      },
      {
        "rowLabel": {
          "v": "винительный"
        },
        "columnLabel": {
          "v": "множественное"
        },
        "wfValue": {
          "value": "печи",
          "freq": {
            "ipm": 2.5265,
            "category": 2
          }
        }
      },
      {
        "rowLabel": {
          "v": "именительный"
        },
        "columnLabel": {
          "v": "множественное"
        },
        "wfValue": {
          "value": "печи",
          "freq": {
            "ipm": 2.32623,
            "category": 2
          }
        }
      },
      {
        "rowLabel": {
          "v": "творительный"
        },
        "columnLabel": {
          "v": "множественное"
        },
        "wfValue": {
          "value": "печами",
          "freq": {
            "ipm": 0.590544,
            "category": 1
          }
        }
      },
      {
        "rowLabel": {
          "v": "именительный"
        },
        "columnLabel": {
          "v": "единственное"
        },
        "wfValue": {
          "value": "печь",
          "freq": {
            "ipm": 6.05949,
            "category": 2
          }
        }
      },
      {
        "rowLabel": {
          "v": "предложный 2"
        },
        "columnLabel": {
          "v": "единственное"
        },
        "wfValue": {
          "value": "печи",
          "freq": {
            "ipm": 5.78733,
            "category": 2
          }
        }
      },
      {
        "rowLabel": {
          "v": "дательный"
        },
        "columnLabel": {
          "v": "единственное"
        },
        "wfValue": {
          "value": "печи",
          "freq": {
            "ipm": 0.950005,
            "category": 1
          }
        }
      },
      {
        "rowLabel": {
          "v": "дательный"
        },
        "columnLabel": {
          "v": "множественное"
        },
        "wfValue": {
          "value": "печам",
          "freq": {
            "ipm": 0.207974,
            "category": 1
          }
        }
      },
      {
        "rowLabel": {
          "v": "творительный"
        },
        "columnLabel": {
          "v": "множественное"
        },
        "wfValue": {
          "value": "печьми",
          "freq": {
            "ipm": 0.0205407,
            "category": 1
          }
        }
      },
      {
        "rowLabel": {
          "v": "предложный"
        },
        "columnLabel": {
          "v": "единственное"
        },
        "wfValue": {
          "value": "пече",
          "freq": {
            "ipm": 0.030811,
            "category": 1
          }
        }
      },
      {
        "rowLabel": {
          "v": "предложный"
        },
        "columnLabel": {
          "v": "множественное"
        },
        "wfValue": {
          "value": "печахъ",
          "freq": {
            "ipm": 0.125812,
            "category": 1
          }
        }
      },
      {
        "rowLabel": {
          "v": "винительный"
        },
        "columnLabel": {
          "v": "единственное"
        },
        "wfValue": {
          "value": "пѣчь",
          "freq": {
            "ipm": 0.030811,
            "category": 1
          }
        }
      },
      {
        "rowLabel": {
          "v": "дательный"
        },
        "columnLabel": {
          "v": "множественное"
        },
        "wfValue": {
          "value": "печамъ",
          "freq": {
            "ipm": 0.0154055,
            "category": 1
          }
        }
      },
      {
        "rowLabel": {
          "v": "предложный 2"
        },
        "columnLabel": {
          "v": "множественное"
        },
        "wfValue": {
          "freq": {}
        }
      }
    ]
  }
}
```

## Преобразование в словарь
```python
flat_list = []

for item in wordformsData['values']:
    row = {
        "case": item.get("rowLabel", {}).get("v"),
        "number": item.get("columnLabel", {}).get("v"),
        "form": item.get("wfValue", {}).get("value"),
        "ipm": item.get("wfValue", {}).get("freq", {}).get("ipm"),
        "category": item.get("wfValue", {}).get("freq", {}).get("category"),
    }
    flat_list.append(row)


flat_list

# Отфильтруем и отсортируем формы по IPM
sorted_list = sorted(
    [x for x in flat_list if x['ipm'] is not None],
    key=lambda x: (x['ipm'] is None, x['ipm']),
    reverse=True
)

sorted_list
```