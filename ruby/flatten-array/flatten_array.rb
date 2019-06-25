
class FlattenArray
  # Takes a nested list and returns a single flattened list with all values except nil/null.
  # Params:
  # +unflattened_array+:: +Array+ nested list with all values
  def self.flatten(unflattened)
    unflattened.reduce([]) do |flattened, element|
      if element.nil?
        flattened
      elsif element.is_a?(Array)
        flattened.concat(self.flatten(element))
      else
        flattened.push(element)
      end
    end
  end
end
