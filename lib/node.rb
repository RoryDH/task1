class Node
  attr_reader :id
  attr_accessor :left, :right

  def initialize(id, left: nil, right: nil)
    @id, @left, @right = id, left, right
  end

  def self.lowest_common_ancestor(root, node_a, node_b)
    return if root.nil?
    return root if node_a == root || node_b == root

    left  = lowest_common_ancestor(root.left, node_a, node_b)
    right = lowest_common_ancestor(root.right, node_a, node_b)

    if left && right
      return root
    end

    if left
      nil
    else
      right
    end
  end
end
