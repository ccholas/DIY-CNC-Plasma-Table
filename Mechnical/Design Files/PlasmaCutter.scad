$fn=100;
carriageHeight = -20;
use <timing_belts.scad>;


module rail_motor_mount(){
mount_bracket();
translate([3,0,0]) motor_mount();
}
module bracket(){
translate([24,11,0]) cube([2,14,36.4], true);
translate([11.3,-11,22.2]) cube([11.5,60,4], true);
translate([11.3,-11,-22.2]) cube([11.5,60,4], true);
translate([12.3,-10,-19.4]) cube([5,60,2], true);
translate([12.3,-10,19.4]) cube([5,60,2], true);
translate([4.2,-11,-22.2]) cube([6.5,60,2], true);
translate([4.2,-11,22.2]) cube([6.5,60,2], true);
translate([7,19,22.2]) rotate([90,60,0]) cylinder(h=60, d=4, $fn=3);
translate([7,19,-22.2]) rotate([90,60,0]) cylinder(h=60, d=4, $fn=3);

//translate([0,0,0]) cylinder(h=5.90, d=10);
//translate([0,0,6]) cylinder(h=24.50, d=5.9);
}


module bracket2(){
    difference(){
    union(){
    translate([10,29.5,0]) cube([20,23.5,50.4], true);
    
translate([1,12,0]) cube([2,14,39.4], true);
translate([13.3,-11,22.2]) cube([11.5,60,4], true);
translate([13.3,-11,-22.2]) cube([11.5,60,4], true);
translate([12.3,-10,-19.4]) cube([5,60,2], true);
translate([12.3,-10,19.4]) cube([5,60,2], true);
translate([4.2,-11,-22.2]) cube([6.5,60,2], true);
translate([4.2,-11,22.2]) cube([6.5,60,2], true);
translate([7,19,22.2]) rotate([90,60,0]) cylinder(h=60, d=4, $fn=3);
translate([7,19,-22.2]) rotate([90,60,0]) cylinder(h=60, d=4, $fn=3);
}
translate([12,-14,6]) cylinder(h=24.50, d=4.2);
translate([12,-33,6]) cylinder(h=24.50, d=4.2);
translate([12,-14,-26]) cylinder(h=24.50, d=4.2);
translate([12,-33,-26]) cylinder(h=24.50, d=4.2);
translate([-8.3,25,0]) rotate([90,0,90]) cylinder(h=20, d=3.25);
    }
}

module bearingmount2(){
    difference(){
        translate([-8.2,25,0]) rotate([90,0,90]) cylinder(h=8.25, d=7.9);
        translate([-8.3,25,0]) rotate([90,0,90]) cylinder(h=20, d=3.25);
    }
}
module mount_bracket(){
    difference(){
    bracket();
    translate([12,-14,6]) cylinder(h=24.50, d=5);
    translate([12,-33,6]) cylinder(h=24.50, d=5);
    translate([12,-14,-26]) cylinder(h=24.50, d=5);
    translate([12,-33,-26]) cylinder(h=24.50, d=5);
    //rotate([0,90,90]) translate([22,-50,-28]) switchholes();
}
}


module switchmount(){
difference(){
translate([-18.5,31.9,35.3]) cube([20,6.2,10], true);
translate([-18,41,35.2]) rotate([90,0,0]) cylinder(h=20, d=2.45);
translate([-26,41,35.2]) rotate([90,0,0]) cylinder(h=20, d=2.45);
}
}

module switchholes(){
    translate([-18,41,35.2]) rotate([90,0,0]) cylinder(h=20, d=2);
    translate([-26,41,35.2]) rotate([90,0,0]) cylinder(h=20, d=2); 
}

module motor_mount(){
difference(){
    translate([12,45.2,0]) cube([20,55,48], true);
    color("grey") scale([1.05, 1.05, 1.05]) rotate([90,180,90]) translate([-20,10,-27.8]) import("stepper_motor_nema17_47mm_height.stl", convexity=3);
    translate([2,26.5,-15]) rotate([90,0,90]) cylinder(h=20, d=5);
    translate([2,57.5,-15]) rotate([90,0,90]) cylinder(h=20, d=5);
    translate([2,57.5,15]) rotate([90,0,90]) cylinder(h=20, d=5);
    translate([2,26.5,15]) rotate([90,0,90]) cylinder(h=20, d=5);
    
}
}

module motor_mount2(){
difference(){
    translate([12,45.2,0]) cube([20,55,48], true);
    color("grey") scale([1.05, 1.05, 1.05]) rotate([90,180,90]) translate([-20,10,-27.8]) import("stepper_motor_nema17_47mm_height.stl", convexity=3);
    translate([2,26.5,-15]) rotate([90,0,90]) cylinder(h=20, d=5);
    translate([2,57.5,-15]) rotate([90,0,90]) cylinder(h=20, d=5);
    translate([2,57.5,15]) rotate([90,0,90]) cylinder(h=20, d=5);
    translate([2,26.5,15]) rotate([90,0,90]) cylinder(h=20, d=5);
    
}

//translate([-3,0,0]) mount_bracket();
//color("grey") translate([14,40.1,0.2]) switch_mount();
}

module bushing(){
difference(){
union(){
translate([0,0,-4]) cylinder(h=4, d=14.60);
translate([0,0,0]) cylinder(h=6.4, d=8.20);
}
translate([0,0,-5]) cylinder(h=15, d=6.30);
}
}
module idlerpulleycover(){
difference(){
union(){
difference(){
translate([-41.5,-1,-10]) rotate([90,180,90]) cylinder(h=12, d=40);
translate([-42,-1,-10]) rotate([90,180,90]) cylinder(h=13, d=36);
}

translate([-43.5,-1,-10]) rotate([90,180,90]) cylinder(h=2, d=40);
}

translate([-50,30,-10]) cube([50,50,50], true);
translate([-62.5,-4,-10]) rotate([90,180,90]) cylinder(h=60, d=5.2);
}
}


module railmountspacer(){
    difference(){
translate([0,0,0]) cube([35,35,30], true);
translate([0,0,-25]) cylinder(h=60, d=8.9);
}
}





module switch(){
translate([0,-7,0]) rotate([0,0,-10]) cube([19.80,.25,6.3], true);
translate([0,0,0]) cube([1.5,10,6.3], true);
difference(){
translate([0,0,0]) cube([19.80,10,6.3], true);
translate([4.75,2,-4]) cylinder(h=8, d=2.5);
translate([-4.75,2,-4]) cylinder(h=8, d=2.5);
}
}

module switch_mount(){
    difference(){
translate([-3,-30,32.2]) cube([6,12,22], true);
rotate([90,0,90]) translate([-28,25.8,-10]) cylinder(h=15, d=2.0);
rotate([90,0,90]) translate([-28,35.2,-10]) cylinder(h=15, d=2.0);
}
}

module idlerpully(){
    translate([-3,0,0]) mount_bracket();
    color("grey") translate([14,40.1,0.2]) switch_mount();
    translate([30,0,0]) bearingmount2();
    translate([12,29.5,0]) cube([20,23.5,50.4], true);
    
   
    
 //rotate([0,180,0]) bracket2();
//    difference(){
//color("grey") translate([5,-4.9,-20]) switch_mount();
//        translate([0,-33.5,19.2]) cube([5,20,4], true);
//    }
}



module belt_tiedown(){
difference(){
translate([0,0,0]) cube([23,23,8.5], true);
translate([2,0,3.5]) cube([20,6.15,2], true);
translate([-6.5,0,-1.3]) cube([3,6.15,9], true);
translate([2,5,-10]) cylinder(h=20, d=5);
}

translate([-0.5,0,3]) cube([1,6.15,1], true);
translate([4.5,0,3]) cube([1,6.15,1], true);
translate([9,0,3]) cube([1,6.15,1], true);
}


