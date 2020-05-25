import java_cup.runtime.*;

%%

%class scanner
%unicode
%cup
%line
%column

%{
  private Symbol symbol(int type) {
    return new Symbol(type, yyline, yycolumn);
  }
  private Symbol symbol(int type, Object value) {
    return new Symbol(type, yyline, yycolumn, value);
	
  }
%}

nl = \r|\n|\r\n
ws = [ \t]

variable = [a-z]
vector = [A-Z]
real = (([0-9]+) | ([0-9]+\.[0-9]*) | ([0-9]*\.[0-9]+)) (e|E('+'|'-')?[0-9]+)?

%%

"["				{return symbol(sym.SO);}
"]"				{return symbol(sym.SC);}
","				{return symbol(sym.CM);}


"^"				{return symbol(sym.POW);}
"-"				{return symbol(sym.SUB);}
"*"				{return symbol(sym.MUL);}
"/"				{return symbol(sym.DIV);}
"."				{return symbol(sym.DOT);}
"+"				{return symbol(sym.ADD);}
"-"				{return symbol(sym.SUB);}

"="				{return symbol(sym.EQ);}


";"				{return symbol(sym.S);}
"?"				{return symbol(sym.QM);}

{vector} 		{return symbol(sym.VET, new String(yytext()));}
{variable} 		{return symbol(sym.VAR, new String(yytext()));}
{real}			{return symbol(sym.REAL, new Double(yytext()));}

"/*" ~ "*/"     {;}
{ws}|{nl}       {;}
. {System.out.println("SCANNER ERROR: "+yytext());}