/// @description Insert description here
/*
Script format: [step,action,actor,mood,var1,var2,...]
*/
// You can write your code in this editor
event_inherited();
Script=0
//Actors
farmer=instance_create_layer(-500,300,"Action",obj_farmer_actor);
herald=instance_create_layer(-500,400,"Action",obj_rich_actor);
guard1=instance_create_layer(-700,300,"Action",obj_strong_actor);
guard2=instance_create_layer(-700,400,"Action",obj_strong_actor);
//Script
Script[0,0]=0;Script[0,1]="move";Script[0,2]=farmer;Script[0,3]=0;Script[0,4]=400;Script[0,5]=300;Script[0,6]=3;
Script[1,0]=0;Script[1,1]="move";Script[1,2]=herald;Script[1,3]=0;Script[1,4]=400;Script[1,5]=400;Script[1,6]=3;
Script[2,0]=0;Script[2,1]="move";Script[2,2]=guard1;Script[2,3]=0;Script[2,4]=200;Script[2,5]=300;Script[2,6]=3;
Script[3,0]=0;Script[3,1]="move";Script[3,2]=guard2;Script[3,3]=0;Script[3,4]=200;Script[3,5]=400;Script[3,6]=3;
Script[4,0]=300;Script[4,1]="say";Script[4,2]=herald;Script[4,3]=0;Script[4,4]="text text blah blah";Script[4,5]=500;Script[4,6]=3;
Script[5,0]=301;Script[5,1]="say";Script[5,2]=herald;Script[5,3]=0;Script[5,4]="more text blah blah";Script[5,5]=500;Script[5,6]=3;
Script[6,0]=302;Script[6,1]="say";Script[6,2]=herald;Script[6,3]=0;Script[6,4]="even more text";Script[6,5]=500;Script[6,6]=3;
Script[7,0]=303;Script[7,1]="say";Script[7,2]=guard1;Script[7,3]=0;Script[7,4]="yes, sir";Script[7,5]=500;Script[7,6]=3;
Script[8,0]=304;Script[8,1]="say";Script[8,2]=guard2;Script[8,3]=0;Script[8,4]="indeed";Script[8,5]=500;Script[8,6]=3;
Script[9,0]=305;Script[9,1]="move";Script[9,2]=guard1;Script[9,3]=0;Script[9,4]=-200;Script[9,5]=500;Script[9,6]=3;
Script[10,0]=305;Script[10,1]="move";Script[10,2]=guard2;Script[10,3]=0;Script[10,4]=-200;Script[10,5]=600;Script[10,6]=3;
Script[11,0]=305;Script[11,1]="move";Script[11,2]=herald;Script[11,3]=0;Script[11,4]=-200;Script[11,5]=600;Script[11,6]=3;
Script[12,0]=400;Script[12,1]="end";Script[12,2]=farmer;Script[12,3]=0;

