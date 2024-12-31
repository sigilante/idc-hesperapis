% U+e002 hashed 𐐇
beginfig(4014) ;
  x_radius := 0.4 * font_size;
  y_radius := 0.5 * font_size;

  numeric half_x;
  half_y := 0.4 * x_height;

  pickup thin_pen;
  path line;
  line := (0, y_radius) -- (0, -y_radius);
  draw line;

  pickup thin_pen;
  path arc_hi, arc_lo;
  % arc_hi := halfcircle scaled x_radius shifted (-.5*x_radius, -y_radius);
  arc_hi := halfcircle scaled (1.5*x_radius) shifted (-0.75*x_radius, -y_radius);
  arc_lo := point 0 of arc_hi
            .. point 2 of arc_hi shifted (0, -0.2*y_radius)
            .. point 4 of arc_hi;
  path arc;
  arc = arc_hi .. reverse arc_lo .. cycle;
  draw arc;
  fill arc;

  pair ul, ur, ll, lr;
  ur := point 1 of arc_hi shifted (-(xpart (point 1 of arc_hi)), 0.25*y_radius+0.5*pen_height);
  ul := ur + (-1.5*x_radius-0.5*pen_height, (0.25+0.31/2)*y_radius+0.5*pen_height);
  ll := ul + (-0.0*pen_height,-pen_height-0.5*pen_height);
  lr := ur + (-0.0*pen_height,-pen_height-0.5*pen_height);

  pen knurl_pen;
  knurl_pen = makepen(ur
                      -- ul
                      -- ll
                      -- lr
                      -- cycle
                    );
  pickup knurl_pen;
  path beam;
  beam := (0,0);

  draw beam;

endfig;
