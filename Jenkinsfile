pipeline {
agent any
tools {
  terraform 'terraform'
}
options { ansiColor('xterm') } 
stages { 
    stage ('Terraform apply') { 
  steps {
   sh '''
   cd /var/lib/jenkins/workspace/terraform-plan/ecs-fargate-task/
   terraform destroy
   
   ''' 
       }
    }
}
}