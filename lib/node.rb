class Node
  attr_reader :id
  attr_accessor :left, :right

  def initialize(id, left: nil, right: nil)
    @id, @left, @right = id, left, right
  end
end
