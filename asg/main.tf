#####
# Roles and Policies
#####

data "aws_iam_policy_document" "this" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "this" {
  name               = local.iam_role_name
  assume_role_policy = data.aws_iam_policy_document.this.json
}

resource "aws_iam_role_policy_attachment" "this" {
  role       = aws_iam_role.this.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceforEC2Role"
}

resource "aws_iam_instance_profile" "this" {
  name = local.instance_profile_name
  path = "/"
  role = aws_iam_role.this.name
}


#####
# Security Group
#####

resource "aws_security_group" "this" {
  name   = local.security_group_name
  vpc_id = var.vpc_id

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 2368
    protocol    = "tcp"
    to_port     = 2368
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  tags = merge(
    {
      Name = local.security_group_name
    },
    var.tags
  )
}


#####
# Launch Configuration
#####

resource "aws_launch_configuration" "this" {
  name_prefix = var.prefix

  associate_public_ip_address = true
  iam_instance_profile        = aws_iam_instance_profile.this.name
  image_id                    = var.image_id
  instance_type               = var.instance_type
  key_name                    = var.key_name
  security_groups             = [aws_security_group.this.id]

  user_data = <<EOF
#!/bin/bash

# The cluster this agent should check into.
echo 'ECS_CLUSTER=${var.ecs_cluster_name}' >> /etc/ecs/ecs.config

# Disable privileged containers.
echo 'ECS_DISABLE_PRIVILEGED=true' >> /etc/ecs/ecs.config
EOF

  root_block_device {
    volume_type = "standard"
  }

  ebs_block_device {
    device_name = "/dev/xvdcz"
    encrypted   = true
    volume_size = 10
    volume_type = "standard"
  }

  lifecycle {
    create_before_destroy = true
  }
}
