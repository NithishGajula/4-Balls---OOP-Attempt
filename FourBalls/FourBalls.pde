public class FourBalls extends PApplet {
  
  public static final int HEIGHT=480;
  public static final int WIDTH=640;
  public static final int POSITION_FROM_TOP = HEIGHT/5;
  public static final int DIAMETER=10;
  
  class CirclePosition {
    int x, y;
    CirclePosition(int x, int y){
      this.x = x;
      this.y = y;
    }
  }
  
  CirclePosition circle1 = new CirclePosition(0, 1);
  CirclePosition circle2 = new CirclePosition(0, 2);
  CirclePosition circle3 = new CirclePosition(0, 3);
  CirclePosition circle4 = new CirclePosition(0, 4);
  
  public static void main(String args[]) {
    PApplet.main("FourBalls", args);
  }
  
  @Override
  public void settings(){
    super.settings();
    size(WIDTH, HEIGHT);
  }
  
  @Override
  public void draw(){
    drawCircle(circle1);
    drawCircle(circle2);
    drawCircle(circle3);
    drawCircle(circle4);
  }
  
  private void drawCircle(CirclePosition circle){
    ellipse(circle.x, circle.y*POSITION_FROM_TOP, DIAMETER, DIAMETER);
    circle.x+=circle.y;
  }
}
