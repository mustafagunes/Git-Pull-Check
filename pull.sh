#!/bin/sh
# Mustafa GUNES
# gunes149@gmail.com

UPSTREAM=${1:-'@{u}'}
LOCAL=$(git rev-parse @)
REMOTE=$(git rev-parse "$UPSTREAM")
BASE=$(git merge-base @ "$UPSTREAM")

if [ $LOCAL = $REMOTE ]; then
    echo "Güncel Kardeşim ✅"
elif [ $LOCAL = $BASE ]; then
    echo "Var var, birşeyler var ‼️"
elif [ $REMOTE = $BASE ]; then
    echo "Gönder Aslanım 😎"
else
    echo "Kriz masası oluşturuldu 😱"
fi