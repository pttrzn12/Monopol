
chance chn4= new chance();
skatt skatt= new skatt();
class Player4 {
  // p,s är vart spelaren är positionerad
  int p=6;
  int s=3;
  // timer för jail
  int t=0;
  //extra distans på sista steget  
  float ff=82;
  Spela spel = new Spela();
  void play() {
    fill(200, 200, 40);
    //kolla om spelaren har ett gå ut ur fängelse kort 
    if (jail4==true && freejail4==true) {
      freejail4=false;
      jail4=false;
    }
    // om spelaren inte är i fängelse
    if (jail4==false) {
      //print("p:", p, "       ", "s:", s, "       ");
        p+=spel.roll(4);
      if (s==0) {
        if (p>=10) {
          s=2;
          p-=10;
        }
        circle(932-ff*p, 965, 30);
      }
      if (s==1) {
        if (p==0) {
          jail4=true;
        }
        if (p>=10) {
          s=3;
          p-=10;
        }
        circle(932-ff*10, 932-ff*p, 30);
      }
      if (s==2) {

        if (p>=10) {
          s=4;
          p-=10;
        }
        circle(932-ff*(10-p), 932-ff*10, 30);
      }
      if (s==3) {

        if (p>=10) {
          // går igenom gå
          MoneyP4+=4000;
          s=0;
          p-=10;
        }
        circle(932, 932-ff*(10-p), 30);
      }
  }
    //om dem är i fängelse
    if (jail4==true) {
      circle(932-ff*10, 932, 30);
      int c1 = int(random(1, 7));
      int c2 = int(random(1, 7));
      t+=1;
      if (t>=3) {
        jail4=false;
        t=0;
        s=2;
        p=0;
      }
      if (c2==c1) {
        jail4=false;
        t=0;
        s=1;
        p=0;
        p+=c1+c2;
      }
    }
    // kollar om de står på specifika brickor
    chn4.draw(s, p, 4);
    skatt.draw(4, s, p);
if(MoneyP4<0){
 flip.flipa(4); 
}
}
}
