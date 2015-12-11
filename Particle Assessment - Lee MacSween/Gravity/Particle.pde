class Particle{
  
  PVector coords;
  float diameter;
  float radius;
  color particleFill;
  PVector speed;
  float gravity;
  
  
  Particle(PVector initialCoords, float initialDiameter, 
           color initialFill,  float initalGravity, PVector initialSpeed){ //gravity added
             
           coords = initialCoords;
           diameter = initialDiameter;
           particleFill = initialFill;
           radius = diameter * 0.5;
           speed = initialSpeed;
           gravity = initalGravity;
  }
  
  void drawParticle(){
    
    noStroke();
    color Image = photo.get(int(coords.x), int(coords.y));//grabs image colour from the x and y coords
    fill(Image);
    ellipse(coords.x, coords.y, diameter, diameter);
    
  }
  
  void updateParticlePosition(){
   
    speed.y = speed.y + gravity;
    coords.x = coords.x + speed.x;
    coords.y = coords.y + speed.y;
    
  }
  
  void antiGravity(int yCoords, float gravityValue, int speedValue)
  {
   
      if(coords.y >= yCoords) //if the y coord is below the height value reverse the gravity
      {
         speed.y = speedValue;
         
         gravity = gravityValue; 
      }
    
  }
  
  boolean isDead(int xCoordsMin, int xCoordsMax, int yCoordsMin)
  {
     if(coords.x < xCoordsMin || coords.x > xCoordsMax || coords.y < yCoordsMin) //if particles are off the screen return true
     {
        return true; 
     }
     else
     {
        return false; 
     }
  }

  
  
  

  
  
}