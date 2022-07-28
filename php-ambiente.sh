#!/bin/bash

BASE_DIR="/home/$USER/Sites"

if [ ! -d "$BASE_DIR" ]; then
    mkdir "$BASE_DIR"
    echo "Criando diretório de sites"
fi

create ()
{
  PROJECT=$1
  echo "Criando $PROJECT..."

  if [ ! -d "$BASE_DIR/$PROJECT" ]; then
      mkdir "$BASE_DIR/$PROJECT"
  fi

  curl -o "$BASE_DIR/$PROJECT/wordpress.tar.gz" https://br.wordpress.org/latest-pt_BR.tar.gz
  tar -xf "$BASE_DIR/$PROJECT/wordpress.tar.gz" -C "$BASE_DIR/$PROJECT/"
  rm -rf "$BASE_DIR/$PROJECT/wordpress.tar.gz"

}

case $1 in
create)
  create $2
  ;;
esac