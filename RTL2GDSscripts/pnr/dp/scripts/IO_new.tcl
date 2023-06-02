set BYPASS_CONSTRAINTS 0
set no_io_power_EW 2
set no_core_power_EW 2
set no_io_power_NS 2
set no_core_power_NS 2

set no_io_ground_EW 2
set no_core_ground_EW 2
set no_io_ground_NS 2
set no_core_ground_NS 2


set side 0
set order_side_1 [expr {2 + ($no_io_power_EW + $no_core_power_EW)/2 + ($no_io_ground_EW + $no_core_ground_EW)/2}]
set order_side_2 [expr {2 + ($no_io_power_NS + $no_core_power_NS)/2 + ($no_io_ground_NS + $no_core_ground_NS)/2}]
set order_side_3 [expr {2 + ($no_io_power_EW + $no_core_power_EW)/2 + ($no_io_ground_EW + $no_core_ground_EW)/2}]
set order_side_4 [expr {2 + ($no_io_power_NS + $no_core_power_NS)/2 + ($no_io_ground_EW + $no_core_ground_EW)/2}]

set power_order_side_1 2
set power_order_side_2 2
set power_order_side_3 2
set power_order_side_4 2

for {set i 0} {$i < $no_core_power_EW} {incr i} {
  
  if {$i < [expr {$no_core_power_EW / 2}]} {
    create_cell vdd_W_${i} VDD_EW
    if {!$BYPASS_CONSTRAINTS} {

    }

    incr power_order_side_1

    create_cell vdd_E_${i} VDD_EW
    if {!$BYPASS_CONSTRAINTS} {

    }

    incr power_order_side_3

  } else {
    create_cell vdd_W_${i} VDD_EW
    if {!$BYPASS_CONSTRAINTS} {

    }

    incr order_side_1

    create_cell vdd_E_${i} VDD_EW
    if {!$BYPASS_CONSTRAINTS} {

    }

    incr order_side_3
  }  
}

for {set i 0} {$i < $no_io_power_EW} {incr i} { 
  
  if {$i < [expr {$no_io_power_EW / 2}]} {
    create_cell iovdd_W_${i} IOVDD_EW
    if {!$BYPASS_CONSTRAINTS} {

    }

    incr power_order_side_1
    
    create_cell iovdd_E_${i} IOVDD_EW
    if {!$BYPASS_CONSTRAINTS} {

    }

    incr power_order_side_3
  } else {
    create_cell iovdd_W_${i} IOVDD_EW
    if {!$BYPASS_CONSTRAINTS} {

    }

    incr order_side_1
    
    create_cell iovdd_E_${i} IOVDD_EW
    if {!$BYPASS_CONSTRAINTS} {

    }

    incr order_side_3
  }  
}
   
for {set i 0} {$i < $no_core_power_NS} {incr i} {
  
  if {$i < [expr {$no_core_power_NS / 2}]} {
    create_cell vdd_N_${i} VDD_NS
    if {!$BYPASS_CONSTRAINTS} {

    }

    incr power_order_side_2

    create_cell vdd_S_${i} VDD_NS
    if {!$BYPASS_CONSTRAINTS} {

    }

    incr power_order_side_4

  } else {
    create_cell vdd_N_${i} VDD_NS
    if {!$BYPASS_CONSTRAINTS} {

    }

    incr order_side_2

    create_cell vdd_S_${i} VDD_NS
    if {!$BYPASS_CONSTRAINTS} {

    }

    incr order_side_4
  }  
}

for {set i 0} {$i < $no_io_power_NS} {incr i} { 
  
  if {$i < [expr {$no_io_power_NS / 2}]} {
    create_cell iovdd_N_${i} IOVDD_NS
    if {!$BYPASS_CONSTRAINTS} {

    }

    incr power_order_side_2
    
    create_cell iovdd_S_${i} IOVDD_NS
    if {!$BYPASS_CONSTRAINTS} {

    }

    incr power_order_side_4
  } else {
    create_cell iovdd_N_${i} IOVDD_NS
    if {!$BYPASS_CONSTRAINTS} {

    }

    incr order_side_2
    
    create_cell iovdd_S_${i} IOVDD_NS
    if {!$BYPASS_CONSTRAINTS} {

    }

    incr order_side_4
  }  
}
  


for {set i 0} {$i < $no_io_ground_EW} {incr i} { 
  
  if {$i < [expr {$no_io_ground_EW / 2}]} {
    create_cell iovss_W_${i} IOVSS_EW
    if {!$BYPASS_CONSTRAINTS} {

    }

    incr power_order_side_1
    
    create_cell iovss_E_${i} IOVSS_EW
    if {!$BYPASS_CONSTRAINTS} {

    }

    incr power_order_side_3
  } else {
    create_cell iovss_W_${i} IOVSS_EW
    if {!$BYPASS_CONSTRAINTS} {

    }

    incr order_side_1
    
    create_cell iovss_E_${i} IOVSS_EW
    if {!$BYPASS_CONSTRAINTS} {

    }

    incr order_side_3
  }  
}
   
for {set i 0} {$i < $no_core_ground_EW} {incr i} {
  
  if {$i < [expr {$no_core_ground_EW / 2}]} {
    create_cell vss_W_${i} VSS_EW
    if {!$BYPASS_CONSTRAINTS} {

    }

    incr power_order_side_1

    create_cell vss_E_${i} VSS_EW
    if {!$BYPASS_CONSTRAINTS} {

    }

    incr power_order_side_3
  } else {
    create_cell vss_W_${i} VSS_EW
    if {!$BYPASS_CONSTRAINTS} {

    }

    incr order_side_1

    create_cell vss_E_${i} VSS_EW
    if {!$BYPASS_CONSTRAINTS} {

    }

    incr order_side_3
  }  
}
   
