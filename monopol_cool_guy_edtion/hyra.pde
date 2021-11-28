class hyra {
  void check(int playerNumber, int s, int p) {
    //check stationer
    if (p==5) {
      if (rutor.ownd[s][p]!=5 && rutor.ownd[s][p]!=playerNumber && rutor.flipped[s][p]==0) {
        int owner=rutor.whoowns(s, p);
        int antal=rutor.countstations(owner);
        int hyra=0;
        if (antal==1) {
          hyra=2*-500;
        }
        if (antal==2) {
          hyra=2*-1000;
        }
        if (antal==3) {
          hyra=2*-2000;
        }
        if (antal==4) {
          hyra=2*-4000;
        }
        addmny(playerNumber, hyra);
        int profit=hyra*-1;
        addmny(owner, profit);
      }
    }
    //el/vattenverk
    if ((s==1 && p==2)||(s==2 && p==8)) {
      if (rutor.ownd[s][p]!=5 && rutor.ownd[s][p]!=playerNumber && rutor.flipped[s][p]==0) {
        int owner=rutor.whoowns(s, p); 
        int hyra=0;
        if (rutor.countverk(owner)==1) {
          hyra=-4*(int(random(1, 7))+int(random(1, 7)));
        }
        if (rutor.countverk(owner)==2) {
          hyra=-10*(int(random(1, 7))+int(random(1, 7)));
        }
        addmny(playerNumber, hyra);
        int profit=-1*hyra;
        addmny(owner, profit);
      }
    }
    //vanliga tomter
    if (info.hyra[s][p][0]!=0) {
      if(rutor.whoowns(s,p)!=5 && rutor.whoowns(s,p)!=playerNumber){
      int owner=rutor.whoowns(s, p);
      int bygg=rutor.bygg[s][p];
      int hyra=-1*info.hyra[s][p][bygg];
      addmny(playerNumber, hyra);
      int profit=-1*hyra;
      addmny(owner, profit);
    }}
  }
}
