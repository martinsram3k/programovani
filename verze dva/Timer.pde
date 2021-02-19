class Timer{
  int time; 
  int timeStop;
  
  Timer(int seconds){
      time = 0; 
      timeStop = seconds*60;
  }
  
  boolean run(){
    time++;
    if (time > timeStop){
      reset();
      return true;
    } else {
      return false;
    }
  }
  
  void reset(){
    time = 0;
  }
    
}
