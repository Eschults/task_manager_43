# [ ] 1. courses
# [x] 2. menage

class TasksView
  def display(tasks)
    tasks.each_with_index do |task, index|
      status = task.done? ? "[x]" : "[ ]"
      puts "#{status} #{index + 1}. #{task.description}"
    end
  end

  def ask_user_for_description
    puts "Enter your task's description:"
    print "> "
    return gets.chomp
  end

  def ask_user_for_task_index
    puts "Which one?"
    print "> "
    return gets.chomp.to_i - 1
  end
end
