pipeline {
agent { dockerfile true }

  stages {

    stage('Cloning Git') {
      steps {
        sh 'echo checking out source code'
      }
    }

    stage('SAST') {
      steps {
        sh 'echo SAST stage'
      }
    }

    stage('Build-and-Tag') {
      /* This builds the actual image; synonymous to
         * docker build on the command line */
      steps {
        sh 'echo Buld and Tag'
      }
    }

    stage('Post-to-dockerhub') {
      steps {
        sh 'echo post to dockerhub repo'
      }
    }

    stage('SECURITY-IMAGE-SCANNER') {
      steps {
        sh 'echo scan image for security'
      }
    }

    stage('Pull-image-server') {
      steps {
        sh 'echo pulling image ...'
      }
    }

    stage('DAST') {
      steps {
        sh 'echo dast scan for security'
      }
    }

    stage('Java Version') {
      steps {
        sh 'java -version'
      }
    }

    stage('Gradle install') {
      steps {
        sh 'curl --location --show-error -o gradle-8.9-all.zip "https://services.gradle.org/distributions/gradle-8.9-all.zip" && \
            yum install -y unzip && \
            unzip -d /opt/gradle/ gradle-8.9-all.zip && \
            rm gradle-8.9-all.zip'
      }
    }

    stage('Gradle Version') {
      steps {
        sh 'gradle --version'
      }
    }

  }
}