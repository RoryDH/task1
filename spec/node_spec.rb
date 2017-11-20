require_relative "../lib/node"

describe Node do
  # before(:each) do

  # end

  let(:root) { Node.new("root") }

  let(:tree) do
    nodes = Array.new(10) { |i| Node.new(i) }
    root = nodes[0]

    root.left = nodes[1]
    root.right = nodes[2]

    nodes[1].left = nodes[3]
    nodes[1].right = nodes[4]

    nodes[3].left = nodes[5]
    nodes[3].right = nodes[6]

    nodes[4].left = nodes[7]
    nodes[4].right = nodes[8]

    root
  end


  it "gets the id" do
    expect(root.id).to eq("root")
    t = tree
  end

  it "gets the lowest common ancestor" do
    # node_a = tree.left.left
    # node_b = tree.left.right.right
    node_a = tree.left.right
    node_b = tree.right

    expect(Node.lowest_common_ancestor(tree, node_a, node_b).id).to eql(0)

  end
end
