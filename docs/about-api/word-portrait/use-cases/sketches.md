# Скетчи слова

При передаче значения `PORTRAIT_SKETCH` в параметр `resultType` в итоговом ответе будет присутствовать словарь `sketchData`, в котором можно найти до 10 коллокаций для каждой релевантной синтаксической связи, отсортированных по убыванию значения метрики `logDice`, собственно значение метрики, а также образец запроса к поисковому API для получения полного списка коллокаций. Ниже показана полная структура ответа на примере скетча слова *кошка*.

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
    "result_type": ["PORTRAIT_SKETCH"],
    "seed": 8918596
}
query = {"query": json.dumps(query, ensure_ascii=False)}
response = requests.get(url, params=query, headers=headers)
response.json()["sketchData"]
```


## Пример ответа

В данной структуре каждый элемент массива collocates представляет собой список из 10 коллокаций для конкретной синтаксической связи. Сами слова и значения метрики `loc_dice` доступны по ключу `collocations`, а по ключу `sketchSynRelation` доступно название синтаксического отношения между исследуемым словом и коллокациями: `amod_S_A` - определение к существительному, `nsubj_S_V` - существительное - прямое дополнение для глагола и т.д. Наконец, словарь под ключом `queryFormValue` представляет собой образец запроса к поисковому API, который можно применять для получения всех коллокаций для данной синтаксической связи.

{% cut "Полный ответ" %}
```json
{
  "sketchData": {
    "lex": "слово",
    "collocates": [
      {
        "collocations": [
          {
            "collocate": {
              "valString": {
                "v": "честный"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 10.3028
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "последний"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 9.53909
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "божий"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 8.68628
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "добрый"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 8.57147
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "ласковый"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 8.44075
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "ключевой"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 8.16321
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "русский"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 8.07674
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "следующий"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 7.87569
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "простой"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 7.86013
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "единый"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 7.85749
              }
            ]
          }
        ],
        "sketchSynRelation": "amod_S_A",
        "queryFormValue": {
          "sectionValues": [
            {
              "conditionValues": [
                {
                  "fieldName": "disambmod",
                  "text": {
                    "v": "main"
                  }
                },
                {
                  "fieldName": "distmod",
                  "text": {
                    "v": "no_zeros"
                  }
                }
              ],
              "subsectionValues": [
                {
                  "conditionValues": [
                    {
                      "fieldName": "lex",
                      "text": {
                        "v": "слово"
                      }
                    },
                    {
                      "fieldName": "gramm",
                      "text": {
                        "v": "S"
                      }
                    }
                  ]
                },
                {
                  "conditionValues": [
                    {
                      "fieldName": "gramm",
                      "text": {
                        "v": "A"
                      }
                    },
                    {
                      "fieldName": "syntax_link",
                      "text": {
                        "v": "amod"
                      }
                    },
                    {
                      "fieldName": "syntax_to_word",
                      "int": {
                        "v": "1"
                      }
                    },
                    {
                      "fieldName": "syntax_direction",
                      "text": {
                        "v": "child"
                      }
                    },
                    {
                      "fieldName": "dist",
                      "int_range": {
                        "begin": -10,
                        "end": 10
                      }
                    }
                  ]
                }
              ]
            }
          ]
        }
      },
      {
        "collocations": [
          {
            "collocate": {
              "valString": {
                "v": "звучать"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 8.70832
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "означать"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 8.08745
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "прозвучать"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 7.42895
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "значить"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 7.36294
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "иметь"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 6.8736
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "вспомниться"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 6.79557
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "произвести"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 6.69454
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "относиться"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 6.65164
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "принадлежать"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 6.63469
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "быть"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 6.60255
              }
            ]
          }
        ],
        "sketchSynRelation": "nsubj_S_V",
        "queryFormValue": {
          "sectionValues": [
            {
              "conditionValues": [
                {
                  "fieldName": "disambmod",
                  "text": {
                    "v": "main"
                  }
                },
                {
                  "fieldName": "distmod",
                  "text": {
                    "v": "no_zeros"
                  }
                }
              ],
              "subsectionValues": [
                {
                  "conditionValues": [
                    {
                      "fieldName": "lex",
                      "text": {
                        "v": "слово"
                      }
                    },
                    {
                      "fieldName": "gramm",
                      "text": {
                        "v": "S"
                      }
                    }
                  ]
                },
                {
                  "conditionValues": [
                    {
                      "fieldName": "gramm",
                      "text": {
                        "v": "V"
                      }
                    },
                    {
                      "fieldName": "syntax_link",
                      "text": {
                        "v": "nsubj"
                      }
                    },
                    {
                      "fieldName": "syntax_to_word",
                      "int": {
                        "v": "1"
                      }
                    },
                    {
                      "fieldName": "syntax_direction",
                      "text": {
                        "v": "parent"
                      }
                    },
                    {
                      "fieldName": "dist",
                      "int_range": {
                        "begin": -10,
                        "end": 10
                      }
                    },
                    {
                      "fieldName": "syntax",
                      "text": {
                        "v": "root"
                      }
                    }
                  ]
                }
              ]
            }
          ]
        }
      },
      {
        "collocations": [
          {
            "collocate": {
              "valString": {
                "v": "сказать"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 11.0324
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "говорить"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 10.0741
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "произнести"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 10.0058
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "произносить"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 9.76956
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "слышать"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 9.06831
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "повторять"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 8.92643
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "услышать"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 8.83732
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "дать"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 8.72204
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "употреблять"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 8.42852
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "сдержать"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 8.35496
              }
            ]
          }
        ],
        "sketchSynRelation": "obj_S_V",
        "queryFormValue": {
          "sectionValues": [
            {
              "conditionValues": [
                {
                  "fieldName": "disambmod",
                  "text": {
                    "v": "main"
                  }
                },
                {
                  "fieldName": "distmod",
                  "text": {
                    "v": "no_zeros"
                  }
                }
              ],
              "subsectionValues": [
                {
                  "conditionValues": [
                    {
                      "fieldName": "lex",
                      "text": {
                        "v": "слово"
                      }
                    },
                    {
                      "fieldName": "gramm",
                      "text": {
                        "v": "S"
                      }
                    }
                  ]
                },
                {
                  "conditionValues": [
                    {
                      "fieldName": "gramm",
                      "text": {
                        "v": "V"
                      }
                    },
                    {
                      "fieldName": "syntax_link",
                      "text": {
                        "v": "obj"
                      }
                    },
                    {
                      "fieldName": "syntax_to_word",
                      "int": {
                        "v": "1"
                      }
                    },
                    {
                      "fieldName": "syntax_direction",
                      "text": {
                        "v": "parent"
                      }
                    },
                    {
                      "fieldName": "dist",
                      "int_range": {
                        "begin": -10,
                        "end": 10
                      }
                    }
                  ]
                }
              ]
            }
          ]
        }
      },
      {
        "collocations": [
          {
            "collocate": {
              "valString": {
                "v": "начинаться"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 9.44712
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "выразить"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 9.34805
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "верить"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 9.25708
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "обмолвиться"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 9.18364
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "перекинуться"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 8.36795
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "поверить"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 8.35016
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "говорить"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 8.20067
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "выражать"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 8.17672
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "помянуть"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 8.14967
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "закончить"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 8.06966
              }
            ]
          }
        ],
        "sketchSynRelation": "iobj_S_V",
        "queryFormValue": {
          "sectionValues": [
            {
              "conditionValues": [
                {
                  "fieldName": "disambmod",
                  "text": {
                    "v": "main"
                  }
                },
                {
                  "fieldName": "distmod",
                  "text": {
                    "v": "no_zeros"
                  }
                }
              ],
              "subsectionValues": [
                {
                  "conditionValues": [
                    {
                      "fieldName": "lex",
                      "text": {
                        "v": "слово"
                      }
                    },
                    {
                      "fieldName": "gramm",
                      "text": {
                        "v": "S"
                      }
                    }
                  ]
                },
                {
                  "conditionValues": [
                    {
                      "fieldName": "gramm",
                      "text": {
                        "v": "V"
                      }
                    },
                    {
                      "fieldName": "syntax_link",
                      "text": {
                        "v": "iobj"
                      }
                    },
                    {
                      "fieldName": "syntax_to_word",
                      "int": {
                        "v": "1"
                      }
                    },
                    {
                      "fieldName": "syntax_direction",
                      "text": {
                        "v": "parent"
                      }
                    },
                    {
                      "fieldName": "dist",
                      "int_range": {
                        "begin": -10,
                        "end": 10
                      }
                    }
                  ]
                }
              ]
            }
          ]
        }
      },
      {
        "collocations": [
          {
            "collocate": {
              "valString": {
                "v": "сказать"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 8.27547
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "понять"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 7.87005
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "понимать"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 7.67329
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "обратиться"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 7.54973
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "поверить"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 7.54005
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "верить"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 7.49216
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "выразить"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 7.48172
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "разуметь"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 7.43261
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "прислушиваться"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 7.38158
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "передать"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 7.23299
              }
            ]
          }
        ],
        "sketchSynRelation": "obl_S_V",
        "queryFormValue": {
          "sectionValues": [
            {
              "conditionValues": [
                {
                  "fieldName": "disambmod",
                  "text": {
                    "v": "main"
                  }
                },
                {
                  "fieldName": "distmod",
                  "text": {
                    "v": "no_zeros"
                  }
                }
              ],
              "subsectionValues": [
                {
                  "conditionValues": [
                    {
                      "fieldName": "lex",
                      "text": {
                        "v": "слово"
                      }
                    },
                    {
                      "fieldName": "gramm",
                      "text": {
                        "v": "S"
                      }
                    }
                  ]
                },
                {
                  "conditionValues": [
                    {
                      "fieldName": "gramm",
                      "text": {
                        "v": "V"
                      }
                    },
                    {
                      "fieldName": "syntax_link",
                      "text": {
                        "v": "obl"
                      }
                    },
                    {
                      "fieldName": "syntax_to_word",
                      "int": {
                        "v": "1"
                      }
                    },
                    {
                      "fieldName": "syntax_direction",
                      "text": {
                        "v": "parent"
                      }
                    },
                    {
                      "fieldName": "dist",
                      "int_range": {
                        "begin": -10,
                        "end": 10
                      }
                    }
                  ]
                }
              ]
            }
          ]
        }
      },
      {
        "collocations": [
          {
            "collocate": {
              "valString": {
                "v": "слово"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 10.1382
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "дело"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 9.90642
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "фраза"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 9.21869
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "выражение"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 9.16174
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "мысль"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 9.06915
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "жест"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 9.01538
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "поступок"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 8.76694
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "взгляд"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 8.60881
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "движение"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 8.35018
              }
            ]
          },
          {
            "collocate": {
              "valString": {
                "v": "звук"
              }
            },
            "metrics": [
              {
                "name": "dice",
                "value": 8.30788
              }
            ]
          }
        ],
        "sketchSynRelation": "conj_S_S",
        "queryFormValue": {
          "sectionValues": [
            {
              "conditionValues": [
                {
                  "fieldName": "disambmod",
                  "text": {
                    "v": "main"
                  }
                },
                {
                  "fieldName": "distmod",
                  "text": {
                    "v": "no_zeros"
                  }
                }
              ],
              "subsectionValues": [
                {
                  "conditionValues": [
                    {
                      "fieldName": "lex",
                      "text": {
                        "v": "слово"
                      }
                    },
                    {
                      "fieldName": "gramm",
                      "text": {
                        "v": "S"
                      }
                    }
                  ]
                },
                {
                  "conditionValues": [
                    {
                      "fieldName": "gramm",
                      "text": {
                        "v": "S"
                      }
                    },
                    {
                      "fieldName": "syntax_link",
                      "text": {
                        "v": "conj"
                      }
                    },
                    {
                      "fieldName": "syntax_to_word",
                      "int": {
                        "v": "1"
                      }
                    },
                    {
                      "fieldName": "syntax_direction",
                      "text": {
                        "v": "child"
                      }
                    },
                    {
                      "fieldName": "dist",
                      "int_range": {
                        "begin": -10,
                        "end": 10
                      }
                    }
                  ]
                }
              ]
            }
          ]
        }
      }
    ]
  }
}
```

{% endcut %}


## Сравним сочетаемость слова в 2 корпусах
Можем попробовать сравнить сочетаемость слова в 2 разных корпусах. Например, глагол *сказать* в Основном и Гериональном корпусах.
Данные примеры можно использовать локально, или запусть в Jupyter Notebook.

```bash
pip install pandas
```

Сформируем 2 набора данных из корпусов
```python
import requests
import json
import pandas as pd

