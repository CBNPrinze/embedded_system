#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#define MAX_SIZE 14

typedef struct {
    int data[MAX_SIZE];
    char operators[MAX_SIZE];
    int top;
} Stack;

void initializeStack(Stack *stack) {
    stack->top = -1;
}

int isEmpty(Stack *stack) {
    return stack->top == -1;
}

void push(Stack *stack, int value) {
    stack->data[++stack->top] = value;
}

int pop(Stack *stack) {
    return stack->data[stack->top--];
}

int peek(Stack *stack) {
    return stack->data[stack->top];
}

int isOperator(char c) {
    return (c == '+' || c == '-' || c == '*' || c == '/');
}

int performOperation(int a, int b, char operator) {
    switch (operator) {
        case '+':
            return a + b;
        case '-':
            return a - b;
        case '*':
            return a * b;
        case '/':
            if (b != 0) {
                return a / b;
            } else {
                return 0; // Return an error value
            }
    }
    return 0;
}

int evaluateExpression(char *expression) {
    Stack valueStack;
    Stack operatorStack;

    initializeStack(&valueStack);
    initializeStack(&operatorStack);

    int i = 0;
    while (expression[i] != '\0') {
        if (expression[i] == ' ') {
            i++;
            continue;
        }
        if (isdigit(expression[i])) {
            int value = 0;
            while (isdigit(expression[i])) {
                value = value * 10 + (expression[i] - '0');
                i++;
            }
            push(&valueStack, value);
        } else if (isOperator(expression[i])) {
            while (!isEmpty(&operatorStack) && isOperator(peek(&operatorStack)) &&
                (expression[i] != '*' && expression[i] != '/') &&
                (expression[i] == '+' || expression[i] == '-')) {
                int b = pop(&valueStack);
                int a = pop(&valueStack);
                char op = pop(&operatorStack);
                int result = performOperation(a, b, op);
                push(&valueStack, result);
            }
            push(&operatorStack, expression[i]);
            i++;
        } else if (expression[i] == '(') {
            push(&operatorStack, expression[i]);
            i++;
        } else if (expression[i] == ')') {
            while (!isEmpty(&operatorStack) && peek(&operatorStack) != '(') {
                int b = pop(&valueStack);
                int a = pop(&valueStack);
                char op = pop(&operatorStack);
                int result = performOperation(a, b, op);
                push(&valueStack, result);
            }
            if (!isEmpty(&operatorStack) && peek(&operatorStack) == '(') {
                pop(&operatorStack);
            }
            i++;
        } else {
            return 0; // Return an error value
        }
    }

    while (!isEmpty(&operatorStack)) {
        int b = pop(&valueStack);
        int a = pop(&valueStack);
        char op = pop(&operatorStack);
        int result = performOperation(a, b, op);
        push(&valueStack, result);
    }

    return pop(&valueStack);
}

