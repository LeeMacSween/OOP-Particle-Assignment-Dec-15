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
    color Image = photo.get(int(coords.x), int(coords.y)); //gets the colour values from the image at the x and y coords
    fill(Image);
    ellipse(coords.x, coords.y, diameter, diameter);
    
  }
  
  void updateParticlePosition(){
   
    coords.x = coords.x + speed.x;
    coords.y = coords.y + speed.y;
    
  }
  
  void StayOnScreen(int xCoordsMin, int xCoordsMax, int yCoordsMin, int yCoordsMax)
  {
     if(coords.x <= xCoordsMin || coords.x >= xCoordsMax || coords.y <= yCoordsMin || coords.y >= yCoordsMax)
     {
        speed.mult(-1); //reverse the direction of the particles when they reach the end of the screen
     }
  }

  
  
  

  
  
}