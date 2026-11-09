% U+007B LEFT CURLY BRACKET ({)
beginfig(123);
  pickup stress_pen;
  draw (0.14font_size, 1.1y_radius){left}
       .. (0, 0.9y_radius){down}
       .. (0, 0.15y_radius){down}
       .. {left}(-0.12font_size, 0);
  draw (-0.12font_size, 0){right}
       .. (0, -0.15y_radius){down}
       .. (0, -0.9y_radius){down}
       .. {right}(0.14font_size, -1.1y_radius);
endfig;
