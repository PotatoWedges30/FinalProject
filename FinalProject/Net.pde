 public class Net {
  private float w, h, gap, x;
  
  // Parameter-less constructor
  private Net() {
    this.w = 5.0;   
    this.h = 10.0;  
    this.gap = 10.0;  
    this.x = (displayWidth - this.w) / 2;
  }
  
  public void displayNet() {
    float y = 0;
    
    do{
      noStroke();
      rect(this.x,y,this.w,this.h);
      y+= (this.h + this.gap);
    } while(y + this.h < displayHeight);
  }
  
} // End Net class
