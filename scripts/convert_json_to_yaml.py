import json
import yaml


openapi_json = json.load(open("openapi.json"))
openapi_yaml = yaml.dump(openapi_json, allow_unicode=True)

with open("docs/openapi.yaml", "w") as f:
    f.write(openapi_yaml)
