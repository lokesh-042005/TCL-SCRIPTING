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

set rtl_files {}
set tb_files  {}
set sdc_files {}

foreach f $all_files {
    if {[string match "*_tb.v" $f]} {
        lappend tb_files $f
    } elseif {[string match "*.v" $f]} {
        lappend rtl_files $f
    } elseif {[string match "*.sdc" $f]} {
        lappend sdc_files $f
    }
}

puts "RTL FILES (design only)"
foreach f $rtl_files { puts "  $f" }
puts "Total: [llength $rtl_files]\n"

puts "TESTBENCH FILES"
foreach f $tb_files { puts "  $f" }
puts "Total: [llength $tb_files]\n"

puts "SDC FILES"
foreach f $sdc_files { puts "  $f" }
puts "Total: [llength $sdc_files]"
