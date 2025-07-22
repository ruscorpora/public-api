import json

## Исправляем схему OpenAPI 3.1.0, чтобы можно было собрать клиенты.
## В OpenAPI 3.1.0 есть изменения в формате примеров, которые не поддерживаются генератором клиентов.


def fix_schema_examples(spec):
    for path_item in spec.get("paths", {}).values():
        for operation in path_item.values():
            if not isinstance(operation, dict) or "parameters" not in operation:
                continue

            for param in operation["parameters"]:
                if "schema" in param and "examples" in param["schema"]:
                    # Преобразуем schema.examples в правильный формат массива
                    if isinstance(param["schema"]["examples"], dict):
                        examples_array = []
                        for example_name, example_content in param["schema"][
                            "examples"
                        ].items():
                            if (
                                isinstance(example_content, dict)
                                and "value" in example_content
                            ):
                                # Если пример уже в правильном формате
                                example_content["name"] = example_name
                                examples_array.append(example_content)
                            else:
                                # Если пример задан как значение без обертки
                                examples_array.append(
                                    {"name": example_name, "value": example_content}
                                )
                        param["schema"]["examples"] = examples_array

                # Убедимся, что верхний examples - объект с правильной структурой
                if "examples" in param and isinstance(param["examples"], dict):
                    fixed_examples = {}
                    for name, content in param["examples"].items():
                        if isinstance(content, dict) and "value" in content:
                            fixed_examples[name] = content
                        else:
                            fixed_examples[name] = {"value": content}
                    param["examples"] = fixed_examples

    return spec


# Загрузка оригинальной спецификации
with open("openapi.json", "r", encoding="utf-8") as f:
    spec = json.load(f)

# Исправление
fixed_spec = fix_schema_examples(spec)

# Сохранение исправленной версии
with open("dist/openapi_fixed.json", "w", encoding="utf-8") as f:
    json.dump(fixed_spec, f, ensure_ascii=False, indent=2)
