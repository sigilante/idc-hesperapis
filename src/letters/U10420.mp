% U+10420 𐐠
beginfig(420);
  x_radius := 0.4 * font_size;
  y_radius := 0.5 * font_size;

  pen hair_pen ;   hair_pen   = pencircle scaled (0.5*pen_height);
  pickup thin_pen;

  path circle_hi, circle_lo;
  circle_hi := fullcircle xscaled (1.6 * x_radius) yscaled (1.0 * y_radius) shifted (0, 0.5*y_radius);
  circle_lo := fullcircle xscaled (1.6 * x_radius) yscaled (1.0 * y_radius) shifted (0, -0.5*y_radius);
  path top_segment, bottom_segment;
  % draw circle_hi withcolor (1,1,0);
  % draw circle_lo withcolor (1,1,0);
  % top_segment := circle_hi cutbefore point 0.2 of circle_hi cutafter point 3.8 of circle_hi;
  % bottom_segment := circle_lo cutbefore point 4.2 of circle_lo cutafter point 7.5 of circle_lo;

  pair anchor_hi, anchor_lo;
  anchor_hi = (0, 0.5*pen_height);
  anchor_lo = (0, -0.5*pen_height);

  path upper, lower;
  upper := (point 0 of circle_hi){up}
           .. (point 2 of circle_hi){left}
          %  .. (point 3 of circle_hi shifted (0, -0.5*pen_height))
           .. (point 4 of circle_hi shifted (1.0*pen_height,0)){down}
           .. anchor_hi{(1,-0.125)}
           %  .. (point 1 of circle_lo)
          .. (point 8 of circle_lo){down}
        % .. (point 7 of circle_lo shifted (0, 0.5*pen_height))
           .. (point 6 of circle_lo){left}
           .. (point 4 of circle_lo){up};
  draw upper;
  lower := (point 0 of circle_hi){up}
           .. (point 2 of circle_hi){left}
          % .. (point 3 of circle_hi shifted (0, -0.5*pen_height))
        .. (point 4 of circle_hi){down}
      .. anchor_lo{(1,-0.125)}
        %  .. (point 1 of circle_lo)
      .. (point 8 of circle_lo shifted (-1.0*pen_height,0)){down}
    % .. (point 7 of circle_lo shifted (0, 0.5*pen_height))
        .. (point 6 of circle_lo){left}
           .. (point 4 of circle_lo){up};
  draw lower;

  pickup hair_pen;
  path knob;
  knob := fullcircle scaled (0.4*x_radius) shifted (0.8*x_radius-0.15*x_radius, 0.5*y_radius);
  draw knob;
  fill knob;
  knob := fullcircle scaled (0.4*x_radius) shifted (-0.8*x_radius+0.15*x_radius, -0.5*y_radius);
  draw knob;
  fill knob;
endfig;
