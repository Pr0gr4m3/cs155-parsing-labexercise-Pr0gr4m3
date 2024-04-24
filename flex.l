%option noyywrap

%{
# include "bison.tab.h"
%}

%%
[a-z]   {return VAR;}
[0-9][0-9]* {yylval = atoi(yytext); return NUM;}
[-()*+]   {return *yytext;}
[\n]    {return EOL;}
[ \t\r\f]+	 /* eat up whitespace */
.            {return INVALID;}
%%

