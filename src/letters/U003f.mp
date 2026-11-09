% U+003F QUESTION MARK (?)
beginfig(63);
  pickup stress_pen;
  draw (-0.8dw, 0.5fig_top){up}
       .. (0, fig_top){right}
       .. (0.8dw, 0.5fig_top){down}
       .. (0, 0.05fig_top){dir 250}
       .. {down}(0, -0.3y_radius);
  dot_at((0, -y_radius + 0.5dot_d));
endfig;
