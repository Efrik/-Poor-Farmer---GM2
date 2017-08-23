/// @description Insert description here
/*
This part only initialises the script, and destroys this object when finished
*/
// You can write your code in this editor
if playing=1{

for (i=0;i<array_height_2d(Script);i++){
	if step==Script[i,0]{
		Script[i,2].mood=Script[i,3];
		switch (Script[i,1]) {
			case "move": // (actor,destinyX,destiniY,speed)
				Script[i,2].i=i
				with (Script[i,2]){move=1;endx=Script[i,4];endy=Script[i,5];speed=Script[i,6]};
				break;
			case "say": //(actor, text)
				Script[i,2].i=i
				with (Script[i,2]){speak=1;speech=Script[i,4]};
				break;
			case "end":
				instance_destroy();
				break;
		};
	}
};
step++;
} //if playing!=1; if playing=0