set terminal epslatex monochrome blacktext size 7.5cm,5.7cm font ",10"
set output "figures/test.tex"
#set termoption dash

set style line 1 lt 1 lc 'black' lw 6 pt 1 ps 2 # Black solid line
set style line 2 lt 2 lc 'black' lw 6 pt 2 ps 2 # Black dash line
set style line 3 lt 4 lc 'black' lw 3 pt 4 ps 2 # Black point line

# Displays the function as lines as opposed to points or linespoints
set style function lines
set border 3
set xtics nomirror
set ytics nomirror


# Key settings
set nokey
#set key width -1
#set key height 0.5

# Axis settings
set xrange [0:0.4]
set yrange [0:1]

#set grid xtics
#set grid ytics

set samples 2000

plot 0.5+0.5*sqrt(1-4*x) ls 1 notitle "$0.5-0.5\\sqrt{(1-4h)}$" , 0.5-0.5*sqrt(1-4*x) ls 2 notitle "$0.5-0.5\\sqrt{(1-4h)}$"

