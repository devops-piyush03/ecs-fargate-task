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
   cd ecs-fargate-task/
   terraform apply -out=tfplan.out
   
   ''' 
       }
    }
}
}