float x = 0, v=25, y=440, z=0, c=10.5,n=60,b=52.5;
PImage photo;
void setup() {
  size(400, 400);
  noStroke();
  smooth();
  ellipseMode(CENTER);

  photo = loadImage("http://i.imgur.com/H7x3QUX.jpg?4");
}



void draw(){
frameRate(7);
 noStroke(); 
float randomQ = random(0, 255), randomW = random(0, 255), randomE = random(0, 255), randomR = random(0, 255), randomT = random(0, 255), randomY = random(0, 255);




background(3, 0, 79);
fill(139,69,19);
rect(150, 300, 100, 100);
fill(3, 0, 79);
ellipse(275,355,100,100);
ellipse(125,355,100,100);
float t =  (frameCount/100.0)%1;
  float l = bezierPoint(70, 5, 5, 70, t);
  float k = bezierPoint( -25, 100, 300, 625, t);
 float j = bezierPoint(70, 5, 5, 70, t);
  float h = bezierPoint( -25, 100, 300, 625, t);

fill(255, 233, 33);
ellipse(k, l, 50, 50);
fill(3, 0, 79);
ellipse(k+10,l-10, 55, 50);

image(photo, h-200,j);


fill(9, 89, 11);
triangle(50, 350, 350, 350, 200, 200);
triangle(75, 275, 325, 275, 200, 150);
triangle(100, 200, 300, 200, 200, 100);
triangle(125, 140, 275, 140, 200, 50);


fill(133, 131, 131);
rect(187, 270, 10, 10);
rect(160, 200, 10, 10);
rect(230, 160, 10, 10);
rect(240, 230, 10, 10);
fill(133, 131, 131);
rect(120, 310, 10, 10);
rect(170, 125, 10, 10);
rect(224, 100, 10, 10);
rect(270, 285, 10, 10);

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



if(x%2==0)
{
    fill(255, 0, 0);
}
else
{
    fill(9,89,11);
}
textSize(25);
text("Happy ",275,50);
if(x%2==0)
{
    fill(9, 89, 11);
}
else
{
    fill(265,0,0);
}

text("Holidays!",262.5,80);



x++;
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


for(float i=1;i<25;i++){
    fill(255, 255, 255);
    ellipse(random(width),random(height),5,5);
    ellipse(random(width),random(height),7,7);
    ellipse(random(width),random(height),1,1);
    ellipse(random(width),random(height),3,3);
    ellipse(random(width),random(height),4,4);
    ellipse(random(width),random(height),6,6);
    ellipse(random(width),random(height),2,2);
   
}

if(y>=390)
{
    y--;
    
}
else
{
    y=440;
}

ellipse(300,y+10,250,50);
ellipse(100,y,250,50);

}