module belt_tiedown2(){
difference(){
translate([0,5,0]) cube([20,25,10], true);
    translate([0,-0.5,0]) cube([22,2,7.5], true);
//translate([-6.5,0,-1.3]) cube([3,6.15,9], true);
    translate([2,5,-12]) cylinder(h=25, d=5);
    translate([9.8,5,0]) cube([2,10,6.5], true);
    translate([0,10.5,0]) cube([22,2,7.5], true);
    rotate([90,0,90]) translate([-3.5,0,2]) cylinder(h=10, d=2.8);
    rotate([0,0,45]) translate([5,2,-5.2]) cylinder(h=4, d=12, $fn=4);
rotate([90,0,90]) translate([13.5,0,2]) cylinder(h=10, d=2.8);
}

translate([8.5,8,0]) cube([2,1,6.5], true);
translate([8.5,5,0]) cube([2,1,6.5], true);
translate([8.5,2,0]) cube([2,1,6.5], true);
}



module belt_tie_cap(){
difference(){
translate([11.5,5,0]) cube([3,25,10], true);
 rotate([90,0,90]) translate([-3.5,0,5]) cylinder(h=10, d=3.2);
rotate([90,0,90]) translate([13.5,0,5]) cylinder(h=10, d=3.2);
}
}
module motormount(){
difference(){
    translate([20,41.8,0]) cube([3,47,48], true);
    color("grey") scale([1.05, 1.05, 1.05]) rotate([90,180,90]) translate([-20,10,-27.8]) import("stepper_motor_nema17_47mm_height.stl", convexity=3);
    translate([2,26.5,-15]) rotate([90,0,90]) cylinder(h=20, d=5);
    translate([2,57.5,-15]) rotate([90,0,90]) cylinder(h=20, d=5);
    translate([2,57.5,15]) rotate([90,0,90]) cylinder(h=20, d=5);
    translate([2,26.5,15]) rotate([90,0,90]) cylinder(h=20, d=5);
    
}
}

module motor_plasmagantry(){
    difference(){
    translate([40,-4,5]) cube([25,122,4], true);
    //translate([32.5,-15,0]) cylinder(h=10, d=5);
    translate([32.5,0,0]) cylinder(h=10, d=5);
    //translate([32.5,15,0]) cylinder(h=10, d=5);
    translate([32.5,50,0]) cylinder(h=10, d=5);
    //translate([32.5,-50,0]) cylinder(h=10, d=5);
}

difference(){
translate([-8,37,5]) cube([74,40,4], true);
translate([-32.5,50,0]) cylinder(h=10, d=5);
}

difference(){
translate([-8,-45,5]) cube([74,40,4], true);
translate([-32.5,-50,0]) cylinder(h=10, d=5);
}

translate([13.5,-78,-20]) motormount();
translate([25,-61.5,-18.5]) cube([40,4,51], true);
translate([9,5,0]) bearingmount();
translate([40,-3,-75]) switchmount();
translate([22,29,-15]) cube([21,6,44], true);
translate([22,36,-15]) cube([6,10,44], true);

translate([-82.5,-9,-297]) rotate([270,180,90]) y_chainTerminModule();
}


module bearingmount(){
    
    difference(){
rotate([0,90,0]) translate([10,10,25]) cylinder(h=4, d=24);
    
rotate([0,90,0]) translate([10,10,23]) cylinder(h=8, d=3);
    }
    
    difference(){
rotate([0,90,0]) translate([10,10,37]) cylinder(h=4, d=24);
        rotate([0,90,0]) translate([10,10,36]) cylinder(h=8, d=3);
    }

difference(){
translate([39,10,-3]) cube([4,24,17], true);
    rotate([0,90,0]) translate([10,10,36]) cylinder(h=8, d=3);
}

difference(){
translate([27,10,-3]) cube([4,24,17], true);
    rotate([0,90,0]) translate([10,10,23]) cylinder(h=8, d=3);
}
//translate([33,23,-3]) cube([16,2,12], true);
//translate([33,-3,-3]) cube([16,2,12], true);
}
module bearing_plasmagantry(){
    difference(){
    translate([38,-4,5]) cube([20,122,4], true);
    //translate([32.5,-15,0]) cylinder(h=10, d=5);
    //translate([32.5,0,0]) cylinder(h=10, d=5);
    //translate([32.5,15,0]) cylinder(h=10, d=5);
    translate([32.5,50,0]) cylinder(h=10, d=5);
    translate([32.5,-50,0]) cylinder(h=10, d=5);
}

difference(){
translate([-8,37,5]) cube([74,40,4], true);
translate([-32.5,50,0]) cylinder(h=10, d=5);
}

difference(){
translate([-8,-45,5]) cube([74,40,4], true);
translate([-32.5,-50,0]) cylinder(h=10, d=5);
}

//translate([13.5,-78,-20]) motormount();
//translate([25,-61.5,-18.5]) cube([40,4,51], true);
translate([9,5,0]) bearingmount();
translate([9,-45,0]) bearingmount();
translate([40,-64,-75]) switchmount();
translate([22,-32,-15]) cube([21,6,44], true);
translate([22,-36,-15]) cube([6,10,44], true);

}
module gantry_top(){
rotate([270,0,270]) translate([-62,-19.5,0]) belt_tiedown2();
rotate([90,0,90]) translate([-62,8.5,0]) belt_tiedown2();
rotate([0,180,90]) translate([6,5,-46]) switch_mount();

difference(){
rotate([270,270,180]) translate([-1,-112,0]) motor_mount2();
translate([49.4,25,0]) cylinder(h=40, d=3);
    translate([49.4,-25,0]) cylinder(h=40, d=3);
}

difference(){
translate([49.4,-35,11]) cube([20,26,20], true);
scale([1.05,1.05,1.05]) rotate([0,90,0]) translate([-20,-32.5,-110]) slide_rod();
    translate([49.4,-25,0]) cylinder(h=40, d=3); 
translate([49.4,-45,0]) cylinder(h=40, d=3);
}

difference(){
translate([49.4,35,11]) cube([20,26,20], true);
scale([1.05,1.05,1.05]) rotate([0,90,0]) translate([carriageHeight,32.5,-110]) slide_rod();
    translate([49.4,25,0]) cylinder(h=40, d=3); 
translate([49.4,45,0]) cylinder(h=40, d=3);
}

difference(){
color("grey") translate([6,0,1.9]) cube([70,110,2], true);
color("blue") rotate([0,0,90]) translate([0,-8.5,-20]) cylinder(h=40, d=38);
color("blue") rotate([0,0,90]) translate([25,-32,-20]) cylinder(h=40, d=5);
color("blue") rotate([0,0,90]) translate([-25,-32,-20]) cylinder(h=40, d=5);
color("blue") rotate([0,0,90]) translate([25,18,-20]) cylinder(h=40, d=5);
color("blue") rotate([0,0,90]) translate([-25,18,-20]) cylinder(h=40, d=5);
}

translate([-15,53,6]) cube([20,4,6], true);
translate([-15,-53,6]) cube([20,4,6], true);
translate([22.5,53,6]) cube([35,4,6], true);
translate([22.5,-53,6]) cube([35,4,6], true);
translate([37,42,6]) cube([6,20,6], true);
translate([37,-42,6]) cube([6,20,6], true);
translate([37,0,6]) cube([6,40,6], true);
}





module gantry_bottom(){
    color("orange") rotate([0,90,90]) translate([-21,55,0]) bearingmount2();
    translate([-80,0,0]) cylinder(h=20, d=25);
   
    
    
