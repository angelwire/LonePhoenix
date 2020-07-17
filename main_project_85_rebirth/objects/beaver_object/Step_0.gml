/// @description check if in range
player_in_range = values_in_range(x, y, player.x - 400, player.x + 400, player.y - 400, player.y + 400) // If it's close to the player and not stunned

///animation stuff 
if stun_timer < 1
{
	if gotime = true
	{
		if (direction < 0)
		{
			direction += 360;
		}
		
		if stuntimer < 1 // if it's not stunned
		{
			endframe = ((direction / 90) * 4) + 4
			startframe = (direction / 90) * 4
			my_index += speed * .15
		}
		
		
		if (iamattacking = true and attackprep < 1) or attackprep < 10 //If I'm attacking
		{
			startframe = 15;
			endframe = 19;
			my_index += .3;
		}

		if my_index >= endframe
		{
			my_index = startframe;
		}

		if my_index < startframe
		{
			my_index = startframe;
		}

		depth = -y;


	}

	image_index = floor(my_index);
}

/* */
///attacking code
if stun_timer < 1
{
	if gotime = true
	{

		if instance_exists(player) // If there is a player
		{
			if player_in_range
			{

				if distance_to_object(player) < mydistance // If it's close to the player and not stunned
				{
					if stuntimer = 0
					{

						if ((abs(x - player.x) < 4 or abs(y - player.y) < 4) or iamattacking = true) //If it's aligned with the player and there's nothing in the way
						{
							if !collision_line(x - 4, y - 4, player.x, player.y, block_object, 0, true)
							and!collision_line(x + 4, y - 4, player.x, player.y, block_object, 0, true)
							and!collision_line(x + 4, y + 4, player.x, player.y, block_object, 0, true)
							and!collision_line(x - 4, y + 4, player.x, player.y, block_object, 0, true)
							{
								if iamattacking = false //If it's not attacking yet
								{
									speed = 0 //stop the buffalo!
									direction = round(point_direction(x, y, player.x, player.y) / 90) * 90 //Turn it in the right direction
									iamattacking = true //Tell it that it's attacking
									attackprep = 40 //Set the attacking prep timer
									attacktimer = 60;
								}
								else // If it is attacking
								{
									if attackprep = 0 //If the prep timer has gone off
									{
										speed = 1 //GOOO!!!
										attacktimer = 80; //Sets the stop timer
										attackprep = -1;
									}
									else // If the prep timer hasn't gone off
									{
										attackprep -= 1; //Update the prep timer
									}

								}
							}
							else
							{
								mydistance = 1;
								mydistancetimer = round(random(60) + 60)
							}


						}
						else //If it's not aligned with the player then try to align itself
						{
							if abs(x - player.x) <= abs(y - player.y) //check which way to align
							{
								//align x
								direction = 180 * (player.x < x)
								if !place_meeting(x + cosine(direction) * 1, y - sine(direction) * 1, block_object)
								{
									speed = 1;
								}
								else
								{
									speed = 0;
									mydistance = 1;
									mydistancetimer = 90;
								}

							}
							else
							{
								//align y
								direction = 180 * (player.y > y) + 90
								if !place_meeting(x + cosine(direction) * 1, y - sine(direction) * 1, block_object)
								{
									speed = 1;
								}
								else
								{
									mydistance = 1;
									speed = 0;
									mydistancetimer = 90;
								}


							}
							//mydistance -= .3;
						}
					}

				}
				else
				{
					iamattacking = false //Tell it that it's not attacking
					attackprep = 40 //Set the attacking prep timer
					attacktimer = 60; //Set the attack timer


					if stuntimer = 0
					{
						roam()
					}

				}

			}
			else
			{
				ignore_speed();
			}

		}

		if stuntimer > 0 //Update the stun timer
		{
			speed = 0;
			stuntimer -= 1;
		}


		if iamattacking = true and attackprep < 1 //If I'm attacking
		{

			if (attacktimer mod 5 = 0)
			{
				create_hurt_block(x, y - 8, 24, 16, 1, 15, 0, 0, id);
			}

			if attacktimer < 10
			{
				speed = 1
			}
			if attacktimer < 1 //If it should stop
			{
				speed = 0 //STOP!!!!!1!!1!
				iamattacking = false; //It's not attacking any more
				attackprep = 40; ////////////////////////////////////////////Reset the attackPrep timer
			}
			else //If the attack timer hasn't gone off
			{
				attacktimer -= 1; //Update the attack timer
			}


			if place_meeting(x + cosine(direction) * 4, y - sine(direction) * 4, block_object) //If it is about to run into something
			{
				speed = 0; //STOP!
				iamattacking = false; //I'm hurt so I can't attack any more
				attackprep = 40; ////////////////////////////////////////////Reset the attackPrep timer

				if attacktimer > 50 //if it's just bumping against a wall
				{
					iamattacking = false //Tell it that it's not attacking
					//attackprep = 40 //Set the attacking prep timer
					attacktimer = 60; //Set the attack timer
					mydistance = 1
					mydistancetimer = round(random(60) + 60)
					direction += (irandom(2) + 1) * 90;
				}

			}


		}

		if mydistance = 1
		{
			mydistancetimer -= 1;
			if mydistancetimer < 60
			{
				mydistance = 70
				mydistancetimer = round(random(60) + 60)
			}
		}


	}
	else
	{
		ignore_speed()
	}
}
else
{
	stun_timer -= 1;
	ignore_speed();
}



