class Stats {
  void draw() {
    fill(0);
textSize(30);
    text("Player 4:  Totalt:", 1000,50 );
    text("På hand:",1142,80);
    text(tot(4),1270,50);
    text(MoneyP4,1270,80);
  }
  int tot(int playerNumber) {
    int tot=0;
    for ( int y=0; y<4; y++) {
      for ( int x=0; x<10; x++) {
        if ( rutor.ownd[y][x]==playerNumber) {
          tot+=info.kostnad[y][x][0];
          if (rutor.bygg[y][x]>0) {
            tot+=rutor.bygg[y][x]*info.kostnad[y][x][1];
          }
        }
      }
    }
    return(tot);
  }
}
