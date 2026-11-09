% U+002A ASTERISK (*)
beginfig(42);
  % Six spokes about a centre high in the cap height.
  pickup fat_pen;
  for a = 90 step 60 until 390:
    draw (0, 0.5y_radius) -- ((0, 0.5y_radius) + 0.14font_size * dir a);
  endfor;
endfig;
