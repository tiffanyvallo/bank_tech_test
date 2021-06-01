## Bank Tech Test

### Requirements
You should be able to interact with your code via a REPL like IRB or the JavaScript console.
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria
Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

```
date       || credit  || withdrawal || balance
14/01/2012 ||         || 500.00     || 2500.00
13/01/2012 || 2000.00 ||            || 3000.00
10/01/2012 || 1000.00 ||            || 1000.00
```

### User Stories
```
As a client
So that I can store money in my account
I would like to be able to make a deposit
```
```
As a client
So that I can use my money
I would like to be able to make a withdrawal
```
```
As a client
So that I can keep an eye on my finances
I would like to be able to see my bank balance
```
```
As a client
So that I can view my account
I would like to be able to print a dated bank statement of my transactions
```
#### Edge Cases
```
As a client
So that I am not withdrawing over my balance
I would like to be notified if I withdraw over my balance
```
### How to use

### How to run tests

### Code Dependecies

### Screenshots

### Reflection

