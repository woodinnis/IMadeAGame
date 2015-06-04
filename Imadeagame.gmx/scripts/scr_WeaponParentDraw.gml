// Code to execute on the drawing event of a weapon object
draw_self();

// Determine the size of the arrow based on how far away you get from the click
arrowForce = x + mouse_x;

/* Set the start and end coordinates of the arrow
arrowEndX = (mouse_x + x) / 2;
arrowEndY = (mouse_y + y) / 2;
arrowTipX = (x + x) / 2; 
arrowTipY = (y + y) / 2;
*/

draw_set_color(c_navy);

if(mouse_check_button(mb_left))
{
    if(G_playerScore <= 0)
    {
        draw_set_colour(c_yellow);
        draw_text(x,y,"FLING ME!");
        //draw_arrow(arrowEndX, arrowEndY, arrowTipX, arrowTipY, 2 * (arrowForce));
    }
    draw_text(dragX,dragY,"CLICK!");
}
