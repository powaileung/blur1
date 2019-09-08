
# define a class
class Image
  # this method build on a array contain 4 array with 4 items in each array.
  # name blur 
  def initialize(image)
    @image = image
  end 
  # this method define image
  def image
  [[0,0,0,0], [0,1,0,0], [0,0,0,1], [0,0,0,0]]
  end  
  # need method in class to output image of array
  def output_image
    @image.each { |image| puts image.join() }
  end
  
  #test
  image = Image.new([
  [0,0,0,0], [0,1,0,0], [0,0,0,1], [0,0,0,0]
  ])
  image.output_image

  end
