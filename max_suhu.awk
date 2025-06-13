NR > 1 {
     if ($2 > max)
        max = $2
}
END {
      print "Suhu maximum:", max
}