    rotate([0,0,270]) translate([6,-28,-16]) switch_mount(); 
difference(){
translate([-59.5,0,2]) cube([60,110,2], true);
translate([-55.5,-20,0]) cylinder(h=10, d=5);
translate([-55.5,20,0]) cylinder(h=10, d=5);
translate([-35,-20,0]) cylinder(h=10, d=5);
translate([-35,20,0]) cylinder(h=10, d=5);
}


difference(){
translate([-84,35,11]) cube([20,30,20], true);
rotate([0,90,0]) scale([1.05,1.05,1.05]) translate([carriageHeight,32.5,-84]) slide_rod();
    translate([-84,25,0]) cylinder(h=40, d=3);
    translate([-84,45,0]) cylinder(h=40, d=3);
}

difference(){
translate([-84,-35,11]) cube([20,30,20], true);
scale([1.05,1.05,1.05]) rotate([0,90,0]) translate([carriageHeight,-32.5,-84]) slide_rod();
    translate([-84,-25,0]) cylinder(h=40, d=3); 
translate([-84,-45,0]) cylinder(h=40, d=3);
}




//carriage_top();
//carriage_bottom();

}

module rod_endholder(){
difference(){
translate([-110,-35,24]) cube([20,30,8], true);
rotate([0,90,0]) translate([carriageHeight,-34,-110]) slide_rod();
    translate([0,70,0]) rod_endholder2();
//translate([-110,25,0]) cylinder(h=40, d=3);
translate([-110,-25,0]) cylinder(h=40, d=3);
//translate([-110,45,0]) cylinder(h=40, d=3);
translate([-110,-45,0]) cylinder(h=40, d=3);
}
}

module rod_endholder2(){
difference(){
translate([-110,-35,24]) cube([20,30,8], true);
rotate([0,90,0]) translate([carriageHeight,-36,-110]) slide_rod();
    //translate([-110,25,0]) cylinder(h=40, d=3);
translate([-110,-25,0]) cylinder(h=40, d=3);
//translate([-110,45,0]) cylinder(h=40, d=3);
translate([-110,-45,0]) cylinder(h=40, d=3);
}
    

}

module slide_bearing(){
    difference(){
    color("grey") translate([0,0,0]) cylinder(h=24, d=15);
    color("grey") translate([0,0,-0.5]) cylinder(h=25, d=8.25);   
    } 
}

module slide_rod(){
    color("grey") translate([0,0,-0.5]) cylinder(h=144, d=8.25);    
}



module carriage_top(){
difference(){
translate([-78,-0,16]) cube([30,96,10], true);
rotate([0,90,0]) scale([1.05,1.05,1.05]) translate([carriageHeight,32.5,-86.25]) slide_bearing();
rotate([0,90,0]) scale([1.05,1.05,1.05]) translate([carriageHeight,-32.5,-86.25]) slide_bearing();
rotate([0,90,0]) translate([-21,34,-110]) cylinder(h=200, d=10);
rotate([0,90,0]) translate([-21,-34,-110]) cylinder(h=200, d=10);
    color("orange") rotate([0,90,0]) translate([-14.5,-12,-110]) cylinder(h=60, d=3); 
color("orange") rotate([0,90,0]) translate([-14.5,-23,-110]) cylinder(h=60, d=3); 
    
}
}

module carriage_bottom(){

difference(){
    translate([-78,0,33]) cube([30,96,4], true);
        color("orange") rotate([0,90,0]) translate([-31.5,-12,-110]) cylinder(h=60, d=3); 
    color("orange") rotate([0,90,0]) translate([-31.5,-23,-110]) cylinder(h=60, d=3); 
    }
    
difference(){
translate([-78,33,26]) cube([30,30,10], true);
rotate([0,90,0]) scale([1.05,1.05,1.05]) translate([carriageHeight,32.5,-86.25]) slide_bearing();
rotate([0,90,0]) translate([-21,34,-110]) cylinder(h=200, d=10);    
}

difference(){
    translate([-78,-26,26]) cube([30,44,10], true);
    color("orange") rotate([0,90,0]) translate([-31.5,-12,-110]) cylinder(h=60, d=3); 
    color("orange") rotate([0,90,0]) translate([-31.5,-23,-110]) cylinder(h=60, d=3); 
    rotate([0,90,0]) scale([1.05,1.05,1.05]) translate([carriageHeight,-32.5,-86.25]) slide_bearing();
    rotate([0,90,0]) translate([-21,-34,-110]) cylinder(h=200, d=10);
}
difference(){
color("purple") translate([-80,-40,35]) cube([40,80,20]);
translate([-82,-0,54]) rotate([0,90,0]) cylinder(h=100, d=32.5);
    translate([-75,-32,44]) rotate([0,0,0]) cylinder(h=100, d=3);
translate([-60,-32,44]) rotate([0,0,0]) cylinder(h=100, d=3);
translate([-45,-32,44]) rotate([0,0,0]) cylinder(h=100, d=3);
translate([-75,32,44]) rotate([0,0,0]) cylinder(h=100, d=3);
translate([-60,32,44]) rotate([0,0,0]) cylinder(h=100, d=3);
translate([-45,32,44]) rotate([0,0,0]) cylinder(h=100, d=3);
}





}

module plasmatiedown(){
    difference(){
translate([-94.5,-0,78]) rotate([0,-10,0]) cylinder(h=10, d=44.5);
translate([-94.5,-0,77]) rotate([0,-10,0]) cylinder(h=14, d=36.5);
}
}

module plasmaattachment(){
    difference(){
translate([-80,-40,55]) cube([40,80,20]);
translate([-82,-30,74]) rotate([0,90,0]) cylinder(h=50, d=32.5);
translate([-82,-60,58]) cube([50,30,20]);
translate([-82,30,74]) rotate([0,90,0]) cylinder(h=50, d=32.5);
translate([-82,30,58]) cube([50,30,20]);
translate([-82,-0,54]) rotate([0,90,0]) cylinder(h=100, d=32.5);
        translate([-75,-32,44]) rotate([0,0,0]) cylinder(h=100, d=3);
translate([-60,-32,44]) rotate([0,0,0]) cylinder(h=100, d=3);
translate([-45,-32,44]) rotate([0,0,0]) cylinder(h=100, d=3);
translate([-75,32,44]) rotate([0,0,0]) cylinder(h=100, d=3);
translate([-60,32,44]) rotate([0,0,0]) cylinder(h=100, d=3);
translate([-45,32,44]) rotate([0,0,0]) cylinder(h=100, d=3);
    }
    
difference(){
union(){
translate([-116,-14,126]) rotate([0,80,0]) cube([60,28,30]);
translate([-82,-4,70]) rotate([0,0,0]) cube([42,6,30]);
translate([-88,-4,100]) rotate([0,0,0]) cube([48,6,30]);   
}

plasmatiedown();
translate([-3,0,18]) plasmatiedown();
translate([-6,0,35]) plasmatiedown();
translate([-94.5,-0,48]) rotate([0,-10,0]) cylinder(h=100, d=32.5);

for(i = [0 : 1 : 4]){
translate([-48,5,80+(i*10)]) rotate([90,0,0]) cylinder(h=10, d=8, $fn=6);
translate([-58,5,80+(i*10)]) rotate([90,0,0]) cylinder(h=10, d=8, $fn=6);
translate([-68,5,80+(i*10)]) rotate([90,0,0]) cylinder(h=10, d=8, $fn=6);
}

}
    

difference(){
color("green") translate([-65,-3,80]) rotate([90,0,0]) cylinder(h=6, d=8);
color("green") translate([-65,-2,80]) rotate([90,0,0]) cylinder(h=8, d=2.5);
}

difference(){
color("green") translate([-65,-3,126]) rotate([90,0,0]) cylinder(h=6, d=8);
color("green") translate([-65,-2,126]) rotate([90,0,0]) cylinder(h=8, d=2.5);
}

difference(){
color("green") translate([-45,-3,80]) rotate([90,0,0]) cylinder(h=6, d=8);
color("green") translate([-45,-2,80]) rotate([90,0,0]) cylinder(h=8, d=2.5);
}

difference(){
color("green") translate([-45,-3,126]) rotate([90,0,0]) cylinder(h=6, d=8);
color("green") translate([-45,-2,126]) rotate([90,0,0]) cylinder(h=8, d=2.5);
}


color("grey") translate([-40.5,-23.5,165.5]) rotate([90,-90,270]) import("Ultrasonic_HC-SR04_-_FOOT_MOUNT.stl", convexity=3);



}

