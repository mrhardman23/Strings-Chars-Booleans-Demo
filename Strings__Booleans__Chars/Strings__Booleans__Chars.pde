char firstInitial = 'S';
char lastInitial = 'H';
String playerName = "Mr. Hardman";

//X Location and Y Location of first initial
int firstX = 150;
int firstY = 150;

//X Location and Y Location of last initial
int lastX = 1000;
int lastY = 150;

//Stores whether you have clicked your mouse
boolean hasClicked = false;

void setup()
{
  //Makes the processing window full screen
  fullScreen();
}

void draw()
{
  //Change background color to black
  background(0);
  
  //Set textSize to 50
  textSize(50);
  
  //If has clicked has the value true...
  if(hasClicked == true)
  {
    //Change the fill to white
    fill(255);
    //Display a message for the player
    text("Thanks for clicking, " + playerName, 100, 100);
  }
  
  //Change the fill to Green
  fill(0, 0, 255);
  //Display the first initial at firstX, firstY
  text( firstInitial, firstX, firstY );
  
  //Change the fill to red
  fill(255, 0, 0);
  //Display the last initial at lastX, lastY
  text( lastInitial, lastX, lastY );
  
  //Change the location variables to make them move
  firstX += 5;
  firstY += 5;
  
  lastX -= 5;
  lastY += 5;
}

void mouseClicked()
{
  //Changes the variable that stores whether the mouse has been clicked to true
  hasClicked = true;
}
