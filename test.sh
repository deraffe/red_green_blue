while true; do
  echo
  ( (echo red; echo green 1>&2) | echo blue ) 2>&1 | tr "\n" " "
  sleep 0.01s
done
