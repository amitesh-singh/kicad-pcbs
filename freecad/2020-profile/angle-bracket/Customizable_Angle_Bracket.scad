//preview[view:east,tilt:top]

/*Customizer Variables*/

// The length of the X arm in mm
x_length = 20; //[20,40,60,80]

// The length of the Y arm in mm
y_length = 20; //[20,40,60,80]

// The width of the part
width = 20; //[20,40,60,80]

// The thickness of the arms in mm
z_length = 3;

// The angle of the bracket
angle = 90.0; //[0:1:180]

// The thickness of the webbing as a fraction of the z_height
web_thickness = 0.5; // [0.05:0.05:1]

// The fraction of the x or y length the webbing extends to. 
web_length = 0.75; // [0.05:0.05:1]

// Screw size in mm 
screw_size = 2;

hole_size = screw_size + screw_size/10 + 0.4;

print_part();

module print_part() {

  {translate([-width/2, -y_length/2,0])
    difference ()
    {
      union ()
      {
        // extrude webbing
        {translate([z_length * web_thickness,0,0])
          rotate([0,-90,0])
            linear_extrude(height = z_length * web_thickness, center = false)
             polygon([[z_length, (z_length / sin(angle)) + (z_length / tan(angle))],
                [z_length, (y_length - 0) * web_length],
                [sin(angle) * x_length * web_length - cos(angle) * z_length, 
                 cos(angle) * x_length * web_length + sin(angle) * z_length]]);}

         {translate([width ,0,0])
           rotate([0,-90,0])
             linear_extrude(height = z_length * web_thickness, center = false)
             polygon([[z_length, (z_length / sin(angle)) + (z_length / tan(angle))],
                [z_length, (y_length - 0) * web_length],
                [sin(angle) * x_length * web_length - cos(angle) * z_length, 
                 cos(angle) * x_length * web_length + sin(angle) * z_length]]);}

             /*
             polygon([[0,0], [0,y_length * web_length],
                 [sin(angle)*x_length * web_length, cos(angle) * x_length * web_length]]);}*/

         {translate([width,0,0])
           rotate([0,-90,0])
             linear_extrude(height = width, center = false)
             polygon([[0,0],[0,y_length],
                 [z_length,y_length], 
                 [z_length, (z_length / sin(angle)) + (z_length / tan(angle))],
                 [sin(angle) * x_length - cos(angle) * z_length, cos(angle) * x_length + sin(angle) * z_length],
                 [sin(angle) * x_length, cos(angle) * x_length]]);}}

         // drill bottom hole    
         {
             for(stepy=[10:20:70])
             for(stepw=[10:20:70])
              if(stepy < y_length && stepw < width)
           translate([stepw, stepy, -0.10])
           cylinder(80 + 0.2, hole_size * 0.5, hole_size * 0.5, false, $fn=20);}

         // drill top hole
         {translate([0, sin(angle) * z_length, -cos(angle) * z_length])
           rotate([angle,0,0])
           { for(stepy=[10:20:70])
             for(stepw=[10:20:70])
              if(stepy < x_length && stepw < width)
           translate([stepw, stepy, z_length - y_length ])
             cylinder(80 + 0.2, hole_size * 0.5, hole_size * 0.5, false, $fn=20);}}}}}

