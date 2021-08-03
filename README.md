## Bank Tech Test

![bank_tech_test_demo](./public/images/demo_bank_test.gif)
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
date       || credit  || debit  || balance
14/01/2012 ||         || 500.00 || 2500.00
13/01/2012 || 2000.00 ||        || 3000.00
10/01/2012 || 1000.00 ||        || 1000.00
```
### Approach
- With the requirements given, I created [user stories](#user-stories) and [edge cases](#edge-cases)
- I had intially only thought of using 2 classes `Account` and `Transaction`, but soon realised in order to maintain single responsibility principle I needed another class `PrintStatement`
- I had created domain models to help me break down what needed to go into each class
<details>
<summary>Domain Models </summary>
<br>
<img src="/public/images/domain_models_bank.png">
</details>

- The `Account` class is where all client interaction happens, the client is able to withdraw, deposit and view their bank statemnt from here. 
- The `Transaction` class creates the credit and debit transactions
- The `PrintStatement` class creates and formats the statement using the information provided by the other 2 classes.
  
<br>

### User Stories
```
As a client
So that I can be smart with my money
I would like to open a bank account with default balance of £0.00
```
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
So that I am not taking out an overdraft
I would like to be notified if I withdraw over my balance
```
```
As a client
So that I am not taking out the correct amount
I would like to be notified if I try to withdraw an amount less than £0
```
```
As a client
So that I am depositing the correct amount 
I would like to be notified if I try to deposit an amount less than £0
```
<br>

### How to use
Clone this repo and move into the project directory. Run `bundle install` to ensure all gems are running.
To use this app you will need to run IRB
```
$ git clone https://github.com/tiffanyvallo/bank_tech_test.git
$ cd bank_tech_test
$ bundle install
$ irb
```
Once irb is running, require `account.rb`, you should get a response of true
```
# IRB session
irb(main) :001 > require './lib/account.rb'
 => true 
```
Initialize a new account. You can name this account whatever you like. You will see a new Account instance.
```
irb(main) :002 > new_account = Account.new
 => #<Account:0x00007feab72ab828 @balance=0, @history=[], @transaction=Transaction, @statement=#<PrintStatement:0x00007feab72ab5f8>> 
 
```
From here you will be able to withdraw and deposit any amount of money, using the following commands
```
irb(main) :003 > new_account.deposit(10000)
irb(main) :004 > new_account.withdraw(700)
```
To check your balance
```
irb(main) :005 > new_account.balance
```
To get a print statement of your transactions
```
irb(main) :006 > new_account.view_statement
date || credit || debit || balance
02/06/2021 ||  || 700.00 || 9300.00
02/06/2021 ||  || 700.00 || 10000.00
02/06/2021 || 700.00 ||  || 10700.00
02/06/2021 || 10000.00 ||  || 10000.00
```
### How to run tests and linting
For the test run Rspec
```
$ rspec
```
For linting run rubocop
```
$ rubocop
```
Here are the results of tests and linting for this application
<details>
<summary>Rspec </summary>
<br>
<img src="/public/images/rspec_bank.png">
</details>
<details>
<summary>Rubocop </summary>
<br>
<img src="/public/images/rubocop_bank.png">
</details>

### Code Dependecies
  - Ruby
  - Rspec
  - IRB
  - Rubocop
  - Simplecov

## My Javascript Version
Click [here](https://github.com/tiffanyvallo/bankTechTest) for my Javascript version of this Bank Tech Test