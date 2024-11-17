include <arduino.scad>

zeroDimensions = boardDimensions( ZERO ); // <-------------------- ZERO
bp6aDimensions = boardDimensions( BP6A );


//Board mockups
translate([0, 0,8])
arduino();
color([1, 0, 0, 0.5]){
enclosure();}


 translate([-100, 0,0])
    arduino(ZERO);
 translate([-100, 0,12])
    arduino(BP6A);
translate([-100, 0,-8])
color([0.5, 0.5, 0.5, 0.7]){
shEnclosure();}

translate([-100, 0,50])
color([0.5, 0.5, 0.5, 0.7]){
enclosureLid(ZERO);}




/*

translate( [unoDimensions[0] + 50, 0, 0] )
	arduino(DUE);

translate( [-(unoDimensions[0] + 50), 0, 0] )
	arduino(LEONARDO);
    
translate([-(unoDimensions[0] + 150), 0,0]) // <-------------------- [x,y,z] position, x = unoDimensions[0] which is the width of PCB board
    arduino(BP6A);

translate([0, 0, -75]) {
	enclosure();

	translate( [unoDimensions[0] + 50, 0, 0] )
		bumper(ZERO);

	translate( [-(unoDimensions[0] + 50), 0, 0] ) union() {
		standoffs(LEONARDO, mountType=PIN);
		boardShape(LEONARDO, offset = 3);
	}
}

translate([0, 0, 75]) {
	enclosureLid();
}


translate([lbl_x_offset, lbl_y_offset, 0.5]) {
            rotate([180, 0, 90]) {
                linear_extrude(0.6) {
                    text("tCam-Mini", font="Helvetica", size=lbl_size);
                }
            }
        }
*/