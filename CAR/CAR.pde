Car myCar;
Car myCar2;
Car myCar3;
Car myCar4;

void setup(){
fullScreen();
myCar=new Car();
myCar2=new Car();
myCar3=new Car();
myCar4=new Car();
}

void draw(){
clear();
myCar.drive();
myCar.display();
  myCar2.drive();
  myCar2.display();
    myCar3.drive();
    myCar3.display();
      myCar4.drive();
      myCar4.display();
}


class Car {
  color cCar;
  color cHjul;
  color cLygte;
  float xRect;
  float yRect;
  float xspeed;
  float yspeed;

Car(){
  cCar=color(random(0,200),random(0,200),random(0,200));
 xRect=width/3;
 yRect=height/3;
 xspeed=random(1,5);
 yspeed=random(-4,4);
}

void display(){
 rectMode(CENTER);
 ellipseMode(CENTER);
 fill(cCar);
 rect(xRect,yRect,50,50);
 rect(xRect+40,yRect,30,30);
 circle(xRect-20,yRect+30,25);
 circle(xRect+20,yRect+30,25);
}

void drive(){
  xRect=xRect+xspeed;
  if(xRect>width){
  xRect=0;
  }
   yRect=yRect+yspeed;
  if(yRect<0||yRect>1100){
  yRect=random(1,1000);
  }
}
}
