% Base font parameters
numeric font_size, pen_width, pen_height, x_height;
font_size  := 72pt;
pen_width  := 0.12 * font_size;
pen_height := 0.08 * font_size;
x_height   := 0.5 * font_size;

% Pens
pen square_pen ; square_pen = pensquare scaled pen_width;
pen peg_pen ;    peg_pen    = pensquare scaled pen_height;
pen thin_pen ;   thin_pen   = pencircle scaled pen_height;
pen fat_pen ;    fat_pen    = pencircle scaled pen_width;
pen flat_pen ;   flat_pen   = makepen ((0,0)--(pen_width,0));
pen tall_pen ;   tall_pen   = makepen ((0,0)--(0,1.75*pen_width));

% Format parameters
outputtemplate := "%j-%c.mps";
outputformat := "svg";

% Letters
input letters/U10400.mp; % Deseret Capital Letter Long I (𐐀)
input letters/U10401.mp; % Deseret Capital Letter Long E (𐐁)
input letters/U10402.mp; % Deseret Capital Letter Long A (𐐂)
input letters/U10403.mp; % Deseret Capital Letter Long Ah (𐐃)
input letters/U10404.mp; % Deseret Capital Letter Long O (𐐄)
input letters/U10405.mp; % Deseret Capital Letter Long Oo (𐐅)
input letters/U10406.mp; % Deseret Capital Letter Short I (𐐆)
input letters/U10407.mp; % Deseret Capital Letter Short E (𐐇)
input letters/U10408.mp; % Deseret Capital Letter Short A (𐐈)
input letters/U10409.mp; % Deseret Capital Letter Short Ah (𐐉)
input letters/U1040a.mp; % Deseret Capital Letter Short O (𐐊) 4000
input letters/U1040b.mp; % Deseret Capital Letter Short Oo (𐐋) 4001
% input letters/U1040c.mp; % Deseret Capital Letter Ay (𐐌) 4002
% input letters/U1040d.mp; % Deseret Capital Letter Ow (𐐍) 4003
% input letters/U1040e.mp; % Deseret Capital Letter W (𐐎) 4004
% input letters/U1040f.mp; % Deseret Capital Letter Yee (𐐏) 4005
input letters/U10410.mp; % Deseret Capital Letter H (𐐐)
input letters/U10411.mp; % Deseret Capital Letter Pe (𐐑)
% input letters/U10412.mp; % Deseret Capital Letter Bee (𐐒)
input letters/U10413.mp; % Deseret Capital Letter Tee (𐐓)
input letters/U10414.mp; % Deseret Capital Letter Dee (𐐔)
input letters/U10415.mp; % Deseret Capital Letter Chee (𐐕)
input letters/U10416.mp; % Deseret Capital Letter Jee (𐐖)
input letters/U10417.mp; % Deseret Capital Letter Kay (𐐗)
% input letters/U10418.mp; % Deseret Capital Letter Gay (𐐘)
% input letters/U10419.mp; % Deseret Capital Letter Ef (𐐙)
input letters/U1041a.mp; % Deseret Capital Letter Vee (𐐚) 4006
input letters/U1041b.mp; % Deseret Capital Letter Eth (𐐛) 4007
% input letters/U1041c.mp; % Deseret Capital Letter Thee (𐐜) 4008
% input letters/U1041d.mp; % Deseret Capital Letter Es (𐐝) 4009
input letters/U1041e.mp; % Deseret Capital Letter Zee (𐐞) 4010
input letters/U1041f.mp; % Deseret Capital Letter Esh (𐐟) 4011
% input letters/U10420.mp; % Deseret Capital Letter Zhee (𐐠)
input letters/U10421.mp; % Deseret Capital Letter Er (𐐡)
input letters/U10422.mp; % Deseret Capital Letter El (𐐢)
input letters/U10423.mp; % Deseret Capital Letter Em (𐐣)
input letters/U10424.mp; % Deseret Capital Letter En (𐐤)
input letters/U10425.mp; % Deseret Capital Letter Eng (𐐥)
input letters/U10426.mp; % Deseret Capital Letter Oi (𐐦)
input letters/U10427.mp; % Deseret Capital Letter Ew (𐐧)

end
