ArrayList<Particle> listOfParticles;
  int mouseXcoords;
  int mouseYcoords;
  PImage photo;
  
void setup(){
  
  size(800, 500); 
  frameRate(100);
  listOfParticles = new ArrayList<Particle>();
  colorMode(HSB, 100);
  photo = loadImage("IMG/landscape.jpg");
}
 

void draw(){
  
  background(0, 0, 100);
  
        if(mousePressed == true)//Only generate particles when the mouse button is pressed down
        {                                                                                             //Gravity Value
          listOfParticles.add(new Particle(new PVector(mouseX, mouseY), 10, color(random(0, 100), 100, 100), 0.1, new PVector(random(-1, 1), random(-2, 0))));
        }


    for(int i = 0; i < listOfParticles.size(); i++) 
    {
      Particle p = listOfParticles.get(i); //get current particle
      if(p.isDead(0, 800, 0))
      {
        listOfParticles.remove(i);
      }
      
        p.updateParticlePosition();
        p.drawParticle();
        p.antiGravity(500, -0.1, 0);//calls the anti gravity function from particle class to reverse gravity and speed values
      
    }
    
}