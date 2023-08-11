num [0-9]*(0|2|4|6|8)
%%
{num} printf("Even");
.+ printf("Odd");
%%
void main(){
printf("Enter the string: ");
yylex();

}
