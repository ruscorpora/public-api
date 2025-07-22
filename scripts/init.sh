#!/bin/bash

ENV_FILE="${PWD}/.env"
echo "Using env file: $ENV_FILE"

if [ -f "$ENV_FILE" ]; then
  set -a
  . "$ENV_FILE"
  set +a
else
  echo "Ошибка: Файл .env не найден." >&2
  exit 1
fi

check_var() {
  VAR_NAME="$1"
  VAR_VALUE="${!VAR_NAME}"

  if [ -z "$VAR_VALUE" ]; then
    echo "Ошибка: Переменная окружения '$VAR_NAME' не задана или пуста." >&2
    exit 1
  fi
}

clone_repo() {
  local REPO_NAME="$1"
  local GIT_URL="$2"

  if [ -d "$REPO_NAME" ]; then
    echo "⚠️ Repository '$REPO_NAME' exists."

    read -p "Skip downloading '$REPO_NAME'? [Y/n]: " ANSWER
    ANSWER=${ANSWER:-Y}

    if [[ "$ANSWER" =~ ^[Yy]$ ]]; then
      echo "Skipped: $REPO_NAME"
      return
    else
      echo "Delete repository '$REPO_NAME' and download again."
      rm -rf "$REPO_NAME"
    fi
  fi

  echo "Cloning $REPO_NAME..."
  git clone "$GIT_URL"
}

check_var "GIT_USER_ID"
check_var "GIT_PYTHON_APP_REPO_ID"
check_var "GIT_TYPESCRIPT_APP_REPO_ID"

mkdir -p dist

cd dist || exit

clone_repo "$GIT_PYTHON_APP_REPO_ID" "https://github.com/${GIT_USER_ID}/${GIT_PYTHON_APP_REPO_ID}.git"
clone_repo "$GIT_TYPESCRIPT_APP_REPO_ID" "https://github.com/${GIT_USER_ID}/${GIT_TYPESCRIPT_APP_REPO_ID}.git"