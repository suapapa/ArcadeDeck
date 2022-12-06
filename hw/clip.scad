module clip(h){
    difference() {
        rotate([0, 0, 90]) difference() {
            union() {
                cylinder(h, 1.5-0.1, 1.5-0.1, $fn=20);
                translate([0, 0, h]) cylinder(1, 1.5-0.1, 1.5+0.2, $fn=20);
                translate([0, 0, h+1]) cylinder(1, 1.5+0.2, 1, $fn=20);
            }
            translate([-0.4, -2, h-1]) cube([0.8, 4, 8]);
        }
        translate([1.3, -3, -1]) cube([2, 6, 10]);
        translate([-3.3, -3, -1]) cube([2, 6, 10]);
    }
}

/*
union() {
    translate([0, 0, 3]) clip(1.5);
    translate([-1.3, -2, 0]) cube([3-0.4,4,3]);
    rotate([180, 0, 0]) clip(3);
}
*/

union() {
    translate([0, 4.066, 3]) clip(1.5);
    translate([-1.3, -2, 0]) cube([3-0.4,4+4.066,3]);
    rotate([180, 0, 0]) clip(3);
}