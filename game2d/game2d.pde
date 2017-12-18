import javax.swing.JOptionPane;

Menu m;
GameLogic g;
TextDisplay t;
Player p;
Enemy[] e = new Enemy[4];

int refresh = 120; //refresh rate of the game, as the time counter depends 
boolean isPlaying = false;
boolean gameIsOver = false; //enable if game is over
boolean enableDebug = false; //whether to show debug information or not

void setup() {
 
  m = new Menu();
  g = new GameLogic();
  t = new TextDisplay();
  p = new Player();
  e = new Enemy[4];
  
  size (512, 512);
  frameRate(refresh);
  
  for (int i = 0; i < e.length; i++) {
   
    e[i] = new Enemy(width , height - 100, 0.1, 1);
    
  }
   
}

void draw() {

  m.mainMenu();
  m.enableDebug();
  
  if (isPlaying == true) {
    
    p.init();
    g.init();
    g.gameLoop();
    
    for (int i = 0; i < e.length; i++) {
     
      Enemy s = e[i];
      s.spawn();
      s.move();
      
    }
    
    p.drawPlayer();
    p.playerGravity();
    t.displayInfo();
    
  }
  
  if (gameIsOver == true) {
   
    g.getHighscoreName();
    
  }
  
  t.displayDebug();
    
  }
   

void keyPressed() {
 
  if (((keyCode == UP) && (isPlaying == true)) && (p.playerOnGround == true)) {
   
    p.playerJump();
    
  }
  
}