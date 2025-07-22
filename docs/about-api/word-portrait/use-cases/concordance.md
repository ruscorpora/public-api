# Примеры словоупотребления

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
    "resultType": ["PORTRAIT_CONCORDANCE"]
    "seed": 2691651
}
query = {"query": json.dumps(query, ensure_ascii=False)}
response = requests.get(url, params=query, headers=headers)
concordance_data = response.json()["concordanceData"]
```


## Пример ответа

{% cut "Заголовок ката" %}

```json
{
  "possiblePos": [
    "S",
    "V"
  ],
  "concordanceData": {
    "groups": [
      {
        "docs": [
          {
            "info": {
              "title": "А. Т. Твардовский. Рабочие тетради (source/post1950/fiction_mem/tvardovsky/tvard_1958.xml) (1958) // «Знамя», 1989",
              "source": {
                "docId": "source/post1950/fiction_mem/tvardovsky/tvard_1958.xml"
              },
              "homonymyStatus": "auto",
              "showAllExamples": true,
              "allExamplesNum": 2,
              "docExplainInfo": {
                "items": [
                  {
                    "parsingFields": [
                      {
                        "name": "author",
                        "value": [
                          {
                            "valString": {
                              "v": "А. Т. Твардовский"
                            }
                          }
                        ]
                      },
                      {
                        "name": "sex",
                        "value": [
                          {
                            "valString": {
                              "v": "муж"
                            }
                          }
                        ]
                      },
                      {
                        "name": "birthday",
                        "value": [
                          {
                            "valString": {
                              "v": "1910"
                            }
                          }
                        ]
                      },
                      {
                        "name": "header",
                        "value": [
                          {
                            "valString": {
                              "v": "Рабочие тетради"
                            }
                          }
                        ]
                      },
                      {
                        "name": "created",
                        "value": [
                          {
                            "valString": {
                              "v": "1958"
                            }
                          }
                        ]
                      },
                      {
                        "name": "sphere",
                        "value": [
                          {
                            "valString": {
                              "v": "бытовая"
                            }
                          }
                        ]
                      },
                      {
                        "name": "topic",
                        "value": [
                          {
                            "valString": {
                              "v": "частная жизнь"
                            }
                          }
                        ]
                      },
                      {
                        "name": "type",
                        "value": [
                          {
                            "valString": {
                              "v": "дневник, записные книжки"
                            }
                          }
                        ]
                      },
                      {
                        "name": "style",
                        "value": [
                          {
                            "valString": {
                              "v": "сниженный"
                            }
                          }
                        ]
                      },
                      {
                        "name": "sentences",
                        "value": [
                          {
                            "valString": {
                              "v": "797"
                            }
                          }
                        ]
                      },
                      {
                        "name": "words",
                        "value": [
                          {
                            "valString": {
                              "v": "12915"
                            }
                          }
                        ]
                      },
                      {
                        "name": "audience_age",
                        "value": [
                          {
                            "valString": {
                              "v": "н-возраст"
                            }
                          }
                        ]
                      },
                      {
                        "name": "audience_level",
                        "value": [
                          {
                            "valString": {
                              "v": "н-уровень"
                            }
                          }
                        ]
                      },
                      {
                        "name": "audience_size",
                        "value": [
                          {
                            "valString": {
                              "v": "личная, большая"
                            }
                          }
                        ]
                      },
                      {
                        "name": "medium",
                        "value": [
                          {
                            "valString": {
                              "v": "журнал"
                            }
                          }
                        ]
                      },
                      {
                        "name": "source",
                        "value": [
                          {
                            "valString": {
                              "v": "Знамя, 1989, № 7-9"
                            }
                          }
                        ]
                      },
                      {
                        "name": "publ_year",
                        "value": [
                          {
                            "valString": {
                              "v": "1989"
                            }
                          }
                        ]
                      },
                      {
                        "name": "publication",
                        "value": [
                          {
                            "valString": {
                              "v": "«Знамя»"
                            }
                          }
                        ]
                      },
                      {
                        "name": "subcorpus",
                        "value": [
                          {
                            "valString": {
                              "v": "ПК письменных текстов"
                            }
                          }
                        ]
                      }
                    ]
                  }
                ]
              }
            },
            "snippetGroups": [
              {
                "snippets": [
                  {
                    "sequences": [
                      {
                        "words": [
                          {
                            "type": "WORD",
                            "text": "О",
                            "source": {
                              "sentId": 314
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "печах",
                            "source": {
                              "sentId": 314,
                              "wordId": 1
                            },
                            "displayParams": {
                              "hit": true
                            }
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "и",
                            "source": {
                              "sentId": 314,
                              "wordId": 2
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "печниках",
                            "source": {
                              "sentId": 314,
                              "wordId": 3
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "все",
                            "source": {
                              "sentId": 314,
                              "wordId": 4
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "хорошо",
                            "source": {
                              "sentId": 314,
                              "wordId": 5
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": ", ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "интересно",
                            "source": {
                              "sentId": 314,
                              "wordId": 6
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": ". ",
                            "source": {},
                            "displayParams": {}
                          }
                        ]
                      }
                    ],
                    "source": {
                      "docSource": {
                        "docId": "source/post1950/fiction_mem/tvardovsky/tvard_1958.xml"
                      },
                      "start": 311,
                      "end": 318
                    },
                    "langInfo": {
                      "lang": "rus"
                    },
                    "prevSnippetSource": {},
                    "nextSnippetSource": {}
                  }
                ]
              }
            ]
          }
        ]
      },
      {
        "docs": [
          {
            "info": {
              "title": "Откровение Иоанна Богослова: синодальный перевод (source/pre1950/xix/novy_zavet/77_rev.xml) (1816-1862)",
              "source": {
                "docId": "source/pre1950/xix/novy_zavet/77_rev.xml"
              },
              "homonymyStatus": "auto",
              "showAllExamples": true,
              "allExamplesNum": 2,
              "docExplainInfo": {
                "items": [
                  {
                    "parsingFields": [
                      {
                        "name": "header",
                        "value": [
                          {
                            "valString": {
                              "v": "Откровение Иоанна Богослова: синодальный перевод"
                            }
                          }
                        ]
                      },
                      {
                        "name": "created",
                        "value": [
                          {
                            "valString": {
                              "v": "1816-1862"
                            }
                          }
                        ]
                      },
                      {
                        "name": "sphere",
                        "value": [
                          {
                            "valString": {
                              "v": "церковно-богословская, нехудожественная"
                            }
                          }
                        ]
                      },
                      {
                        "name": "topic",
                        "value": [
                          {
                            "valString": {
                              "v": "религия"
                            }
                          }
                        ]
                      },
                      {
                        "name": "type",
                        "value": [
                          {
                            "valString": {
                              "v": "Священное писание"
                            }
                          }
                        ]
                      },
                      {
                        "name": "style",
                        "value": [
                          {
                            "valString": {
                              "v": "нейтральный"
                            }
                          }
                        ]
                      },
                      {
                        "name": "sentences",
                        "value": [
                          {
                            "valString": {
                              "v": "385"
                            }
                          }
                        ]
                      },
                      {
                        "name": "words",
                        "value": [
                          {
                            "valString": {
                              "v": "8634"
                            }
                          }
                        ]
                      },
                      {
                        "name": "audience_age",
                        "value": [
                          {
                            "valString": {
                              "v": "н-возраст"
                            }
                          }
                        ]
                      },
                      {
                        "name": "audience_level",
                        "value": [
                          {
                            "valString": {
                              "v": "н-уровень"
                            }
                          }
                        ]
                      },
                      {
                        "name": "audience_size",
                        "value": [
                          {
                            "valString": {
                              "v": "очень большая"
                            }
                          }
                        ]
                      },
                      {
                        "name": "medium",
                        "value": [
                          {
                            "valString": {
                              "v": "книга"
                            }
                          }
                        ]
                      },
                      {
                        "name": "source",
                        "value": [
                          {
                            "valString": {
                              "v": "Яндекс"
                            }
                          }
                        ]
                      },
                      {
                        "name": "subcorpus",
                        "value": [
                          {
                            "valString": {
                              "v": "ПК письменных текстов"
                            }
                          }
                        ]
                      }
                    ]
                  }
                ]
              }
            },
            "snippetGroups": [
              {
                "snippets": [
                  {
                    "sequences": [
                      {
                        "words": [
                          {
                            "type": "PLAIN",
                            "text": " 12. ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "Я",
                            "source": {
                              "sentId": 9
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "обратился",
                            "source": {
                              "sentId": 9,
                              "wordId": 1
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": ", ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "чтобы",
                            "source": {
                              "sentId": 9,
                              "wordId": 2
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "увидеть",
                            "source": {
                              "sentId": 9,
                              "wordId": 3
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": ", ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "чей",
                            "source": {
                              "sentId": 9,
                              "wordId": 4
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "голос",
                            "source": {
                              "sentId": 9,
                              "wordId": 5
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": ", ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "говоривший",
                            "source": {
                              "sentId": 9,
                              "wordId": 6
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "со",
                            "source": {
                              "sentId": 9,
                              "wordId": 7
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "мною",
                            "source": {
                              "sentId": 9,
                              "wordId": 8
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": "; ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "и",
                            "source": {
                              "sentId": 9,
                              "wordId": 9
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "обратившись",
                            "source": {
                              "sentId": 9,
                              "wordId": 10
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": ", ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "увидел",
                            "source": {
                              "sentId": 9,
                              "wordId": 11
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "семь",
                            "source": {
                              "sentId": 9,
                              "wordId": 12
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "золотых",
                            "source": {
                              "sentId": 9,
                              "wordId": 13
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "светильников",
                            "source": {
                              "sentId": 9,
                              "wordId": 14
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": "\n 13. ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "и",
                            "source": {
                              "sentId": 9,
                              "wordId": 15
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": ", ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "посреди",
                            "source": {
                              "sentId": 9,
                              "wordId": 16
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "семи",
                            "source": {
                              "sentId": 9,
                              "wordId": 17
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "светильников",
                            "source": {
                              "sentId": 9,
                              "wordId": 18
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": ", ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "подобного",
                            "source": {
                              "sentId": 9,
                              "wordId": 19
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "Сыну",
                            "source": {
                              "sentId": 9,
                              "wordId": 20
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "Человеческому",
                            "source": {
                              "sentId": 9,
                              "wordId": 21
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": ", ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "облеченного",
                            "source": {
                              "sentId": 9,
                              "wordId": 22
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "в",
                            "source": {
                              "sentId": 9,
                              "wordId": 23
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "подир",
                            "source": {
                              "sentId": 9,
                              "wordId": 24
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "и",
                            "source": {
                              "sentId": 9,
                              "wordId": 25
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "по",
                            "source": {
                              "sentId": 9,
                              "wordId": 26
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "персям",
                            "source": {
                              "sentId": 9,
                              "wordId": 27
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "опоясанного",
                            "source": {
                              "sentId": 9,
                              "wordId": 28
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "золотым",
                            "source": {
                              "sentId": 9,
                              "wordId": 29
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "поясом",
                            "source": {
                              "sentId": 9,
                              "wordId": 30
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": ": \n 14. ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "глава",
                            "source": {
                              "sentId": 9,
                              "wordId": 31
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "Его",
                            "source": {
                              "sentId": 9,
                              "wordId": 32
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "и",
                            "source": {
                              "sentId": 9,
                              "wordId": 33
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "волосы",
                            "source": {
                              "sentId": 9,
                              "wordId": 34
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "белы",
                            "source": {
                              "sentId": 9,
                              "wordId": 35
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": ", ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "как",
                            "source": {
                              "sentId": 9,
                              "wordId": 36
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "белая",
                            "source": {
                              "sentId": 9,
                              "wordId": 37
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "волна",
                            "source": {
                              "sentId": 9,
                              "wordId": 38
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": ", ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "как",
                            "source": {
                              "sentId": 9,
                              "wordId": 39
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "снег",
                            "source": {
                              "sentId": 9,
                              "wordId": 40
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": "; ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "и",
                            "source": {
                              "sentId": 9,
                              "wordId": 41
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "очи",
                            "source": {
                              "sentId": 9,
                              "wordId": 42
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "Его",
                            "source": {
                              "sentId": 9,
                              "wordId": 43
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": ", ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "как",
                            "source": {
                              "sentId": 9,
                              "wordId": 44
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "пламень",
                            "source": {
                              "sentId": 9,
                              "wordId": 45
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "огненный",
                            "source": {
                              "sentId": 9,
                              "wordId": 46
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": "; \n 15. ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "и",
                            "source": {
                              "sentId": 9,
                              "wordId": 47
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "ноги",
                            "source": {
                              "sentId": 9,
                              "wordId": 48
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "Его",
                            "source": {
                              "sentId": 9,
                              "wordId": 49
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "подобны",
                            "source": {
                              "sentId": 9,
                              "wordId": 50
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "халколивану",
                            "source": {
                              "sentId": 9,
                              "wordId": 51
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": ", ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "как",
                            "source": {
                              "sentId": 9,
                              "wordId": 52
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "раскаленные",
                            "source": {
                              "sentId": 9,
                              "wordId": 53
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "в",
                            "source": {
                              "sentId": 9,
                              "wordId": 54
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "печи",
                            "source": {
                              "sentId": 9,
                              "wordId": 55
                            },
                            "displayParams": {
                              "hit": true
                            }
                          },
                          {
                            "type": "PLAIN",
                            "text": ", ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "и",
                            "source": {
                              "sentId": 9,
                              "wordId": 56
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "голос",
                            "source": {
                              "sentId": 9,
                              "wordId": 57
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "Его",
                            "source": {
                              "sentId": 9,
                              "wordId": 58
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": ", ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "как",
                            "source": {
                              "sentId": 9,
                              "wordId": 59
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "шум",
                            "source": {
                              "sentId": 9,
                              "wordId": 60
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "вод",
                            "source": {
                              "sentId": 9,
                              "wordId": 61
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "многих",
                            "source": {
                              "sentId": 9,
                              "wordId": 62
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": ".\n",
                            "source": {},
                            "displayParams": {}
                          }
                        ]
                      }
                    ],
                    "source": {
                      "docSource": {
                        "docId": "source/pre1950/xix/novy_zavet/77_rev.xml"
                      },
                      "start": 6,
                      "end": 13
                    },
                    "langInfo": {
                      "lang": "rus"
                    },
                    "prevSnippetSource": {},
                    "nextSnippetSource": {}
                  }
                ]
              }
            ]
          }
        ]
      },
      {
        "docs": [
          {
            "info": {
              "title": "Олег Радзинский. Посещение (source/post1950/vagr/vagr4/radzinsky_o/posesc05.xml) (1985)",
              "source": {
                "docId": "source/post1950/vagr/vagr4/radzinsky_o/posesc05.xml"
              },
              "homonymyStatus": "auto",
              "allExamplesNum": 1,
              "docExplainInfo": {
                "items": [
                  {
                    "parsingFields": [
                      {
                        "name": "author",
                        "value": [
                          {
                            "valString": {
                              "v": "Олег Радзинский"
                            }
                          }
                        ]
                      },
                      {
                        "name": "sex",
                        "value": [
                          {
                            "valString": {
                              "v": "муж"
                            }
                          }
                        ]
                      },
                      {
                        "name": "birthday",
                        "value": [
                          {
                            "valString": {
                              "v": "1958"
                            }
                          }
                        ]
                      },
                      {
                        "name": "header",
                        "value": [
                          {
                            "valString": {
                              "v": "Посещение"
                            }
                          }
                        ]
                      },
                      {
                        "name": "created",
                        "value": [
                          {
                            "valString": {
                              "v": "1985"
                            }
                          }
                        ]
                      },
                      {
                        "name": "sphere",
                        "value": [
                          {
                            "valString": {
                              "v": "художественная"
                            }
                          }
                        ]
                      },
                      {
                        "name": "genre_fi",
                        "value": [
                          {
                            "valString": {
                              "v": "нежанровая проза"
                            }
                          }
                        ]
                      },
                      {
                        "name": "chronotop",
                        "value": [
                          {
                            "valString": {
                              "v": "Россия/СССР: 1960-1980-е"
                            }
                          }
                        ]
                      },
                      {
                        "name": "type",
                        "value": [
                          {
                            "valString": {
                              "v": "рассказ"
                            }
                          }
                        ]
                      },
                      {
                        "name": "style",
                        "value": [
                          {
                            "valString": {
                              "v": "нейтральный"
                            }
                          }
                        ]
                      },
                      {
                        "name": "sentences",
                        "value": [
                          {
                            "valString": {
                              "v": "153"
                            }
                          }
                        ]
                      },
                      {
                        "name": "words",
                        "value": [
                          {
                            "valString": {
                              "v": "1196"
                            }
                          }
                        ]
                      },
                      {
                        "name": "audience_age",
                        "value": [
                          {
                            "valString": {
                              "v": "н-возраст"
                            }
                          }
                        ]
                      },
                      {
                        "name": "audience_level",
                        "value": [
                          {
                            "valString": {
                              "v": "н-уровень"
                            }
                          }
                        ]
                      },
                      {
                        "name": "audience_size",
                        "value": [
                          {
                            "valString": {
                              "v": "очень большая"
                            }
                          }
                        ]
                      },
                      {
                        "name": "medium",
                        "value": [
                          {
                            "valString": {
                              "v": "книга"
                            }
                          }
                        ]
                      },
                      {
                        "name": "source",
                        "value": [
                          {
                            "valString": {
                              "v": "Разинский О. Посещение. ― М.: Вагриус, 2000"
                            }
                          }
                        ]
                      },
                      {
                        "name": "publ_year",
                        "value": [
                          {
                            "valString": {
                              "v": "2000"
                            }
                          }
                        ]
                      },
                      {
                        "name": "publication",
                        "value": [
                          {
                            "valString": {
                              "v": "Разинский О. Посещение"
                            }
                          }
                        ]
                      },
                      {
                        "name": "publisher",
                        "value": [
                          {
                            "valString": {
                              "v": "Вагриус"
                            }
                          }
                        ]
                      },
                      {
                        "name": "subcorpus",
                        "value": [
                          {
                            "valString": {
                              "v": "ПК письменных текстов"
                            }
                          }
                        ]
                      }
                    ]
                  }
                ]
              }
            },
            "snippetGroups": [
              {
                "snippets": [
                  {
                    "sequences": [
                      {
                        "words": [
                          {
                            "type": "WORD",
                            "text": "Она",
                            "source": {
                              "sentId": 30
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "замела",
                            "source": {
                              "sentId": 30,
                              "wordId": 1
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "сор",
                            "source": {
                              "sentId": 30,
                              "wordId": 2
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "на",
                            "source": {
                              "sentId": 30,
                              "wordId": 3
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "картонку",
                            "source": {
                              "sentId": 30,
                              "wordId": 4
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "и",
                            "source": {
                              "sentId": 30,
                              "wordId": 5
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "пошла",
                            "source": {
                              "sentId": 30,
                              "wordId": 6
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "бросить",
                            "source": {
                              "sentId": 30,
                              "wordId": 7
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "в",
                            "source": {
                              "sentId": 30,
                              "wordId": 8
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "печь",
                            "source": {
                              "sentId": 30,
                              "wordId": 9
                            },
                            "displayParams": {
                              "hit": true
                            }
                          },
                          {
                            "type": "PLAIN",
                            "text": ". ",
                            "source": {},
                            "displayParams": {}
                          }
                        ]
                      }
                    ],
                    "source": {
                      "docSource": {
                        "docId": "source/post1950/vagr/vagr4/radzinsky_o/posesc05.xml"
                      },
                      "start": 27,
                      "end": 34
                    },
                    "langInfo": {
                      "lang": "rus"
                    },
                    "prevSnippetSource": {},
                    "nextSnippetSource": {}
                  }
                ]
              }
            ]
          }
        ]
      },
      {
        "docs": [
          {
            "info": {
              "title": "Бичъ Франціи или коварная и вѣроломная система правленія нынѣшняго повелителя Французовъ, описанная очевиднымъ наблюдателемъ съ присовокупленіемъ портрета Бонапарта (source/pre1950/xix/syn_otechestva/syn_otech_1813-9_15.xml) // «Сынъ отечества», 1813",
              "source": {
                "docId": "source/pre1950/xix/syn_otechestva/syn_otech_1813-9_15.xml"
              },
              "homonymyStatus": "auto",
              "allExamplesNum": 1,
              "docExplainInfo": {
                "items": [
                  {
                    "parsingFields": [
                      {
                        "name": "author",
                        "value": [
                          {
                            "valString": {
                              "v": "коллективный"
                            }
                          }
                        ]
                      },
                      {
                        "name": "sex",
                        "value": [
                          {
                            "valString": {
                              "v": "муж"
                            }
                          }
                        ]
                      },
                      {
                        "name": "header",
                        "value": [
                          {
                            "valString": {
                              "v": "Бичъ Франціи или коварная и вѣроломная система правленія нынѣшняго повелителя Французовъ, описанная очевиднымъ наблюдателемъ съ присовокупленіемъ портрета Бонапарта"
                            }
                          }
                        ]
                      },
                      {
                        "name": "created",
                        "value": [
                          {
                            "valString": {
                              "v": "1813"
                            }
                          }
                        ]
                      },
                      {
                        "name": "sphere",
                        "value": [
                          {
                            "valString": {
                              "v": "публицистика, нехудожественная"
                            }
                          }
                        ]
                      },
                      {
                        "name": "topic",
                        "value": [
                          {
                            "valString": {
                              "v": "политика и общественная жизнь"
                            }
                          }
                        ]
                      },
                      {
                        "name": "type",
                        "value": [
                          {
                            "valString": {
                              "v": "статья"
                            }
                          }
                        ]
                      },
                      {
                        "name": "style",
                        "value": [
                          {
                            "valString": {
                              "v": "нейтральный"
                            }
                          }
                        ]
                      },
                      {
                        "name": "sentences",
                        "value": [
                          {
                            "valString": {
                              "v": "150"
                            }
                          }
                        ]
                      },
                      {
                        "name": "words",
                        "value": [
                          {
                            "valString": {
                              "v": "3353"
                            }
                          }
                        ]
                      },
                      {
                        "name": "audience_age",
                        "value": [
                          {
                            "valString": {
                              "v": "н-возраст"
                            }
                          }
                        ]
                      },
                      {
                        "name": "audience_level",
                        "value": [
                          {
                            "valString": {
                              "v": "н-уровень"
                            }
                          }
                        ]
                      },
                      {
                        "name": "audience_size",
                        "value": [
                          {
                            "valString": {
                              "v": "большая"
                            }
                          }
                        ]
                      },
                      {
                        "name": "medium",
                        "value": [
                          {
                            "valString": {
                              "v": "журнал"
                            }
                          }
                        ]
                      },
                      {
                        "name": "source",
                        "value": [
                          {
                            "valString": {
                              "v": "Сынъ отечества, историческій и политическій журналъ. Ч. 9.: № XXXIX – Санктпетербургъ: Въ типографіи Ф. Дрехслера, 1813."
                            }
                          }
                        ]
                      },
                      {
                        "name": "publ_year",
                        "value": [
                          {
                            "valString": {
                              "v": "1813"
                            }
                          }
                        ]
                      },
                      {
                        "name": "publication",
                        "value": [
                          {
                            "valString": {
                              "v": "«Сынъ отечества»"
                            }
                          }
                        ]
                      },
                      {
                        "name": "publisher",
                        "value": [
                          {
                            "valString": {
                              "v": "Санктпетербургъ: Въ типографіи Ф. Дрехслера"
                            }
                          }
                        ]
                      },
                      {
                        "name": "subcorpus",
                        "value": [
                          {
                            "valString": {
                              "v": "ПК письменных текстов/oldortho"
                            }
                          }
                        ]
                      }
                    ]
                  }
                ]
              }
            },
            "snippetGroups": [
              {
                "snippets": [
                  {
                    "sequences": [
                      {
                        "words": [
                          {
                            "type": "WORD",
                            "text": "Въ",
                            "source": {
                              "sentId": 1
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "С",
                            "source": {
                              "sentId": 1,
                              "wordId": 1
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": ". ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "П",
                            "source": {
                              "sentId": 1,
                              "wordId": 2
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": ". ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "Б",
                            "source": {
                              "sentId": 1,
                              "wordId": 3
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": ". ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "печ",
                            "source": {
                              "sentId": 1,
                              "wordId": 4
                            },
                            "displayParams": {
                              "hit": true
                            }
                          },
                          {
                            "type": "PLAIN",
                            "text": ". ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "въ",
                            "source": {
                              "sentId": 1,
                              "wordId": 5
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "Сенатской",
                            "source": {
                              "sentId": 1,
                              "wordId": 6
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "типографіи",
                            "source": {
                              "sentId": 1,
                              "wordId": 7
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "1813",
                            "source": {
                              "sentId": 1,
                              "wordId": 8
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "года",
                            "source": {
                              "sentId": 1,
                              "wordId": 9
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": ". ",
                            "source": {},
                            "displayParams": {}
                          }
                        ]
                      }
                    ],
                    "source": {
                      "docSource": {
                        "docId": "source/pre1950/xix/syn_otechestva/syn_otech_1813-9_15.xml"
                      },
                      "end": 5
                    },
                    "langInfo": {
                      "lang": "rus"
                    },
                    "prevSnippetSource": {},
                    "nextSnippetSource": {}
                  }
                ]
              }
            ]
          }
        ]
      },
      {
        "docs": [
          {
            "info": {
              "title": "Андрей Белый. Бальмонт (source/pre1950/xx-1/bely_a/lug_zel/lug_ze09.xml) (1904-1908)",
              "source": {
                "docId": "source/pre1950/xx-1/bely_a/lug_zel/lug_ze09.xml"
              },
              "homonymyStatus": "auto",
              "allExamplesNum": 1,
              "docExplainInfo": {
                "items": [
                  {
                    "parsingFields": [
                      {
                        "name": "author",
                        "value": [
                          {
                            "valString": {
                              "v": "Андрей Белый"
                            }
                          }
                        ]
                      },
                      {
                        "name": "sex",
                        "value": [
                          {
                            "valString": {
                              "v": "муж"
                            }
                          }
                        ]
                      },
                      {
                        "name": "birthday",
                        "value": [
                          {
                            "valString": {
                              "v": "1880"
                            }
                          }
                        ]
                      },
                      {
                        "name": "header",
                        "value": [
                          {
                            "valString": {
                              "v": "Бальмонт"
                            }
                          }
                        ]
                      },
                      {
                        "name": "created",
                        "value": [
                          {
                            "valString": {
                              "v": "1904-1908"
                            }
                          }
                        ]
                      },
                      {
                        "name": "sphere",
                        "value": [
                          {
                            "valString": {
                              "v": "учебно-научная, нехудожественная"
                            }
                          }
                        ]
                      },
                      {
                        "name": "topic",
                        "value": [
                          {
                            "valString": {
                              "v": "наука и технологии, филология, культурология"
                            }
                          }
                        ]
                      },
                      {
                        "name": "type",
                        "value": [
                          {
                            "valString": {
                              "v": "статья"
                            }
                          }
                        ]
                      },
                      {
                        "name": "style",
                        "value": [
                          {
                            "valString": {
                              "v": "нейтральный"
                            }
                          }
                        ]
                      },
                      {
                        "name": "sentences",
                        "value": [
                          {
                            "valString": {
                              "v": "225"
                            }
                          }
                        ]
                      },
                      {
                        "name": "words",
                        "value": [
                          {
                            "valString": {
                              "v": "2486"
                            }
                          }
                        ]
                      },
                      {
                        "name": "audience_age",
                        "value": [
                          {
                            "valString": {
                              "v": "н-возраст"
                            }
                          }
                        ]
                      },
                      {
                        "name": "audience_level",
                        "value": [
                          {
                            "valString": {
                              "v": "высокий"
                            }
                          }
                        ]
                      },
                      {
                        "name": "audience_size",
                        "value": [
                          {
                            "valString": {
                              "v": "большая"
                            }
                          }
                        ]
                      },
                      {
                        "name": "medium",
                        "value": [
                          {
                            "valString": {
                              "v": "книга"
                            }
                          }
                        ]
                      },
                      {
                        "name": "source",
                        "value": [
                          {
                            "valString": {
                              "v": "Андрей Белый. Луг зеленый // Критика. Эстетика. Теория символизма: В 2-х томах. Т.1. М.: Искусство, 1994"
                            }
                          }
                        ]
                      },
                      {
                        "name": "publ_year",
                        "value": [
                          {
                            "valString": {
                              "v": "1994"
                            }
                          }
                        ]
                      },
                      {
                        "name": "publication",
                        "value": [
                          {
                            "valString": {
                              "v": "Андрей Белый. Луг зеленый // Критика. Эстетика. Теория символизма: В 2-х томах. Т.1"
                            }
                          }
                        ]
                      },
                      {
                        "name": "publisher",
                        "value": [
                          {
                            "valString": {
                              "v": "«Искусство»"
                            }
                          }
                        ]
                      },
                      {
                        "name": "subcorpus",
                        "value": [
                          {
                            "valString": {
                              "v": "ПК письменных текстов"
                            }
                          }
                        ]
                      }
                    ]
                  }
                ]
              }
            },
            "snippetGroups": [
              {
                "snippets": [
                  {
                    "sequences": [
                      {
                        "words": [
                          {
                            "type": "WORD",
                            "text": "Сидел",
                            "source": {
                              "sentId": 166
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "грустный",
                            "source": {
                              "sentId": 166,
                              "wordId": 1
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": ", ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "и",
                            "source": {
                              "sentId": 166,
                              "wordId": 2
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "жалобно",
                            "source": {
                              "sentId": 166,
                              "wordId": 3
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "гасло",
                            "source": {
                              "sentId": 166,
                              "wordId": 4
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "северное",
                            "source": {
                              "sentId": 166,
                              "wordId": 5
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "сияние",
                            "source": {
                              "sentId": 166,
                              "wordId": 6
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "его",
                            "source": {
                              "sentId": 166,
                              "wordId": 7
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "души",
                            "source": {
                              "sentId": 166,
                              "wordId": 8
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": ": ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "ведь",
                            "source": {
                              "sentId": 166,
                              "wordId": 9
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "оно",
                            "source": {
                              "sentId": 166,
                              "wordId": 10
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "для",
                            "source": {
                              "sentId": 166,
                              "wordId": 11
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "большинства",
                            "source": {
                              "sentId": 166,
                              "wordId": 12
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "его",
                            "source": {
                              "sentId": 166,
                              "wordId": 13
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "читателей",
                            "source": {
                              "sentId": 166,
                              "wordId": 14
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "только",
                            "source": {
                              "sentId": 166,
                              "wordId": 15
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "пламя",
                            "source": {
                              "sentId": 166,
                              "wordId": 16
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "земляной",
                            "source": {
                              "sentId": 166,
                              "wordId": 17
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "печи",
                            "source": {
                              "sentId": 166,
                              "wordId": 18
                            },
                            "displayParams": {
                              "hit": true
                            }
                          },
                          {
                            "type": "PLAIN",
                            "text": ", ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "тонко",
                            "source": {
                              "sentId": 166,
                              "wordId": 19
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "раздражающее",
                            "source": {
                              "sentId": 166,
                              "wordId": 20
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": " ",
                            "source": {},
                            "displayParams": {}
                          },
                          {
                            "type": "WORD",
                            "text": "чувственность",
                            "source": {
                              "sentId": 166,
                              "wordId": 21
                            },
                            "displayParams": {}
                          },
                          {
                            "type": "PLAIN",
                            "text": ". ",
                            "source": {},
                            "displayParams": {}
                          }
                        ]
                      }
                    ],
                    "source": {
                      "docSource": {
                        "docId": "source/pre1950/xx-1/bely_a/lug_zel/lug_ze09.xml"
                      },
                      "start": 163,
                      "end": 170
                    },
                    "langInfo": {
                      "lang": "rus"
                    },
                    "prevSnippetSource": {},
                    "nextSnippetSource": {}
                  }
                ]
              }
            ]
          }
        ]
      }
    ]
  }
}
```

{% endcut %}

## Структура JSON ответа


### Основной объект (корень)

JSON начинается с одного объекта, содержащего ключ:

- `concordanceData`: объект с основными данными поиска.
  - `groups`: массив групп результатов.

---

### `groups` (массив)

Каждый элемент массива `groups` — это объект с ключом:

- `docs`: массив документов, найденных в этой группе.

---

### `docs` (массив)

Каждый документ представляет собой объект, включающий:

- `info`: информация о документе.
- `snippetGroups`: массив групп сниппетов (фрагментов текста, где найдено совпадение).

#### `info`

Метаинформация о документе:

- `title`: строка — заголовок документа.
- `source.docId`: строка — уникальный идентификатор документа.
- `homonymyStatus`: строка — статус омонимии (может быть пустым или использоваться для фильтрации).
- `showAllExamples` *(необязательный)*: логическое значение — отображать ли все примеры.
- `allExamplesNum`: число — общее количество совпадений/примеров.
- `docExplainInfo.items`: массив пояснений, каждый из которых содержит:

##### `docExplainInfo.items[].parsingFields`

- `name`: строка — название грамматического поля (например, "Часть речи").
- `value`: массив значений, каждое из которых включает:
  - `valString.v`: строка — значение в текстовом виде.

---

### `snippetGroups` (массив)

Каждая группа содержит:

- `snippets`: массив объектов-сниппетов (отдельных фрагментов текста).

---

### `snippets` (массив)

Каждый сниппет содержит:

- `sequences`: массив последовательностей слов (или токенов).
- `source`:
  - `docSource.docId`: строка — ID документа, откуда взят фрагмент.
  - `start` *(необязательно)*: число — начальная позиция в документе.
  - `end`: число — конечная позиция.
- `langInfo.lang`: строка — язык текста.
- `prevSnippetSource` и `nextSnippetSource`: объекты (могут быть пустыми) — используются для навигации или подгрузки соседних фрагментов.

---

### `sequences` (массив)

Каждая последовательность содержит:

- `words`: массив слов.

---

#### `words` (массив)

Каждое слово представлено объектом с полями:

- `type`: строка — тип токена (например, "word", "punctuation").
- `text`: строка — текст слова.
- `source` *(может отсутствовать)*:
  - `sentId`: число — ID предложения.
  - `wordId`: число — ID слова.
- `displayParams.hit`: логическое значение *(необязательно)* — если `true`, это слово — результат поиска (подсвечивается).

---

## 💡 Примечания

- Все ID (`docId`, `sentId`, `wordId`) — это уникальные идентификаторы для связки и восстановления контекста.
- `hit` помогает фронтенду подсвечивать нужные слова.
- `prevSnippetSource` и `nextSnippetSource` часто пусты, но могут быть использованы для пагинации или получения соседних результатов.

---