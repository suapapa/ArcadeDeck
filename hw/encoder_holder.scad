

module hole() {
    translate([0, 0, 2]) cylinder(12, 1.5, 1.5, $fn=10);
}

module hole2() {
    translate([-0.5, -1.1, -5]) cube([1, 2.2, 20]);
}

difference() {
    union() {
        pillar();
        translate([24, 0, 0]) pillar();
        translate([0, -4, 0]) cube([24, 8, 8]);
    }
    translate([(24-13)/2, -7.5, 2]) cube([13, 13, 50]);
    hole();
    translate([24, 0, 0]) hole();
    translate([5.5, 0, 0]) hole2();
    translate([5.5 + 13, 0, 0]) hole2();
}