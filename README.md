Bank Tech Test Challenge
======

It's week 10 at Makers and we are practising our tech test skills.

Specification
----
###Requirements
- [ ] You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
- [ ] Deposits, withdrawal.
- [ ] Account statement (date, amount, balance) printing.
- [ ] Data can be kept in memory (it doesn't need to be stored to a database or anything).

###Acceptance criteria
Given a client makes a deposit of 1000 on 10-01-2012  
And a deposit of 2000 on 13-01-2012  
And a withdrawal of 500 on 14-01-2012  
When she prints her bank statement  
Then she would see:  

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

Coding Approach
-----
Without any requirement to run a GUI I have opted to write this in Ruby as I have most familiarity with the language.

###User Stories
```
As  user
With excess cash
I would like to be able to deposit money
```
```
As a user
Who sometimes runs short of cash
I would like to be able to withdraw money
```
```
As user
Who likes to know whats going on
I would like to be able to view a list of my transactions
```
```
As a user
Who isn't familiar with timestamps
I would like my statement to show dates as dd/mm/yy
```

###How to install, run and test




*Example irb console test:*

```
require


```

irb console output:

![console output]()

*Test coverage*

