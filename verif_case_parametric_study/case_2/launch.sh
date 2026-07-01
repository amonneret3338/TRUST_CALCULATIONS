parallel -j 20 '
  echo "=== {} ==="
  cd {} && trust input_triocfd.data &> log.txt && tail -n 10 log.txt
' ::: T\=*/

