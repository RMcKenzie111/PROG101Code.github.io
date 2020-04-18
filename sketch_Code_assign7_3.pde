//DATA LINK: https://catalog.data.gov/dataset/tribes-physically-located-within-fifty-miles-of-a-nuclear-power-plant/resource/ce6f8ddb-000c-4fc5-83ba-634344462209
//THIS DATA IS NATIVE AMERICAN RESERVATIONS AND TRUST LAND WITHIN A 50 MILE RADIUS
//OF A NUCLEAR POWER PLANT; THIS IS A POLITICAL ISSUE BECASUE OF THE RISKS POSED BY POWER PLANTS
//REGARDING NATIVE AMERICANS COALS POWERED BY POWER PLANTS SPECIFICALLY HAVE A HIGH 
//ENVIRONMENTAL COST FOR THEIR LAND, BUT ALSO PROVIDE HIGH PAYING JOBS
PFont titleFont, labelFont;

String[] resStates = {"AZ", "CT", "FL", "IA", "KS", "MI", "MN", "NE"};
int[] resPlant = {3, 4, 5, 2, 2, 5, 7, 5};
String[] stateNames = {"Arizona", "Conneticut", "Florida", "Iowa", "Kansas", "Michigan", "Minnesota", "Nebraska"};

void setup() {
  size(1000, 400);
  titleFont = loadFont("GillSans-Bold-18.vlw");
  labelFont = loadFont("GillSans-12.vlw");
  smooth();
  rectMode(CENTER);
}

void draw() {
  background(#333333);
  noStroke();
  
  
  int bb = 60;
  int lb = 95; 
  
  for(int i = 0; i < resStates.length; i++) {
    int w = 50; 
    int s = 50; 
    int [] t = new int[resStates.length]; 
    t[i] = resPlant[i] * 20;
    int [] x = new int[resStates.length];
    x[i] = int(lb + (i + .5) * (w + s));
    int [] y = new int[resStates.length];
    y[i] = height - bb - t[i]/2;
    
    if((mouseX > (x[i] - w/2)) && (mouseX < (x[i] + w/2)) &&
        (mouseY > (y[i] - t[i]/2)) && (mouseY < (x[i] + w/2))){
        fill(#FA6E03);
        textAlign(RIGHT);
         if(mousePressed) {
           text(stateNames[i] + ": " + resPlant, x[i], y[i], - t[i]/2 - 10);
           fill(#23E0F7);
 }
    
        } else {
          fill(#9EF707);
        }
        rect(x[i], y[i], w, t[i]);
        
        textAlign(CENTER);
        textFont(labelFont);
        fill(#2603FA);
        text(resStates[i], x[i], height - bb/2);
  }
  
  stroke(#CCCCCC);
  textFont(labelFont);
  textAlign(RIGHT, CENTER);
  for(int i = 0; i < 8; i++) {
    int y = height - bb - i * 20;
    line(lb - 5, y, lb - 8, y);
    text(i, lb - 15, y);
  }
  
   textAlign(CENTER);
        textFont(titleFont);
        text("Native American Reservations and Trust Land Within 50 Miles of a NuclearPowerPlant", width/2, 30);
}
 
