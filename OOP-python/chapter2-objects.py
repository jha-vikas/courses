class MyFirstClass:
    pass

class Point:
    pass

p1 = Point()
p2 = Point()

p1.x = 5
p1.y = 4

p2.x = 3
p2.y = 6

print(p1.x, p1.y)
print(p2.x, p2.y)

class Point1:
    def reset(self):
        self.x = 0
        self.y = 0

p = Point1()
p.reset()
print(p.x, p.y)

import math

class Point2:
    def move(self, x, y):
        self.x = x
        self.y = y
    
    def reset(self):
        self.move(0, 0)
    
    def calculate_distance(self, other_point):
        return math.sqrt(
            (self.x - other_point.x)**2 +
            (self.y - other_point.y)**2
        )

point1 = Point2()
point2 = Point2()

point1.reset()
point2.move(5,0)
print(point2.calculate_distance(point1))

assert (point2.calculate_distance(point1) == point1.calculate_distance(point2))

point1.move(3,4)
print(point1.calculate_distance(point2))
print(point1.calculate_distance(point1))


class Point3:
    """Represents a point in two-dim geometric coordinates"""
    def __init__(self, x=0, y=0) -> None:
        """Initialize the position of a a new point. The x and y coordinates can be
        specified. If they are not, the point defaults to the origin"""
        self.move(x,y)
    
    def move(self, x, y):
        """Move the point to a new location in 2-d space"""
        self.x = x
        self.y = y
    
    def reset(self):
        """Reset the point back to the geometric origin: 0, 0"""
        self.move(0,0)
    
    def calculate_distance(self, other_point) -> int:
        """calculate the distance from this point to a second point passed
        as a parameter"""
        return math.sqrt(
            (self.x - other_point.x)**2 +
            (self.y - other_point.y)**2
        )


