require './node.rb'
class BinaryTree
	def initialize(arr)
		@root = nil
		@arr = arr
	end

	def build_tree
		@root = Node.new(@arr[0])
		@arr.each do |cell|
		   add(cell)
		end
	end

	def add(value, current_node = @root)
		unless value == current_node.value
			if value < current_node.value && current_node.left == nil
				current_node.left = Node.new(value)
				current_node.left.parent = current_node
			elsif (value > current_node.value && current_node.right == nil)
				current_node.right = Node.new(value)
				current_node.right.parent = current_node
			elsif (value < current_node.value && current_node.left != nil)
				new_node = current_node.left
				add(value, new_node)
			elsif (value > current_node.value && current_node.right != nil)
				new_node = current_node.right
				add(value, new_node)
			end
		end

	end

	def breadth_first_search(value)
	end

	def depth_first_search(root, search_value)
		if @root != nil
			if r@oot.value != search_value
				depth_first_search(@root.left)
				depth_first_search(@root.right)
			elsif 
				"yes, here"
			end
				
		elsif @root == nil
			return "empty"
		end

		#visit left subtree
		#visit right subtree
	end


end

arr =[1,6,5,9,4,3]
tree = BinaryTree.new(arr)
puts tree.build_tree
puts tree.depth_first_search(arr[0], 9)