module limit_switch_mount(){
difference(){
translate([11.3,-21,22.2]) cube([11.5,40,4], true);
translate([12,-14,6]) cylinder(h=24.50, d=5);
translate([12,-33,6]) cylinder(h=24.50, d=5);
}
rotate([0,270,90]) translate([48.6,-40.5,-36]) switchmount();
rotate([0,270,90]) translate([48.6,-46,-36]) switchmount();
}


module cablechainterminator(){
translate([16.5,-5.65,-4.6]) sphere(d=6.1);
translate([16.5,-5.65,13.8]) sphere(d=6.1);
translate([16.5,-5.65,12.15]) cylinder(h=3, d=7.5);
translate([16.5,-5.65,-5.85]) cylinder(h=3, d=7.5);
rotate([0,0,45]) translate([4,-16,-5.85]) cube([7.1,17,3]);
rotate([0,0,45]) translate([4,-16,12.15]) cube([7.1,17,3]);

rotate([0,0,90]) translate([-9.4,-16,-5.85]) cube([7.1,13,3]);
rotate([0,0,90]) translate([-9.4,-16,12.15]) cube([7.1,13,3]);

rotate([0,0,0]) translate([2,-9.5,-5.85]) cube([5.1,18,21]);
}

module cablechainterminator2(){

difference(){
union(){
translate([16.5,-6,10.5]) sphere(d=7.8);
translate([16.5,-6,8.5]) cylinder(h=2.5, d=12.5);
}
translate([16.5,-6,13.1]) sphere(d=8.8);
}


    
difference(){  
union(){
translate([16.5,-6,-2.6]) sphere(d=7.8);
translate([16.5,-6,-3.2]) cylinder(h=2.5, d=12.5);
}
translate([16.5,-6,-5.3]) sphere(d=8.8);
}

rotate([0,0,45]) translate([4,-12,-3.2]) cube([7,9.0,3]);
rotate([0,0,45]) translate([4,-12,8.0]) cube([7,9,3]);

rotate([0,0,90]) translate([-9.4,-12,-3.2]) cube([7,7,3]);
rotate([0,0,90]) translate([-9.4,-12,8.0]) cube([7,7,3]);

rotate([0,0,0]) translate([5,-9.5,-4.85]) cube([5.1,19,21]);
}


module generic_railmount(){
difference(){
    union(){
translate([11.3,-24,22.2]) cube([11.5,30,4], true);
translate([12.3,-24,19.4]) cube([5,30,2], true);
    }
    translate([12,-14,6]) cylinder(h=24.50, d=5);
translate([12,-33,6]) cylinder(h=24.50, d=5);
}
}

module cablechain_guide(){
generic_railmount();
translate([0,80,0]) generic_railmount();
translate([3,-39,20.2]) cube([4,110,24]);

translate([-2,-39,43.2]) cube([9,110,4]);
//rotate([180,180,0]) translate([-13,48,27.75]) cablechainterminator();
}

module cablechain_guide_withmaleterm(){
generic_railmount();
translate([0,80,0]) generic_railmount();
translate([3,-39,20.2]) cube([4,110,24]);

translate([-2,-39,43.2]) cube([9,110,4]);
rotate([180,180,0]) translate([-13,48,27.75]) cablechainterminator();
}

module cablechain_guide_withfemaleterm(){
generic_railmount();
translate([0,80,0]) generic_railmount();
translate([3,-39,20.2]) cube([4,110,24]);

translate([-2,-39,43.2]) cube([9,110,4]);
rotate([0,180,0]) translate([-12,78,-36.25]) cablechainterminator2();
}

module double_openrail(length){
difference(){
translate([0,0,0]) cube([40,20,length], true);
translate([10,7.6,0]) cube([5,5,length+2], true);
translate([-10,7.6,0]) cube([5,5,length+2], true);
    translate([10,-7.6,0]) cube([5,5,length+2], true);
translate([-10,-7.6,0]) cube([5,5,length+2], true);
    translate([-18,0,0]) cube([5,5,length+2], true);
    translate([18,0,0]) cube([5,5,length+2], true);
    
    translate([-2,0,0]) cube([5,5,length+2], true);
    translate([2,0,0]) cube([5,5,length+2], true);
}
translate([20.5,10,-(length/2)]) cylinder(h=length, d=2.5, $fn=3);
rotate([0,180,0]) translate([20.5,10,-(length/2)]) cylinder(h=length, d=2.5, $fn=3);
}

module carriageplate(){
difference(){
translate([-80,45,0]) minkowski(){
 cube([140,70,3.18], true);
cylinder(d=20);
}

color("grey") translate([-10,12.7,-2]) cylinder(h=6, d=5);
color("grey") translate([-30,12.7,-2]) cylinder(h=6, d=5);
color("grey") translate([-47.7,12.7,-2]) cylinder(h=6, d=7.14);
color("grey") translate([-70,12.7,-2]) cylinder(h=6, d=5);
color("grey") translate([-80,12.7,-2]) cylinder(h=6, d=5);
color("grey") translate([-90,12.7,-2]) cylinder(h=6, d=5);
color("grey") translate([-112.3,12.7,-2]) cylinder(h=6, d=5);
color("grey") translate([-130,12.7,-2]) cylinder(h=6, d=5);
color("grey") translate([-150,12.7,-2]) cylinder(h=6, d=5);

color("grey") translate([-10,77.3,-2]) cylinder(h=6, d=7.14);
color("grey") translate([-30,77.3,-2]) cylinder(h=6, d=5);
color("grey") translate([-47.7,77.3,-2]) cylinder(h=6, d=7.14);
color("grey") translate([-70,77.3,-2]) cylinder(h=6, d=5);
color("grey") translate([-80,77.3,-2]) cylinder(h=6, d=5);
color("grey") translate([-90,77.3,-2]) cylinder(h=6, d=5);
color("grey") translate([-112.3,77.3,-2]) cylinder(h=6, d=5);
color("grey") translate([-130,77.3,-2]) cylinder(h=6, d=5);
color("grey") translate([-150,77.3,-2]) cylinder(h=6, d=7.14);

color("grey") translate([-10,35,-2]) cylinder(h=6, d=5);
color("grey") translate([-60,35,-2]) cylinder(h=6, d=5);
color("grey") translate([-80,35,-2]) cylinder(h=6, d=5);
color("grey") translate([-100,35,-2]) cylinder(h=6, d=5);

color("grey") translate([-150,35,-2]) cylinder(h=6, d=5);

color("grey") translate([-10,55,-2]) cylinder(h=6, d=5);
color("grey") translate([-60,55,-2]) cylinder(h=6, d=5);
color("grey") translate([-80,55,-2]) cylinder(h=6, d=5);
color("grey") translate([-100,55,-2]) cylinder(h=6, d=5);
color("grey") translate([-150,55,-2]) cylinder(h=6, d=5);

color("grey") translate([-47.7,45,-2]) cylinder(h=6, d=7.14);

color("grey") translate([-80,77.3,-2]) cylinder(h=6, d=7.14);
color("grey") translate([-70,45,-2]) cylinder(h=6, d=5);
color("grey") translate([-90,77.3,-2]) cylinder(h=6, d=5);
}
}

