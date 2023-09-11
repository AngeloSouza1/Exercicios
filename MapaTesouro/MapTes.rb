class MapReader
    def find_treasures(instructions)
      @raw_coords = instructions
      @coords = instructions.split("|")
      find_treasure_coords
    end
  
    def find_treasure_coords
      plot_map = plot_map_matrix
      treasure_coords = []
  
      plot_map.each_with_index do |row, x|
        row.each_with_index do |value, y|
          treasure_coords << [x, y] if value == plot_map.flatten.max
        end
      end
  
      treasure_coords
    end
  
    def generate_coords
      max_column = 0
      max_line = 0
      coords = []
  
      @coords.each do |coord_item|
        transformed = coord_item.chars.map(&:to_i).each_slice(2).to_a
  
        line_fixed = transformed.map { |item| item[0] }
        initial = 0
        final = 0
        fixed = 0
        column = nil
        line = nil
  
        if line_fixed.uniq.size > 1
          initial = line_fixed.min + 1
          final = line_fixed.max - 1
          column = transformed[0][1]
        else
          column_fixed = transformed.map { |item| item[1] }
          initial = column_fixed.min + 1
          final = column_fixed.max - 1
          line = transformed[0][0]
        end
  
        coords << transformed[0]
        for coord in initial..final
          if column.nil?
            max_line = line if line > max_line
            coords << [line, coord]
          else
            max_column = column if column > max_column
            coords << [coord, column]
          end
        end
        coords << transformed[1]
      end
  
      [[max_line, max_column], coords]
    end
  
    def plot_map_matrix
      matrix_def, coordinates = generate_coords
      flattened = coordinates.flatten(1)
      lines = flattened.map { |line| line[0] }.max
      columns = flattened.map { |column| column[1] }.max
  
      values = Array.new(lines + 1) { Array.new(columns + 1) { 0 } }
  
      coordinates.each do |item|
        item.each do |coord|
          values[coord[0]][coord[1]] += 1
        end
      end
  
      values
    end
  end
  