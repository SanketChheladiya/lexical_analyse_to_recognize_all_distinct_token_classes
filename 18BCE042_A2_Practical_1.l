%{
#include<stdio.h>
%}

%%
auto|double|int|struct|break|else|long|switch|case|enum|register|typedef|char|extern|return|union|continue|for|signed|void|do|if|static|while|default|goto|sizeof|volatile|const|float|short     {ECHO; printf(" ::: KEYWORD\n");} 						

[{};,()]   {ECHO; printf(" ::: SEPERATOR\n");}						

[+-/=*%]   {ECHO; printf(" ::: OPERATOR\n");}						

([a-zA-Z][0-9])+|[a-zA-Z]* {ECHO; printf(" ::: Identifier\n");}    

.|\n ; 															
%%


int yywrap()								
{
	return 1;
}

int main(void)
{
	yylex();
	return 0;
}