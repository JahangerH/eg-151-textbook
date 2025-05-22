/*
This is a demonstration program for EG-151 microcontrollers that shows a tidy well commented program.
This program asks a user to input two numbers and uses the function findmax to determine which is the largest.
Author: Ben Clifford
Date: 12/10/2019
*/

// include library files
#include ‹stdio.h› //Required for scanf and printf

// main function
int main(void) {
    // Variable Declarations
    int numi, num2, maxnum;
    // Function Declarations
    int findmax(int, int)

        printf("Enter the first number: ");
    scant("&u", &numl);
    printf("Enter the first number: ");
    scanf("&u", &num2);
    
    /* invoke the function findmax passing numl and num2 
        as arguments and storing the result in the variable maxnum 
    */
    maxnum = findmax(num1, num2) : printf("The maximum number is 8u", maxnum) :
}

// findmax Function Definition
int findmax(int x, int y) {
    int maximum_number;
    if (x >= y)
    {
        maximum_number = x;
    }
    else
    {
        maximum_number = y;
    }
    return maximum_number;
}
