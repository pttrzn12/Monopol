class skatt {
  void draw(int playerNumber, int s, int p) {
    //inkomstskatt
    if (s==0 && p==2) {
      //lägg till inkomstskatt
      int skatt=0;
      for ( int y=0; y<4; s++) {
        for ( int x=0; x<10; s++) {
          if ( rutor.ownd[y][x]==playerNumber) {
            skatt+=info.kostnad[s][p][0];
            if (rutor.bygg[s][p]>0) {
              skatt+=rutor.bygg[s][p]*info.kostnad[s][p][1];
            }
          }
        }
      }
      skatt=skatt/10;
      if (skatt>=4000) {
        addmny(playerNumber, -4000);
      }
      if (skatt<4000) {
        addmny(playerNumber, -1*skatt);
      }
    }
    //lyxskatt
    if (s==3&& p==8) {
      addmny(playerNumber, -2000);
    }
  }
}