url = "https://ruscorpora.ru/api/v1/word-portrait/"
headers = {'Authorization': 'Bearer ******'}

main_query = {
    "lemma": "сказать",
    "pos": "V",
    "corpus": {
        "type": "MAIN"
    },
    "result_type": ["PORTRAIT_SKETCH"],
    "seed": 8918596
}


main_query = {"query": json.dumps(query, ensure_ascii=False)}
main_response = response = requests.get(url, params=query, headers=headers)
main_sketch_data = response.json()["sketchData"] # скетчи для Основного корпуса

regional_query = {
    "lemma": "сказать",
    "pos": "V",
    "corpus": {
        "type": "REGIONAL"
    },
    "result_type": ["PORTRAIT_SKETCH"],
    "seed": 8918596
}


regional_query = {"query": json.dumps(query, ensure_ascii=False)}
regional_response = response = requests.get(url, params=query, headers=headers)
regional_sketch_data = response.json()["sketchData"] # скетчи для Регионального корпуса


# функция формирующая таблицу с разницей в значениях dice для каждого collocate
def compare_category_table(cat, data1, data2):
    df1 = pd.DataFrame(data1[cat])
    df2 = pd.DataFrame(data2[cat])

    merged = pd.merge(df1, df2, on='collocate', suffixes=('_1', '_2'))
    if merged.empty:
        print(f"Нет общих collocate'ов для {cat}")
        return

    merged['diff'] = (merged['dice_1'] - merged['dice_2']).abs()
    merged['higher_in'] = merged.apply(lambda row: 'MAIN' if row['dice_1'] > row['dice_2'] else 'REGIONAL', axis=1)

    display(merged.sort_values(by='diff', ascending=False).style.background_gradient(cmap='coolwarm', subset=['diff']))

