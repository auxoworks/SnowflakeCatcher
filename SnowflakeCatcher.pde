int x=5; 
int y=1;
int siz=10;
int bx=150;
int by=200;
float b1x=152;
float b1y=202;
int counter=0;
int numsno=200;
Snowflake [] Snoflake;
void setup()
{
  size(400,400);
  Snoflake = new Snowflake[numsno];
  for (int i=0;i<Snoflake.length;i++)
  {
  Snoflake[i] = new Snowflake();
}
  //your code here
}

void draw()
{
  background (0);           
  fill(255);
  text("snowflake counter:"+counter,270,370);
  noFill();
  stroke(255);
  arc(bx+50,by,100,100,0,2*PI);
  fill(233);
  quad(bx,by,bx+100,by,bx+90,by+100,bx+10,by+100);
  stroke(0);
  fill(1,1,1);
  arc(bx+50,by+5,90,10,0,PI);
  arc(bx+50,by+7,90,10,PI,2*PI);
for (int i=0;i<Snoflake.length;i++)
{
  Snoflake[i].show();
  Snoflake[i].move();
  Snoflake[i].erase();
  //your code here
}
}
void mouseDragged()
{
bx=mouseX-50;
by=mouseY;
  //your code here
}

class Snowflake
{
  int myX;
  int myY;
  int xMove=x;
  int yMove=y;
  int and1=counter;
  int colr=((int)(Math.random()*256)+90);
  //class member variable declarations
  Snowflake()
  {
  myX=(int)(Math.random()*401);
  myY=(int)(Math.random()*401);
  //class member variable initializations
  }
  void show()
  {
     {
  int clor=color(colr,colr,colr);
  fill(clor);
  ellipse(myX,myY,siz,siz);
  }//your code here
  }
  void lookDown()
  {
    //your code here
  }
  void erase()
 {
 if (get(myX,myY+5)==color(1,1,1))
  {

  myX=-10;
  counter++;
    //your code here
  }
  }
  void move()
{
  myX=myX+(int)(Math.random()*xMove)-yMove;
  myY=myY+(int)(Math.random()*xMove)-yMove;
  if (myX==400){
    myX=0;
   }   
   if (myY==400){
    myY=0;
  }

  }
  void wrap()
  {
    //your code here
  }
}


