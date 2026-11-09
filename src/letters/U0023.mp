% U+0023 NUMBER SIGN (#)
beginfig(35);
  pickup stress_pen;
  for x = -0.1font_size, 0.1font_size:
    draw (x + 0.03font_size, 0.8y_radius) -- (x - 0.03font_size, -0.8y_radius);
  endfor;
  for y = -0.3y_radius, 0.3y_radius:
    draw (-0.24font_size, y) -- (0.24font_size, y);
  endfor;
endfig;
