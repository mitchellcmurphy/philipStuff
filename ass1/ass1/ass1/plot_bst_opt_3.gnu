set term png truecolor

set output "bst_graph_opt_3.png"

set xtics ("10K" 0.25, "25K" 1.75, "50K" 3.25, "90K" 4.75,)

set boxwidth 0.50
set style fill solid
set yrange [0:*]
set title "Optimization 3"
set xlabel "Words"
set ylabel "Seconds"

plot 'bst_time_O3.dat' using 1:2:0 with boxes title "Unsorted" lc variable
