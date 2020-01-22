set terminal epslatex dashed standalone
cd '/mnt/F46EDB596EDB136A/Results/Experimental/DonneesEncres/ROJER/Bilan'

set output 'rojer_fit_5127.tex'
set encoding iso_8859_15

set style line 80 lt 1 lc rgb "#000000" lw 0.7

set style line 81 lt 0 lw 0.7  # dashed
set style line 81 lt rgb "#000000"   lw 0.7 # grey

#set grid back linestyle 81

set border 15 back linestyle 80

set xtics  nomirror
set ytics nomirror

set log y
set mytics 10    # Makes logscale look good

set style line 1 lt 1 lc rgb "#000000" lw 1.2 pt 6 ps 1.5
set style line 2 lt 2 lc rgb "#000000" lw 1.2 pt 8 ps 1.5
set style line 3 lt 4 lc rgb "#000000" lw 1.2 pt 10 ps 1.5
set style line 4 lt 1 lc rgb "#000000" lw 0.4 pt 12 ps 1.5
set style line 5 lt 4 lc rgb "#000000" lw 0.4 pt 10 ps 1.5
set style line 6 lt 1 lc rgb "#000000" lw 0.4 pt 11 ps 1.5
set style line 7 lt 1 lc rgb "#000000" lw 0.4 pt 12 ps 1.5
set style line 8 lt 1 lc rgb "#000000" lw 0.4 pt 13 ps 1.5
set style line 9 lt 1 lc rgb "#000000" lw 0.4 pt 14 ps 1.5
set style line 10 lt 1 lc rgb "#000000" lw 0.4 pt 15 ps 1.5
set style line 11 lt 1 lc rgb "#000000" lw 0.4 pt 18 ps 1.5
set style line 12 lt 1 lc rgb "#000000" lw 0.4 pt 19 ps 1.5

set xlabel '\Large $t / t_b$'
set ylabel '\Large $D_P / D_0$'

set key bottom left

set yrange[0.1:1.2]
#set xrange[14:65]

plot "5127" using 1:4 title 'Ink C' w p ls 3, \
"Newtonien" using 1:8 title '$1-\delta exp(qt)$' w l ls 2, \
exp((-x*310/(3*5.6))+15.38) title '$exp(-t / 3 \tau_E)$' w l ls 1


quit
