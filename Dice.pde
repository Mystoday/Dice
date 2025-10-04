int s=0;
class Die{
 
int myX, myY;

Die(int x, int y){
myX=x;
myY=y;

}

void roll(){
int f =(int)(Math.random()*6 +1);
s=s+f;
fill(200,200,200);
noStroke();
rect(300,460,85,50);
stroke(0,0,0);
strokeWeight(10);
if(f==1){
point(myX+25,myY+25);
}
else if (f==2){
 point(myX+10,myY+10);
 point(myX+40,myY+40);
}
else if (f==3){
 point(myX+10,myY+10);
 point(myX+25,myY+25);
  point(myX+40,myY+40);
}
else if (f==4){
 point(myX+10,myY+10);
 point(myX+40,myY+10);
 point(myX+10,myY+40);
 point(myX+40,myY+40);
}
else if (f==5){
 point(myX+10,myY+10);
 point(myX+40,myY+10);
 point(myX+10,myY+40);
 point(myX+40,myY+40);
  point(myX+25,myY+25);
}
else if (f==6){
 point(myX+10,myY+10);
 point(myX+10,myY+25);
 point(myX+10,myY+40);
 point(myX+40,myY+10);
  point(myX+40,myY+25);
  point(myX+40,myY+40);
}
fill(255,255,255);
text(s,300,500);
}
void show(){
fill(255,255,255);
strokeWeight(1);
rect(myX,myY,50,50);
}
}//end of class die

Die Die1;

void setup(){
noLoop();
background(200,200,200);
size(530,530);
textSize(50);
text("Total: ",150,500);

}
 void draw(){
 s=0;
   for(int y=50;y<450;y+=50){
   for( int x=50;x<450;x+=55){
 Die1=new Die(x,y);
 Die1.show();
 Die1.roll();
   
   }
   }
 }
void mousePressed(){
redraw();
}
