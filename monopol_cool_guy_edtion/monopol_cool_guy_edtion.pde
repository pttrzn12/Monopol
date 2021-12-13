PrintWriter output;
//Player1 p1=new Player1();= Spelare 1
Player1 p1=new Player1();
Player2 p2=new Player2();
Player3 p3=new Player3();
Player4 p4=new Player4();
Rutor rutor=new Rutor();
info info= new info();
flip flip= new flip();
PImage img;
// Money= Pengarna spelarna har
// TotMoney= Den totala mängden pengar spelaren har tjänat
int MoneyP1=0;
int TotMoneyP1=0;
int MoneyP2=0;
int TotMoneyP2=0;
int MoneyP3=0;
int TotMoneyP3=0;
int MoneyP4=0;
int TotMoneyP4=0;
// jail= om de är i fängelse
Boolean jail1=false;
Boolean jail2=false;
Boolean jail3=false;
Boolean jail4=false;
Boolean freejail1=false;
Boolean freejail2=false;
Boolean freejail3=false;
Boolean freejail4=false;
void setup() {
  size(1500, 1000);
  output = createWriter("2Stats.txt");
  img = loadImage("Monopol.jpg");
}
void draw() {
  background(252);
  image(img, 0, 0);
  /*  p1.play();
   p2.play();
   p3.play();*/
  p4.play();
  /*print("      MP1:"+MoneyP1);
   print("      MP2:"+MoneyP2);
   print("      MP3:"+MoneyP3);*/
   print("      MP4:"+MoneyP4);
  output.println(MoneyP4);
  output.flush();
}
void keyPressed() {
  output.flush();
  output.close();
  exit();
}


























//kollar om spelaren går genom gå 1 om ja 0 om nej
int checkgo( int players, int playerp, int objs, int objp ) {
  int result=0;
  if (players>objs) {
    result=1;
  }
  if (players==objs) {
    if (playerp>objp) {
      result=1;
    }
  } 
  return result;
}

void move(int q, int s, int p) {
  if (q==1) {
    p1.s=s;
    p1.p=p;
  }
  if (q==2) {
    p2.s=s;
    p2.p=p;
  }
  if (q==3) {
    p3.s=s;
    p3.p=p;
  }
  if (q==4) {
    p4.s=s;
    p4.p=p;
  }
}
void addmny(int q, int a) {
  if (q==1) {
    MoneyP1+=a;
    if (a>0) {
      TotMoneyP1+=a;
    }
  }
  if (q==2) {
    MoneyP2+=a;
    if (a>0) {
      TotMoneyP2+=a;
    }
  }
  if (q==3) {
    MoneyP3+=a;
    if (a>0) {
      TotMoneyP3+=a;
    }
  }
  if (q==4) {
    MoneyP4+=a;
    if (a>0) {
      TotMoneyP4+=a;
    }
  }
}


int checkmny(int playerNumber) {
  int r=0;
  if (playerNumber==1) {
    r=MoneyP1;
  }
  if (playerNumber==2) {
    r=MoneyP2;
  }
  if (playerNumber==3) {
    r=MoneyP3;
  }
  if (playerNumber==4) {
    r=MoneyP4;
  }
  return r;
}
