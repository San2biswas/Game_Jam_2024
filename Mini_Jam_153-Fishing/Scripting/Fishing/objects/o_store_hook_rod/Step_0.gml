/// @description 

scr_controls()

sideways_spd = 5

if (key_a)  x = x - sideways_spd
if (key_d)  x = x + sideways_spd


if (key_w) image_yscale = image_yscale - 0.02
if (key_s) image_yscale = image_yscale + 0.02

if image_yscale < 0.5 image_yscale = 0.5
if image_yscale > 2.5 image_yscale = 2.5

if x > 490 x = 490
if x < 260 x = 260
