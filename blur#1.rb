# define a class
class Image
  # this method build on a array contain 4 array with 4 items in each array.
  # name blur 
  def initialize(image)
    @image = image
  end 
  # this method is to locate where is the ones in row.
  def get_ones
    ones = []
    @image.each_with_index do |row, i|
      row.each_with_index do |x, col|
        if x == 1
          ones << [i, col]
        end
      end
    end
    ones
  end
  # this method is to build command to blur [] next to ones
  def blur!
    ones = get_ones
      @image.each_with_index do |row, i|
        row.each_with_index do |x, col|
          ones.each do |found_i, found_col|

            if i == found_i && col == found_col
              @image[i -1][col] = 1 unless i == 0 
              @image[i +1][col] = 1 unless i >= 3 
              @image[i][col -1] = 1 unless col == 0 
              @image[i][col +1] = 1 unless col >= 3 
            end
          end
        end
      end
  end

# this method define image
# need method in class to output image of array
  def output_image
    @image.each { |image| puts image.join() }
  end
end

#test
image = Image.new([
[0, 0, 0, 0],
[0, 1, 0, 0],
[0, 0, 0, 1],
[0, 0, 0, 0]
])

# output_image
puts
image.blur!
image.output_image
