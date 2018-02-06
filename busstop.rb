class BusStop

  def initialize(name, [])
    @name = name
  end

  def add_person_to_queue(name, queue)
    queue.push(name)
  end
end 
