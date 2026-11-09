% U+0039 DIGIT NINE (9)
beginfig(57);
  % The 6 turned half round.
  pickup stress_pen;
  draw fullcircle xscaled 2dw yscaled 1.2fig_top shifted (0, 0.4fig_top);
  draw (-0.9dw, -0.75fig_top){dir 315}
       .. (0, -fig_top){right}
       .. (dw, -0.2fig_top){up}
       .. {up}(dw, 0.4fig_top);
endfig;
