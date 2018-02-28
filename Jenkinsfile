node {
    def app

    stage("Clone Repo")
    {
        checkout scm
    }

    stage("Build Image")
    {
        app = docker.build("deferdie/hellonode")
    }

    stage("Test Image")
    {
        app.inside {
            sh 'echo "Test passed"'
        }
    }

    stage("Push Image")
    {
        docker.withRegistery("https://registry.hub.docker.com", 'docker-hub-credentials')
        {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
}