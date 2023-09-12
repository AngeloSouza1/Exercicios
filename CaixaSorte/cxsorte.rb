class GameShow
    def find_highest_number(numbers, minutes) 
        @boxValues = numbers
        @minutes = minutes

        for a in 1..@minutes do 
            @boxValues = nextBoxValues
        end
        @boxValues.each_wich_index
                    .map { |val, idx| [idx +1 , val] if val == @boxValues.max}
                    .compact
    end

    def nextBoxValues
        reduceds = @boxValues.map { |x| x / 2 }

        oddsBoxes = reduceds.select.with_index { |val, idx| idx.even? }
        oddsBoxesCalculateds = oddsBoxes.map.with_index do |odd, idx|
            if idx == 0
                odd + oddsBoxes[oddsBoxes.length-1]
            else
                odd + evenBoxes[idx-1]
            end
        end

        evenBoxes = reduceds.select.with_index { |val, idx| idx.odd? }
        evenBoxesCalculateds = evenBoxes.map.with_index do | even, idx| 
            if idx == evenBoxes.length-1
                even + evenBoxes[0]
            else
                even + evenBoxes[idx+1]
            end
        end
        oddsBoxesCalculateds.zip(evenBoxesCalculateds).flatten.compact
    end
end



