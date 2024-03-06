public class Creature {
  //  instance variables for the Creature class
  private int x;
  private int y;
  private int w;
  private int h;
  private int eyeSize;
  private int armSize;
  private int speed;

  // adds an array of strings for our variable names
  private String[] variableNames = {"x", "y", "w", "h", "eyeSize", "armSize", "speed"};


  //  default constructor that doesn't take any parameters
  public Creature() {
    this.x = 200;
    this.y = 200;
    this.w = 50;
    this.h = 80;
    this.eyeSize = 25;
    this.armSize = 5;
    this.speed = 10;
  }

  //  constructor with parameteres
  Creature(int tempX, int tempY, int tempW, int tempH, int tempEyeSize, int tempArmSize, int tempSpeed) {
    // assign constructor parameteres to variables declared in the class
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    eyeSize = tempEyeSize;
    armSize = tempArmSize;
    speed = tempSpeed;
  }

  //  function to make our x variable increase and decrease
  //  by a factor of our variable speed
  public void move () {
    x = x + speed;
    if ((x > width-w/2) || (x < 0+w/2)) {
      speed = speed * -1;
    }
  }
  //  function for drawing my creature
  public void display() {
    rectMode(CENTER);
    // creates the green rectangle (head)
    stroke(0);
    fill(0, 255, 0);
    rect(x, y, w, h);

    // creates the white eyes
    stroke(0);
    fill(255);
    ellipse(x-eyeSize/2, y-h/3, eyeSize, eyeSize);
    stroke(0);
    fill(255);
    ellipse(x+eyeSize/2, y-h/3, eyeSize, eyeSize);

    // creates the red inside the white eyes
    stroke(0);
    fill(255, 0, 0);
    ellipse(x+eyeSize/2, y-h/3, eyeSize/2, eyeSize/2);
    stroke(0);
    fill(255, 0, 0);
    ellipse(x-eyeSize/2, y-h/3, eyeSize/2, eyeSize/2);

    // creates the black mouth
    stroke(255);
    fill(0);
    ellipse(x, y+h/4, w, h/2);

    //creates the black arms
    stroke(0);
    line(x+w/2, y, x+w/2+armSize, y-armSize);
    line(x-w/2, y, x-w/2-armSize, y-armSize);
    // creates the black legs
    line(x+w/2, y+h/2, x+w/2+armSize, y+h/2+armSize);
    line(x-w/2, y+h/2, x-w/2-armSize, y+h/2+armSize);
  }
  
  // get method for variables
  //  the parameter can take any string
  //  but if the string doesn't match any of the strings in the variableNames[]
  //  it will throw an error and not run
  public int get(String variable) {
    for (int i = 0; i < variableNames.length; i++) {
      if (variableNames[i].equals(variable)) {
        switch (variable) {
        case "x":
          return x;
        case "y":
          return y;
        case "w":
          return w;
        case "h":
          return h;
        case "eyeSize":
          return eyeSize;
        case "armSize":
          return armSize;
        case "speed":
          return speed;
        }
      }
    }
    throw new IllegalArgumentException("Invalid variable name");
  }

  // set method for variables
  public void set(String variable, int value) {
    for (int i = 0; i < variableNames.length; i++) {
      if (variableNames[i].equals(variable)) {
        switch (variable) {
        case "x":
          x = value;
          return;
        case "y":
          y = value;
          return;
        case "w":
          w = value;
          return;
        case "h":
          h = value;
          return;
        case "eyeSize":
          eyeSize = value;
          return;
        case "armSize":
          armSize = value;
          return;
        case "speed":
          speed = value;
          return;
        }
      }
    }
    throw new IllegalArgumentException("Invalid variable name");
  }
}
