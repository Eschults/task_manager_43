class TasksRepository
  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
  end

  def all
    return @tasks
  end

  def find(index)
    return @tasks[index]
  end
end

