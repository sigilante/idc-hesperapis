% U+007D RIGHT CURLY BRACKET (})
beginfig(125);
  pickup stress_pen;
  draw (-0.14font_size, 1.1y_radius){right}
       .. (0, 0.9y_radius){down}
       .. (0, 0.15y_radius){down}
       .. {right}(0.12font_size, 0);
  draw (0.12font_size, 0){left}
       .. (0, -0.15y_radius){down}
       .. (0, -0.9y_radius){down}
       .. {left}(-0.14font_size, -1.1y_radius);
endfig;
