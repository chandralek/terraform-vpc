pipeline{
  agent any

  parameters {
    choice(name: 'ACTION', choices: ['', 'APPLY', 'DESTROY'], description: 'Pick something')
  }

  stages{
    stages('Terramform init')
            {
              steps{
                sh '''
                  curl https://raw.githubusercontent.com/linuxautomations/labautomation/master/tools/terraform/install.sh|sudo bash
                  terraform init
              '''
              }
            }
    stages('Terramform apply')
            {
              when{
                expression{
                  params.ACTION == 'APPLY'
                }
              }
              steps{
                sh '''
                  terraform apply -auto-approve
              '''
              }
            }
    stages('Terramform destroy')
            {
              when{
                expression{
                  params.ACTION == 'DESTROY'
                }
              }
              steps{
                sh '''
                  terraform destroy -auto-approve
              '''
              }
            }
  }
}