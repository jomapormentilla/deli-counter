# Write your code here.

katz_deli = []

def line( array )
    counter = 1
    string = "The line is currently"
    if( array == [] )
        string += " empty."
    else
        string += ": "
        last = array.pop
        array.each do |name|
            string += "#{ counter }. #{ name } "
            counter += 1
        end

        string += "#{ counter }. #{ last }"
    end

    puts string
end

def take_a_number( array, string )
    array.push( string )
    length = array.length

    puts "Welcome, #{ string }. You are number #{ array.length } in line."
end

def now_serving( array )
    if( array == [] )
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{ array.first }."

        first = array.shift
        array
    end
end