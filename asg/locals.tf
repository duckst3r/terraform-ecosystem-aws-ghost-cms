locals {
  asg_name              = "${var.prefix}-${var.ecs_cluster_name}-asg"
  iam_role_name         = "${var.prefix}-iam-role"
  instance_profile_name = "${var.prefix}-instance-profile"
  security_group_name   = "${var.prefix}-sg"
}
