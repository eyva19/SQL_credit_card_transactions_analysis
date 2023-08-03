# SQL_credit_card_transactions_analysis
# PART 1
## Evidence to suggest that a credit card has been hacked:
Hackers may use a card to make small, frequent charges in order to avoid detection. These charges may be for items that are relatively inexpensive, such as coffee or gas. Also hackers may sometimes make small test transactions to check if the card is active and valid before attempting larger charges. I would say it is suspicious if the count of transactions (that are less than $2.00 per cardholder) is higher than 10, in those cases it can be evidence that card has been hacked. Thereby based on our data I would highlight below cardholders as potentially been hacked: Shane Shaffer, Kyle Tucker, Sara Cooper, Michael Floyd, Mark Lewis, Danielle Green, Nancy Contreras, Sean Taylor, Kevin Spencer, Crystal Clark, Malik Carlson, John Martin, Matthew Gutierrez, Brandon Pineda, Peter Mckay, Stephanie Dalton, Megan Price.

## Top 100 highest transactions made between 7:00 am and 9:00 am
The highest amount is 1,894.00 and the lower is 11.65. High-Value Purchase between 7am and 9am might be suspicious, since it's not a typical time for shopping. Most people do their shopping during the day, so a high-value purchase during the early morning hours is out of the ordinary. Also hackers might try to exploit early morning hours when people are less likely to be monitoring their accounts or when customer service is less available to address potential issues. I would say that all transaction higher than 100$ can be evidence that card has been hacked.

## Top 5 merchants prone to being hacked using small transactions (less than 2$) are "Wood-Ramirez", "Hood-Phillips", "Baker Inc", "Clark and Sons", "Greene-Wood".


# PART 2
The credit card transactions for ID #2  show a consumption pattern with some unusual features: amount is relatively small - up to $20. This suggests that the cardholder may be using the card for everyday purchases, such as groceries or gas. But also this may mean that the card was lost/stolen and cardholder might not notice that (for instance, this is second card for checking account). If so, scammers may use it to pay small amounts so that the card holder does notice them.

The credit card transactions for ID #18 - there are unusual spikes in transaction amount: sudden increases, unusually large transactions, where a couple of transactions that stand out due to their significantly higher amounts. The transaction amounts vary, with some small amounts as well as some larger ones. There are a few transactions that could be evidence that card has been hacked due to their high amounts relative to the rest of the transactions.

There 9 outliers for cardholder ID #25: in January - 1 outlier, February - no outliers, March - 1 outlier, April - 3 outliers, May - 1 outlier, June - 3 outliers.  It can indicate potential fraudulent or unusual activities. In this case, some of the transactions, especially those with significantly higher amounts compared to the rest, could be considered anomalies. 