module nylon_bushing_6mm(){
    difference(){
    color("beige") translate([0,0,0]) cylinder(h=6.35, d=7.93);
     color("black") translate([0,0,-1]) cylinder(h=10, d=5);
    }
}

module nylon_bushing_19mm(){
    difference(){
    color("beige") translate([0,0,0]) cylinder(h=19.05, d=7.93);
    color("black") translate([0,0,-1]) cylinder(h=22, d=5);
}
}
module eccentric_spacer_19mm(){
    difference(){
    color("beige") translate([0,0,0]) cylinder(h=19.05, d=10, $fn=6);
    color("black") translate([0.75,0,-1]) cylinder(h=22, d=5);
}

    difference(){
    color("beige") translate([0,0,19.05]) cylinder(h=2.3, d=8);
    color("black") translate([0.75,0,6]) cylinder(h=22, d=5);
    }
    
}

module eccentric_spacer_6mm(){
    difference(){
    color("beige") translate([0,0,0]) cylinder(h=6, d=10, $fn=6);
        
    color("black") translate([0.75,0,-1]) cylinder(h=22, d=5);
    }

    difference(){
    color("beige") translate([0,0,6]) cylinder(h=2.3, d=8);
    color("black") translate([0.75,0,-1]) cylinder(h=22, d=5);
    }

}



module vwheel(){
    color("black") rotate([90,0,0]) translate([0,0,0]) import("vwheel_dual_bearing_with_bearings_b17021_rev_1.stl", convexity=3);
    
}

module table(){
    difference(){
translate([0,0,0]) cube([533.4,762,50], true);
translate([0,0,0]) cube([455.4,680,54], true);
    }
translate([0,0,400]) cube([533.4,762,50], true);
translate([242,355,400]) cube([50,50,762.5], true);
translate([242,-355,400]) cube([50,50,762.5], true);
translate([-242,355,400]) cube([50,50,762.5], true);
translate([-242,-355,400]) cube([50,50,762.5], true);
    
    for(i = [0 : 1 : 31]){
translate([0,-320+(i*20.7),0]) cube([533.4,4,50], true);
    }
    
}

module plasma_head(){
color("black") translate([0,0,0]) cylinder(h=75, d=32);
color("grey") translate([0,0,75]) sphere(d=32);
color("brown") translate([0,0,-9]) cylinder(h=9, d=12);

color("black") rotate([1000,0,0]) translate([0,-73.7,10]) cylinder(h=150, d=32);
}

module rail_lbracket(){
    
    difference(){
translate([0,0,0]) cube([35,35,6], true);
color("black") translate([0,0,-5]) cylinder(h=10, d=12);
    }
    
    difference(){
rotate([90,0,0]) translate([0,14.5,14.5]) cube([35,35,6], true);
    color("black") rotate([90,90,0]) translate([-14.5,0,10]) cylinder(h=10, d=12);
    }
}

module carriageplateplasma(){
difference(){
translate([-80,25,0]) minkowski(){
 cube([140,106,3.18], true);
cylinder(d=20);
}

color("grey") translate([-86,-6,-2]) cylinder(h=6, d=38);
color("grey") translate([-84,-6,-2]) cylinder(h=6, d=38);
color("grey") translate([-82,-6,-2]) cylinder(h=6, d=38);
color("grey") translate([-80,-6,-2]) cylinder(h=6, d=38);
color("grey") translate([-78,-6,-2]) cylinder(h=6, d=38);
color("grey") translate([-76,-6,-2]) cylinder(h=6, d=38);
color("grey") translate([-74,-6,-2]) cylinder(h=6, d=38);


color("grey") translate([-52,-30,-2]) cylinder(h=6, d=5);
color("grey") translate([-53,-30,-2]) cylinder(h=6, d=5);
color("grey") translate([-54,-30,-2]) cylinder(h=6, d=5);
color("grey") translate([-55,-30,-2]) cylinder(h=6, d=5);
color("grey") translate([-56,-30,-2]) cylinder(h=6, d=5);
color("grey") translate([-57,-30,-2]) cylinder(h=6, d=5);
color("grey") translate([-58,-30,-2]) cylinder(h=6, d=5);

color("grey") translate([-102,-30,-2]) cylinder(h=6, d=5);
color("grey") translate([-103,-30,-2]) cylinder(h=6, d=5);
color("grey") translate([-104,-30,-2]) cylinder(h=6, d=5);
color("grey") translate([-105,-30,-2]) cylinder(h=6, d=5);
color("grey") translate([-107,-30,-2]) cylinder(h=6, d=5);
color("grey") translate([-108,-30,-2]) cylinder(h=6, d=5);
color("grey") translate([-109,-30,-2]) cylinder(h=6, d=5);

color("grey") translate([-52,20,-2]) cylinder(h=6, d=5);
color("grey") translate([-53,20,-2]) cylinder(h=6, d=5);
color("grey") translate([-54,20,-2]) cylinder(h=6, d=5);
color("grey") translate([-55,20,-2]) cylinder(h=6, d=5);
color("grey") translate([-56,20,-2]) cylinder(h=6, d=5);
color("grey") translate([-57,20,-2]) cylinder(h=6, d=5);
color("grey") translate([-58,20,-2]) cylinder(h=6, d=5);

color("grey") translate([-102,20,-2]) cylinder(h=6, d=5);
color("grey") translate([-103,20,-2]) cylinder(h=6, d=5);
color("grey") translate([-104,20,-2]) cylinder(h=6, d=5);
color("grey") translate([-105,20,-2]) cylinder(h=6, d=5);
color("grey") translate([-106,20,-2]) cylinder(h=6, d=5);
color("grey") translate([-107,20,-2]) cylinder(h=6, d=5);
color("grey") translate([-108,20,-2]) cylinder(h=6, d=5);


color("grey") translate([-10,-30,-2]) cylinder(h=6, d=5);
color("grey") translate([-150,-30,-2]) cylinder(h=6, d=5);
color("grey") translate([-10,12.7,-2]) cylinder(h=6, d=5);
color("grey") translate([-10,12.7,-2]) cylinder(h=6, d=5);
//color("grey") translate([-30,12.7,-2]) cylinder(h=6, d=5);
//color("grey") translate([-47.7,12.7,-2]) cylinder(h=6, d=7.14);
//color("grey") translate([-70,12.7,-2]) cylinder(h=6, d=5);
//color("grey") translate([-80,12.7,-2]) cylinder(h=6, d=5);
//color("grey") translate([-90,12.7,-2]) cylinder(h=6, d=5);
//color("grey") translate([-112.3,12.7,-2]) cylinder(h=6, d=5);
//color("grey") translate([-130,12.7,-2]) cylinder(h=6, d=5);
color("grey") translate([-150,12.7,-2]) cylinder(h=6, d=5);

color("grey") translate([-60,57.3,-2]) cylinder(h=6, d=5);
color("grey") translate([-80,57.3,-2]) cylinder(h=6, d=5);
color("grey") translate([-100,57.3,-2]) cylinder(h=6, d=5);
color("grey") translate([-60,36.3,-2]) cylinder(h=6, d=5);
color("grey") translate([-80,36.3,-2]) cylinder(h=6, d=5);
color("grey") translate([-100,36.3,-2]) cylinder(h=6, d=5);

color("grey") translate([-120,65,-2]) cylinder(h=6, d=5);
color("grey") translate([-120,80,-2]) cylinder(h=6, d=5);

color("grey") translate([-10,77.3,-2]) cylinder(h=6, d=7.14);
color("grey") translate([-150,77.3,-2]) cylinder(h=6, d=7.14);

color("grey") translate([-135,-0,-2]) cylinder(h=6, d=5);
color("grey") translate([-135,-20,-2]) cylinder(h=6, d=5);

//color("grey") translate([-10,35,-2]) cylinder(h=6, d=5);
//color("grey") translate([-60,35,-2]) cylinder(h=6, d=5);
//color("grey") translate([-80,35,-2]) cylinder(h=6, d=5);
//color("grey") translate([-100,35,-2]) cylinder(h=6, d=5);

//color("grey") translate([-150,35,-2]) cylinder(h=6, d=5);

//color("grey") translate([-10,55,-2]) cylinder(h=6, d=5);
//color("grey") translate([-60,55,-2]) cylinder(h=6, d=5);
//color("grey") translate([-80,55,-2]) cylinder(h=6, d=5);
//color("grey") translate([-100,55,-2]) cylinder(h=6, d=5);
//color("grey") translate([-150,55,-2]) cylinder(h=6, d=5);

//color("grey") translate([-47.7,45,-2]) cylinder(h=6, d=7.14);

color("grey") translate([-80,77.3,-2]) cylinder(h=6, d=7.14);
//color("grey") translate([-70,45,-2]) cylinder(h=6, d=5);
//color("grey") translate([-90,77.3,-2]) cylinder(h=6, d=5);
}


}

