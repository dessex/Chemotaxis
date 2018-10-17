Bacteria[] colony;   
void setup() {  
  size (1000, 1000);
  colony= new Bacteria[100];
  for (int i=0; i<colony.length; i++) {
    colony[i]= new Bacteria();
  }
}

void draw()   
{
  background(0);
  for (int i=0; i<colony.length; i++) {
    colony[i].show();
    colony[i].walk();
    colony[i].search();
  }
}


class Bacteria    
{  
  int myX;
  int myY;
  float sizePicker = (int)(Math.random()*50)+1;
  int myRed = (int)(Math.random()*255)+1;
  int myGreen = (int)(Math.random()*255)+1;
  int myBlue= (int)(Math.random()*255)+1;

  Bacteria() {
    myX=(int)( Math.random()*1000) +1;
    myY=(int)( Math.random()*1000) +1;
  }

  void show() {
    noStroke();
    fill(myRed, myGreen, myBlue);
    ellipse(myX, myY, sizePicker, sizePicker);
  }

  void walk() {
    myX= myX+ ((int)(Math.random()*5)-2);
    myY= myY+ ((int)(Math.random()*5)-2);
  }
  void search() {
    if (mousePressed) {
      if (get(mouseX, mouseY) == color(myRed, myGreen, myBlue));
        sizePicker = sizePicker + 2;
    }
  }
}
