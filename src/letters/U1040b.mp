% U+1040b 𐐋
beginfig(4001) ;
  x_radius := 0.4 * font_size;
  y_radius := 0.5 * font_size;

  numeric half_x;
  half_y := 0.4 * x_height;

  pickup thin_pen;

  path inner_circle_hi;
  inner_circle_hi := fullcircle xscaled (1.2 * x_radius) yscaled (1.2 * y_radius) shifted (0, 0.5*y_radius);

  pickup peg_pen;
  path line;
  line := (xpart point 0 of inner_circle_hi, -y_radius)
          -- ((point 0 of inner_circle_hi) shifted (0,-0.5*pen_height));
  draw line;

  pickup thin_pen;
  path loopi, loopo;
  loopi := (point 0 of inner_circle_hi){up}
           .. ((point 2 of inner_circle_hi) shifted (0,-0.0*pen_height)){left}
           .. ((point 4 of inner_circle_hi shifted (0.0*pen_height,0))){down}
           %  .. (point 5.5 of inner_circle_hi)
           .. (xpart (point 0 of inner_circle_hi), ypart (point 6 of inner_circle_hi)){right};
  draw loopi;
  loopo := (inner_circle_hi cutbefore point 0 of inner_circle_hi cutafter point 1.25 of inner_circle_hi)
          %  .. ((point 2 of inner_circle_hi) shifted (0,-0.0*pen_height)){left}
           .. ((point 4 of inner_circle_hi shifted (2.0*pen_height,0))){down}
           % .. (point 6 of inner_circle_hi){right}
           .. (xpart (point 0 of inner_circle_hi), ypart (point 6 of inner_circle_hi)){right};
  draw loopo;

  path filler;
  filler := loopi .. reverse loopo .. cycle;
  % draw filler withcolor green;
  fill filler;

endfig;
