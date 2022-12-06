module pillar() {
    union() {
        hull(){
            cylinder(2, 4, 4);
            translate([0, 32.5, 0]) cylinder(2, 4, 4);
        }
        translate([3, 32.5/2-10, 0]) cube([2, 20, 3.5+2]);
    }
}

module hole() {
    translate([0, 0, -1]) cylinder(12, 1.5, 1.5, $fn=10);
    translate([0, 32.5, -1]) cylinder(12, 1.5, 1.5, $fn=10);
}


difference() {
    pillar();
    hole();
}