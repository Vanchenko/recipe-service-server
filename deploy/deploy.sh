#!/usr/bin/env bash
# Запускать на сервере из ~/recipe/recipe-service-server/deploy
set -euo pipefail
git -C .. pull --ff-only
git -C ../../recipe-service-app pull --ff-only
docker compose -f docker-compose.prod.yml --env-file .env up -d --build
docker image prune -f
