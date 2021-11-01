# Iterator protocol
class CapitalIterator:
    def __init__(self, string) -> None:
        self.words = [w.capitalize() for w in string.split()]
        self.index = 0
    
    def __next__(self):
        if self.index == len(self.words):
            raise StopIteration()

        word = self.words[self.index]
        self.index += 1
        return word

    def __iter__(self):
        return self


class CapitalIterable:
    def __init__(self, string) -> None:
        self.string = string
    
    def __iter__(self):
        return CapitalIterator(self.string)


# Comprehensions
from os import name
import sys
filename = sys.argv[1]

with open(filename) as file:
    header = file.readline().strip().split('\t')
    contacts = [
        dict(
            zip(header, line.strip.split('\t'))
        ) for line in file
    ]


from collections import namedtuple

Book = namedtuple("Book", "author title genre")

books = [
    Book("Pratchett", "Nightwatch", "fantasy"),
    Book("Pratchett", "Thief Of Time", "fantasy"),
    Book("Le Guin", "The Dispossessed", "scifi"),
    Book("Le Guin", "A Wizard Of Earthsea", "fantasy"),
    Book("Turner", "The Thief", "fantasy"),
    Book("Phillips", "Preston Diamond", "western"),
    Book("Phillips", "Twice Upon A Time", "scifi"),
    ]

fantasy_authors = {b.author for b in books if b.genre == 'fantasy'}
fantasy_titles = {b.title: b.author for b in books if b.genre == 'fantasy'}

# Coroutines
def tally():
    score = 0
    while True:
        increment = yield score
        score += increment

