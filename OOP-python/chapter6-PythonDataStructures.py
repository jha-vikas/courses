## Tuples
import datetime

def middle(stock, date):
    symbol, current, high, low = stock
    return ((high + low) / 2, date)

mid_value, date = middle(("FB", 75.00, 75.03, 74.90), datetime.date(2014, 10, 31))

## Named Tuples
from collections import namedtuple
Stock = namedtuple("Stock", "symbol current high low")
stock = Stock("FB", 75.00, high=75.03, low=74.90)

## Dictionaries
stocks = {"GOOG": (613.30, 625.86, 610.50), "MSFT": (30.25, 30.70, 30.19)}

stocks.setdefault("GOOG", "INVALID")
stocks.setdefault("BBRY", (10.50, 10.62, 10.39))

"""The GOOG stock was already in the dictionary, so when we tried to setdefault it to
an invalid value, it just returned the value already in the dictionary. BBRY was not in
the dictionary, so setdefault returned the default value and set the new value in
the dictionary for us. We then check that the new stock is, indeed, in the dictionary."""

## defaultdict

from collections import defaultdict
def letter_frequency(sentence):
    frequencies = defaultdict(int)
    for letter in sentence:
        frequencies[letter] += 1
    return frequencies


## Counter
from collections import Counter
def letter_frequency1(sentence):
    return Counter(sentence)


