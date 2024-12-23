% U+10402 𐐂
beginfig(402);
  x_radius := 0.4 * font_size;
  y_radius := 0.5 * font_size;

  numeric half_x;
  half_y := 0.4 * x_height;
  numeric a;
  a := x_radius;

  path cloverleaf;
  cloverleaf := (0, 0);
  for t = 0 step 0.05 until 720:
    pair p;
    p := (a * cosd(2 * t) * cosd(t), a * cosd(2 * t) * sind(t));
    cloverleaf := cloverleaf .. p;
  endfor;
  cloverleaf := cloverleaf .. cycle;

  draw cloverleaf withcolor black;
endfig;
