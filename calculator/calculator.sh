#!/usr/bin/env bash
#
# calculator.sh - Calculadora simples em shell script utilizando boas práticas
#
# Site:       https://github.com/bruno0199/devops-playground
# Autor:      Bruno Cristian
# Manutenção: Bruno Cristian
#
# ------------------------------------------------------------------------ #
#  Este programa irá fazer cálculos matemáticos
#
#  Exemplos:
#      $ ./calculator.sh
#      
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 - versão básica
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 5.0.17
# ------------------------------------------------------------------------ #

# ------------------------------- VARIÁVEIS ----------------------------------------- #
VALOR_1=0
VALOR_2=0
OPCAO=0
# ------------------------------------------------------------------------ #

# ------------------------------- TESTES ----------------------------------------- #

# ------------------------------------------------------------------------ #

# ------------------------------- FUNÇÕES ----------------------------------------- #
menu() {
  read -p "Escolha uma operação
      1 - Somar
      2 - Subtrair
      3 - Multiplicar
      4 - Divisão
      > " OPCAO
}

executar() {
  menu

  case $OPCAO in
    1)  soma ;;
    2)  subtracao ;;
    3)  multiplicacao ;;
    4)  divisao ;;
    *)  echo "Opção incorreta" ;;
  esac
}

insercao_numeros() {
  read -p "Digite um número: > " VALOR_1
  read -p "Digite outro número: > " VALOR_2
}

soma() {
  insercao_numeros
  echo $(($VALOR_1 + $VALOR_2))
}

subtracao() {
  insercao_numeros
  echo $(($VALOR_1 - $VALOR_2))
}

multiplicacao() {
  insercao_numeros
  echo $(($VALOR_1 * $VALOR_2))
}

divisao() {
  insercao_numeros
  echo $(($VALOR_1 / $VALOR_2))
}


# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #
executar
# ------------------------------------------------------------------------ #