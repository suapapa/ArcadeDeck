module pillar() {
    difference() {
        union() {
            hull(){
                cylinder(30, 3, 3);
                translate([-2, 8, 0]) cube([4, 7, 30]);
            }
            translate([-2, 8, 0]) cube([4, 7, 32]);
        }
        translate([0, 0, -1]) cylinder(32, 1.5, 1.5, $fn=10);
    }
}

pillar();