# Unit 7 Homework Assignment: Report to CFO about fraudulent charges

* Some fraudsters hack a credit card by making several small transactions (generally less than $2.00), which are typically ignored by cardholders. 

  * Count the transactions that are less than $2.00 per cardholder. 
  
  * Is there any evidence to suggest that a credit card has been hacked? Explain your rationale.

Answer: 

The graph below shows the count of transactions <$2  per card holder. Most of the card holders have significant counts above twenty. Megan Price has the most small transactions and should be checked first.

![alt text](.\Images\graph_visualiser-1697992866188.png)

Taking a look at top 100 transactions between 7a and 9a, there are 5 out of the 100 transactions that are quite large and worth investigation.

![alt text](.\Images\graph_visualiser-1697993875922.png)

Here is a graph of the top 100 transactions taking place outside the 7a-9a window:
![alt text](.\Images\graph_visualiser-1697994508457.png)

Given the similar shape of several large transactions and then quickly tapering off to $50 or less transactions, it's hard to judge whether there's truly more fraudulent transactions in either time period.

Taking a look at merchants with transactions <$2, these are the top ten to supsect of fraudulent transactions:
|Merchant Name|Transaction Count < $2|
|--------------|--------------|
|Wood-Ramirez|7|
|Hood-Phillips|6|
|Baker Inc|	6|
|Riggs-Adams|	5|
|Reed Group|	5|
|Martinez Group|	5|
|Walker, Deleon and Wolf|	5|
|Greene-Wood|	5|
|Jarvis-Turner|	5|
|Mcdaniel, Hines and Mcfarland|	5|

## Data Analysis Question 1

The two most important customers of the firm may have been hacked. Verify if there are any fraudulent transactions in their history. For privacy reasons, you only know that their cardholder IDs are 2 and 18.

What difference do you observe between the consumption patterns? Does the difference suggest a fraudulent transaction?

The spending patterns of Shane Shaffer and Malik Carlson are very different. 

Shane Shaffer always spends less than $20. This makes it very hard to identify fraudulent spending.

Malik Carlson has six large purchases over $200 whereas most of his spending is less than $200. I would inspect the large purchases first.

#### Part 2:

For Nancy Contreras, she has several large anomalous purchases in the first half of 2018. She has one in January, one in March, three in April, one in May, and four in June.



