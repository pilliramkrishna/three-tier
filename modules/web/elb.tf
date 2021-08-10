# ---------------------------------------------------------------------------------------------------------------------
# ELB
# ---------------------------------------------------------------------------------------------------------------------

resource "aws_lb" "alb" {
  name            = "${var.env}-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups = ["${var.private_sg}", "${var.public_sg}"]
  subnets         = ["${var.public_subnet_b}", "${var.public_subnet_c}"]

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    interval            = 30
    target              = "HTTP:80/"
  }

  listener {
    lb_port           = 80
    lb_protocol       = "http"
    instance_port     = 80
    instance_protocol = "http"
  }
}
