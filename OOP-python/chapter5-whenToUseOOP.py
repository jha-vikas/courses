square = [(1,1), (1,2), (2,2), (2,1)]

import math

def distance(p1, p2):
    return math.sqrt((p1[0] - p2[0])**2 + (p1[1] - p2[1])**2)

def perimeter(polygon):
    perimeter = 0
    points = polygon + [polygon[0]]
    for i in range(len(polygon)):
        perimeter += distance(points[i], points[i+1])
    return perimeter

# a more OOP approach

class Point:
    def __init__(self, x, y) -> None:
        self.x = x
        self.y = y
    
    def distance(self, p2):
        return math.sqrt((self.x-p2.x)**2 + (self.y-p2.y)**2)

class Polygon:
    def __init__(self) -> None:
        self.vertices = []
    
    def add_point(self, point):
        self.vertices.append(point)
    
    def perimeter(self):
        perimeter = 0
        points = self.vertices + [self.vertices[0]]
        for i in range(len(self.vertices)):
            perimeter += points[i].distance(points[i+1])
        return perimeter


class Color:
    def __init__(self, rgb_value, name) -> None:
        self._rgb_value = rgb_value
        self._name = name
    
    def _set_name(self, name):
        if not name:
            raise Exception("Invalid Name")
        self._name = name
    
    def _get_name(self):
        return self._name
    
    name = property(_get_name, _set_name)


## Using decorator
class Color:
    def __init__(self, rgb_value, value) -> None:
        self._rgb_value = rgb_value
        self.name = value
    
    @property
    def name(self):
        print("Returning name.....")
        return self._name

    @name.setter
    def name(self, name):
        print("Setting name.....")
        if not name:
            raise Exception("Invalid Name")
        self._name = name
    

from urllib.request import urlopen

## custom getters(custom attributes)

class WebPage:
    def __init__(self, url) -> None:
        self.url = url
        self._content = None
    
    @property
    def content(self):
        if not self._content:
            print("Retrieving new page...")
            self._content = urlopen(self.url).read()
        return self._content

class AverageList(list):
    @property
    def average(self):
        return sum(self) / len(self)


## Management objects
import sys
import shutil
import zipfile

from pathlib import Path

class ZipReplace:
    def __init__(self, filename, search_string, replace_string) -> None:
        self.filename = filename
        self.search_string = search_string
        self.replace_string = replace_string
        self.temp_directory = Path(f"unzipped-{filename}")
    
    def zip_find_replace(self):
        self.unzip_files()
        self.find_replace()
        self.zip_files()
    
    def unzip_files(self):
        self.temp_directory.mkdir()
        with zipfile.ZipFile(self.filename) as zip:
            zip.extractall(str(self.temp_directory))
    
    def find_replace(self):
        for filename in self.temp_directory.iterdir():
            with filename.open() as file:
                contents = file.read()
            contents = contents.replace(self.search_string, self.replace_string)
            with filename.open("w") as file:
                file.write(contents)
    
    def zip_files(self):
        with zipfile.ZipFile(self.filename, 'w') as file:
            for filename in self.temp_directory.iterdir():
                file.write(str(filename), filename.name)
        shutil.rmtree(str(self.temp_directory))
    
    