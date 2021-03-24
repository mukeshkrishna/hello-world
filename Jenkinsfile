node('master')
{
    stage('Clean Workspace')
    {
        cleanWs()
        
    }
    stage('Git Checkout')
    {
        git credentialsId: 'Github', url: 'https://github.com/mukeshkrishna/hello-world.git'
    }
    stage('Build')
    {
         sh '/opt/maven/bin/mvn -Dmaven.test.failure.ignore=true validate clean compile'
    }
    stage('Unit Test')
    {
       junit allowEmptyResults: true, testResults: '**/target/surefire-reports/TEST-*.xml'
       
    }
     stage('War File')
    {
       sh '/opt/maven/bin/mvn -Dmaven.test.failure.ignore=true war:war'
    }
}
