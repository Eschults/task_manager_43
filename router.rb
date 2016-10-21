class Router
  def initialize(tasks_controller)
    @tasks_controller = tasks_controller
  end

  def start
    loop do
      print_menu
      action = gets.chomp.to_i
      case action
      when 1 then @tasks_controller.list_all
      when 2 then @tasks_controller.create
      when 3 then @tasks_controller.mark_task_as_done
      else puts "Dummy"
      end
    end
  end

  private

  def print_menu
    puts "What next?"
    puts "1. Afficher les tâches"
    puts "2. Ajouter une tâche"
    puts "3. Marquer une tâche comme faite"
    print "> "
  end
end
