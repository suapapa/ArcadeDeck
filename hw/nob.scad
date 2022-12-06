module cap() {
    difference() {
        cylinder(6-0.5, 4, 4, $fn=30);
        translate([0, 0, 1]) difference() {
            cylinder(6, 3+0.1, 3+0.1, $fn=30);
            translate([1.5+0.1, -4, 0]) cube([3, 8, 6]);
        }
        translate([-0.5, -5, 1]) cube([1, 10, 10]);
        rotate([0, 0, 90]) translate([-0.5, -5, 1]) cube([1, 10, 10]);
    }
}

union() {
    difference() {
        cylinder(6.5, 7, 7);
        translate([0, 0, 1.5]) cylinder(8, 6, 6);
    }
    translate([0, 0, 1]) cap();
}