class Rutor {
  int[][]flipped={
    //s0
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    //s1  
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    //s2  
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    //s3
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
  };
  int[][]bygg={
    //s0
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    //s1  
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    //s2  
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    //s3
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
  };
  int[][]ownd={
    //0=N/A
    //1=player 1 äger denna tomt
    //2=player 2 äger denna tomt
    //3=player 3 äger denna tomt
    //4=player 4 äger denna tomt
    //5=Ej ägd
    //s0 
    {0, 5, 0, 5, 0, 5, 5, 0, 5, 5}, 
    //s1  
    {0, 5, 5, 5, 5, 5, 5, 0, 5, 5}, 
    //s2  
    {0, 5, 0, 5, 5, 5, 5, 5, 5, 5}, 
    //s3
    {0, 5, 5, 0, 5, 5, 0, 5, 0, 5}
  };
  int countverk( int playerNumber) {
    int r=0;
    if (ownd[1][2]==playerNumber) {
      r+=1;
    }
    if (ownd[2][8]==playerNumber) {
      r+=1;
    }
    return r;
  }
  int countstations(int playerNumber) {
    int r=0;
    if (ownd[0][5]== playerNumber && rutor.flipped[0][5]==0) {
      r+=1;
    }
    if (ownd[1][5]== playerNumber && rutor.flipped[1][5]==0) {
      r+=1;
    }
    if (ownd[2][5]== playerNumber && rutor.flipped[2][5]==0) {
      r+=1;
    }
    if (ownd[3][5]== playerNumber && rutor.flipped[3][5]==0) {
      r+=1;
    }
    return r;
  }
  int whoowns(int s, int p) {
    if (rutor.flipped[s][p]==0) {
      int r=ownd[s][p];
      return r;
    }
    return 5;
  }
  void buy(int playerNumber, int s, int p) {
  if(checkstrat(0)==0){
    if (rutor.whoowns(s, p)==5) {
      if (info.kostnad[s][p][0]!=0) {
        if (checkmny(playerNumber)>=info.kostnad[s][p][0]) {
          addmny(playerNumber, -1*info.kostnad[s][p][0]);
          rutor.ownd[s][p]=playerNumber;
        }]
      }
    }
  }
}
