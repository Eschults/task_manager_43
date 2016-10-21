require_relative "task"
require_relative "tasks_repository"
require_relative "tasks_controller"

task1 = Task.new("courses")
task2 = Task.new("menage")

repo = TasksRepository.new
repo.add(task1)
repo.add(task2)
controller = TasksController.new(repo)

# SCENARIO
# 1 - Afficher les taches
controller.list_all
# 2 - Ajouter une tache
controller.create
# 3 - Marquer une tache comme faite
controller.mark_task_as_done
# 4 - Afficher les taches
controller.list_all
