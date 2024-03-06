//  initialize a new array with just one object in the class called Creature
Creature[] myCreature = new Creature[1];

//  initialize variables for width, height, eyeSize, armSize and speed
int w = 50;
int h = 80;
int e = 25;
int a = 5;
int s = 10;
int i = 0;

void setup () {
  size(500, 500);
  // initialize an object with parameteres from the Class Creature
  // with x and y coordinates at 100
  myCreature[0] = new Creature(100, 100, w, h, e, a, s);
  //println(myCreature[0].get("x"));
}

void draw() {
  background(255);
  //  a for loop that calls the function move() and display() 
  //  for every myCreature object
  for (int i = 0; i < myCreature.length; i++) {
  myCreature[i].move();
  myCreature[i].display();
  }
  //  prints the x position of the new creature when it's first drawn
  while (myCreature.length > i){
    println(myCreature[i].get("x")-myCreature[i].get("speed"));
    i++;
  }
}

// function that runs code whenever the mouse is pressed
void mousePressed() {
  //  initialize a new object at the mouse location
Creature b = new Creature (mouseX, mouseY, w, h, e, a, s);
  // adds new objects to the end of the array
  // technically we are creating a new array with the same size +1
myCreature = (Creature[]) append(myCreature,b);
}
