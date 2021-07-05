using Base: first_index
message = "And now for something completely different"
println(message)

π = 3.14159
print(π)

# to run a file from command terminal: /path/to/julia script-name.jl
# to run from repl: include("path/to/script-name.jl")

# Functions

parse(Int64, "32")
parse(Float64, "3.14159")
#parse(Int64, "Hello")

trunc(Int64, 23234.3434343)

float(-32)
string(32.5454)

## Math function
degrees = 45
radians = degrees / 180 * π

## Composition
x = sin(degrees / 360 * 2 * π)
x = exp(log(x+1))

## adding new functions
function printlyrics()
    println("I'm a lumberjack and I'm okay.")
    println("I sleep all night and I work all day.")    
end

function repeatlyrics()
printlyrics()            # jullia functions dont depend on indentations
    printlyrics()
end

function printtwice(bruce)
    println(bruce)
    println(bruce)
end

function cattwice(part1, part2)
    concat = part1 * part2
    printtwice(concat)
end

### In julia "a"*"b" gives "ab", "a"+"b" is undefined
### repeat same string using power
### This list of functions is called a stacktrace. It tells you what program file the error occurred in
using ThinkJulia
using Luxor

🐢 = Turtle()

@svg begin
    forward(🐢, -300)
end

@svg begin
    forward(🐢, 100)
    turn(🐢, -90)
    forward(🐢, 100)
    turn(🐢, -90)
    forward(🐢, 100)
    turn(🐢, -90)
    forward(🐢, 100)
end

for i in 1:4
    println("Hello")
end


function square(t)
    for i in 1:4
        forward(t, 100)
        turn(t, -90)
    end
end
🐢 = Turtle()
@svg begin
    square(🐢)
end


function polygon(t, n, len)
    angle = 360 / n
    for i in 1:n
        forward(t, len)
        turn(t, -angle)
    end
end

🐢 = Turtle()
@svg begin
    polygon(🐢, 7, 70)
end

function circle(t, r)
    circumference = 2 * π * r
    n = 100
    len = circumference / n
    polygon(t, n, len)
end

# Conditionals and Recursions
minutes = 105
hours = minutes / 60
remainder = minutes % 60

5==5
5==6
true == true
typeof(true)

2 ≠ 3
2 ≤ 3

n = 6
n % 2 == 0 || n % 3 == 0
n = 9
n % 2 == 0 || n % 3 == 0
# ! is negation operator
x = 2

## chinditionals
if x > 0
    println("x is positive")
    if x < 5
        println("x is smol")
    end
end
y = 5

## chained conditionals
if x < y
    println("x is less than y")
elseif x > y
    println("x is greater than y")
else
    println("x and y are equal")
end

## recursion
function countdown(n)
    if n ≤ 0
        println("Blastoff!")
    else
        print(n, " ")
        countdown(n-1)
    end
end

countdown(4)

## Keyboard input
text = readline()

## Debugging
signal_power = 9
noise_power = 10
ratio = signal_power ÷ noise_power
decibels = 10 * log10(ratio)
print(decibels)

# Fruitful functions
e = exp(1.0)
#height = radius * sin(radians)

function area1(radius)
    a = π * radius^2
    return a
end

#=
in a fruitful function the return statement includes an expression. 
This statement means: “Return immediately from this function and 
use the following expression as a return value.”
#=
asdsw
=#
=#

function area2(radius)
    π * radius^2
end

# both area fucntions are same

function distance(x₁, y₁, x₂, y₂)
    dx = x₂ - x₁
    dy = y₂ - y₁  
    @show dx dy  # prints them with the @show macro. 
    @show sqrt(dx^2 + dy^2)
end

# Iteration
## Reassignment
x = 5
x = 7

a = 5
b = a
a = 3
b

## Updating variables
x = x+1
## while
function countdown(n)
    while n > 0
        print(n, " ")
        n = n - 1
    end
    println("Blastoff")
end


function seq(n)
    while n != 1
        println(n)
        if n % 2 == 0   # n is even
            n = n / 2
        else
            n = n*3 + 1
        end
    end
end

## break
while true
    print("(Type 'done' to terminate)> ")
    line = readline()
    if line == "done"
        break
    end
    println(line)
end
println("Done!")

## continue
for i in 1:10
    if i % 3 == 0
        continue
    end
    print(i, " ")
end

### square roots
function square_root(a,x,ε)
    while true
        println(x)
        y = (x + a/x) / 2
        if abs(y - x) < ε
            break
        end
        x = y
    end
end

# Strings
fruit = "banana"
sizeof(fruit)

index = firstindex(fruit)
while index <= sizeof(fruit)
    letter = fruit[index]
    println(letter)
    global index = nextind(fruit, index)