# список категорий для сравнения
categories = ['nsubj_V_S', 'obj_V_S', 'iobj_V_S', 'obl_V_S', 'conj_V_V']

for cat in categories:
    print(f"\n=== {cat} ===")
    compare_category_table(cat, main_coll_dict, reg_coll_dict)

```

#### 📊 Сравнение Dice для `nsubj_V_S`

| Collocate | Dice 1 | Dice 2 | Δ Dice | Higher In |
| --------- | ------ | ------ | ------ | --------- |
| врач      | 6.594  | 7.323  | 0.729  | REGIONAL  |
| мама      | 7.242  | 6.624  | 0.618  | MAIN      |


#### 📊 Сравнение Dice для `obj_V_S`

| Collocate | Dice 1 | Dice 2 | Δ Dice | Higher In |
| --------- | ------ | ------ | ------ | --------- |
| спасибо   | 9.066  | 12.079 | 3.012  | REGIONAL  |
| правда    | 10.336 | 7.851  | 2.485  | MAIN      |
| речь      | 7.790  | 6.038  | 1.752  | MAIN      |
| неправда  | 6.257  | 5.848  | 0.409  | MAIN      |
| слово     | 11.032 | 11.344 | 0.312  | REGIONAL  |
| вещь      | 6.455  | 6.670  | 0.215  | REGIONAL  |
| фраза     | 7.605  | 7.810  | 0.204  | REGIONAL  |


#### Сравнение Dice для `iobj_V_S`

| Collocate | Dice 1 | Dice 2 | Δ Dice | Higher In |
| --------- | ------ | ------ | ------ | --------- |
| мама      | 6.775  | 7.782  | 1.007  | REGIONAL  |
| мать      | 6.945  | 7.421  | 0.476  | REGIONAL  |
| человек   | 7.092  | 7.187  | 0.094  | REGIONAL  |


#### Сравнение Dice для `obl_V_S`

| Collocate   | Dice 1 | Dice 2 | Δ Dice | Higher In |
| ----------- | ------ | ------ | ------ | --------- |
| уверенность | 7.674  | 9.606  | 1.932  | REGIONAL  |
| слово       | 8.275  | 9.211  | 0.936  | REGIONAL  |
| повод       | 7.268  | 8.015  | 0.747  | REGIONAL  |


#### Сравнение Dice для `conj_V_V`

| Collocate | Dice 1 | Dice 2 | Δ Dice | Higher In |
| --------- | ------ | ------ | ------ | --------- |
| сказать   | 8.864  | 7.760  | 1.104  | MAIN      |
| добавить  | 8.039  | 8.067  | 0.028  | REGIONAL  |