for {set i 0} {$i < $no_io_ground_NS} {incr i} { 
  
  if {$i < [expr {$no_io_ground_NS / 2}]} {
    create_cell iovss_N_${i} IOVSS_NS
    if {!$BYPASS_CONSTRAINTS} {

    }

    incr power_order_side_2
    
    create_cell iovss_S_${i} IOVSS_NS
    if {!$BYPASS_CONSTRAINTS} {

    }

    incr power_order_side_4
  } else {
    create_cell iovss_N_${i} IOVSS_NS
    if {!$BYPASS_CONSTRAINTS} {

    }

    incr order_side_2
    
    create_cell iovss_S_${i} IOVSS_NS
    if {!$BYPASS_CONSTRAINTS} {

    }

    incr order_side_4
  }  
}
 
for {set i 0} {$i < $no_core_ground_NS} {incr i} {
  
  if {$i < [expr {$no_core_ground_NS / 2}]} {
    create_cell vss_N_${i} VSS_NS
    if {!$BYPASS_CONSTRAINTS} {

    }

    incr power_order_side_2

    create_cell vss_S_${i} VSS_NS
    if {!$BYPASS_CONSTRAINTS} {

    }

    incr power_order_side_4
  } else {
    create_cell vss_N_${i} VSS_NS
    if {!$BYPASS_CONSTRAINTS} {
    }

    incr order_side_2

    create_cell vss_S_${i} VSS_NS
    if {!$BYPASS_CONSTRAINTS} {
    }

    incr order_side_4
  }  
}


create_cell filler_iovdd_W_E IOVDD_EW
if {!$BYPASS_CONSTRAINTS} {
}

create_cell filler_iovdd_N_E IOVDD_NS
if {!$BYPASS_CONSTRAINTS} {
}

create_cell filler_iovdd_E_E IOVSS_EW
if {!$BYPASS_CONSTRAINTS} {
}

create_cell filler_iovdd_S_E IOVSS_NS
if {!$BYPASS_CONSTRAINTS} {
}

create_cell filler_iovdd_W_B IOVDD_EW
if {!$BYPASS_CONSTRAINTS} {
}

create_cell filler_iovdd_N_B IOVDD_NS
if {!$BYPASS_CONSTRAINTS} {
}

create_cell filler_iovdd_E_B IOVSS_EW
if {!$BYPASS_CONSTRAINTS} {
}

create_cell filler_iovdd_S_B IOVSS_NS
if {!$BYPASS_CONSTRAINTS} {
}

set max_pad [lindex [lsort -integer -decreasing -unique [list \
                         $order_side_1 $order_side_2 \
                         $order_side_3 $order_side_4]] 0]

for {set i 0} {$i < [expr {$max_pad - $order_side_1}]} {incr i} {
  create_cell filler_iovdd_W_${i} IOVDD_EW
  if {!$BYPASS_CONSTRAINTS} {
  }
}

for {set i 0} {$i < [expr {$max_pad - $order_side_2}]} {incr i} {
  create_cell filler_iovdd_N_${i} IOVDD_NS
  if {!$BYPASS_CONSTRAINTS} {
  }
}

for {set i 0} {$i < [expr {$max_pad - $order_side_3}]} {incr i} {
  create_cell filler_iovdd_E_${i} IOVDD_EW
  if {!$BYPASS_CONSTRAINTS} {
  }
}

for {set i 0} {$i < [expr {$max_pad - $order_side_4}]} {incr i} {
  create_cell filler_iovdd_S_${i} IOVDD_NS
  if {!$BYPASS_CONSTRAINTS} {
  }
}
             
set south_cells [get_cells *_S_*]
set north_cells [get_cells *_N_*]
set east_cells [get_cells *_E_*]
set west_cells [get_cells *_W_*]

#### setting the orientation for each side pad cells ####
set_attribute -objects [get_lib_cells -of [get_cells *_W_*]] -name reference_orientation -value R90
set_attribute -objects [get_lib_cells -of [get_cells *_E_*]] -name reference_orientation -value R90
set_attribute -objects [get_lib_cells -of [get_cells *_N_*]] -name reference_orientation -value R0
set_attribute -objects [get_lib_cells -of [get_cells *_S_*]] -name reference_orientation -value R0

### creating the IO ring #### 
create_io_ring -name io_ring2
add_to_io_guide io_ring2.bottom [get_cells $south_cells ]
add_to_io_guide io_ring2.top [get_cells $north_cells]
add_to_io_guide io_ring2.left [get_cells $west_cells]
add_to_io_guide io_ring2.right [get_cells $east_cells]

### placing the IO pads #### 
place_io

#### creating and placing the corner cells #### 
create_cell {cornerll cornerlr cornerul cornerur} CORNER
create_io_corner_cell -cell cornerll {io_ring2.left io_ring2.bottom}
create_io_corner_cell -cell cornerlr {io_ring2.bottom io_ring2.right}
create_io_corner_cell -cell cornerur {io_ring2.right io_ring2.top}
create_io_corner_cell -cell cornerul {io_ring2.top io_ring2.left}

### placing the ports #####
place_pins -self
