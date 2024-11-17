include <arduino.scad>

zeroDimensions = boardDimensions( ZERO ); // <-------------------- ZERO
bp6aDimensions = boardDimensions( BP6A );



module bp6a_zero_enclosure(){
    
translate([0, 0,0])
    arduino(ZERO);
translate([0, 0,12])
    arduino(BP6A);
    
translate([0, 0,-8])
    color([0.5, 0.5, 0.5, 0.7]){shEnclosure();}

}

module bp6a_zero_enclosureLid(){

translate([-80,100,0])
    color([0.5, 0.5, 0.5, 0.7]){shEnclosureLid();}
}


bp6a_zero_enclosure();
bp6a_zero_enclosureLid();

