
//----------------------------------------------------
// The following code was generated by CUP v0.11b beta 20140226
//----------------------------------------------------

/** CUP generated class containing symbol constants. */
public class sym {
  /* terminals */
  public static final int VET = 4;
  public static final int POW = 7;
  public static final int SC = 6;
  public static final int CM = 14;
  public static final int S = 15;
  public static final int QM = 16;
  public static final int EQ = 13;
  public static final int EOF = 0;
  public static final int ADD = 11;
  public static final int VAR = 3;
  public static final int SUB = 12;
  public static final int DOT = 10;
  public static final int DIV = 9;
  public static final int SO = 5;
  public static final int REAL = 2;
  public static final int error = 1;
  public static final int MUL = 8;
  public static final String[] terminalNames = new String[] {
  "EOF",
  "error",
  "REAL",
  "VAR",
  "VET",
  "SO",
  "SC",
  "POW",
  "MUL",
  "DIV",
  "DOT",
  "ADD",
  "SUB",
  "EQ",
  "CM",
  "S",
  "QM"
  };
public String[] TT;
	public sym(){
		TT = new String[100];
		TT[4]=new String("VET");
		TT[7]=new String("POW");
		TT[6]=new String("SC");
		TT[14]=new String("CM");
		TT[15]=new String("S");
		TT[16]=new String("QM");
		TT[13]=new String("EQ");
		TT[0]=new String("EOF");
		TT[11]=new String("ADD");
		TT[3]=new String("VAR");
		TT[12]=new String("SUB");
		TT[10]=new String("DOT");
		TT[9]=new String("DIV");
		TT[5]=new String("SO");
		TT[2]=new String("REAL");
		TT[1]=new String("error");
		TT[8]=new String("MUL");
	}
public String getTT(int i){return TT[i];}
}

