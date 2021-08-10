import controlP5.*; //import ControlP5 library for create the user interface
import processing.serial.*; //permet la communication via la voie serie

Serial port; //nom de port serie utiliser

ControlP5 cp5; //creation d'un objet ControlP5
PFont font;
Toggle btn1,btn2,btn3,btn4,btn5,btn6,btn7,btn8,btn9,btn10,btn11,btn12,btn13,btn14,btn15,btn16,btnall,btncon; //les interrupteur
DropdownList p1;//la liste deroulante qui permet d'afficher le port serie disponnible sur la machine
Button btnref; //bouton qui permet d'etablir la connexion
boolean stat = false;//

void setup(){ //same as arduino program
  size(1270, 700);    //window size, (width, height) //la taille de la fenetre
  printArray(Serial.list());   //prints all available serial ports
  //lets add buton to empty window
  cp5 = new ControlP5(this);
  font = createFont("calibri light bold", 20);    // custom fonts for buttons and title
  p1 = cp5.addDropdownList("Serial port",50,550,100,200);
  btnref = cp5.addButton("Connect")     //creation du bouton connect 
    .setPosition(180, 550)  //x et y les coordonnes du bouton dans notre interface
    .setSize(150, 20)      //(width, height) //la taille du bouton
    .setFont(font)
  ;
  for(int i=0; i< Serial.list().length;i++)
{
    p1.addItem(Serial.list()[i],i); //ajout des port serie disponible dans la liste deroulante
}
  btn1 = ibtn("LED1", 50, 70); //creation des bouton de commande (NOM, X,Y)
  btn2 = ibtn("LED2", 200, 70);
  btn3 = ibtn("LED3", 350, 70);
  btn4 = ibtn("LED4", 500, 70);
  btn5 = ibtn("LED5", 650, 70);
  btn6 = ibtn("LED6", 800, 70);
  btn7 = ibtn("LED7", 950, 70);
  btn8 = ibtn("LED8", 1100, 70);
//LINE 2
  btn9 = ibtn("LED9", 50, 200);
  btn10 = ibtn("LED10", 200, 200);
  btn11 = ibtn("LED11", 350, 200);
  btn12 = ibtn("LED12", 500, 200);
  btn13 = ibtn("LED13", 650, 200);
  btn14 = ibtn("LED14", 800, 200);
  btn15 = ibtn("LED15", 950, 200);
  btn16 = ibtn("LED16", 1100, 200);
  btnall = cp5.addToggle("Commande_All")     //outon de commande de toutes les leds
    .setPosition(50, 400)  //x and y coordinates of upper left corner of button
    .setSize(1170, 70)      //(width, height)
    .setFont(font)
  ;
 
}

void draw(){  //c'est comme  le loop dans Arduino

  background(0, 0 ,0); // couleur de fond de la fenetre
  
  //lets give title to our window
  fill(0, 255, 0);               //couleur du text du titre
  textFont(font);
  text("LED CONTROL", 600, 30);  // ("text", x coordinate, y coordinat)
}

