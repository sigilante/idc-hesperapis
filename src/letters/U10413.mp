% U+10413 𐐓
beginfig(413) ;
  x_radius := 0.4 * font_size;
  y_radius := 0.5 * font_size;

  numeric half_x;
  half_y := 0.4 * x_height;

  pickup thin_pen;
  path arc_hi, arc_lo;
  arc_hi := halfcircle scaled x_radius shifted (-.75*x_radius, y_radius);
  arc_lo := point 0 of arc_hi
            .. point 2 of arc_hi shifted (0, -0.2*y_radius)
            .. point 4 of arc_hi;
  path arc;
  arc = arc_hi .. reverse arc_lo .. cycle;
  draw arc;
  fill arc;

  pickup peg_pen;
  path line;
  line := (-0.24*x_radius, 0.76*y_radius)
          -- (0, 0.76*y_radius)
          -- (0, -y_radius)
          -- (-0.24*x_radius, -y_radius)
          -- cycle;
  draw line;
  fill line;

endfig;
