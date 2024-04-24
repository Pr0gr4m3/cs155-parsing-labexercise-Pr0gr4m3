## How to Compile


### Using Makefile

```bash
make
./parsing
```

### Alternatively

```bash
bison -d bison.y
flex flex.l
gcc bison.tab.c lex.yy.c -lfl -o parsing
./parsing
```

### Instructions

## The program aborts parsing after encountering a syntax error so something like ./parsing < error.txt won't work since error.txt contains 10 lines of expressions
## After typing ./parsing , you can type an expression and press enter to identify whether or not it is syntactically correct
## Based on the given CFG in the PDF file: the expressions are plus, minus, times, and parentheses. The operands are either an integer or a single-letter lower-case variable.

