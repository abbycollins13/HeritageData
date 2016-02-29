/*
 * DPLA Processing API
 * by Abigail Collins (for LMC2700 / GATech 2014)
 * Certain code borrowed from Michelle Partogi.
 */


String searchTerm;
StringBuffer searchTermTemp;
int arrayLength;
String totalEntries;


UserInput input;

void setup() {
    size(600, 600);
    smooth(1);
    background(51);
    
    
    
    searchTerm = "";
    searchTermTemp = new StringBuffer(searchTerm);
    input = new UserInput(10, 10, 500, 30);
}
void draw() {
  input.draw();
  if(size!= 0){
    barGraph(arrayLength);    
  }
}


void keyPressed(){
  input.keyPressed();
}


void loadData(){
  SearchQuery mySearch = new SearchQuery(searchTerm);
  arrayLength = mySearch.getSize();
}

void barGraph(int arrayLength){
  
  noStroke();
  fill(51);
  rect(0, 45, 600, 30);
  
  
  if (arrayLength != 0) {
    noStroke();
    fill(51);
    rect(0, 45, 600, 30);
    
    PFont font = createFont("georgia",20);
    totalEntries = str(arrayLength);
    textFont(font);
    fill(#FFFFFF);
      

    text("Search has " + totalEntries + " entries related to my heritage countries." , 25, 45);  
  
 } else {
  
    noStroke();
    fill(51);
    rect(0, 45, 600, 30);
  
    totalEntries = str(arrayLength);
    PFont font = createFont("georgia",20);
    textFont(font);
    fill(#FFFFFF);
    text("Search has no entries related to my heritage countries." , 25, 65);    
  }
  
  if (arrayLength < 100) {
    noStroke();
    fill(#A375FF);
    float xCoord = random(20,100);
    float yCoord = random(500,600);
    ellipse(xCoord, yCoord, 10, 10);
    
  } else if (arrayLength < 200 && arrayLength > 100) {
    noStroke();
    fill(#7A52CC);
    float xCoord = random(120,220);
    float yCoord = random(400,600);
    ellipse(xCoord, yCoord, 10, 10);  
    
 } else if (arrayLength < 300 && arrayLength > 200) {
    noStroke();
    fill(#6600CC);
    float xCoord = random(240,320);
    float yCoord = random(300,600);
    ellipse(xCoord, yCoord, 10, 10);
    
  } else if (arrayLength < 400 && arrayLength > 300) {
    noStroke();
    fill(#4C3380);
    float xCoord = random(340,450);
    float yCoord = random(200,600);
    ellipse(xCoord, yCoord, 10, 10);   
    
 } else if (arrayLength < 501 && arrayLength > 400){
    noStroke();
    fill(#2E1F4C);
    float xCoord = random(470,600);
    float yCoord = random(100,600);
    ellipse(xCoord, yCoord, 10, 10);
    
 }  
}  
