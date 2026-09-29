set periods {20 10 5 2 1}

puts [format "%-15s %-15s" "Period" "Frequency"]
puts [format "%-15s %-15s" "------" "---------"]

foreach t $periods {
    set frequency [expr {1000.0 / $t}]
    puts [format "%-15s %-15s" "$t ns" "$frequency MHz"]
}
