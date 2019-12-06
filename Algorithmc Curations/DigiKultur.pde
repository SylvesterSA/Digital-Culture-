
 PImage  spotify;
 PImage  github;
 PImage  insta;
 
 PImage  spotifycircuit;
 PImage  githubcircuit;
 PImage  instacircuit;
  
 boolean s; 
 boolean g; 
 boolean i; 
 

 //String gnu = "The GNU General Public License allows everyone to modify this curation to their own preferences.";
  
void setup () {
  background(0);
  //fullScreen();
  size(1920, 1080); 
  
  insta = loadImage("insta.png"); 
  spotify = loadImage("spotify.png"); 
  github = loadImage("github1.png");
  
  instacircuit = loadImage("instacircuit.png"); 
  spotifycircuit = loadImage("spotifycircuit.png"); 
  githubcircuit = loadImage("githubcircuit.png");
  
}
  void draw () {
    rectMode(CENTER);
    imageMode(CENTER); 
    
    
      fill(255);
      textSize(30); 
      text("Objects of Digital Culture -\nAlgorithmic Curation\nvia the Circuit of Culture", 100, 100);  // Text wraps within text 
      textSize(15); 
      text("The GNU General Public License\nallows everyone to modify this\ncuration to their own preferences.", 50, 950); 
    
    s = false; 
    g = false; 
    i = false;
    
    
    noFill();
    strokeWeight(3);
    stroke(255); 
    textSize(30);
  
    //spotify TOP
   rect(width*0.5, 200, 200, 200, 20);
   text("Spotify", width*0.475, 350); 
    image(spotify, width*0.5, 200, 150, 150);
    if (mouseX>width*0.5-75 && mouseX<width*0.5+75 && mouseY>125 && mouseY<225 && mousePressed) {
      s = true; 
      g = false; 
      i = false; 
      
      
    }
    //insta RIGHT
    rect(width*0.85, 600, 200, 200, 20);
    text("Instagram", width*0.81, 750);
    image(insta, width*0.85, 600, 150, 150);
    if (mouseX>width*0.85-75 && mouseX<width*0.85+75 && mouseY>525 && mouseY<625 && mousePressed) {
      s = false; 
      g = false; 
      i = true;
    }
    //github LEFT 
    rect(width*0.15, 600, 200, 200, 20);
    text("Github", width*0.125, 750);
    image(github, width*0.15, 600, 150, 150);
    if (mouseX>width*0.15-75 && mouseX<width*0.15+75 && mouseY>525 && mouseY<625 && mousePressed) {
      s = false; 
      g = true; 
      i = false; 
    }
     if(s==true) {
      image(spotifycircuit, width*0.5, height*0.65, 660, 610);
      
    }
     if(g==true) {
      image(githubcircuit, width*0.5, height*0.65, 640, 590);
    }
     if(i==true) {
       image(instacircuit, width*0.5, height*0.65, 650, 600);
    } 
  }
    
