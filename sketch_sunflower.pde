//Man Zhu
//Expressive Computation
//Georgetown University, CCT program

int numberofflower=int(random(5, 20));
float[] x= new float[numberofflower];
float[] y= new float[numberofflower];
color[] flowercolor=new color[numberofflower];

void setup() {
  background(255);
  size(700, 500);
  smooth();
  for (int i = 0;i<numberofflower;i++) {
    x[i]=random(0, width);
    y[i]=random(height/2,height);
    flowercolor[i]=color(252,random(157,205),random(78,203));

  }
  }

void draw() {
  background(255);
  fill(#97DEFF);
  rect(0,0,700,300);
  for (int i=0;i<numberofflower;i++) {
    sunflower(x[i], y[i],flowercolor[i]);
       y[i]=y[i]+1;
   if(y[i]>height){
   y[i]=height/2;
   
   }
  }
}

//draw the first sunflower
void sunflower(float x, float y, color C) {
  noStroke();
  fill(#C9FFD5);
  rect(x, y, 5, 125);//the branch of the flower
  fill(#74CEB7);
  ellipse(x+25, y+100, 50, 20);//the right leaf of the flower
  ellipse(x-25, y+100, 50, 20);//the left leaf of the flower
  fill(C);
  ellipse(x, y-25, 25, 25);//the upper petal 
  ellipse(x, y+25, 25, 25);//the lower petal
  ellipse(x-25, y, 25, 25);//the left petal
  ellipse(x+25, y, 25, 25);//the right petal
  ellipse((x-sin(radians(45))*25), (y-sin(radians(45))*25), 25, 25);//the upper left corner petal
  ellipse((x+sin(radians(45))*25), (y-sin(radians(45))*25), 25, 25);//the upper right corner petal
  ellipse((x-sin(radians(45))*25), (y+sin(radians(45))*25), 25, 25);//the lower left corner petal
  ellipse((x+sin(radians(45))*25), (y+sin(radians(45))*25), 25, 25);//the lower right corner petal
  fill(#FFFFCB);
  ellipse(x, y, 50, 50);//the core of the sunflower
 
}

