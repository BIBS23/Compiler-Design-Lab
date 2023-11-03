#include <stdio.h>
#include <string.h>

// Function to check whether the given string is accepted by the DFA or not
void checkValidDFA(char s[]) {
    // Stores initial state of DFA
    int state = 0;

    // Iterate through the string
    for (int i = 0; i < strlen(s); i++) {
        if (state == 0 && s[i] == 'a') {
            state = 1;
        } else if (state == 1 && s[i] == 'b') {
            state = 2;
        } else if ((state == 0 || state == 1 || state == 2) && s[i] == 'a') {
            state = 2;
        } else if (state == 2 && s[i] == 'b') {
            state = 2;
        } else {
            // If the current input symbol does not match any transition, reject the string
            state = -1;
            break;
        }
    }

    // If final state is reached
    if (state == 2) {
        printf("Accepted");
    } else {
        printf("Not Accepted");
    }
}

// Driver Code
int main() {
    // Given string
    char s[100];
    printf("Enter the string: ");
    scanf("%s", s);

    // Function Call
    checkValidDFA(s);
    return 0;
}

