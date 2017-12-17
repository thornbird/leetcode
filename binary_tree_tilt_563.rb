class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

class TreeNode
  @@tilt = 0
  def self.set_tilt(tilt1)
    @@tilt = tilt1
  end
  def self.get_tilt
    @@tilt
  end
end

def node_sum(node)
  return 0 if node.nil?
  return node.val if node.left.nil? && node.right.nil?
  sum_left, sum_right = node_sum(node.left), node_sum(node.right)
  diff = sum_left - sum_right
  diff = -diff if diff < 0
  TreeNode.set_tilt(TreeNode.get_tilt + diff)
  node.val + sum_left + sum_right
end

def find_tilt(root)
  return 0 if root.nil?
  TreeNode.set_tilt 0
  node_sum(root)
  TreeNode.get_tilt
end

tree_node_root = TreeNode.new(1)
tree_node2 = TreeNode.new(2)
tree_node3 = TreeNode.new(3)
tree_node4 = TreeNode.new(4)
tree_node5 = TreeNode.new(5)

tree_node2.left = tree_node4
tree_node3.left = tree_node5
tree_node_root.left = tree_node2
tree_node_root.right = tree_node3

puts find_tilt(tree_node_root)
