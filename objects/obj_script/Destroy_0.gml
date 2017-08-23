/// @description Insert description here
/*
Object scripts are scripts for object actors to play during scenes.
Object scripts contain a bidimensional array with information of 
what every actor has to do in every step of the animation.
Every row of the array is an action and contains this information:
Script[X,0]=the moment when it starts, counted in game steps
Script[X,1]=The actor that has to perform the action
Script[X,2]=The action to be performed
Script[X,3]=The mood of the actor (for graph purposes, etc)
Script[X,4+]=variables needed for the action
Every scene uses the array Script[], so, scenes have to "charge" the 
scene script into Script[] before playing it. It happens because every 
script object when created changes the content of script and executes it.

The script object also initializes the actors and needed items, so they 
are created in the create event of the sript object.
In a similar way, the script object shall have all orders to reset 
the stage to the next act in its destroy event.

It is possible to pause the play with the variable playing. It is 
ueful for example when an actor speaks.

NOTE: this may be exactly the same as timelines, but as I do not know 
anything about them, cos I´m new, I´m using my own system.
*/
// You can write your code in this editor
