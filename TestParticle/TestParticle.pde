
Particle testParticle;


void setup() {

  size(800, 500);

  testParticle = new Particle(new PVector(width/2, height/2), 
                              10, 
                              color(255, 0, 0), 
                              new PVector(random(-4, 4), random(-4, 4)));
}


void draw() {

  background(255);

  testParticle.updateParticlePosition();
  testParticle.drawParticle();
}