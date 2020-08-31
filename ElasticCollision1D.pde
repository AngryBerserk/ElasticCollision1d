RigidBody b1, b2;
boolean isCollided;

void setup(){
 size(800,600);
 b1 = new RigidBody(40, 1, 1, 20);
 b2 = new RigidBody(340, 1, -1, 20);
 //normalize speed
}

void draw(){
  background(0);
  b1.move();
  b2.move();
  isCollided = b1.collided(b2); 
  if (isCollided){
    float m = b1.m;
    float n = b2.m;
    float v1 = b1.v;
    float v2 = b2.v; //<>//
    float u1 = ((m-n)*v1 + 2*n*v2)/(m+n);
    float u2 = ((n-m)*v2 + 2*m*v1)/(m+n);
    b1.v = u1;
    b2.v = u2;
  }
  b1.draw();
  b2.draw();
}