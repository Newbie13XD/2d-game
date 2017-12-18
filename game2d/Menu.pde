class Menu {
  
  color buttonColour = #FFFFFF;
  
  Menu() {
    
  }
  
  void mainMenu() {
    
    if (isPlaying == false && gameIsOver == false) {
    
      background(#00A0FF);
    
      fill(#FFFFFF);
      textSize(64);
      text("another", width/9, width/6);
      text("endless", width/9, width/4);
      text("runner", width/9, width/3);
    
      fill(buttonColour);
      textSize(48);
      text("Play", width/8, (width/8)*7);
    
      fill(#FFFFFF);
      textSize(12);
      text("by Newbyte", (width/8)*6, (width/8)*7);
      
      if (((mouseX > width/8) && (mouseX < ((width/8) + 100))) && ((mouseY < 460) && (mouseY > 400))) {
       
        buttonColour = #A0A0A0;
        
        if (mousePressed == true) {
          
          isPlaying = true;
          background(#000000);
          
        }
        
      } else {
       
        buttonColour = #FFFFFF;
        
      }
    
    }
    
    if (gameIsOver == true) {
     
      background(#000000);
      
      textSize(40);
      text("Game over!", (width/4) + 10, (height/2) - 20);
      text("Score: " + g.timeS, (width/3) - 10, (height/2) + 25);
      
    }
    
  }
  
  void enableDebug() {
  
    if (((key == 'D') || (key == 'd')) && (isPlaying == false) && (enableDebug == false)) {
    
      enableDebug = true;
      
    }
      
  }
  
}