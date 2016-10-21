require_relative "tasks_repository"
require_relative "tasks_controller"
require_relative "router"

repo = TasksRepository.new
controller = TasksController.new(repo)
router = Router.new(controller)

router.start
