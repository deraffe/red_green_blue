while true; do
  echo
  ( (echo "\e[30;41mred\e[0m"; echo "\e[30;42mgreen\e[0m" 1>&2) | echo "\e[30;44mblue\e[0m" ) 2>&1 | tr "\n" " "
  sleep 0.01s
done