//connexion avec le port serie
void Connect()
{
  try{
   port = new Serial(this,Serial.list()[int(p1.getValue())], 9600);
   port.write('x');//envoie d'un caractere pour voir si la communication fonction 
   println("connected");
  }catch(Exception e)
  {
     println("Echec de connexion");
  }
}
//commande de LED
void LED1(ControlEvent theEvent)
{ 
  print(theEvent.getController().getName()+" : ");
  if(btn1.getValue() == 1.0)
  {
    port.write('A'); 
    println("on");
  }else
  {
    port.write('a'); 
    println("off");
  }
}
void LED2(ControlEvent theEvent)
{ 
  print(theEvent.getController().getName()+" : ");
  if(btn2.getValue() == 1.0)
  {
    port.write('B'); 
    println("on");
  }else
  {
    port.write('b'); 
    println("off");
  }
}
void LED3(ControlEvent theEvent)
{ 
  print(theEvent.getController().getName()+" : ");
  if(btn3.getValue() == 1.0)
  {
    port.write('C'); 
    println("on");
  }else
  {
    port.write('c'); 
    println("off");
  }
}
void LED4(ControlEvent theEvent)
{ 
  print(theEvent.getController().getName()+" : ");
  if(btn4.getValue() == 1.0)
  {
    port.write('D'); 
    println("on");
  }else
  {
    port.write('d'); 
    println("off");
  }
}
void LED5(ControlEvent theEvent)
{ 
  print(theEvent.getController().getName()+" : ");
  if(btn5.getValue() == 1.0)
  {
    port.write('E'); 
    println("on");
  }else
  {
    port.write('e'); 
    println("off");
  }
}
void LED6(ControlEvent theEvent)
{ 
  print(theEvent.getController().getName()+" : ");
  if(btn6.getValue() == 1.0)
  {
    port.write('F'); 
    println("on");
  }else
  {
    port.write('f'); 
    println("off");
  }
}
void LED7(ControlEvent theEvent)
{ 
  print(theEvent.getController().getName()+" : ");
  if(btn7.getValue() == 1.0)
  {
    port.write('G'); 
    println("on");
  }else
  {
    port.write('g'); 
    println("off");
  }
}
void LED8(ControlEvent theEvent)
{ 
  print(theEvent.getController().getName()+" : ");
  if(btn8.getValue() == 1.0)
  {
    port.write('H'); 
    println("on");
  }else
  {
    port.write('h'); 
    println("off");
  }
}
void LED9(ControlEvent theEvent)
{ 
  print(theEvent.getController().getName()+" : ");
  if(btn9.getValue() == 1.0)
  {
    port.write('I'); 
    println("on");
  }else
  {
    port.write('i'); 
    println("off");
  }
}
void LED10(ControlEvent theEvent)
{ 
  print(theEvent.getController().getName()+" : ");
  if(btn10.getValue() == 1.0)
  {
    port.write('J'); 
    println("on");
  }else
  {
    port.write('j'); 
    println("off");
  }
}
void LED11(ControlEvent theEvent)
{ 
  print(theEvent.getController().getName()+" : ");
  if(btn11.getValue() == 1.0)
  {
    port.write('K'); 
    println("on");
  }else
  {
    port.write('k'); 
    println("off");
  }
}
void LED12(ControlEvent theEvent)
{ 
  print(theEvent.getController().getName()+" : ");
  if(btn12.getValue() == 1.0)
  {
    port.write('L'); 
    println("on");
  }else
  {
    port.write('l'); 
    println("off");
  }
}
void LED13(ControlEvent theEvent)
{ 
  print(theEvent.getController().getName()+" : ");
  if(btn13.getValue() == 1.0)
  {
    port.write('M'); 
    println("on");
  }else
  {
    port.write('m'); 
    println("off");
  }
}
void LED14(ControlEvent theEvent)
{ 
  print(theEvent.getController().getName()+" : ");
  if(btn14.getValue() == 1.0)
  {
    port.write('N'); 
    println("on");
  }else
  {
    port.write('n'); 
    println("off");
  }
}
void LED15(ControlEvent theEvent)
{ 
  print(theEvent.getController().getName()+" : ");
  if(btn15.getValue() == 1.0)
  {
    port.write('O'); 
    println("on");
  }else
  {
    port.write('o'); 
    println("off");
  }
}
void LED16(ControlEvent theEvent)
{ 
  print(theEvent.getController().getName()+" : ");
  if(btn16.getValue() == 1.0)
  {
    println("on");
  }else
  {
    println("off");
  }
}
void Commande_All(ControlEvent theEvent)
{ 
  print(theEvent.getController().getName()+" : ");
  if(btnall.getValue() == 1.0)
  {
    port.write('T'); 
    println("on");
  }else
  {
    port.write('t'); 
    println("off");
  }
}
//fonction qui me permet de cree les interrupteur
Toggle ibtn(String btnName, float x, float y)
{
return cp5.addToggle(btnName)     //"nom de du buton"
    .setPosition(x, y)  //sa position su l'axe de x et l'ax de y
    .setSize(120, 70)       //(largeure, longeure)
    .setFont(font)
    .setValue(0)
  ; 
}
