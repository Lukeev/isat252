require 'test/unit'
# A graph class used to find the shortest circuit 
# Luke Everett 
# I certify that this work complies with the JMU Honor Code.

class Graph
  # initializes the class
  def initialize(edgeAry)
    @source = Hash.new
    edgeAry.each {|i| add_edge(i[0],i[1],i[2])}
  end

  # creates nested hashmaps to contain vertices and edges.
  def add_edge(u,v,weight)
    @source[u] = Hash.new unless @source.has_key?(u)
    @source[v] = Hash.new unless @source.has_key?(v)
    @source[u][v]=weight
    @source[v][u]=weight
  end

  # returns the vertices of the graph
  def vertex_list()
    return @source.keys()
  end

  # returns the number of edges present in the graph
  def num_edges()
    edgeNum = 0
    @source.values.each do |x|
      edgeNum += x.size()
    end
    return edgeNum/2
  end

 # returns the number of vertices in the graph
  def num_vertices()
    return vertex_list().length()
  end

  # returns true if u has an edge v
  def edge?(u,v)
    return @source[u].has_key?(v)
  end

  # returns true if there is a path p in the graph
  def path?(p)
    p.each_cons(2){|x|
      unless edge?(x[0],x[1])
        return false
      end
    }
    return true
  end

  # returns the weight of the given path p
  def path_weight(p)
    unless path?(p)
      return nil
    else
      weight = 0
      p.each_cons(2){|x|
        weight += @source[x[0]][x[1]]}
      return weight
    end
  end

  #Returns the shortest circuit in the graph.
  def shortest_circuit()
    shortest_cir = Array.new
    shortest_weight = 99999

    vert = vertex_list()
    start_point = vert[0]
    vert.delete_at(0)

    vert_perm = vert.permutation.to_a()

    vert_perm.each{ |x|
      x.insert(0,start_point)
      x.insert(x.length,start_point)
      weight  = path_weight(x)
      
      if weight == nil
        weight = 99999
      end

      if weight < shortest_weight
        shortest_weight = path_weight(x)
        shortest_cir = x
      end
    }
    return "Shortest Circuit = ",shortest_cir.inspect, "\nWeight = ", shortest_weight

  end

end

if __FILE__ == $0
  array = [["Elkton", "Harrisonburg", 28],
    ["Elkton", "Staunton", 70],
    ["Elkton", "Charlottesville", 60],
    ["Elkton", "Waynesboro", 50],
    ["Elkton", "Culpeper", 74],
    ["Elkton", "Front Royal", 77],
    ["Harrisonburg", "Staunton", 47],
    ["Harrisonburg", "Winchester", 110],
    ["Harrisonburg", "Waynesboro", 57],
    ["Staunton", "Waynesboro", 18],
    ["Winchester", "Culpeper", 102],
    ["Winchester", "Front Royal", 32],
    ["Warrenton", "Culpeper", 39],
    ["Warrenton", "Front Royal", 57],
    ["Charlottesville", "Waynesboro", 44],
    ["Charlottesville", "Culpeper", 73],
    ["Waynesboro", "Culpeper", 113]
  ]
  x = Graph.new(array)
  print x.shortest_circuit()
end

class TestCode < Test::Unit::TestCase
  def test_code
    array = [["Elkton", "Harrisonburg", 28],
      ["Elkton", "Staunton", 70],
      ["Elkton", "Charlottesville", 60],
      ["Elkton", "Waynesboro", 50],
      ["Elkton", "Culpeper", 74],
      ["Elkton", "Front Royal", 77],
      ["Harrisonburg", "Staunton", 47],
      ["Harrisonburg", "Winchester", 110],
      ["Harrisonburg", "Waynesboro", 57],
      ["Staunton", "Waynesboro", 18],
      ["Winchester", "Culpeper", 102],
      ["Winchester", "Front Royal", 32],
      ["Warrenton", "Culpeper", 39],
      ["Warrenton", "Front Royal", 57],
      ["Charlottesville", "Waynesboro", 44],
      ["Charlottesville", "Culpeper", 73],
      ["Waynesboro", "Culpeper", 113]
    ]
    circuit = Graph.new(array)
    assert_equal(17,circuit.num_edges)
    assert_equal(9,circuit.num_vertices)
    assert(circuit.path?(["Winchester","Harrisonburg", "Elkton"]))
    assert(circuit.edge?("Warrenton","Front Royal"))
    assert_equal(471,circuit.shortest_circuit()[3])
    assert_equal(85,circuit.path_weight(["Elkton", "Harrisonburg", "Waynesboro"]))
  end
end