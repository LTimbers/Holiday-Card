float x = 0, flash=0, v=25, y=440, z=0, c=10.5, n=60, b=52.5;

int quantity = 400;
float [] xPosition = new float[quantity];
float [] yPosition = new float[quantity];
int [] flakeSize = new int[quantity];
int [] direction = new int[quantity];
int minFlakeSize = 1;
int maxFlakeSize = 5;

PImage photo;
void setup() {
  frameRate(10);
  size(400, 400);
  noStroke();
  smooth();
  loop();
  ellipseMode(CENTER);

  photo = loadImage("http://i.imgur.com/H7x3QUX.jpg?4");
  
  for(int i = 0; i < quantity; i++) {
    flakeSize[i] = round(random(minFlakeSize, maxFlakeSize));
    xPosition[i] = random(0, width);
    yPosition[i] = random(0, height);
    direction[i] = round(random(0, 1));
  }
}



void draw(){


float randomQ = random(0, 255), randomW = random(0, 255), randomE = random(0, 255), 
randomR = random(0, 255), randomT = random(0, 255), randomY = random(0, 255);




background(3, 0, 79);
fill(139,69,19);
rect(150, 300, 100, 100);
fill(3, 0, 79);
ellipse(275,355,100,100);
ellipse(125,355,100,100);
float t =  (frameCount/100.0)%1;
//arc for moon
float l = bezierPoint(70, 5, 5, 70, t);
float k = bezierPoint( -25, 100, 300, 625, t);
//arc for santa
float j = bezierPoint(70, 5, 5, 70, t);
float h = bezierPoint( -25, 100, 300, 625, t);

//Creates Moon
fill(255, 233, 33);
ellipse(k, l, 50, 50);
fill(3, 0, 79);
ellipse(k+10,l-10, 55, 50);

//Santa
image(photo, h-200,j);


//Christmas Tree
fill(9, 89, 11);
triangle(50, 350, 350, 350, 200, 200);
triangle(75, 275, 325, 275, 200, 150);
triangle(100, 200, 300, 200, 200, 100);
triangle(125, 140, 275, 140, 200, 50);

//Top of Ornaments
fill(133, 131, 131);
rect(187, 270, 10, 10);
rect(160, 200, 10, 10);
rect(230, 160, 10, 10);
rect(240, 230, 10, 10);
rect(120, 310, 10, 10);
rect(170, 125, 10, 10);
rect(224, 100, 10, 10);
rect(270, 285, 10, 10);


//White Star
beginShape();
fill(255, 255, 255);
vertex(175, 40);
vertex(195.25, 40);
vertex(200, 20);
vertex(206.25, 40);
vertex(225, 40);
vertex(209.5, 51.25);
vertex(215, 70);
vertex(200, 58.75);
vertex(185, 70);
vertex(190.5, 51.25);
endShape(CLOSE);


//Flashing Star
beginShape();

if(x%2==0)
{
    fill(255, 238, 0);
}
else
{
    fill(255, 238, 0,100);
}

vertex(175, 40);
vertex(195.25, 40);
vertex(200, 20);
vertex(206.25, 40);
vertex(225, 40);
vertex(209.5, 51.25);
vertex(215, 70);
vertex(200, 58.75);
vertex(185, 70);
vertex(190.5, 51.25);
endShape(CLOSE);





x+=.5;



//Flashing Ornaments

fill(randomQ,randomW,randomE);
ellipse(275,300,20,20);
fill(randomQ,randomR,randomE);
ellipse(192,285,20,20);
fill(randomQ,randomW,randomT);
ellipse(165,215,20,20);
fill(randomY,randomW,randomE);
ellipse(235,175,20,20);
fill(randomR,randomT,randomY);
ellipse(245,245,20,20);
fill(randomE,randomW,randomQ);
ellipse(125,325,20,20);
fill(randomR,randomW,randomT);
ellipse(175,140,20,20);
fill(randomY,randomT,randomE);
ellipse(175,140,20,20);
fill(randomR,randomY,randomR);
ellipse(229,115,20,20);





//Increasing Snow Piles
fill(255, 255, 255);
if(y>=390)
{
    y-=1;
    
}
else
{
    y=440;
}

ellipse(300,y+10,250,50);
ellipse(100,y,250,50);

//float fall=0;
//Falling Snow
  for(int i = 0; i < xPosition.length; i++) {
    
    ellipse(xPosition[i], yPosition[i], flakeSize[i], flakeSize[i]);
    
    if(direction[i] == 0) {
      xPosition[i] += map(flakeSize[i], minFlakeSize, maxFlakeSize, .1, .5);
    } else {
      xPosition[i] -= map(flakeSize[i], minFlakeSize, maxFlakeSize, .1, .5);
    }
    
    yPosition[i] += flakeSize[i] + direction[i]; 
    
    if(xPosition[i] > width + flakeSize[i] || xPosition[i] < -flakeSize[i] || yPosition[i] > height + flakeSize[i]) {
      xPosition[i] = random(0, width);
      yPosition[i] = -flakeSize[i];
    }
    
  }


if(mousePressed==true){
    if(x%2==0)
{
  fill(60,141,13);
}
else
{
  fill(212, 36, 38);
}
textSize(40);
text("Happy ",mouseX,mouseY);
text("Holidays!",mouseX-20,mouseY+45);
}

}