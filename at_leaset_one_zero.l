//ALGORITHM: 

//1. Start 

//2. Give the number to be identified 

//3. Specify the ruleset. 

//4. Define the C code 

//5. Stop

// how to run
// lex prg1.l
// gcc lex.yy.c -lfl
// ./a.out





num (0|1)*0(0|1)*
%%
{num} printf("acceted");
.+ printf("not accepted");
%%
void main(){
printf("Enter the string: ");
yylex();

}
