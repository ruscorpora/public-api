# В этом репозитории хранится документация к API НКРЯ

## Структура репозитория

* `docs` - документация в формате diplodoc (диалект markdown)
* `scripts` - генерация документации, тулинг для публикации пакетов
* `docs-html` - сгенерированная документация в формате html
* `images` - статические изображения

# Инструкции для поддержки open-api клиентов
Для начала нужно создать `.env` файл с переменными:
```
GIT_USER_ID=XXX
GIT_PYTHON_APP_REPO_ID=XXX_XXX
GIT_TYPESCRIPT_APP_REPO_ID=XXX_XXX
```

# При первом запуске
 - `bash scripts/init.sh` - клонирует репозитории для публикации приложений

Для обновления версии: 
 - качаем новую версию openapi.json
 - запускаем `make build-apps version="X.X.X"`
 - запускаем `make publish-apps version="X.X.X" message="Обновление до версии X.X.X"`


 Или достаточно запустить общую таску:
  - `make update-apps version="X.X.X"`