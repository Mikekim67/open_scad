include <arduino.scad>

zeroDimensions = boardDimensions( ZERO );
bp6aDimensions = boardDimensions( BP6A );


//Board mockups
//translate([0, 0,0])
    //arduino(ZERO);
 //translate([0, 0,12])
    //arduino(BP6A);
    
translate([0, 0,-70])
    shEnclosure();
translate([0, 0,70])
    shEnclosureLid();
    
 translate([0, 0,0])
    arduino(ZERO);
 translate([0, 0,12]){
    arduino(BP6A);
    arduino(ELECTRODE);
     }   
    

 translate([-100, 0,0])
    arduino(ZERO);
 translate([-100, 0,12]){
    arduino(BP6A);
    //arduino(ELECTRODE);
     }
    
translate([-100, 0,-6])
color([0.5, 0.5, 0.5, 0.8]){shEnclosure();}

translate([-100, 0,50])
color([0.5, 0.5, 0.5, 0.8]){shEnclosureLid();}

