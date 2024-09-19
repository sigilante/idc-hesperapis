% U+1040a 𐐊
beginfig(4000) ;
  x_radius := 0.4 * font_size;
  y_radius := 0.5 * font_size;

  pickup thin_pen;
  path line;
  line := (0, y_radius) -- (0, -y_radius);
  draw line;

  pickup thin_pen;
  path arc_hi, arc_lo;
  arc_hi := halfcircle scaled x_radius shifted (-.5*x_radius, -y_radius);
  arc_lo := point 0 of arc_hi
            .. point 2 of arc_hi shifted (0, -0.2*y_radius)
            .. point 4 of arc_hi;
  path arc;
  arc = arc_hi .. reverse arc_lo .. cycle;
  draw arc;
  fill arc;

  currentpicture := currentpicture rotated 180;

  draw currentpicture;
endfig;
