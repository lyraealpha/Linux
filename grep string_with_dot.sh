head -1 file > ./result && for i in `ls ID_files/`;do echo $i\:;cat file|fgrep -Frwf ID_files/$i;done>>./result
