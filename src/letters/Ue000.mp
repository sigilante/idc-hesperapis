% U+e000 MULE
beginfig(4012);
  x_radius := 0.4 * font_size;
  y_radius := 0.5 * font_size;

  pen hair_pen ;   hair_pen   = pencircle scaled (0.5*pen_height);
  pickup thin_pen;

  path circle_hi, circle_lo;
  circle_hi := fullcircle xscaled (1.6 * x_radius) yscaled (1.0 * y_radius) shifted (0, 0.5*y_radius);
  circle_lo := fullcircle xscaled (1.6 * x_radius) yscaled (1.0 * y_radius) shifted (0, -0.5*y_radius);
  path top_segment, bottom_segment;

  pair anchor_hi, anchor_lo;
  anchor_hi = (0, 0.5*pen_height);
  anchor_lo = (0, -0.5*pen_height);

  path upper, lower;
  upper := (point 0 of circle_hi){up}
           .. (point 2 of circle_hi){left}
           .. (point 4 of circle_hi shifted (1.0*pen_height,0)){down}
           .. anchor_hi{(1,-0.125)}
          .. (point 8 of circle_lo){down}
           .. (point 6 of circle_lo){left}
           .. (point 4 of circle_lo){up};
  draw (upper cutbefore point 0 of upper cutafter point 2.3 of upper)
       -- (0.5*x_radius+0.0*pen_height,-y_radius+0.0*pen_height)
  ;
  lower := (point 0 of circle_hi){up}
           .. (point 2 of circle_hi){left}
           .. (point 4 of circle_hi){down}
           .. anchor_lo{(1,-0.125)}
           .. (point 8 of circle_lo shifted (-1.0*pen_height,0)){down}
           .. (point 6 of circle_lo){left}
           .. (point 4 of circle_lo){up};
  draw (lower cutbefore point 0 of lower cutafter point 2.4 of lower)
       -- (0.5*x_radius-0.0*pen_height,-y_radius)
       ;

  pickup hair_pen;
  path knob;
  knob := fullcircle scaled (0.4*x_radius) shifted (0.8*x_radius-0.15*x_radius, 0.5*y_radius);
  draw knob;
  fill knob;

  numeric theta;
  theta = 35;
  pickup peg_pen rotated theta;
  path beam;
  pair anchor, center;
  anchor := (-0.25*x_radius,-0.5*y_radius);
  beam = anchor
         -- (anchor + (0.75*x_radius,0.0*y_radius))
         ;
  center = ((anchor + (0.5*x_radius,0.0*y_radius)) - anchor)/2;
  draw beam rotated theta shifted ((-0.4*x_radius,0.15*y_radius)-center);

  currentpicture := currentpicture reflectedabout((0,0),(0,1));

%   draw currentpicture;
endfig;
