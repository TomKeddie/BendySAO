height=10;
diameter=45;

sao_height=4.6;
sao_width=22;
sao_depth=8;

conn_height=8;
conn_width=16;
conn_depth=sao_depth-2;

pin_height=3;
pin_width=8.5;
pin_depth=sao_depth;

wiring_height=2*diameter/3;
wiring_width=12;
wiring_depth=conn_depth;


$fn=120;

difference() {
    cylinder(h=height, d=diameter, center=true);
    
    // sao
    translate([0,0,-sao_depth+height]) cube([sao_height, sao_width, sao_depth], center=true);
    translate([sao_height,0,-sao_depth+height]) cube([conn_height, conn_width, conn_depth], center=true);
    translate([-sao_height/2,0,-sao_depth+height]) cube([pin_height, pin_width, pin_depth], center=true);
    translate([sao_height+wiring_depth+conn_depth,0,-sao_depth+height]) cube([wiring_height, wiring_width, wiring_depth], center=true);
}