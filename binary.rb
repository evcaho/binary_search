require './node.rb'
class BinaryTree
	def initialize
		@root = nil
	end

	def build_tree(arr)
		@root = Node.new(arr[0])
		arr.each do |cell|
			cell = Node.new(cell)
			
		end
	end
end

tree = BinaryTree.new
puts tree.build_tree([1,2,3,4])