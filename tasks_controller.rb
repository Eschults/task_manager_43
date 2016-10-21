require_relative "tasks_view"
require_relative "task"

class TasksController
  def initialize(tasks_repository)
    @tasks_repository = tasks_repository # INJECTION DE DEPENDANCE
    @tasks_view = TasksView.new
  end

  # ACTIONS UTILISATEURS

  def list_all
    display_tasks
  end

  def create
    # 1 - Demande à la vue la description de la task
    description = @tasks_view.ask_user_for_description
    # 2 - Créer une task avec la description
    task = Task.new(description)
    # 3 - L'ajouter au repo
    @tasks_repository.add(task)
  end

  def mark_task_as_done
    # 1 - Afficher les taches
    display_tasks
    # 2 - Demander à la vue l'index de la task à mark as done
    index = @tasks_view.ask_user_for_task_index
    # 3 - Demander la task au repo
    task = @tasks_repository.find(index)
    # 4 - Marquer task comme faite
    task.mark_as_done!
  end

  private

  def display_tasks
    # 1 - Demander au repo les tasks
    tasks = @tasks_repository.all
    # 2 - Envoyer les tasks à la vue pour les afficher
    @tasks_view.display(tasks)
  end





end