module motorpulley(){
difference(){
union(){
color("grey") translate([0,0,0]) cylinder(h=1, d=28);
color("grey") translate([0,0,1]) cylinder(h=6.5, d=22.5);
color("grey") translate([0,0,7.5]) cylinder(h=1, d=28);
color("grey") translate([0,0,8.5]) cylinder(h=9, d=17.75);
}
color("grey") translate([0,0,-1]) cylinder(h=20, d=5);
}
}

module gantry_back(){
    translate([13.5,-111,-107]) rotate([90,90,90]) cablechainterminator2();
    
    color("orange") translate([3,-104,-114]) rotate([0,0,0]) cube([60,30,6], true);
    
    color("orange") translate([3,-50,-118]) rotate([0,0,0]) cube([60,20,6], true);
    
     color("orange") translate([-10,-116,-124]) rotate([0,0,0]) cube([32,6,20], true);
    
    color("orange") translate([-6,-116,-108]) rotate([0,0,0]) cube([40,6,10], true);
    
    difference(){
    
    color("grey") translate([-26.3,-80,-130]) rotate([0,90,0]) cube([60,80,2], true);
        
     color("grey") rotate([90,0,90]) translate([-80,-133.5,-50]) cylinder(h=40, d=38);
        
    color("grey") rotate([90,0,90]) translate([-105,-156.5,-50]) cylinder(h=40, d=5);
    
      color("grey") rotate([90,0,90]) translate([-105,-106.5,-50]) cylinder(h=40, d=5);

    color("grey") rotate([90,0,90]) translate([-55,-156.5,-50]) cylinder(h=40, d=5);
    
      color("grey") rotate([90,0,90]) translate([-55,-106.5,-50]) cylinder(h=40, d=5);    
    }
    //color("grey") translate([-26,-100,-140]) rotate([90,90,0]) cylinder(h=20, d=20, $fn=3);

    difference(){
    color("grey") rotate([0,0,90]) translate([-49,19,-129]) cylinder(h=10, d=10);
    color("grey") rotate([0,0,90]) translate([-49,19,-130]) cylinder(h=12, d=2.5);
    }
    
        difference(){
    color("grey") rotate([0,0,90]) translate([-48,-29,-129]) cylinder(h=10, d=10);
    color("grey") rotate([0,0,90]) translate([-48,-29,-130]) cylinder(h=12, d=2.5);
    }
    
    difference(){
    color("grey") rotate([0,0,90]) translate([-100,4,-129]) cylinder(h=10, d=10);
    color("grey") rotate([0,0,90]) translate([-100,4,-130]) cylinder(h=12, d=2.5);
    }
    
    difference(){
    color("grey") rotate([0,0,90]) translate([-100,-24,-129]) cylinder(h=10, d=10);
    color("grey") rotate([0,0,90]) translate([-100,-24,-130]) cylinder(h=12, d=2.5);
    }
    
}


module z_plasmacarriage(){
    carriageHeight2 = -55;
    carriageposition = -106;
rotate([0,0,0]) translate([carriageHeight2,-115,carriageposition]) slide_bearing();
rotate([0,0,0]) translate([carriageHeight2,-45,carriageposition]) slide_bearing();
    rotate([0,270,0]) translate([-15,-80,34]) carriage_top();
    rotate([0,270,0]) translate([-15,-80,34]) carriage_bottom();
    rotate([180,0,270]) translate([80,88,36]) plasma_head();
    rotate([0,270,0]) translate([-15,-80,34]) plasmaattachment();
    color("purple") rotate([90,90,0]) translate([72,-137,90]) import("TinkerBuiltRelay.stl", convexity=3);
    color("purple") rotate([0,180,180]) translate([40,60,160]) import("Arduino.ipt.stl", convexity=3);
}


module x_carriageAssembly(){
//translate([-30,0,-127]) rotate([90,0,90]) carriageplateplasma();
rotate([270,0,90]) translate([-10,50,21]) eccentric_spacer_6mm();
rotate([270,0,90]) translate([-10,115,21]) nylon_bushing_6mm();
rotate([0,0,90]) translate([-10,16,-50]) vwheel();
rotate([0,0,90]) translate([-10,16,-115]) vwheel();
translate([-30,0,-127]) rotate([90,0,90]) carriageplateplasma();
rotate([270,0,90]) translate([-150,50,21]) eccentric_spacer_6mm();
rotate([270,0,90]) translate([-150,115,21]) nylon_bushing_6mm();
rotate([0,0,90]) translate([-150,16,-50]) vwheel();
rotate([0,0,90]) translate([-150,16,-115]) vwheel();
color("grey") rotate([0,90,180]) translate([125,80,31]) gantry_top();
color("grey") rotate([0,90,180]) translate([125,80,31]) gantry_bottom();
translate([-32,-80,-64]) rotate([0,270,0]) rod_endholder();
translate([-32,-10,-64]) rotate([0,270,0]) rod_endholder2();
translate([-32,-80,-151]) rotate([180,90,0]) rod_endholder();
translate([-32,-150,-151]) rotate([180,90,0]) rod_endholder2();

    gantry_back();
    
carriageHeight2 = -55;
//rotate([0,0,0]) translate([carriageHeight2,-115,-90]) slide_bearing();
//rotate([0,0,0]) translate([carriageHeight2,-45,-90]) slide_bearing();
rotate([0,0,0]) translate([carriageHeight2,-114,-180]) slide_rod();
rotate([0,0,0]) translate([carriageHeight2,-46,-180]) slide_rod();
color("purple") rotate([90,0,270]) translate([100,-184.5,2]) import("stepper_motor_nema17_47mm_height.stl", convexity=3);

color("black") rotate([0,0,90]) translate([-83,47.5,-151.5]) import("Limit_Switch_v1_0_repaired.stl", convexity=3);

color("black") rotate([180,0,90]) translate([-83,-47.5,65.5]) import("Limit_Switch_v1_0_repaired.stl", convexity=3);

color("green") translate([-54,-79.5,-194]) rotate([90,0,270]) motorpulley();

color("grey") rotate([0,90,0]) scale(2,2,2) translate([22.5,-34,-29.5]) import("624_bearing2.stl", convexity=3);
}

