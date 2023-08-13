#5.times { puts "Exec the block"}

#sum =0
#numbers = [5,10,5]
#numbers.each {|number| sum += number}
#puts sum

#foo = {2 => 3, 4 => 5}
#foo.each do |key, value|
#    puts "key = #{key}"
#    puts "value=#{value}"
#    puts "key * value = #{key * value}"
#    puts '-----'
#end

#def foo
    #Call teh block
#    yield
#    yield
#end
#foo {puts "Exec the block"}

#def foo
#    if block_given?
        #Call the block
#        yield
#    else
#        puts "Sem parametro do tipo bloco"    
#    end
#end
#foo
#foo { puts "Com parametro do tipo bloco"  }


#def foo(name, &block)
#    @name = name
#    block.call
#end
#foo('Angelo') { puts "hellow #{@name}" }    


def foo(numbers, &block)
    if block_given?
        numbers.each do |key,value|
            block.call(key,value)
        end    
    end
end

numbers = {2=>2, 3=>3, 4=>4}


foo(numbers) do |key,value|
     puts "#{key} * #{value} = #{key * value}"
     puts "#{key} + #{value} = #{key + value}"
     puts "---"
end






