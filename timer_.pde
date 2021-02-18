class Timer {
  int time;
  int timeStop;
  Timer(int seconds) {
    time=0;
    timeStop = seconds;
  }
  
  
  
  void ran(){
    time++;
    if (time > timeStop){
      reset();
      
    }
    
  }
  
  
  
  void reset (){
    time = timeStop;
  }
  
  
  
}
