class Character {
  //INSTANCE VARS
  String location;
  ArrayList<String> inventory; //Used as a stact for NPCs and used as an ArrayList for User
  int state;
  float x;
  float y;
  float dx;
  
  Character() {
    location = "1 Ward";
    state = 1; // 1 = standing/idle state
    inventory = new ArrayList<String>(10);
  }
  
  Character (float a , float b){
    x = a;
    y = b;
  }
  
  public void setState(int s) { 
    state = s;
  }
  
  public int getState() {
    return state;
  }
  
  public float getDx(){
  return dx;
  }
  public float getXcor(){
    return x;
  }
  public float getYcor(){
    return y;
  }
}