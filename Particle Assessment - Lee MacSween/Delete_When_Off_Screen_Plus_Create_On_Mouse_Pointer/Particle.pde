class Particle{
  
  PVector coords;
  float diameter;
  float radius;
  color particleFill;
  PVector speed;
  
  
  Particle(PVector initialCoords, float initialDiameter, 
           color initialFill, PVector initialSpeed){
             
           coords = initialCoords;
           diameter = initialDiameter;
           particleFill = initialFill;
           radius = diameter * 0.5;
           speed = initialSpeed;
  }
  
  void drawParticle(){
    
    noStroke();
    fill(particleFill);
    ellipse(coords.x, coords.y, diameter, diameter);
    
  }
  
  void updateParticlePosition(){
   
    coords.x = coords.x + speed.x;
    coords.y = coords.y + speed.y;
    
  }
  
  boolean isDead(int xCoordMin, int xCoordMax, int yCoordMin, int yCoordMax) // this function returns true of the coords are outside the size of the screen
  {
     if(coords.x < xCoordMin || coords.x > xCoordMax || coords.y < yCoordMin || coords.y > yCoordMax)
     {
        return true; 
     }
     else
     {
        return false;
     }
  }

  
  
  

  
  
}