end

str = "Julius Caesar";
str[1:6]
str[8:end]

### Strings are immutable
## String Interpolation
greet = "Hello"
whom = "World"
"$greet, $(whom)!"
'a' ∈ fruit


# Word Play
fin = open("words.txt")

for line in eachline("words.txt")
    if length(line) > 12
        println(line)
    end
end

# Arrays
cheeses = ["Cheddar", "Edam", "Gouda"];
numbers = [42, 123];
empty = [];
print(cheeses, " ", numbers, " ", empty)
typeof(cheeses)
### Arrays are mutable
### The slice operator [:], makes a copy of the whole array:
### push! adds new element to end of array
t = ['a', 'b', 'c'];
println(t)
push!(t,'d')
println(t)
### append! add the elements of the second array to the end of the first:
t1 = ['a', 'b', 'c'];
t2 = ['d', 'e'];
append!(t1, t2);
print(t1)
### sort! arranges the elements of the array from low to high:
t = ['d', 'c', 'e', 'b', 'a'];
sort!(t);
print(t)
### sort returns a copy of the elements of the array in order:
t1 = ['d', 'c', 'e', 'b', 'a'];
t2 = sort(t1)
println(t1)
print(t2)

## Dot syntax
#=For every binary operator like ^, there is a corresponding dot operator .^ that is 
automatically defined to perform ^ element-by-element on arrays. =#
print([1,2,3].^3)
t = uppercase.(["abc", "def", "ghi"]);
print(t)

## Deleting elements
t = ['a', 'b', 'c'];
splice!(t, 2)
print(t)
#splice! modifies the array and returns the element that was removed.
#pop! deletes and returns the last element:
t = ['a', 'b', 'c'];
pop!(t)
print(t)
#popfirst! deletes and returns the first element: 
t = ['a', 'b', 'c'];
popfirst!(t)
print(t)
#=The functions pushfirst! and push! insert an element at the beginning, respectively at 
the end of the array.
If you don’t need the removed value, you can use the function deleteat!:=#
split("spam-spam-spam", '-')
t = ["pining", "for", "the", "fjords"];
s = join(t, "_")

a = "banana"
b = "banana"
a ≡ b # reutns true as julia creates only one instance

a = [1, 2, 3];
b = [1, 2, 3];
a ≡ b # reutns false as julia creates only one instance

### If a refers to an object and you assign b = a, then both variables refer to the same object:
a = [1, 2, 3];
b = a
println(a)
println(b)
b[1] = 42
println(a)
println(b)

#=When you pass an array to a function, the function gets a reference to the array. 
    If the function modifies the array, the caller sees the change. =#


# Dictionary
## It is a mapping
eng2sp = Dict()
eng2sp["one"] = "uno";

eng2sp = Dict("one" => "uno", "two" => "dos", "three" => "tres")
ks = keys(eng2sp)
"one" ∈ ks
vs = values(eng2sp);
"uno" ∈ vs

### Dict as counter of alphabets
function histogram(s)
    d = Dict()
    for c in s
        if c ∉ keys(d)
            d[c] = 1
        else
            d[c] += 1
        end
    end
    d
end

h = histogram("brontosaurus")

#=Dictionaries have a function called get that takes a key and a default value. 
If the key appears in the dictionary, get returns the corresponding value; 
otherwise it returns the default value.=#
get(h, 'a', 0)
get(h, 'z', 0)

# Return an Array of all items in a collection or iterator.
collect(t)
collect(keys(h))

### If a global variable refers to a mutable value, you can modify the value without declaring the variable global:
### but if you want to reassign the variable, you have to declare it global
### For performance reasons, you should declare a global variable constant. 
### You can no longer reassign the variable but if it refers to a mutable value, 
### you can modify the value. 


# Tuples
##  a tuple is a comma-separated list of values. Can be defined both ways:
t = 'a', 'b', 'c', 'd', 'e'
t = ('a', 'b', 'c', 'd', 'e')
### To create a tuple with a single element, you have to include a final comma: 
t1 = ('a',)
typeof(t1)
t3 = tuple(1, 'a', pi)

## Tuple Assignment
a = 1; b=2
a,b = b,a

(a, b) = (1, 2, 3)  # a,b are assigned 1,2. 3 is not used
a, b, c = 1, 2  # throws error

addr = "julius.caesar@rome"
uname, domain = split(addr, "@")

### As return values
t = divrem(7, 3)
q, r = divrem(7, 3);
@show q r;

## Variable-length Argument Tuples
#=Functions can take a variable number of arguments. 
A parameter name that ends with ... gathers arguments into a tuple.
The complement of gather is scatter. If you have a sequence of values and you want to 
pass it to a function as multiple arguments, you can use the ... operator.
=#
function printall(args...)
    println(args)
