# Ruby basics and on irb tab
check if you have Ruby installed on your computer by tiping 
ruby -v
or download and install https://www.ruby-lang.org/en/downloads/

## 1
### The editor
Typing code into the editor and clicking on run gives you an answer in the output window. (Almost) all code gives an answer.

### Numbers and strings
Numbers and strings are Ruby’s math and text objects.

### Methods
You’ve used English-language methods like reverse and length. And symbolic methods like the multiplication method: *
Methods mean action!

* puts string -> for print something out of Ruby that return        =>nil 
* string.reverse -> for string reverse
* string.length -> for string length
* string * num -> repeat for n
* numb.to_s.reverse -> turn into string and reverse it
* .to_i converts things to numbers
* .to_a converts things to arrays
* [12, 47, 35].max -> return highest number
* tag = [12, 47, 35] 
* tag.sort! -> return array
* puts tag[0] -> return 12

## 2 
### Errors
If you try to reverse a number or do anything fishy, Ruby will tell you so.

### Arrays
Arrays are lists for storing things in some order. We also know how to create arrays and get items from arrays.

### Variables
Variables save a thing and give it a name. You used the equals sign to do this. Like: ticket = [14, 37, 18].
```ruby
text = "banane e lamponi"
text.gsub("banane", "gatti") # replace 
poem.lines.reverse 
# -> return line though reverse and not letter by letter.
puts poem.lines.reverse.join 
#-> took array of lines and put them together into string
```

## 3
### Exclamations
Methods may have exclamations (and also question marks) in their name. These are just there to better explain what their function is. No big deal.

### String manipulation
Search and change strings

### Chaining
Chaining methods lets you get a lot more done. Break up a poem, reverse it, reassemble it: poem.lines.reverse.join
```ruby
  books={} ->empty hash
  books["Gravitys Rainbow"] = :splendid -> puts new review
  books["The deep end"]  = :abysmal
  books["Living colors"] = :mediocre
  puts books
  puts books.length

# return us strings, arrays and hashes {"Gravitys Rainbow"=>"splendid", "The deep end"=>"abysmal", "Living colors"=>"mediocre"}

 puts books["Gravitys Rainbow"] -> splendid
 books.keys -> return us titles of books
 books.value -> return us values of books

  ratings = Hash.new {0}
  books.values.each { |rate|
    ratings[rate] += 1
  }
  puts ratings

# return us scorecard of ratings {"splendid"=>1, "abysmal"=>1, "mediocre"=>2} 

 5.times {print "Hello!"} 
 # -> Hello! printed 5 times
 5.times { |time|
    puts time
  } 
  # return 0 1 2 3 4 over multiple lines.
```

## 4
### Hashes
The little dictionary with the curly pages: {}

### Symbols
Tiny, efficient code words with a colon, like: :splendid

### Blocks
Chunks of code which can be tacked on to many of Ruby’s methods. Here’s the code you used to build a scorecard:
```ruby
books.values.each { |rate| ratings[rate] += 1 }
```
- def -> for define a method  

## 5
### Methods
Methods can be defined with def and have a name. Methods make your program shorter and easier to read.

### Parameters
Methods can have parameters.

### Return values
Methods (almost) always return a value.
```ruby
 s = json list of Shakespeare books
  s["William Shakespeare"].each { |key, val|
     puts val["title"]
  } 
  #-> return us list of books titles 
 a = 0 
  if a == 100
    puts "True, but a is now: #{a}"
  else
    puts "#{a} is not equal to 100"
  end
  # -> return us 0 is not equal to 100
# define two methods and then take a decision
  def hungry?(time_of_day_in_hours)
    puts "Me hungry"
    true
  end

  def eat_an(what)
    puts "Me eat #{what}\n"
  end

  eat_an 'apple' if hungry?(14)
  eat_an 'apple' if hungry?(10)  
  #-> return us  Me hungry
               # Me eat apple
               # Me hungry
               # Me eat apple
```

## 6
### Data
You loaded some data off the internet, traversed a data structure and selected values.

### Iterating
You iterated all elements of a hash and you chained some more methods.

### Pretty printing
And if that wasn’t enough, you formatted and printed some values in a way that is easy to read for humans. In fact you made a real program!

### IF
You learned to take control of your programs with if and else statements.

```ruby
  class Blurb
     attr_accessor :content, :time, :mood
  end
  blurb1 = Blurb.new
  puts blurb1
  blurb.1.content = "Today Mount Hood Was Stolen!"
  -> return #<Blurb:0xd7a>
  blurb1.time = Time.now
  blurb1.mood = :sick
  puts blurb1
```
  -> return #<Blurb:0xe66> -- blurb is updated
   for not set time every time add an initialize method to class and set char limit to 40.
```ruby  
class Blurb
    attr_accessor :content, :time, :mood

    def initialize(mood, content="")
      @time    = Time.now
      @content = content[0..39]
      @mood    = mood
    end
  end
```
  -> return us 2023-03-07 16:54:35 +0100

