output "loadbalancer_url" {
  description = "The DNS name of the load balancer."
  value       = module.ecs.loadbalancer_url
}