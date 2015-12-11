ArrayList<Particle> listOfParticles;
PImage photo;
void setup(){
  
  size(800, 500, P2D); //using P2D renderer for less lag 
  
  listOfParticles = new ArrayList<Particle>();
  
  colorMode(HSB, 100);
  
  photo = loadImage("Landscape.jpg");
  
  for(int i = listOfParticles.size(); i < 10000; i++) //loops through 10000 times which will generate 10000 particles at once
  {
    listOfParticles.add(new Particle(new PVector(width/2, height/2),
                                     5,
                                     color(random(0, 100), 100, 100),
                                     new PVector(random(-4, 4), 
                                     random(-4, 4))));
  }
  
}
 

void draw(){
  
  background(0, 0, 100);
  
    

  for(int i = 0; i < listOfParticles.size(); i++)
  {   
    
    Particle thisParticle = listOfParticles.get(i); // get current particle
    thisParticle.updateParticlePosition();
    thisParticle.drawParticle();
    
    if(thisParticle.isDead(0, 800, 0, 500))
    {
      listOfParticles.remove(i); //delete particles when off screen
    }
  } 
  

}