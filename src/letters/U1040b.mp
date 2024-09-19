% U+1040b 𐐋
beginfig(4001) ;
  x_radius := 0.4 * font_size;
  y_radius := 0.5 * font_size;

  numeric half_x;
  half_y := 0.4 * x_height;

  pickup thin_pen;
  path line;
  line := reverse ((0, half_y) -- (0, -y_radius));

  path inner_circle;
  inner_circle := fullcircle xscaled (1.2 * x_radius) yscaled (1.2 * y_radius) shifted (0, half_y);
  path top_segment, bottom_segment;
  top_segment := inner_circle cutbefore point 1 of inner_circle cutafter point 3 of inner_circle;
  path inner_shape;
  inner_shape := line
                 .. top_segment shifted (-0.6*x_radius, 0)
                 .. (-0.1*y_radius,-0.1*half_y)
                 .. (0, -0.1*half_y);

  draw inner_shape;

  % Find the points where the path crosses the y limit
  pair point_a, point_b;
  numeric def_a, def_b;
  point_a := (0,0);  % Initial value, will be replaced
  point_b := (0,0);  % Initial value, will be replaced
  def_a := 0;  % Initial value, will be replaced
  def_b := 0;  % Initial value, will be replaced

  for t = 0 step 0.01 until length reverse inner_shape:
      if xpart(point t of reverse inner_shape) <= -0.6*x_radius:
      point_a := point t of reverse inner_shape;
      def_a := t;
      exitif true;
      fi
  endfor;
  for t = def_a step 0.01 until length reverse inner_shape:
    if xpart(point t of reverse inner_shape) >= -0.6*x_radius:
    point_b := point t of reverse inner_shape;
    def_b := t;
    exitif true;
    fi
  endfor;

  path lhs;
  lhs := point def_a of reverse inner_shape
         .. (-.8*x_radius, half_y)
         .. point def_b of reverse inner_shape;
  path bulge;
  bulge := lhs
           .. reverse (reverse inner_shape cutafter point def_b of reverse inner_shape cutbefore point def_a of reverse inner_shape)
           .. cycle
         ;
  draw bulge;
  fill bulge;

endfig;
