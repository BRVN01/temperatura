#!/bin/bash

# Autor: Bruno Dias da Silva
# Dependencias: Precisa ter a calculadora BC e precisa ter o BASH.

# Coleta a temperatura
temperatura=$(cat /sys/class/thermal/thermal_zone0/temp)

# Precisamos dividir por 1000 o valor obtido para termos o valor
# de temperatura real. 

# Uso um scale=1 para termos apenas 1 número depois da vírgula.
celsius=$(echo "scale=1 ; ($temperatura / 1000)" | bc)

# Exibe a temperatura.
echo "$celsius °C"
