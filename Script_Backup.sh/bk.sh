#!/bin/bash


echo Entre com o arquivo:
read n1

total=$( wc -l <  $n1 );

echo "Numero de linhas : $total"

if [[ $total -lt 100 ]];

then 
     
  mv $n1 pequeno
  echo "Arquivo movido com sucesso para a pasta pequeno"

elif [[ $total -lt 500 ]];
then
  mv $n1 medio
  echo "Arquivo movido com sucesso para a pasta medio"

else
  mv $n1 grande
  echo "Arquivo movido com sucesso para a pasta grande"

fi
