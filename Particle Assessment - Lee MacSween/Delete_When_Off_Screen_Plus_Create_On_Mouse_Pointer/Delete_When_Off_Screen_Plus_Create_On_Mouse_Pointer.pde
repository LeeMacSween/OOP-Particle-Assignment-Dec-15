ArrayList<Particle> listOfParticles;

int mouseXcoords;
int mouseYcoords;

boolean WaitForMouseClick = false;
  
void setup(){
  
  size(800, 500); 
  listOfParticles = new ArrayList<Particle>();
  colorMode(HSB, 100);
}
 

void draw(){
  
  background(0, 0, 100);
  
  if(WaitForMouseClick == true) //only create particles when this boolean is set to true. Otherwise particles will be generated before mouse has been pressed
  {
      listOfParticles.add(new Particle(new PVector(mouseXcoords, mouseYcoords), 10, color(random(0, 100), 100, 100), new PVector(random(-4, 4), random(-4, 4))));
  }



    for(int i = 0; i < listOfParticles.size(); i++) 
    {
      Particle p = listOfParticles.get(i); //get current particle
      if(p.isDead(0, 800, 0, 500)) //function returns true if the particles have moved outide of the screen region
      {
        listOfParticles.remove(i); //remove the particle if the value is true
      }
      
        p.updateParticlePosition();
        p.drawParticle();
      
    }
    
}

void mousePressed()
{
 
    mouseXcoords = mouseX; //store mouseX and mouseY in varibles which will be used for the position of the particles
    mouseYcoords = mouseY;
    WaitForMouseClick = true;
  
}