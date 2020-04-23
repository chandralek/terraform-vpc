pipeline{
  agent any

  parameters {
    choice(name: 'ACTION', choices: ['', 'APPLY', 'DESTROY'], description: 'Pick something')
  }

  stages{
    stage('Terramform init')
            {
              steps{
                sh '''
                  curl https://raw.githubusercontent.com/linuxautomations/labautomation/master/tools/terraform/install.sh|sudo bash
                  terraform init
              '''
              }
            }
    stage('Terramform apply')
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
    stage('Terramform destroy')
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