## 7
### Classes
Everything in Ruby is some kind of object. Classes explain objects, how a certain object works. For example, you made a few BlurbTM objects and these objects are explained in the Blurb class. In other words: you call them Blurb objects. You can use classes to (kinda) model real life objects.

### Accessors
Accessors are variables attached to an object which can be used outside the object. (blurb2.time = Time.now)

### Object variables
Object variables are the same variables you’re using for accessors, but inside the object. (@time = Time.now)

- create a new app
```ruby
class Blurbalizer
  def initialize(title)
    @title  = title
    @blurbs = [] # A fresh clean array
                 # for storing Blurbs
  end

  def add_a_blurb(mood, content)
    # The << means add to the end of the array
    @blurbs << Blurb.new(mood, content)
  end

  def show_timeline
    puts "Blurbify: #{@title} has #{@blurbs.count} Blurbs"

    @blurbs.sort_by { |t|
      t.time
    }.reverse.each { |t|
      puts "#{t.content.ljust(40)} #{t.time}"
    }
  end
end

myapp = Blurbalizer.new "The Big Blurb"

#-> return us #<Blurbalizer:0x176a>

myapp.add_a_blurb :moody, "Add Blurb here"

myapp.show_timeline
```
-> return us
Blurbalizer: The Big Blurb has 7 Blurbs
Add Blurb here                           Tue Mar 07 2023 17:10:42 GMT+0100 (Ora standard dell’Europa centrale)
I am never going back to that mountain.  Tue Mar 07 2023 17:09:29 GMT+0100 (Ora standard dell’Europa centrale)
I Left my Hoodie on the Mountain!        Tue Mar 07 2023 17:08:16 GMT+0100 (Ora standard dell’Europa centrale)
It was stolen by a giraffe !!            Tue Mar 07 2023 17:07:03 GMT+0100 (Ora standard dell’Europa centrale)
I am speechless!                         Tue Mar 07 2023 17:05:50 GMT+0100 (Ora standard dell’Europa centrale)
I can not believe Mt. Hood was stolen!   Tue Mar 07 2023 17:04:37 GMT+0100 (Ora standard dell’Europa centrale)
Today Mount Hood Was Stolen!             Tue Mar 07 2023 17:03:24 GMT+0100 (Ora standard dell’Europa centrale)

#### oop
```ruby
class Blurb
  attr_accessor :content, :time, :mood

  def initialize(mood, content="")
    @time    = Time.now
    @content = content[0..39]
    @mood    = mood
  end

  def moodify
    if    @mood == :sad
      return ":-("
    elsif @mood == :happy
      return ":-)"
    # Add other moods here
    end

    # The default mood
    ":-|"
  end
end

class Blurbalizer
  def initialize(title)
    @title  = title
    @blurbs = []
  end

  def add_a_blurb(mood, content)
    @blurbs << Blurb.new(mood, content)
  end

  def show_timeline
    puts "Blurbalizer: #{@title} has #{@blurbs.count} Blurbs"

    @blurbs.sort_by { |t|
      t.time
    }.reverse.each { |t|
      puts "#{t.content.ljust(40)} #{t.time}"
    }
  end
end

myapp.show_timeline
```
-> return us
Blurbalizer: The Big Blurb has 6 Blurbs
I am never going back to that mountain.  Tue Mar 07 2023 17:13:37 GMT+0100 (Ora standard dell’Europa centrale)
I Left my Hoodie on the Mountain!        Tue Mar 07 2023 17:12:24 GMT+0100 (Ora standard dell’Europa centrale)
It was stolen by a giraffe !!            Tue Mar 07 2023 17:11:11 GMT+0100 (Ora standard dell’Europa centrale)
I am speechless!                         Tue Mar 07 2023 17:09:58 GMT+0100 (Ora standard dell’Europa centrale)
I can not believe Mt. Hood was stolen!   Tue Mar 07 2023 17:08:45 GMT+0100 (Ora standard dell’Europa centrale)
Today Mount Hood Was Stolen!             Tue Mar 07 2023 17:07:32 GMT+0100 (Ora standard dell’Europa centrale)


## IRB

+ or * or ** for squared for use like a basic calculator
Math.sqrt(n) square root with parameter of n
Math.sin() returns the sine of a given expressed in radians which is in a range -inf,+inf
Math.tan() returns the tangent of a given angle expressed in radians which is in a range -inf,+inf
Math.abs() return the absolute value of integer or number

#### define a method - example
```ruby
def hi
puts "Hello World"
end
=> :hi 

def start the definition of method
next line is the body of method
end done define the method
=> :hi or nil for Ruby 2.0 and earlier versions
```
#### running method calling its name
hi or hi()

