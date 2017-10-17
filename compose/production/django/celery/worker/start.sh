#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset


celery -A realworld_django.taskapp worker -l INFO