module x_carriageBelts(){
    color("green") rotate([180,0,90]) translate([-90,-37.5,121]) belt_length(profile = "T2.5", belt_width = 6, n = 150);

color("green") rotate([180,0,90]) translate([-285,-37.5,121]) belt_length(profile = "T2.5", belt_width = 6, n = 20);
}
module x_carriageCableChain(){
    translate([-16,180,-84]) rotate([180,-90,0]) cablechain_guide_withmaleterm();

translate([-16,66,-84]) rotate([180,-90,0]) cablechain_guide();
translate([-16,-48,-84]) rotate([180,-90,0]) cablechain_guide();
translate([-16,-162,-84]) rotate([180,-90,0]) cablechain_guide();

for(i = [0 : 1 : 26]){
color("orange") rotate([0,180,0]) translate([-28,203-(i*16),80]) import("Wire-chain-20mm_fixed.stl", convexity=3);
}

color("orange") rotate([0,180,0]) translate([-28,-230,80]) import("Wire-chain-20mm_fixed.stl", convexity=3);

color("orange") rotate([-45,180,0]) translate([-28,-240.5,-105]) import("Wire-chain-20mm_fixed.stl", convexity=3);

color("green") rotate([-90,180,0]) translate([-28,-117.5,-244]) import("Wire-chain-20mm_fixed.stl", convexity=3);

color("orange") rotate([-135,180,0]) translate([-28,68,-255]) import("Wire-chain-20mm_fixed.stl", convexity=3);

color("orange") rotate([-180,180,0]) translate([-28,206.5,-131]) import("Wire-chain-20mm_fixed.stl", convexity=3);
}


module bearing_cover_keep(){
    difference(){
    color("black") translate([-85,0,29]) cylinder(h=2, d=25);
    color("grey") translate([-85,0,28]) cylinder(h=4, d=5);
}
}






module y_carriageCableChain(){
    translate([142,320,-104]) rotate([-90,-90,0]) cablechain_guide_withfemaleterm();
    
    translate([30,320,-104]) rotate([-90,-90,0]) cablechain_guide();
    translate([-82,320,-104]) rotate([-90,-90,0]) cablechain_guide();
    translate([-194,320,-104]) rotate([-90,-90,0]) cablechain_guide();

for(i = [0 : 1 : 25]){
color("orange") translate([218-(i*16),363,-103]) rotate([0,180,90]) import("Wire-chain-20mm_fixed.stl", convexity=3);
}

for(x = [0 : 1 : 2]){
color("orange") translate([-101-(x*16),363,-141]) rotate([0,0,270]) import("Wire-chain-20mm_fixed.stl", convexity=3);
}

color("orange") translate([-204,363,-103]) rotate([45,180,90]) import("Wire-chain-20mm_fixed.stl", convexity=3);

color("orange") translate([-220,363,-118]) rotate([90,180,90]) import("Wire-chain-20mm_fixed.stl", convexity=3);

color("orange") translate([-220,363,-140]) rotate([135,180,90]) import("Wire-chain-20mm_fixed.stl", convexity=3);

color("orange") translate([-206,363,-157]) rotate([180,180,90]) import("Wire-chain-20mm_fixed.stl", convexity=3);

color("orange") translate([-189,363,-158]) rotate([190,180,90]) import("Wire-chain-20mm_fixed.stl", convexity=3);

color("orange") translate([-173,363,-156]) rotate([200,180,90]) import("Wire-chain-20mm_fixed.stl", convexity=3);

color("orange") translate([-159,363,-149]) rotate([200,180,90]) import("Wire-chain-20mm_fixed.stl", convexity=3);

color("orange") translate([-147,363,-144]) rotate([190,180,90]) import("Wire-chain-20mm_fixed.stl", convexity=3);


//color("green") translate([-191,363,-128]) rotate([-45,0,270]) import("Wire-chain-20mm_fixed.stl", convexity=3);

//for(i = [0 : 1 : 26]){
//color("orange") rotate([0,180,0]) translate([-28,203-(i*16),80]) import("Wire-chain-20mm_fixed.stl", convexity=3);
//}

//color("orange") rotate([0,180,0]) translate([-28,-230,80]) import("Wire-chain-20mm_fixed.stl", convexity=3);

//color("orange") rotate([-45,180,0]) translate([-28,-240.5,-105]) import("Wire-chain-20mm_fixed.stl", convexity=3);

//color("green") rotate([-90,180,0]) translate([-28,-117.5,-244]) import("Wire-chain-20mm_fixed.stl", convexity=3);

//color("orange") rotate([-135,180,0]) translate([-28,68,-255]) import("Wire-chain-20mm_fixed.stl", convexity=3);

//color("orange") rotate([-180,180,0]) translate([-28,206.5,-131]) import("Wire-chain-20mm_fixed.stl", convexity=3);
}

module y_chainTerminModule(){
        translate([-64,347.5,-129.5]) rotate([-90,-180,0]) cablechainterminator();
    translate([-66,294.5,-139]) cube([80,68,4]);
translate([-66,294.5,-135]) cube([20,5.5,15]);
translate([-6,294.5,-135]) cube([20,5.5,15]);
}

module wire_loom(){
difference(){
cylinder(h=6, d=12); 
translate([0,0,-1]) cylinder(h=8, d=8);
translate([-3,2,-1]) cube([6,4,8]);
}

translate([-4.1,2.9,0]) rotate([0,0,-25]) cube([4.5,2.5,6]);

difference(){
translate([4,-5,-12])cube([2,10,30]);
translate([1,0,12]) rotate([0,90,0]) cylinder(h=6, d=5);
translate([1,0,-6]) rotate([0,90,0]) cylinder(h=6, d=5);
}
}

//Print Stuff
//bushing();
//rail_motor_mount();
//idlerpully();
//railmountspacer();
//belt_tiedown2();
//belt_tie_cap();
//motor_plasmagantry();
//bearing_plasmagantry();
//gantry_top();
//gantry_bottom();
//gantry_back();
//rod_endholder();
//translate([0,70,0]) rod_endholder2();
//translate([160,0,0])rod_endholder();
//translate([160,70,0]) rod_endholder2();
//rotate([90,0,0]) translate([-73,18,12]) belt_tie_cap();
//rotate([90,0,0]) translate([-73,18,23]) belt_tie_cap();
//rotate([90,0,0]) translate([-106,18,12]) belt_tie_cap();
//rotate([90,0,0]) translate([-106,18,23]) belt_tie_cap();
//carriage_top();
//carriage_bottom();
//plasmaattachment();
//limit_switch_mount();
//cablechain_guide_withmaleterm();
//cablechain_guide();
//cablechain_guide_withfemaleterm();
//color("grey") rotate([0,0,90]) scale(1.5,1.5,1.0) translate([56.5,-234.5,207.5]) import("Endstop_Mount_Style_2_-_For_M3_Tap.STL", convexity=3);
//bearing_cover_keep();
//y_chainTerminModule();
//wire_loom();
//color("green") rotate([180,0,0]) translate([114,-292,-399.5]) import("PSU_Mount.stl", convexity=3);
//color("red") rotate([270,0,0]) translate([116.5,-80,344.5]) import("ArduinoUnoMountSolid.stl", convexity=3);
//color("green") rotate([270,180,0]) translate([-210,147,376.5]) import("rpi2-bottom_netfabb.stl", convexity=3);
//color("green") rotate([90,0,0]) translate([114,152,-399.5]) import("rpi2-top_netfabb.stl", convexity=3);


//COMPONENT MODEL
module tie_down_mock(){
rotate([90,0,180]) belt_tiedown2();
rotate([90,0,0]) translate([-20,0,0]) belt_tie_cap();
}