example:
```ruby
irb(main):015:0> def hi(name)
irb(main):016:1> puts "Hello #{name}!"
irb(main):017:1> end
=> :hi
irb(main):018:0> hi("Matz")
Hello Matz!
=> nil

#name ruby's way of inserting something into a string
```
#### for capitalized name:
```ruby
irb(main):019:0> def hi(name = "World")
irb(main):020:1> puts "Hello #{name.capitalize}!"
irb(main):021:1> end
=> :hi
irb(main):022:0> hi "chris"
Hello Chris!
=> nil
irb(main):023:0> hi
Hello World!
=> nil
```
#### define a class
```ruby
irb(main):024:0> class Greeter
irb(main):025:1>   def initialize(name = "World")
irb(main):026:2>     @name = name
irb(main):027:2>   end
irb(main):028:1>   def say_hi
irb(main):029:2>     puts "Hi #{@name}!"
irb(main):030:2>   end
irb(main):031:1>   def say_bye
irb(main):032:2>     puts "Bye #{@name}, come back soon."
irb(main):033:2>   end
irb(main):034:1> end
=> :say_bye

@name is an istance variable, available to all the methods of the class 
```
#### create an object
```ruby
greeter = Greeter.new("Pat")
greeter.say_hi
greeter.say_bye
```
once object created, remembers that the name is Pat

#### instance methods
```ruby
irb(main):039:0> Greeter.instance_methods
=> [:say_hi, :say_bye, :instance_of?, :public_send,
    :instance_variable_get, :instance_variable_set,
    :instance_variable_defined?, :remove_instance_variable,
    :private_methods, :kind_of?, :instance_variables, :tap,
    :is_a?, :extend, :define_singleton_method, :to_enum,
    :enum_for, :<=>, :===, :=~, :!~, :eql?, :respond_to?,
    :freeze, :inspect, :display, :send, :object_id, :to_s,
    :method, :public_method, :singleton_method, :nil?, :hash,
    :class, :singleton_class, :clone, :dup, :itself, :taint,
    :tainted?, :untaint, :untrust, :trust, :untrusted?, :methods,
    :protected_methods, :frozen?, :public_methods, :singleton_methods,
    :!, :==, :!=, :__send__, :equal?, :instance_eval, :instance_exec, :__id__]
```
#### for just list of methods defined for Greeter, pass parameter false
```ruby
irb(main):040:0> Greeter.instance_methods(false)
=> [:say_hi, :say_bye]
```
#### ALTERING CLASSES
```ruby
irb(main):044:0> class Greeter
irb(main):045:1>   attr_accessor :name
irb(main):046:1> end
=> [:name, :name=]

irb(main):047:0> greeter = Greeter.new("Andy")
=> #<Greeter:0x3c9b0 @name="Andy">
irb(main):048:0> greeter.respond_to?("name")
=> true
irb(main):049:0> greeter.respond_to?("name=")
=> true
irb(main):050:0> greeter.say_hi
Hi Andy!
=> nil
irb(main):051:0> greeter.name="Betty"
=> "Betty"
irb(main):052:0> greeter
=> #<Greeter:0x3c9b0 @name="Betty">
irb(main):053:0> greeter.name
=> "Betty"
irb(main):054:0> greeter.say_hi
Hi Betty!
=> nil
attr_accessor defined methods name to get value and name= to set it
```
--------

in Ruby, anything on a line after a hash mark is a comment and ignored by interpreter.
First line is a special case that tells the shell how to run the file.

#### CYCLING AND LOOPING 
```ruby
@array.each do |el|
   puts "Hello #{el}!"
end
```
cycle each method call any yeld.

#### BLOCKS
```ruby
@names.join()
```
#### see example, using a .rb file on vs code or other

```ruby
# !/usr/bin/env ruby

class MegaGreeter
    attr_accessor :names

    # create object
    def iniialize(names = "World")
        @names = names
    end

    # say hi (each method)
    def say_hi
        if @names.nil?
            puts "...."
        elsif @names.respond_to?("each")
            #names is list of some kind, iterate!
            @names.each do |name|
                puts "Hello #{name}!"
            end
        else
            puts "Hello #{@names}!"
        end
    end

    # say goodbye (block, join method)
    def say_bye
        if @names.nil?
            puts "...."
        elsif @names.respond_to?("join")
            #join list elements with commas
            puts "Goodbye #{@names.join(", ")}. Come back soon!"
        else
            puts "Goodbye #{@names}. Come back soon!"
        end
    end
end

# __FILE__ variable that contain name of current file
# $0 name of file used to start program
if __FILE__ == $0
mg = MegaGreeter.new
mg.say_hi
mg.say_bye

#change name to Nene
mg.names = "Nene"
mg.say_hi
mg.say_bye

#Change name to an array of names
mg.names = ["Lore", "Pasquale", "Rob", "Simone", "Matteo"]
mg.say_hi
mg.say_bye

#change to nil
mg.names = nil
mg.say_hi
mg.say_bye
end
```
named file ri20min.rb and run
$ ruby name-file.rb