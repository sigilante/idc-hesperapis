% U+10424 𐐤
beginfig(424) ;
  x_radius := 0.4 * font_size;
  y_radius := 0.5 * font_size;

  pickup peg_pen;
  path left_line, right_line;
  left_line := (-0.4*x_radius, y_radius)
               -- (-0.4*x_radius, -0.05*y_radius)
               -- (-0.16*x_radius, -0.0*y_radius)
               -- (-0.16*x_radius, y_radius)
               -- cycle;
  right_line := (0.4*x_radius, -y_radius)
                -- (0.4*x_radius, 0.05*y_radius)
                -- (0.16*x_radius, 0.0*y_radius)
                -- (0.16*x_radius, -y_radius)
                -- cycle;
  draw left_line;
  fill left_line;
  draw right_line;
  fill right_line;

  pen nib_pen;
%   nib_pen = pensquare xscaled pen_width yscaled (0.5*pen_height) rotated 30;
  nib_pen = makepen((-.4*x_radius-0.5*pen_height,-0.24*y_radius)
                    -- (-.4*x_radius-0.5*pen_height,-0.04*y_radius)
                    -- (.4*x_radius+0.5*pen_height,0.24*y_radius)
                    -- (.4*x_radius+0.5*pen_height,0.04*y_radius));
  pickup nib_pen;
  path test;
  test := (0,0);
  draw test;
endfig;
