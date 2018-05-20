import controlP5.*;

color c = color(100);

ControlP5 cp5;

void setup(){
    size(800, 300);
    cp5 = new ControlP5(this);
    
    cp5.addColorWheel("c", 250, 10, 200)
        .setRGB(color(255, 255, 0))
        .setPosition(20, 20)
        .setLabel("fill color")
        ;
}

void draw(){
    background(0);
    fill(c);
    
    rectMode(CENTER);
    rect(width/2, height/2, 100, 100);
}
