if values_in_range(x,y,player.x-150,player.x+150,player.y-150,player.y+150) // If it's close to the player and not stunned
{  
draw_self()
draw_sprite(tree_leaves_sprite,y+x+x,x+branchoff[0],y-2+abs(branchoff[0]/2));
draw_sprite(tree_leaves_sprite,y+x+y,x+branchoff[1]-8,y+4+abs(branchoff[0]/2));
draw_sprite(tree_leaves_sprite,x+x+x+y,x+branchoff[2]+8,y+4+abs(branchoff[0]/2));
draw_sprite(tree_leaves_sprite,y+y+y+x,x+branchoff[3],y+8+abs(branchoff[0]/2));
draw_sprite(tree_leaves_sprite,x+45+y,x+branchoff[4]-10,y+18+abs(branchoff[0]/2));
draw_sprite(tree_leaves_sprite,y+23+x,x+branchoff[5],y+20+abs(branchoff[0]/2));
draw_sprite(tree_leaves_sprite,x+x+y+y,x+branchoff[6]+10,y+18+abs(branchoff[0]/2));
}

