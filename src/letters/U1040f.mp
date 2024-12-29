% U+1040f 𐐏
beginfig(4005);
  x_radius := 0.4 * font_size;
  y_radius := 0.5 * font_size;

  numeric theta;
  theta = 21.801;

  pickup thin_pen;

  path loop;
  loop := fullcircle xscaled (2.4*x_radius) yscaled (1.2*y_radius) shifted (0, 0.75*y_radius);

  pair anchor_ur, anchor_ll, anchor_ul, anchor_lr;
  anchor_ur = (0.8*x_radius+0.5*pen_height, y_radius+0.5*pen_height);
  anchor_ul = (0.8*x_radius-0.24*x_radius-0.5*pen_height, y_radius+0.5*pen_height);
  anchor_ll = (-0.24*x_radius-0.5*pen_height, -y_radius-0.5*pen_height);
  anchor_lr = (0.5*pen_height*cosd(theta), -y_radius-0.5*pen_height*sind(theta));

  pen knurl_pen_r;
  knurl_pen_r = makepen(anchor_ur
                        -- anchor_ul
                        -- 6/8[anchor_ul,anchor_ll]
                        -- anchor_lr
                        -- cycle
                       );
  pickup knurl_pen_r;
  path right_line;
  right_line := (0,0);
  draw right_line;

  pickup thin_pen;
  path left_line;
  left_line := (0,-y_radius)
               -- 7/8[(0,-y_radius),(-0.8*x_radius,y_radius)]{(-0.8*x_radius,2*y_radius)}
               .. (-0.975*x_radius,y_radius){left}
              %  .. (point 3.6 of loop shifted (0,-0.12*y_radius)) %{left}
              %  .. (point 4 of loop){down}
               .. (loop cutbefore point 4 of loop cutafter point 7 of loop)
               .. (point 8 of loop shifted (0,0.12*y_radius)){(0.8*x_radius,2*y_radius)};
  draw left_line;
  path left_loop;
  left_loop := (0,-y_radius)
                -- 3/4[(0,-y_radius),(-0.8*x_radius,y_radius)]{(-0.8*x_radius,2*y_radius)}
                .. (-0.975*x_radius,y_radius-0.75*pen_height){left}
                %  .. (point 3.6 of loop shifted (0,-0.12*y_radius)) %{left}
                %  .. (point 4 of loop){down}
                .. (loop cutbefore point 5 of loop cutafter point 7 of loop);
  draw left_loop;
endfig;
