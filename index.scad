
// house module generator

module house(roof="flat",paint=[1,0,0]) {
        color(paint)
        if(roof=="flat") { 
                translate([0,-1,0]) cube(); 
        }
        else if(roof=="pitched") {
                rotate([90,0,0]) linear_extrude(height=1)
                polygon(points=[[0,0],[0,1],[0.5,1.5],[1,1],[1,0]]); 
        }
        else if(roof=="domical") {
                translate([0,-1,0]){
                translate([0.5,0.5,1]) sphere(r=0.5,$fn=20); cube(); }
        } 
}


