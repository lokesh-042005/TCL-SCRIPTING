set frequencies {50 100 200 500 1000}

puts [format "%-15s %-15s" "Frequency" "Period"]

foreach f $frequencies {
    set period [expr {1000.0 / $f}]
    puts [format "%-15s %-15s" "$f MHz" "$period ns"]
}
