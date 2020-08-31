class RigidBody{
 float m;//mass
 float v;//velocity
 float x;//position
 float r;//radius
  
 RigidBody(float _x, float _m, float _v, float _r){
   m = _m;
   v = _v;
   x = _x;
   r = _r;
   ellipseMode(CENTER);
 }
 
 void move(){
   x += v;
 }
 
 void draw(){
  ellipse(x, height/2, r, r); 
 }
 
 void impulse(float p){
    v = p;
 }
 
 boolean collided(RigidBody other){
  //basic spherical collision
  float dr = r/2+other.r/2;
  float dx = abs(x - other.x);
  boolean isCollided = dx < dr;
  if (isCollided){
    float px = dr-dx;
    if (x < other.x) x -= px;
      else other.x -= px;
  }
  return isCollided;
 }
  
}