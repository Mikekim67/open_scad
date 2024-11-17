include <arduino.scad>

zeroDimensions = boardDimensions( ZERO ); // <-------------------- ZERO
bp6aDimensions = boardDimensions( BP6A );



module bp6a_zero_enclosure(){
    
translate([0, 0,-0])
    color([0.5, 0.5, 0.5, 0.7]){shEnclosure();}

}

bp6a_zero_enclosure();
