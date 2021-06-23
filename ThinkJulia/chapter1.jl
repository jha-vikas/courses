message = "And now for something completely different"
println(message)

π = 3.14159
print(π)

# to run a file from command terminal: /path/to/julia script-name.jl
# to run from repl: include("path/to/script-name.jl")

# Functions

parse(Int64, "32")
parse(Float64, "3.14159")
parse(Int64, "Hello")

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