end
printall(1, 2.0, '3')
printall(1, 2.0, '3', "Hello")

t = (7, 3);
divrem(t)  # throws error
divrem(t...)

## arrays and tuples
s = "abc";
t = [1, 2, 3];
zip(s,t)

for pair in zip(s, t)
    println(pair)
end

collect(zip(s, t))
collect(zip("Anne", "Elk"))

t = [('a', 1), ('b', 2), ('c', 3)];
for (letter, number) in t
    println(number, " ", letter)
end

#=If you combine zip, for and tuple assignment, you get a useful idiom for traversing 
two (or more) sequences at the same time. =#

function hasmatch(t1, t2)
    for (x, y) in zip(t1, t2)
        if x == y
            return true
        end
    end
    false
end

for (index, element) in enumerate("abc")
    println(index, " ", element)
end

d = Dict('a'=>1, 'b'=>2, 'c'=>3);

for (key, value) in d
    println(key, " ", value)
end

t = [('a', 1), ('c', 3), ('b', 2)];
d = Dict(t)

d = Dict(zip("abc", 1:3))

function processfile(filename)
    hist = Dict()
    for line in eachline(filename)
        processline(line, hist)
    end
    hist
end;

function processline(line, hist)
    line = replace(line, '-' => ' ')
    for word in split(line)
        word = string(filter(isletter, [word...])...)
        word = lowercase(word)
        hist[word] = get!(hist, word, 0) + 1
    end
end;

function totalwords(hist)
    sum(values(hist))
end

function differentwords(hist)
    length(hist)
end

hist = processfile("words.txt")
println("Total number of words: ", totalwords(hist))
println("Number of different words: ", differentwords(hist))

function mostcommon(hist)
    t = []
    for (key, value) in hist
        push!(t, (value, key))
    end
    reverse(sort(t))
end

t = mostcommon(hist)
println("The most common words are:")
for (freq, word) in t[1:10]
    println(word, "\t", freq)
end

## subtract takes dictionaries d1 and d2 and returns a new dictionary that contains all 
## the keys from d1 that are not in d2

# Files
## Reading and Writing
fout = open("output.txt", "w")
line1 = "This here's the wattle,\n";
write(fout, line1)
line2 = "the emblem of our land.\n";
write(fout, line2)
close(fout)

## Formatting
fout = open("output.txt","w")
write(fout, string(150))
write(fout, "\n")
camels = 42
println(fout, "I have spotted $camels camels.")
close(fout)

## FIlenames and Paths
cwd = pwd();
abspath("output.txt")
ispath("ThinkJulia.jl")
isdir("D:/Study")

readdir("D:/SteamLibrary/")
readdir(cwd)

function walk(dirname)
    for name in readdir(dirname)
        path = joinpath(dirname, name)
        if isfile(path)
            println(path)
        else
            try
                walk(path)
            catch e
                pass
            end
        end
    end
end

walkdir("D/Study")

using ThinkJulia
db = DBM("captions", "c")
db["cleese.png"] = "Photo of John Cleese."
close(db)

using Serialization
io = IOBuffer();
t = [1, 2, 3];
serialize(io, t)
print(take!(io))
s = take!(io);
t2 = deserialize(IOBuffer(s));

## Command Objects
cmd = `echo hello`
a = read(cmd, String)

# Structs and Functions
#= A programmer-defined composite type is also called a struct. The struct definition 
for a point looks like this: =#

struct Point
    x
    y
end

p = Point(3.0, 4.0)
distance = sqrt(p.x^2 + p.y^2)
### Structs are immutable
### Mutable structs:
mutable struct MPoint
    x
    y
end

blank = MPoint(0.0, 0.0)
blank.x = 3.0
blank.y = 4.0

"""
Represents a rectangle.

fields: width, height, corner.
"""
struct Rectangle
    width
    height
    corner
end

origin = MPoint(0.0, 0.0)
box = Rectangle(100.0, 200.0, origin)

## Instances as Arguments
function printpoint(p)
    println("($(p.x), $(p.y))")
end
printpoint(blank)
fieldnames(Point)
isdefined(p, :x)



function sinc(x)::Float64   #return value is always converted to Float64
    if x == 0
        return 1
    end
    sin(x)/(x)
end

struct Card
    suit :: Int64
    rank :: Int64
    function Card(suit::Int64, rank::Int64)
        @assert(1 ≤ suit ≤ 4, "suit is not between 1 and 4")
        @assert(1 ≤ rank ≤ 13, "rank is not betwen 1 and 13")
        new(suit, rank)        
    end
end

