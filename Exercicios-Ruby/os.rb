require 'os'
def my_os
    if OS.windows?
        "Windows"
    elsif OS.linux?
        "Linux"    
    elsif Os.mac?
        "Osx"
    else
        "Não consegui identificar"          
    end
end

puts "Meu PC possui #{OS.cpu_count} cores, é #{OS.bits} bits e o sitema operacional é #{my_os}"
