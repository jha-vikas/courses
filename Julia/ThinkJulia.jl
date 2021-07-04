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


