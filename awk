#!/usr/bin/env python

import os






#1
os.system("cat LC_pos_new.txt|awk -F '|' '{if ($3 != 0 && $4 != 0 && $6 != 0 && ($7 != 0)) {print $1$3$4$6$7}}' > ./DZH_results/GC_J2_J3_J4_J5_intersection.txt")
#2
os.system("cat LC_pos_new.txt|awk -F '|' '{if ($1~/id/) print $1$3$4;else if ($3 != 0 && $4 == 0) print $1$3$4 ; else if ($3 == 0 && $4 != 0) print $1$3$4}' > ./DZH_results/GC_J2_J3_diff.txt")
#3
os.system("cat LC_pos_new.txt|awk -F '|' '{if ($1~/id/) print $1$6$7 ;else if ($6 != 0 && $7 == 0) print $1$6$7 ; else if ($6 == 0 && $7 != 0) print $1$6$7}' > ./DZH_results/GC_J5_J6_diff.txt")
#4
os.system("cat LC_pos_new.txt|awk -F '|' '{if ($1~/id/) print $1$6$7 ;else if ($6 != 0 && $7 != 0) print $1$6$7 ; else if ($6 != 0 && $7 != 0) print $1$6$7}' > ./DZH_results/GC_J5_J6_both.txt")
#5
os.system("cat LC_pos_new.txt|awk -F '|' '{if ($1~/id/) print $1$3$4;else if ($3 != 0 && $4 != 0) print $1$3$4 ; else if ($3 != 0 && $4 != 0) print $1$3$4}' > ./DZH_results/GC_J2_J3_both.txt")
#6
os.system("cat LC_pos_new.txt|awk -F '|' '{if ($1~/id/) print $1$2$3;else if ($2 != 0 && $3 == 0) print $1$2$3 ; else if ($2 == 0 && $3 != 0) print $1$2$3}' > ./DZH_results/GC_J1_J2_diff.txt")
#7
os.system("cat LC_pos_new.txt|awk -F '|' '{if ($1~/id/) print $1$4$5;else if ($4 != 0 && $5 == 0) print $1$4$5 ; else if ($4 == 0 && $5 != 0) print $1$4$5}' > ./DZH_results/GC_J3_J4_diff.txt")
#8
os.system("cat LC_pos_new.txt|awk -F '|' '{if ($1~/id/) print $1$2;else if ($2 != 0) print $1$2}' > ./DZH_results/GC_J1.txt && "
          "cat LC_pos_new.txt|awk -F '|' '{if ($1~/id/) print $1$3;else if ($3 != 0) print $1$3}' > ./DZH_results/GC_J2.txt &&"
          "cat LC_pos_new.txt|awk -F '|' '{if ($1~/id/) print $1$4;else if ($4 != 0) print $1$4}' > ./DZH_results/GC_J3.txt &&"
          "cat LC_pos_new.txt|awk -F '|' '{if ($1~/id/) print $1$5;else if ($5 != 0) print $1$5}' > ./DZH_results/GC_J4.txt &&"
          "cat LC_pos_new.txt|awk -F '|' '{if ($1~/id/) print $1$6;else if ($6 != 0) print $1$6}' > ./DZH_results/GC_J5.txt &&"
          "cat LC_pos_new.txt|awk -F '|' '{if ($1~/id/) print $1$7;else if ($7 != 0) print $1$7}' > ./DZH_results/GC_J6.txt")
