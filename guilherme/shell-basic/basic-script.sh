#!/bin/bash

read -p "Enter your name > " name
if [[ "$name" =~ ^[A-Za-z] ]]
then 
  echo "Your name was typed correctly $name"
else 
  echo "Aparently this name is wrong"
fi

read -p "Enter your email > " email
if [[ "$email" =~ ^[A-Za-z0-9._-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$ ]]
then
    echo "This email address looks fine: $email"
else
    echo "This email address is invalid: $email"
fi