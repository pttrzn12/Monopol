class allmningar {
  void Advancetogo(int playerNumber) {
    //gå till gå
    move(playerNumber, 1, 0);
    //inkassera 4000
    addmny(playerNumber, 4000);
  }

  void bankError(int playerNumber) {
    // inkassera 4000
    addmny(playerNumber, 4000);
  }

  void doctorsFee(int playerNumber) {
    // betala 1000
    addmny(playerNumber, -1000);
  }

  void saleofStocks(int playerNumber) {
    // inkassera 1000
    addmny(playerNumber, 1000);
  }

  void getoutofJail(int playerNumber) {
    //get out of jail kort
    if (playerNumber==1) {
      freejail1=true;
    }

    if (playerNumber==2) {
      freejail2=true;
    }

    if (playerNumber==3) {
      freejail3=true;
    }

    if (playerNumber==4) {
      freejail4=true;
    }
  }

  void gotoJail(int playerNumber) {
    //gå till fängelse
    if (playerNumber==1) {
      jail1=true;
    }

    if (playerNumber==2) {
      jail2=true;
    }

    if (playerNumber==3) {
      jail3=true;
    }

    if (playerNumber==4) {
      jail4=true;
    }
  }

  void holiday(int playerNumber) {
    //inkassera 2000
    addmny(playerNumber, 2000);
  }

  void incomeTax(int playerNumber) {
    //betala 400 (ja 400 int 4000)
    addmny(playerNumber, 400);
  }

  void itsyourBirtday(int playerNumber) {
    //få 200 från varje spelare
    addmny(playerNumber, 800);
    addmny(1, -200);
    addmny(2, -200);
    addmny(3, -200);
    addmny(4, -200);
  }

  void lifeInsurence(int playerNumber) {
    // inkassera 2000
    addmny(playerNumber, 2000);
  }

  void hoptialFees(int playerNumber) {
    //betala 2000
    addmny(playerNumber, -2000);
  }

  void schoolFees(int playerNumber) {
    //betala 1000
    addmny(playerNumber, -1000);
  }

  void consualtancyFee(int playerNumber) {
    //betala 500
    addmny(playerNumber, -500);
  }

  void streetRepair(int playerNumber) {
    // betala 800 för varje hus och 2300 för hotel
    int skada=0;
    for ( int s=0; s<4; s++) {
      for (int p=0; p < 10; p++) {
        if (playerNumber==rutor.whoowns(s, p)) {
          if (rutor.bygg[s][p]>0 && rutor.bygg[s][p]<5) {
            skada+=-800*rutor.bygg[s][p];
          }
          if (rutor.bygg[s][p]==5) {
            skada+=-2300;
          }
        }
      }
    }
    addmny(playerNumber, skada);
  }

  void secondplaceBeauty(int playerNumber) {
    // inkassera 200 (ja 200 inte 4000)
    addmny(playerNumber, 200);
  }

  void youInherit(int playerNumber) {
    //inkassera 2000
    addmny(playerNumber, 2000);
  }
}
