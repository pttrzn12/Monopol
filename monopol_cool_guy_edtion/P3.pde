
class Player3 {
  int p;
  int s=1;
  int t=0;
  float ff=82;
  Spela spel = new Spela();
  void play() {

    fill(0, 0, 255);
    if (jail3==false) {
      p+=spel.roll(3);
      if (s==1) {
        if (p>=10) {
          s=2;
          p-=10;
        }
        circle(932-ff*p, 965, 30);
      }
      if (s==2) {
        if (p==0) {
          jail3=true;
        }
        if (p>=10) {
          s=3;
          p-=10;
        }
        circle(932-ff*10, 932-ff*p, 30);
      }
      if (s==3) {

        if (p>=10) {
          s=4;
          p-=10;
        }
        circle(932-ff*(10-p), 932-ff*10, 30);
      }
      if (s==4) {

        if (p>=10) {
          MoneyP3+=4000;
          s=1;
          p-=10;
        }
        circle(932, 932-ff*(10-p), 30);
      }
    }
    if (jail3==true) {
      circle(932-ff*10, 932, 30);
      int c1 = int(random(1, 7));
      int c2 = int(random(1, 7));
      t+=1;
      if (t>=3) {
        jail3=false;
        t=0;
        s=2;
        p=0;
      }
      if (c2==c1) {
        jail3=false;
        t=0;
        s=2;
        p=0;
        p+=c1+c2;
      }
    }
  }
}
