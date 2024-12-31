% U+10418 𐐘
% rotated 180 degrees in release version
beginfig(418);
  x_radius := 0.4 * font_size;
  y_radius := 0.5 * font_size;

  numeric half_x;
  half_y := 0.4 * x_height;

  path inner_circle_hi, inner_circle_lo;
  inner_circle_hi := fullcircle xscaled (1.2 * x_radius) yscaled (1.2 * y_radius) shifted (0, half_y-0.5*pen_height);
  inner_circle_lo := fullcircle xscaled (1.2 * x_radius) yscaled (1.2 * y_radius) shifted (0, -half_y+0.5*pen_height);

  pickup thin_pen;
  path outer_circle;
  outer_circle   := fullcircle xscaled (2 * x_radius) yscaled (2 * y_radius);

  pickup thin_pen;
  path lr_circle, ll_circle, line;
  lr_circle := fullcircle xscaled (0.5 * x_radius) yscaled (0.5 * y_radius) shifted (0.25 * x_radius, -0.75*y_radius);
  ll_circle := fullcircle xscaled (0.5 * x_radius) yscaled (0.5 * y_radius) shifted (-0.25 * x_radius, -0.75*y_radius);
  line :=  (0, -0.75*y_radius) -- (0, -0.25*y_radius);
  draw line;

  path perimeter, pl, pr;
  pl := (outer_circle cutbefore point 2 of outer_circle cutafter point 4.5 of outer_circle)
        .. (point 6 of ll_circle){right}
        .. point 7 of ll_circle
        .. (point 8 of ll_circle){up}
        -- point 0 of line
        -- (point 1 of line){up};
  outer_circle := outer_circle reflectedabout((0,0),(0,y_radius));
  pr := (point 1 of line){down}
        -- point 0 of line
        .. (point 4 of lr_circle){down}
        .. point 5 of lr_circle
        .. (point 6 of lr_circle){right}
        % .. point 7 of lr_circle
    % %    .. point 7 of outer_circle
        % .. (point 4.5 of outer_circle){up}
        % .. (point 2 of outer_circle){left};
        .. reverse (outer_circle cutafter point 4.5 of outer_circle cutbefore point 2 of outer_circle);
        % .. (point 8 of outer_circle){up}
    %    .. outer_circle cutbefore point 8 of outer_circle cutafter point 0 of outer_circle
    %    .. outer_circle cutbefore point 0 of outer_circle cutafter point 2 of outer_circle
    %    .. point 2 of outer_circle
        % -- cycle
        % ;

%   fill perimeter withcolor blue;

  path top_segment, bottom_segment;
  top_segment := inner_circle_hi cutbefore point 0.2 of inner_circle_hi cutafter point 3.8 of inner_circle_hi;
  bottom_segment := inner_circle_lo cutbefore point 4.2 of inner_circle_lo cutafter point 7.8 of inner_circle_lo;
  path inner_shape;
  inner_shape := top_segment
                 .. (point 4.2 of inner_circle_lo)
                 .. (point 6 of ll_circle shifted (0,0.5*pen_height)){right}
                %  .. point 7 of ll_circle
                 .. (point 8 of ll_circle shifted (-0.5*pen_height,0)){up}
                 -- (point 0 of line shifted (-0.5*pen_height,0)){up}
                 -- (point 1 of line shifted (-0.5*pen_height,0)){up}
                 .. (point 1 of line shifted (0,0.5*pen_height)){right}
                 .. (point 1 of line shifted (0.5*pen_height,0)){down}
                 -- (point 0 of line shifted (0.5*pen_height,0)){down}
                 .. (point 4 of lr_circle shifted (0.5*pen_height,0)){down}
                %  .. point 5 of lr_circle
                 .. (point 6 of lr_circle shifted (0,0.5*pen_height)){right}
                 .. (point 7.8 of inner_circle_lo)
                 .. cycle;

  draw inner_shape;
  unfill inner_shape;
  draw pl;
  draw pr;

  path lls, lrs, rls, rrs, ls, rs;
  lls := (inner_circle_hi cutbefore point 2 of inner_circle_hi cutafter point 3.8 of inner_circle_hi)
         .. (point 4.2 of inner_circle_lo)
         .. (point 6 of ll_circle shifted (0,0.5*pen_height)){right};
  outer_circle := outer_circle reflectedabout((0,0),(0,y_radius));
  lrs := (point 6 of ll_circle shifted (0,0.5*pen_height)){left}
         .. reverse (outer_circle cutbefore point 2 of outer_circle cutafter point 4.5 of outer_circle);
  ls := lls .. lrs .. cycle;

  % draw lls withcolor (1,0,1);
  % draw lrs withcolor (1,1,0);
  fill ls;

  rls := (inner_circle_hi cutbefore point 2 of inner_circle_hi cutafter point 3.8 of inner_circle_hi) reflectedabout ((0,0),(0,y_radius))
         .. (point 7.8 of inner_circle_lo)
         .. (point 6 of lr_circle shifted (0,0.5*pen_height)){left};
  outer_circle := outer_circle reflectedabout((0,0),(0,y_radius));
  rrs := (point 6 of lr_circle shifted (0,0.5*pen_height)){right}
         .. reverse (outer_circle cutbefore point 2 of outer_circle cutafter point 4.5 of outer_circle);
  rs := rls .. rrs .. cycle;

  % draw rls withcolor (1,0,1);
  % draw rrs withcolor (1,1,0);
  fill rs;

%   draw lr_circle withcolor red;
%   draw ll_circle withcolor green;
%   draw line withcolor blue;
  path loop;
  loop = point 2.25 of outer_circle
      .. tension 1.5
      .. point 2.25 of outer_circle shifted (0, -.5 * y_radius)
      .. point 0.5 of outer_circle
      ;
  draw loop reflectedabout((0,0),(0,y_radius));
endfig;
