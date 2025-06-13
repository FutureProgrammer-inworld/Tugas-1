NR > 1{
     total += $3
     count++
}
END {
     print "Rata-rata kelembapan:", total / count
}
