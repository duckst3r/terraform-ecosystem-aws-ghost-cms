locals {
  ecs_cluster_name         = "${var.prefix}-ecs-cluster"
  ecs_service_name         = "${var.prefix}-ecs-service"
  ecs_task_definition_name = "${var.prefix}-ecs-task-definition"
}
