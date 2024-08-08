class Graph
  attr_accessor :size, :adj_list

  def initialize(size)
    @size = size
    @adj_list = Hash.new {|hash, key| hash[key] = []}
  end
end