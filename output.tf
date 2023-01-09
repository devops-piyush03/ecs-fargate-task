output "aws_lb_lb_dns_name" {
  description = "The DNS name of the load balancer."
  value       = module.ecs.loadbalancer_url
}