/* */
///control collisions
if player_in_range
{
	if place_meeting(x, y, bullet_object)
	{
		if iamattacking = true and attackprep < 1
		{
			with(instance_nearest(x, y, bullet_object))
			{
				instance_create(x, y, expel_object);
				instance_destroy();
			}
			audio_play_sound(klink_sound, 1, 0);
		}
		else
		{
			with(instance_nearest(x, y, bullet_object))
			{
				instance_destroy();
			}
			my_health -= 3 * get_damage_multiple();
			audio_play_sound(enemy_ouch_sound, 1, 0);


			if equipped_gloves = 20 and stun_timer < 1
			{
				if random(100) * .01 < get_gear_percentage(20, global.items[20]) + get_snake_oil_offset()
				{
					stun_timer = 100;
				}
				else
				{
					show_debug_message("random chance to stun failed");
				}
			}
		}
	}
	///Tomahawk
	if place_meeting(x, y, tomahawk_object)
	{
		if iamattacking = true and attackprep < 1
		{
			with(instance_nearest(x, y, tomahawk_object))
			{
				instance_create(x, y, expel_object);
				instance_destroy();
			}
			audio_play_sound(klink_sound, 1, 0);
		}
		else
		{
			with(instance_nearest(x, y, tomahawk_object))
			{
				instance_destroy();
			}
			my_health -= 5 * get_damage_multiple();
			audio_play_sound(enemy_ouch_sound, 1, 0);


			if equipped_gloves = 20 and stun_timer < 1
			{
				if random(100) * .01 < get_gear_percentage(20, global.items[20]) + get_snake_oil_offset()
				{
					stun_timer = 100;
				}
				else
				{
					show_debug_message("random chance to stun failed");
				}
			}
		}
	}

	///Power Tomahawk
	if place_meeting(x, y, power_tomahawk_object)
	{
		if iamattacking = true and attackprep < 1
		{
			with(instance_nearest(x, y, power_tomahawk_object))
			{
				instance_create(x, y, expel_object);
				instance_destroy();
			}
			audio_play_sound(klink_sound, 1, 0);
		}
		else
		{
			with(instance_nearest(x, y, power_tomahawk_object))
			{
				instance_destroy();
			}
			my_health -= 10 * get_damage_multiple();
			audio_play_sound(enemy_ouch_sound, 1, 0);


			if equipped_gloves = 20 and stun_timer < 1
			{
				if random(100) * .01 < get_gear_percentage(20, global.items[20]) + get_snake_oil_offset()
				{
					stun_timer = 100;
				}
				else
				{
					show_debug_message("random chance to stun failed");
				}
			}
		}
	}


	//Player hurt block
	if place_meeting(x, y, hurt_block_player)
	{
		if iamattacking = true and attackprep < 1
		{
			with(instance_nearest(x, y, hurt_block_player))
			{
				instance_create(x, y, expel_object);
				instance_destroy();
			}
			audio_play_sound(klink_sound, 1, 0);
		}
		else
		{
			with(instance_nearest(x, y, hurt_block_player))
			{
				instance_destroy();
			}
			my_health -= 4 * get_damage_multiple();
			audio_play_sound(enemy_ouch_sound, 1, 0);


			if equipped_gloves = 20 and stun_timer < 1
			{
				if random(100) * .01 < get_gear_percentage(20, global.items[20]) + get_snake_oil_offset()
				{
					stun_timer = 100;
				}
				else
				{
					show_debug_message("random chance to stun failed");
				}
			}
		}
	}


	if my_health <= 0
	{
		instance_destroy();
		instance_create(x, y, beaver_pelt_object);

		if my_id != 1
		{
			enemy_should_spawn[my_id] = false;
		}

	}

}