if gotime = true and values_in_range(x,y,player.x-200,player.x+200,player.y-200,player.y+200) // If it's close to the player and not stunned
{
endframe = ((direction/90)*4)+4
startframe = (direction/90)*4

image_index += speed*.1

if image_index >= endframe
{
image_index = startframe
}

if image_index < startframe
{
image_index = startframe
}

depth = -y
}

