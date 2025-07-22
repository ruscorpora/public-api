# Информация о слове (грамматические и семантические характеристики)

API "Портрета слова" предоставляет информацию о слове: его грамматические и семантические свойства, а также список всех омонимов, зарегистрированных в НКРЯ.

## Пример запроса

```json
{
  "lemma": "хорошо",
  "pos": "ADV",
  "corpus": {
    "type": "MAIN"
  },
  "result_type": ["PORTRAIT_WORD_INFO"],
  "seed": 8918596
}
```

## Формат ответа
Ответ содержит два ключа:
propsData.items — массив, в котором каждый элемент представляет один разбор слова

## Пример ответа
```json
{
  "possiblePos": [
    "S",
    "V"
  ],
  "propsData": {
    "items": [
      {
        "parsingFields": [
          {
            "name": "text",
            "value": [
              {
                "valString": {
                  "v": "печь"
                }
              }
            ],
            "level": "ATTR_LEVEL_WORD"
          },
          {
            "name": "lex",
            "value": [
              {
                "valString": {
                  "v": "печь"
                }
              }
            ],
            "level": "ATTR_LEVEL_PARSING",
            "externalUrl": "https://academic.ru/searchall.p...."
          },
          {
            "name": "gr",
            "value": [
              {
                "valString": {
                  "v": "существительное"
                }
              },
              {
                "valString": {
                  "v": "женский (род)"
                }
              },
              {
                "valString": {
                  "v": "неодушевленное"
                }
              }
            ],
            "level": "ATTR_LEVEL_PARSING"
          },
          {
            "name": "sem",
            "value": [
              {
                "valString": {
                  "v": "r:concr"
                }
              },
              {
                "valString": {
                  "v": "t:tool:device"
                }
              },
              {
                "valString": {
                  "v": "top:contain"
                }
              }
            ],
            "level": "ATTR_LEVEL_PARSING"
          }
        ]
      },
      {
        "parsingFields": [
          {
            "name": "text",
            "value": [
              {
                "valString": {
                  "v": "печь"
                }
              }
            ],
            "level": "ATTR_LEVEL_WORD"
          },
          {
            "name": "lex",
            "value": [
              {
                "valString": {
                  "v": "Печь"
                }
              }
            ],
            "level": "ATTR_LEVEL_PARSING",
            "externalUrl": "https://academic.ru/...."
          },
          {
            "name": "gr",
            "value": [
              {
                "valString": {
                  "v": "существительное"
                }
              },
              {
                "valString": {
                  "v": "женский (род)"
                }
              },
              {
                "valString": {
                  "v": "неодушевленное"
                }
              },
              {
                "valString": {
                  "v": "топоним**"
                }
              }
            ],
            "level": "ATTR_LEVEL_PARSING"
          },
          {
            "name": "sem",
            "value": [
              {
                "valString": {
                  "v": "r:concr"
                }
              },
              {
                "valString": {
                  "v": "t:tool:device"
                }
              },
              {
                "valString": {
                  "v": "top:contain"
                }
              }
            ],
            "level": "ATTR_LEVEL_PARSING"
          }
        ]
      }
    ]
  }
}
```