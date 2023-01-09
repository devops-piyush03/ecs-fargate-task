output "cluster_name" {
  value = "${aws_ecs_cluster.main.name}"
}

output "service_name" {
  value = "${aws_ecs_service.main.name}"
}

output "alb_url" {
  value = "http://${aws_alb.main.dns_name}"
}