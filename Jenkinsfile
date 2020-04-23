pipeline{
  agent any
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
              steps{
                sh '''
                  terraform apply -auto-approve
              '''
              }
            }
  }
}