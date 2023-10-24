class ElementSwap
    def switch (collections, rawInstructions)
        @collections = collections
        @intructions = rawInstructions.split("\n")
        execInstructions
    end

    def execInstructions
        @instructions.each do |instruction|
            switch, command = instruction.split(":")

            case switch
            when "0"
                @collections[switch.to_i] =
                switchHorizontal(@collections[switch.to_i], command)
            when "1"
                @collections[switch.to_i] =
                switchHorizontal(@collections[switch.to_i], command)
            else
                @collections = switchVertical(command)
            end
        end
        @collections
    end

    def switchHorizontal(coll, command)
        firstPosition, secondPosition = command.split("<>").map(&:to_i)
        firtValue = coll[firstPosition]
        secondValue= coll[secondPosition]

        coll[firstPosition] = secondValue
        coll[secondPosition] = firtValue
        coll
    end

    def switchVertical(command)
        fromFirstcollection = @collections[0][command.to_i]
        fromSecondCollection= @collections[1][command.to_i]

        @collections[0][command.to_i] = fromSecondCollection
        @collections[1][command.to_i] = fromFirstcollection
        @collections
    end
end