module plasma_cutting_table(){
color("darkgrey") table();
rotate([0,90,0]) translate([82,-330,0]) double_openrail(704.85);
rotate([0,90,180]) translate([82,-330,0]) double_openrail(704.85);
rotate([0,90,90]) translate([82,6,0]) double_openrail(609.6);
color("black") translate([250,360,-40]) railmountspacer();
color("black") translate([250,-360,-40]) railmountspacer();
color("black") translate([-250,360,-40]) railmountspacer();
color("black") translate([-250,-360,-40]) railmountspacer();

color("grey") rotate([0,180,180]) translate([-250,360,58]) rail_lbracket();
color("grey") rotate([0,180,180]) translate([250,360,58]) rail_lbracket();
color("grey") rotate([0,180,0]) translate([250,360,58]) rail_lbracket();
color("grey") rotate([0,180,0]) translate([-250,360,58]) rail_lbracket();

color("grey") rotate([90,0,180]) translate([70,-127,-307]) carriageplate();
rotate([90,0,0]) translate([60,-50,-315]) eccentric_spacer_6mm();
rotate([90,0,0]) translate([-80,-50,-315]) eccentric_spacer_6mm();
rotate([90,0,0]) translate([60,-115,-315]) nylon_bushing_6mm();
rotate([90,0,0]) translate([-80,-115,-315]) nylon_bushing_6mm();

translate([80,-320,-50]) vwheel();
translate([-60,-320,-50]) vwheel();
translate([80,-320,-115]) vwheel();
translate([-60,-320,-115]) vwheel();


color("grey") rotate([90,0,0]) translate([70,-127,-307]) carriageplate();
rotate([270,0,0]) translate([80,50,-315]) eccentric_spacer_6mm();
rotate([270,0,0]) translate([-60,50,-315]) eccentric_spacer_6mm();
rotate([270,0,0]) translate([80,115,-315]) nylon_bushing_6mm();
rotate([270,0,0]) translate([-60,115,-315]) nylon_bushing_6mm();
translate([60,320,-50]) vwheel();
translate([-80,320,-50]) vwheel();
translate([60,320,-115]) vwheel();
translate([-80,320,-115]) vwheel();

color("black") translate([-335,-339.5,-84]) rotate([0,0,90]) idlerpully();
color("black") translate([335,-339.5,-84]) rotate([180,0,90]) rail_motor_mount();
color("black") translate([-335,339.5,-84]) rotate([180,0,270]) idlerpully();
color("black") translate([335,339.5,-84]) rotate([0,0,270]) rail_motor_mount();

color("purple") rotate([270,90,0]) translate([104,-367,-366.5]) import("stepper_motor_nema17_47mm_height.stl", convexity=3);
color("purple") rotate([90,90,0]) translate([104,387,-366.5]) import("stepper_motor_nema17_47mm_height.stl", convexity=3);

color("grey") rotate([90,90,0]) scale(1.5,1.5,1.0) translate([56.5,-234.5,-211.5]) import("624_bearing2.stl", convexity=3);
color("grey") rotate([90,90,0]) scale(1.5,1.5,1.0) translate([56.5,-234.5,207.5]) import("624_bearing2.stl", convexity=3);

color("black") rotate([180,90,0]) translate([114,-308,-306]) import("Limit_Switch_v1_0_repaired.stl", convexity=3);
color("grey") rotate([0,0,90]) translate([298.5,-310.5,-111]) import("Endstop_Mount_Style_2_-_For_M3_Tap.STL", convexity=3);

color("black") rotate([0,-90,0]) translate([-114,-308,-321]) import("Limit_Switch_v1_0_repaired.stl", convexity=3);
color("grey") rotate([0,0,270]) translate([298.5,310.5,-111]) import("Endstop_Mount_Style_2_-_For_M3_Tap.STL", convexity=3);

color("black") rotate([0,90,0]) translate([114,-308,-307]) import("Limit_Switch_v1_0_repaired.stl", convexity=3);
color("grey") rotate([0,0,270]) translate([298.5,-310.5,-111]) import("Endstop_Mount_Style_2_-_For_M3_Tap.STL", convexity=3);

color("black") rotate([0,90,0]) translate([114,308,-321]) import("Limit_Switch_v1_0_repaired.stl", convexity=3);
color("grey") rotate([0,0,90]) translate([298.5,310.5,-111]) import("Endstop_Mount_Style_2_-_For_M3_Tap.STL", convexity=3);

translate([-60,314,-77]) tie_down_mock();
translate([79,314,-77]) tie_down_mock();
translate([-60,-314,-77]) tie_down_mock();
translate([79,-314,-77]) tie_down_mock();

translate([-10,297.5,-82]) rotate([0,90,90]) motor_plasmagantry();
color("purple") rotate([0,180,0]) translate([-6,288.5,67.5]) import("stepper_motor_nema17_47mm_height.stl", convexity=3);

color("grey") rotate([0,0,0]) scale(1.8,1.8,1.0) translate([-14,165,-71]) import("624_bearing2.stl", convexity=3);

color("black") rotate([90,0,0]) translate([-32.5,-100,-260.5]) import("Limit_Switch_v1_0_repaired.stl", convexity=3);

translate([10,-297.5,-82]) rotate([0,90,270]) bearing_plasmagantry();

color("grey") rotate([0,0,0]) scale(1.8,1.8,1.0) translate([-13.5,-153,-71]) import("624_bearing2.stl", convexity=3);
color("grey") rotate([0,0,0]) scale(1.8,1.8,1.0) translate([14,-153,-71]) import("624_bearing2.stl", convexity=3);

color("black") rotate([270,0,0]) translate([-16.5,100,-260.5]) import("Limit_Switch_v1_0_repaired.stl", convexity=3);

translate([377,314,-84]) rotate([0,90,270]) motorpulley();
translate([377,-314,-84]) rotate([0,90,90]) motorpulley();
translate([26,279,-120]) rotate([180,0,0]) motorpulley();

color("green") rotate([90,0,180]) translate([-380,-95.5,307]) belt_length(profile = "T2.5", belt_width = 6, n = 300);

color("green") rotate([270,0,0]) translate([-370,75,307]) belt_length(profile = "T2.5", belt_width = 6, n = 300);


color("green") rotate([90,0,180]) translate([-380,-95.5,-313]) belt_length(profile = "T2.5", belt_width = 6, n = 300);

color("green") rotate([270,0,0]) translate([-370,75,-313]) belt_length(profile = "T2.5", belt_width = 6, n = 300);

color("green") rotate([0,0,90]) translate([-300,-37.5,-127]) belt_length(profile = "T2.5", belt_width = 6, n = 230);

//X Carriage Module
x_carriageBelts();
translate([0,-86,0]) x_carriageAssembly();
x_carriageCableChain();

translate([0,-86,0]) z_plasmacarriage();
y_carriageCableChain();
translate([-230,375,25]) cube([445,2,350]);

color("red") rotate([270,0,0]) translate([116.5,-80,344.5]) import("ArduinoUnoMountSolid.stl", convexity=3);

color("purple") rotate([270,270,0]) translate([110,147,415.5]) import("Arduino.ipt.stl", convexity=3);

color("purple") rotate([270,180,0]) translate([-60,119,381.5]) import("B+_Model_v4.stl", convexity=3);
color("green") rotate([270,180,0]) translate([-210,147,376.5]) import("rpi2-bottom_netfabb.stl", convexity=3);
color("green") rotate([90,0,0]) translate([114,152,-399.5]) import("rpi2-top_netfabb.stl", convexity=3);

}

//color("green") rotate([180,0,0]) translate([114,-292,-399.5]) import("PSU_Mount.stl", convexity=3);






plasma_cutting_table();



