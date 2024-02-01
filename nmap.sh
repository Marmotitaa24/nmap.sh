#!/bin/bash

if ! [ -x "$(command -v nmap)" ]; then
  echo 'Error: nmap no está instalado.' >&2
  exit 1
fi

read -p "Ingrese la dirección IP o rango de red a escanear: " ip

echo "Escaneando $ip..."
nmap -p 1-1024 $ip > resultado.txt

