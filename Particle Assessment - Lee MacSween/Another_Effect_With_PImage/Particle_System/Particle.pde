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
    color imageColor = photo.get(int(coords.x), int(coords.y)); //grabs color value of image from the current x and y coords
    fill(imageColor);
    ellipse(coords.x, coords.y, diameter, diameter);
    
  }
  
  void updateParticlePosition(){
   
    coords.x = coords.x + speed.x;
    coords.y = coords.y + speed.y;
    
  }
  
  boolean isDead(int xCoordsMin, int xCoordsMax, int yCoordsMin, int yCoordsMax)
  {
    if(coords.x < xCoordsMin || coords.x > xCoordsMax || coords.y < yCoordsMin || coords.y > yCoordsMax) // return true if the particle has gone off screen
    {
      return true;
    }
    else
    {
      return false;
    }
  }
  
  
}