ArrayList<Particle> listOfParticles;
  PImage photo;
  
void setup(){
  
  size(800, 500, P2D); //Usin P2D renderer to prevent the program from lagging as much when dawing hunderds of particles on screen
  frameRate(200); //increasing the speed in which particles are generated
  listOfParticles = new ArrayList<Particle>();
  colorMode(HSB, 100);
  photo = loadImage("IMG/testImage2.png");
}
 

void draw(){
  
  background(0, 0, 100);
  
  if(listOfParticles.size() < 1) //only display message when there are no particles on screen
  {
    startMessage();
  }
  
  if(mousePressed == true) //only create the particles when the mouse is pressed down
  {
      listOfParticles.add(new Particle(new PVector(mouseX, mouseY), 20, color(random(0, 100), 100, 100), new PVector(random(-1, 1), random(-2, 0))));
  }


  for(int i = 0; i < listOfParticles.size(); i++)
  {
    Particle p = listOfParticles.get(i);         //get current particle from array   
      
    p.updateParticlePosition();                  
    p.drawParticle();
    p.StayOnScreen(0, 800, 0, 500);              //new function in particle class that will reverse the direction of the particles when it hits the screen boundaries
      
  }
    
}

void startMessage()
{
    fill(0);
    textSize(15);
    textAlign(CENTER, CENTER);
    text("Hold down mouse Key to fill screen with particles and reveal hidden message.", width/2, height/2);
}