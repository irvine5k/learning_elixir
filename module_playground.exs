defmodule ModulePlayground do 
    import IO, only: [puts: 1]
    import Kernel, except: [inspect: 1]

    alias ModulePlayground.Misc.Util.Math, as: MyMath

    def say_here do 
        inspect "Here"
    end

    def inspect(param1) do 
        puts "Starting Output"
        puts param1 
        puts "Finishing Output"
    end

    def print_sum do 
        MyMath.add(1, 2)
    end
end