import pickle

some_data = ["a list", "containing", 5, "values including another list", "inner", "list", ["inner", "list"]]

with open("pickled_list", "wb") as file:
    pickle.dump(some_data, file)

with open("pickled_list", "rb") as file:
    loaded_data = pickle.load(file)

print(loaded_data)
assert loaded_data == some_data


## Using JSON module
import json
class Contact:
    def __init__(self, first, last):
        self.first = first
        self.last = last
    @property
    def full_name(self):
        return("{} {}".format(self.first, self.last))