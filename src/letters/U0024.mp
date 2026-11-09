% U+0024 DOLLAR SIGN ($)
beginfig(36);
  pickup stress_pen;
  draw (0.9dw, 0.55fig_top){dir 120}
       .. (0, 0.8fig_top){left}
       .. (-0.9dw, 0.4fig_top){down}
       .. (0, 0){right}
       .. (0.9dw, -0.4fig_top){down}
       .. (0, -0.8fig_top){left}
       .. {dir 120}(-0.9dw, -0.55fig_top);
  pickup thin_pen;
  draw (0, y_radius) -- (0, -y_radius);
endfig;
