% U+1044D DESERET SMALL LETTER ENG (𐑍)
% U+10425 at min_scale: drawn with use_min_pens, then shrunk about the baseline.
beginfig(1101);
  use_min_pens;
  x_radius := 0.4 * font_size;
  y_radius := 0.5 * font_size;

  pickup peg_pen;
  path left_line, right_line;
  left_line := (-1*x_radius, y_radius)
               -- (-1*x_radius, -y_radius)
               -- (-0.76*x_radius, -0.6*y_radius)
               -- (-0.76*x_radius, y_radius)
               -- cycle;
  right_line := (1*x_radius, -y_radius)
                -- (1*x_radius, y_radius)
                -- (0.76*x_radius, y_radius)
                -- (0.76*x_radius, -y_radius)
                -- cycle;
  draw left_line;
  fill left_line;
  draw right_line;
  fill right_line;

  pen nib_pen;
%   nib_pen = pensquare xscaled pen_width yscaled (0.5*pen_height) rotated 30;
  nib_pen = makepen((-1.0*x_radius+0.5*pen_height,-0.85*y_radius)
                    -- (-1.0*x_radius+0.5*pen_height,-y_radius-0.5*pen_height)
                    -- (0.76*x_radius-0.5*pen_height,0.85*y_radius)
                    -- (0.76*x_radius-0.5*pen_height,y_radius+0.5*pen_height));
  pickup nib_pen;
  path bar;
%   bar := (-.25*x_radius+0.5*pen_width,-0.15*y_radius)
%          -- (-.25*x_radius+0.5*pen_width,0.1*y_radius)
%          -- (.25*x_radius-0.5*pen_width,0.15*y_radius)
%          -- (.25*x_radius-0.5*pen_width,-0.1*y_radius)
%          -- cycle;
%   draw bar;
  path test;
  test := (0,0);
  draw test;

  shrink_to_min;
  lsb := min_scale * default_side; rsb := min_scale * default_side;
endfig;
