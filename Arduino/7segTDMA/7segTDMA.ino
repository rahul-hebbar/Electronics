// Declare 7 segment on off conditions of all characters
int blank[7] = {0,0,0,0,0,0,0};
int zer[7] = {1,1,1,1,1,1,0};
int one[7] = {0,1,1,0,0,0,0};
int two[7] = {1,1,0,1,1,0,1};
int thr[7] = {1,1,1,1,0,0,1};
int fou[7] = {0,1,1,0,0,1,1};
int fiv[7] = {1,0,1,1,0,1,1};
int six[7] = {1,0,1,1,1,1,1};
int sev[7] = {1,1,1,0,0,0,0};
int eig[7] = {1,1,1,1,1,1,1};
int nin[7] = {1,1,1,1,0,1,1};
int A[7] = {1,1,1,0,1,1,1};
int B[7] = {0,0,1,1,1,1,1};
int C[7] = {1,0,0,1,1,1,0};
int D[7] = {0,1,1,1,1,0,1};
int E[7] = {1,0,0,1,1,1,1};
int F[7] = {1,0,0,0,1,1,1};
int G[7] = {0,0,1,1,1,1,0};
int H[7] = {0,0,1,0,1,1,1};
int I[7] = {0,0,0,0,1,1,0};
int J[7] = {0,1,1,1,1,0,0};
int K[7] = {0,0,0,0,1,1,1};
int L[7] = {0,0,0,1,1,1,0};
int M[7] = {1,1,1,0,1,1,0};
int N[7] = {0,0,1,0,1,0,1};
int O[7] = {0,0,1,1,1,0,1};
int P[7] = {1,1,0,0,1,1,1};
int Q[7] = {1,1,1,0,0,1,1};
int R[7] = {0,0,0,0,1,0,1};
int S[7] = {0,0,1,0,0,1,1};
int T[7] = {0,0,0,1,1,1,1};
int U[7] = {0,0,1,1,1,0,0};
int V[7] = {0,1,1,1,1,1,0};
int W[7] = {0,1,1,1,1,1,1};
int X[7] = {0,1,1,0,1,1,1};
int Y[7] = {0,1,1,1,0,1,1};
int Z[7] = {0,1,0,0,1,0,1};

String toDisp = String("  0123456789abcdefghijklmnopqrstuvwxyz"); // add two spaces before hand

void writeLedDisp(int arr[7], int mode){
  if (mode == 1){
    digitalWrite(2,arr[0]);
    digitalWrite(3,arr[1]);
    digitalWrite(4,arr[2]);
    digitalWrite(5,arr[3]);
    digitalWrite(6,arr[4]);
    digitalWrite(7,arr[5]);
    digitalWrite(8,arr[6]);
  }
  else if (mode == 0) {
    digitalWrite(2,!arr[0]);
    digitalWrite(3,!arr[1]);
    digitalWrite(4,!arr[2]);
    digitalWrite(5,!arr[3]);
    digitalWrite(6,!arr[4]);
    digitalWrite(7,!arr[5]);
    digitalWrite(8,!arr[6]);   
  }
}

void setLedDisp( char val, int mod ){
  switch(val){
    case ' ':
      writeLedDisp(blank,mod);
      break;
    case '0':
      writeLedDisp(zer,mod);
      break;
    case '1':
      writeLedDisp(one,mod);
      break;
    case '2':
      writeLedDisp(two,mod);
      break;
    case '3':
      writeLedDisp(thr,mod);
      break;
    case '4':
      writeLedDisp(fou,mod);
      break;
    case '5':
      writeLedDisp(fiv,mod);
      break;
    case '6':
      writeLedDisp(six,mod);
      break;
    case '7':
      writeLedDisp(sev,mod);
      break;
    case '8':
      writeLedDisp(eig,mod);
      break;
    case '9':
      writeLedDisp(nin,mod);
      break;
    case 'a':
      writeLedDisp(A,mod);
      break;
    case 'b':
      writeLedDisp(B,mod);
      break;
    case 'c':
      writeLedDisp(C,mod);
      break;
    case 'd':
      writeLedDisp(D,mod);
      break;
    case 'e':
      writeLedDisp(E,mod);
      break;
    case 'f':
      writeLedDisp(F,mod);
      break;
    case 'g':
      writeLedDisp(G,mod);
      break;
    case 'h':
      writeLedDisp(H,mod);
      break;
    case 'i':
      writeLedDisp(I,mod);
      break;
    case 'j':
      writeLedDisp(J,mod);
      break;
    case 'k':
      writeLedDisp(K,mod);
      break;
    case 'l':
      writeLedDisp(L,mod);
      break;
    case 'm':
      writeLedDisp(M,mod);
      break;
    case 'n':
      writeLedDisp(N,mod);
      break;
    case 'o':
      writeLedDisp(O,mod);
      break;
    case 'p':
      writeLedDisp(P,mod);
      break;
    case 'q':
      writeLedDisp(Q,mod);
      break;
    case 'r':
      writeLedDisp(R,mod);
      break;
    case 's':
      writeLedDisp(S,mod);
      break;
    case 't':
      writeLedDisp(T,mod);
      break;
    case 'u':
      writeLedDisp(U,mod);
      break;
    case 'v':
      writeLedDisp(V,mod);
      break;
    case 'w':
      writeLedDisp(W,mod);
      break;
    case 'x':
      writeLedDisp(X,mod);
      break;
    case 'y':
      writeLedDisp(Y,mod);
      break;
    case 'z':
      writeLedDisp(Z,mod);
      break;
  }
}

void setup() {
  pinMode(2,OUTPUT);
  pinMode(3,OUTPUT);
  pinMode(4,OUTPUT);
  pinMode(5,OUTPUT);
  pinMode(6,OUTPUT);
  pinMode(7,OUTPUT);
  pinMode(8,OUTPUT);
  pinMode(9,OUTPUT);
  pinMode(10,OUTPUT);
  pinMode(11,OUTPUT);
}

void loop() {
  for (unsigned int ch = 0; ch <= toDisp.length()-3; ch++){
    for (unsigned ct = 0; ct <= 40; ct ++){
      setLedDisp(toDisp.charAt(ch+2),0);
      digitalWrite(9,HIGH);
      digitalWrite(10,LOW);
      digitalWrite(11,HIGH);
      delay(5);
      setLedDisp(toDisp.charAt(ch+1),0);
      digitalWrite(9,HIGH);
      digitalWrite(10,HIGH);
      digitalWrite(11,LOW);
      delay(5);
      setLedDisp(toDisp.charAt(ch),1);
      digitalWrite(9,LOW);
      digitalWrite(10,LOW);
      digitalWrite(11,LOW);
      delay(5);
    }
  }  
}
