#!/usr/bin/env ruby

class MegaGreeter
    attr_accessor :names

    #create object
    def iniialize(names = "World")
        @names = names
    end

    #say hi (each method)
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

    #say goodbye (block, join method)
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