move_speed = 500;
walkSpeed = 300;
runspeed = 500;

movement_inputs[0] = ord("D");
movement_inputs[1] = ord("W");
movement_inputs[2] = ord("A");
movement_inputs[3] = ord("S");


x_frame = 0;
y_frame = 8;

x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);

spritebody = sprMale1;
spriteFeet = maleBrownShoes;
spriteLegs = male_white_pants;
spriteShirt = brown_longsleeve;
spriteHair = sprblonde2;
spriteWeapon = longsword_male;

playerIdleCounter = 0;