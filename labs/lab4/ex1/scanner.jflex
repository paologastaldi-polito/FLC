/*
Gastaldi Paolo
lab4, ex1
11-05-2020
*/

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

atom_string = [a-z][A-Za-z0-9_]*
var_string = [A-Z_][A-Za-z0-9_]*

integer =  ([1-9][0-9]*|0)
real = (([0-9]+\.[0-9]*) | ([0-9]*\.[0-9]+)) (e|E('+'|'-')?[0-9]+)?

%%

"("             {return symbol(sym.RO);}
")"             {return symbol(sym.RC);}

":-"            {return symbol(sym.COL_DASH);}
"?-"            {return symbol(sym.QM_DASH);}
","             {return symbol(sym.CM);}
"."             {return symbol(sym.DOT);}

{atom_string}   {return symbol(sym.ATOM_STRING, yytext());}
{var_string}    {return symbol(sym.VAR_STRING, yytext());}
{integer}       {return symbol(sym.INT, new Integer(yytext()));}
{real}          {return symbol(sym.REAL, new Double(yytext()));}

"/*" ~ "*/"     {;}
{ws}|{nl}       {;}
. {System.out.println("SCANNER ERROR: "+yytext());}