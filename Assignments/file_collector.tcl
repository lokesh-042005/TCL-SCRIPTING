set all_files {
	counter.v
	counter_tb.v
	uart.v
	uart_tb.v
	fifo.v
	README.txt
	counter.sdc
}

set rtl_files {}
foreach f $all_files {
	if {[string match "*.v" $f]} {
		lappend rtl_files $f
	}
}

puts "RTL FILES"
foreach f $rtl_files {
	puts $f
}

set count [llength $rtl_files]
puts ""
puts "Total RTL files: $count"
