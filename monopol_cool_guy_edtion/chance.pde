class chance {
  Rutor rutor=new Rutor();
  int [] chans={1, 2, 3, 4, 5, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16};
  int [] nychans={1, 2, 3, 4, 5, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16};
  int size=chans.length;
  void draw(int s, int p, int q) {
    if (s==0 && p==7 || s==2 && p==2 || s==3 && p==6 ) {
      int size=chans.length;
      int f=int(random(0, size-1));
      //cardtype
      int ct= chans[f];
      int k=0;
      for ( int x=0; x<size; x++) {
        if (chans[x]!=0) {
          k+=1;
        }
      }
      if (k==0) {
        //blanda    
        for ( int v=0; v<size; v++) {
          chans[v]=nychans[v];
        }
      }
      if (k!=0) {
        //dra ett kort
        // kollar om kortet finns 
        while (ct==0) {
          f=int(random(0, size-1));
          ct= chans[f];
        }
        if (ct!=0) {

          chans[f]=0;


          if (ct==1) {
            advanceToBoardwalk(q);
          }
          if (ct==2) {
            advanceToGo(q);
          }
          if (ct==3) {
            advanceToIllinoisAvenue(q, s, p);
          }
          if (ct==4) {
            advanceToStCharlesPlace(q, s, p);
          }
          if (ct==5) {
            advanceToNearestRailroad(q, s, p);
          }
          if (ct==6) {
            advanceTheTokenToNearestUtility(q, s, p);
          }
          if (ct==7) {
            bankPaysYouDividend(q);
          }
          if (ct==8) {
            getOutOfJailFree(q);
          }
          if (ct==9) {
            goBack3Spaces(q, s, p);
          }
          if (ct==10) {
            goToJail(q);
          }
          if (ct==11) {
            makeGeneralRepairsOnAllYourProperty(q);
          }
          if (ct==12) {
            speedingFine(q);
          }
          if (ct==13) {
            takeATripToReadingRailroad(q, s, p);
          }
          if (ct==14) {
            youHaveBeenElectedChairmanOfTheBoard(q);
          }
          if (ct==15) {
            youHaveBeenElectedChairmanOfTheBoard(q);
          }
          if (ct==16) {
            yourBuildingLoanMatures(q);
          }
        }
      }
    }
  }

  void advanceToBoardwalk(int playerNumber) {
    //??ndra spelarens ct till normanstorg
    move(playerNumber, 3, 9);
  }

  void advanceToGo(int playerNumber) {
    //??ndra spelarens ct till G??
    addmny(playerNumber, 4000);
    move(playerNumber, 0, 0);
  }

  void advanceToIllinoisAvenue(int playerNumber, int s, int p) {
    if (checkgo(s, p, 2, 4)==1) {
      addmny(playerNumber, 4000);
    }
    move(playerNumber, 2, 4);
    //??ndra spelarens ct till hamngatan
    //Om spelaren passerar g?? (ev. g??ra en allm??n funktion f??r att checka detta...) addmny(playerNumber, 200);
  }

  void advanceToStCharlesPlace(int playerNumber, int s, int p) {
    if (checkgo(s, p, 1, 1)==1) {
      addmny(playerNumber, 4000);
    }
    move(playerNumber, 1, 1);
    //??ndra spelarens ct till "St. Eriksgata
    //Om spelaren passerar g??... addmny(playerNumber, 200);
  }

  void advanceToNearestRailroad(int playerNumber, int s, int p) {
    if (s==0 && p==7) {
      move(playerNumber, 1, 5);
      //om den inte ??r o??gd eller din
      if (rutor.ownd[1][5]!=5 && rutor.ownd[1][5]!=playerNumber && rutor.flipped[1][5]==0) {
        int owner=rutor.whoowns(1, 5);
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
      if (rutor.ownd[1][5]==5 && checkmny(playerNumber) >=4000) {
        rutor.ownd[1][5]=playerNumber;
        addmny(playerNumber, -4000);
      }
    }

    if (s==2 && p==2) {
      move(playerNumber, 2, 5);
      //om den inte ??r o??gd eller din
      if (rutor.ownd[2][5]!=5 && rutor.ownd[2][5]!=playerNumber && rutor.flipped[2][5]==0) {
        int owner=rutor.whoowns(2, 5);
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
      if (rutor.ownd[2][5]==5 && checkmny(playerNumber) >=4000 && rutor.flipped[2][5]==0) {
        rutor.ownd[2][5]=playerNumber;
        addmny(playerNumber, -4000);
      }
    }


    if (s==3 && p==6) {
      move(playerNumber, 0, 5);
      //om den inte ??r o??gd eller din
      if (rutor.ownd[0][5]!=5 && rutor.ownd[0][5]!=playerNumber) {
        int owner=rutor.whoowns(0, 5);
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
      if (rutor.ownd[0][5]==5 && checkmny(playerNumber) >=4000) {
        rutor.ownd[0][5]=playerNumber;
        addmny(playerNumber, -4000);
      }
    }
    //??ndra spelarens ct till n??rmaste j??rnv??g
    //Om j??rnv??gen ??r o??gd, ge spelaren valet att k??pa den fr??n banken
    //Om j??rnv??gen ??r ??gd av n??gon ska spelaren betala dubbel hyra till ??garen

    //Detta kort f??rekommer tv?? g??nger
  }

  void advanceTheTokenToNearestUtility(int playerNumber, int s, int p) {
    //elverket  
    if ((s==0 && p==7) || (s==3 && p==6 )) {
      move(playerNumber, 1, 2);
      if (rutor.ownd[1][2]!=5 && rutor.ownd[1][2]!=playerNumber) {
        int owner=rutor.whoowns(1, 2);
        int hyra=-10*(int(random(1, 7))+int(random(1, 7)));
        addmny(playerNumber, hyra);
        int profit=-1*hyra;
        addmny(owner, profit);
      }
      if (rutor.ownd[1][2]==5&& checkmny(playerNumber)>=4000) {
        rutor.ownd[1][2]=playerNumber;
        addmny(playerNumber, -4000);
      }
    }




    //vattenverk
    if (s==2 && p==2) {
      move(playerNumber, 2, 8);
      if (rutor.ownd[2][8]!=5 && rutor.ownd[2][8]!=playerNumber && rutor.flipped[2][8]==0) {
        int owner=rutor.whoowns(2, 8);
        int hyra=-10*(int(random(1, 7))+int(random(1, 7)));
        addmny(playerNumber, hyra);
        int profit=-1*hyra;
        addmny(owner, profit);
      }
      if (rutor.ownd[2][8]==5&& checkmny(playerNumber)>=4000) {
        rutor.ownd[2][8]=playerNumber;
        addmny(playerNumber, -4000);
      }
    }
    //??ndra spelarens ct till n??rmaste "utility"
    //Om rutan ??r o??gd, ge spelaren valet att k??pa den fr??n banken
    //Om rutan ??r ??gd, sl?? t??rningarna och betala ??garen 10 g??nger v??rdet av t??rningskastet
  }

  void bankPaysYouDividend(int playerNumber) {
    addmny(playerNumber, 1000);
  }

  void getOutOfJailFree(int playerNumber) {
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
    //Detta kort ska p?? n??got s??tt sparas s?? att spelaren kan anv??nda det n??r s?? v??ljs, ev. genom spelarspecifika listor om flera kort ska med
  }

  void goBack3Spaces(int playerNumber, int s, int p) {
    if (p>=3) {
      move(playerNumber, s, p-3);
    }
    if (p<3 && s>1) {
      move(playerNumber, s-1, 7+p);
    }
    if (p<3 && s==0) {
      move(playerNumber, 4, 7+p);
    }
    //??ndra spelarens ct till 3 rutor bak??t
  }

  void goToJail(int playerNumber) {
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
    //??ndra spelarens ct till f??ngelset
    //Se till att reglerna f??r att vara i f??ngelset g??ller
  }

  void makeGeneralRepairsOnAllYourProperty(int playerNumber) {
    //Spelaren ska betala 25 "pengar" f??r varje hus, 100 "pengar" f??r varje hotell
    int skada=0;
    for ( int s=0; s<4; s++) {
      for (int p=0; p < 10; p++) {
        if (playerNumber==rutor.whoowns(s, p)) {
          if (rutor.bygg[s][p]>0 && rutor.bygg[s][p]<5) {
            skada+=-25*rutor.bygg[s][p];
          }
          if (rutor.bygg[s][p]==5) {
            skada+=100;
          }
        }
      }
    }
    addmny(playerNumber, skada);
  }

  void speedingFine(int playerNumber) {
    addmny(playerNumber, -300);
  }

  void takeATripToReadingRailroad(int playerNumber, int s, int p) {
    //??ndra spelarens ct till "S??dra Railroad"
    //Om spelaren passerar G??, addmny(playerNumber, 200);
    move(playerNumber, 0, 5);
    if (checkgo(s, p, 0, 5)==1) {
      addmny(playerNumber, 4000);
    }
    if (rutor.ownd[0][5]!=5 && rutor.ownd[0][5]!=playerNumber) {
      int owner=rutor.whoowns(0, 5);
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

  void youHaveBeenElectedChairmanOfTheBoard(int playerNumber) {
    //Betala varje annan spelare 50 "pengar, d.v.s. -50*spelarantal f??r spelaren, +50 f??r resterande
    if (playerNumber!=1) {
      addmny(1, 1000);
      addmny(playerNumber, -1000);
    }
    if (playerNumber!=2) {
      addmny(2, 1000);
      addmny(playerNumber, -1000);
    }
    if (playerNumber!=3) {
      addmny(3, 1000);
      addmny(playerNumber, -1000);
    }
    if (playerNumber!=4) {
      addmny(4, 1000);
      addmny(playerNumber, -1000);
    }
  }

  void yourBuildingLoanMatures(int playerNumber) {
    addmny(playerNumber, 3000);
  }
}
